Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D14FFDA9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 05:58:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y6vBC8yU/uBrX5m0U2xRFYdWE+FpdmElqvijAOO1nSk=; b=DPRV/k5zRshKxP
	TBQ2ROQPZISMBpXSrMhn7lBst3Cw5wbh7aS3MpMvboQABU8T5aw0fMaBTAAM9s+QAL6kKShSGmQsB
	DiRRh3ss+jyS4RLzTGo5J39Soyh9cJT9t3779v7BbSGwK/5epTffLFJf5vb5sOuFaDVQqgeB2+PR0
	jaGfkESpK7Dr7kr69CnuXm5P4m/bSHWqMv7dPOmuj3lX5ypIWceiT09w68VNZDLEYPzWwmoc/ijU4
	DXEP6/9KuZ+1XbYVbKS22XT5dZwIxSKdP0C+stQHYlpWIdwp+3HwUhQ5149R7N6sT75KqCIYEpv2Y
	qzD84Nmd3RlMtA4bKEJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWZ7Y-0008Oo-9G; Mon, 18 Nov 2019 04:58:40 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWZ7G-0008Kl-GX; Mon, 18 Nov 2019 04:58:23 +0000
X-UUID: 35ddb3ea8e974cf59619e7895ff559c1-20191117
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=cFCudjariDZ9dPYX7zDkbr0ezd58dL0l8GffmHcsUbk=; 
 b=QwkOEv6xDa8706U8xhq8koxgLV3i2AKqfb02E/Dmd6oWL4A2eAVRdJ6ii1u6XFS7b9NoFt1VTtjy2uxMZlqnRYXkvCGXYISGewiy7JOZ3kEau2RGyhiuKdP/pqNCj9QhtRspVybj9f8aEGMhOp5f/vAgmTtS80rsEdThpvLab7I=;
X-UUID: 35ddb3ea8e974cf59619e7895ff559c1-20191117
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <luhua.xu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 913455749; Sun, 17 Nov 2019 20:58:19 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 17 Nov 2019 20:58:09 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS31N2.mediatek.inc (172.27.4.87) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 18 Nov 2019 12:57:06 +0800
Received: from localhost.localdomain (10.15.20.246) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 18 Nov 2019 12:57:43 +0800
From: Luhua Xu <luhua.xu@mediatek.com>
To: Mark Brown <broonie@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Allison Randal <allison@lohutok.net>, "Enrico
 Weigelt" <info@metux.net>, Kate Stewart <kstewart@linuxfoundation.org>,
 "Leilk Liu" <leilk.liu@mediatek.com>, Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 1/2] spi: mediatek: add SPI_CS_HIGH support
Date: Mon, 18 Nov 2019 12:57:16 +0800
Message-ID: <1574053037-26721-2-git-send-email-luhua.xu@mediatek.com>
X-Mailer: git-send-email 2.6.4
In-Reply-To: <1574053037-26721-1-git-send-email-luhua.xu@mediatek.com>
References: <1574053037-26721-1-git-send-email-luhua.xu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: DE1900F93D357E82F39EBE3D6EC1C540731BF3D8A546E01EB95384160FCD19D02000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_205822_554420_B4B1955C 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Luhua Xu <luhua.xu@mediatek.com>, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-spi@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Change to use SPI_CS_HIGH to support spi CS polarity setting
for chips support enhance_timing.

Signed-off-by: Luhua Xu <luhua.xu@mediatek.com>
---
 drivers/spi/spi-mt65xx.c                 | 12 ++++++++++--
 include/linux/platform_data/spi-mt65xx.h |  1 -
 2 files changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/spi/spi-mt65xx.c b/drivers/spi/spi-mt65xx.c
index 6888a4d..f599cce 100644
--- a/drivers/spi/spi-mt65xx.c
+++ b/drivers/spi/spi-mt65xx.c
@@ -139,7 +139,6 @@ static const struct mtk_spi_compatible mt8183_compat = {
  * supplies it.
  */
 static const struct mtk_chip_config mtk_default_chip_info = {
-	.cs_pol = 0,
 	.sample_sel = 0,
 };
 
@@ -230,10 +229,12 @@ static int mtk_spi_prepare_message(struct spi_master *master,
 #endif
 
 	if (mdata->dev_comp->enhance_timing) {
-		if (chip_config->cs_pol)
+		/* set CS polarity */
+		if (spi->mode & SPI_CS_HIGH)
 			reg_val |= SPI_CMD_CS_POL;
 		else
 			reg_val &= ~SPI_CMD_CS_POL;
+
 		if (chip_config->sample_sel)
 			reg_val |= SPI_CMD_SAMPLE_SEL;
 		else
@@ -264,6 +265,9 @@ static void mtk_spi_set_cs(struct spi_device *spi, bool enable)
 	u32 reg_val;
 	struct mtk_spi *mdata = spi_master_get_devdata(spi->master);
 
+	if (spi->mode & SPI_CS_HIGH)
+		enable = !enable;
+
 	reg_val = readl(mdata->base + SPI_CMD_REG);
 	if (!enable) {
 		reg_val |= SPI_CMD_PAUSE_EN;
@@ -647,6 +651,10 @@ static int mtk_spi_probe(struct platform_device *pdev)
 
 	mdata = spi_master_get_devdata(master);
 	mdata->dev_comp = of_id->data;
+
+	if (mdata->dev_comp->enhance_timing)
+		master->mode_bits |= SPI_CS_HIGH;
+
 	if (mdata->dev_comp->must_tx)
 		master->flags = SPI_MASTER_MUST_TX;
 
diff --git a/include/linux/platform_data/spi-mt65xx.h b/include/linux/platform_data/spi-mt65xx.h
index f0e6d64..65fd5ffd2 100644
--- a/include/linux/platform_data/spi-mt65xx.h
+++ b/include/linux/platform_data/spi-mt65xx.h
@@ -11,7 +11,6 @@
 
 /* Board specific platform_data */
 struct mtk_chip_config {
-	u32 cs_pol;
 	u32 sample_sel;
 };
 #endif
-- 
2.6.4
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
