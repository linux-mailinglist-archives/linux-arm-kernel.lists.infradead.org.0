Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45423A58DB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 16:11:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=35gNQ7rVg0vaZ8J1xF4E1Z8G2kITvtZVBgL3zOXpvvo=; b=KreX8TqC3Ymllb
	SlSiZboM84ljTPRcR/lZQhE0mrP/ibjvef6Bwh5q69gqh8WkQ2sCZOJMJqrxioWZTGdy7KmNKmERx
	lsGDv67ToOKbdKrI7oXPMJ18MHdwl0KCIMriaM29oOVs+HfZTO/pcKFXLLWpbndC3ZpijbQ1cc+bC
	ngc7Vk3li/rsnwU/50pQXYW/5ILnQ06hj5YERqJAF1ndFHUBkDuNqCnoe4YXKeByFpOJnzUVhPjLa
	b5T5am0KLOYV7uiuKBfLPIeD1pPjFRewepUQoyehBSo84BJJk9/almtncCWbevrv11WmcdTDFWdDI
	L9cHd4tuW1hyvR/443Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4n30-0000zb-7f; Mon, 02 Sep 2019 14:11:10 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4n2m-0000xn-V4; Mon, 02 Sep 2019 14:10:58 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 58E75ABE7;
 Mon,  2 Sep 2019 14:10:53 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: catalin.marinas@arm.com, hch@lst.de, wahrenst@gmx.net,
 marc.zyngier@arm.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/4] arm64: mm: use arm64_dma_phys_limit instead of calling
 max_zone_dma_phys()
Date: Mon,  2 Sep 2019 16:10:39 +0200
Message-Id: <20190902141043.27210-2-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190902141043.27210-1-nsaenzjulienne@suse.de>
References: <20190902141043.27210-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_071057_151124_D1578AF6 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: f.fainelli@gmail.com, will@kernel.org, mbrugger@suse.com,
 linux-rpi-kernel@lists.infradead.org, phill@raspberrypi.org,
 robin.murphy@arm.com, nsaenzjulienne@suse.de, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

By the time we call zones_sizes_init() arm64_dma_phys_limit already
contains the result of max_zone_dma_phys(). We use the variable instead
of calling the function directly to save some precious cpu time.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---

Changes in v3: None
Changes in v2: None

 arch/arm64/mm/init.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
index f3c795278def..6112d6c90fa8 100644
--- a/arch/arm64/mm/init.c
+++ b/arch/arm64/mm/init.c
@@ -181,7 +181,7 @@ static void __init zone_sizes_init(unsigned long min, unsigned long max)
 	unsigned long max_zone_pfns[MAX_NR_ZONES]  = {0};
 
 #ifdef CONFIG_ZONE_DMA32
-	max_zone_pfns[ZONE_DMA32] = PFN_DOWN(max_zone_dma_phys());
+	max_zone_pfns[ZONE_DMA32] = PFN_DOWN(arm64_dma_phys_limit);
 #endif
 	max_zone_pfns[ZONE_NORMAL] = max;
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
