Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E0B1A36F6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 17:24:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Tnk6pnN19/ZZLDaocUHsrPeUrfuI7n1zjzn0uN7ANs=; b=QwFpzLtabu4XZa
	2Trw7agAyGx9RYnY6likEFgwzm5w+99NNh41BxtmVAnMKID9rUxOwZWAsq5h/HLTLdSLbAYXT0HqX
	FrCH9+xt2QM21ZrSfQua5+egi2ErxQgomUlzBSlc7teUk13o4Rq9MFA2wiOde53fuRifnnoxzH/RC
	M+rGkUROgjowsMTvM8+L1zj9a2qNCsFsWezuPcL6HWQp474EIzMumJdnftLm2APOMU2sMn4oX5Q+V
	8c9Vg5vk+b7FtVi0GsRDbLZrHwBikD0LY4ceQeLQgyV2UNiMNl/i3W7G4mC2isoW/+mnFE2Suyr2q
	Cds68ZVoVA5epC+23Wzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMZ2I-0002Qz-8B; Thu, 09 Apr 2020 15:24:10 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMZ2A-0002Qa-7S
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 15:24:04 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 039FGv0u019699; Thu, 9 Apr 2020 08:23:38 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=O+bhqr4/bcv5yvmoUmApccrZL//vCN8BtdiyigeXwLc=;
 b=C6c/b4FJok3IN6wLo7/JE2sXnT+HMaHhAlIgCCWKWOdA0t+BxgDAHRe7R7GbFTpxj5Oi
 YzrVI4o6kewAyE9fxtcWcfR/ZQM470X5NhkQ+MStib4ezXhMKy+mIkxCxwoOcFGr9U6F
 7tY8il/+HDblCFlDk7UBaY8bUvkirlBZ20R3SnWvVbZDjVwyXrMaYKds7KVg1C1ee7JZ
 3iCGwaBL9UIuv4Qh9GcIAVrY3x9m8rBA8Aa5MHfoZ/dhPO6Ovy9rLoEYe2TCcr3x5JDv
 yNhzOcAC0d22otHeXhJFPS0ph47fjkUp8iVHOFi7oJuUaQZ4mgxU5E9YQb9aZzfgly+w Lg== 
Received: from sc-exch04.marvell.com ([199.233.58.184])
 by mx0b-0016f401.pphosted.com with ESMTP id 3091me8yyb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Thu, 09 Apr 2020 08:23:38 -0700
Received: from SC-EXCH04.marvell.com (10.93.176.84) by SC-EXCH04.marvell.com
 (10.93.176.84) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Thu, 9 Apr
 2020 08:23:36 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (104.47.37.56) by
 SC-EXCH04.marvell.com (10.93.176.84) with Microsoft SMTP Server
 (TLS) id
 15.0.1497.2 via Frontend Transport; Thu, 9 Apr 2020 08:23:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B+/eFRWtRofnOl9//20h60maMBp6NHJxmgDRueM5h7s+E7BWGiauEwLYDd/rVJFkeE/C0jC5WM7dNTjF94xxLcfHVjLnPGxKaC7D5HP12SGGeunHK9VuCocEZDkneyW60DA+Z9szQccvRXcs2BwpJiX/qVARCeNEoqMugmZQd0bg4LUhOiDpWKsQ8KvOG/9axX8juU8fKAWcoUYQbupOfF6oOHhKpw89a1igBOU4/HqPUSa34OkjHvEgZz18JGWFhOKNjmCXbpuNVDcSXodnWMcrOGOA3Zo9TEOvaxRQVUQMbHHc3mmPpVASuVJMoQ7QMMGIilGaoAxX0fLWrciHqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O+bhqr4/bcv5yvmoUmApccrZL//vCN8BtdiyigeXwLc=;
 b=XIqBbjCMhXMY6/A/cUJZRv+ClGwH7m+bgf9OSBp7rcIaF5mEXmpbADnLRsKS6g8kjZ632WGScMplzoqQ+iB4Vekd/jZo4yg+z8BSUJbSlMIvdTpK28t5SO8ERHl1pNwEre9zYrp3ztjgDuZPFAOoaKR6sAkHo+7NQcCn9f6Phv2+ukcdNrAt6UQ71oWpQKT4XFE4ZeXLDgnpZ4aDVwXULaEN8jcwf94xYaRUJb2zOIanaFim3HNRN7pgr6JEtTBqXYh81oaRmj3cOP1ANZPyCp1mmP3tUhd9AG/r2pmHceEsYpI1glzqhouixtIjm/RPcz5iq4DLzpS9hq3D2pPHXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O+bhqr4/bcv5yvmoUmApccrZL//vCN8BtdiyigeXwLc=;
 b=DkT1npWBr2BgHF5sUEJ1Ysa5Mt4nLaMniKJkn7zQsCSCAkTKDujVwYKi0555subQXhkRKIltPXvuzR8T55mBjjJmCb3KxoptTaWdi4gqByFlVM8NlX9yBa0Z43SZbn4RoGH0FEVy0UFcEbTuzFyx9NHnH+kR6KWSYvMvz4c+hWA=
Received: from BYAPR18MB2535.namprd18.prod.outlook.com (2603:10b6:a03:137::17)
 by BYAPR18MB3749.namprd18.prod.outlook.com (2603:10b6:a03:96::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.20; Thu, 9 Apr
 2020 15:23:35 +0000
Received: from BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::65f8:9bfe:5fa5:1280]) by BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::65f8:9bfe:5fa5:1280%3]) with mapi id 15.20.2878.022; Thu, 9 Apr 2020
 15:23:35 +0000
From: Alex Belits <abelits@marvell.com>
To: "frederic@kernel.org" <frederic@kernel.org>, "rostedt@goodmis.org"
 <rostedt@goodmis.org>
Subject: [PATCH v3 07/13] task_isolation: arch/arm64: enable task isolation
 functionality
Thread-Topic: [PATCH v3 07/13] task_isolation: arch/arm64: enable task
 isolation functionality
Thread-Index: AQHWDoLVxkJhaapGUEO4pq/iEVe7CQ==
Date: Thu, 9 Apr 2020 15:23:35 +0000
Message-ID: <299c02b268a6438704693ddb77cdcb49f382c0ea.camel@marvell.com>
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
x-ms-office365-filtering-correlation-id: 9f9158cd-5a7b-4305-cbf7-08d7dc99f887
x-ms-traffictypediagnostic: BYAPR18MB3749:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR18MB3749503FA726F253CF7F5B75BCC10@BYAPR18MB3749.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
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
x-microsoft-antispam-message-info: dPiCLS+c/IiLxN+TF7GCkf4EixAP+tJ1MAtCODTMbxOycVgPZbyuSFdCMz2RW/9xAZVg4xN7foTK3CKHWAw/U+gUCIhYCOmNifns/AuQfNL/kUzIbmfG6ctQfGPMe9XaoVf9QmkiIjR0eTltkWXBU6SicsZ6/t6RBgBKU3uwvCDAWUqhFd37YaNI4CsDlOkq04stngRSs4bHVPGoMmZqx+K2Im6ry29AQnZ87X40eMEAcAsSYtzjM36y9ZJMt/j71Cc3RlhFNyr1aVVScKT/dGGFRzZ+zSakQoDa27YFjyTC4cTlFREUddNmcJhJZNZOTJ+rCUJqYoUqGaLgc+SDQu63k0b0d2P6BS+nK+GABSVChXurx40QUecB0wjzCrDZxKlHdLdSwKsnOFYp4y4xEA1AuN5o4FBpxhC/oqoq2HCCj5J43P5IMEKQfzDjNkoH
x-ms-exchange-antispam-messagedata: bEe51MfCgru3S24MepotIK0PxuBTXF/lE4Tedkf2wsv7nNJNk9s5ATHTcp7ecEeFSPQphSzRd5h5NpF05E3MYDd3bsZ/kfPG0hbRHKOIlLceBEMN8Gm7pAGK3ERpfS29zjPEMz67sIElsKO/r5MLhQ==
Content-ID: <9DCFD84EDA53E94BA1A65721B1BFBFB7@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f9158cd-5a7b-4305-cbf7-08d7dc99f887
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2020 15:23:35.2272 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Xr4o6L4kaaX1GLy31jNSo0uDynaTLcAJfgWAKeu0DZjabJFS8qkROy1EnVSbKDDfgDtFXg7forPT2lWAE6EUcw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR18MB3749
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-09_05:2020-04-07,
 2020-04-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_082402_393013_BFB390FF 
X-CRM114-Status: GOOD (  20.95  )
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
