Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A732CB40
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 18:11:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jQMtSijoeCoCvrxfyuygaepSocM3BwcGJolk1WKrH00=; b=ewRY1vMY8BQg7B
	5RU9+1WcJ4vKxKrX/GQdEe8j7f60vC54uTJ340GZf9tyw9VkzobgUs5kDjEJbeF6US/TUp0s3YUEk
	PzDrezkdouENzTQmoC9XjtlKyrwptz89yldLKt00mksOipo/9KdG3LJUJ7oZTqeE8GW4xI8TYxFtK
	e3xMLfToA4aPsg2I6thuiJGWUp162654o6vXnmBs8FT2YravnIhRlGZnJ3kKSs1OHdS8JdyGieV6i
	arxlY8xkXqjTF+jskAUPmIlstYK/gFxQ7bx7Bpjv426PKSqS+S8FkuN3VF65fXfklf+XngHSJv78e
	phQeUZS486kFo6dQdhng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVehH-0004ww-7m; Tue, 28 May 2019 16:11:31 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVegb-0004Ot-Ms
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 16:10:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5F8E8165C;
 Tue, 28 May 2019 09:10:49 -0700 (PDT)
Received: from capper-debian.arm.com (unknown [10.37.12.41])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 5659F3F59C;
 Tue, 28 May 2019 09:10:46 -0700 (PDT)
From: Steve Capper <steve.capper@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 04/12] arm64: mm: Replace fixed map BUILD_BUG_ON's with
 BUG_ON's
Date: Tue, 28 May 2019 17:10:18 +0100
Message-Id: <20190528161026.13193-5-steve.capper@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190528161026.13193-1-steve.capper@arm.com>
References: <20190528161026.13193-1-steve.capper@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_091050_268563_C0A2779E 
X-CRM114-Status: GOOD (  12.92  )
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

In order to prepare for a variable VA_BITS we need to account for a
variable size VMEMMAP which in turn means the position of the fixed map
is variable at compile time.

Thus, we need to replace the BUILD_BUG_ON's that check the fixed map
position with BUG_ON's.

Signed-off-by: Steve Capper <steve.capper@arm.com>
---
 arch/arm64/mm/mmu.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index b0401b2ec4da..1b88d9d81954 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -846,7 +846,7 @@ void __init early_fixmap_init(void)
 	 * The boot-ioremap range spans multiple pmds, for which
 	 * we are not prepared:
 	 */
-	BUILD_BUG_ON((__fix_to_virt(FIX_BTMAP_BEGIN) >> PMD_SHIFT)
+	BUG_ON((__fix_to_virt(FIX_BTMAP_BEGIN) >> PMD_SHIFT)
 		     != (__fix_to_virt(FIX_BTMAP_END) >> PMD_SHIFT));
 
 	if ((pmdp != fixmap_pmd(fix_to_virt(FIX_BTMAP_BEGIN)))
@@ -914,9 +914,9 @@ void *__init __fixmap_remap_fdt(phys_addr_t dt_phys, int *size, pgprot_t prot)
 	 * On 4k pages, we'll use section mappings for the FDT so we only
 	 * have to be in the same PUD.
 	 */
-	BUILD_BUG_ON(dt_virt_base % SZ_2M);
+	BUG_ON(dt_virt_base % SZ_2M);
 
-	BUILD_BUG_ON(__fix_to_virt(FIX_FDT_END) >> SWAPPER_TABLE_SHIFT !=
+	BUG_ON(__fix_to_virt(FIX_FDT_END) >> SWAPPER_TABLE_SHIFT !=
 		     __fix_to_virt(FIX_BTMAP_BEGIN) >> SWAPPER_TABLE_SHIFT);
 
 	offset = dt_phys % SWAPPER_BLOCK_SIZE;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
