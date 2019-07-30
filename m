Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D087A961
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 15:21:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=37sAW2BDRJCcyaNYkjO3KG4591GUzVO6UvS5ZAH980E=; b=l2kch3S/UR6Qxt
	dxqwwkjIxQAFj3POcqeB/ODl6CfKOv6SPqZkTc17qxMCvQ6BsDoxWTKtjpdTIt0PCL+fJGptEY+/O
	onNvvr56jTZvKoARQp3ZhQKekrJfFyUz6iP4u56RAQTrUWVPppApv+hyE82g6YC8fJCLX1PTSix0W
	z4+dXBMD4PEpetMcvHo6DwGxvGgnXSQe4rsLJFM3jpYxT+fEwMn2Wdoc68IRRS/SiKwuDU0fpPOy1
	ZfuQOgTtunLOfvGjBvyRvD4oT6btwr7uEWJvE8spvkiox9QhQ2mpUTgFQ3lnt4VFbPj+p0+tflUHn
	plgxPKWpfC9edi6P472g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsS42-0002kJ-8Y; Tue, 30 Jul 2019 13:21:14 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsS37-0002Yg-W3
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 13:20:19 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6UDKEUS033907;
 Tue, 30 Jul 2019 08:20:14 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1564492814;
 bh=GidekszOWXOz65DaNrv6Onij2HIr4p8/rU9ABITd7Tw=;
 h=From:To:CC:Subject:Date;
 b=VICm1HNiA02wiFecChDGeVxDnuTH7Jza8utcA1nE0fkS/wzFj51wCaNzQL87sqzVq
 RgLr53SPBfubmfLEVRvfSXaOwbDQd8KtnBa0nO4tjHi4/H3P3SSm83oAjeyEPbTUMZ
 mW9Wj66dg69cL2IQceyX4jC6BG8Lmnp2IcKqDSn0=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6UDKDaj077063
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 30 Jul 2019 08:20:13 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 30
 Jul 2019 08:20:13 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 30 Jul 2019 08:20:13 -0500
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6UDKBgk056060;
 Tue, 30 Jul 2019 08:20:11 -0500
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vkoul@kernel.org>
Subject: [PATCH] dmaengine: ti: omap-dma: Remove 'Assignment in if condition'
Date: Tue, 30 Jul 2019 16:20:15 +0300
Message-ID: <20190730132015.2863-1-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_062018_239741_16D16C9C 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

While the compiler does not have problem with how it is implemented,
checkpatch does give en ERROR for this arrangement.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
 drivers/dma/ti/omap-dma.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/dma/ti/omap-dma.c b/drivers/dma/ti/omap-dma.c
index a4a63425dc0b..3b57b68df896 100644
--- a/drivers/dma/ti/omap-dma.c
+++ b/drivers/dma/ti/omap-dma.c
@@ -814,7 +814,6 @@ static enum dma_status omap_dma_tx_status(struct dma_chan *chan,
 	dma_cookie_t cookie, struct dma_tx_state *txstate)
 {
 	struct omap_chan *c = to_omap_dma_chan(chan);
-	struct virt_dma_desc *vd;
 	enum dma_status ret;
 	unsigned long flags;
 	struct omap_desc *d = NULL;
@@ -841,10 +840,14 @@ static enum dma_status omap_dma_tx_status(struct dma_chan *chan,
 			pos = 0;
 
 		txstate->residue = omap_dma_desc_size_pos(d, pos);
-	} else if ((vd = vchan_find_desc(&c->vc, cookie))) {
-		txstate->residue = omap_dma_desc_size(to_omap_dma_desc(&vd->tx));
 	} else {
-		txstate->residue = 0;
+		struct virt_dma_desc *vd = vchan_find_desc(&c->vc, cookie);
+
+		if (vd)
+			txstate->residue = omap_dma_desc_size(
+						to_omap_dma_desc(&vd->tx));
+		else
+			txstate->residue = 0;
 	}
 
 out:
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
