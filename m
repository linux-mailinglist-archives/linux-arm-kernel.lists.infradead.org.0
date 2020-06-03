Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38DE01EC796
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 04:45:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t+Veok/TF8DTfSEHxOp7fMvg3IflFo9Oo46S8htzZ20=; b=o5JXyuX8NwedWN
	w9afBZbmazerkQ7H+ENncWs4A70TyJpmqtxKkKWVLRJ0w1XoNHdxhzzF2Hbl4ilI+PznWSrhy3xKA
	DVDt/Z5DafnLD1klwPp66Kk67X3s84yxLSA2wSry+2//TK8FRXcLvWjdLryFOxDdTGBXqEKIFBh8F
	QOLAlRPS3LHgqCc67aToipXnpE0lVPLiLgeCJJ/LlZRGF+6Lq75E/VeGxiOqFLPnZ9BzAX59sCuHR
	ih/IMxzoOUMUl5ieewsU6oB6AXkdGQheDPM+U+FyihDcQHNGroKUnyfEBtFQahHSaH/5aH1GJi9ug
	bqRHySVITbkiFhbD4pcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgJPA-0001Vk-4k; Wed, 03 Jun 2020 02:45:24 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgJOO-00019D-TK
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 02:44:38 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id B0F23B592F9065344E8F;
 Wed,  3 Jun 2020 10:44:33 +0800 (CST)
Received: from SWX921481.china.huawei.com (10.126.201.193) by
 DGGEMS406-HUB.china.huawei.com (10.3.19.206) with Microsoft SMTP Server id
 14.3.487.0; Wed, 3 Jun 2020 10:44:24 +0800
From: Barry Song <song.bao.hua@hisilicon.com>
To: <hch@lst.de>, <m.szyprowski@samsung.com>, <robin.murphy@arm.com>,
 <catalin.marinas@arm.com>
Subject: [PATCH 2/3] arm64: mm: reserve hugetlb CMA after numa_init
Date: Wed, 3 Jun 2020 14:42:30 +1200
Message-ID: <20200603024231.61748-3-song.bao.hua@hisilicon.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20200603024231.61748-1-song.bao.hua@hisilicon.com>
References: <20200603024231.61748-1-song.bao.hua@hisilicon.com>
MIME-Version: 1.0
X-Originating-IP: [10.126.201.193]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_194437_110448_813D12C1 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.32 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Barry Song <song.bao.hua@hisilicon.com>, john.garry@huawei.com,
 linux-kernel@vger.kernel.org, linuxarm@huawei.com,
 iommu@lists.linux-foundation.org, prime.zeng@hisilicon.com,
 Jonathan.Cameron@huawei.com, Roman Gushchin <guro@fb.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

hugetlb_cma_reserve() is called at the wrong place. numa_init has not been
done yet. so all reserved memory will be located at node0.

Cc: Roman Gushchin <guro@fb.com>
Signed-off-by: Barry Song <song.bao.hua@hisilicon.com>
---
 arch/arm64/mm/init.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
index e42727e3568e..8f0e70ebb49d 100644
--- a/arch/arm64/mm/init.c
+++ b/arch/arm64/mm/init.c
@@ -458,11 +458,6 @@ void __init arm64_memblock_init(void)
 	high_memory = __va(memblock_end_of_DRAM() - 1) + 1;
 
 	dma_contiguous_reserve(arm64_dma32_phys_limit);
-
-#ifdef CONFIG_ARM64_4K_PAGES
-	hugetlb_cma_reserve(PUD_SHIFT - PAGE_SHIFT);
-#endif
-
 }
 
 void __init bootmem_init(void)
@@ -478,6 +473,11 @@ void __init bootmem_init(void)
 	min_low_pfn = min;
 
 	arm64_numa_init();
+
+#ifdef CONFIG_ARM64_4K_PAGES
+	hugetlb_cma_reserve(PUD_SHIFT - PAGE_SHIFT);
+#endif
+
 	/*
 	 * Sparsemem tries to allocate bootmem in memory_present(), so must be
 	 * done after the fixed reservations.
-- 
2.23.0



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
