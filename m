Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1747C1D19AC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 17:42:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ec7sEL0zTN4PbeQWAfkP9BWkZbEli2nD6Edu2zsf4DA=; b=GgCdmM1yOlaQJJ
	t9e71Hpo46mwYsjQSnM8AcjsKO8GkJrxfwLqZuzdnnAuPU5SsquN1m6Za9HFHDSSSIlthU11X5WFu
	G6mgUYCF5aA0PQTmSScrl3VhZX5Mxm0QLZArWGTAVnhMeqWIMUslO4OLuSyDZ+cAszijTAawtmCND
	YgLIotCWp3/27ls4hHSa8GPtUDZQAxRslwkaYeJfgkE6YHXVZDNgBa/7IEMoi311yGUwHn3lWXVnL
	o4aI0n1YMgFCWtF11gB5xfPvGHB3HaDxJYPqPjBEzs5LiJ+u+B+9fK+Kb0odOAeUMF9Y3jHGIFHTx
	A9wTXu4em/6BH3a7+d8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYtWR-0006p0-Mq; Wed, 13 May 2020 15:42:15 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYtWH-0006nJ-IL
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 15:42:07 +0000
X-Originating-IP: 84.210.220.251
Received: from [192.168.1.123] (cm-84.210.220.251.getinternet.no
 [84.210.220.251]) (Authenticated sender: fredrik@strupe.net)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 57A3BC0002;
 Wed, 13 May 2020 15:41:59 +0000 (UTC)
From: Fredrik Strupe <fredrik@strupe.net>
Subject: [RFC PATCH] arm: Don't trap conditional UDF instructions
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Message-ID: <b2042f19-9477-272c-0989-d6cab1572cca@strupe.net>
Date: Wed, 13 May 2020 17:41:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_084205_875793_341FF807 
X-CRM114-Status: GOOD (  19.29  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Oleg Nesterov <oleg@redhat.com>, Russell King <linux@armlinux.org.uk>,
 Richard Fontana <rfontana@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Enrico Weigelt <info@metux.net>, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This is more of a question than a patch, but I hope the attached patch makes
the issue a bit clearer.

The arm port of Linux supports hooking/trapping of undefined instructions. Some
parts of the code use this to trap UDF instructions with certain immediates in
order to use them for other purposes, like 'UDF #16' which is equivalent to a
BKPT instruction in A32.

Moreover, most of the undef hooks on UDF instructions assume that UDF is
conditional and mask out the condition prefix during matching. The attached
patch shows the locations where this happens. However, the Arm architecture
reference manual explicitly states that UDF is *not* conditional, making
any instruction encoding with a condition prefix other than 0xe (always
execute) unallocated.

My question is whether trapping invalid UDF instructions is intentional or
rather a bug resulting from an oversight. While the unallocated instructions
are not used for anything else and trapping them in addition to the legal UDF
probably doesn't hurt, it seems to be slightly inconsistent with the ISA
specification.

Sort of related, when looking for these kind of traps I came over the following
code in arch/arm/probes/uprobes/core.c:

    bpinsn = UPROBE_SWBP_ARM_INSN & 0x0fffffff;
    if (insn >= 0xe0000000)
        bpinsn |= 0xe0000000;  /* Unconditional instruction */
    else
        bpinsn |= insn & 0xf0000000;  /* Copy condition from insn */

    auprobe->bpinsn = bpinsn;

Where UPROBE_SWBP_ARM_INSN is equal to the encoding of 'UDF #25'. I might be
mistaken, but it seems like the condition of the UDF instruction is set from
another instruction with the expectation that it will execute conditionally,
which is not the case in practice.

While the above code is not directly related to the code in the patch and
possibly a more clear-cut bug, it might indicate that the conditional UDF
hooks also stem from a slight misunderstanding.

So just to reiterate the question: is trapping UDF instructions with invalid
condition prefixes considered a bug or not?

Thanks,
Fredrik

---
UDF instructions with a conditional prefix other than 0xe (always
execute) are unallocated as opposed to permanently undefined. They
should therefore not be used for instruction hooking/trapping.

Signed-off-by: Fredrik Strupe <fredrik@strupe.net>
---
 arch/arm/kernel/ptrace.c       |  6 +++---
 arch/arm/probes/kprobes/core.c |  2 +-
 arch/arm/probes/kprobes/core.h |  2 +-
 arch/arm/probes/uprobes/core.c | 16 +++++++---------
 4 files changed, 12 insertions(+), 14 deletions(-)

diff --git a/arch/arm/kernel/ptrace.c b/arch/arm/kernel/ptrace.c
index b606cded90cd..a425691a41ad 100644
--- a/arch/arm/kernel/ptrace.c
+++ b/arch/arm/kernel/ptrace.c
@@ -50,7 +50,7 @@
  * reference manual guarantees that the following instruction space
  * will produce an undefined instruction exception on all CPUs:
  *
- *  ARM:   xxxx 0111 1111 xxxx xxxx xxxx 1111 xxxx
+ *  ARM:   1110 0111 1111 xxxx xxxx xxxx 1111 xxxx
  *  Thumb: 1101 1110 xxxx xxxx
  */
 #define BREAKINST_ARM	0xe7f001f0
@@ -211,8 +211,8 @@ static int break_trap(struct pt_regs *regs, unsigned int instr)
 }
 
 static struct undef_hook arm_break_hook = {
-	.instr_mask	= 0x0fffffff,
-	.instr_val	= 0x07f001f0,
+	.instr_mask	= 0xffffffff,
+	.instr_val	= 0xe7f001f0,
 	.cpsr_mask	= PSR_T_BIT,
 	.cpsr_val	= 0,
 	.fn		= break_trap,
diff --git a/arch/arm/probes/kprobes/core.c b/arch/arm/probes/kprobes/core.c
index 90b5bc723c83..77b8baa6638f 100644
--- a/arch/arm/probes/kprobes/core.c
+++ b/arch/arm/probes/kprobes/core.c
@@ -525,7 +525,7 @@ static struct undef_hook kprobes_thumb32_break_hook = {
 #else  /* !CONFIG_THUMB2_KERNEL */
 
 static struct undef_hook kprobes_arm_break_hook = {
-	.instr_mask	= 0x0fffffff,
+	.instr_mask	= 0xffffffff,
 	.instr_val	= KPROBE_ARM_BREAKPOINT_INSTRUCTION,
 	.cpsr_mask	= MODE_MASK,
 	.cpsr_val	= SVC_MODE,
diff --git a/arch/arm/probes/kprobes/core.h b/arch/arm/probes/kprobes/core.h
index c3db468650ce..ee77ae553690 100644
--- a/arch/arm/probes/kprobes/core.h
+++ b/arch/arm/probes/kprobes/core.h
@@ -18,7 +18,7 @@
  * These undefined instructions must be unique and
  * reserved solely for kprobes' use.
  */
-#define KPROBE_ARM_BREAKPOINT_INSTRUCTION	0x07f001f8
+#define KPROBE_ARM_BREAKPOINT_INSTRUCTION	0xe7f001f8
 #define KPROBE_THUMB16_BREAKPOINT_INSTRUCTION	0xde18
 #define KPROBE_THUMB32_BREAKPOINT_INSTRUCTION	0xf7f0a018
 
diff --git a/arch/arm/probes/uprobes/core.c b/arch/arm/probes/uprobes/core.c
index c4b49b322e8a..f574356284f4 100644
--- a/arch/arm/probes/uprobes/core.c
+++ b/arch/arm/probes/uprobes/core.c
@@ -22,8 +22,7 @@
 
 bool is_swbp_insn(uprobe_opcode_t *insn)
 {
-	return (__mem_to_opcode_arm(*insn) & 0x0fffffff) ==
-		(UPROBE_SWBP_ARM_INSN & 0x0fffffff);
+	return __mem_to_opcode_arm(*insn) == UPROBE_SWBP_ARM_INSN;
 }
 
 int set_swbp(struct arch_uprobe *auprobe, struct mm_struct *mm,
@@ -186,10 +185,9 @@ static int uprobe_trap_handler(struct pt_regs *regs, unsigned int instr)
 	unsigned long flags;
 
 	local_irq_save(flags);
-	instr &= 0x0fffffff;
-	if (instr == (UPROBE_SWBP_ARM_INSN & 0x0fffffff))
+	if (instr == UPROBE_SWBP_ARM_INSN)
 		uprobe_pre_sstep_notifier(regs);
-	else if (instr == (UPROBE_SS_ARM_INSN & 0x0fffffff))
+	else if (instr == UPROBE_SS_ARM_INSN)
 		uprobe_post_sstep_notifier(regs);
 	local_irq_restore(flags);
 
@@ -202,16 +200,16 @@ unsigned long uprobe_get_swbp_addr(struct pt_regs *regs)
 }
 
 static struct undef_hook uprobes_arm_break_hook = {
-	.instr_mask	= 0x0fffffff,
-	.instr_val	= (UPROBE_SWBP_ARM_INSN & 0x0fffffff),
+	.instr_mask	= 0xffffffff,
+	.instr_val	= UPROBE_SWBP_ARM_INSN,
 	.cpsr_mask	= MODE_MASK,
 	.cpsr_val	= USR_MODE,
 	.fn		= uprobe_trap_handler,
 };
 
 static struct undef_hook uprobes_arm_ss_hook = {
-	.instr_mask	= 0x0fffffff,
-	.instr_val	= (UPROBE_SS_ARM_INSN & 0x0fffffff),
+	.instr_mask	= 0xffffffff,
+	.instr_val	= UPROBE_SS_ARM_INSN,
 	.cpsr_mask	= MODE_MASK,
 	.cpsr_val	= USR_MODE,
 	.fn		= uprobe_trap_handler,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
