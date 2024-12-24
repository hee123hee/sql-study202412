CREATE TABLE goods (
    id NUMBER(6) PRIMARY KEY,
    goods_name VARCHAR2(50) NOT NULL,
    price NUMBER(10) DEFAULT 1000,
    created_at DATE
);

-- ������ ��ȸ
SELECT * FROM GOODS;

-- ������ ����: INSERT
INSERT INTO GOODS
    (id, goods_name, price, created_at)
VALUES
    (1, '��ǳ��', 120000, SYSDATE);
    
INSERT INTO GOODS
    (id, goods_name, price, created_at)
VALUES
    (2, '��Ź��', 200000, SYSDATE);
INSERT INTO GOODS
    (id, goods_name)
VALUES
    (3, '���');
INSERT INTO GOODS
    (goods_name, id, created_at)
VALUES
    ('������',6, SYSDATE);
    --VALUES �տ� �÷����� �����ϸ�
    --���̺� ������ ������ �÷�������� 
    -- ���� ������ �־����

INSERT INTO GOODS
VALUES
    (7, '������', 30000, SYSDATE);
    
    
    --������ ���� : UPDATE
    UPDATE GOODS
    SET goods_name = '������'
    WHERE id =1;
    
    UPDATE GOODS
    SET
    goods_name = '¥���', price=8000
    WHERE id=3;
    
    COMMIT;
    
    --WHERE �������� ���� UPDATE
    UPDATE GOODS
    SET price =9999;
    
    -- ID�� �����ϸ� �ٲٸ� �ȵ�
    UPDATE GOODS
    SET ID = 11
    WHERE id = 2;
    
    UPDATE GOODS
    SET goods_name = null
    WHERE id = 6;
    
    ROLLBACK;
    
    --������ ����: DELETE
    DELETE FROM GOODS
    WHERE id =1;
   
   COMMIT;
   
   -- WHERE���� ���� DELETE�� ��ü���� ȿ���� ���Ѵ�.
   -- �׷��� �̰��� ������ ����, TRUCATE TABLE�� ������ �Ұ���..
   DELETE FROM GOODS;
   ROLLBACK;
   
   TRUNCATE TABLE GOODS;
    
    --������ ��ȸ
    SELECT*FROM GOODS;
    
    -- �ߺ� ����
    SELECT DISTINCT
     issue_insti_nm
    FROM TB_CERTI
    ;

    -- ��� �÷� ��ȸ    
     SELECT 
      certi_cd
      --, certi_nm
      , issue_insti_nm
    FROM TB_CERTI
    ;
    
    SELECT ALL
    ISSUE_INSTI_NM
    
    FROM TB_CERTI;
    
    -- �÷� ��Ī ���� (ALLAS)
    SELECT 
    emp_nm AS "�����"
    ,addr AS " �ּ�"
    FROM TB_EMP
    ;
    
    SELECT 
    emp_nm  "�����"
    ,addr  " �ּ�"
    FROM TB_EMP
    ;
        SELECT 
    emp_nm  "�� �� ��"
    ,addr  �ּ�
    FROM TB_EMP
    ;
    
    -- ���ڿ� ����
    SELECT 
       certi_nm || '(' || issue_insti_nm ||  ')'  AS certi_detail
    FROM TB_CERTI
    ;
    
    
    