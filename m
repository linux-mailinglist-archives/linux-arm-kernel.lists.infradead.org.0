Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F5B317D13A
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 04:51:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Tnk6pnN19/ZZLDaocUHsrPeUrfuI7n1zjzn0uN7ANs=; b=h7KZ0va+HY483k
	4pnvSVTTxgwFejIU9Y615Qmn29Nr/oVffDBu9ryumeC3U7/6wX+g5QcYM7OPOkBeHM/z4k2OBBy58
	/RdSGTcwPAPGBeLuna1cGbgaHBVhX8U1pXXrDUwmHMIbUNNbegSmaGA2YqGLkf06fJkR9mym0zcM4
	oE4RzN0NUM8JnxutymPLicmKXN0p1w/HY2pA248ZqWfsmaACn8Xch2kekMAGXMLS2Hmn3C61DOd95
	UEfmCadk/uoZTyqkiUwX+SghTL2lZXeGfdyywIkUhIfb4yXKTaN2dGjVNI9C+7vaDGGlG4LVT2/HY
	PhbBe4Tw3xERrHYvSfBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAmyU-0000Pm-0p; Sun, 08 Mar 2020 03:51:34 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAmyL-0000P7-E6
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Mar 2020 03:51:28 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0283kvjj010537; Sat, 7 Mar 2020 19:51:01 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=O+bhqr4/bcv5yvmoUmApccrZL//vCN8BtdiyigeXwLc=;
 b=EfPq7fObGNuDgMpWG1C/PTN+yoKKiboFj/H3V3EAlQpvbE/875uTsmYaIPijVzCOPXOK
 +gZR3YrEs9vSfjPpLVgtqXkbqhLa+Ntv0ZOwuRtT7tZE1lNPY5Iye7UWxSrmDzzkuS2h
 MEzm9OhjJjRaf54JnvB061W5BQW0wP4F+JaMkgO6IWWN1ghkikeHV5P/4tPFxfS4h0/d
 eFXVlb9UjOyfFMt67RXK1Ssv8ajix6OL/Sp5ocqyLEMsSO8WJPB+x4hNgo6+nLMZ1aAf
 pejPUljI5n7PGY30yzUZeOcGhaCj9JEY33DaUtPjsrqo23QMEQ/cERBmq/Ln9cKW2iPS yQ== 
Received: from sc-exch02.marvell.com ([199.233.58.182])
 by mx0a-0016f401.pphosted.com with ESMTP id 2ym9uwav83-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Sat, 07 Mar 2020 19:51:01 -0800
Received: from DC5-EXCH02.marvell.com (10.69.176.39) by SC-EXCH02.marvell.com
 (10.93.176.82) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Sat, 7 Mar 2020 19:51:00 -0800
Received: from SC-EXCH04.marvell.com (10.93.176.84) by DC5-EXCH02.marvell.com
 (10.69.176.39) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Sat, 7 Mar 2020 19:50:59 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by SC-EXCH04.marvell.com (10.93.176.84) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Sat, 7 Mar 2020 19:50:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nGxIzGGeFxL1lnxSIWI+WAdo2swHErC80zJ1tCmz3xyaSuF3XA62dI7UYG8JeMDTkzIMc0mQZjKs/mjvkXy1+i1sbzZj35pjVv82hs1W1p/t5mL+vyVofDBWpEBtsUYJIrv/69sPzkMZyCcbkgeiLm0sVO0e+zRFIPVTIsh8H1iX0fPiSMWOnBThBgHygvh95DXKYb2TV4A8A30Z1nxhADwL+hDvgqGDHIkjHlOCcsU0YyBIlYvx897Py7GQxkwRBrSwQlCDRHjgHvIKSjAIk6zOGYeO3wYVctCNav+XGISmk23sKkU3PA2HHhY9gpXKVM9/+RVEBAj4PxDDE7aSAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O+bhqr4/bcv5yvmoUmApccrZL//vCN8BtdiyigeXwLc=;
 b=bQX3YLwRYV/lVslA7cTMjjwE8ritYtA/dCBAYagkwHxKyctGrDc8GQqgUJcRnET+hKGVVS9063jJ6uegWXuij7lzA1wH333IWd/w4a2BlYZeyWYjkDDjCZFEPB6/G5fm9xy1CF7md0/WNN71So39zIcTyWp18tB+sFuLPpUWt62ia1VguWE31I10ylTDhe0wxF1opHePRzbuR3YF4M/RQxoVp6UhRXZfEwiN/EqCZKCnJjGNMn1dyVWfjxwsPlPOj86EDaPw6Gju5iuc8HRmne0FSO3E2StzC54pneUmwcYPNKgKAuZN2s+3aI1OK4QIWh1U82363bm7D6Xw52NcXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O+bhqr4/bcv5yvmoUmApccrZL//vCN8BtdiyigeXwLc=;
 b=r0NP050VazPRHLwbfAD4rZKDVGUQ7NiurSPluBYYAESBm4NZGi6t2xZOFE2tKrKekm71swtehXwbTFYbQA0CS2uuoWlqvZL2m8f3JgjXr4+qji7GWpGkXa0Rk+MGEe2lV7SupTBzsxv0XLeatRpRAezXF9qAtAzCIuKj7bno+YA=
Received: from BYAPR18MB2535.namprd18.prod.outlook.com (2603:10b6:a03:137::17)
 by BYAPR18MB2920.namprd18.prod.outlook.com (2603:10b6:a03:10b::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.14; Sun, 8 Mar
 2020 03:50:58 +0000
Received: from BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::8cd1:1741:8d2d:1c23]) by BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::8cd1:1741:8d2d:1c23%7]) with mapi id 15.20.2793.013; Sun, 8 Mar 2020
 03:50:58 +0000
From: Alex Belits <abelits@marvell.com>
To: "frederic@kernel.org" <frederic@kernel.org>, "rostedt@goodmis.org"
 <rostedt@goodmis.org>
Subject: [PATCH v2 06/12] task_isolation: arch/arm64: enable task isolation
 functionality
Thread-Topic: [PATCH v2 06/12] task_isolation: arch/arm64: enable task
 isolation functionality
Thread-Index: AQHV9PzGqYwRhIb41UmglY+oy7CR8w==
Date: Sun, 8 Mar 2020 03:50:58 +0000
Message-ID: <b559513e03dfd09f64ace29452590ddb92c3196f.camel@marvell.com>
References: <4473787e1b6bc3cc226067e8d122092a678b63de.camel@marvell.com>
 <aed12dd15ea2981bc9554cfa8b5e273c1342c756.camel@marvell.com>
In-Reply-To: <aed12dd15ea2981bc9554cfa8b5e273c1342c756.camel@marvell.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [199.233.58.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 707ff5f4-e4bc-4c19-b080-08d7c313e959
x-ms-traffictypediagnostic: BYAPR18MB2920:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR18MB2920829DC3A23258C8A85F22BCE10@BYAPR18MB2920.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 03361FCC43
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(346002)(39850400004)(396003)(136003)(189003)(199004)(4326008)(2616005)(110136005)(186003)(36756003)(54906003)(81156014)(81166006)(86362001)(7416002)(8676002)(26005)(2906002)(6486002)(71200400001)(8936002)(66946007)(5660300002)(6512007)(316002)(478600001)(91956017)(6506007)(66446008)(64756008)(66556008)(66476007)(76116006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR18MB2920;
 H:BYAPR18MB2535.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fKVz9Sj1r1ln5LNarZpj69qeq/HB2JfmnhFroEhw4CtGLY1iWvsufQr47dQUqTNRdZvX0xCTuSp5vDhXQxkEe7g+sl9wHu6BG/j0Hf9flvp4LamWTpG5Sqjp78RVhA+ycv2Ac942YGRW/MGZB9mwPf1h916c2GVBBjITNrmU0nMjcPUk+Hrl9aF1gcsHR95Nk0tO4QTfH7007Mdnjrg0Ss1c3Ss4EejC3L5gq73etYj0Wa4gWf/4VivCCh679H1+MUHznd9PAQWcAcKxEVJy49w0cG88NsH7ZijCLqFnUPEmX/+GnxVvRECkqf+4aO4jICoJxwuZTRau4k0aSQJDx8G+dFLYuFsNs1OMjEyDLxQWVq8EGJFA+DE0sk0B6Gz+d9ADuBGbDHdakTJIigQRfSXEdBl6+tvCGudzP+qMFxXGShPGKtRoNCNhAXkIFB8r
x-ms-exchange-antispam-messagedata: wHcYKq3xpR8QXOC1WJtPOg946YjvsMsDSvx/9tzt2O4wo01xX4IObDJ49ZnkQ+Ldq/R/5Lqwm2jgE7HudrRYhJ9T+vOZitqCDjNBPrfOFGkW16bIeo4vyJeP3PVWgjPMlmIuCwIj4hwRXPKMFvKu2A==
Content-ID: <5488B4749FDB154F978D946B283098A9@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 707ff5f4-e4bc-4c19-b080-08d7c313e959
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2020 03:50:58.1079 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pM1zl+1OZoAlmP+Hv/ncqceWwhI7Z8qUCK61WE9oxuQg2rVDi9ZqXQ/V4LqlKGEHY6OPLDtbpspx6ocdHhjDyw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR18MB2920
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-03-07_09:2020-03-06,
 2020-03-07 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_195126_282030_8A959A10 
X-CRM114-Status: GOOD (  19.79  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.148.174 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

From: Chris Metcalf <cmetcalf@mellanox.com>

In do_notify_resume(), call task_isolation_start() for
TIF_TASK_ISOLATION tasks. Add _TIF_TASK_ISOLATION to _TIF_WORK_MASK,
and define a local NOTIFY_RESUME_LOOP_FLAGS to check in the loop,
since we don't clear _TIF_TASK_ISOLATION in the loop.

We instrument the smp_send_reschedule() routine so that it checks for
isolated tasks and generates a suitable warning if needed.

Finally, report on page faults in task-isolation processes in
do_page_faults().

Signed-off-by: Chris Metcalf <cmetcalf@mellanox.com>
[abelits@marvell.com: simplified to match kernel 5.6]
Signed-off-by: Alex Belits <abelits@marvell.com>
---
 arch/arm64/Kconfig                   |  1 +
 arch/arm64/include/asm/thread_info.h |  5 ++++-
 arch/arm64/kernel/ptrace.c           | 10 ++++++++++
 arch/arm64/kernel/signal.c           | 13 ++++++++++++-
 arch/arm64/kernel/smp.c              |  7 +++++++
 arch/arm64/mm/fault.c                |  5 +++++
 6 files changed, 39 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 0b30e884e088..93b6aabc8be9 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -129,6 +129,7 @@ config ARM64
 	select HAVE_ARCH_PREL32_RELOCATIONS
 	select HAVE_ARCH_SECCOMP_FILTER
 	select HAVE_ARCH_STACKLEAK
+	select HAVE_ARCH_TASK_ISOLATION
 	select HAVE_ARCH_THREAD_STRUCT_WHITELIST
 	select HAVE_ARCH_TRACEHOOK
 	select HAVE_ARCH_TRANSPARENT_HUGEPAGE
diff --git a/arch/arm64/include/asm/thread_info.h b/arch/arm64/include/asm/thread_info.h
index f0cec4160136..7563098eb5b2 100644
--- a/arch/arm64/include/asm/thread_info.h
+++ b/arch/arm64/include/asm/thread_info.h
@@ -63,6 +63,7 @@ void arch_release_task_struct(struct task_struct *tsk);
 #define TIF_FOREIGN_FPSTATE	3	/* CPU's FP state is not current's */
 #define TIF_UPROBE		4	/* uprobe breakpoint or singlestep */
 #define TIF_FSCHECK		5	/* Check FS is USER_DS on return */
+#define TIF_TASK_ISOLATION	6
 #define TIF_NOHZ		7
 #define TIF_SYSCALL_TRACE	8	/* syscall trace active */
 #define TIF_SYSCALL_AUDIT	9	/* syscall auditing */
@@ -83,6 +84,7 @@ void arch_release_task_struct(struct task_struct *tsk);
 #define _TIF_NEED_RESCHED	(1 << TIF_NEED_RESCHED)
 #define _TIF_NOTIFY_RESUME	(1 << TIF_NOTIFY_RESUME)
 #define _TIF_FOREIGN_FPSTATE	(1 << TIF_FOREIGN_FPSTATE)
+#define _TIF_TASK_ISOLATION	(1 << TIF_TASK_ISOLATION)
 #define _TIF_NOHZ		(1 << TIF_NOHZ)
 #define _TIF_SYSCALL_TRACE	(1 << TIF_SYSCALL_TRACE)
 #define _TIF_SYSCALL_AUDIT	(1 << TIF_SYSCALL_AUDIT)
@@ -96,7 +98,8 @@ void arch_release_task_struct(struct task_struct *tsk);
 
 #define _TIF_WORK_MASK		(_TIF_NEED_RESCHED | _TIF_SIGPENDING | \
 				 _TIF_NOTIFY_RESUME | _TIF_FOREIGN_FPSTATE | \
-				 _TIF_UPROBE | _TIF_FSCHECK)
+				 _TIF_UPROBE | _TIF_FSCHECK | \
+				 _TIF_TASK_ISOLATION)
 
 #define _TIF_SYSCALL_WORK	(_TIF_SYSCALL_TRACE | _TIF_SYSCALL_AUDIT | \
 				 _TIF_SYSCALL_TRACEPOINT | _TIF_SECCOMP | \
diff --git a/arch/arm64/kernel/ptrace.c b/arch/arm64/kernel/ptrace.c
index cd6e5fa48b9c..b35b9b0c594c 100644
--- a/arch/arm64/kernel/ptrace.c
+++ b/arch/arm64/kernel/ptrace.c
@@ -29,6 +29,7 @@
 #include <linux/regset.h>
 #include <linux/tracehook.h>
 #include <linux/elf.h>
+#include <linux/isolation.h>
 
 #include <asm/compat.h>
 #include <asm/cpufeature.h>
@@ -1836,6 +1837,15 @@ int syscall_trace_enter(struct pt_regs *regs)
 			return -1;
 	}
 
+	/*
+	 * In task isolation mode, we may prevent the syscall from
+	 * running, and if so we also deliver a signal to the process.
+	 */
+	if (test_thread_flag(TIF_TASK_ISOLATION)) {
+		if (task_isolation_syscall(regs->syscallno) == -1)
+			return -1;
+	}
+
 	/* Do the secure computing after ptrace; failures should be fast. */
 	if (secure_computing() == -1)
 		return -1;
diff --git a/arch/arm64/kernel/signal.c b/arch/arm64/kernel/signal.c
index 339882db5a91..d488c91a4877 100644
--- a/arch/arm64/kernel/signal.c
+++ b/arch/arm64/kernel/signal.c
@@ -20,6 +20,7 @@
 #include <linux/tracehook.h>
 #include <linux/ratelimit.h>
 #include <linux/syscalls.h>
+#include <linux/isolation.h>
 
 #include <asm/daifflags.h>
 #include <asm/debug-monitors.h>
@@ -898,6 +899,11 @@ static void do_signal(struct pt_regs *regs)
 	restore_saved_sigmask();
 }
 
+#define NOTIFY_RESUME_LOOP_FLAGS \
+	(_TIF_NEED_RESCHED | _TIF_SIGPENDING | \
+	_TIF_NOTIFY_RESUME | _TIF_FOREIGN_FPSTATE | \
+	_TIF_UPROBE | _TIF_FSCHECK)
+
 asmlinkage void do_notify_resume(struct pt_regs *regs,
 				 unsigned long thread_flags)
 {
@@ -908,6 +914,8 @@ asmlinkage void do_notify_resume(struct pt_regs *regs,
 	 */
 	trace_hardirqs_off();
 
+	task_isolation_check_run_cleanup();
+
 	do {
 		/* Check valid user FS if needed */
 		addr_limit_user_check();
@@ -938,7 +946,10 @@ asmlinkage void do_notify_resume(struct pt_regs *regs,
 
 		local_daif_mask();
 		thread_flags = READ_ONCE(current_thread_info()->flags);
-	} while (thread_flags & _TIF_WORK_MASK);
+	} while (thread_flags & NOTIFY_RESUME_LOOP_FLAGS);
+
+	if (thread_flags & _TIF_TASK_ISOLATION)
+		task_isolation_start();
 }
 
 unsigned long __ro_after_init signal_minsigstksz;
diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
index d4ed9a19d8fe..00f0f77adea0 100644
--- a/arch/arm64/kernel/smp.c
+++ b/arch/arm64/kernel/smp.c
@@ -32,6 +32,7 @@
 #include <linux/irq_work.h>
 #include <linux/kexec.h>
 #include <linux/kvm_host.h>
+#include <linux/isolation.h>
 
 #include <asm/alternative.h>
 #include <asm/atomic.h>
@@ -818,6 +819,7 @@ void arch_send_call_function_single_ipi(int cpu)
 #ifdef CONFIG_ARM64_ACPI_PARKING_PROTOCOL
 void arch_send_wakeup_ipi_mask(const struct cpumask *mask)
 {
+	task_isolation_remote_cpumask(mask, "wakeup IPI");
 	smp_cross_call(mask, IPI_WAKEUP);
 }
 #endif
@@ -886,6 +888,9 @@ void handle_IPI(int ipinr, struct pt_regs *regs)
 		__inc_irq_stat(cpu, ipi_irqs[ipinr]);
 	}
 
+	task_isolation_interrupt("IPI type %d (%s)", ipinr,
+				 ipinr < NR_IPI ? ipi_types[ipinr] : "unknown");
+
 	switch (ipinr) {
 	case IPI_RESCHEDULE:
 		scheduler_ipi();
@@ -948,12 +953,14 @@ void handle_IPI(int ipinr, struct pt_regs *regs)
 
 void smp_send_reschedule(int cpu)
 {
+	task_isolation_remote(cpu, "reschedule IPI");
 	smp_cross_call(cpumask_of(cpu), IPI_RESCHEDULE);
 }
 
 #ifdef CONFIG_GENERIC_CLOCKEVENTS_BROADCAST
 void tick_broadcast(const struct cpumask *mask)
 {
+	task_isolation_remote_cpumask(mask, "timer IPI");
 	smp_cross_call(mask, IPI_TIMER);
 }
 #endif
diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
index 85566d32958f..fc4b42c81c4f 100644
--- a/arch/arm64/mm/fault.c
+++ b/arch/arm64/mm/fault.c
@@ -23,6 +23,7 @@
 #include <linux/perf_event.h>
 #include <linux/preempt.h>
 #include <linux/hugetlb.h>
+#include <linux/isolation.h>
 
 #include <asm/acpi.h>
 #include <asm/bug.h>
@@ -543,6 +544,10 @@ static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
 	 */
 	if (likely(!(fault & (VM_FAULT_ERROR | VM_FAULT_BADMAP |
 			      VM_FAULT_BADACCESS)))) {
+		/* No signal was generated, but notify task-isolation tasks. */
+		if (user_mode(regs))
+			task_isolation_interrupt("page fault at %#lx", addr);
+
 		/*
 		 * Major/minor page fault accounting is only done
 		 * once. If we go through a retry, it is extremely
-- 
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
