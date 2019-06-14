Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44E4A45F8E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 15:51:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8+jI1LjPbN+piU4NkOcsTwcpjDszQnCC/E63n0EzI3k=; b=WSZ9gYjqBNWgq9
	wBxBlzCrcOdATGWIQv7uxIzvVYg0V449cMgfhPFH7VkiDtXwxMViR1Ct4SIBb0JXLp7ahkcNKNW39
	l+WZd8p8xSKXX7wViKG5oC8nBAovM0K9NB3tmaQaTI2g5jinunWdc2eNSnodB28GcgDDb7E3hwhMx
	PlrnGS3L6A+1jGWPk9Hnm/cMC614XraDrxd9NbT/sHU+j/TdUnAydKzwJtZXY7ikTmhHgZxCAF+m/
	ty/Nq8XXd8rIhdHLvW7pLOAiu0R3lEm9upR5X+iwtgzujdDdtxIknq3T/DvMwNfX4fvskVgmelw9b
	n3kwLhxadDWywbk/NQmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbmcB-0002d7-GH; Fri, 14 Jun 2019 13:51:35 +0000
Received: from 213-225-9-13.nat.highway.a1.net ([213.225.9.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbmYn-0005Ie-J2; Fri, 14 Jun 2019 13:48:06 +0000
From: Christoph Hellwig <hch@lst.de>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>
Subject: [PATCH 10/16] iwlwifi: stop passing bogus gfp flags arguments to
 dma_alloc_coherent
Date: Fri, 14 Jun 2019 15:47:20 +0200
Message-Id: <20190614134726.3827-11-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614134726.3827-1-hch@lst.de>
References: <20190614134726.3827-1-hch@lst.de>
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 Intel Linux Wireless <linuxwifi@intel.com>, linux-rdma@vger.kernel.org,
 netdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

dma_alloc_coherent is not just the page allocator.  The only valid
arguments to pass are either GFP_ATOMIC or GFP_ATOMIC with possible
modifiers of __GFP_NORETRY or __GFP_NOWARN.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/net/wireless/intel/iwlwifi/fw/dbg.c     | 3 +--
 drivers/net/wireless/intel/iwlwifi/pcie/trans.c | 3 +--
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/net/wireless/intel/iwlwifi/fw/dbg.c b/drivers/net/wireless/intel/iwlwifi/fw/dbg.c
index 5f52e40a2903..323dc5d5ee88 100644
--- a/drivers/net/wireless/intel/iwlwifi/fw/dbg.c
+++ b/drivers/net/wireless/intel/iwlwifi/fw/dbg.c
@@ -2361,8 +2361,7 @@ iwl_fw_dbg_buffer_allocation(struct iwl_fw_runtime *fwrt, u32 size)
 
 	virtual_addr =
 		dma_alloc_coherent(fwrt->trans->dev, size, &phys_addr,
-				   GFP_KERNEL | __GFP_NOWARN | __GFP_ZERO |
-				   __GFP_COMP);
+				   GFP_KERNEL | __GFP_NOWARN);
 
 	/* TODO: alloc fragments if needed */
 	if (!virtual_addr)
diff --git a/drivers/net/wireless/intel/iwlwifi/pcie/trans.c b/drivers/net/wireless/intel/iwlwifi/pcie/trans.c
index 803fcbac4152..22a47f928dc8 100644
--- a/drivers/net/wireless/intel/iwlwifi/pcie/trans.c
+++ b/drivers/net/wireless/intel/iwlwifi/pcie/trans.c
@@ -210,8 +210,7 @@ static void iwl_pcie_alloc_fw_monitor_block(struct iwl_trans *trans,
 	for (power = max_power; power >= min_power; power--) {
 		size = BIT(power);
 		cpu_addr = dma_alloc_coherent(trans->dev, size, &phys,
-					      GFP_KERNEL | __GFP_NOWARN |
-					      __GFP_ZERO | __GFP_COMP);
+					      GFP_KERNEL | __GFP_NOWARN);
 		if (!cpu_addr)
 			continue;
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
