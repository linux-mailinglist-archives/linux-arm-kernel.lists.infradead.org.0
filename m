Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB3596644
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 18:25:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X8KELCCsKF8HaKWKE1Mn8SskS8sEARJVySbdEHJnvOw=; b=GczieIUfLTnJzr
	0CRg4lf0jFehKv1VhwJic6esryQYJseDtCktzk6I2lXUtVsox3bcjWN8SsSe1y1VoAmAbzGKye/GW
	Mw+zD8ZdAH+kVMdoOZiPVpkAoHBkwDbahwqpEXVxUEjSpiCTO2tajrlibAAtHht5BSHHYhAswZ3OH
	Pivp+Isw1BVskdFK1g06cLhySGhdQZ/+gGobA6AEm/1G+/LQrJp4SxJfMZfqNFiJBImCGiCktad7W
	oF7kDrwEghJu1hEWKzWyK0RRtu1ispJNJDHNjRWduROadLNRnPog0q0qk4/EEe57oGf+lLAtOnz69
	h+UvxgM5tZTYEfWkpLOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i06wp-0005LZ-T3; Tue, 20 Aug 2019 16:25:27 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i06wJ-0003vk-IP
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 16:24:57 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Codrin.Ciubotariu@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="Codrin.Ciubotariu@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Codrin.Ciubotariu@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: dA6LfjsoAA4tvGSQdYKXhvAjM1EInVQmSH+DEaD3R2i64g3NRkK2BsgQdGdBanQ2Fe9NX0IqFI
 1GfBX8appVOUjJln3I4d0lDfl8JxDxrenODMp0NUCpU87VRLEnBpEEV/gferMaxHm0uRro2Fz0
 bPvf69YtpsaX/Zym+Wc5YPS+FU/TT2DuinC1T8zrh/0AJKElmUfTPwz6tEIEla3uhLhLJWs2Ia
 e/l4QqcW3RVIV8CkejmgGISG4OGi/ww4h4WpSh9IksPVNx86hCzP1GfIyXkcjYctbUU0LoGQgp
 fHo=
X-IronPort-AV: E=Sophos;i="5.64,408,1559545200"; d="scan'208";a="44306429"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 Aug 2019 09:24:54 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 20 Aug 2019 09:24:53 -0700
Received: from rob-ult-m19940.microchip.com (10.10.85.251) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 20 Aug 2019 09:24:50 -0700
From: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
To: <alsa-devel@alsa-project.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH 1/3] ASoC: mchp-i2s-mcc: Wait for RX/TX RDY only if controller
 is running
Date: Tue, 20 Aug 2019 19:24:10 +0300
Message-ID: <20190820162411.24836-3-codrin.ciubotariu@microchip.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190820162411.24836-1-codrin.ciubotariu@microchip.com>
References: <20190820162411.24836-1-codrin.ciubotariu@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_092455_715466_713C738C 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alexandre.belloni@bootlin.com, tiwai@suse.com,
 ludovic.desroches@microchip.com, broonie@kernel.org,
 Codrin Ciubotariu <codrin.ciubotariu@microchip.com>, perex@perex.cz
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since hw_free() can be called multiple times and not just after a stop
trigger command, we should check whether the RX or TX ready interrupt was
truly enabled previously. For this, we assure that the condition of the
wait event is always true, except when RX/TX interrupts are enabled.

Fixes: 7e0cdf545a55 ("ASoC: mchp-i2s-mcc: add driver for I2SC Multi-Channel Controller")
Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
---
 sound/soc/atmel/mchp-i2s-mcc.c | 28 ++++++++++++++++------------
 1 file changed, 16 insertions(+), 12 deletions(-)

diff --git a/sound/soc/atmel/mchp-i2s-mcc.c b/sound/soc/atmel/mchp-i2s-mcc.c
index 86495883ca3f..8272915fa09b 100644
--- a/sound/soc/atmel/mchp-i2s-mcc.c
+++ b/sound/soc/atmel/mchp-i2s-mcc.c
@@ -686,22 +686,24 @@ static int mchp_i2s_mcc_hw_free(struct snd_pcm_substream *substream,
 		err = wait_event_interruptible_timeout(dev->wq_txrdy,
 						       dev->tx_rdy,
 						       msecs_to_jiffies(500));
+		if (err == 0) {
+			dev_warn_once(dev->dev,
+				      "Timeout waiting for Tx ready\n");
+			regmap_write(dev->regmap, MCHP_I2SMCC_IDRA,
+				     MCHP_I2SMCC_INT_TXRDY_MASK(dev->channels));
+			dev->tx_rdy = 1;
+		}
 	} else {
 		err = wait_event_interruptible_timeout(dev->wq_rxrdy,
 						       dev->rx_rdy,
 						       msecs_to_jiffies(500));
-	}
-
-	if (err == 0) {
-		u32 idra;
-
-		dev_warn_once(dev->dev, "Timeout waiting for %s\n",
-			      is_playback ? "Tx ready" : "Rx ready");
-		if (is_playback)
-			idra = MCHP_I2SMCC_INT_TXRDY_MASK(dev->channels);
-		else
-			idra = MCHP_I2SMCC_INT_RXRDY_MASK(dev->channels);
-		regmap_write(dev->regmap, MCHP_I2SMCC_IDRA, idra);
+		if (err == 0) {
+			dev_warn_once(dev->dev,
+				      "Timeout waiting for Rx ready\n");
+			regmap_write(dev->regmap, MCHP_I2SMCC_IDRA,
+				     MCHP_I2SMCC_INT_RXRDY_MASK(dev->channels));
+			dev->rx_rdy = 1;
+		}
 	}
 
 	if (!mchp_i2s_mcc_is_running(dev)) {
@@ -809,6 +811,8 @@ static int mchp_i2s_mcc_dai_probe(struct snd_soc_dai *dai)
 
 	init_waitqueue_head(&dev->wq_txrdy);
 	init_waitqueue_head(&dev->wq_rxrdy);
+	dev->tx_rdy = 1;
+	dev->rx_rdy = 1;
 
 	snd_soc_dai_init_dma_data(dai, &dev->playback, &dev->capture);
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
