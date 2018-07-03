1.Write An SQL Query To Fetch “FIRST_NAME” From Worker Table Using The Alias Name As <WORKER_NAME>.
Select first_name from worker as worker_name;
FIRST_NAME
regan
sachin
alka
anagha
swathi
kothai
kothai
archana
vijaya
nikitha

2.Write An SQL Query To Fetch Unique Values Of DEPARTMENT From Worker Table
SELECT distinct department from worker;
DEPARTMENT
testing
finance
administration
developement
management
pmo
support

3.SQL Query To Print First Three Characters Of  FIRST_NAME From Worker Table.
SELECT SUBSTRING(first_name,1,3) FROM workers;
FIRST_NAME
reg
sac
alk
ana
swa
kot
kot
arc
vij
nik
The FIRST_NAME From Worker Table After Removing White Spaces From The Right Side.
4.An SQL Query To Find The Position Of The Alphabet (‘A’) In The First Name Column ‘sachin’ From Worker Table.
SELECT POSITION("a" IN "sachin") as matchposition;
matchposition
2

5.The FIRST_NAME From Worker Table After Removing White Spaces From The Right Side.
select first_name||last_name from worker;
first_name||last_name
reganganesh
sachingeorge
alkaalfred
anaghajayakumar
swathisuresh
kothaikrishanan
kothaikrishanan
archanamanavalan
vijayamanavalan
nikithamandava
rajithasatish
radha rajesh

update worker set first_name=rtrim(first_name);

select first_name||last_name from worker;

first_name||last_name
reganganesh
sachingeorge
alkaalfred
anaghajayakumar
swathisuresh
kothaikrishanan
kothaikrishanan
archanamanavalan
vijayamanavalan
nikithamandava
rajithasatish
radharajesh

6.An SQL Query That Fetches The Unique Values Of DEPARTMENT From Worker Table And Prints Its Length.
select distinct department,length(DEPARTMENT) from worker ;
Number of Records: 7
DEPARTMENT	length(DEPARTMENT)
testing	         7
finance	         7
administration	14
developement	12
management	10
pmo	         3
support	         7

7.SQL Query To Print The FIRST_NAME From Worker Table After Replacing ‘a’ With ‘A’.
select  replace (first_name,'a','A') from worker;
replace (first_name,'a','A')
regAn
sAchin
AlkA
AnAghA
swAthi
kothAi
kothAi
ArchAnA
vijAyA
nikithA
rAjithA
rAdhA

8.An SQL Query To Print The FIRST_NAME And LAST_NAME From Worker Table Into A Single Column COMPLETE_NAME. A Space Char Should Separate Them.
select first_name||' '||last_name as complete_name from worker;
complete_name
regan ganesh
sachin george
alka alfred
anagha jayakumar
swathi suresh
kothai krishanan
kothai krishanan
archana manavalan
vijaya manavalan
nikitha mandava
rajitha satish
radha rajesh

9.An SQL Query To Print Details Of Workers With DEPARTMENT Name As “Admin”.
select * from worker inner join title on worker.worker_id=title.worker_ref_id where department='administration'; 

10.Write An SQL Query To Print Details Of The Workers Whose FIRST_NAME Ends With ‘A’
select first_name from worker where first_name like '%a';
FIRST_NAME
alka
anagha
archana
vijaya
nikitha
rajitha
radha

11.Write An SQL Query To Print Details Of The Workers Whose LAST_NAME Ends With ‘H’ And Contains Six Alphabets.
select * from worker where last_name like '%h' and length(last_name)=6;

12.Write An SQL Query To Print Details Of The Workers Who Are Also Managers
select * from worker inner join title on worker.worker_id=title.worker_ref_id where worker_title='manager';

13.An SQL Query To Fetch Duplicate Records Having Matching Data In Some Fields Of A Table
select  first_name from worker group by first_name having count(first_name) >1;

14.Write An SQL Query To Show Only Odd Rows From A Table.
select  * from worker where (rowid%2)=1;

15.Write An SQL Query To Show The Top N (Say 10) Records Of A Table.
select * from worker limit 10;

16.Write An SQL Query To Determine The Nth (Say N=5) Highest Salary From A Table.
select distinct salary from worker order by salary desc limit 5; 

17.Write An SQL Query To Fetch The List Of Employees With The Same Salary.
select worker_id,salary from worker where salary in(select salary from worker group by salary having count(salary)>1);
