Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 065A66FB82
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 10:41:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IJF1YBMVEvgupWsFl+bHGcVrUIVJaKmiQFfznOCWXjg=; b=Bv+lGmon8Ob0EyIIYQ+mDPtauf
	ip/OtEHZqZA3oPNxPanFRqhzdEpMUm4rkMZ7A35CMjoVpN6fPQasEe0NpKproJFsDr7ZGV0CWRutP
	kqSfQf4WLWIycLho2LwdYxwOtRbs3V9Ay037AWPA3yQL/gIEZrBKmCFLYQWBDYLQag7TWI5T+5tA6
	/RoQDb3bFgp6E4LrR6kPsc32C4Ms08GzRYDv/6NzGq7kQLiicalKBy3LF7q2kRGBP2TSNnT+QQmfa
	rhuErqmgF9HPE7j8P3Kt9hROakGDw7XEVtZjBkL0LwNShCGZWX9iT5/BrMgdbYKIw3MAUPYtrzzbO
	E0dbU7cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpTsd-0000g6-1d; Mon, 22 Jul 2019 08:41:11 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpTrO-0007De-9Q
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 08:39:56 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id EE79AC1229;
 Mon, 22 Jul 2019 08:39:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1563784792; bh=yGAQYcxlEpE1qJEzwwdp1Ab0QN/5jmO1Cs2waCXk0JQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=ZhV4Ck3PJZWZNhsDBpAKMNSCZQLjIbXp8jiLjVW1RdZG9LvwYFsCgGFB1mYa2JeoB
 jV1+MltoMmR5u689/H4+BERca4XdwjXnVZa6RlHoE3HoBVvxc1eG8i17f5dhmUqG7p
 F+cJF11Y8BL9i6GxpkKO6oR86tMGZnecNsyRtnJc+Jq3av7nka4YwkIln8xIl6Vfzc
 yHIGCOrqX84sg5bU30AanVYPisc9aROYwMRj64fyQ19OxFQBad1VyrwsA0gZooe03Y
 y/If28nd4JM5q6csZ6/+xVhZQL15qkJG7MwohR8MZ02j9nzbwKYMQxfmuzqMJaTcZ9
 Mfu8hTvQpF0cg==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 6C8D3A0061;
 Mon, 22 Jul 2019 08:39:50 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net 2/2] net: stmmac: Use kcalloc() instead of kmalloc_array()
Date: Mon, 22 Jul 2019 10:39:31 +0200
Message-Id: <95ab7c8083e5cd42cf6d4c5e1531e30cab540ff2.1563784666.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1563784666.git.joabreu@synopsys.com>
References: <cover.1563784666.git.joabreu@synopsys.com>
In-Reply-To: <cover.1563784666.git.joabreu@synopsys.com>
References: <cover.1563784666.git.joabreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_013954_337418_E4327883 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We need the memory to be zeroed upon allocation so use kcalloc()
instead.

Signed-off-by: Jose Abreu <joabreu@synopsys.com>

---
Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Jose Abreu <joabreu@synopsys.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: netdev@vger.kernel.org
Cc: linux-stm32@st-md-mailman.stormreply.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index 5f1294ce0216..0ac79f3e2cee 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -1555,9 +1555,8 @@ static int alloc_dma_rx_desc_resources(struct stmmac_priv *priv)
 			goto err_dma;
 		}
 
-		rx_q->buf_pool = kmalloc_array(DMA_RX_SIZE,
-					       sizeof(*rx_q->buf_pool),
-					       GFP_KERNEL);
+		rx_q->buf_pool = kcalloc(DMA_RX_SIZE, sizeof(*rx_q->buf_pool),
+					 GFP_KERNEL);
 		if (!rx_q->buf_pool)
 			goto err_dma;
 
@@ -1608,15 +1607,15 @@ static int alloc_dma_tx_desc_resources(struct stmmac_priv *priv)
 		tx_q->queue_index = queue;
 		tx_q->priv_data = priv;
 
-		tx_q->tx_skbuff_dma = kmalloc_array(DMA_TX_SIZE,
-						    sizeof(*tx_q->tx_skbuff_dma),
-						    GFP_KERNEL);
+		tx_q->tx_skbuff_dma = kcalloc(DMA_TX_SIZE,
+					      sizeof(*tx_q->tx_skbuff_dma),
+					      GFP_KERNEL);
 		if (!tx_q->tx_skbuff_dma)
 			goto err_dma;
 
-		tx_q->tx_skbuff = kmalloc_array(DMA_TX_SIZE,
-						sizeof(struct sk_buff *),
-						GFP_KERNEL);
+		tx_q->tx_skbuff = kcalloc(DMA_TX_SIZE,
+					  sizeof(struct sk_buff *),
+					  GFP_KERNEL);
 		if (!tx_q->tx_skbuff)
 			goto err_dma;
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
