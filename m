Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C958492257
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 13:28:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/PW/37FFR/nwzJMrUVw+HaZirJxL/GkurOBm4LBVetM=; b=OGzW0s9LIzpTqH
	FeFtReZEZuGi81/97OGLWtLaW02GmAvv9bX76Ua2Fv6KpxS9+P1WY5xCobI4qI7vzPWZoGlnna+bD
	3lKNMdfcrhQw6RTuKdXGQhKjVwX1IE1pkk/GL7XcUcuqh4ZEO9kYF/jyNPi3w4q8+giVHEbzFigra
	Oc7uxqYLdTbQdIBkJd+n3AW62tC1xJpmU1s2iGnjGeSVpR9329mrG56wnYqqFwSYOvHDUPjM4BIDf
	lMb0njlr6ZfIVVuyyDAD729+shNOcEwd810RqHQQcJ9zeL0jYk7eMK3rYQDJYJjEMjnZFfwaS4lbb
	gtCVrLdMQVh4cJmlXkiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzfq1-0008Hx-Kn; Mon, 19 Aug 2019 11:28:37 +0000
Received: from mail-eopbgr730057.outbound.protection.outlook.com
 ([40.107.73.57] helo=NAM05-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzfpt-0008HO-De
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 11:28:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OqT8DvzqfLVkdUkYV0VZy3fdZ/z7gjtv7VsE0FdKi5TwzAjQI8vUe/9Y/P5J7PB+kHizBCQZnsNXd5+js73MycwHWhZLaFc6aGq/r0b+oJdQowaAQEIIXAKf2aHddWN+RiXxlXOfc8WOR6ptLWfGe/NRXWCu2pwn8DPT4fxogXNZF8ezeCgUqoRr6AoLh+OuM1e6xqACer5dF+/ViuxFVga9i2VQ8D367wQZY3T8HIrz2CdtD/MPpvGtbwyzSyCFmZ3QVwzpBV/8fTJBH9jpM0A/3fMOj3mAPpUpzoxIh2fkAbnokHVzkHtgLzY2gmhv1g+XMl4I8WBu+0zd5F93yA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IrgafeGsEjGX0fnvkALOHojmNJ2WtdrtZOfa8ffYHS4=;
 b=SXdvw8YlKjb6JR6wYAHY67ugMQkkRxJwQ2asdSncDKDhA6zqULx7dLMcTOmMEbO99wmtW0vkqvF7qabXGXF60ApiiM0z/6BiOynuwax0EkJIaAnOH2BI8uzy+seuKG7XuT954rFel8Bn8igXq8L4lIclF5e4w/g5xtBML7Ee/Xn18Bd0Lqate+ouA0bJ0D6VcF7IFMQe6yZJEHG8z+F0QsCFWX6wyGoYL5rU4eG3gQDGZJmGXM59yaPNiDyuijhnhl/yYyWPC2mIm6s0YIxpDDVB+Ygdb+kRHSZXhdU4jUIi2DbVQ+fmSIHsyidCjZbLNqyPRUUvajUyQTUG4xTfDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synaptics.com; dmarc=pass action=none
 header.from=synaptics.com; dkim=pass header.d=synaptics.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector2-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IrgafeGsEjGX0fnvkALOHojmNJ2WtdrtZOfa8ffYHS4=;
 b=JBBjJmmDl0drOik0hdOFMaGy2jOX3qed0//p+qeToIcf/TVAkzMLmxf8eEoHlrm7942q9RqA141V8T47s7IAfwKlmdN6o6032XbDgHmiPxEDMyT2XBFDjumlQztu9NOlzBWay14IvMMHUaE2cteAP+mWg+9Tj58pJSnjvNEG1Cs=
Received: from BYAPR03MB4773.namprd03.prod.outlook.com (20.179.92.152) by
 BYAPR03MB3528.namprd03.prod.outlook.com (52.135.213.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Mon, 19 Aug 2019 11:28:27 +0000
Received: from BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::a517:3578:67bf:6c88]) by BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::a517:3578:67bf:6c88%7]) with mapi id 15.20.2157.022; Mon, 19 Aug 2019
 11:28:27 +0000
From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Steven Rostedt <rostedt@goodmis.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 2/3] arm64: implement ftrace with regs
Thread-Topic: [PATCH 2/3] arm64: implement ftrace with regs
Thread-Index: AQHVVoE4mavbCE9UtUy5RF2vspPVbg==
Date: Mon, 19 Aug 2019 11:28:27 +0000
Message-ID: <20190819191722.0b029bd2@xhacker.debian>
References: <20190819191530.0f47b9b1@xhacker.debian>
In-Reply-To: <20190819191530.0f47b9b1@xhacker.debian>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [124.74.246.114]
x-clientproxiedby: TYCPR01CA0093.jpnprd01.prod.outlook.com
 (2603:1096:405:3::33) To BYAPR03MB4773.namprd03.prod.outlook.com
 (2603:10b6:a03:134::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jisheng.Zhang@synaptics.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 10f78293-b720-4c99-20be-08d724985a79
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR03MB3528; 
x-ms-traffictypediagnostic: BYAPR03MB3528:
x-microsoft-antispam-prvs: <BYAPR03MB3528B43C6D6D66F33E940A9DEDA80@BYAPR03MB3528.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0134AD334F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(39860400002)(346002)(136003)(376002)(366004)(189003)(199004)(5660300002)(8936002)(50226002)(86362001)(30864003)(81156014)(81166006)(71200400001)(71190400001)(25786009)(486006)(476003)(8676002)(11346002)(14444005)(446003)(66446008)(64756008)(66556008)(66476007)(66946007)(1076003)(6512007)(66066001)(9686003)(26005)(6486002)(305945005)(99286004)(186003)(102836004)(2906002)(52116002)(54906003)(53936002)(3846002)(6116002)(316002)(256004)(4326008)(76176011)(14454004)(6506007)(386003)(6436002)(7736002)(478600001)(110136005)(39210200001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR03MB3528;
 H:BYAPR03MB4773.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: synaptics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: duZNji8c5krqqgserN9NhUWkGzPY179n+18tbHQB5sCm3iJKz2le954aGbt94qRwyxNWe8QEvIaZQ+y3iBPjszYjMQ+Osf8F8VctVYjt6U7O18vGIm2X4e1l8WrFB9BSTZsV1QoKER3vnLAWOgx5rB5o/M5A+bnE+euAbYnKsugZQ9828cB6FDgCavqRznPjORXQIGm84zSF+UhJr6gZSaWENffhCTax3iwkq7MBLDxXHflv3qJv8dAdJZzkh7O9T3J1FK8TxX4DqPNZKbhR9V6FWXehJ6v18D1WAFJ0H2m9TbLwCrZaDt8Uv9OEtYyFBZ/mr9LIGHbO7W6b4Fl+2dOEo+MtllIMNtvAVEn7sIFRam2wL7XY7Ems+dpesvaFUIxvO5LlQ3i+QBjRXhJYEgpZmUcmvVouMa5MwXQOEZ8=
x-ms-exchange-transport-forked: True
Content-ID: <A81E6768006B394396B3C924732D4762@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10f78293-b720-4c99-20be-08d724985a79
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2019 11:28:27.0819 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +zr/+WmrDxiH88C+XC5OZkpelUkc0xTq8AfzBkBmcjS/4p6L1ablnox2hkkMs9Os+uSb6rpcOH7anCR4lGpWCw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB3528
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_042829_515704_5E02D41B 
X-CRM114-Status: GOOD (  22.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.73.57 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Torsten Duwe <duwe@suse.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Torsten Duwe <duwe@suse.de>

Implement ftrace with regs, based on the new gcc flag
-fpatchable-function-entry (=2)

Now that gcc8 added 2 NOPs at the beginning of each function, replace
the first NOP thus generated with a quick LR saver (move it to scratch
reg x9), so the 2nd replacement insn, the call to ftrace, does not
clobber the value. Ftrace will then generate the standard stack
frames.

Note that patchable-function-entry in GCC disables IPA-RA, which means
ABI register calling conventions are obeyed and scratch registers such
as x9 are available.

Introduce and handle an ftrace_regs_trampoline for module PLTs, right
after ftrace_trampoline in an ftrace_trampolines[2] array, and double
the size of the corresponding special section.

Signed-off-by: Torsten Duwe <duwe@suse.de>
---
 arch/arm64/include/asm/ftrace.h  |  12 ++-
 arch/arm64/include/asm/module.h  |   3 +-
 arch/arm64/kernel/entry-ftrace.S | 125 ++++++++++++++++++++++++++--
 arch/arm64/kernel/ftrace.c       | 138 +++++++++++++++++++++++--------
 arch/arm64/kernel/module-plts.c  |   3 +-
 arch/arm64/kernel/module.c       |   2 +-
 6 files changed, 239 insertions(+), 44 deletions(-)

diff --git a/arch/arm64/include/asm/ftrace.h b/arch/arm64/include/asm/ftrace.h
index 5ab5200b2bdc..fde94a905b25 100644
--- a/arch/arm64/include/asm/ftrace.h
+++ b/arch/arm64/include/asm/ftrace.h
@@ -11,9 +11,12 @@
 #include <asm/insn.h>
 
 #define HAVE_FUNCTION_GRAPH_FP_TEST
-#define MCOUNT_ADDR		((unsigned long)_mcount)
 #define MCOUNT_INSN_SIZE	AARCH64_INSN_SIZE
 
+#ifdef CONFIG_DYNAMIC_FTRACE_WITH_REGS
+#define ARCH_SUPPORTS_FTRACE_OPS 1
+#endif
+
 #ifndef __ASSEMBLY__
 #include <linux/compat.h>
 
@@ -30,6 +33,13 @@ extern void return_to_handler(void);
 
 static inline unsigned long ftrace_call_adjust(unsigned long addr)
 {
+	/*
+	 * For -fpatchable-function-entry=2, there's first the
+	 * LR saver, and only then the actual call insn.
+	 * Advance addr accordingly.
+	 */
+	if (IS_ENABLED(CONFIG_DYNAMIC_FTRACE_WITH_REGS))
+		return (addr + AARCH64_INSN_SIZE);
 	/*
 	 * addr is the address of the mcount call instruction.
 	 * recordmcount does the necessary offset calculation.
diff --git a/arch/arm64/include/asm/module.h b/arch/arm64/include/asm/module.h
index f80e13cbf8ec..5463a2cf0165 100644
--- a/arch/arm64/include/asm/module.h
+++ b/arch/arm64/include/asm/module.h
@@ -21,7 +21,8 @@ struct mod_arch_specific {
 	struct mod_plt_sec	init;
 
 	/* for CONFIG_DYNAMIC_FTRACE */
-	struct plt_entry 	*ftrace_trampoline;
+	struct plt_entry	*ftrace_trampolines;
+#define MOD_ARCH_NR_FTRACE_TRAMPOLINES	2
 };
 #endif
 
diff --git a/arch/arm64/kernel/entry-ftrace.S b/arch/arm64/kernel/entry-ftrace.S
index 33d003d80121..4cfc0a886e4e 100644
--- a/arch/arm64/kernel/entry-ftrace.S
+++ b/arch/arm64/kernel/entry-ftrace.S
@@ -7,6 +7,7 @@
  */
 
 #include <linux/linkage.h>
+#include <asm/asm-offsets.h>
 #include <asm/assembler.h>
 #include <asm/ftrace.h>
 #include <asm/insn.h>
@@ -121,6 +122,7 @@ EXPORT_SYMBOL(_mcount)
 NOKPROBE(_mcount)
 
 #else /* CONFIG_DYNAMIC_FTRACE */
+#ifndef CONFIG_DYNAMIC_FTRACE_WITH_REGS
 /*
  * _mcount() is used to build the kernel with -pg option, but all the branch
  * instructions to _mcount() are replaced to NOP initially at kernel start up,
@@ -160,11 +162,6 @@ GLOBAL(ftrace_graph_call)		// ftrace_graph_caller();
 
 	mcount_exit
 ENDPROC(ftrace_caller)
-#endif /* CONFIG_DYNAMIC_FTRACE */
-
-ENTRY(ftrace_stub)
-	ret
-ENDPROC(ftrace_stub)
 
 #ifdef CONFIG_FUNCTION_GRAPH_TRACER
 /*
@@ -184,7 +181,125 @@ ENTRY(ftrace_graph_caller)
 
 	mcount_exit
 ENDPROC(ftrace_graph_caller)
+#endif /* CONFIG_FUNCTION_GRAPH_TRACER */
+
+#else /* CONFIG_DYNAMIC_FTRACE_WITH_REGS */
+
+	.macro  ftrace_regs_entry, allregs=0
+	/* make room for pt_regs, plus a callee frame */
+	sub	sp, sp, #(S_FRAME_SIZE + 16)
+
+	/* save function arguments */
+	stp	x0, x1, [sp, #S_X0]
+	stp	x2, x3, [sp, #S_X2]
+	stp	x4, x5, [sp, #S_X4]
+	stp	x6, x7, [sp, #S_X6]
+	stp	x8, x9, [sp, #S_X8]
+
+	.if \allregs == 1
+	stp	x10, x11, [sp, #S_X10]
+	stp	x12, x13, [sp, #S_X12]
+	stp	x14, x15, [sp, #S_X14]
+	stp	x16, x17, [sp, #S_X16]
+	stp	x18, x19, [sp, #S_X18]
+	stp	x20, x21, [sp, #S_X20]
+	stp	x22, x23, [sp, #S_X22]
+	stp	x24, x25, [sp, #S_X24]
+	stp	x26, x27, [sp, #S_X26]
+	.endif
+
+	/* Save fp and x28, which is used in this function. */
+	stp	x28, x29, [sp, #S_X28]
+
+	/* The stack pointer as it was on ftrace_caller entry... */
+	add	x28, sp, #(S_FRAME_SIZE + 16)
+	/* ...and the link Register at callee entry */
+	stp	x9, x28, [sp, #S_LR]	/* to pt_regs.r[30] and .sp */
 
+	/* The program counter just after the ftrace call site */
+	str	lr, [sp, #S_PC]
+
+	/* Now fill in callee's preliminary stackframe. */
+	stp	x29, x9, [sp, #S_FRAME_SIZE]
+	/* Let FP point to it. */
+	add	x29, sp, #S_FRAME_SIZE
+
+	/* Our stackframe, stored inside pt_regs. */
+	stp	x29, x30, [sp, #S_STACKFRAME]
+	add	x29, sp, #S_STACKFRAME
+	.endm
+
+ENTRY(ftrace_regs_caller)
+	ftrace_regs_entry	1
+	b	ftrace_common
+ENDPROC(ftrace_regs_caller)
+
+ENTRY(ftrace_caller)
+	ftrace_regs_entry	0
+	b	ftrace_common
+ENDPROC(ftrace_caller)
+
+ENTRY(ftrace_common)
+
+	mov	x3, sp				/* pt_regs are @sp */
+	ldr_l	x2, function_trace_op, x0
+	mov	x1, x9				/* parent IP */
+	sub	x0, lr, #AARCH64_INSN_SIZE
+
+GLOBAL(ftrace_call)
+	bl	ftrace_stub
+
+#ifdef CONFIG_FUNCTION_GRAPH_TRACER
+GLOBAL(ftrace_graph_call)		// ftrace_graph_caller();
+	nop				// If enabled, this will be replaced
+					// "b ftrace_graph_caller"
+#endif
+
+/*
+ * GCC's patchable-function-entry implicitly disables IPA-RA,
+ * so all non-argument registers are either scratch / dead
+ * or callee-saved (within the ftrace framework). Function
+ * arguments of the call we are intercepting right now however
+ * need to be preserved in any case.
+ */
+ftrace_common_return:
+	/* restore function args */
+	ldp	x0, x1, [sp]
+	ldp	x2, x3, [sp, #S_X2]
+	ldp	x4, x5, [sp, #S_X4]
+	ldp	x6, x7, [sp, #S_X6]
+	ldr	x8, [sp, #S_X8]
+
+	/* restore fp and x28 */
+	ldp	x28, x29, [sp, #S_X28]
+
+	ldr	lr, [sp, #S_LR]
+	ldr	x9, [sp, #S_PC]
+	/* clean up both frames, ours and callee preliminary */
+	add	sp, sp, #S_FRAME_SIZE + 16
+
+	ret	x9
+ENDPROC(ftrace_common)
+
+#ifdef CONFIG_FUNCTION_GRAPH_TRACER
+ENTRY(ftrace_graph_caller)
+	ldr	x0, [sp, #S_PC]		   /* pc */
+	sub	x0, x0, #AARCH64_INSN_SIZE
+	add	x1, sp, #S_LR		   /* &lr */
+	ldr	x2, [sp, #S_FRAME_SIZE]	   /* fp */
+	bl	prepare_ftrace_return
+	b	ftrace_common_return
+ENDPROC(ftrace_graph_caller)
+#endif /* CONFIG_FUNCTION_GRAPH_TRACER */
+#endif /* CONFIG_DYNAMIC_FTRACE_WITH_REGS */
+#endif /* CONFIG_DYNAMIC_FTRACE */
+
+ENTRY(ftrace_stub)
+	ret
+ENDPROC(ftrace_stub)
+
+
+#ifdef CONFIG_FUNCTION_GRAPH_TRACER
 /*
  * void return_to_handler(void)
  *
diff --git a/arch/arm64/kernel/ftrace.c b/arch/arm64/kernel/ftrace.c
index 171773257974..faf339e90319 100644
--- a/arch/arm64/kernel/ftrace.c
+++ b/arch/arm64/kernel/ftrace.c
@@ -62,6 +62,46 @@ int ftrace_update_ftrace_func(ftrace_func_t func)
 	return ftrace_modify_code(pc, 0, new, false);
 }
 
+#ifdef CONFIG_ARM64_MODULE_PLTS
+static int install_ftrace_trampoline(struct module *mod, unsigned long *addr)
+{
+	struct plt_entry trampoline, *mod_trampoline;
+
+	/*
+	 * Iterate over
+	 * mod->arch.ftrace_trampolines[MOD_ARCH_NR_FTRACE_TRAMPOLINES]
+	 * The assignment to various ftrace functions happens here.
+	 */
+	if (*addr == FTRACE_ADDR)
+		mod_trampoline = &mod->arch.ftrace_trampolines[0];
+	else if (*addr == FTRACE_REGS_ADDR)
+		mod_trampoline = &mod->arch.ftrace_trampolines[1];
+	else
+		return -EINVAL;
+
+	trampoline = get_plt_entry(*addr, mod_trampoline);
+
+	/*
+	 * Note that PLTs are place relative, and plt_entries_equal()
+	 * checks whether they point to the same target. Here, we need
+	 * to check if the actual opcodes are in fact identical,
+	 * regardless of the offset in memory so use memcmp() instead.
+	 */
+	if (memcmp(mod_trampoline, &trampoline, sizeof(trampoline))) {
+		/* point the trampoline at our ftrace entry point */
+		module_disable_ro(mod);
+		*mod_trampoline = trampoline;
+		module_enable_ro(mod, true);
+
+		/* update trampoline before patching in the branch */
+		smp_wmb();
+	}
+	*addr = (unsigned long)(void *)mod_trampoline;
+
+	return 0;
+}
+#endif
+
 /*
  * Turn on the call to ftrace_caller() in instrumented function
  */
@@ -73,8 +113,8 @@ int ftrace_make_call(struct dyn_ftrace *rec, unsigned long addr)
 
 	if (offset < -SZ_128M || offset >= SZ_128M) {
 #ifdef CONFIG_ARM64_MODULE_PLTS
-		struct plt_entry trampoline, *dst;
 		struct module *mod;
+		int ret;
 
 		/*
 		 * On kernels that support module PLTs, the offset between the
@@ -93,40 +133,13 @@ int ftrace_make_call(struct dyn_ftrace *rec, unsigned long addr)
 		if (WARN_ON(!mod))
 			return -EINVAL;
 
-		/*
-		 * There is only one ftrace trampoline per module. For now,
-		 * this is not a problem since on arm64, all dynamic ftrace
-		 * invocations are routed via ftrace_caller(). This will need
-		 * to be revisited if support for multiple ftrace entry points
-		 * is added in the future, but for now, the pr_err() below
-		 * deals with a theoretical issue only.
-		 *
-		 * Note that PLTs are place relative, and plt_entries_equal()
-		 * checks whether they point to the same target. Here, we need
-		 * to check if the actual opcodes are in fact identical,
-		 * regardless of the offset in memory so use memcmp() instead.
-		 */
-		dst = mod->arch.ftrace_trampoline;
-		trampoline = get_plt_entry(addr, dst);
-		if (memcmp(dst, &trampoline, sizeof(trampoline))) {
-			if (plt_entry_is_initialized(dst)) {
-				pr_err("ftrace: far branches to multiple entry points unsupported inside a single module\n");
-				return -EINVAL;
-			}
-
-			/* point the trampoline to our ftrace entry point */
-			module_disable_ro(mod);
-			*dst = trampoline;
-			module_enable_ro(mod, true);
-
-			/*
-			 * Ensure updated trampoline is visible to instruction
-			 * fetch before we patch in the branch.
-			 */
-			__flush_icache_range((unsigned long)&dst[0],
-					     (unsigned long)&dst[1]);
-		}
-		addr = (unsigned long)dst;
+		/* Check against our well-known list of ftrace entry points */
+		if (addr == FTRACE_ADDR || addr == FTRACE_REGS_ADDR) {
+			ret = install_ftrace_trampoline(mod, &addr);
+			if (ret < 0)
+				return ret;
+		} else
+			return -EINVAL;
 #else /* CONFIG_ARM64_MODULE_PLTS */
 		return -EINVAL;
 #endif /* CONFIG_ARM64_MODULE_PLTS */
@@ -138,6 +151,45 @@ int ftrace_make_call(struct dyn_ftrace *rec, unsigned long addr)
 	return ftrace_modify_code(pc, old, new, true);
 }
 
+#ifdef CONFIG_DYNAMIC_FTRACE_WITH_REGS
+int ftrace_modify_call(struct dyn_ftrace *rec, unsigned long old_addr,
+		       unsigned long addr)
+{
+	unsigned long pc = rec->ip;
+	u32 old, new;
+
+	old = aarch64_insn_gen_branch_imm(pc, old_addr,
+					  AARCH64_INSN_BRANCH_LINK);
+	new = aarch64_insn_gen_branch_imm(pc, addr, AARCH64_INSN_BRANCH_LINK);
+
+	return ftrace_modify_code(pc, old, new, true);
+}
+
+/*
+ * Ftrace with regs generates the tracer calls as close as possible to
+ * the function entry; no stack frame has been set up at that point.
+ * In order to make another call e.g to ftrace_caller, the LR must be
+ * saved from being overwritten.
+ * Between two functions, and with IPA-RA turned off, the scratch registers
+ * are available, so move the LR to x9 before calling into ftrace.
+ *
+ * This function is called once during kernel startup for each call site.
+ * The address passed is that of the actual branch, so patch in the LR saver
+ * just before that.
+ */
+static int ftrace_setup_lr_saver(unsigned long addr)
+{
+	u32 old, new;
+
+	old = aarch64_insn_gen_nop();
+	/* "mov x9, lr" is officially aliased from "orr x9, xzr, lr". */
+	new = aarch64_insn_gen_logical_shifted_reg(AARCH64_INSN_REG_9,
+		AARCH64_INSN_REG_ZR, AARCH64_INSN_REG_LR, 0,
+		AARCH64_INSN_VARIANT_64BIT, AARCH64_INSN_LOGIC_ORR);
+	return ftrace_modify_code(addr - AARCH64_INSN_SIZE, old, new, true);
+}
+#endif
+
 /*
  * Turn off the call to ftrace_caller() in instrumented function
  */
@@ -196,6 +248,22 @@ int ftrace_make_nop(struct module *mod, struct dyn_ftrace *rec,
 	return ftrace_modify_code(pc, old, new, validate);
 }
 
+int ftrace_call_init(struct module *mod, struct dyn_ftrace *rec)
+{
+	unsigned long pc = rec->ip;
+
+	/*
+	 * -fpatchable-function-entry= does not generate a profiling call
+	 *  initially; the NOPs are already there. So instead,
+	 *  put the LR saver there ahead of time, in order to avoid
+	 *  any race condition over patching 2 instructions.
+	 */
+	if (IS_ENABLED(CONFIG_DYNAMIC_FTRACE_WITH_REGS))
+		return ftrace_setup_lr_saver(pc);
+	else
+		return ftrace_make_nop(mod, rec, (unsigned long)_mcount);
+}
+
 void arch_ftrace_update_code(int command)
 {
 	command |= FTRACE_MAY_SLEEP;
diff --git a/arch/arm64/kernel/module-plts.c b/arch/arm64/kernel/module-plts.c
index 044c0ae4d6c8..acafb8a2244d 100644
--- a/arch/arm64/kernel/module-plts.c
+++ b/arch/arm64/kernel/module-plts.c
@@ -330,7 +330,8 @@ int module_frob_arch_sections(Elf_Ehdr *ehdr, Elf_Shdr *sechdrs,
 		tramp->sh_type = SHT_NOBITS;
 		tramp->sh_flags = SHF_EXECINSTR | SHF_ALLOC;
 		tramp->sh_addralign = __alignof__(struct plt_entry);
-		tramp->sh_size = sizeof(struct plt_entry);
+		tramp->sh_size = MOD_ARCH_NR_FTRACE_TRAMPOLINES
+				 * sizeof(struct plt_entry);
 	}
 
 	return 0;
diff --git a/arch/arm64/kernel/module.c b/arch/arm64/kernel/module.c
index 03ff15bffbb6..4e1d99805c5a 100644
--- a/arch/arm64/kernel/module.c
+++ b/arch/arm64/kernel/module.c
@@ -483,7 +483,7 @@ int module_finalize(const Elf_Ehdr *hdr,
 #ifdef CONFIG_ARM64_MODULE_PLTS
 		if (IS_ENABLED(CONFIG_DYNAMIC_FTRACE) &&
 		    !strcmp(".text.ftrace_trampoline", secstrs + s->sh_name))
-			me->arch.ftrace_trampoline = (void *)s->sh_addr;
+			me->arch.ftrace_trampolines = (void *)s->sh_addr;
 #endif
 	}
 
-- 
2.23.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
