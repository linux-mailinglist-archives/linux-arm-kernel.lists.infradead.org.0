Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA424989EF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 05:46:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pLWF0R0O5UHYouV8AlamTkz97NMuC+5+vNv9oSjh7w4=; b=QAL2mHWlOje28o
	TZYTyodNO+qTxUQXq+9IwUwL5gcZLC/dPiAkpNKpcQiWXBu50gpStI+8ZVqLnE9CkaahHYHP+ulRG
	bBih6lP4+IQNFsnBu4RaRrqis3vLaYMzI2pqHAwNJtrc3NUrgg0I3GurY9n6PstjsRbU51HMz5VIU
	IZBdIKEEjHisOSQ2EdhS8F9bLblOYZPKILEVcSdn5VPnFa3wCg6dh8XdXJlZTrCfyt1Bq7oyIlwpF
	3YTetCzGafxLKxkNnhjwFRAUUQS8Cu/E+w4InQe6h5XKareLuEiio+YQRyVpqRACdxlWdt6X//QWa
	9TUbjQxoM4rYkKaqdAgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0e3A-0001Nw-VR; Thu, 22 Aug 2019 03:46:12 +0000
Received: from mail-eopbgr810075.outbound.protection.outlook.com
 ([40.107.81.75] helo=NAM01-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0e32-0001NV-Ev
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 03:46:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CABafZ3ghswPVKIaYOzHAi9RMm8b3zVEJF30NtI9ztG7x37SlIHM5JW6/9j3T429l8z7dnPmJ/TC0RarBPyf7a8Z/tQrXYgGwDgoAZXOe+LFtaVsjD1T3dZ6TyjagISMWtXbbp9uRhB53ou1rVxunoUbjHRCW59CUg9qJTFLCUmG5zAtU51kyWbPC2AOKEb/56McHrfoW5asYGInpARDLYo1f441IC+0gkDelN682JwhHOlYBlMEGOdzT5VuLZchkSsM9LMRxKjK+mR3nEai9zq5X7mN5qqmXgZI4Fw9UzaEu9Ip35qeGmamagDbczwJacfWAOaTdpbClCUf3dXddg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=usdSeSuhasYXmm3QNXdqKWSUcRnKw2893WrYZKkVG9g=;
 b=mx0XaQBaiCBMuCwsCQvYyhx4t7GKcFLFoYP2GS6/NG55d3PBRqUidt5phpsDckAvttWb2BGrN4mHovmi/4FFWRrwzgnBp0Hq0u2AlTA9q3WJIIiQPTmN0bE1EtQgmTJyfPoTaoqK2SH5REnBsUxeuXDO1YG5XLCkfNAnfGzWs0l8NGE6slFuYVpPnG4C1I4hek913AHP7OfdcN0aBLGLgxEBaH/M0uvbbMGKSx9+1RUaUCZDtLKVc/9SLDvthY4FRN9GBj3VpIWmggPWJKQDy/DE3dwQrQtnMRll9cnoCfEmo8ABgxsMZL2DKrHlR21p7dLfyn52a/kPWlyNu08rLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synaptics.com; dmarc=pass action=none
 header.from=synaptics.com; dkim=pass header.d=synaptics.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector2-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=usdSeSuhasYXmm3QNXdqKWSUcRnKw2893WrYZKkVG9g=;
 b=geDPjQwaMn6GTEgyvhEGmOltp9TIA7fvAG71r60yaIDtL5VYryY8ILtSDPKPKLVVhiEp4Y89ZUsICZep8GfFHzOvHOHI89q09V/4HTbQIYeAhzXyCxOjkn/AUxHTJFJBPjQ0uTP39/teOUns4D/qc+pHc6dUijweXjgP/Stpv54=
Received: from DM6PR03MB4778.namprd03.prod.outlook.com (20.179.105.26) by
 DM6PR03MB5036.namprd03.prod.outlook.com (10.141.162.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Thu, 22 Aug 2019 03:45:39 +0000
Received: from DM6PR03MB4778.namprd03.prod.outlook.com
 ([fe80::16e:7410:d85f:ed8a]) by DM6PR03MB4778.namprd03.prod.outlook.com
 ([fe80::16e:7410:d85f:ed8a%7]) with mapi id 15.20.2157.022; Thu, 22 Aug 2019
 03:45:39 +0000
From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Jonathan Corbet
 <corbet@lwn.net>, Masami Hiramatsu <mhiramat@kernel.org>, Will Deacon
 <will@kernel.org>, "Naveen N. Rao" <naveen.n.rao@linux.ibm.com>
Subject: [PATCH v4] arm64: implement KPROBES_ON_FTRACE
Thread-Topic: [PATCH v4] arm64: implement KPROBES_ON_FTRACE
Thread-Index: AQHVWJwQA6oCa6sgREe9v4FYsERl0w==
Date: Thu, 22 Aug 2019 03:45:38 +0000
Message-ID: <20190822113421.52920377@xhacker.debian>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [124.74.246.114]
x-clientproxiedby: TYAPR01CA0039.jpnprd01.prod.outlook.com
 (2603:1096:404:28::27) To DM6PR03MB4778.namprd03.prod.outlook.com
 (2603:10b6:5:184::26)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jisheng.Zhang@synaptics.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a576ac20-4f76-4e9a-468a-08d726b3329e
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DM6PR03MB5036; 
x-ms-traffictypediagnostic: DM6PR03MB5036:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <DM6PR03MB50365BC1BA18ADA24BB2B5B9EDA50@DM6PR03MB5036.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 01371B902F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(376002)(39850400004)(396003)(346002)(189003)(199004)(54534003)(70486001)(6306002)(6512007)(9686003)(8936002)(66066001)(117636001)(86362001)(478600001)(6436002)(6486002)(7416002)(8266002)(2906002)(6116002)(3846002)(81166006)(50226002)(8676002)(81156014)(316002)(4326008)(1076003)(14444005)(256004)(71200400001)(99286004)(52116002)(476003)(486006)(110136005)(54906003)(7736002)(305945005)(25786009)(66446008)(64756008)(66556008)(97876018)(26005)(386003)(6506007)(186003)(102836004)(66476007)(66946007)(966005)(53936002)(14454004)(71190400001)(5660300002)(39210200001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR03MB5036;
 H:DM6PR03MB4778.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: synaptics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: zbkARI8DZa8D+GPXXm/YHcuw6AjlKe0qx5WQGe4OWTHQ+nK31GpqkRGx0vKIFstiLFiMr/oElLZzu0jHrqJPIVXk3nZn9IlY2t4lRpB99hCJz7A9pZ+zB+/rpjf3Au543czNAPMMgfaRGBYcOE6CDkjltZeoSlsUsFs4gERINgRwx0ieEy03sKATobQ9D3Tg7sw0ecw3eMYGnPnKbBhDxaJZVyNDj7CiWB3nNodsOGgrQqRAZDFJTmEWMZ8Ym/RV1HJ+ZzVveKakTUfkLVmFZ39QonoADEAO+kFpP3eyr0VMuzvsCnHF8FgXvpAF6Aiqyow/w9r46NjyWhHUMKwGG20hd1rFVtvpOptNYjtlZFkYBZ2vn4YYaKRAXzONUgnHZ0vLEKnQl7I6grqqtkNMDri4OUofrEQhMCT0WTgTR9Y=
x-ms-exchange-transport-forked: True
Content-ID: <3C6EDF32F9D3EE49B3B4F56DC9A91833@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a576ac20-4f76-4e9a-468a-08d726b3329e
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2019 03:45:38.9847 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hrT4hLLiwrhDf6hugZ02bNMrZJkR84ApAfp25i2dk/ZtTbCrHWgQWP9FJN62Af5sX1vrZqMcyRvZPk1CqiZ/tA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR03MB5036
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_204604_602520_BE82FC19 
X-CRM114-Status: GOOD (  20.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.81.75 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>, Ingo Molnar <mingo@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
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
ffffff801009ff54  k  _do_fork+0x4    [DISABLED][FTRACE]

Signed-off-by: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
---
KPROBES_ON_FTRACE avoids much of the overhead with regular kprobes as it
eliminates the need for a trap, as well as the need to emulate or
single-step instructions.

Applied after arm64 FTRACE_WITH_REGS:
http://lists.infradead.org/pipermail/linux-arm-kernel/2019-August/674404.html

Changes since v3:
  - move kprobe_lookup_name() and arch_kprobe_on_func_entry to ftrace.c since
    we only want to choose the ftrace entry for KPROBES_ON_FTRACE.
  - only choose ftrace entry if (addr && !offset)

Changes since v2:
  - remove patch1, make it a single cleanup patch
  - remove "This patch" in the change log
  - implement arm64's kprobe_lookup_name() and arch_kprobe_on_func_entry instead
    of patching the common kprobes code

Changes since v1:
  - make the kprobes/x86: use instruction_pointer and instruction_pointer_set
    as patch1
  - add Masami's ACK to patch1
  - add some description about KPROBES_ON_FTRACE and why we need it on
    arm64
  - correct the log before the patch
  - remove the consolidation patch, make it as TODO
  - only adjust kprobe's addr when KPROBE_FLAG_FTRACE is set
  - if KPROBES_ON_FTRACE, ftrace_call_adjust() the kprobe's addr before
    calling ftrace_location()
  - update the kprobes-on-ftrace/arch-support.txt in doc


 .../debug/kprobes-on-ftrace/arch-support.txt  |  2 +-
 arch/arm64/Kconfig                            |  1 +
 arch/arm64/kernel/probes/Makefile             |  1 +
 arch/arm64/kernel/probes/ftrace.c             | 84 +++++++++++++++++++
 4 files changed, 87 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/kernel/probes/ftrace.c

diff --git a/Documentation/features/debug/kprobes-on-ftrace/arch-support.txt b/Documentation/features/debug/kprobes-on-ftrace/arch-support.txt
index 68f266944d5f..e8358a38981c 100644
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
index 663392d1eae2..928700f15e23 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -167,6 +167,7 @@ config ARM64
 	select HAVE_STACKPROTECTOR
 	select HAVE_SYSCALL_TRACEPOINTS
 	select HAVE_KPROBES
+	select HAVE_KPROBES_ON_FTRACE
 	select HAVE_KRETPROBES
 	select HAVE_GENERIC_VDSO
 	select IOMMU_DMA if IOMMU_SUPPORT
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
index 000000000000..5989c57660f3
--- /dev/null
+++ b/arch/arm64/kernel/probes/ftrace.c
@@ -0,0 +1,84 @@
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
+/* Ftrace callback handler for kprobes -- called under preepmt disabed */
+void kprobe_ftrace_handler(unsigned long ip, unsigned long parent_ip,
+			   struct ftrace_ops *ops, struct pt_regs *regs)
+{
+	struct kprobe *p;
+	struct kprobe_ctlblk *kcb;
+
+	/* Preempt is disabled by ftrace */
+	p = get_kprobe((kprobe_opcode_t *)ip);
+	if (unlikely(!p) || kprobe_disabled(p))
+		return;
+
+	kcb = get_kprobe_ctlblk();
+	if (kprobe_running()) {
+		kprobes_inc_nmissed_count(p);
+	} else {
+		unsigned long orig_ip = instruction_pointer(regs);
+		/* Kprobe handler expects regs->pc = pc + 4 as breakpoint hit */
+		instruction_pointer_set(regs, ip + sizeof(kprobe_opcode_t));
+
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
+kprobe_opcode_t *kprobe_lookup_name(const char *name, unsigned int offset)
+{
+	unsigned long addr = kallsyms_lookup_name(name);
+
+	if (addr && !offset) {
+		unsigned long faddr;
+		/*
+		 * with -fpatchable-function-entry=2, the first 4 bytes is the
+		 * LR saver, then the actual call insn. So ftrace location is
+		 * always on the first 4 bytes offset.
+		 */
+		faddr = ftrace_location_range(addr,
+					      addr + AARCH64_INSN_SIZE);
+		if (faddr)
+			return (kprobe_opcode_t *)faddr;
+	}
+	return (kprobe_opcode_t *)addr;
+}
+
+bool arch_kprobe_on_func_entry(unsigned long offset)
+{
+	return offset <= AARCH64_INSN_SIZE;
+}
+
+int arch_prepare_kprobe_ftrace(struct kprobe *p)
+{
+	p->ainsn.api.insn = NULL;
+	return 0;
+}
-- 
2.23.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
