Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA63AD47EC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 20:49:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uyKajnSNE8nLPsZUPa4moj8nsv3pZk0AwXxepvfBJJI=; b=nMMDsmfVInQ3yZ
	8xRnRAad92hVdX+Ks0xpbe58V0CD4b6jCd98fbrf4swfFYXkbCGRyv/daBlG2HXYW/50Sw/pHMh9a
	lKQUv+HH3sajzcsIAv6CJQFEV+BC78bgMJGuoF93U5hP5QrU34TQgyFE4TfakTZdxHXINGde8Srxy
	LOZtS0JkxvO6B8V7PcGbu/F6JHR9WYkEOLc7SFuhe5faY38yR07oEiTcL4+WlVjTKNyuGL2acKa8Y
	NhEq5u3wKmAOj0vLSmCruCsalA/8l7rVBo1dBNiq/UzN0nFG4G84AKP5BSpLwbRoNL07JmdapSjYy
	tcr4HDGqvHz1PpGUGQhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIzyV-0002Ch-6X; Fri, 11 Oct 2019 18:49:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIzxr-0001pO-M3; Fri, 11 Oct 2019 18:48:37 +0000
Received: from ziggy.de (unknown [37.223.145.112])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0677D21D7D;
 Fri, 11 Oct 2019 18:48:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570819715;
 bh=OTgrNLS53g8Rccfn5K0Ut7tIZlmbMatndfizupjVyyk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=g05iTO8bqc9Hw/bPhfJPhqHd2S/Wm/rU7uVAmBZFK7XabPCoP46nZvxGqaQ78Pc+y
 5WEMsFah3lJ+B40CYJYv56CgIRYNrrV/6OgUyGj2854IFl/WPJo9l4AfdwbaqluUH6
 6cdx7SJ3NZcTCZpowHc531St/uRnbnjTZeogUH5M=
From: matthias.bgg@kernel.org
To: Florian Fainelli <f.fainelli@gmail.com>,
 "David S . Miller" <davem@davemloft.net>
Subject: [PATCH v1 2/3] net: bcmgenet: use optional max DMA burst size property
Date: Fri, 11 Oct 2019 20:48:20 +0200
Message-Id: <20191011184822.866-3-matthias.bgg@kernel.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191011184822.866-1-matthias.bgg@kernel.org>
References: <20191011184822.866-1-matthias.bgg@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_114835_800602_334A28DB 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Matthias Brugger <mbrugger@suse.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Doug Berger <opendmb@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <wahrenst@gmx.net>, Matthias Brugger <matthias.bgg@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Matthias Brugger <mbrugger@suse.com>

Depending on the HW, the maximal usable DMA burst size can vary.
If not set accordingly a timeout in the transmit queue happens and no
package can be sent. Read to optional max-burst-sz property, if not
present, fallback to the standard value.

Signed-off-by: Matthias Brugger <mbrugger@suse.com>
---

 drivers/net/ethernet/broadcom/genet/bcmgenet.c | 13 +++++++++++--
 drivers/net/ethernet/broadcom/genet/bcmgenet.h |  1 +
 2 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/broadcom/genet/bcmgenet.c b/drivers/net/ethernet/broadcom/genet/bcmgenet.c
index 12cb77ef1081..a7bb822a6d83 100644
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
@@ -3522,6 +3524,13 @@ static int bcmgenet_probe(struct platform_device *pdev)
 
 	clk_prepare_enable(priv->clk);
 
+	if (dn) {
+		of_property_read_u32(dn, "dma-burst-sz",
+				     &priv->dma_max_burst_length);
+	} else {
+		priv->dma_max_burst_length = DMA_MAX_BURST_LENGTH;
+	}
+
 	bcmgenet_set_hw_params(priv);
 
 	/* Mii wait queue */
diff --git a/drivers/net/ethernet/broadcom/genet/bcmgenet.h b/drivers/net/ethernet/broadcom/genet/bcmgenet.h
index 4a8fc03d82fd..897f356eb376 100644
--- a/drivers/net/ethernet/broadcom/genet/bcmgenet.h
+++ b/drivers/net/ethernet/broadcom/genet/bcmgenet.h
@@ -663,6 +663,7 @@ struct bcmgenet_priv {
 	bool crc_fwd_en;
 
 	unsigned int dma_rx_chk_bit;
+	unsigned int dma_max_burst_length;
 
 	u32 msg_enable;
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
