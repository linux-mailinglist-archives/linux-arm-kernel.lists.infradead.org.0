Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E0D1A36F1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 17:23:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5iGv50mXiDlkPUaBlIFTA5Y55DxTdr7ITyWn0eW7zSc=; b=EcQCynvGEyEZxV
	RvW5ZKv2vYbwHS8sG01oYoM1UTA3SIPS791AAGrRUhEOkOvi0friwNhamM/k017HRnbrY2T++MT42
	uY98+YJPeBF/GDlsbPG43RkO+S1wTYNp1zUjurkyPcNsDkvAUPJyW6MiJXYeRjvc533ZFY7/KzeQX
	ZfKVFKBBmiOvIvnzIz7oHWIqNy/lgVHn0VaV1FLa9HFzt1gO7V8S8Az+S2wD1T0ocvATn7BZ1j8P5
	RBZdtMM2k6FAFQvmy5CbI9+wf7sNGFX8MoediVGjrLoqGLbo8o5j4Tfv5o5tK5MkNmQ8p3kk5HM/v
	Dy6ayISOO0XG7/5eO77A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMZ1S-00025o-R9; Thu, 09 Apr 2020 15:23:18 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMZ1L-00025K-GD
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 15:23:13 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 039FH05I019710; Thu, 9 Apr 2020 08:22:36 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=kwxvA2O/rF7rha8lL0t+pYwH6gP7wrFqWvOKNvTqAHU=;
 b=G/hM8g5CXcJmofghL2ynG9NmuKYTDDDFF/gPsJrx6zSiJt0kee3kSxiO1OoLcr242c2l
 uqdiTg54C4OKAN9JPOK9n2aWSAqD0ftBT3RqQ1aPnIDngorRxQwEWQNmQJBV01pOsrOM
 nMtrglerG/lghLzqnrNmnmgtTWp23K0EwBz1Xo4pdRCLucrQkRIFPU8MwtMGnk4KwRFT
 HYwdIC4nlqzWZ63/aFqRsmTylhKx2yCK+YlIBrpRe6OUDvYtqKdPh3V2waJv0l/5aKLl
 RpLbnBbNqe9eJrGVvoeGk1jtWWNl/qmqZywNDuuhRgHB8Ux6qReBDsTwxJlUIk5sp0Ia bw== 
Received: from sc-exch02.marvell.com ([199.233.58.182])
 by mx0b-0016f401.pphosted.com with ESMTP id 3091me8ytv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Thu, 09 Apr 2020 08:22:36 -0700
Received: from SC-EXCH03.marvell.com (10.93.176.83) by SC-EXCH02.marvell.com
 (10.93.176.82) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Thu, 9 Apr
 2020 08:22:34 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.36.53) by
 SC-EXCH03.marvell.com (10.93.176.83) with Microsoft SMTP Server
 (TLS) id
 15.0.1497.2 via Frontend Transport; Thu, 9 Apr 2020 08:22:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=naWlaGF5wrP6vEysSinjqyyrYs+W+pRpQapvE08JmlvFTKkBE10RX3u3Ndq9je0QAqfIeNQTiA/WO/dG4K6kwKUBhYjvX9J/h2fGoG7CwgYkOTy1SuBRzsqJlZsI4Y8u8ksi2FNBjW7w9ZfcS4ymZKNQDWwYyNd2x795mUuJorlefedRkci6VBtb8ELa9Fq90UiwWYtehGQTyBRtJiUqSo8fgUc2KwxSSS0t+rl9udmVi4Jns+ReUN4R/vXOVNFUikqaVOT9PCj2kjTJOKXYMCSkj+a96Gfvd0bQ2rxCGv0td8wpAOo/n1gZDAUmLdG6jl8byC4tWdcXJHpRbQVZ0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kwxvA2O/rF7rha8lL0t+pYwH6gP7wrFqWvOKNvTqAHU=;
 b=nyT8A+fPxVOcCm5Zo5dbmYno9LIcT8QqZU/7jlh9+0E7PNVnQhYmgLYY7zpNWXZ1PINAz26N9LejtoTd3R/IWvTx7oEbod++BSu1flIAnYjlT1w9j13tuwS9DBE0f6NW26Oz2ZsrzSnUJ+eXamgC0A5xC7CF2ynGufoO5isW51mJccAb7rno5JjC7J2fUY6JYD4JZvp6qJnfj8y0SpQPjQ31P71TxZ2gRaY+pHODN/thlvPPg83wrnDz/XKSJj2bkniP+eKcCXARdGDdjy4zoTionQTQIWomrcvA1Gl+sAKRxLtmJlJ9/3FCfgF0LOlc7Zl15Qp9qUSMYxpixdD7VQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kwxvA2O/rF7rha8lL0t+pYwH6gP7wrFqWvOKNvTqAHU=;
 b=KlkqZ2AzyzRkOvpQ8uwotvADEUGmEvcxrXfiF6E/CGG/rSWP05hd4WBuVKMiYGgwRGedPSLbkyNwTBl88HJ6kiMQgkgqC2VW+obZORQ5IKBohD7zBewIETkMQModeRYpg6SwZgfzgqjV7M5Mrv7L5Yn/IIEcgbVfA/knorWYzTY=
Received: from BYAPR18MB2535.namprd18.prod.outlook.com (2603:10b6:a03:137::17)
 by BYAPR18MB3749.namprd18.prod.outlook.com (2603:10b6:a03:96::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.20; Thu, 9 Apr
 2020 15:22:33 +0000
Received: from BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::65f8:9bfe:5fa5:1280]) by BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::65f8:9bfe:5fa5:1280%3]) with mapi id 15.20.2878.022; Thu, 9 Apr 2020
 15:22:33 +0000
From: Alex Belits <abelits@marvell.com>
To: "frederic@kernel.org" <frederic@kernel.org>, "rostedt@goodmis.org"
 <rostedt@goodmis.org>
Subject: [PATCH 06/13] task_isolation: arch/x86: enable task isolation
 functionality
Thread-Topic: [PATCH 06/13] task_isolation: arch/x86: enable task isolation
 functionality
Thread-Index: AQHWDoKw4bp+D2jMMEiGr32357BkEA==
Date: Thu, 9 Apr 2020 15:22:32 +0000
Message-ID: <a4435d728e7231515a2cd96b01e22076559d8e25.camel@marvell.com>
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
x-ms-office365-filtering-correlation-id: 239b59e9-a910-4867-7fcf-08d7dc99d365
x-ms-traffictypediagnostic: BYAPR18MB3749:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR18MB3749705B6B1EB2894809AF91BCC10@BYAPR18MB3749.namprd18.prod.outlook.com>
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
x-microsoft-antispam-message-info: xhlciNWQF+aPuGaIoo+DlISTLSd21btZTffx76IU+nCvMJuci0FBQyN/btEXCxobgJyxBzuhYYErT4FuaHOzeqVTcFwJIteiU2p3pQU6lCQCzd8hynyzl8dmvi/0soRKCZUjQKQJsHZHK8X6rzfDwJjwHfbQE4+UL0WhRxptYciTDXdNxT+l4AhwymE2fFqlvVXaKewNv9aLk6KIPG09sL+/lD3cQ2m97gaJC69Ge5Nj3+2WBKX3KEDRr/LoxcmlMJzN/pIatqPHal8LvyiwvAAS7QZzRRaoqHgtq89NVKRZuztIBWfH4O+Xov0IwW6DsZ9Fv8bvtlZPCTME6kACk+cArhPeEDtDo9YhtL3dPkezkHxDKRLGlzwL3x6P1/edHmdtvAqY9Fo44SOCJKXTA/2h1pYevViubQtgrTzr6JdXZ2Cy0ziQxWmmtaJRU7Qu
x-ms-exchange-antispam-messagedata: uIDDJwJFr6TzjaO57IM+cI5maOuIZnX12TVLNRYzneJlNg+7l7h309c28l3ZLZGiUdVmusiJvwgiqdTGqvuIvDkoFYu3S26qEUafhisg9zsMOk8ZBAcebqQSqTfNhrLDuFl3OnRlm9D3DXulJeA3Mw==
Content-ID: <D1B68DDB1EE495418E432705A09E5C79@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 239b59e9-a910-4867-7fcf-08d7dc99d365
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2020 15:22:32.9027 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ppy5GV520riWx3TBAFv3zS2YWPb4vzuDFP8IBjCw34nmaaldvXN4mc2mgT5J/VvVVHdHHc1chas7gT+zvCn2Jg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR18MB3749
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-09_05:2020-04-07,
 2020-04-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_082311_707227_868C5291 
X-CRM114-Status: GOOD (  20.65  )
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

In prepare_exit_to_usermode(), run cleanup for tasks exited fromi
isolation and call task_isolation_start() for tasks that entered
TIF_TASK_ISOLATION.

In syscall_trace_enter_phase1(), add the necessary support for
reporting syscalls for task-isolation processes.

Add task_isolation_remote() calls for the kernel exception types
that do not result in signals, namely non-signalling page faults.

Signed-off-by: Chris Metcalf <cmetcalf@mellanox.com>
[abelits@marvell.com: adapted for kernel 5.6]
Signed-off-by: Alex Belits <abelits@marvell.com>
---
 arch/x86/Kconfig                   |  1 +
 arch/x86/entry/common.c            | 15 +++++++++++++++
 arch/x86/include/asm/apic.h        |  3 +++
 arch/x86/include/asm/thread_info.h |  4 +++-
 arch/x86/kernel/apic/ipi.c         |  2 ++
 arch/x86/mm/fault.c                |  4 ++++
 6 files changed, 28 insertions(+), 1 deletion(-)

diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index beea77046f9b..9ea6d3e6e77d 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -144,6 +144,7 @@ config X86
 	select HAVE_ARCH_COMPAT_MMAP_BASES	if MMU && COMPAT
 	select HAVE_ARCH_PREL32_RELOCATIONS
 	select HAVE_ARCH_SECCOMP_FILTER
+	select HAVE_ARCH_TASK_ISOLATION
 	select HAVE_ARCH_THREAD_STRUCT_WHITELIST
 	select HAVE_ARCH_STACKLEAK
 	select HAVE_ARCH_TRACEHOOK
diff --git a/arch/x86/entry/common.c b/arch/x86/entry/common.c
index 9747876980b5..ba8cd75dc7cf 100644
--- a/arch/x86/entry/common.c
+++ b/arch/x86/entry/common.c
@@ -26,6 +26,7 @@
 #include <linux/livepatch.h>
 #include <linux/syscalls.h>
 #include <linux/uaccess.h>
+#include <linux/isolation.h>
 
 #include <asm/desc.h>
 #include <asm/traps.h>
@@ -86,6 +87,15 @@ static long syscall_trace_enter(struct pt_regs *regs)
 			return -1L;
 	}
 
+	/*
+	 * In task isolation mode, we may prevent the syscall from
+	 * running, and if so we also deliver a signal to the process.
+	 */
+	if (work & _TIF_TASK_ISOLATION) {
+		if (task_isolation_syscall(regs->orig_ax) == -1)
+			return -1L;
+		work &= ~_TIF_TASK_ISOLATION;
+	}
 #ifdef CONFIG_SECCOMP
 	/*
 	 * Do seccomp after ptrace, to catch any tracer changes.
@@ -189,6 +199,8 @@ __visible inline void prepare_exit_to_usermode(struct pt_regs *regs)
 	lockdep_assert_irqs_disabled();
 	lockdep_sys_exit();
 
+	task_isolation_check_run_cleanup();
+
 	cached_flags = READ_ONCE(ti->flags);
 
 	if (unlikely(cached_flags & EXIT_TO_USERMODE_LOOP_FLAGS))
@@ -204,6 +216,9 @@ __visible inline void prepare_exit_to_usermode(struct pt_regs *regs)
 	if (unlikely(cached_flags & _TIF_NEED_FPU_LOAD))
 		switch_fpu_return();
 
+	if (cached_flags & _TIF_TASK_ISOLATION)
+		task_isolation_start();
+
 #ifdef CONFIG_COMPAT
 	/*
 	 * Compat syscalls set TS_COMPAT.  Make sure we clear it before
diff --git a/arch/x86/include/asm/apic.h b/arch/x86/include/asm/apic.h
index 19e94af9cc5d..71149abbb0a0 100644
--- a/arch/x86/include/asm/apic.h
+++ b/arch/x86/include/asm/apic.h
@@ -3,6 +3,7 @@
 #define _ASM_X86_APIC_H
 
 #include <linux/cpumask.h>
+#include <linux/isolation.h>
 
 #include <asm/alternative.h>
 #include <asm/cpufeature.h>
@@ -524,6 +525,7 @@ extern void irq_exit(void);
 
 static inline void entering_irq(void)
 {
+	task_isolation_interrupt("irq");
 	irq_enter();
 	kvm_set_cpu_l1tf_flush_l1d();
 }
@@ -536,6 +538,7 @@ static inline void entering_ack_irq(void)
 
 static inline void ipi_entering_ack_irq(void)
 {
+	task_isolation_interrupt("ack irq");
 	irq_enter();
 	ack_APIC_irq();
 	kvm_set_cpu_l1tf_flush_l1d();
diff --git a/arch/x86/include/asm/thread_info.h b/arch/x86/include/asm/thread_info.h
index cf4327986e98..60d107f784ee 100644
--- a/arch/x86/include/asm/thread_info.h
+++ b/arch/x86/include/asm/thread_info.h
@@ -92,6 +92,7 @@ struct thread_info {
 #define TIF_NOCPUID		15	/* CPUID is not accessible in userland */
 #define TIF_NOTSC		16	/* TSC is not accessible in userland */
 #define TIF_IA32		17	/* IA32 compatibility process */
+#define TIF_TASK_ISOLATION	18	/* task isolation enabled for task */
 #define TIF_NOHZ		19	/* in adaptive nohz mode */
 #define TIF_MEMDIE		20	/* is terminating due to OOM killer */
 #define TIF_POLLING_NRFLAG	21	/* idle is polling for TIF_NEED_RESCHED */
@@ -122,6 +123,7 @@ struct thread_info {
 #define _TIF_NOCPUID		(1 << TIF_NOCPUID)
 #define _TIF_NOTSC		(1 << TIF_NOTSC)
 #define _TIF_IA32		(1 << TIF_IA32)
+#define _TIF_TASK_ISOLATION	(1 << TIF_TASK_ISOLATION)
 #define _TIF_NOHZ		(1 << TIF_NOHZ)
 #define _TIF_POLLING_NRFLAG	(1 << TIF_POLLING_NRFLAG)
 #define _TIF_IO_BITMAP		(1 << TIF_IO_BITMAP)
@@ -140,7 +142,7 @@ struct thread_info {
 #define _TIF_WORK_SYSCALL_ENTRY	\
 	(_TIF_SYSCALL_TRACE | _TIF_SYSCALL_EMU | _TIF_SYSCALL_AUDIT |	\
 	 _TIF_SECCOMP | _TIF_SYSCALL_TRACEPOINT |	\
-	 _TIF_NOHZ)
+	 _TIF_NOHZ | _TIF_TASK_ISOLATION)
 
 /* flags to check in __switch_to() */
 #define _TIF_WORK_CTXSW_BASE					\
diff --git a/arch/x86/kernel/apic/ipi.c b/arch/x86/kernel/apic/ipi.c
index 6ca0f91372fd..b4dfaad6a440 100644
--- a/arch/x86/kernel/apic/ipi.c
+++ b/arch/x86/kernel/apic/ipi.c
@@ -2,6 +2,7 @@
 
 #include <linux/cpumask.h>
 #include <linux/smp.h>
+#include <linux/isolation.h>
 
 #include "local.h"
 
@@ -67,6 +68,7 @@ void native_smp_send_reschedule(int cpu)
 		WARN(1, "sched: Unexpected reschedule of offline CPU#%d!\n", cpu);
 		return;
 	}
+	task_isolation_remote(cpu, "reschedule IPI");
 	apic->send_IPI(cpu, RESCHEDULE_VECTOR);
 }
 
diff --git a/arch/x86/mm/fault.c b/arch/x86/mm/fault.c
index fa4ea09593ab..2175a8655a7d 100644
--- a/arch/x86/mm/fault.c
+++ b/arch/x86/mm/fault.c
@@ -18,6 +18,7 @@
 #include <linux/uaccess.h>		/* faulthandler_disabled()	*/
 #include <linux/efi.h>			/* efi_recover_from_page_fault()*/
 #include <linux/mm_types.h>
+#include <linux/isolation.h>		/* task_isolation_interrupt     */
 
 #include <asm/cpufeature.h>		/* boot_cpu_has, ...		*/
 #include <asm/traps.h>			/* dotraplinkage, ...		*/
@@ -1483,6 +1484,9 @@ void do_user_addr_fault(struct pt_regs *regs,
 		perf_sw_event(PERF_COUNT_SW_PAGE_FAULTS_MIN, 1, regs, address);
 	}
 
+	/* No signal was generated, but notify task-isolation tasks. */
+	task_isolation_interrupt("page fault at %#lx", address);
+
 	check_v8086_mode(regs, address, tsk);
 }
 NOKPROBE_SYMBOL(do_user_addr_fault);
-- 
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
