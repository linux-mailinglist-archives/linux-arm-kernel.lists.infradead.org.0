Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 254A1DCDC0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 20:17:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LSwWEDN0KPjmNRKaGcNUZC1/2dAp1Z02Oe25TYMwQmw=; b=mhKliMfVHZoG4F
	NR6Ff12j7OGINpdRJidJ9598oBdsSuzhBA8fdpY+osbH2hPJFEIbH0BF1l4Yghe1rh7XuvpEyCrVh
	zGRpWe3eMbg1Iq5fS1+3JyHHT2POixs5WXGJ9YMUc9DXKzcSUxUa6kZ9wje8qcc7ZA2lazPp1F1es
	I5abo3ClvWJEWLfJ2599fgxeD7C0QQ6Eh/qwbaFuXS8jMPSGkhCt6Ov7jh6O/JnAlF7TM/u2OVKtk
	znb5Tc3OPFr3/bHO5qEBKdds+D6/3XSz/+KxNWdMH0nMkVE0ES+pjOb6V9QW++xyOMWpWVWvh+pZs
	6Q+4uvAp+hP+3uVBOutA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLWoF-0007Uh-Vk; Fri, 18 Oct 2019 18:17:08 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLWo5-0007Rk-Ji
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 18:16:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DBC091597;
 Fri, 18 Oct 2019 11:16:48 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 1AFE03F718;
 Fri, 18 Oct 2019 11:16:47 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org,
	catalin.marinas@arm.com
Subject: [PATCH v2 1/8] arm64: Allow passing fault address to fixup handlers
Date: Fri, 18 Oct 2019 19:16:35 +0100
Message-Id: <d3dbae8c21e146808a6408a463b110701e71c66e.1571421836.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1571421836.git.robin.murphy@arm.com>
References: <cover.1571421836.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_111657_745524_A18CC68E 
X-CRM114-Status: GOOD (  19.30  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Sam Tebbs <sam.tebbs@arm.com>, sam-tebbs@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sam Tebbs <sam.tebbs@arm.com>

Extend fixup_exception() to optionally place the faulting address in a
register when returning to a fixup handler. Since A64 instructions must
be 4-byte-aligned, we can mimic the IA-64 implementation and encode a
flag in the lower bits of the offset field to indicate handlers which
expect an address. This will allow us to use more efficient offset
addressing modes in usercopy routines, rather than updating the base
register on every access just for the sake of inferring where a fault
occurred in order to compute the return value upon failure.

The choice of x15 is somewhat arbitrary, but with the consideration that
as the highest-numbered temporary register with no possible 'special'
role in the ABI, it is most likely not used by hand-written assembly
code, and thus a minimally-invasive option for imported routines.

Signed-off-by: Sam Tebbs <sam.tebbs@arm.com>
[ rm: split into separate patch, use UL(), expand commit message ]
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 arch/arm64/include/asm/assembler.h |  9 +++++++++
 arch/arm64/include/asm/extable.h   | 10 +++++++++-
 arch/arm64/mm/extable.c            | 13 +++++++++----
 arch/arm64/mm/fault.c              |  2 +-
 4 files changed, 28 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/include/asm/assembler.h b/arch/arm64/include/asm/assembler.h
index b8cf7c85ffa2..02bb156cbf0e 100644
--- a/arch/arm64/include/asm/assembler.h
+++ b/arch/arm64/include/asm/assembler.h
@@ -18,6 +18,7 @@
 #include <asm/cpufeature.h>
 #include <asm/cputype.h>
 #include <asm/debug-monitors.h>
+#include <asm/extable.h>
 #include <asm/page.h>
 #include <asm/pgtable-hwdef.h>
 #include <asm/ptrace.h>
@@ -142,6 +143,14 @@ alternative_endif
 	.popsection
 	.endm
 
+/*
+ * Emit an entry into the exception table.
+ * The fixup handler will receive the faulting address in x15
+ */
+	.macro		_asm_extable_faultaddr, from, to
+	_asm_extable	\from, \to + FIXUP_WITH_ADDR
+	.endm
+
 #define USER(l, x...)				\
 9999:	x;					\
 	_asm_extable	9999b, l
diff --git a/arch/arm64/include/asm/extable.h b/arch/arm64/include/asm/extable.h
index 56a4f68b262e..4c4955f2bb44 100644
--- a/arch/arm64/include/asm/extable.h
+++ b/arch/arm64/include/asm/extable.h
@@ -2,6 +2,12 @@
 #ifndef __ASM_EXTABLE_H
 #define __ASM_EXTABLE_H
 
+#include <linux/const.h>
+
+#define FIXUP_WITH_ADDR UL(1)
+
+#ifndef __ASSEMBLY__
+
 /*
  * The exception table consists of pairs of relative offsets: the first
  * is the relative offset to an instruction that is allowed to fault,
@@ -22,5 +28,7 @@ struct exception_table_entry
 
 #define ARCH_HAS_RELATIVE_EXTABLE
 
-extern int fixup_exception(struct pt_regs *regs);
+extern int fixup_exception(struct pt_regs *regs, unsigned long addr);
+
+#endif
 #endif
diff --git a/arch/arm64/mm/extable.c b/arch/arm64/mm/extable.c
index 81e694af5f8c..e6578c2814b5 100644
--- a/arch/arm64/mm/extable.c
+++ b/arch/arm64/mm/extable.c
@@ -6,13 +6,18 @@
 #include <linux/extable.h>
 #include <linux/uaccess.h>
 
-int fixup_exception(struct pt_regs *regs)
+int fixup_exception(struct pt_regs *regs, unsigned long addr)
 {
 	const struct exception_table_entry *fixup;
 
 	fixup = search_exception_tables(instruction_pointer(regs));
-	if (fixup)
-		regs->pc = (unsigned long)&fixup->fixup + fixup->fixup;
-
+	if (fixup) {
+		unsigned long offset = fixup->fixup;
+		if (offset & FIXUP_WITH_ADDR) {
+			regs->regs[15] = addr;
+			offset &= ~FIXUP_WITH_ADDR;
+		}
+		regs->pc = (unsigned long)&fixup->fixup + offset;
+	}
 	return fixup != NULL;
 }
diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
index 855f2a7954e6..5272e9377858 100644
--- a/arch/arm64/mm/fault.c
+++ b/arch/arm64/mm/fault.c
@@ -304,7 +304,7 @@ static void __do_kernel_fault(unsigned long addr, unsigned int esr,
 	 * Are we prepared to handle this kernel fault?
 	 * We are almost certainly not prepared to handle instruction faults.
 	 */
-	if (!is_el1_instruction_abort(esr) && fixup_exception(regs))
+	if (!is_el1_instruction_abort(esr) && fixup_exception(regs, addr))
 		return;
 
 	if (WARN_RATELIMIT(is_spurious_el1_translation_fault(addr, esr, regs),
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
