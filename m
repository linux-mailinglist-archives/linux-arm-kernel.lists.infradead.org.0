Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82F1297784
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 12:46:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZsXW9yv2K6NSclaytBmIEacx8TQ3UgRq/WceSNmH8E4=; b=dxmJ7N7meBIy1k
	WS/di7kN+Z4qcR1bqwWAtC8WPqURy03t1JOc38KmOalJ84W0gwqXcccZ4n3Lizw8eVfElolJwBHO3
	pGzeCnRFSNuZLJewCc051Pqgs6JcbywOjjk+sG0UYDrZ4WjCqXtxxa1lNfzBYSeRn3c9b2Uuk9CQ6
	sON/Pu0wp7ZxaYHtk2NVJORVUyFnmM+Ku9ecB498iUaaXjmPrHmH9YwYys40/v2D84pHgdt7kna5m
	B6jy5SK7BRqEtL8W0hLuRJq8BnqATafQ8MjQSMmxCew5G5nyJUW9adQc6TSpnpHn8cZXC1H7PCGv4
	1ATptpHLpXpKmu2rnPJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0O8J-0000Fx-6s; Wed, 21 Aug 2019 10:46:27 +0000
Received: from mail-dm3nam03on0603.outbound.protection.outlook.com
 ([2a01:111:f400:fe49::603]
 helo=NAM03-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0O87-0000FZ-Of
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 10:46:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eLzMeCXSgrwwkMCtGbNoGiH8zWwZgMxaTguzwvVe38PWE9YFfkSO6tN6iQr/uqZSLdACkJlQvNuTpNdmLIgvevP7NSfbGYMJdzG1lyfjOt+1K079N0D2UeMlY/a6mtg2QrjS+zLzBRrGSayofU5C5RkzRgvEdM7x0KBUC31yd9vEco4QR1voF+ItptkpvMI4RJ3tLHhj+L381unXaOMlySF+e/9Dh2JeYeEgSA+z7HLnx0lV1pTFodXvVcLefbhxPjXeqJb4hv5UmktCg+2d6Xfwj/t5whl1t2TY9Az06lyuyy95nGHXNlWFIoK2OH93PxRYBeGEvlogqIRQo3eBdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JBnjKdWEUPgAVTKohrnzW5mmI8y/rqi3KnJeAGB3Zrs=;
 b=iIqrLcpf7heF0YTDsnV3+0v/NfCbR9x6m702t6P214W9q58IwNEn4Unu5pUgpBPvzvvhPL1gLPzHir+TH9G+GOOozXjCDplIUw4KKI7Sg2WOlI5Xfh8uQQNZD8eUSkwQ8y1vXbKweNLJJtSZrM1zwIZ+2qfeDwPLFXLfmWhVzRVOkhRzo81FJVC8gxm4txbBrclleianwyCAx6D7VLYLPsFJ5pFa/ThPqeTkjh2/VmE/iHMt+aGVHer9+zjZh1NfQ7pEuYIJRUqmuS19pL9aMvwgdzu4n79YDStagph5Wj6CIoQXCxs2bYXGwMX65HSLCr0+J/kXCCRidqmgo0NFSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synaptics.com; dmarc=pass action=none
 header.from=synaptics.com; dkim=pass header.d=synaptics.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector2-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JBnjKdWEUPgAVTKohrnzW5mmI8y/rqi3KnJeAGB3Zrs=;
 b=c70RR87QvNXsmUUi//1i1t+Hni4X6ht9gYD3CD0V66e0x5NxL0X9RaGUVVEJyuWu7mTwIGkkoFoRNFMJEGdKLSihM4ixm/euRpNx2JAlCcna5DIXFZBPfhHubNMIVVW+zCzgfcTtSjI8wV3MMlmcaQR2/oNHQLbI8YJ3PMW+XGg=
Received: from BYAPR03MB4773.namprd03.prod.outlook.com (20.179.92.152) by
 BYAPR03MB4821.namprd03.prod.outlook.com (20.179.93.78) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Wed, 21 Aug 2019 10:46:09 +0000
Received: from BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::a517:3578:67bf:6c88]) by BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::a517:3578:67bf:6c88%7]) with mapi id 15.20.2157.022; Wed, 21 Aug 2019
 10:46:09 +0000
From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Jonathan Corbet
 <corbet@lwn.net>, Will Deacon <will@kernel.org>, Thomas Gleixner
 <tglx@linutronix.de>, Masami Hiramatsu <mhiramat@kernel.org>, "Naveen N. Rao"
 <naveen.n.rao@linux.ibm.com>, Peter Zijlstra <peterz@infradead.org>
Subject: [PATCH v3] arm64: implement KPROBES_ON_FTRACE
Thread-Topic: [PATCH v3] arm64: implement KPROBES_ON_FTRACE
Thread-Index: AQHVWA2kl73GxVYq50+boIG26+/rXA==
Date: Wed, 21 Aug 2019 10:46:09 +0000
Message-ID: <20190821183501.33588dd8@xhacker.debian>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [124.74.246.114]
x-clientproxiedby: TYAPR01CA0022.jpnprd01.prod.outlook.com (2603:1096:404::34)
 To BYAPR03MB4773.namprd03.prod.outlook.com
 (2603:10b6:a03:134::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jisheng.Zhang@synaptics.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 113a43d8-d113-4612-f353-08d72624c69e
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR03MB4821; 
x-ms-traffictypediagnostic: BYAPR03MB4821:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BYAPR03MB48214077AA6106577C7F76B6EDAA0@BYAPR03MB4821.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0136C1DDA4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(136003)(346002)(396003)(366004)(39860400002)(189003)(199004)(54534003)(66446008)(64756008)(66556008)(66476007)(66946007)(966005)(53936002)(8936002)(81166006)(81156014)(25786009)(8676002)(6116002)(305945005)(4326008)(7736002)(7416002)(476003)(3846002)(26005)(54906003)(6512007)(110136005)(6306002)(1076003)(9686003)(5660300002)(256004)(66066001)(14444005)(2906002)(50226002)(71200400001)(71190400001)(6486002)(6506007)(186003)(316002)(486006)(14454004)(99286004)(102836004)(386003)(86362001)(6436002)(478600001)(52116002)(39210200001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR03MB4821;
 H:BYAPR03MB4773.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: synaptics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: wMLARI07gkWMLIX+gnZAUhS+6K15ZQsCq5VDgnrGHOh4LrGadDH14dGMOUx1+rIQwEGwHj4gNWjDvbPqMf6C+eQZbRlL00JEfgSo14SOzzdcdfGTpmiDSS842ruRf9uwuS5anJsaeZV3yf8ePD0aYjKBHO5o2nL0w6AbNNsKIu2uXRj9u3oO7kFMDvGvo63+LijhCubnKaouZE3/FewCg0gOPp7QhNrl4OjNzJlzPRA/ET/exA4IfzJU8JNhJOQB0QykSb6MjFga3OyY32sKmfe14Ogbgw/cSZftvBXxGXl3Q9b3l5SAPGnBlm4IWR1o5tRCcipV2Rk6PqqDEk8Ha6FvzGXJk09OlzotIl1FN28uEvS1M9y94bEeZtlZ32YaP0a71/PlQ50bdsqf/RHf3q6ZrLlv7326WwaoX62S8OY=
x-ms-exchange-transport-forked: True
Content-ID: <D877B70412FA9140AAC95F2EFA9450DA@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 113a43d8-d113-4612-f353-08d72624c69e
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2019 10:46:09.1107 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DTQKeoA0hXR8Nsjm76x1ezpNuPmfu99OHIWMBVIurrQnEdfnlk0iIdA88VdsKDSdMhpUGD43guDB7Or3alNAOQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB4821
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_034615_810669_61E1D398 
X-CRM114-Status: GOOD (  18.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Ingo Molnar <mingo@redhat.com>, Steven Rostedt <rostedt@goodmis.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
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
ffffff801009ff54  k  _do_fork+0x4    [DISABLED][FTRACE]

Signed-off-by: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
---
KPROBES_ON_FTRACE avoids much of the overhead with regular kprobes as it
eliminates the need for a trap, as well as the need to emulate or
single-step instructions.

Applied after arm64 FTRACE_WITH_REGS:
http://lists.infradead.org/pipermail/linux-arm-kernel/2019-August/674404.html

Changes since v2:
  - remove patch1, make it a single cleanup patch
  - remove "This patch" in the change log
  - implement arm64's kprobe_lookup_name() and arch_kprobe_on_func_entry instead
    patching the common kprobes code

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
 arch/arm64/kernel/probes/ftrace.c             | 60 +++++++++++++++++++
 arch/arm64/kernel/probes/kprobes.c            | 23 +++++++
 5 files changed, 86 insertions(+), 1 deletion(-)
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
index 000000000000..1f0c09d02bb8
--- /dev/null
+++ b/arch/arm64/kernel/probes/ftrace.c
@@ -0,0 +1,60 @@
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
+int arch_prepare_kprobe_ftrace(struct kprobe *p)
+{
+	p->ainsn.api.insn = NULL;
+	return 0;
+}
diff --git a/arch/arm64/kernel/probes/kprobes.c b/arch/arm64/kernel/probes/kprobes.c
index c4452827419b..f2bf8c70da79 100644
--- a/arch/arm64/kernel/probes/kprobes.c
+++ b/arch/arm64/kernel/probes/kprobes.c
@@ -551,6 +551,29 @@ void __kprobes __used *trampoline_probe_handler(struct pt_regs *regs)
 	return (void *)orig_ret_address;
 }
 
+#ifdef CONFIG_DYNAMIC_FTRACE_WITH_REGS
+kprobe_opcode_t *kprobe_lookup_name(const char *name, unsigned int offset)
+{
+	unsigned long addr = kallsyms_lookup_name(name);
+	unsigned long faddr;
+
+	/*
+	 * with -fpatchable-function-entry=2, the first 4 bytes is the
+	 * LR saver, then the actual call insn. So ftrace location is
+	 * always on the first 4 bytes offset.
+	 */
+	faddr = ftrace_location_range(addr, addr + AARCH64_INSN_SIZE);
+	if (faddr)
+		return (kprobe_opcode_t *)faddr;
+	return (kprobe_opcode_t *)addr;
+}
+
+bool arch_kprobe_on_func_entry(unsigned long offset)
+{
+	return offset <= AARCH64_INSN_SIZE;
+}
+#endif
+
 void __kprobes arch_prepare_kretprobe(struct kretprobe_instance *ri,
 				      struct pt_regs *regs)
 {
-- 
2.23.0.rc1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
