Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F3601A36FE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 17:25:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GUITrib7BXVagjbqjYh2ZRgkB5r4JI7zzuxHOasmmhs=; b=LOUyRM2+5z23S+
	+RB6lJSbvt8dI9FZU2bDKXx59DyZ3Afbbv/Nju8wVGCBxROQdkX4+rHJf/K4P73/vUWsyinDVJGdn
	DEYD6IAZNz/QlNpy/QaWf5GE7NC1FyFM+QW8Ms2m3UrEJZWSHqTaxYqEYzniQHFNzb4L1DjUNOVD/
	llVZIvnGjmPWJXI067Rl6kST29ex7vT003nwM9UbHsiuFEdq33c4aoiYk6V4BrjTm+Dfag+2AZFgP
	/kn2H5T+RaWIeezANGnG+9Gp3dDGw7AG5Eo+9jMdViuhaQeBjgOTqhXwPusn74BrHCm8qiAqMrqa4
	6Sso9i2ag+T1V1BE+dug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMZ3Z-00059R-UL; Thu, 09 Apr 2020 15:25:29 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMZ3S-00058m-7i
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 15:25:24 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 039FOYpL028150; Thu, 9 Apr 2020 08:24:47 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=MTgWmjDqBAQ16SXK7Xqo80CSSZHLL5odf6Rput0yktE=;
 b=vPRaAw+KFEzsJhQ8yBbxjqeRrDkU33+Yth+ZUMVgf5QSvLyw8xY0wMhSR5GXZx13GjB4
 3SpxNnc8OucS4YyS6oZE9EJ+uZPDwYMlqPUAyWorpQJcsCH9RLOsePciT6ww6ByY7EJp
 YpK7/gdNWlJLoCayMtG1PDE4INKXG0Efh5SScQCuphvMkM4qTH5dkEXuVkn7GRQyvw3A
 Gru3u+dTeeOeqyUWk8p1Lpa0daWopeqOyvtdj5pi1QQrlIPoOUldlFsqbKj36UTJLyzh
 0UCdiRrOh8GnwGvu6zeqoB56+llVoT0vtZNmGIIlV8p75+K43N+AtnzUPVg6T/JTz60e pg== 
Received: from sc-exch01.marvell.com ([199.233.58.181])
 by mx0b-0016f401.pphosted.com with ESMTP id 3091me902h-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Thu, 09 Apr 2020 08:24:47 -0700
Received: from SC-EXCH04.marvell.com (10.93.176.84) by SC-EXCH01.marvell.com
 (10.93.176.81) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Thu, 9 Apr
 2020 08:24:45 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (104.47.37.53) by
 SC-EXCH04.marvell.com (10.93.176.84) with Microsoft SMTP Server
 (TLS) id
 15.0.1497.2 via Frontend Transport; Thu, 9 Apr 2020 08:24:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NgmLt1R3J+kE1zUgZ38uZOF63fOFloBW01c3u0smH22Hipi54gNgF5LLpqlomeIXx1IyEJ5vWFmMX4pI/Z6yAHdgcUz6ar/L5DDcWDI6O4vibxUJBfLJHWAiYQsOt/yXyUiMf/t3LE6U2xzETZLUkrLEomNG9R2mD4JJS16irU4L81UkOxqgK8hNRNNiwAPUC2tyQygq/uhTxxkpmUu3cPj2YhT6PzXqBCK/SjLXAu8zubGjGeLuLt6VOuh/6I2nIe+NKlIMHQxRwQX88uCOlQMvrZaLTYlGpqhgpOQpNUh0atC4fHzwHGxV1tpBCsShFjEOm3Eh7n8AupKQqjYsuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MTgWmjDqBAQ16SXK7Xqo80CSSZHLL5odf6Rput0yktE=;
 b=KoGdv8o4D3LP6QMejH1Lz9GBMZb8tZlJatqX3/u90UKSQrg4Dsli509wFFcDx217sTqJBGhalnmP+BaqgNaQqs4mwQ+BgSR66SOqqdmFsJrroopifR5nwPrF4pLmxA4q3QxmbokAeml3Ubs3WFkOli2s31DHozIyUvUD57eqHbf7KuHZpTa90QpCPydMub8OZ2RtmUOL0nsBDFMHqvK9eMjtZ+emo9kWbYaEUYi+fEAoQxUBfgVdx1V1hPfaVU9VAXe0sCUUE3CtZMKPFcBE9oroCzM3bW57eM2nWEKEKLgcxinBGjd3IHplAyL1InkL8m7SmvfMatBnpxqfkCfUlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MTgWmjDqBAQ16SXK7Xqo80CSSZHLL5odf6Rput0yktE=;
 b=rFElDNCffCfHKoAwq4/ce2SN3BA6Z968p+9mXDIqgTKgXcs1m0QMaqSU/up3cygwAgsWML6BK1HJqIbsOxfQ4A+x7CXoEuHPh5gWEyMbaYNT9EWbowcmP788En9hU60EM/bO+NGmyj882SsnUe7oFtZ5eQN8zpUTIshzwzYAyZ4=
Received: from BYAPR18MB2535.namprd18.prod.outlook.com (2603:10b6:a03:137::17)
 by BYAPR18MB3749.namprd18.prod.outlook.com (2603:10b6:a03:96::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.20; Thu, 9 Apr
 2020 15:24:44 +0000
Received: from BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::65f8:9bfe:5fa5:1280]) by BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::65f8:9bfe:5fa5:1280%3]) with mapi id 15.20.2878.022; Thu, 9 Apr 2020
 15:24:44 +0000
From: Alex Belits <abelits@marvell.com>
To: "frederic@kernel.org" <frederic@kernel.org>, "rostedt@goodmis.org"
 <rostedt@goodmis.org>
Subject: [PATCH v3 08/13] task_isolation: arch/arm: enable task isolation
 functionality
Thread-Topic: [PATCH v3 08/13] task_isolation: arch/arm: enable task isolation
 functionality
Thread-Index: AQHWDoL+LDSNwqO0MkWwp5RlR9m92w==
Date: Thu, 9 Apr 2020 15:24:44 +0000
Message-ID: <e4bed0c6be09443ef5f91ee0a084a4a558c3007d.camel@marvell.com>
References: <4473787e1b6bc3cc226067e8d122092a678b63de.camel@marvell.com>
 <aed12dd15ea2981bc9554cfa8b5e273c1342c756.camel@marvell.com>
 <07c25c246c55012981ec0296eee23e68c719333a.camel@marvell.com>
In-Reply-To: <07c25c246c55012981ec0296eee23e68c719333a.camel@marvell.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [173.228.7.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5b1220bc-362b-48e2-957e-08d7dc9a218e
x-ms-traffictypediagnostic: BYAPR18MB3749:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR18MB3749E8442F8764CDEE54B81DBCC10@BYAPR18MB3749.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0368E78B5B
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR18MB2535.namprd18.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(346002)(376002)(366004)(396003)(136003)(39860400002)(64756008)(316002)(186003)(26005)(66446008)(81156014)(2616005)(8936002)(66476007)(4326008)(7416002)(54906003)(478600001)(81166007)(6506007)(66946007)(71200400001)(110136005)(86362001)(6486002)(76116006)(8676002)(2906002)(36756003)(66556008)(5660300002)(6512007);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Dma/Xq5wDKtkQLJgZ+b3SgIhNH1yvot+iwfCd0q45MsTO5WtV+2ueIeZFhtBDIGt0xGPhfXj93CjgOrqSMGNrvVITykFsAnCx5tM//jR6n1aPtJp+tLqDRSv0LH+Pgp2G8Ku73FSIztFcO5aUCx8nvhxxVcjXOxjWA+o/PfX9J6uQ4I0fFEU39ebs8dxRxTrwrU0Z9o2BCyAfrHb6AhMrPCnMyg/3fHjYaVJ/1xyrAX/JXqfqfzMJ+KSQnANKBOQSzI5skg7U/H8+RaN6bkJeyCAO7vv6g60YYQj0KsY5MpXZzZUYRQ2tXfijTYDToSdGv6hIf5ytNi2zYVhJkHaN2jDGnxAuImqScI819/Yw/vEpOsD2Sn7wxyAJdYuAnM4jKTiW6F5HYE2rs0MZzVZTXBwRH5LNlcHWgGlUOGP4leJVSWH/EWrx11BAgfeg2dl
x-ms-exchange-antispam-messagedata: J4X4KPOw1ADeQosJFjgraopZhONuvZXDE6TeZ7nY5MsQDcBBVuMicYaZFu8p7mrX+Mp0tfUBTjXn7w5t+KRqkrAG/s8FHEljm830I4z3AQcUXpqpkNsNxm8ZcBnmAtoKGQrAVTu8v4QEhg/wH++wEw==
Content-ID: <237E0C527AEA2E4BBACC6C76A1A33403@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b1220bc-362b-48e2-957e-08d7dc9a218e
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2020 15:24:44.0662 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AiMqbznexhT1uQn5cUmC0W8I+CQvJ6c0oC8ByVRY+m0lmp2RdmzUoKW0i081iqqFAus72MoSJx8MRop+NYhKQA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR18MB3749
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-09_05:2020-04-07,
 2020-04-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_082522_692327_EFBA6C17 
X-CRM114-Status: GOOD (  18.53  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "peterz@infradead.org" <peterz@infradead.org>,
 Prasun Kapoor <pkapoor@marvell.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-api@vger.kernel.org" <linux-api@vger.kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>, "will@kernel.org" <will@kernel.org>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Francis Giraldeau <francis.giraldeau@gmail.com>

This patch is a port of the task isolation functionality to the arm 32-bit
architecture. The task isolation needs an additional thread flag that
requires to change the entry assembly code to accept a bitfield larger than
one byte. The constants _TIF_SYSCALL_WORK and _TIF_WORK_MASK are now
defined in the literal pool. The rest of the patch is straightforward and
reflects what is done on other architectures.

To avoid problems with the tst instruction in the v7m build, we renumber
TIF_SECCOMP to bit 8 and let TIF_TASK_ISOLATION use bit 7.

Signed-off-by: Francis Giraldeau <francis.giraldeau@gmail.com>
Signed-off-by: Chris Metcalf <cmetcalf@mellanox.com> [with modifications]
[abelits@marvell.com: modified for kernel 5.6, added isolation cleanup]
Signed-off-by: Alex Belits <abelits@marvell.com>
---
 arch/arm/Kconfig                   |  1 +
 arch/arm/include/asm/thread_info.h | 10 +++++++---
 arch/arm/kernel/entry-common.S     | 15 ++++++++++-----
 arch/arm/kernel/ptrace.c           | 10 ++++++++++
 arch/arm/kernel/signal.c           | 13 ++++++++++++-
 arch/arm/kernel/smp.c              |  4 ++++
 arch/arm/mm/fault.c                |  8 +++++++-
 7 files changed, 51 insertions(+), 10 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 97864aabc2a6..1a66e6c6807c 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -67,6 +67,7 @@ config ARM
 	select HAVE_ARCH_KGDB if !CPU_ENDIAN_BE32 && MMU
 	select HAVE_ARCH_MMAP_RND_BITS if MMU
 	select HAVE_ARCH_SECCOMP_FILTER if AEABI && !OABI_COMPAT
+	select HAVE_ARCH_TASK_ISOLATION
 	select HAVE_ARCH_THREAD_STRUCT_WHITELIST
 	select HAVE_ARCH_TRACEHOOK
 	select HAVE_ARM_SMCCC if CPU_V7
diff --git a/arch/arm/include/asm/thread_info.h b/arch/arm/include/asm/thread_info.h
index 0d0d5178e2c3..ec3c2084c391 100644
--- a/arch/arm/include/asm/thread_info.h
+++ b/arch/arm/include/asm/thread_info.h
@@ -139,7 +139,8 @@ extern int vfp_restore_user_hwstate(struct user_vfp *,
 #define TIF_SYSCALL_TRACE	4	/* syscall trace active */
 #define TIF_SYSCALL_AUDIT	5	/* syscall auditing active */
 #define TIF_SYSCALL_TRACEPOINT	6	/* syscall tracepoint instrumentation */
-#define TIF_SECCOMP		7	/* seccomp syscall filtering active */
+#define TIF_TASK_ISOLATION	7	/* task isolation active */
+#define TIF_SECCOMP		8	/* seccomp syscall filtering active */
 
 #define TIF_NOHZ		12	/* in adaptive nohz mode */
 #define TIF_USING_IWMMXT	17
@@ -153,18 +154,21 @@ extern int vfp_restore_user_hwstate(struct user_vfp *,
 #define _TIF_SYSCALL_TRACE	(1 << TIF_SYSCALL_TRACE)
 #define _TIF_SYSCALL_AUDIT	(1 << TIF_SYSCALL_AUDIT)
 #define _TIF_SYSCALL_TRACEPOINT	(1 << TIF_SYSCALL_TRACEPOINT)
+#define _TIF_TASK_ISOLATION	(1 << TIF_TASK_ISOLATION)
 #define _TIF_SECCOMP		(1 << TIF_SECCOMP)
 #define _TIF_USING_IWMMXT	(1 << TIF_USING_IWMMXT)
 
 /* Checks for any syscall work in entry-common.S */
 #define _TIF_SYSCALL_WORK (_TIF_SYSCALL_TRACE | _TIF_SYSCALL_AUDIT | \
-			   _TIF_SYSCALL_TRACEPOINT | _TIF_SECCOMP)
+			   _TIF_SYSCALL_TRACEPOINT | _TIF_SECCOMP | \
+			   _TIF_TASK_ISOLATION)
 
 /*
  * Change these and you break ASM code in entry-common.S
  */
 #define _TIF_WORK_MASK		(_TIF_NEED_RESCHED | _TIF_SIGPENDING | \
-				 _TIF_NOTIFY_RESUME | _TIF_UPROBE)
+				 _TIF_NOTIFY_RESUME | _TIF_UPROBE | \
+				 _TIF_TASK_ISOLATION)
 
 #endif /* __KERNEL__ */
 #endif /* __ASM_ARM_THREAD_INFO_H */
diff --git a/arch/arm/kernel/entry-common.S b/arch/arm/kernel/entry-common.S
index 271cb8a1eba1..6ceb5cb808a9 100644
--- a/arch/arm/kernel/entry-common.S
+++ b/arch/arm/kernel/entry-common.S
@@ -53,7 +53,8 @@ __ret_fast_syscall:
 	cmp	r2, #TASK_SIZE
 	blne	addr_limit_check_failed
 	ldr	r1, [tsk, #TI_FLAGS]		@ re-check for syscall tracing
-	tst	r1, #_TIF_SYSCALL_WORK | _TIF_WORK_MASK
+	ldr	r2, =_TIF_SYSCALL_WORK | _TIF_WORK_MASK
+	tst	r1, r2
 	bne	fast_work_pending
 
 
@@ -90,7 +91,8 @@ __ret_fast_syscall:
 	cmp	r2, #TASK_SIZE
 	blne	addr_limit_check_failed
 	ldr	r1, [tsk, #TI_FLAGS]		@ re-check for syscall tracing
-	tst	r1, #_TIF_SYSCALL_WORK | _TIF_WORK_MASK
+	ldr	r2, =_TIF_SYSCALL_WORK | _TIF_WORK_MASK
+	tst	r1, r2
 	beq	no_work_pending
  UNWIND(.fnend		)
 ENDPROC(ret_fast_syscall)
@@ -98,7 +100,8 @@ ENDPROC(ret_fast_syscall)
 	/* Slower path - fall through to work_pending */
 #endif
 
-	tst	r1, #_TIF_SYSCALL_WORK
+	ldr	r2, =_TIF_SYSCALL_WORK
+	tst	r1, r2
 	bne	__sys_trace_return_nosave
 slow_work_pending:
 	mov	r0, sp				@ 'regs'
@@ -131,7 +134,8 @@ ENTRY(ret_to_user_from_irq)
 	cmp	r2, #TASK_SIZE
 	blne	addr_limit_check_failed
 	ldr	r1, [tsk, #TI_FLAGS]
-	tst	r1, #_TIF_WORK_MASK
+	ldr	r2, =_TIF_WORK_MASK
+	tst	r1, r2
 	bne	slow_work_pending
 no_work_pending:
 	asm_trace_hardirqs_on save = 0
@@ -251,7 +255,8 @@ local_restart:
 	ldr	r10, [tsk, #TI_FLAGS]		@ check for syscall tracing
 	stmdb	sp!, {r4, r5}			@ push fifth and sixth args
 
-	tst	r10, #_TIF_SYSCALL_WORK		@ are we tracing syscalls?
+	ldr	r11, =_TIF_SYSCALL_WORK		@ are we tracing syscalls?
+	tst	r10, r11
 	bne	__sys_trace
 
 	invoke_syscall tbl, scno, r10, __ret_fast_syscall
diff --git a/arch/arm/kernel/ptrace.c b/arch/arm/kernel/ptrace.c
index b606cded90cd..a69b0bfd71ae 100644
--- a/arch/arm/kernel/ptrace.c
+++ b/arch/arm/kernel/ptrace.c
@@ -24,6 +24,7 @@
 #include <linux/audit.h>
 #include <linux/tracehook.h>
 #include <linux/unistd.h>
+#include <linux/isolation.h>
 
 #include <asm/pgtable.h>
 #include <asm/traps.h>
@@ -921,6 +922,15 @@ asmlinkage int syscall_trace_enter(struct pt_regs *regs, int scno)
 	if (test_thread_flag(TIF_SYSCALL_TRACE))
 		tracehook_report_syscall(regs, PTRACE_SYSCALL_ENTER);
 
+	/*
+	 * In task isolation mode, we may prevent the syscall from
+	 * running, and if so we also deliver a signal to the process.
+	 */
+	if (test_thread_flag(TIF_TASK_ISOLATION)) {
+		if (task_isolation_syscall(scno) == -1)
+			return -1;
+	}
+
 	/* Do seccomp after ptrace; syscall may have changed. */
 #ifdef CONFIG_HAVE_ARCH_SECCOMP_FILTER
 	if (secure_computing() == -1)
diff --git a/arch/arm/kernel/signal.c b/arch/arm/kernel/signal.c
index ab2568996ddb..29ccef8403cd 100644
--- a/arch/arm/kernel/signal.c
+++ b/arch/arm/kernel/signal.c
@@ -12,6 +12,7 @@
 #include <linux/tracehook.h>
 #include <linux/uprobes.h>
 #include <linux/syscalls.h>
+#include <linux/isolation.h>
 
 #include <asm/elf.h>
 #include <asm/cacheflush.h>
@@ -639,6 +640,9 @@ static int do_signal(struct pt_regs *regs, int syscall)
 	return 0;
 }
 
+#define WORK_PENDING_LOOP_FLAGS	(_TIF_NEED_RESCHED | _TIF_SIGPENDING |	\
+				 _TIF_NOTIFY_RESUME | _TIF_UPROBE)
+
 asmlinkage int
 do_work_pending(struct pt_regs *regs, unsigned int thread_flags, int syscall)
 {
@@ -648,6 +652,9 @@ do_work_pending(struct pt_regs *regs, unsigned int thread_flags, int syscall)
 	 * Update the trace code with the current status.
 	 */
 	trace_hardirqs_off();
+
+	task_isolation_check_run_cleanup();
+
 	do {
 		if (likely(thread_flags & _TIF_NEED_RESCHED)) {
 			schedule();
@@ -676,7 +683,11 @@ do_work_pending(struct pt_regs *regs, unsigned int thread_flags, int syscall)
 		}
 		local_irq_disable();
 		thread_flags = current_thread_info()->flags;
-	} while (thread_flags & _TIF_WORK_MASK);
+	} while (thread_flags & WORK_PENDING_LOOP_FLAGS);
+
+	if (thread_flags & _TIF_TASK_ISOLATION)
+		task_isolation_start();
+
 	return 0;
 }
 
diff --git a/arch/arm/kernel/smp.c b/arch/arm/kernel/smp.c
index 46e1be9e57a8..95f19b980776 100644
--- a/arch/arm/kernel/smp.c
+++ b/arch/arm/kernel/smp.c
@@ -26,6 +26,7 @@
 #include <linux/completion.h>
 #include <linux/cpufreq.h>
 #include <linux/irq_work.h>
+#include <linux/isolation.h>
 
 #include <linux/atomic.h>
 #include <asm/bugs.h>
@@ -560,6 +561,7 @@ void arch_send_call_function_ipi_mask(const struct cpumask *mask)
 
 void arch_send_wakeup_ipi_mask(const struct cpumask *mask)
 {
+	task_isolation_remote_cpumask(mask, "wakeup IPI");
 	smp_cross_call(mask, IPI_WAKEUP);
 }
 
@@ -579,6 +581,7 @@ void arch_irq_work_raise(void)
 #ifdef CONFIG_GENERIC_CLOCKEVENTS_BROADCAST
 void tick_broadcast(const struct cpumask *mask)
 {
+	task_isolation_remote_cpumask(mask, "timer IPI");
 	smp_cross_call(mask, IPI_TIMER);
 }
 #endif
@@ -702,6 +705,7 @@ void handle_IPI(int ipinr, struct pt_regs *regs)
 
 void smp_send_reschedule(int cpu)
 {
+	task_isolation_remote(cpu, "reschedule IPI");
 	smp_cross_call(cpumask_of(cpu), IPI_RESCHEDULE);
 }
 
diff --git a/arch/arm/mm/fault.c b/arch/arm/mm/fault.c
index bd0f4821f7e1..acd11a69c4e4 100644
--- a/arch/arm/mm/fault.c
+++ b/arch/arm/mm/fault.c
@@ -17,6 +17,7 @@
 #include <linux/sched/debug.h>
 #include <linux/highmem.h>
 #include <linux/perf_event.h>
+#include <linux/isolation.h>
 
 #include <asm/pgtable.h>
 #include <asm/system_misc.h>
@@ -332,8 +333,13 @@ do_page_fault(unsigned long addr, unsigned int fsr, struct pt_regs *regs)
 	/*
 	 * Handle the "normal" case first - VM_FAULT_MAJOR
 	 */
-	if (likely(!(fault & (VM_FAULT_ERROR | VM_FAULT_BADMAP | VM_FAULT_BADACCESS))))
+	if (likely(!(fault & (VM_FAULT_ERROR | VM_FAULT_BADMAP |
+			      VM_FAULT_BADACCESS)))) {
+		/* No signal was generated, but notify task-isolation tasks. */
+		if (user_mode(regs))
+			task_isolation_interrupt("page fault at %#lx", addr);
 		return 0;
+	}
 
 	/*
 	 * If we are in kernel mode at this point, we
-- 
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
