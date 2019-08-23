Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 652849B012
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 14:57:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UNFfnGRjBa5rR1xfB2r8mBuC1ZcPmR7xIJlG+pgYPg4=; b=mnuJXH/+8/Yeww
	bhJv7Fqp/Bj0B3TgMXb6QjEPA0dqhrIrJ5Vl6hf/wAIq3bPtvIKPRNHx1TulQdBGZEgYpHI0BfMCo
	y+zGaBwjIHsghQ7SZPmVrTrgrexQX4dtKLJjARYn3A2re/zY12a/iBv7n3+e38oZzTf/cDgEKi5Ho
	gy0gDX23dMNrh2cRxi50DI3XEZJlirnQR0Cp0fzusZ2zV+Dc+h4GcNrx+U0b0rxx/Xy0zwXCP6xPl
	UiBrut+2RiJSESMEgEz854t9NlqF06w4HlebCzY6LJZcW1Rn6JQ1Px+X2yUXdO+IZRjZ/pTlevbZ5
	U40GUdFfRYyN7aKnmA0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i197n-0000YT-RO; Fri, 23 Aug 2019 12:57:03 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1971-0008Ao-Kg
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 12:56:17 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7NCuDVd073814;
 Fri, 23 Aug 2019 07:56:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566564973;
 bh=YzETJQzcjwwuCGbcFqt2yh0/B3OCbpsu/i5Eo/6kFzk=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=JkuBIF0K21oaMUR8d4+RXAoDtsuQXZqzc6i3dIwsbEhUDPS7DZt+TnETrJpJa1yCf
 kfhdUnbZSGLN2wiozBiLopS9lMqouL4aWI1oix0nLbS0ZbdDLk2bM7DzdNyPL0k0Zo
 yU/YDVQIHcQLLpGNmMP7pdHcSD9scf6PKd3icUK8=
Received: from DLEE101.ent.ti.com (dlee101.ent.ti.com [157.170.170.31])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7NCuDFa016228
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 23 Aug 2019 07:56:13 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 23
 Aug 2019 07:56:12 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 23 Aug 2019 07:56:12 -0500
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7NCtwkj092319;
 Fri, 23 Aug 2019 07:56:10 -0500
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vkoul@kernel.org>, <robh+dt@kernel.org>
Subject: [PATCH 5/5] dmaengine: ti: edma: Add support for handling reserved
 channels
Date: Fri, 23 Aug 2019 15:56:18 +0300
Message-ID: <20190823125618.8133-6-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190823125618.8133-1-peter.ujfalusi@ti.com>
References: <20190823125618.8133-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_055615_792529_C7B62593 
X-CRM114-Status: GOOD (  19.80  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Like paRAM slots, channels could be used by other cores and in this case
we need to make sure that the driver do not alter these channels.

Move the reserved slot/channel query from DT to a separate function for
cleaner implementation.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
 drivers/dma/ti/edma.c | 161 +++++++++++++++++++++++++++---------------
 1 file changed, 106 insertions(+), 55 deletions(-)

diff --git a/drivers/dma/ti/edma.c b/drivers/dma/ti/edma.c
index ba7c4f07fcd6..5201aeebf5c1 100644
--- a/drivers/dma/ti/edma.c
+++ b/drivers/dma/ti/edma.c
@@ -260,6 +260,9 @@ struct edma_cc {
 	 */
 	unsigned long *slot_inuse;
 
+	/* for tracking reserved channels used by DSP */
+	unsigned long *reserved_chans;
+
 	struct dma_device		dma_slave;
 	struct dma_device		*dma_memcpy;
 	struct edma_chan		*slave_chans;
@@ -716,6 +719,12 @@ static int edma_alloc_channel(struct edma_chan *echan,
 	struct edma_cc *ecc = echan->ecc;
 	int channel = EDMA_CHAN_SLOT(echan->ch_num);
 
+	if (test_bit(echan->ch_num, ecc->reserved_chans)) {
+		dev_err(ecc->dev, "Channel%d is reserved, can not be used!\n",
+			echan->ch_num);
+		return -EINVAL;
+	}
+
 	/* ensure access through shadow region 0 */
 	edma_or_array2(ecc, EDMA_DRAE, 0, EDMA_REG_ARRAY_INDEX(channel),
 		       EDMA_CHANNEL_BIT(channel));
@@ -2096,6 +2105,76 @@ static int edma_xbar_event_map(struct device *dev, struct edma_soc_info *pdata,
 	return 0;
 }
 
+static struct edma_rsv_info *edma_get_reserved_ranges_dt(struct device *dev)
+{
+	static const char * const prop_names[] = {
+						"ti,edma-reserved-slot-ranges",
+						"ti,edma-reserved-chan-ranges"
+						};
+	struct edma_rsv_info *rsv_info = NULL;
+	struct property *props[2];
+	int sz[2], i, ret;
+
+	for (i = 0; i < 2; i++)
+		props[i] = of_find_property(dev->of_node, prop_names[i],
+					    &sz[i]);
+
+	if (!props[0] && !props[1])
+		return NULL;
+
+	rsv_info = devm_kzalloc(dev, sizeof(*rsv_info), GFP_KERNEL);
+	if (!rsv_info)
+		return ERR_PTR(-ENOMEM);
+
+	for (i = 0; i < 2; i++) {
+		u32 (*tmp)[2];
+		s16 (*reserved)[2];
+		size_t nelm;
+		int j;
+
+		if (!props[i])
+			continue;
+
+		nelm = sz[i] / sizeof(*tmp);
+		if (!nelm)
+			continue;
+
+		tmp = kcalloc(nelm, sizeof(*tmp), GFP_KERNEL);
+		if (!tmp)
+			return ERR_PTR(-ENOMEM);
+
+		reserved = devm_kcalloc(dev, nelm + 1, sizeof(*reserved),
+					GFP_KERNEL);
+		if (!reserved) {
+			kfree(tmp);
+			return ERR_PTR(-ENOMEM);
+		}
+
+		ret = of_property_read_u32_array(dev->of_node, prop_names[i],
+						 (u32 *)tmp, nelm * 2);
+		if (ret) {
+			kfree(tmp);
+			return ERR_PTR(ret);
+		}
+
+		for (j = 0; j < nelm; j++) {
+			reserved[j][0] = tmp[j][0];
+			reserved[j][1] = tmp[j][1];
+		}
+		reserved[nelm][0] = -1;
+		reserved[nelm][1] = -1;
+
+		if (i == 0)
+			rsv_info->rsv_slots = (const s16 (*)[2])reserved;
+		else if (i == 1)
+			rsv_info->rsv_chans = (const s16 (*)[2])reserved;
+
+		kfree(tmp);
+	}
+
+	return rsv_info;
+}
+
 static struct edma_soc_info *edma_setup_info_from_dt(struct device *dev,
 						     bool legacy_mode)
 {
@@ -2139,55 +2218,9 @@ static struct edma_soc_info *edma_setup_info_from_dt(struct device *dev,
 		info->memcpy_channels = memcpy_ch;
 	}
 
-	prop = of_find_property(dev->of_node, "ti,edma-reserved-slot-ranges",
-				&sz);
-	if (prop) {
-		const char pname[] = "ti,edma-reserved-slot-ranges";
-		u32 (*tmp)[2];
-		s16 (*rsv_slots)[2];
-		size_t nelm = sz / sizeof(*tmp);
-		struct edma_rsv_info *rsv_info;
-		int i;
-
-		if (!nelm)
-			return info;
-
-		tmp = kcalloc(nelm, sizeof(*tmp), GFP_KERNEL);
-		if (!tmp)
-			return ERR_PTR(-ENOMEM);
-
-		rsv_info = devm_kzalloc(dev, sizeof(*rsv_info), GFP_KERNEL);
-		if (!rsv_info) {
-			kfree(tmp);
-			return ERR_PTR(-ENOMEM);
-		}
-
-		rsv_slots = devm_kcalloc(dev, nelm + 1, sizeof(*rsv_slots),
-					 GFP_KERNEL);
-		if (!rsv_slots) {
-			kfree(tmp);
-			return ERR_PTR(-ENOMEM);
-		}
-
-		ret = of_property_read_u32_array(dev->of_node, pname,
-						 (u32 *)tmp, nelm * 2);
-		if (ret) {
-			kfree(tmp);
-			return ERR_PTR(ret);
-		}
-
-		for (i = 0; i < nelm; i++) {
-			rsv_slots[i][0] = tmp[i][0];
-			rsv_slots[i][1] = tmp[i][1];
-		}
-		rsv_slots[nelm][0] = -1;
-		rsv_slots[nelm][1] = -1;
-
-		info->rsv = rsv_info;
-		info->rsv->rsv_slots = (const s16 (*)[2])rsv_slots;
-
-		kfree(tmp);
-	}
+	info->rsv = edma_get_reserved_ranges_dt(dev);
+	if (IS_ERR(info->rsv))
+		return ERR_CAST(info->rsv);
 
 	return info;
 }
@@ -2250,7 +2283,7 @@ static int edma_probe(struct platform_device *pdev)
 	struct edma_soc_info	*info = pdev->dev.platform_data;
 	s8			(*queue_priority_mapping)[2];
 	int			i, off;
-	const s16		(*rsv_slots)[2];
+	const s16		(*reserved)[2];
 	const s16		(*xbar_chans)[2];
 	int			irq;
 	char			*irq_name;
@@ -2331,15 +2364,29 @@ static int edma_probe(struct platform_device *pdev)
 	if (!ecc->slot_inuse)
 		return -ENOMEM;
 
+	ecc->reserved_chans = devm_kcalloc(dev,
+					   BITS_TO_LONGS(ecc->num_channels),
+					   sizeof(unsigned long), GFP_KERNEL);
+	if (!ecc->reserved_chans)
+		return -ENOMEM;
+
 	ecc->default_queue = info->default_queue;
 
 	if (info->rsv) {
 		/* Set the reserved slots in inuse list */
-		rsv_slots = info->rsv->rsv_slots;
-		if (rsv_slots) {
-			for (i = 0; rsv_slots[i][0] != -1; i++)
-				bitmap_set(ecc->slot_inuse, rsv_slots[i][0],
-					   rsv_slots[i][1]);
+		reserved = info->rsv->rsv_slots;
+		if (reserved) {
+			for (i = 0; reserved[i][0] != -1; i++)
+				bitmap_set(ecc->slot_inuse, reserved[i][0],
+					   reserved[i][1]);
+		}
+
+		/* Mark reserved channels */
+		reserved = info->rsv->rsv_chans;
+		if (reserved) {
+			for (i = 0; reserved[i][0] != -1; i++)
+				bitmap_set(ecc->reserved_chans, reserved[i][0],
+					   reserved[i][1]);
 		}
 	}
 
@@ -2437,6 +2484,10 @@ static int edma_probe(struct platform_device *pdev)
 	edma_dma_init(ecc, legacy_mode);
 
 	for (i = 0; i < ecc->num_channels; i++) {
+		/* Do not touch reserved channels */
+		if (test_bit(i, ecc->reserved_chans))
+			continue;
+
 		/* Assign all channels to the default queue */
 		edma_assign_channel_eventq(&ecc->slave_chans[i],
 					   info->default_queue);
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
