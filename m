Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58A8D1717B3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 13:42:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=blICcGfyrnPzfRijtSNCUEcxjlXqozy5zFfzbYm0vsc=; b=t/d1AgojBxIzjv
	rDyezF1cuDcRrmMGCL6ZaptVRCQxRerJ9NJTIaeZaRvzNocUfq1uGVBbqSK/C6wi1JCO05Fv/o86A
	HjQfRaw3DjflgKEwbXodZYxsgWXKrVK+cfuXqRpLWq3RDZFTy+JFehnPkFlo8PrCWNGClb5Ny/F9H
	ELZisDQkxyNtndyj93jzrDyAnbsEoOfDTXxV4/o0HEreyWLK8uBmZiGL4paUns4X1NZ34PvFgvPZY
	FdirtNfWpUCmwqYLsfTWxWKBqcMnoNSZ3VUvQKtfrsiaSZkXf+86HOa1XP+ILDOKFmzrE5TZTsXgZ
	K7JIiT9hLdXXjNu0hejQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7IUV-0006Nw-JA; Thu, 27 Feb 2020 12:42:11 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7IQo-0001xU-Kp; Thu, 27 Feb 2020 12:38:24 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01RCcFCs060774;
 Thu, 27 Feb 2020 06:38:15 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1582807095;
 bh=oZwRKKvJx/G8CRNhVZ7kLkdfzgNJ4E/mi5KsY0jh8pM=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=LGPj3ilOH+EuYGqvyVZX0Bpj5e6SFcaJeVANJdnB3tc+r1ATu2fWeSQ2pS4Efzckr
 HYJ1AreHkJXbOWhPXhym+ZC4mPKkA5EBk2CE/6Zs/6Hevtab9eyFKQ2vyrJTp4Ho0h
 fHAOBISG5nuRA750+8G4N/PPjCkgoqoOk72q0D58=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 01RCcFFj117513
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 27 Feb 2020 06:38:15 -0600
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 27
 Feb 2020 06:38:14 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 27 Feb 2020 06:38:14 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01RCbnvU100207;
 Thu, 27 Feb 2020 06:38:11 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vigneshr@ti.com>, <miquel.raynal@bootlin.com>, <han.xu@nxp.com>,
 <richard@nod.at>, <mripard@kernel.org>, <wens@csie.org>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>
Subject: [PATCH 7/7] mtd: rawnand: stm32_fmc2: Use dma_request_chan() instead
 dma_request_slave_channel()
Date: Thu, 27 Feb 2020 14:37:49 +0200
Message-ID: <20200227123749.24064-8-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200227123749.24064-1-peter.ujfalusi@ti.com>
References: <20200227123749.24064-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_043822_812578_63974D7B 
X-CRM114-Status: GOOD (  14.32  )
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

Use using dma_request_chan() directly and inform user of error in case the
DMA request failed.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
 drivers/mtd/nand/raw/stm32_fmc2_nand.c | 44 ++++++++++++++++++++++----
 1 file changed, 37 insertions(+), 7 deletions(-)

diff --git a/drivers/mtd/nand/raw/stm32_fmc2_nand.c b/drivers/mtd/nand/raw/stm32_fmc2_nand.c
index 3ba73f18841f..b6d45cd911ae 100644
--- a/drivers/mtd/nand/raw/stm32_fmc2_nand.c
+++ b/drivers/mtd/nand/raw/stm32_fmc2_nand.c
@@ -1606,15 +1606,36 @@ static int stm32_fmc2_setup_interface(struct nand_chip *chip, int chipnr,
 /* DMA configuration */
 static int stm32_fmc2_dma_setup(struct stm32_fmc2_nfc *fmc2)
 {
-	int ret;
+	int ret = 0;
 
-	fmc2->dma_tx_ch = dma_request_slave_channel(fmc2->dev, "tx");
-	fmc2->dma_rx_ch = dma_request_slave_channel(fmc2->dev, "rx");
-	fmc2->dma_ecc_ch = dma_request_slave_channel(fmc2->dev, "ecc");
+	fmc2->dma_tx_ch = dma_request_chan(fmc2->dev, "tx");
+	if (IS_ERR(fmc2->dma_tx_ch)) {
+		ret = PTR_ERR(fmc2->dma_tx_ch);
+		if (ret != -ENODEV)
+			dev_err(fmc2->dev,
+				"failed to request tx DMA channel: %d\n", ret);
+		fmc2->dma_tx_ch = NULL;
+		goto err_dma;
+	}
 
-	if (!fmc2->dma_tx_ch || !fmc2->dma_rx_ch || !fmc2->dma_ecc_ch) {
-		dev_warn(fmc2->dev, "DMAs not defined in the device tree, polling mode is used\n");
-		return 0;
+	fmc2->dma_rx_ch = dma_request_chan(fmc2->dev, "rx");
+	if (IS_ERR(fmc2->dma_rx_ch)) {
+		ret = PTR_ERR(fmc2->dma_rx_ch);
+		if (ret != -ENODEV)
+			dev_err(fmc2->dev,
+				"failed to request rx DMA channel: %d\n", ret);
+		fmc2->dma_rx_ch = NULL;
+		goto err_dma;
+	}
+
+	fmc2->dma_ecc_ch = dma_request_chan(fmc2->dev, "ecc");
+	if (IS_ERR(fmc2->dma_ecc_ch)) {
+		ret = PTR_ERR(fmc2->dma_ecc_ch);
+		if (ret != -ENODEV)
+			dev_err(fmc2->dev,
+				"failed to request ecc DMA channel: %d\n", ret);
+		fmc2->dma_ecc_ch = NULL;
+		goto err_dma;
 	}
 
 	ret = sg_alloc_table(&fmc2->dma_ecc_sg, FMC2_MAX_SG, GFP_KERNEL);
@@ -1635,6 +1656,15 @@ static int stm32_fmc2_dma_setup(struct stm32_fmc2_nfc *fmc2)
 	init_completion(&fmc2->dma_ecc_complete);
 
 	return 0;
+
+err_dma:
+	if (ret == -ENODEV) {
+		dev_warn(fmc2->dev,
+			 "DMAs not defined in the DT, polling mode is used\n");
+		ret = 0;
+	}
+
+	return ret;
 }
 
 /* NAND callbacks setup */
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
