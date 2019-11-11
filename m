Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7535F8085
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 20:51:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1MlKQdnHx8kf4bbdFg0EOzRe5rUPtvxuWj9wBdyMTns=; b=GrnvapZZMl7VnlAkaZ8YVyjjG5
	P/Ikav4NsLnhz6Qa+Iqb5u4aEd2rHr7iSbUBy01No6ad4mXjqaL/yz4MloNEqPgf7Y7YoS0gZQ/YT
	WrQTOKlGvJLklUZT1e7XEXBi3cxp0mqLJu0paubDRwwkiBfLuLVc8jESVjUUnQUjeoZ1uopBAUnrc
	NXy5fLHcGJP7rddCGOQzwBnNt0EYN+ZjCdhfpREHd5v9E5BLSYsng0ZT4PcVKvpK7uk+oQlBT9p76
	v6gCxRxjahRuli+Q8RUzPAHv0pzODxJqPr9wvp2i2wrxxCxeGF6Y2zc55Fd25gyzxjPZaxSzmmDzN
	URAxxv+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUFiw-0001fN-OK; Mon, 11 Nov 2019 19:51:42 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUFig-0001ct-Ud
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 19:51:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1573501792;
 bh=YkAVCsJym+AYytMKLyvpOFynFysMj/mqsnSce6arYPw=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=IxdvP7z8uO6jLxvVmFHKmO4/4gdU1tJ6UnMDlji7vCRDkKtkyoXgbYYZcmBENIy9V
 UGLlTBNy6eYrUoBKn9+8dnse4D6ojxsSIAabbOlDC1x/9+jHE0FLS8pHlYmjyMenau
 VRm6qPaKyAUsKaZmvcLkx4MSx9dI9ixy8Pm5QTu8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.112]) by mail.gmx.com
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MOiHl-1iGGvH0ZzD-00Q8oD; Mon, 11 Nov 2019 20:49:52 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Matthias Brugger <matthias.bgg@kernel.org>,
 Matthias Brugger <mbrugger@suse.com>,
 "David S . Miller" <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH V5 net-next 4/7] net: bcmgenet: Add BCM2711 support
Date: Mon, 11 Nov 2019 20:49:23 +0100
Message-Id: <1573501766-21154-5-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573501766-21154-1-git-send-email-wahrenst@gmx.net>
References: <1573501766-21154-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:/0eJG8jHGbLvFZ50W01axrjmSeg0Zy0GbS/+/utYnSs2uAGw3Fc
 YrJCkLBDKa1nLxeOXskKItd7x0sZWrzKOSbWTT5BfK85tGqFK3sa2iWbUzGVMmX3nxZ3Cwa
 VtvR5KNsBMh/50yXR6ttiYSL3IBzeHvw4Q/DXCrWvQ3OTh5jdluDlcX022tltqSKT0Q53/W
 mW/qBNPgvtI1PdwN9qWIg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:hTMeSMXs+RQ=:mRG/AEgArGsRrAJXfk0mwy
 cXxNqQWdqhoDKLNPii9BOxZgHiKJyBUwfZFz2lSFfvQyW0EvC1FrRfTyzskzK94plcLeBAKNb
 nwRHBxmd2aBuHD5AFjlHm/4PNDuBHqDbS+35ScRV0Kk0KYhMGmF+rn803C6ZfQuf3kIc4tHgA
 IPGKJlmrDQFesH5dSmtXdDa3jTYjdVSrNGwI5XRhUV3wi1rJYJib6xawacbYQ8Hw5RTXWd18a
 YprwVIAj2mJYE1zEq0ID4ckjP4RhQjjTOnETKGWVjFR5tz5RdpH6M1d5t+RyObUP5eE2ifDlh
 AHD7Zrh75On6WKHqXGLHVJ2iP0YfGp9DW4DDiLqFTfOuOFxeu5jMCCx4i9xESPGOu9vOGLall
 UPiZ+T1W3/aAeqy5PQlaF8etaw3D0XXPEg+nFoprCYJ3VXFniyFDebiyGe05Z8YuwZNI+HnZN
 sNrTqilh6xO+HEWYcMPfU1ODHKdE6EIAt9IZYMU7LN15A+kpC+LsZSCVl0cZP1PFzZeOSizYe
 ljVjj4y9A+Poi2kH4TAS9d7IIExoFFpr1kiFlfApdUFA21T9hhuN0kmZQboHm4F/mg3n6rA34
 iMhms4byLLt2CC9lZPWw43hyiX2V1WZbWVZYZNQBWH4TifbEN0OUwD1k3PSHKJezqLp6aPK28
 2h8sGfcxYzd9yb5gVdUU6IE8Bu44dkK2CxsCKIVBxCoo9CQu2yPGltDXIceMutU25wIEh95+1
 X5Vde07ZHmnMOq++DY8+afELzKHItwn35yyvLYFJ6VKy/xO1LN+X4p6RiGc9dpLv/koW9z8YQ
 zUDHmfr6TkWLAgJoqT4sEiztYEbqeG80gJiIOLusrm++v/srw2pCuBZ5w8UENO7c0+fP6c9IQ
 VjNw08DhH1KmCjsfJvNVk/kw+EANGiH7bIpFs2KmAh6ikIeF/gQd3pym1ElxWWm5oS5FBp/kV
 WQopc7OWIlEsEDUza7+yV2uTixENwbNYggB04GicCNQ8rjZkkP3nWJ6G4U+NpS3JiyE8PjWpr
 ZuE5d4qs2APOGvhFXsdkxpsy1LPB+FhWeo1uq8oZZ3xvCcT1L8FnGGDRa7ZaIKER92MuRubkk
 NCMf9ZPYohT2hxfrey47O5BVLNhl/co02h4t7gY1bFOM7GBVYtIvXSyCiVsqiiXp+/ygXLTfY
 bhhNOFc1V0p7A0MDR8PhAxHhGXyZftxZooJY6LPwosGYLVcZYcyx/X7sUZlD7B6RGc03tXZRa
 Cs8pFn7p8WKbrc7IMKufcnnICRhKDTBWRoh79Hw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_115127_345740_C91F8210 
X-CRM114-Status: GOOD (  14.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Doug Berger <opendmb@gmail.com>,
 netdev@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com,
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
Reviewed-by: Matthias Brugger <mbrugger@suse.com>
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
