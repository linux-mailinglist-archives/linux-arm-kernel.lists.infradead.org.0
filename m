Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC82A50F2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 10:11:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ieU2v0HHE21HMmAauSsfFZ+/G1t+nAKV+Hi85xxthfQ=; b=pCLfWvHC0ipULil4/tMKrIKwiK
	kDEcezuqTBVQPNVpJT0zQJAJTnfsVTIiBFOOxYB4Xm9xiGy74y9xcMoZoKwk1uVGK710NdXMz6ktW
	OeNRrJMV3gVrT4q1KZ1eb7430Fj5ClbKsqhBoK7YzeSPbijk1BxXKnSzsX7Az/KNm0Dw9xQjJimFM
	mgV2qzflnWgs38KxFVRbUdsl8JTU3VoeGZR/+645wO2zwNjOAM0gjrs4JYeZZXi5k6ZSOQuhgWoMD
	aAw1QkrtyX54wfrF2Oy739U5H5eRo5JhWfwcOafBOEY35vYNLw2dZiPC0n02NE9X5bkgg0fQkqalK
	pMlrHW4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4hQy-0001ok-L5; Mon, 02 Sep 2019 08:11:32 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4hPM-0008CC-Cb
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 08:09:55 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id AED08C0438;
 Mon,  2 Sep 2019 08:02:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1567411337; bh=/MasdnODAJKEeH9TitBj6mYJC/lGR8OKb/0AXAK0+ss=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=YUT83e9PcMthqHTF3hahkdErxCAMXoCE0ZDhtMpc186kRRBCay/6Ea3Dxo7JsEOGu
 qFfUiS5ZToKJ+Fox6+bg1IEjaDPgOjlqd4Lm2rt81kC2+emY+a5u3xfZJNwcyEGOdA
 4BwA1TjGOeIRCIYuXSnr9rhG74GfVJluss16COhgWzAXIZJydhZGwlROs+OK0l7IW7
 vCT1i8ycy4lAPDDWwgH1tc9aJURpsIR4mfBTY8KxbbAB+3gVu3EpeantFP/aWnkd27
 R54D8mO/+gpnAOmCdkYr1A2Q1ZzUcCOQ3oh7aEnTwHkQhxDh2EQCGeMd/pL7euE5By
 ZBUnz6o4PsNng==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 73665A0078;
 Mon,  2 Sep 2019 08:02:15 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 07/13] net: stmmac: selftests: Implement the ARP
 Offload test
Date: Mon,  2 Sep 2019 10:01:49 +0200
Message-Id: <dadd04bc5a62a1467a60f33ac6369159f5528fd5.1567410970.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1567410970.git.joabreu@synopsys.com>
References: <cover.1567410970.git.joabreu@synopsys.com>
In-Reply-To: <cover.1567410970.git.joabreu@synopsys.com>
References: <cover.1567410970.git.joabreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_010952_485536_9F75B4F6 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Implement a test for ARP Offload feature.

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
 .../net/ethernet/stmicro/stmmac/stmmac_selftests.c | 110 +++++++++++++++++++++
 1 file changed, 110 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
index 8e9d0aeda817..f531dbe038df 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
@@ -196,6 +196,24 @@ static struct sk_buff *stmmac_test_get_udp_skb(struct stmmac_priv *priv,
 	return skb;
 }
 
+static struct sk_buff *stmmac_test_get_arp_skb(struct stmmac_priv *priv,
+					       struct stmmac_packet_attrs *attr)
+{
+	__be32 ip_src = htonl(attr->ip_src);
+	__be32 ip_dst = htonl(attr->ip_dst);
+	struct sk_buff *skb = NULL;
+
+	skb = arp_create(ARPOP_REQUEST, ETH_P_ARP, ip_dst, priv->dev, ip_src,
+			 NULL, attr->src, attr->dst);
+	if (!skb)
+		return NULL;
+
+	skb->pkt_type = PACKET_HOST;
+	skb->dev = priv->dev;
+
+	return skb;
+}
+
 struct stmmac_test_priv {
 	struct stmmac_packet_attrs *packet;
 	struct packet_type pt;
@@ -1396,6 +1414,94 @@ static int stmmac_test_l4filt_sa_udp(struct stmmac_priv *priv)
 	return __stmmac_test_l4filt(priv, 0, dummy_port, 0, ~0, true);
 }
 
+static int stmmac_test_arp_validate(struct sk_buff *skb,
+				    struct net_device *ndev,
+				    struct packet_type *pt,
+				    struct net_device *orig_ndev)
+{
+	struct stmmac_test_priv *tpriv = pt->af_packet_priv;
+	struct ethhdr *ehdr;
+	struct arphdr *ahdr;
+
+	ehdr = (struct ethhdr *)skb_mac_header(skb);
+	if (!ether_addr_equal(ehdr->h_dest, tpriv->packet->src))
+		goto out;
+
+	ahdr = arp_hdr(skb);
+	if (ahdr->ar_op != htons(ARPOP_REPLY))
+		goto out;
+
+	tpriv->ok = true;
+	complete(&tpriv->comp);
+out:
+	kfree_skb(skb);
+	return 0;
+}
+
+static int stmmac_test_arpoffload(struct stmmac_priv *priv)
+{
+	unsigned char src[ETH_ALEN] = {0x01, 0x02, 0x03, 0x04, 0x05, 0x06};
+	unsigned char dst[ETH_ALEN] = {0xff, 0xff, 0xff, 0xff, 0xff, 0xff};
+	struct stmmac_packet_attrs attr = { };
+	struct stmmac_test_priv *tpriv;
+	struct sk_buff *skb = NULL;
+	u32 ip_addr = 0xdeadcafe;
+	u32 ip_src = 0xdeadbeef;
+	int ret;
+
+	if (!priv->dma_cap.arpoffsel)
+		return -EOPNOTSUPP;
+
+	tpriv = kzalloc(sizeof(*tpriv), GFP_KERNEL);
+	if (!tpriv)
+		return -ENOMEM;
+
+	tpriv->ok = false;
+	init_completion(&tpriv->comp);
+
+	tpriv->pt.type = htons(ETH_P_ARP);
+	tpriv->pt.func = stmmac_test_arp_validate;
+	tpriv->pt.dev = priv->dev;
+	tpriv->pt.af_packet_priv = tpriv;
+	tpriv->packet = &attr;
+	dev_add_pack(&tpriv->pt);
+
+	attr.src = src;
+	attr.ip_src = ip_src;
+	attr.dst = dst;
+	attr.ip_dst = ip_addr;
+
+	skb = stmmac_test_get_arp_skb(priv, &attr);
+	if (!skb) {
+		ret = -ENOMEM;
+		goto cleanup;
+	}
+
+	ret = stmmac_set_arp_offload(priv, priv->hw, true, ip_addr);
+	if (ret)
+		goto cleanup;
+
+	ret = dev_set_promiscuity(priv->dev, 1);
+	if (ret)
+		goto cleanup;
+
+	skb_set_queue_mapping(skb, 0);
+	ret = dev_queue_xmit(skb);
+	if (ret)
+		goto cleanup_promisc;
+
+	wait_for_completion_timeout(&tpriv->comp, STMMAC_LB_TIMEOUT);
+	ret = tpriv->ok ? 0 : -ETIMEDOUT;
+
+cleanup_promisc:
+	dev_set_promiscuity(priv->dev, -1);
+cleanup:
+	stmmac_set_arp_offload(priv, priv->hw, false, 0x0);
+	dev_remove_pack(&tpriv->pt);
+	kfree(tpriv);
+	return ret;
+}
+
 #define STMMAC_LOOPBACK_NONE	0
 #define STMMAC_LOOPBACK_MAC	1
 #define STMMAC_LOOPBACK_PHY	2
@@ -1505,6 +1611,10 @@ static const struct stmmac_test {
 		.name = "L4 SA UDP Filtering ",
 		.lb = STMMAC_LOOPBACK_PHY,
 		.fn = stmmac_test_l4filt_sa_udp,
+	}, {
+		.name = "ARP Offload         ",
+		.lb = STMMAC_LOOPBACK_PHY,
+		.fn = stmmac_test_arpoffload,
 	},
 };
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
