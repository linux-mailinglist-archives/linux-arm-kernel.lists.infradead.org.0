Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1239A50CF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 10:05:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aTa7FCoHsUjBuqQZc6az/NW3T0j+/G+TniCs2X6WAj0=; b=kyp0C1jSER+bW/ml49ciCeSpx/
	N6L1jejyo/nyE5jaZQQ//UT3jkXX7mDjTX20eJGdW3rlWI0D+bavCWZEgk4clxH1C7yq9EgAf7Bnn
	NHoatsK+wXy5CB4lZJHdE/7fxk277MJs2GbRIoqQkAWse7q9cWaJBjXKjEFB6q7rtInjuasM8av+0
	btYg6+jyJ1zaVsKnyydJtPRqSd8wdyNxjcU197rrrrbzsKcoggFm2/a/VruX9WIr1H8OFh9A9TUfU
	ZA61j5Jvlsuh9eR7HMRCC6/zG5fr9NjMW7C5OYRbeiufOuW/n+ZXECdU+d9sLjXiHnLA8jAMyPdEA
	vJn2fUyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4hKc-0005jA-Vz; Mon, 02 Sep 2019 08:04:59 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4hII-0004AD-7R
 for linux-arm-kernel@bombadil.infradead.org; Mon, 02 Sep 2019 08:02:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ux7wDS2S+lO2yERQuRC9EL57YmpIWgGNTBPP9WlN2Sw=; b=BiSeNtK/nFSXuzUqxaEiOYzDJ
 dNj0NN1xOkL2WFTaJVy1nBBub6G19CtlLmkhthQa9BGl3J1voNIfvb0xSh9n98n9a7O4WfV/IYjL/
 C6h9rI568XimPUBSgtW7q3/x7zvg4f2lJpt3JUYEwWi68msnxvwalQc1N4BNKleLxBMYrhSKvnfM6
 uza1DD2WUfdiR7j0zbEhZh21Msk+IyqMJJM6fq4OTpoofy11FSHgb2giTCXBJ07mtNB3JmEj2g/nj
 /jxwnbyIPFuWCHdV4KOdPbZATQDngKV5GiqSfULvF18by9PCGTCset9Bj2IwodBx94BMROVdUI7NL
 R8Y9xgSbQ==;
Received: from smtprelay-out1.synopsys.com ([198.182.61.142])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4hIW-0003ZG-2J
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 08:02:53 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 1D37BC043F;
 Mon,  2 Sep 2019 08:02:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1567411337; bh=Xxu8DBtQIODTKuymZxxeRybWui0XYpKFM+1XHky3mfU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=chr5YtTAJHV+/3iEMdrvVnv1/v269V2pF+X5gmdOzDQFHnEK5zGqEIRlb5MHbhV6L
 WKk7PHLw3/CqIouROVFaEjmsuRFNxy26xLcgRQHcqBfH2N6Z2s6UUV/2uBmA4Pj5ED
 HferFIY4Jklam/HD8tgq/XaRN0RQQiFRsyqBgENlmLCCG4RTxu1k+Fa38Azu75mNnW
 A1BApHy5TgoxCefFPFSeL8smrX0KC/Vf76MhCfXZSYoV8d4crz043uOjoVTc5ff05T
 f/Gq7C6TJ76G/1/LHwKjiOJEOllIwzm3Ox3F/1RRtlKPNIjf/jamcPo/3B8zxESBFz
 3hjQIPK+/N35g==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id CEB8CA008A;
 Mon,  2 Sep 2019 08:02:15 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 13/13] net: stmmac: selftests: Add Jumbo Frame tests
Date: Mon,  2 Sep 2019 10:01:55 +0200
Message-Id: <9ddd6fe0609a57fe1e974b5af69f562189dd08cf.1567410971.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1567410970.git.joabreu@synopsys.com>
References: <cover.1567410970.git.joabreu@synopsys.com>
In-Reply-To: <cover.1567410970.git.joabreu@synopsys.com>
References: <cover.1567410970.git.joabreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_090248_847475_463AC2FD 
X-CRM114-Status: GOOD (  19.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Add a test to validate the Jumbo Frame support in stmmac in single
channel and multichannel mode.

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
 .../net/ethernet/stmicro/stmmac/stmmac_selftests.c | 65 +++++++++++++++++++++-
 1 file changed, 62 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
index f531dbe038df..ff499b91ea9f 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c
@@ -43,9 +43,11 @@ struct stmmac_packet_attrs {
 	int dont_wait;
 	int timeout;
 	int size;
+	int max_size;
 	int remove_sa;
 	u8 id;
 	int sarc;
+	u16 queue_mapping;
 };
 
 static u8 stmmac_test_next_id;
@@ -73,12 +75,14 @@ static struct sk_buff *stmmac_test_get_udp_skb(struct stmmac_priv *priv,
 	else
 		size += sizeof(struct udphdr);
 
-	skb = netdev_alloc_skb(priv->dev, size);
+	if (attr->max_size && (attr->max_size > size))
+		size = attr->max_size;
+
+	skb = netdev_alloc_skb_ip_align(priv->dev, size);
 	if (!skb)
 		return NULL;
 
 	prefetchw(skb->data);
-	skb_reserve(skb, NET_IP_ALIGN);
 
 	if (attr->vlan > 1)
 		ehdr = skb_push(skb, ETH_HLEN + 8);
@@ -147,6 +151,9 @@ static struct sk_buff *stmmac_test_get_udp_skb(struct stmmac_priv *priv,
 		uhdr->source = htons(attr->sport);
 		uhdr->dest = htons(attr->dport);
 		uhdr->len = htons(sizeof(*shdr) + sizeof(*uhdr) + attr->size);
+		if (attr->max_size)
+			uhdr->len = htons(attr->max_size -
+					  (sizeof(*ihdr) + sizeof(*ehdr)));
 		uhdr->check = 0;
 	}
 
@@ -162,6 +169,10 @@ static struct sk_buff *stmmac_test_get_udp_skb(struct stmmac_priv *priv,
 		iplen += sizeof(*thdr);
 	else
 		iplen += sizeof(*uhdr);
+
+	if (attr->max_size)
+		iplen = attr->max_size - sizeof(*ehdr);
+
 	ihdr->tot_len = htons(iplen);
 	ihdr->frag_off = 0;
 	ihdr->saddr = htonl(attr->ip_src);
@@ -178,6 +189,8 @@ static struct sk_buff *stmmac_test_get_udp_skb(struct stmmac_priv *priv,
 
 	if (attr->size)
 		skb_put(skb, attr->size);
+	if (attr->max_size && (attr->max_size > skb->len))
+		skb_put(skb, attr->max_size - skb->len);
 
 	skb->csum = 0;
 	skb->ip_summed = CHECKSUM_PARTIAL;
@@ -324,7 +337,7 @@ static int __stmmac_test_loopback(struct stmmac_priv *priv,
 		goto cleanup;
 	}
 
-	skb_set_queue_mapping(skb, 0);
+	skb_set_queue_mapping(skb, attr->queue_mapping);
 	ret = dev_queue_xmit(skb);
 	if (ret)
 		goto cleanup;
@@ -1502,6 +1515,44 @@ static int stmmac_test_arpoffload(struct stmmac_priv *priv)
 	return ret;
 }
 
+static int __stmmac_test_jumbo(struct stmmac_priv *priv, u16 queue)
+{
+	struct stmmac_packet_attrs attr = { };
+	int size = priv->dma_buf_sz;
+
+	/* Only XGMAC has SW support for multiple RX descs in same packet */
+	if (priv->plat->has_xgmac)
+		size = priv->dev->max_mtu;
+
+	attr.dst = priv->dev->dev_addr;
+	attr.max_size = size - ETH_FCS_LEN;
+	attr.queue_mapping = queue;
+
+	return __stmmac_test_loopback(priv, &attr);
+}
+
+static int stmmac_test_jumbo(struct stmmac_priv *priv)
+{
+	return __stmmac_test_jumbo(priv, 0);
+}
+
+static int stmmac_test_mjumbo(struct stmmac_priv *priv)
+{
+	u32 chan, tx_cnt = priv->plat->tx_queues_to_use;
+	int ret;
+
+	if (tx_cnt <= 1)
+		return -EOPNOTSUPP;
+
+	for (chan = 0; chan < tx_cnt; chan++) {
+		ret = __stmmac_test_jumbo(priv, chan);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
 #define STMMAC_LOOPBACK_NONE	0
 #define STMMAC_LOOPBACK_MAC	1
 #define STMMAC_LOOPBACK_PHY	2
@@ -1615,6 +1666,14 @@ static const struct stmmac_test {
 		.name = "ARP Offload         ",
 		.lb = STMMAC_LOOPBACK_PHY,
 		.fn = stmmac_test_arpoffload,
+	}, {
+		.name = "Jumbo Frame         ",
+		.lb = STMMAC_LOOPBACK_PHY,
+		.fn = stmmac_test_jumbo,
+	}, {
+		.name = "Multichannel Jumbo  ",
+		.lb = STMMAC_LOOPBACK_PHY,
+		.fn = stmmac_test_mjumbo,
 	},
 };
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
