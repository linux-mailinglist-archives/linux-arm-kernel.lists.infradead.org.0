Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0549C17D135
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 04:50:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OUAuN5TQH/qX67/UML/jIluJ5jrrd/I37xQGE84XStw=; b=C+iP1daygabL5l
	jnjH0ZKzq78QfAh1DpWJL7ZDcSASBbBcrMxV7xnaDzKAk7ha2Rte9nBk+ZUj44hl7+TcUaT+ab9rg
	BffJRXIF0HPZ3ge3oFCs37ez2I+uHdjKVEQJLHCekvknwgSsjW7Qn8Dhsf63511ZtClxbfB7XVXVY
	RY0Er2lkaP9bdRTURG7Ak9EFSrWqLZs8jHjZzI5JBStF5z2+7oq3RqEFQ2NJVuCnku1kTP0VCM6Zy
	iufCo4cEF0KxxtmauzNN/NNiutzFVFOU1BEcuXw+b8XM2sx/wjjux7vPSbrdXVp+/dbWsw3OtWsD3
	vvKFapeWYjfqXnbR1fCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAmxN-0008U2-Br; Sun, 08 Mar 2020 03:50:25 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAmx9-0008TT-KQ
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Mar 2020 03:50:13 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0283kiT2016084; Sat, 7 Mar 2020 19:49:19 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=4c8Apfmk2kumwoQaqUicAng6ThoU4i/OF2i1qdPGql8=;
 b=MLnoaCZyw5YGL7gy+FPGL0t0hge3+joOq0MTXkz+S7l+U//qZ7SmTHBB0MWVI5JWX8R9
 pAvi9ny3in8kZBy1qZJPeXm5/cVwDvNMJzJ1UTZeJVcn8oEGj4rutHHEhzmR9MjBsGwi
 fbnIt6GYOnq282DHOgOcE7E+FSo/dFkZVSAVaVI7fmW/wf4K5k7fO7l+mwETZ57kWKKB
 5x99lngIveysfTNfSOUz+GMrC6LeBkJKTzWjuCrgwqCpW9am94mJZ+0gboeUeajVtolj
 Af/hanMkqikqwIc8/T1tPoV7urNbzgdzctJ8SxrPkksaJCZErvVLh0twwaMogP8GW325 bg== 
Received: from sc-exch04.marvell.com ([199.233.58.184])
 by mx0b-0016f401.pphosted.com with ESMTP id 2ymc0sj1qf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Sat, 07 Mar 2020 19:49:18 -0800
Received: from SC-EXCH02.marvell.com (10.93.176.82) by SC-EXCH04.marvell.com
 (10.93.176.84) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Sat, 7 Mar
 2020 19:49:16 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by SC-EXCH02.marvell.com (10.93.176.82) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Sat, 7 Mar 2020 19:49:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XHGQFuCrDmpE0RqgOSpYj2tPVuFiaLyiEknHakwU/HLPSNBj97th05iQFZuvEPu9C+ArLaEV6zkyQU/Upa3w6tOLlojagp16jBegW4oqB2NwOH3DZFjeJBXty3Rk+5FayaffsN5XlkUugyeUgCvwV73s/9mr1o1dHILywDWHer82xwwU6abZs6MCsIc70l+w8qd065t0Bm5Ajafzr+G3SfNDqanguo0c1TPCKbg3iIgScIrWQXcLOxcOkWGX0dyuHS2BOHszDPorQSB/8Pw2IBKVdTsDzfGh1gK/BMqAUVDR8khtEnfCRKTCFZMyFOCxYdGEYXQaEaeuWHBA3IRXjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4c8Apfmk2kumwoQaqUicAng6ThoU4i/OF2i1qdPGql8=;
 b=A24ZPFzb989w8WlWzZsMgSkWJcqFhEu2NhNKy/wMpsEdZ9BE7tX6+j5Edd5005tEGkiV79Yyfo/JeXJ2BuNIQ/pADpCocruKHjkmXnjQh0nHbKgyfGfaftADjzfF6+C35sG0N4sT2HVtVA/02GBJn49FQaQamHafBWdubvgfBDwgGYX/CxmfP/p1NMMzQEUqowso5gsMi9O1lER7nGk7p1hYfeOygFOXEJLULttsyvnIkwAmhP2nKV+KCrrANrcBhzsWAD/oG5zMYmwR/f9t5rQyN1eRRPdzCy42o9px8vn3bj8k6O2r+6RsQgNIODOtP3KXe5KF/Lc30uQ1nFV68Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4c8Apfmk2kumwoQaqUicAng6ThoU4i/OF2i1qdPGql8=;
 b=SpiFOsbbfGEIxCoTceXlf1BdTBkbbuMpP7Ao1j92Zl7oZ61Lin7Jv3ayhU764EPfLwWi6wu8grPwvn3I+/w7XQqYEbWtH1vfM2Y3ZtXj/k3kxS/cLx6zRBuJVIdRaD7ELaJIfQOL0CaEnSLYlqXU4rv9GnIgrVdP2O/J5pi8fhI=
Received: from BYAPR18MB2535.namprd18.prod.outlook.com (2603:10b6:a03:137::17)
 by BYAPR18MB2920.namprd18.prod.outlook.com (2603:10b6:a03:10b::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.14; Sun, 8 Mar
 2020 03:49:15 +0000
Received: from BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::8cd1:1741:8d2d:1c23]) by BYAPR18MB2535.namprd18.prod.outlook.com
 ([fe80::8cd1:1741:8d2d:1c23%7]) with mapi id 15.20.2793.013; Sun, 8 Mar 2020
 03:49:15 +0000
From: Alex Belits <abelits@marvell.com>
To: "frederic@kernel.org" <frederic@kernel.org>, "rostedt@goodmis.org"
 <rostedt@goodmis.org>
Subject: [PATCH v2 05/12] task_isolation: arch/x86: enable task isolation
 functionality
Thread-Topic: [PATCH v2 05/12] task_isolation: arch/x86: enable task isolation
 functionality
Thread-Index: AQHV9PyJVxq1ibIggkG2K9HIzhIQ0A==
Date: Sun, 8 Mar 2020 03:49:15 +0000
Message-ID: <1ddd1aeb9798a85e25debd8cc57a3059eda512d9.camel@marvell.com>
References: <4473787e1b6bc3cc226067e8d122092a678b63de.camel@marvell.com>
 <aed12dd15ea2981bc9554cfa8b5e273c1342c756.camel@marvell.com>
In-Reply-To: <aed12dd15ea2981bc9554cfa8b5e273c1342c756.camel@marvell.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [199.233.58.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 55476e7c-4eef-4f52-c27f-08d7c313ac40
x-ms-traffictypediagnostic: BYAPR18MB2920:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR18MB2920874F51712BB197DA2437BCE10@BYAPR18MB2920.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 03361FCC43
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(39850400004)(376002)(346002)(366004)(199004)(189003)(316002)(66946007)(5660300002)(6512007)(478600001)(8936002)(71200400001)(2906002)(6486002)(66556008)(66476007)(76116006)(6506007)(91956017)(64756008)(66446008)(36756003)(54906003)(4326008)(2616005)(186003)(110136005)(8676002)(26005)(81166006)(81156014)(86362001)(7416002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR18MB2920;
 H:BYAPR18MB2535.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cAw28saCt0D1kbdqlz1HVT7xcZeGIivdovrKrPxPfLwR/hI8Duf8JNCOQBxKYKUR9KdcLdrumBmgWkLlp7eCI1UyIzFb9y43NP/e88MAp3vfu+clT1HWVkYzGCC9CvNIApUX4nzj3vIRL7aNUdqrNJpSbDmepqyw3ek1l2eQv0YZ6SM4m7RXMWmys9CeOC9zOxEZ3072J2Sk5pbRacbhysYX5bdodAY0g0AkqnoKBRMD45Zv6FqqVyWlmZiPlWS40JgTBmsjpgmLH9CJxbwOQgLIyxI6xoQENd5Miqir1U+jKIrhfkSV+SqTe2RAY3WN+CGLX6vB99Hy5Es/3AKe5F1eeBaBVBazXDsovcuG06Dp0eGp+RzMdghTz03zE2xZxnEfqTUmSzYuNK3MiQ+aTKPpSd/jrHAZgG1X+pvm/ePZCEa2C4eBTlFFSlwNUTnZ
x-ms-exchange-antispam-messagedata: fgy8Sy4MfzfdIFXb7bNVbM5TE0/R/V5h9jwkpNpENhCQDVmCDrzTp95rU1Y+OL00Lu+hQNyia910sx5lI88Gs3ei0AcQHo9tJm2J+yPkIseB7qrNK2DS2Xe+Hn+Cs0ew+L6f9f0VEy30GgfQ5NP5kA==
Content-ID: <24669D11BC4CA740BBBEB5BC8FC0A3CD@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 55476e7c-4eef-4f52-c27f-08d7c313ac40
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2020 03:49:15.3647 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E4Wv0uc2TzA32BQVJri1tg9A+qR4a8w5BDh340GJKNyQV3AJWYdOPmc7Qi1huqhVZZtE3VMnUhVq1zfnM/NTIw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR18MB2920
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-03-07_09:2020-03-06,
 2020-03-07 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_195011_802389_0372C91E 
X-CRM114-Status: GOOD (  19.80  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
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

In prepare_exit_to_usermode(), run cleanup for tasks exited from
isolation and call task_isolation_start() for tasks with
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
