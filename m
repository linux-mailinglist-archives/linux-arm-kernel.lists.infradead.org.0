Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C62841E6104
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 14:36:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X9aJyxmUp2VH/hwE2TFTwnILx4ZGJruX20EpbjlLAGc=; b=ZJ9Vp3IWnyrpqL
	nxSdHTgQOdoAdSP5lwcMXd7uMnSxAQQ2S36qeNdqKo+Of/igY815oF21YEYdc2X8kzAlaxlYVNR2G
	RMYg3DQmwmhsyvRtS7K+2VpmvygOcRaWI1PYbOA65A9APNsYzNUbSuLvl3vGhF/RUc26W6Lh8ff7h
	Cf/WieraJMmK+V9FCyPUmcqFZ3ciw/L4x5r0glU4VejUFA8VqtQ2utTGIQclNbsJSp2E9S/EVP6T7
	7mumd+cA2pxNaOaIvQIFts8KvAZ6ZJ9fULaFN693A4aztLNLg1dMjSKFDKVcneBcs0gc4mOYlCl5l
	R/iDQkOdc4qzcpiRz15w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeHm8-0008Or-1e; Thu, 28 May 2020 12:36:44 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeHkj-0007kV-AS
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 12:35:21 +0000
Received: by mail-wm1-f66.google.com with SMTP id r15so2960559wmh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 05:35:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+G7RdtEM9Tjyup1qpXdvSxuTiPiV2T/6Xv3zi3kgdqw=;
 b=agYjZQeOyZ2AKf60nZ90apYgp7Yv0o1BklkIQFUjoNOenWr/OvSkdORC94vYkhfcDg
 DOgAqd08KF2s8QEItyJuayobS5m2gdfgojHTRwjSc76k3rYZRkYNCq0Nx3J3GJaWT4bK
 kdogL5Yhno/HKBQkDHpHts1NCAqaAAA4jKFfAvVRsCiNRWwlvHPJfCqZhA2Z7FKnjNuR
 0mvQ3Io3RUeLuTVB8Xr8qE0+xDqRa9fM/iBCjtm7/UZmGsaliTfUEM2/gjVayPouAnzc
 7j8kyvWhtcMo4s0q+rMEKcpzWijxVxRGraJHOVVEqcSU7eJy/B4sXAn7rzn/HPHrF/a3
 5w2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+G7RdtEM9Tjyup1qpXdvSxuTiPiV2T/6Xv3zi3kgdqw=;
 b=YoXUQQZk6GvsUbzXptBcxrp+Ky0bmYThYwQaoIFMogBIg7tM3ypBW+ZGUkQ5CqE8cz
 UR/Bfap1Sjbrmrerxt3aNQ6whXz5HbgSyDVNs57bIoDRcySLBhXUMxqz4g3Q77Vqg3ca
 u1pPZ7Ur0qzbyjaYXc0ZxdZHYAsyL4zV47AXb+SMRhX10I6+t4ASmi98/pxFDEWDOFfL
 GC7OoBb2JvcB5fkfGj88hRowTnO+xLpUTPXh7yu+lYVSDFV/jbVgV0tTdNFIeE8n5n84
 r5bU/mZIgIJYFqF34DaerW/EiA85matjYnCXjCGi6rFq4+WlzX63bhnTpkVnXqTl7XDH
 gXrQ==
X-Gm-Message-State: AOAM533HwEfHJvWE9nsUzC+fkxKvHI0TZu4VKwTtNMZvQsZnTzfGIVW3
 WfH3r5vOTXxYlFS6I61q035xKQ==
X-Google-Smtp-Source: ABdhPJx9Jl9dNfglp38Fbyofob3ykhPOc3lBvfMMdzC7r7DXwkN65ZMkM1MkCvyFFas/ZyzprY7Siw==
X-Received: by 2002:a1c:2d14:: with SMTP id t20mr3308643wmt.28.1590669314028; 
 Thu, 28 May 2020 05:35:14 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id c140sm6027306wmd.18.2020.05.28.05.35.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 05:35:13 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: John Crispin <john@phrozen.org>, Sean Wang <sean.wang@mediatek.com>,
 Mark Lee <Mark-MC.Lee@mediatek.com>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Mark Brown <broonie@kernel.org>
Subject: [PATCH 2/2] net: ethernet: mtk-star-emac: use regmap bitops
Date: Thu, 28 May 2020 14:34:59 +0200
Message-Id: <20200528123459.21168-3-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200528123459.21168-1-brgl@bgdev.pl>
References: <20200528123459.21168-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_053517_440454_3E93319F 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Fabien Parent <fparent@baylibre.com>,
 linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Shrink the code visually by replacing regmap_update_bits() with
appropriate regmap bit operations where applicable.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 drivers/net/ethernet/mediatek/mtk_star_emac.c | 80 ++++++++-----------
 1 file changed, 35 insertions(+), 45 deletions(-)

diff --git a/drivers/net/ethernet/mediatek/mtk_star_emac.c b/drivers/net/ethernet/mediatek/mtk_star_emac.c
index 8596ca0e60eb..326ac792a4a0 100644
--- a/drivers/net/ethernet/mediatek/mtk_star_emac.c
+++ b/drivers/net/ethernet/mediatek/mtk_star_emac.c
@@ -413,8 +413,8 @@ static void mtk_star_dma_unmap_tx(struct mtk_star_priv *priv,
 
 static void mtk_star_nic_disable_pd(struct mtk_star_priv *priv)
 {
-	regmap_update_bits(priv->regs, MTK_STAR_REG_MAC_CFG,
-			   MTK_STAR_BIT_MAC_CFG_NIC_PD, 0);
+	regmap_clear_bits(priv->regs, MTK_STAR_REG_MAC_CFG,
+			  MTK_STAR_BIT_MAC_CFG_NIC_PD);
 }
 
 /* Unmask the three interrupts we care about, mask all others. */
@@ -434,41 +434,38 @@ static void mtk_star_intr_disable(struct mtk_star_priv *priv)
 
 static void mtk_star_intr_enable_tx(struct mtk_star_priv *priv)
 {
-	regmap_update_bits(priv->regs, MTK_STAR_REG_INT_MASK,
-			   MTK_STAR_BIT_INT_STS_TNTC, 0);
+	regmap_clear_bits(priv->regs, MTK_STAR_REG_INT_MASK,
+			  MTK_STAR_BIT_INT_STS_TNTC);
 }
 
 static void mtk_star_intr_enable_rx(struct mtk_star_priv *priv)
 {
-	regmap_update_bits(priv->regs, MTK_STAR_REG_INT_MASK,
-			   MTK_STAR_BIT_INT_STS_FNRC, 0);
+	regmap_clear_bits(priv->regs, MTK_STAR_REG_INT_MASK,
+			  MTK_STAR_BIT_INT_STS_FNRC);
 }
 
 static void mtk_star_intr_enable_stats(struct mtk_star_priv *priv)
 {
-	regmap_update_bits(priv->regs, MTK_STAR_REG_INT_MASK,
-			   MTK_STAR_REG_INT_STS_MIB_CNT_TH, 0);
+	regmap_clear_bits(priv->regs, MTK_STAR_REG_INT_MASK,
+			  MTK_STAR_REG_INT_STS_MIB_CNT_TH);
 }
 
 static void mtk_star_intr_disable_tx(struct mtk_star_priv *priv)
 {
-	regmap_update_bits(priv->regs, MTK_STAR_REG_INT_MASK,
-			   MTK_STAR_BIT_INT_STS_TNTC,
-			   MTK_STAR_BIT_INT_STS_TNTC);
+	regmap_set_bits(priv->regs, MTK_STAR_REG_INT_MASK,
+			MTK_STAR_BIT_INT_STS_TNTC);
 }
 
 static void mtk_star_intr_disable_rx(struct mtk_star_priv *priv)
 {
-	regmap_update_bits(priv->regs, MTK_STAR_REG_INT_MASK,
-			   MTK_STAR_BIT_INT_STS_FNRC,
-			   MTK_STAR_BIT_INT_STS_FNRC);
+	regmap_set_bits(priv->regs, MTK_STAR_REG_INT_MASK,
+			MTK_STAR_BIT_INT_STS_FNRC);
 }
 
 static void mtk_star_intr_disable_stats(struct mtk_star_priv *priv)
 {
-	regmap_update_bits(priv->regs, MTK_STAR_REG_INT_MASK,
-			   MTK_STAR_REG_INT_STS_MIB_CNT_TH,
-			   MTK_STAR_REG_INT_STS_MIB_CNT_TH);
+	regmap_set_bits(priv->regs, MTK_STAR_REG_INT_MASK,
+			MTK_STAR_REG_INT_STS_MIB_CNT_TH);
 }
 
 static unsigned int mtk_star_intr_read(struct mtk_star_priv *priv)
@@ -524,12 +521,10 @@ static void mtk_star_dma_init(struct mtk_star_priv *priv)
 
 static void mtk_star_dma_start(struct mtk_star_priv *priv)
 {
-	regmap_update_bits(priv->regs, MTK_STAR_REG_TX_DMA_CTRL,
-			   MTK_STAR_BIT_TX_DMA_CTRL_START,
-			   MTK_STAR_BIT_TX_DMA_CTRL_START);
-	regmap_update_bits(priv->regs, MTK_STAR_REG_RX_DMA_CTRL,
-			   MTK_STAR_BIT_RX_DMA_CTRL_START,
-			   MTK_STAR_BIT_RX_DMA_CTRL_START);
+	regmap_set_bits(priv->regs, MTK_STAR_REG_TX_DMA_CTRL,
+			MTK_STAR_BIT_TX_DMA_CTRL_START);
+	regmap_set_bits(priv->regs, MTK_STAR_REG_RX_DMA_CTRL,
+			MTK_STAR_BIT_RX_DMA_CTRL_START);
 }
 
 static void mtk_star_dma_stop(struct mtk_star_priv *priv)
@@ -553,16 +548,14 @@ static void mtk_star_dma_disable(struct mtk_star_priv *priv)
 
 static void mtk_star_dma_resume_rx(struct mtk_star_priv *priv)
 {
-	regmap_update_bits(priv->regs, MTK_STAR_REG_RX_DMA_CTRL,
-			   MTK_STAR_BIT_RX_DMA_CTRL_RESUME,
-			   MTK_STAR_BIT_RX_DMA_CTRL_RESUME);
+	regmap_set_bits(priv->regs, MTK_STAR_REG_RX_DMA_CTRL,
+			MTK_STAR_BIT_RX_DMA_CTRL_RESUME);
 }
 
 static void mtk_star_dma_resume_tx(struct mtk_star_priv *priv)
 {
-	regmap_update_bits(priv->regs, MTK_STAR_REG_TX_DMA_CTRL,
-			   MTK_STAR_BIT_TX_DMA_CTRL_RESUME,
-			   MTK_STAR_BIT_TX_DMA_CTRL_RESUME);
+	regmap_set_bits(priv->regs, MTK_STAR_REG_TX_DMA_CTRL,
+			MTK_STAR_BIT_TX_DMA_CTRL_RESUME);
 }
 
 static void mtk_star_set_mac_addr(struct net_device *ndev)
@@ -845,8 +838,8 @@ static int mtk_star_hash_wait_ok(struct mtk_star_priv *priv)
 		return ret;
 
 	/* Check the BIST_OK bit. */
-	regmap_read(priv->regs, MTK_STAR_REG_HASH_CTRL, &val);
-	if (!(val & MTK_STAR_BIT_HASH_CTRL_BIST_OK))
+	if (!regmap_test_bits(priv->regs, MTK_STAR_REG_HASH_CTRL,
+			      MTK_STAR_BIT_HASH_CTRL_BIST_OK))
 		return -EIO;
 
 	return 0;
@@ -880,12 +873,10 @@ static int mtk_star_reset_hash_table(struct mtk_star_priv *priv)
 	if (ret)
 		return ret;
 
-	regmap_update_bits(priv->regs, MTK_STAR_REG_HASH_CTRL,
-			   MTK_STAR_BIT_HASH_CTRL_BIST_EN,
-			   MTK_STAR_BIT_HASH_CTRL_BIST_EN);
-	regmap_update_bits(priv->regs, MTK_STAR_REG_TEST1,
-			   MTK_STAR_BIT_TEST1_RST_HASH_MBIST,
-			   MTK_STAR_BIT_TEST1_RST_HASH_MBIST);
+	regmap_set_bits(priv->regs, MTK_STAR_REG_HASH_CTRL,
+			MTK_STAR_BIT_HASH_CTRL_BIST_EN);
+	regmap_set_bits(priv->regs, MTK_STAR_REG_TEST1,
+			MTK_STAR_BIT_TEST1_RST_HASH_MBIST);
 
 	return mtk_star_hash_wait_ok(priv);
 }
@@ -1016,13 +1007,13 @@ static int mtk_star_enable(struct net_device *ndev)
 		return ret;
 
 	/* Setup the hashing algorithm */
-	regmap_update_bits(priv->regs, MTK_STAR_REG_ARL_CFG,
-			   MTK_STAR_BIT_ARL_CFG_HASH_ALG |
-			   MTK_STAR_BIT_ARL_CFG_MISC_MODE, 0);
+	regmap_clear_bits(priv->regs, MTK_STAR_REG_ARL_CFG,
+			  MTK_STAR_BIT_ARL_CFG_HASH_ALG |
+			  MTK_STAR_BIT_ARL_CFG_MISC_MODE);
 
 	/* Don't strip VLAN tags */
-	regmap_update_bits(priv->regs, MTK_STAR_REG_MAC_CFG,
-			   MTK_STAR_BIT_MAC_CFG_VLAN_STRIP, 0);
+	regmap_clear_bits(priv->regs, MTK_STAR_REG_MAC_CFG,
+			  MTK_STAR_BIT_MAC_CFG_VLAN_STRIP);
 
 	/* Setup DMA */
 	mtk_star_dma_init(priv);
@@ -1204,9 +1195,8 @@ static void mtk_star_set_rx_mode(struct net_device *ndev)
 	int ret;
 
 	if (ndev->flags & IFF_PROMISC) {
-		regmap_update_bits(priv->regs, MTK_STAR_REG_ARL_CFG,
-				   MTK_STAR_BIT_ARL_CFG_MISC_MODE,
-				   MTK_STAR_BIT_ARL_CFG_MISC_MODE);
+		regmap_set_bits(priv->regs, MTK_STAR_REG_ARL_CFG,
+				MTK_STAR_BIT_ARL_CFG_MISC_MODE);
 	} else if (netdev_mc_count(ndev) > MTK_STAR_HASHTABLE_MC_LIMIT ||
 		   ndev->flags & IFF_ALLMULTI) {
 		for (i = 0; i < MTK_STAR_HASHTABLE_SIZE_MAX; i++) {
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
