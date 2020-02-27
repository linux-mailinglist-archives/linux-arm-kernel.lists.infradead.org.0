Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AB0C1717AE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 13:41:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vmkKHUdv1W2wvhFO84R4YzylMvAGN2Kkh1jCF9u1UEU=; b=j0jw381PSErYuI
	b4iGDXr6XMuSGYPviBXshCaOj5gmt1R8PyAuW5mWznJdcUyc+gpx1k9PkIaTTrFnpcrKohbTxk5Z5
	dxYDBwu0D05s+Mrz4VQHQj/yqJohGuW2/XB+n9RIn5js2fLCUsrctNya7mqZgkRHoT1eTSYHyJn3T
	/V/5vRoYT1siVyd9LFKnnYCJTM99btZoHInIp567wJq/SqkA4rzxPJveeFTG046IRm1Fro3QN3tQI
	65hY1yrCTwgTV16Cc1CfFqnN/ZzdMnMUSH1GLsQLCHSW+mPimsCZJjWO73/a887gh2jYUZQ5R1K9t
	xF/2CqBQGVlsvxegZMqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7ITy-0005vW-SM; Thu, 27 Feb 2020 12:41:38 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7IQj-0001se-9S; Thu, 27 Feb 2020 12:38:18 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01RCcBZN060763;
 Thu, 27 Feb 2020 06:38:11 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1582807091;
 bh=gB00BvfmUubTYpAbr6oIRKU7s9SAe7mdFdoDfZXeBKs=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=v1GWo8JBT9+cLiKgmF0y2MebVaCu4T5uXNoQJivXViAofTc3748o05dz42Pgi3ks2
 VKxVYuLN96eSqKV0WvRuQuTklI+kzjlU8McBrZrUIf+xCt/TJgvP7K1DwUUcFck1xO
 QXAna0Lr2IwC2Y7CmU8Ks1qR52OEK0EIpJOy+1Ps=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 01RCcBrg117456
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 27 Feb 2020 06:38:11 -0600
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 27
 Feb 2020 06:38:11 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 27 Feb 2020 06:38:11 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01RCbnvT100207;
 Thu, 27 Feb 2020 06:38:08 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vigneshr@ti.com>, <miquel.raynal@bootlin.com>, <han.xu@nxp.com>,
 <richard@nod.at>, <mripard@kernel.org>, <wens@csie.org>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>
Subject: [PATCH 6/7] mtd: rawnand: qcom: Use dma_request_chan() instead
 dma_request_slave_channel()
Date: Thu, 27 Feb 2020 14:37:48 +0200
Message-ID: <20200227123749.24064-7-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200227123749.24064-1-peter.ujfalusi@ti.com>
References: <20200227123749.24064-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_043817_434932_7B6E2FF1 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: vkoul@kernel.org, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

dma_request_slave_channel() is a wrapper on top of dma_request_chan()
eating up the error code.

Use using dma_request_chan() directly to return the real error code.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
 drivers/mtd/nand/raw/qcom_nandc.c | 50 ++++++++++++++++++++-----------
 1 file changed, 33 insertions(+), 17 deletions(-)

diff --git a/drivers/mtd/nand/raw/qcom_nandc.c b/drivers/mtd/nand/raw/qcom_nandc.c
index ca21cb3836dc..5b11c7061497 100644
--- a/drivers/mtd/nand/raw/qcom_nandc.c
+++ b/drivers/mtd/nand/raw/qcom_nandc.c
@@ -2696,24 +2696,36 @@ static int qcom_nandc_alloc(struct qcom_nand_controller *nandc)
 			return -EIO;
 		}
 
-		nandc->tx_chan = dma_request_slave_channel(nandc->dev, "tx");
-		if (!nandc->tx_chan) {
-			dev_err(nandc->dev, "failed to request tx channel\n");
-			ret = -ENODEV;
+		nandc->tx_chan = dma_request_chan(nandc->dev, "tx");
+		if (IS_ERR(nandc->tx_chan)) {
+			ret = PTR_ERR(nandc->tx_chan);
+			nandc->tx_chan = NULL;
+			if (ret != -EPROBE_DEFER)
+				dev_err(nandc->dev,
+					"tx DMA channel request failed: %d\n",
+					ret);
 			goto unalloc;
 		}
 
-		nandc->rx_chan = dma_request_slave_channel(nandc->dev, "rx");
-		if (!nandc->rx_chan) {
-			dev_err(nandc->dev, "failed to request rx channel\n");
-			ret = -ENODEV;
+		nandc->rx_chan = dma_request_chan(nandc->dev, "rx");
+		if (IS_ERR(nandc->rx_chan)) {
+			ret = PTR_ERR(nandc->rx_chan);
+			nandc->rx_chan = NULL;
+			if (ret != -EPROBE_DEFER)
+				dev_err(nandc->dev,
+					"rx DMA channel request failed: %d\n",
+					ret);
 			goto unalloc;
 		}
 
-		nandc->cmd_chan = dma_request_slave_channel(nandc->dev, "cmd");
-		if (!nandc->cmd_chan) {
-			dev_err(nandc->dev, "failed to request cmd channel\n");
-			ret = -ENODEV;
+		nandc->cmd_chan = dma_request_chan(nandc->dev, "cmd");
+		if (IS_ERR(nandc->cmd_chan)) {
+			ret = PTR_ERR(nandc->cmd_chan);
+			nandc->cmd_chan = NULL;
+			if (ret != -EPROBE_DEFER)
+				dev_err(nandc->dev,
+					"cmd DMA channel request failed: %d\n",
+					ret);
 			goto unalloc;
 		}
 
@@ -2732,11 +2744,15 @@ static int qcom_nandc_alloc(struct qcom_nand_controller *nandc)
 			goto unalloc;
 		}
 	} else {
-		nandc->chan = dma_request_slave_channel(nandc->dev, "rxtx");
-		if (!nandc->chan) {
-			dev_err(nandc->dev,
-				"failed to request slave channel\n");
-			return -ENODEV;
+		nandc->chan = dma_request_chan(nandc->dev, "rxtx");
+		if (IS_ERR(nandc->chan)) {
+			ret = PTR_ERR(nandc->chan);
+			nandc->chan = NULL;
+			if (ret != -EPROBE_DEFER)
+				dev_err(nandc->dev,
+					"rxtx DMA channel request failed: %d\n",
+					ret);
+			return ret;
 		}
 	}
 
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
