Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B29E882389
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 19:03:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xRE6/OoDgK96ubqucJWkEUlMvngD6Z/9i004o7OCZOM=; b=PKpu+i5NkyJT4MAvHJ8unyX35A
	SD4M93fFpsCVCi5nSoo7824sc9+fZSspaNW7p6+TptNC0Nr6eEUF4//tbthAXttA0fKlv48wHHadf
	Ve33KEICu9H1bQ7l0vVKAfJW4qH81XCdrNsebC4+MsZJgY2mSG9jKs+gqc3QF4cG1c25OMJhbrfIG
	v/zdk7R/UuOOw/RQ5IjlZ10AsbzJYhS71ZeBDrQx5KMMXeKtP7OGSKNgPslHHs546t5p8FRaW3I2u
	yninoXNFUFi08RZmBzBZ00rv+vfRwKsU570K+i3qJb8vScFwIXBqE2VgN0B+EP4/B9NFneWch5GwU
	lLm0I1XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hugOd-0006Zc-Fv; Mon, 05 Aug 2019 17:03:43 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hugMR-0004R0-7M
 for linux-arm-kernel@bombadil.infradead.org; Mon, 05 Aug 2019 17:01:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mixvaGpQ5jCaoZRHEQVNEigWjiyaGBbdBqmYrc5mPDE=; b=IQNTKTLGC32u9KqjA8eg2n0BA
 HXANa8httMGp30Dp4Onyc5wnm/tXjmgSMPF7GxHGSrqqeN0D+ta2h7QkIaKW37hNdOl1ywQnDiMUF
 aYavEZc3Unl2w6UEq/ShD4gDW6oKzVsmmdikHyMhjrnMIh7O96/Jn1HT2fuuTuXLNgVb01hchJewP
 z2wqunzbV5AETmx3Du2V0eyMNqTbXXgjCyXEqSCGRTomWFpQrBlgXo6NucU9ywxSSmaR6DZuxDFhc
 X6Ou0YGqffRWcMWkV4D5+IKyPQkdyff9n6uj+0bUVxH+IId6yPB5V5erwPgmogxTMSIlDG25Dfk+1
 DxwBlKfuw==;
Received: from smtprelay-out1.synopsys.com ([198.182.47.102])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hug7J-0005Mx-EF
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 16:45:55 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id BE91CC01D3;
 Mon,  5 Aug 2019 16:45:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1565023530; bh=ioVAbVTrp1gtNxHKmKRDAI7LBoyQFB7nOdhp6renXbs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=eEQUHpKQREg6IkNlc2rx6Dqge3j7QbMfr18MQd2OjgqJfSQmb2RfMWJA9CCPgKAk9
 1VGxK19ro1OCgK8vMGGi0vpN6U13eXjET2PiZ/aignDSOLNwr5rrlOduW18UMk4hOi
 SfcKhYIGGK7h7y5hdKFd4cI2LE/oWtjMEBxMGpE83PHTtgfFG1klKQJDXLDlc5Av5O
 58/JL2dLPn8vwZQPH9V/m2ONJ2tpuJOKTiHeqXY1oqCo9Mayv0OnCrhg9cM+9kR8B/
 eXki6gH52olkYqz25KOSB82ZsrcU0iVDRjpzVWxFJQtldVC9jJstAvLTwzsPD3t0VS
 llkhW07ks6lHw==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 858C1A00A9;
 Mon,  5 Aug 2019 16:45:28 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 25/26] net: stmmac: selftests: Add selftest for VLAN
 TX Offload
Date: Mon,  5 Aug 2019 18:44:52 +0200
Message-Id: <4bde6753c9ec8aebdc981857715c8ecd0b12e2d1.1565022597.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1565022597.git.joabreu@synopsys.com>
References: <cover.1565022597.git.joabreu@synopsys.com>
In-Reply-To: <cover.1565022597.git.joabreu@synopsys.com>
References: <cover.1565022597.git.joabreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_174549_942738_B4DBCA13 
X-CRM114-Status: GOOD (  16.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Add 2 new selftests for VLAN Insertion offloading. Tests are for inner
and outer VLAN offloading.

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
 .../net/ethernet/stmicro/stmmac/stmmac_selftests.c | 81 ++++++++++++++++++++++
 1 file changed, 81 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
index acfab86431b1..a0da35b2b4c2 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
@@ -731,6 +731,9 @@ static int stmmac_test_vlan_validate(struct sk_buff *skb,
 	struct ethhdr *ehdr;
 	struct udphdr *uhdr;
 	struct iphdr *ihdr;
+	u16 proto;
+
+	proto = tpriv->double_vlan ? ETH_P_8021AD : ETH_P_8021Q;
 
 	skb = skb_unshare(skb, GFP_ATOMIC);
 	if (!skb)
@@ -740,6 +743,12 @@ static int stmmac_test_vlan_validate(struct sk_buff *skb,
 		goto out;
 	if (skb_headlen(skb) < (STMMAC_TEST_PKT_SIZE - ETH_HLEN))
 		goto out;
+	if (tpriv->vlan_id) {
+		if (skb->vlan_proto != htons(proto))
+			goto out;
+		if (skb->vlan_tci != tpriv->vlan_id)
+			goto out;
+	}
 
 	ehdr = (struct ethhdr *)skb_mac_header(skb);
 	if (!ether_addr_equal(ehdr->h_dest, tpriv->packet->dst))
@@ -1084,6 +1093,70 @@ static int stmmac_test_reg_sar(struct stmmac_priv *priv)
 	return ret;
 }
 
+static int stmmac_test_vlanoff_common(struct stmmac_priv *priv, bool svlan)
+{
+	struct stmmac_packet_attrs attr = { };
+	struct stmmac_test_priv *tpriv;
+	struct sk_buff *skb = NULL;
+	int ret = 0;
+	u16 proto;
+
+	if (!priv->dma_cap.vlins)
+		return -EOPNOTSUPP;
+
+	tpriv = kzalloc(sizeof(*tpriv), GFP_KERNEL);
+	if (!tpriv)
+		return -ENOMEM;
+
+	proto = svlan ? ETH_P_8021AD : ETH_P_8021Q;
+
+	tpriv->ok = false;
+	tpriv->double_vlan = svlan;
+	init_completion(&tpriv->comp);
+
+	tpriv->pt.type = htons(ETH_P_IP);
+	tpriv->pt.func = stmmac_test_vlan_validate;
+	tpriv->pt.dev = priv->dev;
+	tpriv->pt.af_packet_priv = tpriv;
+	tpriv->packet = &attr;
+	tpriv->vlan_id = 0x123;
+	dev_add_pack(&tpriv->pt);
+
+	ret = vlan_vid_add(priv->dev, htons(proto), tpriv->vlan_id);
+	if (ret)
+		goto cleanup;
+
+	attr.dst = priv->dev->dev_addr;
+
+	skb = stmmac_test_get_udp_skb(priv, &attr);
+	if (!skb) {
+		ret = -ENOMEM;
+		goto vlan_del;
+	}
+
+	__vlan_hwaccel_put_tag(skb, htons(proto), tpriv->vlan_id);
+	ret = __stmmac_test_loopback(priv, &attr);
+
+vlan_del:
+	vlan_vid_del(priv->dev, htons(proto), tpriv->vlan_id);
+cleanup:
+	dev_remove_pack(&tpriv->pt);
+	kfree(tpriv);
+	return ret;
+}
+
+static int stmmac_test_vlanoff(struct stmmac_priv *priv)
+{
+	return stmmac_test_vlanoff_common(priv, false);
+}
+
+static int stmmac_test_svlanoff(struct stmmac_priv *priv)
+{
+	if (!priv->dma_cap.dvlan)
+		return -EOPNOTSUPP;
+	return stmmac_test_vlanoff_common(priv, true);
+}
+
 #define STMMAC_LOOPBACK_NONE	0
 #define STMMAC_LOOPBACK_MAC	1
 #define STMMAC_LOOPBACK_PHY	2
@@ -1161,6 +1234,14 @@ static const struct stmmac_test {
 		.name = "SA Replacement (reg)",
 		.lb = STMMAC_LOOPBACK_PHY,
 		.fn = stmmac_test_reg_sar,
+	}, {
+		.name = "VLAN TX Insertion   ",
+		.lb = STMMAC_LOOPBACK_PHY,
+		.fn = stmmac_test_vlanoff,
+	}, {
+		.name = "SVLAN TX Insertion  ",
+		.lb = STMMAC_LOOPBACK_PHY,
+		.fn = stmmac_test_svlanoff,
 	},
 };
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
