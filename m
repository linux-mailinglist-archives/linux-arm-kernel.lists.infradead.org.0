Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E71C1717AA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 13:40:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l1DBoEXug/afWs/6qi7bU1EKIyZ8LiWsp9RjLfQH1vM=; b=ZwSeiXd2QUhh7x
	gsisQyJv8eD9R3wKKzw2imuVL4U7D+ZYazGg4/G/Sa1iGDELylTh/feGuVW9D6tm+t6IIdjV10uF/
	Tx52NuiUHrFp/qLLpzk+1VDNnor+Cc0SxxmZKrBtTz/u5ZWaRTaalIdWm8upcbHI7G2Etql1I01u6
	y6dMovwd5yKrgXJHuCrq3cDt6lXbNREk3FyXrRtKwzKadHYE7dxZmP85/8Z+AqrTUdK1a06Lc3jl3
	MPlHMySnE0Ldri8Pl12bvxz2EVFpFr6cNSQc6VdOys6ZiaTv1c398TAi5G3djqK72bvC6KGrbt0Qw
	odrS1BTegpYEjXLNzF5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7ITI-0005D4-G5; Thu, 27 Feb 2020 12:40:56 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7IQf-0001oh-AD; Thu, 27 Feb 2020 12:38:14 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01RCc5t7117401;
 Thu, 27 Feb 2020 06:38:05 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1582807085;
 bh=rajg4uTg/TEsV6CsUleF0jbc10ghlyv7bjJVEvPVLiU=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=FskWtjnNY3OwRDzpQjNUVBsqmFuGzzDUUaB6Knvmlo3V0fmrNa5PSNlX6+uQd4cHG
 4fSA44R8tHLbSovbpRwMeoWwDoY6uBMUwGT1TmvE3AygtePsainRv6ZOTv7O/PtMrS
 q4TLs6F981JAxJOz2AWqn0fBGOd2EJHz3XpJXsDM=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 01RCc5kG117291
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 27 Feb 2020 06:38:05 -0600
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 27
 Feb 2020 06:38:04 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 27 Feb 2020 06:38:05 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01RCbnvR100207;
 Thu, 27 Feb 2020 06:38:02 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vigneshr@ti.com>, <miquel.raynal@bootlin.com>, <han.xu@nxp.com>,
 <richard@nod.at>, <mripard@kernel.org>, <wens@csie.org>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>
Subject: [PATCH 4/7] mtd: rawnand: sunxi: Use dma_request_chan() instead
 dma_request_slave_channel()
Date: Thu, 27 Feb 2020 14:37:46 +0200
Message-ID: <20200227123749.24064-5-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200227123749.24064-1-peter.ujfalusi@ti.com>
References: <20200227123749.24064-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_043813_438881_518B43CD 
X-CRM114-Status: GOOD (  13.53  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
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

By using dma_request_chan() directly the driver can support deferred
probing against DMA.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
 drivers/mtd/nand/raw/sunxi_nand.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/mtd/nand/raw/sunxi_nand.c b/drivers/mtd/nand/raw/sunxi_nand.c
index 37a4ac0dd85b..3a24c4512af7 100644
--- a/drivers/mtd/nand/raw/sunxi_nand.c
+++ b/drivers/mtd/nand/raw/sunxi_nand.c
@@ -2123,8 +2123,16 @@ static int sunxi_nfc_probe(struct platform_device *pdev)
 	if (ret)
 		goto out_ahb_reset_reassert;
 
-	nfc->dmac = dma_request_slave_channel(dev, "rxtx");
-	if (nfc->dmac) {
+	nfc->dmac = dma_request_chan(dev, "rxtx");
+	if (IS_ERR(nfc->dmac)) {
+		ret = PTR_ERR(nfc->dmac);
+		if (ret == -EPROBE_DEFER)
+			goto out_ahb_reset_reassert;
+
+		/* Ignore errors to fall back to PIO mode */
+		dev_warn(dev, "failed to request rxtx DMA channel: %d\n", ret);
+		nfc->dmac = NULL;
+	} else {
 		struct dma_slave_config dmac_cfg = { };
 
 		dmac_cfg.src_addr = r->start + nfc->caps->reg_io_data;
@@ -2138,9 +2146,6 @@ static int sunxi_nfc_probe(struct platform_device *pdev)
 		if (nfc->caps->extra_mbus_conf)
 			writel(readl(nfc->regs + NFC_REG_CTL) |
 			       NFC_DMA_TYPE_NORMAL, nfc->regs + NFC_REG_CTL);
-
-	} else {
-		dev_warn(dev, "failed to request rxtx DMA channel\n");
 	}
 
 	platform_set_drvdata(pdev, nfc);
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
