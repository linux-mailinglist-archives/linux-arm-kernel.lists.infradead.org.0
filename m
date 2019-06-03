Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A6C328B2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 08:42:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5XU3pEXjtNn8JuMB3HDG6w4xrphHZhGMkx2twTWNR1A=; b=d6Z02TFsO5wb82BKwNsIru90Hf
	aU1rf7TQZq1W4N01W7d5Qvons5sxNu4luHEgFiNsgw4CEgn8+0rXis+82fN/SZOMqhe1h7uBP65Bn
	pI8lqV+0FFvUR7ynI1+KqRRXEgh5u0tbtah2TAOIust+W3tmx3WrrR2fc6BogXNr3sKlh7msVtmhV
	Wlv82u9JYfl9OVGcoZjOmf+s2Nb6RSWiDvzrxEQ7rQUVH6TWcfqRI6a0hCjvPUs/9KuLTfdt5X3ph
	K7W+2K6g5335brom5lQqqufnVdxTgWrlUfGJXaqXRWciRMS53cpy0qRH4xSC8ogV3ljMPUSEM/Cvp
	1RgAm8Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXgg1-0002Ga-M5; Mon, 03 Jun 2019 06:42:37 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXgfZ-0001n4-N9
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 06:42:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6C95215AB;
 Sun,  2 Jun 2019 23:42:09 -0700 (PDT)
Received: from p8cg001049571a15.blr.arm.com (p8cg001049571a15.blr.arm.com
 [10.162.40.144])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 7E1A13F5AF;
 Sun,  2 Jun 2019 23:42:06 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 3/4] arm64/mm: Consolidate page fault information capture
Date: Mon,  3 Jun 2019 12:11:24 +0530
Message-Id: <1559544085-7502-4-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1559544085-7502-1-git-send-email-anshuman.khandual@arm.com>
References: <1559544085-7502-1-git-send-email-anshuman.khandual@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_234210_408052_544F362B 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 James Morse <james.morse@arm.com>, Andrey Konovalov <andreyknvl@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This consolidates page fault information capture and move them bit earlier.
While here it also adds an wrapper is_el0_write_abort(). It also saves some
cycles by replacing multiple user_mode() calls into a single one earlier
during the fault.

Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Andrey Konovalov <andreyknvl@google.com>
---
 arch/arm64/mm/fault.c | 25 ++++++++++++++++++-------
 1 file changed, 18 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
index da02678..4bb65f3 100644
--- a/arch/arm64/mm/fault.c
+++ b/arch/arm64/mm/fault.c
@@ -435,6 +435,14 @@ static bool is_el0_instruction_abort(unsigned int esr)
 	return ESR_ELx_EC(esr) == ESR_ELx_EC_IABT_LOW;
 }
 
+/*
+ * This is applicable only for EL0 write aborts.
+ */
+static bool is_el0_write_abort(unsigned int esr)
+{
+	return (esr & ESR_ELx_WNR) && !(esr & ESR_ELx_CM);
+}
+
 static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
 				   struct pt_regs *regs)
 {
@@ -443,6 +451,9 @@ static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
 	vm_fault_t fault, major = 0;
 	unsigned long vm_flags = VM_READ | VM_WRITE;
 	unsigned int mm_flags = FAULT_FLAG_ALLOW_RETRY | FAULT_FLAG_KILLABLE;
+	bool is_user = user_mode(regs);
+	bool is_el0_exec = is_el0_instruction_abort(esr);
+	bool is_el0_write = is_el0_write_abort(esr);
 
 	if (notify_page_fault(regs, esr))
 		return 0;
@@ -454,12 +465,12 @@ static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
 	if (faulthandler_disabled() || !mm)
 		goto no_context;
 
-	if (user_mode(regs))
+	if (is_user)
 		mm_flags |= FAULT_FLAG_USER;
 
-	if (is_el0_instruction_abort(esr)) {
+	if (is_el0_exec) {
 		vm_flags = VM_EXEC;
-	} else if ((esr & ESR_ELx_WNR) && !(esr & ESR_ELx_CM)) {
+	} else if (is_el0_write) {
 		vm_flags = VM_WRITE;
 		mm_flags |= FAULT_FLAG_WRITE;
 	}
@@ -487,7 +498,7 @@ static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
 	 * we can bug out early if this is from code which shouldn't.
 	 */
 	if (!down_read_trylock(&mm->mmap_sem)) {
-		if (!user_mode(regs) && !search_exception_tables(regs->pc))
+		if (!is_user && !search_exception_tables(regs->pc))
 			goto no_context;
 retry:
 		down_read(&mm->mmap_sem);
@@ -498,7 +509,7 @@ static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
 		 */
 		might_sleep();
 #ifdef CONFIG_DEBUG_VM
-		if (!user_mode(regs) && !search_exception_tables(regs->pc)) {
+		if (!is_user && !search_exception_tables(regs->pc)) {
 			up_read(&mm->mmap_sem);
 			goto no_context;
 		}
@@ -516,7 +527,7 @@ static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
 		 * in __lock_page_or_retry in mm/filemap.c.
 		 */
 		if (fatal_signal_pending(current)) {
-			if (!user_mode(regs))
+			if (!is_user)
 				goto no_context;
 			return 0;
 		}
@@ -561,7 +572,7 @@ static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
 	 * If we are in kernel mode at this point, we have no context to
 	 * handle this fault with.
 	 */
-	if (!user_mode(regs))
+	if (!is_user)
 		goto no_context;
 
 	if (fault & VM_FAULT_OOM) {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
