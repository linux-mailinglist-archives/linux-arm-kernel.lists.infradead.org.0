Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 854E96A3C0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 10:24:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZLSaoHzGDogBBkF9TO7tVx/W8yN1NpFp+/5OSesPZ6E=; b=mcGM7coI1hFv5M
	cQ8sjGYZ6lVh2/1mUiVXG8cHkfoUHFLqFcz95P8WMl/CVCA0qjJxocxrQ8zBP4LbdlAHS39zy3MGc
	euxGqVL7CBTxLsWpV11xEIJ+DUeeen62mtv9TbgY8UxvyHoEYNtp5RVbJvtm2sscIUIexR2EuV9KN
	+p1eyGUI5VjYG64RjWLv+RD7J4YlFcrFTB0oNZlgszk90jAhviMYKJkEa6vnH+67zDQiesZFKLXlD
	cDO2A+GQWfGQSpA2tuSDyNNtsJRpfVTPVRqeHopZWZho9+70FqhWuaZxBr6nF8KJGueFlj5zDyfwc
	Yu6MpN4EZyiVjn3goQJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnIl8-0005Q3-La; Tue, 16 Jul 2019 08:24:26 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnIkt-0005Os-Rh
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 08:24:13 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6G8O5VV119076;
 Tue, 16 Jul 2019 03:24:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1563265445;
 bh=FQHBBqqUreCc29zYpsi4qJzXPSnKlBjRH1T19Nb9E1M=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=juid4IpLl2bYjyFaWX1Gjky77VMHy+aQ2DAXR8JR6P55W7Stj7COJYIOkjPHlfBz1
 9xxYbjzvG3GdYbmOV2PnhiuwBfST/OXJoXEoWr8aNkC4o5ppn/cJRdWBDOSu/WbWUD
 IG4OudAhW1k9MkmClEmC2Ztf/RvYtqGZ1NSciWp0=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6G8O53g099841
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 16 Jul 2019 03:24:05 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 16
 Jul 2019 03:24:04 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 16 Jul 2019 03:24:04 -0500
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6G8O0lg033709;
 Tue, 16 Jul 2019 03:24:02 -0500
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vkoul@kernel.org>
Subject: [PATCH v2 1/2] dmaengine: ti: omap-dma: Readability cleanup in
 omap_dma_tx_status()
Date: Tue, 16 Jul 2019 11:24:58 +0300
Message-ID: <20190716082459.1222-2-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190716082459.1222-1-peter.ujfalusi@ti.com>
References: <20190716082459.1222-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_012412_003843_71418C5D 
X-CRM114-Status: GOOD (  12.97  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The tx_status is most likely going to be asked for the current transfer, so
check that first then try to fall back to lookup of non started transfers.

In this way the code is a bit more readable and in most cases we will avoid
to run vchan_find_desc() all the time.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
 drivers/dma/ti/omap-dma.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/dma/ti/omap-dma.c b/drivers/dma/ti/omap-dma.c
index ba2489d4ea24..029c0bd550d5 100644
--- a/drivers/dma/ti/omap-dma.c
+++ b/drivers/dma/ti/omap-dma.c
@@ -832,10 +832,8 @@ static enum dma_status omap_dma_tx_status(struct dma_chan *chan,
 		return ret;
 
 	spin_lock_irqsave(&c->vc.lock, flags);
-	vd = vchan_find_desc(&c->vc, cookie);
-	if (vd) {
-		txstate->residue = omap_dma_desc_size(to_omap_dma_desc(&vd->tx));
-	} else if (c->desc && c->desc->vd.tx.cookie == cookie) {
+
+	if (c->desc && c->desc->vd.tx.cookie == cookie) {
 		struct omap_desc *d = c->desc;
 		dma_addr_t pos;
 
@@ -847,11 +845,15 @@ static enum dma_status omap_dma_tx_status(struct dma_chan *chan,
 			pos = 0;
 
 		txstate->residue = omap_dma_desc_size_pos(d, pos);
+	} else if ((vd = vchan_find_desc(&c->vc, cookie))) {
+		txstate->residue = omap_dma_desc_size(to_omap_dma_desc(&vd->tx));
 	} else {
 		txstate->residue = 0;
 	}
+
 	if (ret == DMA_IN_PROGRESS && c->paused)
 		ret = DMA_PAUSED;
+
 	spin_unlock_irqrestore(&c->vc.lock, flags);
 
 	return ret;
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
