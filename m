Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C292328AE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 08:42:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=V6E15g9E0i0KjtomDkxnjX7QvyAYRRoqJHIUQvnI7Pw=; b=ZfVDu8HcuqOI6tgzJ79ZKQlmbI
	rCJkQzlBtV7yZcPHTY2uN0gN6UuSoPFw8TcBZ8NCt+QtTUf6eyLa1aaRnoB5CMAAfSfn+iHQ+9Wtz
	01aNIH3Ni41mfukJht0kWbv+M6g2FsGklG/GmKZrOzbJJ6fu9edgDKEqsM1+9T7TXyycoYqe2AqBi
	UKWVrPeZEjR0307lHpSp9i6zXqR5CWWg4emYzH/bcOAo+IBcDlJCFKsvuqTrxmjEGeQtAhxdybpEh
	Ttm1lqghPPepLLd35U0Ui5ljpd4CQBLI35gEJFX+L8zlOwFhLJ0VVCbMO2VoB+uaNNSWX9DNg22E1
	jkrg37Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXgfr-0001yT-95; Mon, 03 Jun 2019 06:42:27 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXgfW-0001im-B2
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 06:42:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0EED715A2;
 Sun,  2 Jun 2019 23:42:06 -0700 (PDT)
Received: from p8cg001049571a15.blr.arm.com (p8cg001049571a15.blr.arm.com
 [10.162.40.144])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 0A4533F5AF;
 Sun,  2 Jun 2019 23:42:02 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 2/4] arm64/mm: Drop task_struct argument from
 __do_page_fault()
Date: Mon,  3 Jun 2019 12:11:23 +0530
Message-Id: <1559544085-7502-3-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1559544085-7502-1-git-send-email-anshuman.khandual@arm.com>
References: <1559544085-7502-1-git-send-email-anshuman.khandual@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_234206_524545_A075FF9C 
X-CRM114-Status: GOOD (  13.79  )
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

The task_struct argument is not getting used in __do_page_fault(). Hence
just drop it and use current or cuurent->mm instead where ever required.
This does not change any functionality.

Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Andrey Konovalov <andreyknvl@google.com>
---
 arch/arm64/mm/fault.c | 15 +++++----------
 1 file changed, 5 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
index dc1cf32..da02678 100644
--- a/arch/arm64/mm/fault.c
+++ b/arch/arm64/mm/fault.c
@@ -395,8 +395,7 @@ static void do_bad_area(unsigned long addr, unsigned int esr, struct pt_regs *re
 #define VM_FAULT_BADACCESS	0x020000
 
 static vm_fault_t __do_page_fault(struct mm_struct *mm, unsigned long addr,
-			   unsigned int mm_flags, unsigned long vm_flags,
-			   struct task_struct *tsk)
+			   unsigned int mm_flags, unsigned long vm_flags)
 {
 	struct vm_area_struct *vma;
 	vm_fault_t fault;
@@ -440,8 +439,7 @@ static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
 				   struct pt_regs *regs)
 {
 	const struct fault_info *inf;
-	struct task_struct *tsk;
-	struct mm_struct *mm;
+	struct mm_struct *mm = current->mm;
 	vm_fault_t fault, major = 0;
 	unsigned long vm_flags = VM_READ | VM_WRITE;
 	unsigned int mm_flags = FAULT_FLAG_ALLOW_RETRY | FAULT_FLAG_KILLABLE;
@@ -449,9 +447,6 @@ static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
 	if (notify_page_fault(regs, esr))
 		return 0;
 
-	tsk = current;
-	mm  = tsk->mm;
-
 	/*
 	 * If we're in an interrupt or have no user context, we must not take
 	 * the fault.
@@ -510,7 +505,7 @@ static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
 #endif
 	}
 
-	fault = __do_page_fault(mm, addr, mm_flags, vm_flags, tsk);
+	fault = __do_page_fault(mm, addr, mm_flags, vm_flags);
 	major |= fault & VM_FAULT_MAJOR;
 
 	if (fault & VM_FAULT_RETRY) {
@@ -550,11 +545,11 @@ static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
 		 * that point.
 		 */
 		if (major) {
-			tsk->maj_flt++;
+			current->maj_flt++;
 			perf_sw_event(PERF_COUNT_SW_PAGE_FAULTS_MAJ, 1, regs,
 				      addr);
 		} else {
-			tsk->min_flt++;
+			current->min_flt++;
 			perf_sw_event(PERF_COUNT_SW_PAGE_FAULTS_MIN, 1, regs,
 				      addr);
 		}
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
