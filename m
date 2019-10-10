Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B610DD2F81
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 19:23:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=LsPTOT3EWYqZjcOIHMfT55HZtpmafXbvlhDvpNqEAPs=; b=ID/
	8E5KKH93zbqjk8qovjtcktm3+KL8GZi4C4QWQeUXCQA0yo92aZn0iz9LCsR3VJtBdKbOesBxs5zXA
	xpq/VS/58/X9L5UAA30h2QJfs6p5eHNIBI2xP3HYLOBAzBXPmQ3k+JTRRWLZC02RI9z3zbIsBVP6p
	RrPl4rpu0vZKOYC43ZYTJl0L0anq0l4YmhpFFXOxDmE5Rv0w4GKfbo1Hthz1bOAh7k6j2jgW3WCJS
	59c0MVffHYxCyN6b7BTebWS2xJpeA7fEMOEcYodGZHElOYEUu7TMqeeCdYfH22OjVcwhHsXbYbkG6
	atBm+BY+BfqufzxaaY+aY19ZET/606g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIc9T-0002Nk-Ow; Thu, 10 Oct 2019 17:22:59 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIc9L-0002N9-Ui
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 17:22:53 +0000
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4535987630;
 Thu, 10 Oct 2019 17:22:50 +0000 (UTC)
Received: from crecklin.bos.com (ovpn-125-78.rdu2.redhat.com [10.10.125.78])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 45BFA5C1B2;
 Thu, 10 Oct 2019 17:22:49 +0000 (UTC)
From: Chris von Recklinghausen <crecklin@redhat.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] arm64: fix kcore macros 52-bit va fallout
Date: Thu, 10 Oct 2019 13:22:47 -0400
Message-Id: <20191010172247.19033-1-crecklin@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Thu, 10 Oct 2019 17:22:50 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_102252_005636_48969278 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: will@kernel.org, james.morse@arm.com, catalin.marinas@arm.com,
 steve.capper@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We export the entire kernel address space (i.e. the whole of the TTBR1
address range) via /proc/kcore. The kc_vaddr_to_offset() and
kc_offset_to_vaddr() macros are intended to convert between a kernel
virtual address and its offset relative to the start of the TTBR1
address space.

Prior to commit:

  14c127c957c1c607 ("arm64: mm: Flip kernel VA space")

... the offset was calculated relative to VA_START, which at the time
was the start of the TTBR1 address space. At this time, PAGE_OFFSET
pointed to the high half of the TTBR1 address space where arm64's
linear map lived.

That commit swapped the position of VA_START and PAGE_OFFSET, but
failed to update kc_vaddr_to_offset() or kc_offset_to_vaddr(), so
since then the two macros behave incorrectly.

Note that VA_START was subsequently renamed to PAGE_END in commit:

  77ad4ce69321abbe ("arm64: memory: rename VA_START to PAGE_END")

As the generic implementations of the two macros calculate the offset
relative to PAGE_OFFSET (which is now the start of the TTBR1 address
space), we can delete the arm64 implementation and use those.

Fixes: 14c127c957c1c607 ("arm64: mm: Flip kernel VA space")

Signed-off-by: Chris von Recklinghausen <crecklin@redhat.com>
---
v1 -> v2
   reword commit comment to to what Mark Rutland suggested
   add Signed-off-by
   no code changes

 arch/arm64/include/asm/pgtable.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
index 7576df00eb50..8330810f699e 100644
--- a/arch/arm64/include/asm/pgtable.h
+++ b/arch/arm64/include/asm/pgtable.h
@@ -876,9 +876,6 @@ static inline void update_mmu_cache(struct vm_area_struct *vma,
 
 #define update_mmu_cache_pmd(vma, address, pmd) do { } while (0)
 
-#define kc_vaddr_to_offset(v)	((v) & ~PAGE_END)
-#define kc_offset_to_vaddr(o)	((o) | PAGE_END)
-
 #ifdef CONFIG_ARM64_PA_BITS_52
 #define phys_to_ttbr(addr)	(((addr) | ((addr) >> 46)) & TTBR_BADDR_MASK_52)
 #else
-- 
2.18.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
