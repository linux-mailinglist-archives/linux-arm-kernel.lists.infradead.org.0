Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC6212A709
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Dec 2019 10:44:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N/wrKQl7gOpcZpPtFzZSAEiX2Zf45aJvYbCQ7oMxjDw=; b=FCRe/+toe40BX4
	nKZqa2SN2n6gIwAhK2CyCa+zqDLbX2tiCdybdZBQXL1W5/OQAOUZ2ahjtkg4/Xn6Evk3hhYRjtowX
	KcrSkdwPH6G9Ud+r3TLxUxNEOc2R8ckuxcCWn3rSj/VyMjEhDUEhNGt8wUtQ614jzCgmTFSJU89IH
	0sY0+IdhCVmojYHA15l3ZMCYJ4M0F33CJ1+HgHRD2R/RyE1j3OI4/O/LUoNlYYc2I0DUSDmZwr4tb
	gqUcCbKiiAr1sz97N6GarKdEtXogXk953m3sbUp4KvybcWOMtP4SSvTBesr8DujeiZK17Jjjmon/s
	2durw/cv4D9AZfBfPvPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ik3DV-0003HE-HU; Wed, 25 Dec 2019 09:44:33 +0000
Received: from mail-co1nam11on2055.outbound.protection.outlook.com
 ([40.107.220.55] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ik3DL-0003Gs-03
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Dec 2019 09:44:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kLMqYyVlQcRLt9oEkoLqgxe75M4Ny6KuVvqgdvn6frJfQTD0lZ+TbgV0echaNX8r6wfy42QZoSp3TVTaLqVy3T7w2qvDqk1ob0YgaC9iVfropQrPMWd+V18a1gV544doplK962AsEseeCBBxY/mdpMFkpBgV5/MDLX9pHpgdAtgvChvetEQMV3FTWNYuNUH6ymXPcmEZ3qjEGpmG4AuFeT0HOv0MdQUbjko4gOlaBY1dg/gPgbmY3STetIPRyMkokK/M9B30SYrCVcjiTxIXYnZbmNO8frRSor+W4M/DQHw2hr+aDBq0ign/0kfKL1CJ3vMm92DR1o94DNodew4V6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DNFnhfAwfMMzPOlk3mgBi06/5bPmYts25Ajl13pw9z4=;
 b=bGr8OXOwnz13HwcuuuKp8AV3f2/oa52ztZTurnxyWd5OR+qyLIqHh6xxrwXCBOUjukEam9bL+CcBojd7Om74rGkjwqxa1cMiKKqPrOHcvKvyQ2kxcYlFOsB0LtMJ1/RpRw1J0s0qrxsSwwSuIHGuvmMvdmLKKtnFknv3Z6zzjDk23Zgz0zGtXma2VuD37ssFfJ1pB9f9V64vRpq+k60vjzUb4rkAmY4u89KBVyEPJybgnviGrQrHSiWwP38xg+VrIMKViLsSYYce73eF8DU34wf9F8wUhZBFq2yCvAjyrA1fcn6YPUX6Y0JzFGREfmW1xfCoIP+bLHtmWit3HAydeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synaptics.com; dmarc=pass action=none
 header.from=synaptics.com; dkim=pass header.d=synaptics.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector2-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DNFnhfAwfMMzPOlk3mgBi06/5bPmYts25Ajl13pw9z4=;
 b=ejx9dtWAmEXsvBuryENM3mNIpi95nDCrB62JylZtN56J02jxf/BqmVLcJqGuw+o2h+GF/EF+orrF97lrkVlDcpfUUM11N67tRkHbYrsB5ur9O79IkZH0biiZl/bxaosPN0kpQ7yCRdaJzl2hCT1PO6Ug9bepy1QnODD5YUrncdc=
Received: from BYAPR03MB4773.namprd03.prod.outlook.com (20.179.93.213) by
 BYAPR03MB4213.namprd03.prod.outlook.com (20.177.185.209) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2581.11; Wed, 25 Dec 2019 09:44:21 +0000
Received: from BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::708d:91cc:79a7:9b9a]) by BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::708d:91cc:79a7:9b9a%6]) with mapi id 15.20.2559.017; Wed, 25 Dec 2019
 09:44:21 +0000
Received: from xhacker.debian (124.74.246.114) by
 TYAPR01CA0168.jpnprd01.prod.outlook.com (2603:1096:404:7e::36) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2581.11 via Frontend Transport; Wed, 25 Dec 2019 09:44:18 +0000
From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Steven Rostedt <rostedt@goodmis.org>, Ingo Molnar <mingo@redhat.com>,
 "Naveen N. Rao" <naveen.n.rao@linux.ibm.com>, Anil S Keshavamurthy
 <anil.s.keshavamurthy@intel.com>, "David S. Miller" <davem@davemloft.net>,
 Masami Hiramatsu <mhiramat@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Jonathan Corbet <corbet@lwn.net>
Subject: [PATCH v7 3/3] arm64: implement KPROBES_ON_FTRACE
Thread-Topic: [PATCH v7 3/3] arm64: implement KPROBES_ON_FTRACE
Thread-Index: AQHVuwfioeAAP6kOPkCZLC/0/SnpxA==
Date: Wed, 25 Dec 2019 09:44:21 +0000
Message-ID: <20191225173001.6c0e3fb2@xhacker.debian>
References: <20191225172625.69811b3e@xhacker.debian>
In-Reply-To: <20191225172625.69811b3e@xhacker.debian>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [124.74.246.114]
x-clientproxiedby: TYAPR01CA0168.jpnprd01.prod.outlook.com
 (2603:1096:404:7e::36) To BYAPR03MB4773.namprd03.prod.outlook.com
 (2603:10b6:a03:139::21)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jisheng.Zhang@synaptics.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4106d40f-e7a1-4485-4aa1-08d7891f0492
x-ms-traffictypediagnostic: BYAPR03MB4213:
x-microsoft-antispam-prvs: <BYAPR03MB421338EE77E4EA9C9CE481A6ED280@BYAPR03MB4213.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 02622CEF0A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39850400004)(366004)(346002)(136003)(396003)(376002)(189003)(199004)(9686003)(1076003)(5660300002)(86362001)(55016002)(6666004)(66476007)(956004)(66946007)(66556008)(64756008)(81156014)(8936002)(81166006)(8676002)(66446008)(16526019)(71200400001)(2906002)(26005)(186003)(52116002)(7696005)(7416002)(6506007)(4326008)(316002)(54906003)(110136005)(478600001)(921003)(1121003)(39210200001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR03MB4213;
 H:BYAPR03MB4773.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: synaptics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qe5daeSEQp6IpLLal2rSFPFUy80TKDmRWbiDpnA6rvm3SwgYs9LI9732m9WsmOU9oodCMXErKEQXyRWb0iFceRp0zLPC9cJk5gkGArW7yAyvfp7GmGoVcxO0Vo274h4h3gLHqc0Uawat+z1DKys2J+wOz4q+FCmhDHKg8VkOtrRjvq850CdeyX1ElenhUP7PEY34cS+Yy4u+o+w3gimFhIEElKuYgCYkdcGXJv2HTsEn8H80i6skXm1Bvxf1C+OJmA3u7kCsISBvp7yglyCw03B2CItcdcG9vd+hZZ1t2/SlZSVEffiq5EzgGtVbO50vW0WiyYqFuio+NXxLx+UlaZUwFgWu3/+q73mwv0+tb/yiElcXThNR9NzvWO/WXH4l/ZbL5G3Am369PtzYLXfz5mxT2XxCwdMvrJGdzXROUGTVSHsqv8wBIoNRo+QeWTWhgp5pr54vx4cCSixLo58Zf/+XYlxMwUXNFyQqyxqs1Xkprm05nBCT6iYe+BQ/Ly+7A0eUL7246cw0gdJ0ZPwolLClxxXB52ndqIQET4m161c=
x-ms-exchange-transport-forked: True
Content-ID: <8741C552ACA29C499EFE21A17323E8BC@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4106d40f-e7a1-4485-4aa1-08d7891f0492
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Dec 2019 09:44:21.2570 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Qwq/ACW2b9vIAfuNX8IrzgOIYqXej80NUZiO0hnnmZB5GTqfcmUbvSEaf0eRdRj2uSbI1YIlyGIOGwFx2g6AeQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB4213
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191225_014423_044299_790C7059 
X-CRM114-Status: GOOD (  15.43  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.55 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

KPROBES_ON_FTRACE avoids much of the overhead with regular kprobes as it
eliminates the need for a trap, as well as the need to emulate or
single-step instructions.

Tested on berlin arm64 platform.

~ # mount -t debugfs debugfs /sys/kernel/debug/
~ # cd /sys/kernel/debug/
/sys/kernel/debug # echo 'p _do_fork' > tracing/kprobe_events

before the patch:

/sys/kernel/debug # cat kprobes/list
ffffff801009fe28  k  _do_fork+0x0    [DISABLED]

after the patch:

/sys/kernel/debug # cat kprobes/list
ffffff801009ff54  k  _do_fork+0x0    [DISABLED][FTRACE]

Signed-off-by: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
---
 .../debug/kprobes-on-ftrace/arch-support.txt  |  2 +-
 arch/arm64/Kconfig                            |  1 +
 arch/arm64/include/asm/ftrace.h               |  1 +
 arch/arm64/kernel/probes/Makefile             |  1 +
 arch/arm64/kernel/probes/ftrace.c             | 78 +++++++++++++++++++
 5 files changed, 82 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/kernel/probes/ftrace.c

diff --git a/Documentation/features/debug/kprobes-on-ftrace/arch-support.txt b/Documentation/features/debug/kprobes-on-ftrace/arch-support.txt
index 4fae0464ddff..f9dd9dd91e0c 100644
--- a/Documentation/features/debug/kprobes-on-ftrace/arch-support.txt
+++ b/Documentation/features/debug/kprobes-on-ftrace/arch-support.txt
@@ -9,7 +9,7 @@
     |       alpha: | TODO |
     |         arc: | TODO |
     |         arm: | TODO |
-    |       arm64: | TODO |
+    |       arm64: |  ok  |
     |         c6x: | TODO |
     |        csky: | TODO |
     |       h8300: | TODO |
diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index b1b4476ddb83..92b9882889ac 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -166,6 +166,7 @@ config ARM64
 	select HAVE_STACKPROTECTOR
 	select HAVE_SYSCALL_TRACEPOINTS
 	select HAVE_KPROBES
+	select HAVE_KPROBES_ON_FTRACE
 	select HAVE_KRETPROBES
 	select HAVE_GENERIC_VDSO
 	select IOMMU_DMA if IOMMU_SUPPORT
diff --git a/arch/arm64/include/asm/ftrace.h b/arch/arm64/include/asm/ftrace.h
index 91fa4baa1a93..875aeb839654 100644
--- a/arch/arm64/include/asm/ftrace.h
+++ b/arch/arm64/include/asm/ftrace.h
@@ -20,6 +20,7 @@
 
 /* The BL at the callsite's adjusted rec->ip */
 #define MCOUNT_INSN_SIZE	AARCH64_INSN_SIZE
+#define FTRACE_IP_EXTENSION	MCOUNT_INSN_SIZE
 
 #define FTRACE_PLT_IDX		0
 #define FTRACE_REGS_PLT_IDX	1
diff --git a/arch/arm64/kernel/probes/Makefile b/arch/arm64/kernel/probes/Makefile
index 8e4be92e25b1..4020cfc66564 100644
--- a/arch/arm64/kernel/probes/Makefile
+++ b/arch/arm64/kernel/probes/Makefile
@@ -4,3 +4,4 @@ obj-$(CONFIG_KPROBES)		+= kprobes.o decode-insn.o	\
 				   simulate-insn.o
 obj-$(CONFIG_UPROBES)		+= uprobes.o decode-insn.o	\
 				   simulate-insn.o
+obj-$(CONFIG_KPROBES_ON_FTRACE)	+= ftrace.o
diff --git a/arch/arm64/kernel/probes/ftrace.c b/arch/arm64/kernel/probes/ftrace.c
new file mode 100644
index 000000000000..0643aa2dacdb
--- /dev/null
+++ b/arch/arm64/kernel/probes/ftrace.c
@@ -0,0 +1,78 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Dynamic Ftrace based Kprobes Optimization
+ *
+ * Copyright (C) Hitachi Ltd., 2012
+ * Copyright (C) 2019 Jisheng Zhang <jszhang@kernel.org>
+ *		      Synaptics Incorporated
+ */
+
+#include <linux/kprobes.h>
+
+/*
+ * In arm64 FTRACE_WITH_REGS implementation, we patch two nop instructions:
+ * the lr saver and bl ftrace-entry. Both these instructions are claimed
+ * by ftrace and we should allow probing on either instruction.
+ */
+int arch_check_ftrace_location(struct kprobe *p)
+{
+	if (ftrace_location((unsigned long)p->addr))
+		p->flags |= KPROBE_FLAG_FTRACE;
+	return 0;
+}
+
+/* Ftrace callback handler for kprobes -- called under preepmt disabed */
+void kprobe_ftrace_handler(unsigned long ip, unsigned long parent_ip,
+			   struct ftrace_ops *ops, struct pt_regs *regs)
+{
+	bool lr_saver = false;
+	struct kprobe *p;
+	struct kprobe_ctlblk *kcb;
+
+	/* Preempt is disabled by ftrace */
+	p = get_kprobe((kprobe_opcode_t *)ip);
+	if (!p) {
+		p = get_kprobe((kprobe_opcode_t *)(ip - MCOUNT_INSN_SIZE));
+		if (unlikely(!p) || kprobe_disabled(p))
+			return;
+		lr_saver = true;
+	}
+
+	kcb = get_kprobe_ctlblk();
+	if (kprobe_running()) {
+		kprobes_inc_nmissed_count(p);
+	} else {
+		unsigned long orig_ip = instruction_pointer(regs);
+
+		if (lr_saver)
+			ip -= MCOUNT_INSN_SIZE;
+		instruction_pointer_set(regs, ip);
+		__this_cpu_write(current_kprobe, p);
+		kcb->kprobe_status = KPROBE_HIT_ACTIVE;
+		if (!p->pre_handler || !p->pre_handler(p, regs)) {
+			/*
+			 * Emulate singlestep (and also recover regs->pc)
+			 * as if there is a nop
+			 */
+			instruction_pointer_set(regs,
+				(unsigned long)p->addr + MCOUNT_INSN_SIZE);
+			if (unlikely(p->post_handler)) {
+				kcb->kprobe_status = KPROBE_HIT_SSDONE;
+				p->post_handler(p, regs, 0);
+			}
+			instruction_pointer_set(regs, orig_ip);
+		}
+		/*
+		 * If pre_handler returns !0, it changes regs->pc. We have to
+		 * skip emulating post_handler.
+		 */
+		__this_cpu_write(current_kprobe, NULL);
+	}
+}
+NOKPROBE_SYMBOL(kprobe_ftrace_handler);
+
+int arch_prepare_kprobe_ftrace(struct kprobe *p)
+{
+	p->ainsn.api.insn = NULL;
+	return 0;
+}
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
