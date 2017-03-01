------------------------------------------
-- Export file for user JOBADMIN        --
-- Created by gao on 2017/3/1, 11:53:03 --
------------------------------------------

spool job.log

prompt
prompt Creating table WX_ACCESSTOKEN_CONFIG
prompt ====================================
prompt
create table jobadmin.WX_ACCESSTOKEN_CONFIG
(
  appid       VARCHAR2(100) not null,
  accesstoken VARCHAR2(500),
  expiresin   INTEGER,
  createtime  LONG
)
tablespace JOB_TEMP
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table jobadmin.WX_ACCESSTOKEN_CONFIG
  add constraint ACCESS_KEY primary key (APPID)
  using index 
  tablespace JOB_TEMP
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table WX_JOB_RECRUITMENT_RT
prompt ====================================
prompt
create table jobadmin.WX_JOB_RECRUITMENT_RT
(
  guid         VARCHAR2(100) not null,
  reguid       VARCHAR2(100) not null,
  jguid        VARCHAR2(100) not null,
  status       VARCHAR2(50) not null,
  createtime   DATE,
  createperson VARCHAR2(100),
  updatetime   DATE,
  updateperson VARCHAR2(100)
)
tablespace JOB_TEMP
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column jobadmin.WX_JOB_RECRUITMENT_RT.guid
  is 'guid';
comment on column jobadmin.WX_JOB_RECRUITMENT_RT.reguid
  is '����guid';
comment on column jobadmin.WX_JOB_RECRUITMENT_RT.jguid
  is 'job��guid';
comment on column jobadmin.WX_JOB_RECRUITMENT_RT.status
  is '״̬';

prompt
prompt Creating table WX_JOB_T
prompt =======================
prompt
create table jobadmin.WX_JOB_T
(
  jguid             VARCHAR2(100) not null,
  jname             VARCHAR2(200) not null,
  jtype             VARCHAR2(50) not null,
  jplace            VARCHAR2(100) not null,
  jpayment          VARCHAR2(100) default '����' not null,
  jstatus           VARCHAR2(100) default 'used' not null,
  jcreate_com       VARCHAR2(50) not null,
  jcreate_time      DATE not null,
  jcreate_person    VARCHAR2(100),
  jupdatepersow     VARCHAR2(100),
  jupdatetime       DATE,
  jdescription      CLOB,
  jcapacity         CLOB,
  jrecruitment_type VARCHAR2(100),
  jprofessional     VARCHAR2(500),
  jeducation        VARCHAR2(50),
  jpriority         NUMBER(3)
)
tablespace JOB_TEMP
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column jobadmin.WX_JOB_T.jname
  is '����';
comment on column jobadmin.WX_JOB_T.jtype
  is '����';
comment on column jobadmin.WX_JOB_T.jplace
  is '�ص�';
comment on column jobadmin.WX_JOB_T.jpayment
  is '����';
comment on column jobadmin.WX_JOB_T.jstatus
  is '״̬';
comment on column jobadmin.WX_JOB_T.jcreate_com
  is '��Ƹ��˾';
comment on column jobadmin.WX_JOB_T.jcreate_time
  is '����ʱ��';
comment on column jobadmin.WX_JOB_T.jcreate_person
  is '������';
comment on column jobadmin.WX_JOB_T.jupdatepersow
  is '������';
comment on column jobadmin.WX_JOB_T.jupdatetime
  is '����ʱ��';
comment on column jobadmin.WX_JOB_T.jdescription
  is '��������';
comment on column jobadmin.WX_JOB_T.jcapacity
  is '����Ҫ��';
comment on column jobadmin.WX_JOB_T.jrecruitment_type
  is '��Ƹ����';
comment on column jobadmin.WX_JOB_T.jprofessional
  is 'רҵ';
comment on column jobadmin.WX_JOB_T.jeducation
  is 'ѧ��Ҫ��';
comment on column jobadmin.WX_JOB_T.jpriority
  is '���ȼ�';
alter table jobadmin.WX_JOB_T
  add constraint WX_JOB_T_GUID_PK primary key (JGUID)
  using index 
  tablespace JOB_TEMP
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table WX_LOOK_UP_TYPES_T
prompt =================================
prompt
create table jobadmin.WX_LOOK_UP_TYPES_T
(
  lpt_guid         VARCHAR2(100) not null,
  lpt_type         VARCHAR2(100) not null,
  lpt_decription   VARCHAR2(200),
  lpt_createtime   DATE not null,
  lpt_createperson VARCHAR2(100) not null
)
tablespace JOB_TEMP
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column jobadmin.WX_LOOK_UP_TYPES_T.lpt_type
  is '����';
comment on column jobadmin.WX_LOOK_UP_TYPES_T.lpt_decription
  is '����';
comment on column jobadmin.WX_LOOK_UP_TYPES_T.lpt_createtime
  is '����ʱ��';
comment on column jobadmin.WX_LOOK_UP_TYPES_T.lpt_createperson
  is '������';

prompt
prompt Creating table WX_LOOK_UP_VALUES_T
prompt ==================================
prompt
create table jobadmin.WX_LOOK_UP_VALUES_T
(
  lpv_guid         VARCHAR2(100) not null,
  lpv_ltguid       VARCHAR2(100) not null,
  lpv_code         VARCHAR2(100),
  lpv_meaning      VARCHAR2(100),
  lpv_createtime   DATE not null,
  lpv_createperson VARCHAR2(100) not null
)
tablespace JOB_TEMP
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column jobadmin.WX_LOOK_UP_VALUES_T.lpv_guid
  is 'guid';
comment on column jobadmin.WX_LOOK_UP_VALUES_T.lpv_ltguid
  is 'LOOk_UP_TYPE��guid';
comment on column jobadmin.WX_LOOK_UP_VALUES_T.lpv_createtime
  is '����ʱ��';
comment on column jobadmin.WX_LOOK_UP_VALUES_T.lpv_createperson
  is '������';

prompt
prompt Creating table WX_MESSAGE_T
prompt ===========================
prompt
create table jobadmin.WX_MESSAGE_T
(
  guid      VARCHAR2(100) not null,
  mtitle    VARCHAR2(100),
  mcontent  VARCHAR2(2000),
  mreceive  NUMBER,
  mconfirm  NUMBER,
  mreject   NUMBER,
  mmediaid  VARCHAR2(100),
  mrectguid VARCHAR2(100)
)
tablespace JOB_TEMP
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column jobadmin.WX_MESSAGE_T.mtitle
  is '��Ϣ����';
comment on column jobadmin.WX_MESSAGE_T.mcontent
  is '��Ϣ����';
comment on column jobadmin.WX_MESSAGE_T.mreceive
  is '������Ϣ��Ŀ����������';
comment on column jobadmin.WX_MESSAGE_T.mconfirm
  is '��ȷ������';
comment on column jobadmin.WX_MESSAGE_T.mreject
  is '�Ѿܾ�';
comment on column jobadmin.WX_MESSAGE_T.mmediaid
  is 'ͼƬid';

prompt
prompt Creating table WX_MY_APPLY_T
prompt ============================
prompt
create table jobadmin.WX_MY_APPLY_T
(
  myguid       VARCHAR2(100) not null,
  jobguid      VARCHAR2(100) not null,
  openid       VARCHAR2(500) not null,
  status       VARCHAR2(20) default 'used' not null,
  type         VARCHAR2(20),
  createtime   DATE not null,
  updatetime   DATE not null,
  relationguid VARCHAR2(100),
  jrguid       VARCHAR2(100)
)
tablespace JOB_TEMP
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column jobadmin.WX_MY_APPLY_T.jobguid
  is '����ְλID';
comment on column jobadmin.WX_MY_APPLY_T.openid
  is '������ID';
comment on column jobadmin.WX_MY_APPLY_T.status
  is '״̬';
comment on column jobadmin.WX_MY_APPLY_T.type
  is '����(��һ־Ը���ڶ�־Ը)';
comment on column jobadmin.WX_MY_APPLY_T.createtime
  is '����ʱ��';
comment on column jobadmin.WX_MY_APPLY_T.updatetime
  is '������';
comment on column jobadmin.WX_MY_APPLY_T.relationguid
  is '���κ�ְλ�Ĺ���guid';
comment on column jobadmin.WX_MY_APPLY_T.jrguid
  is '//wx_job_recruitment_rt ��guid';

prompt
prompt Creating table WX_ORG_T
prompt =======================
prompt
create table jobadmin.WX_ORG_T
(
  ou_id       VARCHAR2(50),
  ou_fullname VARCHAR2(200),
  ou_name     VARCHAR2(100)
)
tablespace JOB_TEMP
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table WX_RECRUITMENT_T
prompt ===============================
prompt
create table jobadmin.WX_RECRUITMENT_T
(
  recguid      VARCHAR2(100) not null,
  recname      VARCHAR2(100) not null,
  recstatus    VARCHAR2(100) default 'used' not null,
  recstarttime DATE not null,
  recendtime   DATE not null,
  replace      VARCHAR2(200),
  createperson VARCHAR2(100),
  createtime   DATE,
  updateperson VARCHAR2(100),
  updatetime   DATE,
  recimage     VARCHAR2(50),
  recemail     VARCHAR2(100)
)
tablespace JOB_TEMP
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column jobadmin.WX_RECRUITMENT_T.recguid
  is 'guid';
comment on column jobadmin.WX_RECRUITMENT_T.recname
  is '������';
comment on column jobadmin.WX_RECRUITMENT_T.recstatus
  is '״̬';
comment on column jobadmin.WX_RECRUITMENT_T.recstarttime
  is '����ʱ��';
comment on column jobadmin.WX_RECRUITMENT_T.recendtime
  is '����ʱ��';
comment on column jobadmin.WX_RECRUITMENT_T.replace
  is '�ص�';
comment on column jobadmin.WX_RECRUITMENT_T.createperson
  is '������';
comment on column jobadmin.WX_RECRUITMENT_T.createtime
  is '����ʱ��';
comment on column jobadmin.WX_RECRUITMENT_T.updateperson
  is '������';
comment on column jobadmin.WX_RECRUITMENT_T.updatetime
  is '����ʱ��';
comment on column jobadmin.WX_RECRUITMENT_T.recimage
  is 'ͼƬ';
comment on column jobadmin.WX_RECRUITMENT_T.recemail
  is '����';
alter table jobadmin.WX_RECRUITMENT_T
  add constraint RECGUID primary key (RECGUID)
  using index 
  tablespace JOB_TEMP
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table WX_RESOURCE_T
prompt ============================
prompt
create table jobadmin.WX_RESOURCE_T
(
  guid         VARCHAR2(100),
  rsr_filename VARCHAR2(100),
  rsr_fileurl  VARCHAR2(200),
  rsr_mediaid  VARCHAR2(100),
  rsr_mediaurl VARCHAR2(200),
  rsr_type     VARCHAR2(100),
  rer_status   VARCHAR2(20)
)
tablespace JOB_TEMP
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table WX_RESPONSE_T
prompt ============================
prompt
create table jobadmin.WX_RESPONSE_T
(
  guid       VARCHAR2(100) not null,
  mguid      VARCHAR2(100),
  openid     VARCHAR2(100),
  response   VARCHAR2(10),
  message    VARCHAR2(500),
  createdate DATE
)
tablespace JOB_TEMP
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table jobadmin.WX_RESPONSE_T
  add constraint RESKEY primary key (GUID)
  disable;

prompt
prompt Creating table WX_RESUME_T
prompt ==========================
prompt
create table jobadmin.WX_RESUME_T
(
  rguid             VARCHAR2(100) not null,
  ropenid           VARCHAR2(500) not null,
  rname             VARCHAR2(100) not null,
  rgender           VARCHAR2(20) not null,
  rnative_place     VARCHAR2(100) not null,
  remail            VARCHAR2(500) not null,
  renglish_lvl      VARCHAR2(100) not null,
  reducation        VARCHAR2(20) not null,
  rbachelor_school  VARCHAR2(100),
  rbachelor_subject VARCHAR2(100),
  rmaster_school    VARCHAR2(100),
  rmaster_subject   VARCHAR2(100),
  rdoctor_school    VARCHAR2(100),
  rdoctor_subject   VARCHAR2(100),
  rothers           VARCHAR2(2000),
  renglish_score    VARCHAR2(100) not null,
  rscore            VARCHAR2(100) not null,
  rphone_num        VARCHAR2(100) not null,
  rcreatetime       DATE,
  rupdatetime       DATE
)
tablespace JOB_TEMP
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column jobadmin.WX_RESUME_T.rname
  is '����';
comment on column jobadmin.WX_RESUME_T.rgender
  is '�Ա�';
comment on column jobadmin.WX_RESUME_T.rnative_place
  is '����';
comment on column jobadmin.WX_RESUME_T.remail
  is '��������';
comment on column jobadmin.WX_RESUME_T.renglish_lvl
  is 'Ӣ��ˮƽ';
comment on column jobadmin.WX_RESUME_T.reducation
  is 'ѧ��';
comment on column jobadmin.WX_RESUME_T.rbachelor_school
  is '����ѧУ';
comment on column jobadmin.WX_RESUME_T.rbachelor_subject
  is '����רҵ';
comment on column jobadmin.WX_RESUME_T.rmaster_school
  is '˶ʿѧУ';
comment on column jobadmin.WX_RESUME_T.rmaster_subject
  is '˶ʿרҵ';
comment on column jobadmin.WX_RESUME_T.rdoctor_school
  is '��ʿѧУ';
comment on column jobadmin.WX_RESUME_T.rdoctor_subject
  is '��ʿרҵ';
comment on column jobadmin.WX_RESUME_T.rothers
  is '��ע';
comment on column jobadmin.WX_RESUME_T.renglish_score
  is 'Ӣ��ɼ�';
comment on column jobadmin.WX_RESUME_T.rscore
  is '�ɼ�����';
comment on column jobadmin.WX_RESUME_T.rphone_num
  is '��ϵ�绰';
comment on column jobadmin.WX_RESUME_T.rcreatetime
  is '����ʱ��';
alter table jobadmin.WX_RESUME_T
  add constraint OPENIDUNIQUE unique (ROPENID)
  using index 
  tablespace JOB_TEMP
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table WX_USER_T
prompt ========================
prompt
create table jobadmin.WX_USER_T
(
  guid         VARCHAR2(100) not null,
  username     VARCHAR2(100) not null,
  usercode     VARCHAR2(100) not null,
  createtime   DATE not null,
  createperson VARCHAR2(100) not null,
  usertype     VARCHAR2(100)
)
tablespace JOB_TEMP
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );


spool off
