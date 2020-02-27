Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7463171791
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 13:38:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6RngEUuUZzNXJRGCXwA5DpwK+IDZVl2jTF55pP7JTOU=; b=bzVoqHERPQmbdc
	G8RWwiygNn/nJHYuxBg8ZFqqWtZABU2kkWkVehFJcihpHrfO0UbNlgwdG6j94JmvsymVv9iItSw/j
	igqrCwDvaEYt/h7S5koF34qpV/fxaBqyDwB/xYd1Fy505phAY29IxtWhktW0f/PBcZwxIeNnee1qa
	697KKFwywpEN0GnWIQxge19O/ytt6b2aP7WBojlKa5kBza0rWa+GDDylZcFj7iFGRjo9gSLwUe8sf
	mGeBvOroPdgrZF9RecGsVyaISSZbanXtAGzFUEDxHKyKOmqGgm0XW4zOEH5HWK5vcO0KnQLBeMlZf
	7MIeXRjYlxn4QG6fCjKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7IR1-0001qw-VM; Thu, 27 Feb 2020 12:38:35 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7IQZ-0001ha-O4; Thu, 27 Feb 2020 12:38:09 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01RCc0fk117345;
 Thu, 27 Feb 2020 06:38:00 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1582807080;
 bh=ixAPQJdNXHfaYAwd0a821FNFCS6Wv9ULBLSO6ySWj1A=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=xq/zkBRHiJQJC5RR8xX2pyd9YnKnKWXTyhGYh56sQ4fF78VZqrOluvTurQXNR+yo4
 dPOhdBCJrsyn+dui1NYm4C4GHvzCQ4EY6d/h+4MlhGOVMW1Oa9FyjO06nmeI1qgfQU
 tJY/Ht/25QVtZEBYq7v1Yzk2qihUbePwgVB4LGBw=
Received: from DFLE111.ent.ti.com (dfle111.ent.ti.com [10.64.6.32])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 01RCc02h127709
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 27 Feb 2020 06:38:00 -0600
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 27
 Feb 2020 06:37:58 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 27 Feb 2020 06:37:58 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01RCbnvP100207;
 Thu, 27 Feb 2020 06:37:56 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vigneshr@ti.com>, <miquel.raynal@bootlin.com>, <han.xu@nxp.com>,
 <richard@nod.at>, <mripard@kernel.org>, <wens@csie.org>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>
Subject: [PATCH 2/7] mtd: rawnand: marvell: Release DMA channel on error
Date: Thu, 27 Feb 2020 14:37:44 +0200
Message-ID: <20200227123749.24064-3-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200227123749.24064-1-peter.ujfalusi@ti.com>
References: <20200227123749.24064-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_043807_888766_AC318E35 
X-CRM114-Status: GOOD (  14.13  )
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

Release the DMA channel on errors after the channel has been successfully
requested.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
 drivers/mtd/nand/raw/marvell_nand.c | 25 +++++++++++++++++++------
 1 file changed, 19 insertions(+), 6 deletions(-)

diff --git a/drivers/mtd/nand/raw/marvell_nand.c b/drivers/mtd/nand/raw/marvell_nand.c
index fb5abdcfb007..b6c7e1903396 100644
--- a/drivers/mtd/nand/raw/marvell_nand.c
+++ b/drivers/mtd/nand/raw/marvell_nand.c
@@ -2751,8 +2751,10 @@ static int marvell_nfc_init_dma(struct marvell_nfc *nfc)
 	}
 
 	r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	if (!r)
-		return -ENXIO;
+	if (!r) {
+		ret = -ENXIO;
+		goto release_channel;
+	}
 
 	config.src_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
 	config.dst_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
@@ -2763,7 +2765,7 @@ static int marvell_nfc_init_dma(struct marvell_nfc *nfc)
 	ret = dmaengine_slave_config(nfc->dma_chan, &config);
 	if (ret < 0) {
 		dev_err(nfc->dev, "Failed to configure DMA channel\n");
-		return ret;
+		goto release_channel;
 	}
 
 	/*
@@ -2773,12 +2775,20 @@ static int marvell_nfc_init_dma(struct marvell_nfc *nfc)
 	 * the provided buffer.
 	 */
 	nfc->dma_buf = kmalloc(MAX_CHUNK_SIZE, GFP_KERNEL | GFP_DMA);
-	if (!nfc->dma_buf)
-		return -ENOMEM;
+	if (!nfc->dma_buf) {
+		ret = -ENOMEM;
+		goto release_channel;
+	}
 
 	nfc->use_dma = true;
 
 	return 0;
+
+release_channel:
+	dma_release_channel(nfc->dma_chan);
+	nfc->dma_chan = NULL;
+
+	return ret;
 }
 
 static void marvell_nfc_reset(struct marvell_nfc *nfc)
@@ -2920,10 +2930,13 @@ static int marvell_nfc_probe(struct platform_device *pdev)
 
 	ret = marvell_nand_chips_init(dev, nfc);
 	if (ret)
-		goto unprepare_reg_clk;
+		goto release_dma;
 
 	return 0;
 
+release_dma:
+	if (nfc->use_dma)
+		dma_release_channel(nfc->dma_chan);
 unprepare_reg_clk:
 	clk_disable_unprepare(nfc->reg_clk);
 unprepare_core_clk:
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
