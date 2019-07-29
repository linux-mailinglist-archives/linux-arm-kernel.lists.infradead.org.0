Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF22C790B9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 18:23:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=su6BveXFux8CLGGySQcMOK3VtZL9Ef1Qs39e9JPQmck=; b=tNdaHWf83iwTtR
	FPQo+0xUiBn/4oHJQHxxjReeLVpvJE+DbSB2qmyElQ8pmcYd97mc0wOWemTIg9I0rxbf3S5YXSoZ8
	Aa39ou+jT6C0Ak2CRU44PGlmb+RgYKYzABMQ7B4jcLCSw1Q573F9OT6NvpmSc2CMITIwMo+amMHUB
	Uk2+Xcxtq1KsJJbxy+hLuIovuieOUZVztbc0b3n9ZPnJl4acGjaGDLpoMEdNBds+SmIWQWbTyFL14
	b/dWad2VILlk4FFynOHfVJ0Y6CAfLomVPpY+hmVkH3nq3861NX4ppRgvyw361PgI3dUZd0a8t6n/s
	ne5e+4m4LnjSdBOrmPHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs8Qu-0006LS-Ns; Mon, 29 Jul 2019 16:23:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hs8PR-0005nK-UK
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 16:22:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C19551570;
 Mon, 29 Jul 2019 09:21:59 -0700 (PDT)
Received: from capper-ampere.manchester.arm.com
 (capper-ampere.manchester.arm.com [10.32.98.74])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 96AE13F694;
 Mon, 29 Jul 2019 09:21:58 -0700 (PDT)
From: Steve Capper <steve.capper@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V4 01/11] arm64: mm: Remove bit-masking optimisations for
 PAGE_OFFSET and VMEMMAP_START
Date: Mon, 29 Jul 2019 17:21:07 +0100
Message-Id: <20190729162117.832-2-steve.capper@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190729162117.832-1-steve.capper@arm.com>
References: <20190729162117.832-1-steve.capper@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_092202_017522_F52708B2 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
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
Cc: crecklin@redhat.com, ard.biesheuvel@linaro.org, catalin.marinas@arm.com,
 bhsharma@redhat.com, Steve Capper <steve.capper@arm.com>, maz@kernel.org,
 will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently there are assumptions about the alignment of VMEMMAP_START
and PAGE_OFFSET that won't be valid after this series is applied.

These assumptions are in the form of bitwise operators being used
instead of addition and subtraction when calculating addresses.

This patch replaces these bitwise operators with addition/subtraction.

Signed-off-by: Steve Capper <steve.capper@arm.com>

---

New in V4
---
 arch/arm64/include/asm/memory.h | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
index b7ba75809751..d3a951dc9878 100644
--- a/arch/arm64/include/asm/memory.h
+++ b/arch/arm64/include/asm/memory.h
@@ -295,21 +295,20 @@ static inline void *phys_to_virt(phys_addr_t x)
 #define virt_to_page(kaddr)	pfn_to_page(__pa(kaddr) >> PAGE_SHIFT)
 #define _virt_addr_valid(kaddr)	pfn_valid(__pa(kaddr) >> PAGE_SHIFT)
 #else
-#define __virt_to_pgoff(kaddr)	(((u64)(kaddr) & ~PAGE_OFFSET) / PAGE_SIZE * sizeof(struct page))
-#define __page_to_voff(kaddr)	(((u64)(kaddr) & ~VMEMMAP_START) * PAGE_SIZE / sizeof(struct page))
+#define __virt_to_pgoff(kaddr)	(((u64)(kaddr) - PAGE_OFFSET) / PAGE_SIZE * sizeof(struct page))
+#define __page_to_voff(kaddr)	(((u64)(kaddr) - VMEMMAP_START) * PAGE_SIZE / sizeof(struct page))
 
 #define page_to_virt(page)	({					\
 	unsigned long __addr =						\
-		((__page_to_voff(page)) | PAGE_OFFSET);			\
+		((__page_to_voff(page)) + PAGE_OFFSET);			\
 	unsigned long __addr_tag =					\
 		 __tag_set(__addr, page_kasan_tag(page));		\
 	((void *)__addr_tag);						\
 })
 
-#define virt_to_page(vaddr)	((struct page *)((__virt_to_pgoff(vaddr)) | VMEMMAP_START))
+#define virt_to_page(vaddr)	((struct page *)((__virt_to_pgoff(vaddr)) + VMEMMAP_START))
 
-#define _virt_addr_valid(kaddr)	pfn_valid((((u64)(kaddr) & ~PAGE_OFFSET) \
-					   + PHYS_OFFSET) >> PAGE_SHIFT)
+#define _virt_addr_valid(kaddr)	pfn_valid(__virt_to_phys((u64)(kaddr)) >> PAGE_SHIFT)
 #endif
 #endif
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
