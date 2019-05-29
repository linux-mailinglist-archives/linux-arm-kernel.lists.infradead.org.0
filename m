Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F42D2DD3D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 14:35:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NomJfIs23HCEHGDS2AQE/jjZ9cbamMKUNnXgiHSH+b8=; b=fNhOg0KNphp15zUhm5uo2wikmf
	ASUF7ML6I39FE8HBiqs7CtGZezBTyltTMq26C61V4HW3jZXxMMRrsaS/LJ6byGLGJ8lBSJhMKf1du
	dHBLwY6G9MKA06Q8TRxSq0zureCsEtQfUZ00cdSSUNinAixOjiZhXiETMbKkXJHT1NLJkGu5hbC+9
	eodKOI1TdALsRDGis1kgBw4n13N5Hi/XvTs2CpntW4csjoD/E1Qb2AYetSszkUDY0Uu83eLF/BfJx
	JpLkh7RBTlts4VB0/tEZ9lRWOMK04yd3dQy7u65Kp26pra2NTRn9IxYdIi5LX8MOlyx8fSgOMKU0+
	Nh8BE8OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVxo7-0001K1-DC; Wed, 29 May 2019 12:35:51 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVxnD-0007md-UW
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 12:34:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7F10780D;
 Wed, 29 May 2019 05:34:55 -0700 (PDT)
Received: from p8cg001049571a15.blr.arm.com (p8cg001049571a15.blr.arm.com
 [10.162.41.181])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 7DF103F59C;
 Wed, 29 May 2019 05:34:52 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/4] arm64/mm: Drop vm_fault_t argument from __do_page_fault()
Date: Wed, 29 May 2019 18:04:45 +0530
Message-Id: <1559133285-27986-5-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1559133285-27986-1-git-send-email-anshuman.khandual@arm.com>
References: <1559133285-27986-1-git-send-email-anshuman.khandual@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_053456_218126_762C1B41 
X-CRM114-Status: GOOD (  16.18  )
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

__do_page_fault() is over complicated with multiple goto statements. This
cleans up code flow and while there drops the vm_fault_t argument.

Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: James Morse <james.morse@arm.com> 
Cc: Andrey Konovalov <andreyknvl@google.com>
---
 arch/arm64/mm/fault.c | 38 ++++++++++++++++----------------------
 1 file changed, 16 insertions(+), 22 deletions(-)

diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
index 170c71f..a53a30e 100644
--- a/arch/arm64/mm/fault.c
+++ b/arch/arm64/mm/fault.c
@@ -397,37 +397,31 @@ static void do_bad_area(unsigned long addr, unsigned int esr, struct pt_regs *re
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
-	 * Ok, we have a good vm_area for this memory access, so we can handle
-	 * it.
+	 * Check if the VMA has got the required permssion with respect
+	 * to the access fault here.
 	 */
-good_area:
+	if (!(vma->vm_flags & vm_flags))
+		return VM_FAULT_BADACCESS;
+
 	/*
-	 * Check that the permissions on the VMA allow for the fault which
-	 * occurred.
+	 * There is a valid VMA for this access. But before proceeding
+	 * make sure that it has required flags if there is an attempt
+	 * to expand the stack downwards.
 	 */
-	if (!(vma->vm_flags & vm_flags)) {
-		fault = VM_FAULT_BADACCESS;
-		goto out;
-	}
+	if (unlikely(vma->vm_start > addr)) {
+		if (!(vma->vm_flags & VM_GROWSDOWN))
+			return VM_FAULT_BADMAP;
 
+		if (expand_stack(vma, addr))
+			return VM_FAULT_BADMAP;
+	}
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
