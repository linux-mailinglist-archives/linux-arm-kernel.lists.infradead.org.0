Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F7C3CF9E9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 14:35:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ru4JtZ/Q1EjtmSi2zsGR3HJSSDFJliwZvcIyjkNCoos=; b=jFWxScmYXzDcB1
	azsuW5p024bMHy+fJ1UTf3Vt0QXVhukDqaKw/v0pN5rvoqtcuPXAeuOB5SqoNwST9JdXi9bZqOHlE
	9f6/SM0joHXMhULnUvEy5flG9+NzogzcChEQH9LFL0flGjlV7I9AJ+X9KkVIRuOh4ZEyO0kkrpWO0
	+fWdNr86XY8OAeJpRy+Z/HkR6eNs4QH5nGLHnFbKlfIO0L25s+mWLUk1kX3r6TwktyGRrZiUzEIRs
	16lLHM+sepd1VyMfy58ofqv+46QSfqnAXo1lvp0nVqeAzR9XDio6aBiX1M+UnDRA0rZiljhibpCJV
	Kr4a/Wj8s4o2ij/3bnQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHohv-0007pO-Ll; Tue, 08 Oct 2019 12:35:15 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHohV-0007nw-JM
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 12:34:52 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Nicolas.Ferre@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="Nicolas.Ferre@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Nicolas.Ferre@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: FxSCSadRfyOhjmGJ0lq7LzW+WbK63wzhjmw9cb8R/74ZHo7MW1K73CZIBHrOxnJajFj0BaPoKB
 uv53CT0mlylEXBhYUY2oOoE53N3JtzGeVaqveo6n6pNhLxCjQFO2SBDHzZfAK91pH+ScGp/ZKY
 B6Qq/xYJA1i9jU6BWGX5qzgSh4Px3p2td819sVi/ji7ngj4iyPmZWFdD8e/RSUU+pQJBtBuzm9
 Wl2kJO2vZtn+1BXrBGSp7C9bDbhIx7RAj+3mO9OEDDDk4dfuQyZ+Yg6lgQRJdboFRs7csD7gme
 Qf4=
X-IronPort-AV: E=Sophos;i="5.67,270,1566889200"; d="scan'208";a="49212619"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 08 Oct 2019 05:34:48 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 8 Oct 2019 05:34:48 -0700
Received: from tenerife.corp.atmel.com (10.10.85.251) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 8 Oct 2019 05:34:46 -0700
From: Nicolas Ferre <nicolas.ferre@microchip.com>
To: Ludovic Desroches <ludovic.desroches@microchip.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-mmc@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <robh+dt@kernel.org>
Subject: [PATCH 2/2] mmc: sdhci-of-at91: add DT property to enable calibration
 on full reset
Date: Tue, 8 Oct 2019 14:34:32 +0200
Message-ID: <d25c8f909d039938a5696e8de32396cf2aaf54b7.1570537903.git.nicolas.ferre@microchip.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <4d269f30b1122487a2b5c8b48e24f78f2b75a509.1570537903.git.nicolas.ferre@microchip.com>
References: <4d269f30b1122487a2b5c8b48e24f78f2b75a509.1570537903.git.nicolas.ferre@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_053449_671273_F8ED4EA7 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, ulf.hansson@linaro.org, adrian.hunter@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a property to keep the analog calibration cell powered.
This feature is specific to the Microchip SDHCI IP and outside
of the standard SDHCI register map.

By always keeping it on, after a full reset sequence, we make sure
that this feature is activated and not disabled.

We expose a hardware property to the DT as this feature can be used
to adapt SDHCI behavior vs. how the SDCAL SoC pin is connected
on the board.

Note that managing properly this property would reduce
power consumption on some SAMA5D2 SiP revisions.

Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>
---
 drivers/mmc/host/sdhci-of-at91.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/mmc/host/sdhci-of-at91.c b/drivers/mmc/host/sdhci-of-at91.c
index e7d1920729fb..9571c4a882a9 100644
--- a/drivers/mmc/host/sdhci-of-at91.c
+++ b/drivers/mmc/host/sdhci-of-at91.c
@@ -27,6 +27,9 @@
 #define SDMMC_CACR	0x230
 #define		SDMMC_CACR_CAPWREN	BIT(0)
 #define		SDMMC_CACR_KEY		(0x46 << 8)
+#define SDMMC_CALCR	0x240
+#define		SDMMC_CALCR_EN		BIT(0)
+#define		SDMMC_CALCR_ALWYSON	BIT(4)
 
 #define SDHCI_AT91_PRESET_COMMON_CONF	0x400 /* drv type B, programmable clock mode */
 
@@ -35,6 +38,7 @@ struct sdhci_at91_priv {
 	struct clk *gck;
 	struct clk *mainck;
 	bool restore_needed;
+	bool cal_always_on;
 };
 
 static void sdhci_at91_set_force_card_detect(struct sdhci_host *host)
@@ -116,10 +120,17 @@ static void sdhci_at91_set_uhs_signaling(struct sdhci_host *host,
 
 static void sdhci_at91_reset(struct sdhci_host *host, u8 mask)
 {
+	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
+	struct sdhci_at91_priv *priv = sdhci_pltfm_priv(pltfm_host);
+
 	sdhci_reset(host, mask);
 
 	if (host->mmc->caps & MMC_CAP_NONREMOVABLE)
 		sdhci_at91_set_force_card_detect(host);
+
+	if (priv->cal_always_on && (mask & SDHCI_RESET_ALL))
+		sdhci_writel(host, SDMMC_CALCR_ALWYSON | SDMMC_CALCR_EN,
+			     SDMMC_CALCR);
 }
 
 static const struct sdhci_ops sdhci_at91_sama5d2_ops = {
@@ -345,6 +356,14 @@ static int sdhci_at91_probe(struct platform_device *pdev)
 
 	priv->restore_needed = false;
 
+	/*
+	 * if SDCAL pin is wrongly connected, we must enable
+	 * the analog calibration cell permanently.
+	 */
+	priv->cal_always_on =
+		device_property_read_bool(&pdev->dev,
+					  "microchip,sdcal-inverted");
+
 	ret = mmc_of_parse(host->mmc);
 	if (ret)
 		goto clocks_disable_unprepare;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
