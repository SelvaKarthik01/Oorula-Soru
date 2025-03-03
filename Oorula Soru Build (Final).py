import mysql.connector as SQL
import prettytable as PT
import time
from playsound import playsound
playsound(r'E:\Class 12\Term - 2 (2021-22)\Computer Science\Cs Board Projects\Cs Project (2021-22)\Music\The-Inspiration-mp3.mp3',False)
ts=time.time()
def SAL():
    consor.execute('USE bank')
    consor.execute('SELECT * FROM timer')
    var2=consor.fetchone()
    for i in var2:
        var1=i
    consor.execute('SELECT * FROM bank')
    var2=consor.fetchone()
    for i in var2:
        var3=i
    consor.execute('UPDATE bank SET Funds={}'.format(var3+round((ts-var1)*0.075),2))
def dprint(s):
    for z in s:
        print(z,end='',flush=False)
        time.sleep(0.03)
    print()
dprint('Connecting To Server...')
time.sleep(2)
def BAW():
    dprint('Connecting To Banking Server...')
    time.sleep(2)
    print()
    ch1=0
    while(ch1!=3):
        print()
        dprint('1.Account Details')
        dprint('2.Transaction History')
        dprint('3.Exit')
        ch1=int(input('Enter Choice: '))
        if(ch1==1):
            dprint(('Account Details','\n','*'*15))
            var1=PT.PrettyTable()
            var1.field_names=['Funds']
            consor.execute('USE bank')
            consor.execute('SELECT * FROM bank')
            var2=consor.fetchone()
            for i in var2:
                var1.add_row([str(i)])
            print(var1)
        elif(ch1==2):
            var1=PT.PrettyTable()
            dprint(('Transaction','\n','*'*11))
            var1.field_names=['Transaction','Price']
            consor.execute('USE bank')
            consor.execute('SELECT * FROM trans')
            var2=consor.fetchall()
            for i in var2:
                var1.add_row([i[0],i[1]])
            print(var1)
        elif(ch1==3):
            break
        else:
            dprint('Invalid Entry')
def OF():
    var1=PT.PrettyTable()
    var1.field_names=['ID','Restaurant']
    consor.execute('USE fdbs')
    consor.execute('SHOW TABLES')
    var2=consor.fetchall()
    var3=1
    T=[]
    for i in var2:
        for j in i:
            var1.add_row([var3,j.title()])
            T=T+[[str(var3),j.title()]]
            var3=var3+1
    dprint((var1,'\n'))
    var2=0
    while(1!=0):
        if(var2==1):
            break
        var3=input('Choose Restaurant ID/Name: ')
        for i in T:
            if(var2==1):
                break
            for j in i:
                if(var3.lower()==j.lower()):
                    print()
                    dprint(i[1])
                    dprint('*'*len(i[1]))
                    var2=1
                    var3=i[1].lower()
                    break
        if(var2==0):
            dprint('Invalid Entry')
    print()
    dprint(('Menu','\n','*'*4))
    consor.execute('SELECT * FROM {}'.format(var3))
    var2=consor.fetchall()
    var1=PT.PrettyTable()
    var1.field_names=['ID','Food','Category','Price']
    T=[]
    for i in var2:
        var1.add_row([i[0],i[1],i[2],i[3]])
        T=T+[[i[0],i[1],i[2],i[3]]]
    dprint((var1,'\n'))
    print()
    var1=PT.PrettyTable()
    var1.field_names=['SR.NO','ID','Food','Category','Price']
    var5=0
    var4=0
    var6=0
    T1=[]
    count=1
    while(1!=0):
        var2=input('Do you Want To Place An Order: Y/N: ')
        var4=0
        if(var2.upper()=='Y'):
            while(1!=0):
                if(var4==1):
                    break
                var3=input('Enter Order ID/Name: ')
                for i in T:
                    if(var4==1):
                        break
                    for j in i:
                        if(var3.lower()==str(j).lower()):
                            var1.add_row([str(count),i[0],i[1],i[2],i[3]])
                            var5=var5+i[3]
                            var4=1
                            T1=T1+[[i[1],i[3]]]
                            count=count+1
                            break
                if(var4==0):
                    dprint('Invalid Entry')
        elif(var2.upper()=='N'):
            if(T1==[]):
                while(1!=0):
                    var6=0
                    var4=input('Do You Want To Choose A Different Restaurant Y/N?: ')
                    if(var4.upper()=='Y'):
                        OF()
                        var6=1
                        break
                    elif(var4.upper()=='N'):
                        var6=1
                        break
                    else:
                        dprint('Invalid Entry')
            if(var6==1):
                break
            print()
            dprint('Your Order:')
            dprint((var1,'\n'))
            var1=PT.PrettyTable()
            var1.field_names=['Funds']
            consor.execute('USE bank')
            consor.execute('SELECT * FROM bank')
            var2=consor.fetchone()
            for i in var2:
                var1.add_row([str(i)])
                fund=i
            dprint('Funds Available:')
            print(var1)
            if(var5<fund or var5==fund):
                print()
                dprint(('Bill Amount:',var5))
                print()
                while(1!=0):
                    dprint('Press N To Cancel')
                    var4=input('Press Y To Make Payment: ')
                    if(var4.upper()=='Y'):
                        dprint('Processing Payment...')
                        time.sleep(2)
                        consor.execute('UPDATE bank SET Funds = {}'.format(fund-var5))
                        conobj.commit()
                        dprint('Funds Available:')
                        var1=PT.PrettyTable()
                        consor.execute('SELECT * FROM bank')
                        var2=consor.fetchone()
                        var1.field_names=['Funds']
                        for i in var2:
                            var1.add_row([str(i)])
                        print(var1)
                        for i in T1:
                            consor.execute('INSERT INTO trans VALUES("{}",{})'.format(i[0],i[1]))
                            conobj.commit()
                        break
                    elif(var4.upper()=='N'):
                        break
                    else:
                        dprint('Invalid Entry')
            else:
                dprint('Not Enough Funds Order Cannot Be Placed')
            break
        else:
            dprint('Invalid Entry')
def RNM():
    var1=PT.PrettyTable()
    var1.field_names=['ID','Restaurant']
    consor.execute('USE fdbs')
    consor.execute('SHOW TABLES')
    var2=consor.fetchall()
    var3=1
    T=[]
    for i in var2:
        for j in i:
            var1.add_row([var3,j.title()])
            T=T+[[str(var3),j.title()]]
            var3=var3+1
    dprint((var1,'\n'))
    while(1!=0):
        var3=input('Do you Want To Order Food Y/N: ')
        if(var3.upper()=='Y'):
            OF()
            break
        elif(var3.upper()=='N'):
            break
        else:
            dprint('Invalid Entry')
def MISC():
    ch1=0
    while(ch1!=3):
        print()
        dprint('1.Developer Information')
        dprint('2.EULA')
        dprint('3.News')
        dprint('4.Exit')
        ch1=int(input('Enter Choice: '))
        if(ch1==1):
            dprint('Chief Programmer: Selva Karthik')
            dprint('Associate Programmers: Varshan Manish (and) Roshan Parvatam')
            dprint('All Rights Reserved')
            print()
        elif(ch1==2):
            dprint('''End-User License Agreement ("Agreement")
Last updated: January 06, 2022

Please read this End-User License Agreement carefully before clicking the "I Agree" button, downloading or using Oorula Soru.

Interpretation and Definitions
Interpretation
The words of which the initial letter is capitalized have meanings defined under the following conditions. The following definitions shall have the same meaning regardless of whether they appear in singular or in plural.

Definitions
For the purposes of this End-User License Agreement:

Agreement means this End-User License Agreement that forms the entire agreement between You and the Company regarding the use of the Application. This Agreement has been created with the help of the EULA Generator.

Application means the software program provided by the Company downloaded by You to a Device, named Oorula Soru

Company (referred to as either "the Company", "We", "Us" or "Our" in this Agreement) refers to Oorula Soru.

Content refers to content such as text, images, or other information that can be posted, uploaded, linked to or otherwise made available by You, regardless of the form of that content.

Country refers to: Tamil Nadu, India

Device means any device that can access the Application such as a computer, a cellphone or a digital tablet.

Third-Party Services means any services or content (including data, information, applications and other products services) provided by a third-party that may be displayed, included or made available by the Application.

You means the individual accessing or using the Application or the company, or other legal entity on behalf of which such individual is accessing or using the Application, as applicable.

Acknowledgment
By clicking the "I Agree" button, downloading or using the Application, You are agreeing to be bound by the terms and conditions of this Agreement. If You do not agree to the terms of this Agreement, do not click on the "I Agree" button, do not download or do not use the Application.

This Agreement is a legal document between You and the Company and it governs your use of the Application made available to You by the Company.

The Application is licensed, not sold, to You by the Company for use strictly in accordance with the terms of this Agreement.

License
Scope of License
The Company grants You a revocable, non-exclusive, non-transferable, limited license to download, install and use the Application strictly in accordance with the terms of this Agreement.

The license that is granted to You by the Company is solely for your personal, non-commercial purposes strictly in accordance with the terms of this Agreement.

Third-Party Services
The Application may display, include or make available third-party content (including data, information, applications and other products services) or provide links to third-party websites or services.

You acknowledge and agree that the Company shall not be responsible for any Third-party Services, including their accuracy, completeness, timeliness, validity, copyright compliance, legality, decency, quality or any other aspect thereof. The Company does not assume and shall not have any liability or responsibility to You or any other person or entity for any Third-party Services.

You must comply with applicable Third parties' Terms of agreement when using the Application. Third-party Services and links thereto are provided solely as a convenience to You and You access and use them entirely at your own risk and subject to such third parties' Terms and conditions.

Term and Termination
This Agreement shall remain in effect until terminated by You or the Company. The Company may, in its sole discretion, at any time and for any or no reason, suspend or terminate this Agreement with or without prior notice.

This Agreement will terminate immediately, without prior notice from the Company, in the event that you fail to comply with any provision of this Agreement. You may also terminate this Agreement by deleting the Application and all copies thereof from your Device or from your computer.

Upon termination of this Agreement, You shall cease all use of the Application and delete all copies of the Application from your Device.

Termination of this Agreement will not limit any of the Company's rights or remedies at law or in equity in case of breach by You (during the term of this Agreement) of any of your obligations under the present Agreement.

Indemnification
You agree to indemnify and hold the Company and its parents, subsidiaries, affiliates, officers, employees, agents, partners and licensors (if any) harmless from any claim or demand, including reasonable attorneys' fees, due to or arising out of your: (a) use of the Application; (b) violation of this Agreement or any law or regulation; or (c) violation of any right of a third party.

No Warranties
The Application is provided to You "AS IS" and "AS AVAILABLE" and with all faults and defects without warranty of any kind. To the maximum extent permitted under applicable law, the Company, on its own behalf and on behalf of its affiliates and its and their respective licensors and service providers, expressly disclaims all warranties, whether express, implied, statutory or otherwise, with respect to the Application, including all implied warranties of merchantability, fitness for a particular purpose, title and non-infringement, and warranties that may arise out of course of dealing, course of performance, usage or trade practice. Without limitation to the foregoing, the Company provides no warranty or undertaking, and makes no representation of any kind that the Application will meet your requirements, achieve any intended results, be compatible or work with any other software, applications, systems or services, operate without interruption, meet any performance or reliability standards or be error free or that any errors or defects can or will be corrected.

Without limiting the foregoing, neither the Company nor any of the company's provider makes any representation or warranty of any kind, express or implied: (i) as to the operation or availability of the Application, or the information, content, and materials or products included thereon; (ii) that the Application will be uninterrupted or error-free; (iii) as to the accuracy, reliability, or currency of any information or content provided through the Application; or (iv) that the Application, its servers, the content, or e-mails sent from or on behalf of the Company are free of viruses, scripts, trojan horses, worms, malware, timebombs or other harmful components.

Some jurisdictions do not allow the exclusion of certain types of warranties or limitations on applicable statutory rights of a consumer, so some or all of the above exclusions and limitations may not apply to You. But in such a case the exclusions and limitations set forth in this section shall be applied to the greatest extent enforceable under applicable law. To the extent any warranty exists under law that cannot be disclaimed, the Company shall be solely responsible for such warranty.

Limitation of Liability
Notwithstanding any damages that You might incur, the entire liability of the Company and any of its suppliers under any provision of this Agreement and your exclusive remedy for all of the foregoing shall be limited to the amount actually paid by You for the Application or through the Application or 100 USD if You haven't purchased anything through the Application.

To the maximum extent permitted by applicable law, in no event shall the Company or its suppliers be liable for any special, incidental, indirect, or consequential damages whatsoever (including, but not limited to, damages for loss of profits, loss of data or other information, for business interruption, for personal injury, loss of privacy arising out of or in any way related to the use of or inability to use the Application, third-party software and/or third-party hardware used with the Application, or otherwise in connection with any provision of this Agreement), even if the Company or any supplier has been advised of the possibility of such damages and even if the remedy fails of its essential purpose.

Some states/jurisdictions do not allow the exclusion or limitation of incidental or consequential damages, so the above limitation or exclusion may not apply to You.

Severability and Waiver
Severability
If any provision of this Agreement is held to be unenforceable or invalid, such provision will be changed and interpreted to accomplish the objectives of such provision to the greatest extent possible under applicable law and the remaining provisions will continue in full force and effect.

Waiver
Except as provided herein, the failure to exercise a right or to require performance of an obligation under this Agreement shall not effect a party's ability to exercise such right or require such performance at any time thereafter nor shall the waiver of a breach constitute a waiver of any subsequent breach.

Product Claims
The Company does not make any warranties concerning the Application.

United States Legal Compliance
You represent and warrant that (i) You are not located in a country that is subject to the United States government embargo, or that has been designated by the United States government as a "terrorist supporting" country, and (ii) You are not listed on any United States government list of prohibited or restricted parties.

Changes to this Agreement
The Company reserves the right, at its sole discretion, to modify or replace this Agreement at any time. If a revision is material we will provide at least 30 days' notice prior to any new terms taking effect. What constitutes a material change will be determined at the sole discretion of the Company.

By continuing to access or use the Application after any revisions become effective, You agree to be bound by the revised terms. If You do not agree to the new terms, You are no longer authorized to use the Application.

Governing Law
The laws of the Country, excluding its conflicts of law rules, shall govern this Agreement and your use of the Application. Your use of the Application may also be subject to other local, state, national, or international laws.

Entire Agreement
The Agreement constitutes the entire agreement between You and the Company regarding your use of the Application and supersedes all prior and contemporaneous written or oral agreements between You and the Company.

You may be subject to additional terms and conditions that apply when You use or purchase other Company's services, which the Company will provide to You at the time of such use or purchase.

Contact Us
If you have any questions about this Agreement, You can contact Us:

By email: OorulaSoru@ORS.com

By phone number: 8778575342''')
        elif(ch1==3):
            dprint("( :   FURTURE UPDATES   : )")
            print()
            consor.execute('SELECT * FROM NAD')
            var1=consor.fetchall()
            var2=PT.PrettyTable()
            var2.field_names=['SR.NO','Content']
            for i in var1:
                var2.add_row([i[0],i[1]])
            print(var2)
            dprint("For More Details Contact : OorulaSoru@ORS.com")
            dprint("By Phone : 8778575342")
        elif(ch1==4):
            break
        else:
            dprint('Invalid Entry')
conobj=SQL.connect(host='localhost',user='root',passwd='SelvaKarthik@13579@24680')
consor=conobj.cursor()
if conobj.is_connected():
    print()
    dprint('Connectivity Established')
else:
    dprint('Connection Failed')
SAL()
ch=0
while(ch!=6):
    print()
    dprint(('\n','\t'*4,'OORULA SORU','\n','\t'*4,'***********'))
    print()
    dprint('1.Restaurants Near Me')
    dprint('2.Order Food')
    dprint('3.Banking Details')
    dprint('4.Miscellaneous')
    dprint('5.Exit')
    print()
    ch=int(input('Enter Choice: '))
    if(ch==1):
        RNM()
    elif(ch==2):
        OF()
    elif(ch==3):
        BAW()
    elif(ch==4):
        MISC()
    elif(ch==5):
        dprint('Thank You For Using Oorula Soru')
        te=time.time()
        consor.execute('USE bank')
        consor.execute('SELECT * FROM bank')
        var2=consor.fetchone()
        for i in var2:
            var1=i
        consor.execute('UPDATE bank SET Funds={}'.format(var1+round((te-ts)*0.075,2)))
        conobj.commit()
        consor.execute('UPDATE timer SET time_end={}'.format(te))
        conobj.commit()
        conobj.close()
        break
    else:
        dprint('Invalid Entry')

        
        
        

