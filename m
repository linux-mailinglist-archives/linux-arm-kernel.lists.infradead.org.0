Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F058C13AE8F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 17:10:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zhbGGl6KaZ1KfmiRHZoRM/sN9Ccr0tbVLlAdBZhndgE=; b=YzWAh6TZlk/Hk29iOyR7kTeUJl
	rxSaaPqgDntj6UpNbirRw4ziq73ZlNUV/BgU0qmkW1DU66x5PhwJIIAI/TXgNfvEG8sjkjNtk+iYW
	JUrkEUFX0aJhj5QcuWkuB6fK4eEChDMFPTxmTaZJqrAHEqEPDSQNRMj2voKBGg+Ogu2oCCZGiCbnD
	h8z2TWIv/qr6Qh5ghXDjZ2o0XsIEjHHaZH822fJ38k/zm3zw6Q4Yo2PVptpsMZW6f5lImopIBQxsV
	9dW25wRgfZydvEJp6Qbu2KO/ofyoace5lc6XBrKyyq+JvVFsvbbJZjbBrMfT3C8+Md0eqVyjQmxaR
	+PnGDqAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irOlo-0006Aa-M9; Tue, 14 Jan 2020 16:10:20 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irOlC-0005vK-Gd; Tue, 14 Jan 2020 16:09:48 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id A9A60C0625;
 Tue, 14 Jan 2020 16:09:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1579018182; bh=IpgC8gwCLfuMhlz/18scusRLH4OpcFzXcL5IZQwNnHQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=kThH+XYfPaJRH4DPNarOkI+XphSw/f6G6Ld25d7xlQ7r/qhsDgyU3gPBfAAmk2hue
 r4x8azQ3rkTEppHVrggSEFU0hz3f9SCJmMVARO9NxY/F1nhTPYS1LB/mI2oh90uDNB
 Cm3udueCSmYBnpC9pZCdXSwfqhFkevW2isarqK4erxL8fA02uJ6mcfNaJEb2YfFz9B
 Eu9Yc2t1nxqvr0i/d4AUopRG2Yz37eiEqNrN4E7feik5iwQTSqZtxYep8IErQE89j/
 EZmn3qNVIR8gMDt4WDwu46jS2MXw9EJuqulIRnqBvn1ikQyJSVRUmzHd6P0KBe7zlo
 19cSyJMmQViwQ==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 136EAA0061;
 Tue, 14 Jan 2020 16:09:35 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net 1/4] net: stmmac: selftests: Make it work in Synopsys
 AXS101 boards
Date: Tue, 14 Jan 2020 17:09:21 +0100
Message-Id: <73b03cd37079ed3e2a5bc8568bcaa21dffe6198a.1579017787.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1579017787.git.Jose.Abreu@synopsys.com>
References: <cover.1579017787.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1579017787.git.Jose.Abreu@synopsys.com>
References: <cover.1579017787.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_080942_656133_E239CDBB 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Alexandre Torgue <alexandre.torgue@st.com>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 linux-snps-arc@lists.infradead.org, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Synopsys AXS101 boards do not support unaligned memory loads or stores.
Change the selftests mechanism to explicity:
- Not add extra alignment in TX SKB
- Use the unaligned version of ether_addr_equal()

Fixes: 091810dbded9 ("net: stmmac: Introduce selftests support")
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
Cc: Alexey Brodkin <abrodkin@synopsys.com>
Cc: Vineet Gupta <vgupta@synopsys.com>
Cc: linux-snps-arc@lists.infradead.org
---
 .../net/ethernet/stmicro/stmmac/stmmac_selftests.c   | 20 +++++++++++---------
 1 file changed, 11 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
index 36a4c43a799a..6516d65e84b8 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
@@ -80,7 +80,7 @@ static struct sk_buff *stmmac_test_get_udp_skb(struct stmmac_priv *priv,
 	if (attr->max_size && (attr->max_size > size))
 		size = attr->max_size;
 
-	skb = netdev_alloc_skb_ip_align(priv->dev, size);
+	skb = netdev_alloc_skb(priv->dev, size);
 	if (!skb)
 		return NULL;
 
@@ -244,6 +244,8 @@ static int stmmac_test_loopback_validate(struct sk_buff *skb,
 					 struct net_device *orig_ndev)
 {
 	struct stmmac_test_priv *tpriv = pt->af_packet_priv;
+	unsigned char *src = tpriv->packet->src;
+	unsigned char *dst = tpriv->packet->dst;
 	struct stmmachdr *shdr;
 	struct ethhdr *ehdr;
 	struct udphdr *uhdr;
@@ -260,15 +262,15 @@ static int stmmac_test_loopback_validate(struct sk_buff *skb,
 		goto out;
 
 	ehdr = (struct ethhdr *)skb_mac_header(skb);
-	if (tpriv->packet->dst) {
-		if (!ether_addr_equal(ehdr->h_dest, tpriv->packet->dst))
+	if (dst) {
+		if (!ether_addr_equal_unaligned(ehdr->h_dest, dst))
 			goto out;
 	}
 	if (tpriv->packet->sarc) {
-		if (!ether_addr_equal(ehdr->h_source, ehdr->h_dest))
+		if (!ether_addr_equal_unaligned(ehdr->h_source, ehdr->h_dest))
 			goto out;
-	} else if (tpriv->packet->src) {
-		if (!ether_addr_equal(ehdr->h_source, tpriv->packet->src))
+	} else if (src) {
+		if (!ether_addr_equal_unaligned(ehdr->h_source, src))
 			goto out;
 	}
 
@@ -714,7 +716,7 @@ static int stmmac_test_flowctrl_validate(struct sk_buff *skb,
 	struct ethhdr *ehdr;
 
 	ehdr = (struct ethhdr *)skb_mac_header(skb);
-	if (!ether_addr_equal(ehdr->h_source, orig_ndev->dev_addr))
+	if (!ether_addr_equal_unaligned(ehdr->h_source, orig_ndev->dev_addr))
 		goto out;
 	if (ehdr->h_proto != htons(ETH_P_PAUSE))
 		goto out;
@@ -856,7 +858,7 @@ static int stmmac_test_vlan_validate(struct sk_buff *skb,
 	}
 
 	ehdr = (struct ethhdr *)skb_mac_header(skb);
-	if (!ether_addr_equal(ehdr->h_dest, tpriv->packet->dst))
+	if (!ether_addr_equal_unaligned(ehdr->h_dest, tpriv->packet->dst))
 		goto out;
 
 	ihdr = ip_hdr(skb);
@@ -1586,7 +1588,7 @@ static int stmmac_test_arp_validate(struct sk_buff *skb,
 	struct arphdr *ahdr;
 
 	ehdr = (struct ethhdr *)skb_mac_header(skb);
-	if (!ether_addr_equal(ehdr->h_dest, tpriv->packet->src))
+	if (!ether_addr_equal_unaligned(ehdr->h_dest, tpriv->packet->src))
 		goto out;
 
 	ahdr = arp_hdr(skb);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
