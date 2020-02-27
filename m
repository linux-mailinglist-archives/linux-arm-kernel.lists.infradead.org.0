Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDCF81717AB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 13:41:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KmQNpORAMxIiFov/8T4CWmgE0Kt0HlCS9/cLqHf4Er0=; b=Ago7zlw9qFqMad
	YjVc7N8qL4gJRpxXHnzu/0sn5UNM9wXUFY7iMwfUVA+s3HRYIGnhxlhOvVEYX02sNkk1ylpN09+Iw
	RX1SaUp6XksEO3cCgTZit2NpRMydpWzCpVQe55eQZZ7kYRCz/2449Z5AXQXWL8+1XXGB09/X9z5Yi
	ALR5RzqmnBhh8xcEK6fLPqeH0KC9PBQzMBbA06xB4LQsIdSBQqTUAsj+RpApqWgPdnKBAqNGk9giu
	HUJakiPpIo0Og+LKlqpa39CDI8uwUA7GJYkaSM6n2VKszKvNvCv7o3WRiUCpRYyfrk1OwEufmxWL5
	RfM1PFECP42KweSQUzHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7ITV-0005Qu-S6; Thu, 27 Feb 2020 12:41:09 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7IQh-0001qx-HD; Thu, 27 Feb 2020 12:38:17 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01RCc9Mk060757;
 Thu, 27 Feb 2020 06:38:09 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1582807089;
 bh=lxEo+tSFG1DiFTuGLCWGl5deytcPL1kaEzXneacjjbw=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=oZL24vsxHovF8nXugumq/4kpyAKXXeqTUY1t/66zkkyPctslE5OdkMcqtTXVKVyJz
 gFtEaLxo2iAGhT5//6BCRr55eklI8bxV43JVe4jd5zPDsKkZMyvhH94lmNsEtNXtZP
 SZdG/ErlPRw6mnYtezQpHzM5bxrzKwImdFxpwkL4=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 01RCc8L5128189
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 27 Feb 2020 06:38:09 -0600
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 27
 Feb 2020 06:38:08 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 27 Feb 2020 06:38:08 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01RCbnvS100207;
 Thu, 27 Feb 2020 06:38:05 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vigneshr@ti.com>, <miquel.raynal@bootlin.com>, <han.xu@nxp.com>,
 <richard@nod.at>, <mripard@kernel.org>, <wens@csie.org>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>
Subject: [PATCH 5/7] mtd: rawnand: qcom: Release resources on failure within
 qcom_nandc_alloc()
Date: Thu, 27 Feb 2020 14:37:47 +0200
Message-ID: <20200227123749.24064-6-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200227123749.24064-1-peter.ujfalusi@ti.com>
References: <20200227123749.24064-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_043816_029159_07A7CE82 
X-CRM114-Status: GOOD (  12.45  )
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

In case when DMA channel request or alloc_bam_transaction() fails,
dma_unmap_single() and any channels already requested should be released.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
 drivers/mtd/nand/raw/qcom_nandc.c | 61 +++++++++++++++++--------------
 1 file changed, 34 insertions(+), 27 deletions(-)

diff --git a/drivers/mtd/nand/raw/qcom_nandc.c b/drivers/mtd/nand/raw/qcom_nandc.c
index 7bb9a7e8e1e7..ca21cb3836dc 100644
--- a/drivers/mtd/nand/raw/qcom_nandc.c
+++ b/drivers/mtd/nand/raw/qcom_nandc.c
@@ -2628,6 +2628,29 @@ static const struct nand_controller_ops qcom_nandc_ops = {
 	.attach_chip = qcom_nand_attach_chip,
 };
 
+static void qcom_nandc_unalloc(struct qcom_nand_controller *nandc)
+{
+	if (nandc->props->is_bam) {
+		if (!dma_mapping_error(nandc->dev, nandc->reg_read_dma))
+			dma_unmap_single(nandc->dev, nandc->reg_read_dma,
+					 MAX_REG_RD *
+					 sizeof(*nandc->reg_read_buf),
+					 DMA_FROM_DEVICE);
+
+		if (nandc->tx_chan)
+			dma_release_channel(nandc->tx_chan);
+
+		if (nandc->rx_chan)
+			dma_release_channel(nandc->rx_chan);
+
+		if (nandc->cmd_chan)
+			dma_release_channel(nandc->cmd_chan);
+	} else {
+		if (nandc->chan)
+			dma_release_channel(nandc->chan);
+	}
+}
+
 static int qcom_nandc_alloc(struct qcom_nand_controller *nandc)
 {
 	int ret;
@@ -2676,19 +2699,22 @@ static int qcom_nandc_alloc(struct qcom_nand_controller *nandc)
 		nandc->tx_chan = dma_request_slave_channel(nandc->dev, "tx");
 		if (!nandc->tx_chan) {
 			dev_err(nandc->dev, "failed to request tx channel\n");
-			return -ENODEV;
+			ret = -ENODEV;
+			goto unalloc;
 		}
 
 		nandc->rx_chan = dma_request_slave_channel(nandc->dev, "rx");
 		if (!nandc->rx_chan) {
 			dev_err(nandc->dev, "failed to request rx channel\n");
-			return -ENODEV;
+			ret = -ENODEV;
+			goto unalloc;
 		}
 
 		nandc->cmd_chan = dma_request_slave_channel(nandc->dev, "cmd");
 		if (!nandc->cmd_chan) {
 			dev_err(nandc->dev, "failed to request cmd channel\n");
-			return -ENODEV;
+			ret = -ENODEV;
+			goto unalloc;
 		}
 
 		/*
@@ -2702,7 +2728,8 @@ static int qcom_nandc_alloc(struct qcom_nand_controller *nandc)
 		if (!nandc->bam_txn) {
 			dev_err(nandc->dev,
 				"failed to allocate bam transaction\n");
-			return -ENOMEM;
+			ret = -ENOMEM;
+			goto unalloc;
 		}
 	} else {
 		nandc->chan = dma_request_slave_channel(nandc->dev, "rxtx");
@@ -2720,29 +2747,9 @@ static int qcom_nandc_alloc(struct qcom_nand_controller *nandc)
 	nandc->controller.ops = &qcom_nandc_ops;
 
 	return 0;
-}
-
-static void qcom_nandc_unalloc(struct qcom_nand_controller *nandc)
-{
-	if (nandc->props->is_bam) {
-		if (!dma_mapping_error(nandc->dev, nandc->reg_read_dma))
-			dma_unmap_single(nandc->dev, nandc->reg_read_dma,
-					 MAX_REG_RD *
-					 sizeof(*nandc->reg_read_buf),
-					 DMA_FROM_DEVICE);
-
-		if (nandc->tx_chan)
-			dma_release_channel(nandc->tx_chan);
-
-		if (nandc->rx_chan)
-			dma_release_channel(nandc->rx_chan);
-
-		if (nandc->cmd_chan)
-			dma_release_channel(nandc->cmd_chan);
-	} else {
-		if (nandc->chan)
-			dma_release_channel(nandc->chan);
-	}
+unalloc:
+	qcom_nandc_unalloc(nandc);
+	return ret;
 }
 
 /* one time setup of a few nand controller registers */
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
