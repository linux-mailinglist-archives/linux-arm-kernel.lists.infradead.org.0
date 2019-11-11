Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F1C8F6ED6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 07:59:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bcCpqAWKvAmNGznGfj5gtO1+Uq5ob8hMD1fVvtiADCE=; b=uLkesbO6cBkgk8O+hzSNEp0fQM
	++4+TtUtm5CVaLrnXK00FOXHnkXDpnzJawb2gDISI0J/+Zbo+OZI1w2HnEjtg9Ab9mygG6iSK/6hL
	3Ns6txoA1Nvhd28u++Jx2AI3a5103j1w8P7IW3GfJOGZXjwgqwVa6iAvedxtF/ErXdxdei0iJmuze
	NER5Gb+PHSsjPi+9yTDXWgnzGhqN3+tSBNayF/jZqci2/yOUe6cDLRqJ4Vxqe9NXw5XmmOlgC90ld
	3bwGsp1AUlPixsQliJ2v7elWaGKwrPNeV3veNVT3MJksXa0WjET2IyJtJzAWyWDYgb4G9eQHjI71N
	Yyo3Sb+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU3fI-0004QK-8W; Mon, 11 Nov 2019 06:59:08 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU3dp-0002zZ-Ho
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 06:57:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1573455362;
 bh=8HV3EiHpIHVHXBdME3Q/eToeSF7Jm2HaGy/rlqtR8Ok=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=OS35HakRmMN/vW5B0NGPW1fASvPZvo4LGO0ksNKg+GhWg9pzowrKqRT85QStuX6gn
 xMEBbwHgAh5RJaEzAOgRlqGVccMJI3SMOP+7hX3a5fjJxlT2YNQHOwIvh6uhAy/CG8
 gAy6rzbLUiel3E9XWWIW8mFt0REfNkPoRtUI3nXY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.112]) by mail.gmx.com
 (mrgmx005 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MfYPi-1hxDuU2AdE-00g0F1; Mon, 11 Nov 2019 07:56:02 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Matthias Brugger <matthias.bgg@kernel.org>,
 Matthias Brugger <mbrugger@suse.com>,
 "David S . Miller" <davem@davemloft.net>,
 Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH V4 net-next 4/7] net: bcmgenet: Add BCM2711 support
Date: Mon, 11 Nov 2019 07:55:38 +0100
Message-Id: <1573455341-22813-5-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573455341-22813-1-git-send-email-wahrenst@gmx.net>
References: <1573455341-22813-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:tRBUOnoU9EWg6WOY04KifIkEQDRnA9kKZz4ezZGLLoMf4Ocl2tg
 uk0mMja29Qfoz81SKYJlwy3j7OXMtUbHvR/7dbxmCCBe7N7tWpx/ejkqSwzxoQOHEfQs+X0
 +8p3sXTHeTSGMsPjdY6KUz/TEyq8xEymvN0dtlDtxHj/GCiWl3no+Lw6IHSVWp6f6gIAkio
 hQVIFZ3thzkMr+X59PV/g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:xrqUkc5hyA8=:QyBakKAx3dPhq8Jn1H7yRv
 yQk7gKlELOMgNuv+H4YMEf1WFv3cRoYroK61LNuHdluPvsmTD6S6DjWCOVqc16U4siw7f5IpZ
 TGdZu9P0JehAm7Q2qhsC0jfbm+YZQvTEYSEd9vxPisXtxtnSBSuXK+UHEHj9WTnOO4bsASzpA
 VLxMibj5gC0kp4wZfpi7kalrkdD5ukdhc3CljyVd855t4Y2eZ6kHFKmScxZNWBcAD0YBqIt+2
 8bci4r5Y3E0zxB/LDBZgY0U6n2LdxNbGVPDMdqxFB+CezpAjmWEdkGO79Xkm2wPCvPx6si1aW
 sR6ru12+d6CL4bO9Gc5A67GI+usTQnfKKxKYMTxKjYDcazJYNeLxV36KWdj8Bw9V/6y5YsOkw
 I/GW2EDRHCVSXcaSuy46G02LT6qmXEuA4vqadod+VOYO3Kmha953EJrKqlRnwp5VSrOCcV+fa
 PuBvbQTx6G4LfPoB5yJyB3zbleFj1z/ZTCnbiWAd7QvKkEEWuEevImE7PJrHoIVopxba6HofX
 D+ooM1dEBakXRhptyuanxyLHimS4EftTRcioeXlR3W5ue9PoKCdafUxrKJvElL7G58c0nvdh0
 p/LihWLl6tlluiwlTho06hgwAHdeEeCd40Seh9SnoI/yKjMDgPw51OIJLwkw56ERH5EirzcFC
 UptVzqDoRf6xx10fll3lZ4MicZOd5Krk7bG2fZK/nCKn7gQRIdmG4JKiRsLOCY4nzZeisNxUX
 U3LBaUj3E/Jj8kt+XBzFziHXE7Nd7E4ivU2U/QZytI1ALCgHL4i7b0YLZQdRV5atAu4K4smg0
 lzsIMaKN84GKXfIFo30lLChxj4UGQRZl9qQkOh7nQgbcE06bH5E7ebVQPqTvWgVMl3x8FwCk7
 Zzn87BPqrjxO2aig74AybtMmjZLIuO1J1CCWiDgAxtD2fKattidm0diisfGiW7+f26d72qqzp
 vkAkPCFYWztqxTnN074Lps5M8Td8NsHGQmzF47jGOWdk/qBaswzWSisFUVieQw7pBcAQczJoO
 0gc6lkwde8/G/S5pYoRazsUybIUYWdsQQKMBA8xAOTVvTc1L2+0A9zT6v217GIwpfIN1Ejggc
 jxRIzaxislJ9l4LXpEihU2NIKiaQRu3zZ/oU4pTSpuUI1TOQaRkafhXjtCjxXlzVmO9UAWOls
 pi2PStrvTdQCBeN4UIGOe7q87TOSZj169alGMkvIwTL32QLbNKreR6mbvSzsDJAJuWLTae6cl
 KXOhYNaCD1flfda353OBC4ic1hv3YGKKrQfJN3A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_225738_245279_0578CAE9 
X-CRM114-Status: GOOD (  13.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Doug Berger <opendmb@gmail.com>, netdev@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The BCM2711 needs a different maximum DMA burst length. If not set
accordingly a timeout in the transmit queue happens and no package
can be sent. So use the new compatible to derive this value.

Until now the GENET HW version was used as the platform identifier.
This doesn't work with SoC-specific modifications, so introduce a proper
platform data structure.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/net/ethernet/broadcom/genet/bcmgenet.c | 63 ++++++++++++++++++++++----
 drivers/net/ethernet/broadcom/genet/bcmgenet.h |  1 +
 2 files changed, 54 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/broadcom/genet/bcmgenet.c b/drivers/net/ethernet/broadcom/genet/bcmgenet.c
index ee4d8ef..120fa05 100644
--- a/drivers/net/ethernet/broadcom/genet/bcmgenet.c
+++ b/drivers/net/ethernet/broadcom/genet/bcmgenet.c
@@ -2576,7 +2576,8 @@ static int bcmgenet_init_dma(struct bcmgenet_priv *priv)
 	}

 	/* Init rDma */
-	bcmgenet_rdma_writel(priv, DMA_MAX_BURST_LENGTH, DMA_SCB_BURST_SIZE);
+	bcmgenet_rdma_writel(priv, priv->dma_max_burst_length,
+			     DMA_SCB_BURST_SIZE);

 	/* Initialize Rx queues */
 	ret = bcmgenet_init_rx_queues(priv->dev);
@@ -2589,7 +2590,8 @@ static int bcmgenet_init_dma(struct bcmgenet_priv *priv)
 	}

 	/* Init tDma */
-	bcmgenet_tdma_writel(priv, DMA_MAX_BURST_LENGTH, DMA_SCB_BURST_SIZE);
+	bcmgenet_tdma_writel(priv, priv->dma_max_burst_length,
+			     DMA_SCB_BURST_SIZE);

 	/* Initialize Tx queues */
 	bcmgenet_init_tx_queues(priv->dev);
@@ -3420,12 +3422,48 @@ static void bcmgenet_set_hw_params(struct bcmgenet_priv *priv)
 		params->words_per_bd);
 }

+struct bcmgenet_plat_data {
+	enum bcmgenet_version version;
+	u32 dma_max_burst_length;
+};
+
+static const struct bcmgenet_plat_data v1_plat_data = {
+	.version = GENET_V1,
+	.dma_max_burst_length = DMA_MAX_BURST_LENGTH,
+};
+
+static const struct bcmgenet_plat_data v2_plat_data = {
+	.version = GENET_V2,
+	.dma_max_burst_length = DMA_MAX_BURST_LENGTH,
+};
+
+static const struct bcmgenet_plat_data v3_plat_data = {
+	.version = GENET_V3,
+	.dma_max_burst_length = DMA_MAX_BURST_LENGTH,
+};
+
+static const struct bcmgenet_plat_data v4_plat_data = {
+	.version = GENET_V4,
+	.dma_max_burst_length = DMA_MAX_BURST_LENGTH,
+};
+
+static const struct bcmgenet_plat_data v5_plat_data = {
+	.version = GENET_V5,
+	.dma_max_burst_length = DMA_MAX_BURST_LENGTH,
+};
+
+static const struct bcmgenet_plat_data bcm2711_plat_data = {
+	.version = GENET_V5,
+	.dma_max_burst_length = 0x08,
+};
+
 static const struct of_device_id bcmgenet_match[] = {
-	{ .compatible = "brcm,genet-v1", .data = (void *)GENET_V1 },
-	{ .compatible = "brcm,genet-v2", .data = (void *)GENET_V2 },
-	{ .compatible = "brcm,genet-v3", .data = (void *)GENET_V3 },
-	{ .compatible = "brcm,genet-v4", .data = (void *)GENET_V4 },
-	{ .compatible = "brcm,genet-v5", .data = (void *)GENET_V5 },
+	{ .compatible = "brcm,genet-v1", .data = &v1_plat_data },
+	{ .compatible = "brcm,genet-v2", .data = &v2_plat_data },
+	{ .compatible = "brcm,genet-v3", .data = &v3_plat_data },
+	{ .compatible = "brcm,genet-v4", .data = &v4_plat_data },
+	{ .compatible = "brcm,genet-v5", .data = &v5_plat_data },
+	{ .compatible = "brcm,bcm2711-genet-v5", .data = &bcm2711_plat_data },
 	{ },
 };
 MODULE_DEVICE_TABLE(of, bcmgenet_match);
@@ -3435,6 +3473,7 @@ static int bcmgenet_probe(struct platform_device *pdev)
 	struct bcmgenet_platform_data *pd = pdev->dev.platform_data;
 	struct device_node *dn = pdev->dev.of_node;
 	const struct of_device_id *of_id = NULL;
+	const struct bcmgenet_plat_data *pdata;
 	struct bcmgenet_priv *priv;
 	struct net_device *dev;
 	const void *macaddr;
@@ -3516,10 +3555,14 @@ static int bcmgenet_probe(struct platform_device *pdev)

 	priv->dev = dev;
 	priv->pdev = pdev;
-	if (of_id)
-		priv->version = (enum bcmgenet_version)of_id->data;
-	else
+	if (of_id) {
+		pdata = of_id->data;
+		priv->version = pdata->version;
+		priv->dma_max_burst_length = pdata->dma_max_burst_length;
+	} else {
 		priv->version = pd->genet_version;
+		priv->dma_max_burst_length = DMA_MAX_BURST_LENGTH;
+	}

 	priv->clk = devm_clk_get(&priv->pdev->dev, "enet");
 	if (IS_ERR(priv->clk)) {
diff --git a/drivers/net/ethernet/broadcom/genet/bcmgenet.h b/drivers/net/ethernet/broadcom/genet/bcmgenet.h
index dbc69d8..a565919 100644
--- a/drivers/net/ethernet/broadcom/genet/bcmgenet.h
+++ b/drivers/net/ethernet/broadcom/genet/bcmgenet.h
@@ -664,6 +664,7 @@ struct bcmgenet_priv {
 	bool crc_fwd_en;

 	unsigned int dma_rx_chk_bit;
+	u32 dma_max_burst_length;

 	u32 msg_enable;

--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
