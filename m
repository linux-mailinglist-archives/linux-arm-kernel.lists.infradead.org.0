Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21078F6101
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 20:03:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=C7e9/bU8iMeqOz0fYUgfGghUOg9o2PPU/Olc787Dufw=; b=YBQQkTJJjT0+tq8DF9gSM2B9EV
	hVz9AD9rGOkeqAVhI8A28n5GFzk7u0hhO5Hsq7or5vbMxYQF84S9fcxmNeHryPZ6kyaG44HbqtIPr
	u//Y5McjPQYtajo9X88T03xd4rBMwjKell04HLzPjGs10oJL+fdzbfEkK17/26/AnHOTyXHUvUfCR
	ywlUwvDCUkvkqX/Z2M83NlO6wc9qBf73WZZhKJccUkSZ5W1x/TSZi6Bvc4wlNOrfqidTRKZGgU8B+
	N5l3NFg2hedXsQV455an9DqOj1WYaPASBIIZkaW7ebSvYJOG/7g1XaOG8fsHayOfSlvceVBgT+lHf
	XJDDV+tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTW1A-0007ng-Gg; Sat, 09 Nov 2019 19:03:28 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTVzs-0006nI-E5
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 19:02:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1573326040;
 bh=fMsDx4Q7m0P/lGYcrZ+P6g0Val7iZWLeetZv9tUVPCw=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=btfHsJhRcLJC3/5QauRgJ5aNgnA/3KxUWcReyvrUPIPsjwYlaCa7FZHeh5H0tsqwc
 HIaxIpVnmre2bFSrSxaIX/aLUHdG4bm0L3swcfuH9+lqGoydd/RAbhIp+Mcq9YviZS
 LF5yF0mICIfZ6He+HjMhWpRCmTbsBJDsd3bWsZZ8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.112]) by mail.gmx.com
 (mrgmx005 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1Mf0BM-1i0VwQ1YCo-00gYSL; Sat, 09 Nov 2019 20:00:40 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Matthias Brugger <matthias.bgg@kernel.org>,
 Matthias Brugger <mbrugger@suse.com>,
 "David S . Miller" <davem@davemloft.net>,
 Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH V3 net-next 4/7] net: bcmgenet: Add BCM2711 support
Date: Sat,  9 Nov 2019 20:00:06 +0100
Message-Id: <1573326009-2275-5-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573326009-2275-1-git-send-email-wahrenst@gmx.net>
References: <1573326009-2275-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:uxBWz1h+YHqbqwSUv95nIGsdOePNI2eVoIDuBkpRwjNj/LueWJ4
 f2hhozCOcsANtwZcNH8vLXBwglMMjl0/gU3VeZxRzJmEDY6qwlwvEb0dIl/C9Iv8r6zryVh
 nsblxp7Q7V3qsBJTG4mtKcQqTeKJ+4PEAsd8yjMIhL3pR17MWo0qEGGt1h7E1oxghbrIX81
 qRd+BmVd2Zy8DuQkbO7sw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:kFxglpwUdGI=:C+EQxezmzTNUNB4m8ek2n7
 61L1qEdXVsQtOR0hs2AxK/zLElwdeTHMP2J7t+aTQmkRjTe/oqBBMQTtRj/teLZgPgtKaHVl0
 MmxpdGlikBRYEIP347UVpwzDh7b3tXWLju0Y4AVkmm7wd9KHp1OWHu7V4d/NePVz0zs34Glf0
 Lh4oPPGNrYjoR3q/55Cq3J6e5rwX+niuq4EaoTWAw9hPuoXrCW0sbHPfpRzXH9hJhh3P2koTI
 fOx9KyeeeWJFaHcSi01fg3AhRBkeW64WVe3QJNnju4Mh0mIhdeBbA+q0RyBWn6GHXz45veleU
 XF+zaiKTzXvboxKFB2P11xSZUvZXOH4f0slM8tPM4Y02/7TW1ZQXWKvdYgV+aKOR/h205LIH7
 zXXJhoainwzd+gDuoTbOvGVbWUYAfO/8QlSiEBma05E9qaBtYG0tGS8NB61e15R5Z6/ImDA8B
 yD6tqcPC0qbs7oi7QDkSdQOSYFu4Y7a/9EQxtLcft5ez5/u1JR6QROQ/fY0oQyWaEF1OtEfOL
 /nsosS/CfnkBMfXEmVOsHEnO48peY+2FOoKGBDpZAsKZaG/5ox38Wn7OqVn1vcPt1V9aposcS
 WDZOjnLt0jtoBqTH1BQkNYKSfMTMM8n+rj5YCQstSamiMqEqNX25+ssr9RcaWCzjYYlr23M9H
 p7KQPabvwaM987dQBHiKsflSb006Scl5YH1B5dN3/9KTn8FE3yxoUJNOUz5Lq1o13ia4CRMIh
 2l8kcCerrod6JvxEMV2GsZz4/BoaDvxCsJrGA2E/chMRnvSYbCgvcCC6KTLjIoUB/PE20rq11
 +gikhtUU2B01SPf4KHCH/8ZQukbCaE/zvyX+iXUEmZSO1Lcfb4ThrGa3zjK8WpfziqLLrQdmx
 u4thUNsfSICHerEyIIHIFWMK2uAGItuqLJQquJsOTQbAZNdl1kRpO+l9OA1GlC8qa55ghWrSV
 jqlbBoetcCCxJw3LCPG72OcbZk2Rdc2G/sAeyjHXBXLY8Cnn7/Ky7hc8HH69u1DRgGizVFpN5
 F/5dvbPXkwb/3TIpRo6/RzNEHQXen8oQBPxW9a8SKDIx++hwyQPsXYuUCATBt9lM8JxzsBjOF
 +/hkAKlcxCm6MYDtzKy6Jh/jPg+FijKMvl0NZmVKsoea/02vppEOFhiJh/tLqcekFBBwprucv
 xEfI3sgAvpIcI5t8jq7rBM7g7+smA0Hlr0ipCz/5BemgtjYtjabQCYcBzg1AsqBML9UNWeEOI
 x6nmEM81JhmeFlOEjHkevBmS90G2u8M0cFEf37w==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_110208_803086_AB1F0BDD 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
---
 drivers/net/ethernet/broadcom/genet/bcmgenet.c | 63 ++++++++++++++++++++++----
 drivers/net/ethernet/broadcom/genet/bcmgenet.h |  1 +
 2 files changed, 54 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/broadcom/genet/bcmgenet.c b/drivers/net/ethernet/broadcom/genet/bcmgenet.c
index 1858ff7..7c0c5d1 100644
--- a/drivers/net/ethernet/broadcom/genet/bcmgenet.c
+++ b/drivers/net/ethernet/broadcom/genet/bcmgenet.c
@@ -2578,7 +2578,8 @@ static int bcmgenet_init_dma(struct bcmgenet_priv *priv)
 	}

 	/* Init rDma */
-	bcmgenet_rdma_writel(priv, DMA_MAX_BURST_LENGTH, DMA_SCB_BURST_SIZE);
+	bcmgenet_rdma_writel(priv, priv->dma_max_burst_length,
+			     DMA_SCB_BURST_SIZE);

 	/* Initialize Rx queues */
 	ret = bcmgenet_init_rx_queues(priv->dev);
@@ -2591,7 +2592,8 @@ static int bcmgenet_init_dma(struct bcmgenet_priv *priv)
 	}

 	/* Init tDma */
-	bcmgenet_tdma_writel(priv, DMA_MAX_BURST_LENGTH, DMA_SCB_BURST_SIZE);
+	bcmgenet_tdma_writel(priv, priv->dma_max_burst_length,
+			     DMA_SCB_BURST_SIZE);

 	/* Initialize Tx queues */
 	bcmgenet_init_tx_queues(priv->dev);
@@ -3426,12 +3428,48 @@ static void bcmgenet_set_hw_params(struct bcmgenet_priv *priv)
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
@@ -3441,6 +3479,7 @@ static int bcmgenet_probe(struct platform_device *pdev)
 	struct bcmgenet_platform_data *pd = pdev->dev.platform_data;
 	struct device_node *dn = pdev->dev.of_node;
 	const struct of_device_id *of_id = NULL;
+	const struct bcmgenet_plat_data *pdata;
 	struct bcmgenet_priv *priv;
 	struct net_device *dev;
 	const void *macaddr;
@@ -3522,10 +3561,14 @@ static int bcmgenet_probe(struct platform_device *pdev)

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
index 7fbf573..1b65b73 100644
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
