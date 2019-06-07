Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF40F386D7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 11:14:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TMuqs+7Ml35Uh3sw58eO6aOvZyi2g2kVHal7UpSUJOY=; b=ZdyNGVnXUg+rctxr470yPIR9hT
	x/Ri/dlidb6nvje7S1KXKuqWmq2yDTgw4FSOKWUhs3mCxWf+r68HW5e26lMU0ypXVHogx4ZorvPxu
	dm8/RvMM6/zY/KBA6zjQffOOKOl0nIT3SSd3wZWSWEZ2PJ+MBVwVYrLkXcm/T13Pxg65vSkK6fFmH
	G3c1KLJmD08YK2TB0Mx89JRHJM/VQk1UPeMPa3igKAjrAOaz6qxRLcN/ynMAYKobVuVDpXv+r+7JF
	rehIdx266vaqX1UEhgD60a0vy6RbBru0AYrjnaYe7V31a8v98tlcXuDsuI/VMqON0Hf0rKp5H6Ort
	rdP/rpUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZAwk-0000LH-Fa; Fri, 07 Jun 2019 09:14:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hZAw1-0008H0-KQ
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 09:13:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DCB46346;
 Fri,  7 Jun 2019 02:13:16 -0700 (PDT)
Received: from p8cg001049571a15.blr.arm.com (p8cg001049571a15.blr.arm.com
 [10.162.42.131])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 7CDA23F96A;
 Fri,  7 Jun 2019 02:13:13 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH V3 2/2] arm64/mm: Refactor __do_page_fault()
Date: Fri,  7 Jun 2019 14:43:06 +0530
Message-Id: <1559898786-28530-3-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1559898786-28530-1-git-send-email-anshuman.khandual@arm.com>
References: <1559898786-28530-1-git-send-email-anshuman.khandual@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_021317_735246_F2D2887C 
X-CRM114-Status: GOOD (  14.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Christoph Hellwig <hch@infradead.org>, James Morse <james.morse@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

__do_page_fault() is over complicated with multiple goto statements. This
cleans up the code flow and while there drops local variable vm_fault_t.

Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Andrey Konovalov <andreyknvl@google.com>
Cc: Christoph Hellwig <hch@infradead.org>
---
 arch/arm64/mm/fault.c | 30 +++++++++++-------------------
 1 file changed, 11 insertions(+), 19 deletions(-)

diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
index 95cac4a..235b7c0 100644
--- a/arch/arm64/mm/fault.c
+++ b/arch/arm64/mm/fault.c
@@ -397,37 +397,29 @@ static void do_bad_area(unsigned long addr, unsigned int esr, struct pt_regs *re
 static vm_fault_t __do_page_fault(struct mm_struct *mm, unsigned long addr,
 			   unsigned int mm_flags, unsigned long vm_flags)
 {
-	struct vm_area_struct *vma;
-	vm_fault_t fault;
+	struct vm_area_struct *vma = find_vma(mm, addr);
 
-	vma = find_vma(mm, addr);
-	fault = VM_FAULT_BADMAP;
 	if (unlikely(!vma))
-		goto out;
-	if (unlikely(vma->vm_start > addr))
-		goto check_stack;
+		return VM_FAULT_BADMAP;
 
 	/*
 	 * Ok, we have a good vm_area for this memory access, so we can handle
 	 * it.
 	 */
-good_area:
+	if (unlikely(vma->vm_start > addr)) {
+		if (!(vma->vm_flags & VM_GROWSDOWN))
+			return VM_FAULT_BADMAP;
+		if (expand_stack(vma, addr))
+			return VM_FAULT_BADMAP;
+	}
+
 	/*
 	 * Check that the permissions on the VMA allow for the fault which
 	 * occurred.
 	 */
-	if (!(vma->vm_flags & vm_flags)) {
-		fault = VM_FAULT_BADACCESS;
-		goto out;
-	}
-
+	if (!(vma->vm_flags & vm_flags))
+		return VM_FAULT_BADACCESS;
 	return handle_mm_fault(vma, addr & PAGE_MASK, mm_flags);
-
-check_stack:
-	if (vma->vm_flags & VM_GROWSDOWN && !expand_stack(vma, addr))
-		goto good_area;
-out:
-	return fault;
 }
 
 static bool is_el0_instruction_abort(unsigned int esr)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
