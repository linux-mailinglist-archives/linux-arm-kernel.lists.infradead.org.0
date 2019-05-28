Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 063352CB55
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 18:13:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HEkG88b+KbYcTwSsx47F1VgpSEoY+Svi0NzdfZGupb0=; b=Ba0kFC6+VmzNU9
	kgP/3eCHEFW2BhwWIR3fjkfJJlG/Q88lFFrb6ZJybT/rdJb6EdlwfnW/Yaaj29J6jsje7dnTEFxxx
	Ti/VQyRbEgtwmbRk4+zVdzfi8cp2wWuVbAQwgdkZ7Q0bfwd3SyeTldanC2WKReRf2mGVihGoZR3Vm
	4I3ngQnj3+zt8QRyeaVggK5DJuL2O96JBJvXGtiFfzWISkwyDbUSNuQrzoMyAZsrhhnnLZx6+qT/W
	GaiFpOOVBGKpu2fjyBOwlFMxbVG5ne7ombz/kVMhVx2H1r3qoYHKrfSLy3eW+oW6UA1Nt73IWeyZ5
	17PYxyHbqY4zuqmIBmcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVejJ-00073Z-9F; Tue, 28 May 2019 16:13:37 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVeh3-0004ot-Bl
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 16:11:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1EA67A78;
 Tue, 28 May 2019 09:11:17 -0700 (PDT)
Received: from capper-debian.arm.com (unknown [10.37.12.41])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id BFB183F59C;
 Tue, 28 May 2019 09:11:13 -0700 (PDT)
From: Steve Capper <steve.capper@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 10/12] arm64: mm: Modify calculation of VMEMMAP_SIZE
Date: Tue, 28 May 2019 17:10:24 +0100
Message-Id: <20190528161026.13193-11-steve.capper@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190528161026.13193-1-steve.capper@arm.com>
References: <20190528161026.13193-1-steve.capper@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_091117_422136_91CE471F 
X-CRM114-Status: GOOD (  15.63  )
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
Cc: crecklin@redhat.com, ard.biesheuvel@linaro.org, marc.zyngier@arm.com,
 catalin.marinas@arm.com, bhsharma@redhat.com, will.deacon@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In a later patch we will need to have a slightly larger VMEMMAP region
to accommodate boot time selection between 48/52-bit kernel VAs.

This patch modifies the formula for computing VMEMMAP_SIZE to depend
explicitly on the PAGE_OFFSET and start of kernel addressable memory.
(This allows for a slightly larger direct linear map in future).

Also this patch removes the use of bitmasking in the computation of
_page_to_voff as this can cause problems if we decide to move regions
around in future.

Signed-off-by: Steve Capper <steve.capper@arm.com>
---
 arch/arm64/include/asm/memory.h | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
index c02373035533..e9af8aa36612 100644
--- a/arch/arm64/include/asm/memory.h
+++ b/arch/arm64/include/asm/memory.h
@@ -37,8 +37,15 @@
 /*
  * VMEMMAP_SIZE - allows the whole linear region to be covered by
  *                a struct page array
+ *
+ * If we are configured with a 52-bit kernel VA then our VMEMMAP_SIZE
+ * neads to cover the memory region from the beginning of the 52-bit
+ * PAGE_OFFSET all the way to VA_START for 48-bit. This allows us to
+ * keep a constant PAGE_OFFSET and "fallback" to using the higher end
+ * of the VMEMMAP where 52-bit support is not available in hardware.
  */
-#define VMEMMAP_SIZE (UL(1) << (VA_BITS - PAGE_SHIFT - 1 + STRUCT_PAGE_MAX_SHIFT))
+#define VMEMMAP_SIZE ((_VA_START(VA_BITS_MIN) - PAGE_OFFSET) \
+			>> (PAGE_SHIFT - STRUCT_PAGE_MAX_SHIFT))
 
 /*
  * PAGE_OFFSET - the virtual address of the start of the linear map (top
@@ -319,7 +326,7 @@ static inline void *phys_to_virt(phys_addr_t x)
 #define _virt_addr_valid(kaddr)	pfn_valid(__pa(kaddr) >> PAGE_SHIFT)
 #else
 #define __virt_to_pgoff(kaddr)	(((u64)(kaddr) & ~PAGE_OFFSET) / PAGE_SIZE * sizeof(struct page))
-#define __page_to_voff(kaddr)	(((u64)(kaddr) & ~VMEMMAP_START) * PAGE_SIZE / sizeof(struct page))
+#define __page_to_voff(kaddr)	(((u64)(kaddr) - VMEMMAP_START) * PAGE_SIZE / sizeof(struct page))
 
 #define page_to_virt(page)	({					\
 	unsigned long __addr =						\
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
