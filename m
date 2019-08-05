Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E536822F4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 18:47:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TC272B5tAnCh3RmWnoa4q9BXuUp8yVMkeGVsvdApZCE=; b=Sg7hhkDDNqGuSDf42au1AQFa8k
	ooqXOHHGsVqMZS8p8Y+soqtHDguyxtBU0DouHvDzSbk2eER0yI5Y5jxT4GbMjEfOmL8ZgdQx2fb1j
	2IOC11liFfVc1ufBlMrm0vUt0bPmWM5DYgVz5Kq1WoUmEIDBd1Q7K9eDSoCdogU3qw4S6dkj8v8IB
	d9YYUbqOaQgq4tqD6IWcznHVgYYeT9lpEk9WdEq4DLMY0slzHX2yZ2wj1vaNQvkA4K9ddw2HUoA9y
	ZOIOrnr9jzc6ahKYDfE2MAbMjvLgxvC05FQRb74v+Um+Jqb/slivydec9GkF/BIou0+MD19s8RA39
	qJsrDOOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hug92-0005pA-Ep; Mon, 05 Aug 2019 16:47:36 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hug71-0004Cz-GY
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 16:45:36 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id D0EA6C01B0;
 Mon,  5 Aug 2019 16:45:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1565023529; bh=aFQyYC49aEuzT6mdwS7IuCxzUctBZfDEyfsSdsFi+i8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=ilxIZvNqaGcz6zE2ahw9U6mjV7RGEQDyqihagNpFTInG2Vt4oMGl/L51z4CX2JVX8
 YYaxlt+EUWuQvCidrt/ANZ3mXYFpm8XlCULib2HAvv+1t+ZQt5h5qfEwFnOpOVNJ08
 AaqBTI2x4d/hUzv4QCzWQ/CoApo4Eooih7OsWEGp6wnOkcDAhqwzjou+agfY1PGCrH
 9fejANJsM6nJ8jFCkTQUwgcw5yqks2VGYQK/7nB4FnSi4vdAgRMdyCoyZXXSDW1vQF
 xI0atG5AMFh3oLNOEVIFJec6yi5hDOB8D42yL7ZttyD9NhskIHuj86032nMtRBUChC
 hHUatp0RCK/mw==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 867ABA007A;
 Mon,  5 Aug 2019 16:45:27 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 09/26] net: stmmac: selftests: Add test for VLAN and
 Double VLAN Filtering
Date: Mon,  5 Aug 2019 18:44:36 +0200
Message-Id: <1fa42ae457a3817554e53fba7145df4a86f335a9.1565022597.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1565022597.git.joabreu@synopsys.com>
References: <cover.1565022597.git.joabreu@synopsys.com>
In-Reply-To: <cover.1565022597.git.joabreu@synopsys.com>
References: <cover.1565022597.git.joabreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_094531_571145_218F9FD4 
X-CRM114-Status: GOOD (  16.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Add a selftest for VLAN and Double VLAN Filtering in stmmac.

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
 .../net/ethernet/stmicro/stmmac/stmmac_selftests.c | 205 +++++++++++++++++++++
 1 file changed, 205 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
index 83b775a8cedc..6b08bb15af15 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
@@ -715,6 +715,203 @@ static int stmmac_test_rss(struct stmmac_priv *priv)
 	return __stmmac_test_loopback(priv, &attr);
 }
 
+static int stmmac_test_vlan_validate(struct sk_buff *skb,
+				     struct net_device *ndev,
+				     struct packet_type *pt,
+				     struct net_device *orig_ndev)
+{
+	struct stmmac_test_priv *tpriv = pt->af_packet_priv;
+	struct stmmachdr *shdr;
+	struct ethhdr *ehdr;
+	struct udphdr *uhdr;
+	struct iphdr *ihdr;
+
+	skb = skb_unshare(skb, GFP_ATOMIC);
+	if (!skb)
+		goto out;
+
+	if (skb_linearize(skb))
+		goto out;
+	if (skb_headlen(skb) < (STMMAC_TEST_PKT_SIZE - ETH_HLEN))
+		goto out;
+
+	ehdr = (struct ethhdr *)skb_mac_header(skb);
+	if (!ether_addr_equal(ehdr->h_dest, tpriv->packet->dst))
+		goto out;
+
+	ihdr = ip_hdr(skb);
+	if (tpriv->double_vlan)
+		ihdr = (struct iphdr *)(skb_network_header(skb) + 4);
+	if (ihdr->protocol != IPPROTO_UDP)
+		goto out;
+
+	uhdr = (struct udphdr *)((u8 *)ihdr + 4 * ihdr->ihl);
+	if (uhdr->dest != htons(tpriv->packet->dport))
+		goto out;
+
+	shdr = (struct stmmachdr *)((u8 *)uhdr + sizeof(*uhdr));
+	if (shdr->magic != cpu_to_be64(STMMAC_TEST_PKT_MAGIC))
+		goto out;
+
+	tpriv->ok = true;
+	complete(&tpriv->comp);
+
+out:
+	kfree_skb(skb);
+	return 0;
+}
+
+static int stmmac_test_vlanfilt(struct stmmac_priv *priv)
+{
+	struct stmmac_packet_attrs attr = { };
+	struct stmmac_test_priv *tpriv;
+	struct sk_buff *skb = NULL;
+	int ret = 0, i;
+
+	if (!priv->dma_cap.vlhash)
+		return -EOPNOTSUPP;
+
+	tpriv = kzalloc(sizeof(*tpriv), GFP_KERNEL);
+	if (!tpriv)
+		return -ENOMEM;
+
+	tpriv->ok = false;
+	init_completion(&tpriv->comp);
+
+	tpriv->pt.type = htons(ETH_P_IP);
+	tpriv->pt.func = stmmac_test_vlan_validate;
+	tpriv->pt.dev = priv->dev;
+	tpriv->pt.af_packet_priv = tpriv;
+	tpriv->packet = &attr;
+
+	/*
+	 * As we use HASH filtering, false positives may appear. This is a
+	 * specially chosen ID so that adjacent IDs (+4) have different
+	 * HASH values.
+	 */
+	tpriv->vlan_id = 0x123;
+	dev_add_pack(&tpriv->pt);
+
+	ret = vlan_vid_add(priv->dev, htons(ETH_P_8021Q), tpriv->vlan_id);
+	if (ret)
+		goto cleanup;
+
+	for (i = 0; i < 4; i++) {
+		attr.vlan = 1;
+		attr.vlan_id_out = tpriv->vlan_id + i;
+		attr.dst = priv->dev->dev_addr;
+		attr.sport = 9;
+		attr.dport = 9;
+
+		skb = stmmac_test_get_udp_skb(priv, &attr);
+		if (!skb) {
+			ret = -ENOMEM;
+			goto vlan_del;
+		}
+
+		skb_set_queue_mapping(skb, 0);
+		ret = dev_queue_xmit(skb);
+		if (ret)
+			goto vlan_del;
+
+		wait_for_completion_timeout(&tpriv->comp, STMMAC_LB_TIMEOUT);
+		ret = !tpriv->ok;
+		if (ret && !i) {
+			goto vlan_del;
+		} else if (!ret && i) {
+			ret = -1;
+			goto vlan_del;
+		} else {
+			ret = 0;
+		}
+
+		tpriv->ok = false;
+	}
+
+vlan_del:
+	vlan_vid_del(priv->dev, htons(ETH_P_8021Q), tpriv->vlan_id);
+cleanup:
+	dev_remove_pack(&tpriv->pt);
+	kfree(tpriv);
+	return ret;
+}
+
+static int stmmac_test_dvlanfilt(struct stmmac_priv *priv)
+{
+	struct stmmac_packet_attrs attr = { };
+	struct stmmac_test_priv *tpriv;
+	struct sk_buff *skb = NULL;
+	int ret = 0, i;
+
+	if (!priv->dma_cap.vlhash)
+		return -EOPNOTSUPP;
+
+	tpriv = kzalloc(sizeof(*tpriv), GFP_KERNEL);
+	if (!tpriv)
+		return -ENOMEM;
+
+	tpriv->ok = false;
+	tpriv->double_vlan = true;
+	init_completion(&tpriv->comp);
+
+	tpriv->pt.type = htons(ETH_P_8021Q);
+	tpriv->pt.func = stmmac_test_vlan_validate;
+	tpriv->pt.dev = priv->dev;
+	tpriv->pt.af_packet_priv = tpriv;
+	tpriv->packet = &attr;
+
+	/*
+	 * As we use HASH filtering, false positives may appear. This is a
+	 * specially chosen ID so that adjacent IDs (+4) have different
+	 * HASH values.
+	 */
+	tpriv->vlan_id = 0x123;
+	dev_add_pack(&tpriv->pt);
+
+	ret = vlan_vid_add(priv->dev, htons(ETH_P_8021AD), tpriv->vlan_id);
+	if (ret)
+		goto cleanup;
+
+	for (i = 0; i < 4; i++) {
+		attr.vlan = 2;
+		attr.vlan_id_out = tpriv->vlan_id + i;
+		attr.dst = priv->dev->dev_addr;
+		attr.sport = 9;
+		attr.dport = 9;
+
+		skb = stmmac_test_get_udp_skb(priv, &attr);
+		if (!skb) {
+			ret = -ENOMEM;
+			goto vlan_del;
+		}
+
+		skb_set_queue_mapping(skb, 0);
+		ret = dev_queue_xmit(skb);
+		if (ret)
+			goto vlan_del;
+
+		wait_for_completion_timeout(&tpriv->comp, STMMAC_LB_TIMEOUT);
+		ret = !tpriv->ok;
+		if (ret && !i) {
+			goto vlan_del;
+		} else if (!ret && i) {
+			ret = -1;
+			goto vlan_del;
+		} else {
+			ret = 0;
+		}
+
+		tpriv->ok = false;
+	}
+
+vlan_del:
+	vlan_vid_del(priv->dev, htons(ETH_P_8021AD), tpriv->vlan_id);
+cleanup:
+	dev_remove_pack(&tpriv->pt);
+	kfree(tpriv);
+	return ret;
+}
+
 #define STMMAC_LOOPBACK_NONE	0
 #define STMMAC_LOOPBACK_MAC	1
 #define STMMAC_LOOPBACK_PHY	2
@@ -764,6 +961,14 @@ static const struct stmmac_test {
 		.name = "RSS                  ",
 		.lb = STMMAC_LOOPBACK_PHY,
 		.fn = stmmac_test_rss,
+	}, {
+		.name = "VLAN Filtering       ",
+		.lb = STMMAC_LOOPBACK_PHY,
+		.fn = stmmac_test_vlanfilt,
+	}, {
+		.name = "Double VLAN Filtering",
+		.lb = STMMAC_LOOPBACK_PHY,
+		.fn = stmmac_test_dvlanfilt,
 	},
 };
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
