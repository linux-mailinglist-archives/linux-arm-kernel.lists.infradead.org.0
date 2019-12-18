Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A407123F7B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 07:21:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HPnlimwAE+pqHkcKlna+kIXsKxunTaZIykkL4wLfbQA=; b=Bt+qwG1m3/CIjx
	FRizQAF2yFzzE+V70NGHKCNoXs2sa3A7IWBdaXScHAqAxPzNtbLxnjnhgNzPsT87uTWK7EZ42TiXI
	CVuMhhayDQOotgtyBgD5WmLAYovvxmGonuwKTedD2b7PTTPX5HpN3d1DzCVP39aOTP6paczR/YzxF
	XXFIJOj4WjqEaPpCO010aKjxkt2UFewQqBq+GWnpBS6hsv7qWbRYab3Nd5Rwi/+LSRY7F5akljWb/
	9Pzk3gmyHSF6hPzNOJghpsqeDEZk2S3wiSAAk2eI3tMr90EGwqY9abaIpVsY1RLCeT2kWa48DnQQi
	prhGCY4y6VIA/py2S1ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihSiV-0000XV-3L; Wed, 18 Dec 2019 06:21:51 +0000
Received: from mail-dm6nam12on2074.outbound.protection.outlook.com
 ([40.107.243.74] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihSiL-0000WT-TW
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 06:21:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zcvgc+3Je49z+91Yb67ytrBPSQw3ia4hPHqWAQHJWpv93bR6O8LEN0o/70hru73ikGHpuFpy8+327Q0n2QEgiI7QnwPfCdZjDeFJsNEFyHaAWAByz/j2fn7+CkXCARibmbbul21ijbrLBpgIkVIae5MCScJIOkGroeIPy2PsvyQKpUts4ZkXFxudnyjGTJ7mB1LhoB2UKQwcRT1KYUlWhPeKjeY9LliT4IyusZ+9x0C1azXvj7jMnDYrIG9pu9D2GpAXdHJfIpwPDfHMUJBorNXoMynSsxMRTeBN4Ra0aOU+HMcxGcSwv3mdohomC63sihR2Q5EWmwyHr/BAL+EE0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JVFMYCjfmirfAAcyRjXfNs/7E+qJAMSbXMmCNKCrdIE=;
 b=dNGqpZSUa5aGGqVkElF6FqYETbarxTgtqgCv4BeMvNzLaVii6C7OTi6X6KUZIPvX6UwkyGPotsBU9i39zhVkKfDY9jJ2X1+EI+vN9Eakwpl5wDhsIj/1kdSacZcDrIIXXO3+I4RkCxrQJEQ/6dd1JJjT8wQ1QDLWehh6flGpYNZzwHodZPqk7pJsmpfBIvbfjCudTYoiu7f9cXyrYL5hDWHncUsP5eTIF2L8WoFkFIYIKO6/tGuycPjgJJAHfGhj4PhcTdILQ1ivdYZdQ5ANwFgh5meBkuFSHo+lg7868474mkip+GVkkhOftFQ2cHuM4QFuUsfmW3i8zImkLMWsZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synaptics.com; dmarc=pass action=none
 header.from=synaptics.com; dkim=pass header.d=synaptics.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector2-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JVFMYCjfmirfAAcyRjXfNs/7E+qJAMSbXMmCNKCrdIE=;
 b=PfZYClxec+8lrMTWucTTMSrgDpIpG0hZ9xUx4byB6un/yy7Io3CcqJuQXf58hgHn4mo8N7CV/xzevpsgjdcwIFl9bQOa0OYHZFsh1uQyycMPW4no9MEA1TgoYoEQQN2olgBDBKaSyL71GeJrIw3WViiZuKhM02JlSfNwqS16dEU=
Received: from BYAPR03MB4773.namprd03.prod.outlook.com (20.179.93.213) by
 BYAPR03MB3909.namprd03.prod.outlook.com (20.177.124.32) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.17; Wed, 18 Dec 2019 06:21:36 +0000
Received: from BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::708d:91cc:79a7:9b9a]) by BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::708d:91cc:79a7:9b9a%6]) with mapi id 15.20.2538.019; Wed, 18 Dec 2019
 06:21:36 +0000
From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
To: "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>, "mhiramat@kernel.org" <mhiramat@kernel.org>,
 "naveen.n.rao@linux.vnet.ibm.com" <naveen.n.rao@linux.vnet.ibm.com>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "corbet@lwn.net"
 <corbet@lwn.net>
Subject: [PATCH v6] arm64: implement KPROBES_ON_FTRACE
Thread-Topic: [PATCH v6] arm64: implement KPROBES_ON_FTRACE
Thread-Index: AQHVtWtmR90OKS0v9Um1jpVbBvlnOA==
Date: Wed, 18 Dec 2019 06:21:35 +0000
Message-ID: <20191218140622.57bbaca5@xhacker.debian>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [124.74.246.114]
x-clientproxiedby: TYAPR01CA0175.jpnprd01.prod.outlook.com
 (2603:1096:404:ba::19) To BYAPR03MB4773.namprd03.prod.outlook.com
 (2603:10b6:a03:139::21)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jisheng.Zhang@synaptics.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e548014c-2484-46e1-c8a5-08d783828897
x-ms-traffictypediagnostic: BYAPR03MB3909:
x-microsoft-antispam-prvs: <BYAPR03MB390940BAFAA59720EB2E62F0ED530@BYAPR03MB3909.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0255DF69B9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(396003)(346002)(136003)(39860400002)(366004)(189003)(199004)(54534003)(52116002)(5660300002)(26005)(7416002)(86362001)(186003)(66946007)(64756008)(66476007)(316002)(81156014)(66556008)(4326008)(6506007)(81166006)(66446008)(71200400001)(6486002)(1076003)(2906002)(6512007)(8936002)(110136005)(54906003)(478600001)(9686003)(8676002)(39210200001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR03MB3909;
 H:BYAPR03MB4773.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: synaptics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0WLHUq2BTkx5vHX5LtOg5gt59+kRKt2CGibUe5bYtwXIeXK5aQ5H8CRRoqLXN8AuuboRZwUN8LDy/iapZOrzEjZDTq1NQvEfff09/vVnEDNSzy/GXFj/v711pEC10hg/AW+UuudNuuRMGo0GLTLMryPwhe5VinmQwqnYvoYebT1j4LqEI2jBbpjQ9I8Zu+Mr7uPRr2mUN3CtSh4Xn0h/ymqAelI+cWX00UUcFFAFVzpU80jrLsc9tj0UFe1JE6uAl0WfJFCGaxb6eG7FVJXpPJSGoaA/i9IC+jVtzEQAteVHan2iXFuoBJFLlT8TEEZ5k6rApL9suZJIrCq45Vejt6M8LuhJUu/U3AvPN7ll2MRWlOBMihOw6rqBZMXGBMUVlMmIkxecBlGdU9XFaK+XAGWQOTYhh+HHrntm/DVhwalm854o4CibZOqTZVwqeW2zvXHysmYQ3cJ3p9tqiBXpaqDP88nJhW9wglASO3GQrwX+hJts/+gAZYLHNwNJXxhQ1OjA3P5LP6um0kVvRdU3Eg==
x-ms-exchange-transport-forked: True
Content-ID: <5D0886A77B09D14889EAFB84B771BDAB@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e548014c-2484-46e1-c8a5-08d783828897
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2019 06:21:35.9049 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7iIHKjh20d3VH1qJYYae01V1bkW19TQ097TACcYqrXh4zfhrKz/dPHFwHf78+yJWPV3dpGzZ8dACHxmenx6msQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB3909
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_222141_962145_A2DA9ADC 
X-CRM114-Status: GOOD (  18.51  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.243.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rostedt@goodmis.org" <rostedt@goodmis.org>,
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
Acked-by: Masami Hiramatsu <mhiramat@kernel.org>
Reviewed-by: Naveen N. Rao <naveen.n.rao@linux.vnet.ibm.com>
---
KPROBES_ON_FTRACE avoids much of the overhead with regular kprobes as it
eliminates the need for a trap, as well as the need to emulate or
single-step instructions.

Changes since v5:
  - rebase v5.5-rc1
  - collect Acked-by and Reviewed-by tags

Changes since v4:
  - correct reg->pc: probed on foo, then pre_handler see foo+0x4, while
    post_handler see foo+0x8

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
 arch/arm64/kernel/probes/ftrace.c             | 83 +++++++++++++++++++
 4 files changed, 86 insertions(+), 1 deletion(-)
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
index 000000000000..9f80905f02fa
--- /dev/null
+++ b/arch/arm64/kernel/probes/ftrace.c
@@ -0,0 +1,83 @@
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
+
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
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
