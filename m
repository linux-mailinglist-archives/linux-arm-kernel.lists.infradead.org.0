Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F312B1FD811
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 00:00:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9EnlIuwHw7PpDDxc/RW30DWfIifU2U6b1w/Yf6rP/rw=; b=XKLc4alhmr93fS
	X2aXPwgiKKzB4p2ozud+ZLRvcRCq94G9o69cigA7xSbiMSs0KTMDCDxtn23R3my5abeitV6+cxGZG
	xjajvP5pJdWlfQh4uDHLL6oK3KZ7gqMJlZOcS9yXjRxqbTQ3ZLROVpGjppaXP70ewN/zrKEn8WuIq
	sK/HYuujaKLw0iCAAilSA2hvnlABLsIfV2YmV44/JiQ/xOuV3l0Ot8eJJyX8chBFgT6czLTXNrqZW
	pzsNVftrIzLdRwuiKENYm7L1mepxkJqB1lPwWkvsQ2h7ImulqpofapgCk3MtpMhhXUmS2pWDeJDds
	lAX/0IN6mAMZfsG6Aslg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlg6f-0003Gh-Sw; Wed, 17 Jun 2020 22:00:29 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlg6T-0003Dn-JF
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 22:00:20 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 7632131C4F4978AC70FE;
 Thu, 18 Jun 2020 06:00:12 +0800 (CST)
Received: from SWX921481.china.huawei.com (10.126.200.210) by
 DGGEMS413-HUB.china.huawei.com (10.3.19.213) with Microsoft SMTP Server id
 14.3.487.0; Thu, 18 Jun 2020 06:00:04 +0800
From: Barry Song <song.bao.hua@hisilicon.com>
To: <catalin.marinas@arm.com>, <will@kernel.org>, <nsaenzjulienne@suse.de>,
 <steve.capper@arm.com>, <rppt@linux.ibm.com>, <akpm@linux-foundation.org>
Subject: [PATCH v3] arm64: mm: reserve hugetlb CMA after numa_init
Date: Thu, 18 Jun 2020 09:58:28 +1200
Message-ID: <20200617215828.25296-1-song.bao.hua@hisilicon.com>
X-Mailer: git-send-email 2.21.0.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.126.200.210]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_150018_461404_91178F67 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: -0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.32 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 1.5 AC_FROM_MANY_DOTS      Multiple periods in From user name
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
Cc: Barry Song <song.bao.hua@hisilicon.com>, Anshuman
 Khandual <anshuman.khandual@arm.com>, linux-kernel@vger.kernel.org,
 linuxarm@huawei.com, Matthias
 Brugger <matthias.bgg@gmail.com>, Roman Gushchin <guro@fb.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

hugetlb_cma_reserve() is called at the wrong place. numa_init has not been
done yet. so all reserved memory will be located at node0.

Fixes: cf11e85fc08c ("mm: hugetlb: optionally allocate gigantic hugepages using cma")
Cc: Matthias Brugger <matthias.bgg@gmail.com>
Cc: Will Deacon <will@kernel.org>
Acked-by: Roman Gushchin <guro@fb.com>
Reviewed-by: Anshuman Khandual <anshuman.khandual@arm.com>
Signed-off-by: Barry Song <song.bao.hua@hisilicon.com>
---
 -v3:
 add review-by;
 add comment according to Will's feedback

 arch/arm64/mm/init.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
index e631e6425165..1e93cfc7c47a 100644
--- a/arch/arm64/mm/init.c
+++ b/arch/arm64/mm/init.c
@@ -404,11 +404,6 @@ void __init arm64_memblock_init(void)
 	high_memory = __va(memblock_end_of_DRAM() - 1) + 1;
 
 	dma_contiguous_reserve(arm64_dma32_phys_limit);
-
-#ifdef CONFIG_ARM64_4K_PAGES
-	hugetlb_cma_reserve(PUD_SHIFT - PAGE_SHIFT);
-#endif
-
 }
 
 void __init bootmem_init(void)
@@ -424,6 +419,16 @@ void __init bootmem_init(void)
 	min_low_pfn = min;
 
 	arm64_numa_init();
+
+	/*
+	 * must be done after arm64_numa_init() which calls numa_init() to
+	 * initialize node_online_map that gets used in hugetlb_cma_reserve()
+	 * while allocating required CMA size across online nodes.
+	 */
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
