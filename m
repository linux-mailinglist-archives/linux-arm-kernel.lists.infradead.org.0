Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83E9BF198B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 16:06:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2Ox3svpipzhViJWat8DkeSkNu2w8f1jRBetY7X7apQo=; b=s7AJZuMu6lB6W1D0B9pk6N6VtU
	PXzXmJ/ATfzqKabwtWCHYp4icaf3qbPDOS5BZWp4FeEyjkf5VG14HjzFauADCRrQWAc+nKOVFD9os
	JjHPvQWUVV21xsiiLISTdvx8E0WetQmITfOgLwjD0XlxhsdjrDfpl6znBep1bNCpm18VHGMKKalrS
	+J1EPd+arbbsw5gxr1ZbBQtYuWe2CRPcmzLQFOyRX0yQcDyD0G2LO8ip4XFgy296cN4/KTfGDxuCN
	7xvXF+kdOYbZeE2/I3pOxawm4P2spTdyjOCdHoOILq4WYMg8uDgrIaP9+lWclWMccW0Wg0eYE8tKm
	76jLe2iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSMsx-0002Om-FG; Wed, 06 Nov 2019 15:06:15 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSMq1-0006qf-Uh
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 15:03:25 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 50588C0F54;
 Wed,  6 Nov 2019 15:03:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1573052592; bh=orkA0OJGVviH22JL3eQ4nAhgpmWxuQSkZ3UgLXnjgm0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=bIYJgrEhHrAHDP8W8EOKXHDUEzWGAV9bnUFIYw2M8abdWkMiwibuCwgM8pBfGPxQ7
 c3GCuceKCwc7LkqaHSzue0qOB+CcdFlGQeCFFURgQGEnv+OLfASjx6wrVKYjdIeCnF
 NPFt8AuTAxxNMtYYMt2yBGL4ICrcGhLjRAwdEoFMZIhyCSpVxWUwe5O3QeNU98aIVg
 yCXebNikdqOP8o4jS25TGUn7MCWlwjKT+LZuiOK+ZijQSiFHz0YUO6Arz3C5AnK3nK
 EuvOAYw2YiuAXnUMZVNaWqOmLAAJzWsDp59BaeqQuoIjWvj79rvEWpoRGZd0fLPt9B
 sX6xx9aoLo+xg==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 0E724A0089;
 Wed,  6 Nov 2019 15:03:11 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net 11/11] net: stmmac: Fix the TX IOC in xmit path
Date: Wed,  6 Nov 2019 16:03:05 +0100
Message-Id: <b8d2676910857e8cede306c3fb140bd8fccf9ad3.1573052379.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1573052378.git.Jose.Abreu@synopsys.com>
References: <cover.1573052378.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1573052378.git.Jose.Abreu@synopsys.com>
References: <cover.1573052378.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_070314_001081_1F524CAC 
X-CRM114-Status: GOOD (  17.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [198.182.47.102 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

IOC bit must be only set in the last descriptor. Move the logic up a
little bit to make sure it's set in the correct descriptor.

Signed-off-by: Jose Abreu <Jose.Abreu@synopsys.com>

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
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 64 ++++++++++++-----------
 1 file changed, 34 insertions(+), 30 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index b0a16d7c6e3d..f826365c979d 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -3024,6 +3024,19 @@ static netdev_tx_t stmmac_tso_xmit(struct sk_buff *skb, struct net_device *dev)
 	/* Only the last descriptor gets to point to the skb. */
 	tx_q->tx_skbuff[tx_q->cur_tx] = skb;
 
+	/* Manage tx mitigation */
+	tx_q->tx_count_frames += nfrags + 1;
+	if (likely(priv->tx_coal_frames > tx_q->tx_count_frames) &&
+	    !((skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP) &&
+	      priv->hwts_tx_en)) {
+		stmmac_tx_timer_arm(priv, queue);
+	} else {
+		desc = &tx_q->dma_tx[tx_q->cur_tx];
+		tx_q->tx_count_frames = 0;
+		stmmac_set_tx_ic(priv, desc);
+		priv->xstats.tx_set_ic_bit++;
+	}
+
 	/* We've used all descriptors we need for this skb, however,
 	 * advance cur_tx so that it references a fresh descriptor.
 	 * ndo_start_xmit will fill this descriptor the next time it's
@@ -3041,19 +3054,6 @@ static netdev_tx_t stmmac_tso_xmit(struct sk_buff *skb, struct net_device *dev)
 	priv->xstats.tx_tso_frames++;
 	priv->xstats.tx_tso_nfrags += nfrags;
 
-	/* Manage tx mitigation */
-	tx_q->tx_count_frames += nfrags + 1;
-	if (likely(priv->tx_coal_frames > tx_q->tx_count_frames) &&
-	    !(priv->synopsys_id >= DWMAC_CORE_4_00 &&
-	    (skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP) &&
-	    priv->hwts_tx_en)) {
-		stmmac_tx_timer_arm(priv, queue);
-	} else {
-		tx_q->tx_count_frames = 0;
-		stmmac_set_tx_ic(priv, desc);
-		priv->xstats.tx_set_ic_bit++;
-	}
-
 	if (priv->sarc_type)
 		stmmac_set_desc_sarc(priv, first, priv->sarc_type);
 
@@ -3225,6 +3225,27 @@ static netdev_tx_t stmmac_xmit(struct sk_buff *skb, struct net_device *dev)
 	/* Only the last descriptor gets to point to the skb. */
 	tx_q->tx_skbuff[entry] = skb;
 
+	/* According to the coalesce parameter the IC bit for the latest
+	 * segment is reset and the timer re-started to clean the tx status.
+	 * This approach takes care about the fragments: desc is the first
+	 * element in case of no SG.
+	 */
+	tx_q->tx_count_frames += nfrags + 1;
+	if (likely(priv->tx_coal_frames > tx_q->tx_count_frames) &&
+	    !((skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP) &&
+	      priv->hwts_tx_en)) {
+		stmmac_tx_timer_arm(priv, queue);
+	} else {
+		if (likely(priv->extend_desc))
+			desc = &tx_q->dma_etx[entry].basic;
+		else
+			desc = &tx_q->dma_tx[entry];
+
+		tx_q->tx_count_frames = 0;
+		stmmac_set_tx_ic(priv, desc);
+		priv->xstats.tx_set_ic_bit++;
+	}
+
 	/* We've used all descriptors we need for this skb, however,
 	 * advance cur_tx so that it references a fresh descriptor.
 	 * ndo_start_xmit will fill this descriptor the next time it's
@@ -3260,23 +3281,6 @@ static netdev_tx_t stmmac_xmit(struct sk_buff *skb, struct net_device *dev)
 
 	dev->stats.tx_bytes += skb->len;
 
-	/* According to the coalesce parameter the IC bit for the latest
-	 * segment is reset and the timer re-started to clean the tx status.
-	 * This approach takes care about the fragments: desc is the first
-	 * element in case of no SG.
-	 */
-	tx_q->tx_count_frames += nfrags + 1;
-	if (likely(priv->tx_coal_frames > tx_q->tx_count_frames) &&
-	    !(priv->synopsys_id >= DWMAC_CORE_4_00 &&
-	    (skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP) &&
-	    priv->hwts_tx_en)) {
-		stmmac_tx_timer_arm(priv, queue);
-	} else {
-		tx_q->tx_count_frames = 0;
-		stmmac_set_tx_ic(priv, desc);
-		priv->xstats.tx_set_ic_bit++;
-	}
-
 	if (priv->sarc_type)
 		stmmac_set_desc_sarc(priv, first, priv->sarc_type);
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
