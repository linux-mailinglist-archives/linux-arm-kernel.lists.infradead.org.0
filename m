Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3BF7FC59C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 12:44:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ECx3Mx4e01UBV2mHN3HFiWTeD2HVaR8C44dBUx7rwVM=; b=QhPrC2SQ3Mc/oRUtyxNqgcbWCy
	IxMVD6EeQHRcIjV0FWGohvctpI0/2oLZWTdVu3I6SKax5qpoiHuefuNBgjFhxLfIxDl0mmdbFsL1R
	sGpe3lM1MrOd3KMsuMNcyURHDcJGg5wE4A6Po0zGRxaZCGzyG9kumnRX13gWdHSn7wn3j9hl/XJFt
	FtQvHbL2wDt1N0Kt6DO/GdZW87UElVac1Wv9O5OfUK2oMXzs4qGTgiBI0MO4T1HNVs2v2F2fcY2Ek
	dAj2dXj9zczR4Ap/KSZ8fm7RARL+Sua4Y8zikKa8i7SE2/Ud0NBf57A3sq5abNdbSygZ0ArhzbOj9
	c2Anat5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVDYK-0006BN-6Z; Thu, 14 Nov 2019 11:44:44 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVDWa-0004j5-Ic
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 11:43:00 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id D5AFBC04CC;
 Thu, 14 Nov 2019 11:42:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1573731775; bh=vvxIcgTGJMMnHNBi5JJXe6vLAG4/fUQFci2iSCBSPvw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=VadeYVmWYWMrI53TlewnmWmnxb+uCy51vQntrqXcgg8w4E9mVf8iNrZTQSxVMjbpB
 ezN5Q3jjDK/kwIzsJakUaL1GLJXj0Vakk5W6c0alqlQGjfeFZsHikTiyx3ft6bqxy5
 A9TOGyXZDOJPaYD2cm066ZVQoRn9a65UoWPOsQzT1M4lHtLDv5GzcqN5m/SPFcPGHV
 ikrQL/u8PY5xD5rjK3XispyFLsMb3Q8UYCNepMFdjvrVfcnsEnC+BE3y/JjfaIxsiA
 L/Gpy+7aLbIRCkfUtQ+Pu1i/xaZdlF9wqbtjM+JSq6bSvt2hFvVvjeL2KrbsfvXS0z
 E1/gDNwz1ilRA==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 8EA25A0096;
 Thu, 14 Nov 2019 11:42:53 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH v2 net-next 6/7] net: stmmac: Rework TX Coalesce logic
Date: Thu, 14 Nov 2019 12:42:50 +0100
Message-Id: <38f4e95c85da24c443efeac7cd8823ab99f94d28.1573731453.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1573731453.git.Jose.Abreu@synopsys.com>
References: <cover.1573731453.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1573731453.git.Jose.Abreu@synopsys.com>
References: <cover.1573731453.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_034256_677707_7B398C4C 
X-CRM114-Status: GOOD (  15.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Coalesce logic currently increments the number of packets and sets the
IC bit when the coalesced packets have passed a given limit. This does
not reflect very well what coalesce was meant for as we can have a large
number of packets that are coalesced and then a single one, sent later
on that has the IC bit.

Rework the logic so that it coalesces only upon a limit of packets and
sets the IC bit for large number of packets.

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
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 61 ++++++++++++++++-------
 1 file changed, 42 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index 400fbb727fd5..4ba250a9008f 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -2916,16 +2916,17 @@ static netdev_tx_t stmmac_tso_xmit(struct sk_buff *skb, struct net_device *dev)
 	struct stmmac_priv *priv = netdev_priv(dev);
 	int nfrags = skb_shinfo(skb)->nr_frags;
 	u32 queue = skb_get_queue_mapping(skb);
+	unsigned int first_entry, tx_packets;
+	int tmp_pay_len = 0, first_tx;
 	struct stmmac_tx_queue *tx_q;
-	unsigned int first_entry;
 	u8 proto_hdr_len, hdr;
-	int tmp_pay_len = 0;
+	bool has_vlan, set_ic;
 	u32 pay_len, mss;
 	dma_addr_t des;
-	bool has_vlan;
 	int i;
 
 	tx_q = &priv->tx_queue[queue];
+	first_tx = tx_q->cur_tx;
 
 	/* Compute header lengths */
 	if (skb_shinfo(skb)->gso_type & SKB_GSO_UDP_L4) {
@@ -3033,16 +3034,27 @@ static netdev_tx_t stmmac_tso_xmit(struct sk_buff *skb, struct net_device *dev)
 	tx_q->tx_skbuff[tx_q->cur_tx] = skb;
 
 	/* Manage tx mitigation */
-	tx_q->tx_count_frames += nfrags + 1;
-	if (likely(priv->tx_coal_frames > tx_q->tx_count_frames) &&
-	    !((skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP) &&
-	      priv->hwts_tx_en)) {
-		stmmac_tx_timer_arm(priv, queue);
-	} else {
+	tx_packets = (tx_q->cur_tx + 1) - first_tx;
+	tx_q->tx_count_frames += tx_packets;
+
+	if ((skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP) && priv->hwts_tx_en)
+		set_ic = true;
+	else if (!priv->tx_coal_frames)
+		set_ic = false;
+	else if (tx_packets > priv->tx_coal_frames)
+		set_ic = true;
+	else if ((tx_q->tx_count_frames % priv->tx_coal_frames) < tx_packets)
+		set_ic = true;
+	else
+		set_ic = false;
+
+	if (set_ic) {
 		desc = &tx_q->dma_tx[tx_q->cur_tx];
 		tx_q->tx_count_frames = 0;
 		stmmac_set_tx_ic(priv, desc);
 		priv->xstats.tx_set_ic_bit++;
+	} else {
+		stmmac_tx_timer_arm(priv, queue);
 	}
 
 	/* We've used all descriptors we need for this skb, however,
@@ -3133,6 +3145,7 @@ static netdev_tx_t stmmac_tso_xmit(struct sk_buff *skb, struct net_device *dev)
  */
 static netdev_tx_t stmmac_xmit(struct sk_buff *skb, struct net_device *dev)
 {
+	unsigned int first_entry, tx_packets, enh_desc;
 	struct stmmac_priv *priv = netdev_priv(dev);
 	unsigned int nopaged_len = skb_headlen(skb);
 	int i, csum_insertion = 0, is_jumbo = 0;
@@ -3141,13 +3154,12 @@ static netdev_tx_t stmmac_xmit(struct sk_buff *skb, struct net_device *dev)
 	int gso = skb_shinfo(skb)->gso_type;
 	struct dma_desc *desc, *first;
 	struct stmmac_tx_queue *tx_q;
-	unsigned int first_entry;
-	unsigned int enh_desc;
+	bool has_vlan, set_ic;
+	int entry, first_tx;
 	dma_addr_t des;
-	bool has_vlan;
-	int entry;
 
 	tx_q = &priv->tx_queue[queue];
+	first_tx = tx_q->cur_tx;
 
 	if (priv->tx_path_in_lpi_mode)
 		stmmac_disable_eee_mode(priv);
@@ -3241,12 +3253,21 @@ static netdev_tx_t stmmac_xmit(struct sk_buff *skb, struct net_device *dev)
 	 * This approach takes care about the fragments: desc is the first
 	 * element in case of no SG.
 	 */
-	tx_q->tx_count_frames += nfrags + 1;
-	if (likely(priv->tx_coal_frames > tx_q->tx_count_frames) &&
-	    !((skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP) &&
-	      priv->hwts_tx_en)) {
-		stmmac_tx_timer_arm(priv, queue);
-	} else {
+	tx_packets = (entry + 1) - first_tx;
+	tx_q->tx_count_frames += tx_packets;
+
+	if ((skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP) && priv->hwts_tx_en)
+		set_ic = true;
+	else if (!priv->tx_coal_frames)
+		set_ic = false;
+	else if (tx_packets > priv->tx_coal_frames)
+		set_ic = true;
+	else if ((tx_q->tx_count_frames % priv->tx_coal_frames) < tx_packets)
+		set_ic = true;
+	else
+		set_ic = false;
+
+	if (set_ic) {
 		if (likely(priv->extend_desc))
 			desc = &tx_q->dma_etx[entry].basic;
 		else
@@ -3255,6 +3276,8 @@ static netdev_tx_t stmmac_xmit(struct sk_buff *skb, struct net_device *dev)
 		tx_q->tx_count_frames = 0;
 		stmmac_set_tx_ic(priv, desc);
 		priv->xstats.tx_set_ic_bit++;
+	} else {
+		stmmac_tx_timer_arm(priv, queue);
 	}
 
 	/* We've used all descriptors we need for this skb, however,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
