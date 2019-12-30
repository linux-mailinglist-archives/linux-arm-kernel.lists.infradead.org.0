Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E17812D114
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 15:45:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g/xZZdCykS9ajIBBClO8/9tUxYVFqeq6BEC+tUN76hU=; b=FJYeOKjWstoi7r
	+WAqZsblrkCh1RZqcFbQubh6QKmEfr0UmOpRxDuASg45OLjEgymkwmSqtGsaTq6CirchIR1jY8PsZ
	zDwBQDsvs8IqxGlOHuegdeIILhPxD35xxOyjKESH7oysCSed9U0eBNBG/dxxbNFL2L0f13LeYPlp9
	2/dZQnwUMyL7ydK2c9XxAKcDbyLX2MnkzSA4a4jLiTp9C+gVabHCyJJy4VzJB+3XE4YI5PZH3zFM0
	4uXTKD76WWFLV7ruH1BHpe0DQD16QqaIOEweqamZE+pWHKXyFH3VrehRb4/b46c45s15xvvBdbIr6
	POmHiANS0rAQU55SqqQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilwIh-0007Aq-Jz; Mon, 30 Dec 2019 14:45:43 +0000
Received: from mail.dlink.ru ([178.170.168.18] helo=fd.dlink.ru)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilwFb-0003xV-0X; Mon, 30 Dec 2019 14:42:33 +0000
Received: by fd.dlink.ru (Postfix, from userid 5000)
 id C7A1F1B218EC; Mon, 30 Dec 2019 17:32:02 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 fd.dlink.ru C7A1F1B218EC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dlink.ru; s=mail;
 t=1577716322; bh=K9IglDMfo6fAz8oDQ8Cy06HvYvmttudvu1VgNCQnFXk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=AEmV+PzosTQy+ffRHWc7q8N5rnnRC5TmOT5+nRzFPZZCQzN1B4i0WyBid1CGiUZqp
 eY1GlsWriOtgr+G7r8uRuYqqKSqbqP0QQZTjdHP2ed/kYjiurHwwmfUIrulHo900+6
 k3ovWwWBOoNzTwWZwsfNRyP9/4AAVIfiiO6uCwpc=
Received: from mail.rzn.dlink.ru (mail.rzn.dlink.ru [178.170.168.13])
 by fd.dlink.ru (Postfix) with ESMTP id 615FD1B21809;
 Mon, 30 Dec 2019 17:31:27 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 fd.dlink.ru 615FD1B21809
Received: from mail.rzn.dlink.ru (localhost [127.0.0.1])
 by mail.rzn.dlink.ru (Postfix) with ESMTP id 5C76B1B229CB;
 Mon, 30 Dec 2019 17:31:25 +0300 (MSK)
Received: from localhost.localdomain (unknown [196.196.203.126])
 by mail.rzn.dlink.ru (Postfix) with ESMTPA;
 Mon, 30 Dec 2019 17:31:25 +0300 (MSK)
From: Alexander Lobakin <alobakin@dlink.ru>
To: "David S. Miller" <davem@davemloft.net>
Subject: [PATCH RFC net-next 12/19] net: dsa: tag_lan9303: split out common
 tag accessors
Date: Mon, 30 Dec 2019 17:30:20 +0300
Message-Id: <20191230143028.27313-13-alobakin@dlink.ru>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191230143028.27313-1-alobakin@dlink.ru>
References: <20191230143028.27313-1-alobakin@dlink.ru>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_064231_439621_322992FC 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: 2.4 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.170.168.18 listed in list.dnswl.org]
 2.6 RCVD_IN_SBL            RBL: Received via a relay in Spamhaus SBL
 [196.196.203.126 listed in zen.spamhaus.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>, Song Liu <songliubraving@fb.com>,
 Jakub Kicinski <jakub.kicinski@netronome.com>,
 Alexander Lobakin <alobakin@dlink.ru>,
 Yoshiki Komachi <komachi.yoshiki@gmail.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Stanislav Fomichev <sdf@google.com>,
 Matteo Croce <mcroce@redhat.com>, Edward Cree <ecree@solarflare.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Jakub Sitnicki <jakub@cloudflare.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Paolo Abeni <pabeni@redhat.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, Hauke Mehrtens <hauke@hauke-m.de>,
 Sean Wang <sean.wang@mediatek.com>, Jiri Pirko <jiri@mellanox.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 Paul Blakey <paulb@mellanox.com>,
 Stephen Hemminger <stephen@networkplumber.org>,
 Taehee Yoo <ap420073@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

...as they will be needed in the upcoming GRO callbacks.

Signed-off-by: Alexander Lobakin <alobakin@dlink.ru>
---
 net/dsa/tag_lan9303.c | 46 +++++++++++++++++++++++++++++--------------
 1 file changed, 31 insertions(+), 15 deletions(-)

diff --git a/net/dsa/tag_lan9303.c b/net/dsa/tag_lan9303.c
index d328a44381a9..ba03502986a4 100644
--- a/net/dsa/tag_lan9303.c
+++ b/net/dsa/tag_lan9303.c
@@ -38,6 +38,32 @@
 # define LAN9303_TAG_RX_TRAPPED_TO_CPU (LAN9303_TAG_RX_IGMP | \
 					LAN9303_TAG_RX_STP)
 
+static inline bool lan9303_sanity_check(const u8 *data)
+{
+	/* '->data' points into the middle of our special VLAN tag information:
+	 *
+	 * ~ MAC src   | 0x81 | 0x00 | 0xyy | 0xzz | ether type
+	 *                           ^
+	 *                        ->data
+	 */
+	return *(__be16 *)(data - 2) == htons(ETH_P_8021Q);
+}
+
+static inline bool lan9303_trapped_to_cpu(const u8 *data)
+{
+	return *(data + 1) & LAN9303_TAG_RX_TRAPPED_TO_CPU;
+}
+
+static inline int lan9303_source_port(const u8 *data)
+{
+	return *(data + 1) & GENMASK(1, 0);
+}
+
+static inline __be16 lan9303_encap_proto(const u8 *data)
+{
+	return *(__be16 *)(data + 2);
+}
+
 /* Decide whether to transmit using ALR lookup, or transmit directly to
  * port using tag. ALR learning is performed only when using ALR lookup.
  * If the two external ports are bridged and the frame is unicast,
@@ -85,8 +111,6 @@ static struct sk_buff *lan9303_xmit(struct sk_buff *skb, struct net_device *dev)
 static struct sk_buff *lan9303_rcv(struct sk_buff *skb, struct net_device *dev,
 				   struct packet_type *pt)
 {
-	u16 *lan9303_tag;
-	u16 lan9303_tag1;
 	unsigned int source_port;
 
 	if (unlikely(!pskb_may_pull(skb, LAN9303_TAG_LEN))) {
@@ -95,21 +119,12 @@ static struct sk_buff *lan9303_rcv(struct sk_buff *skb, struct net_device *dev,
 		return NULL;
 	}
 
-	/* '->data' points into the middle of our special VLAN tag information:
-	 *
-	 * ~ MAC src   | 0x81 | 0x00 | 0xyy | 0xzz | ether type
-	 *                           ^
-	 *                        ->data
-	 */
-	lan9303_tag = (u16 *)(skb->data - 2);
-
-	if (lan9303_tag[0] != htons(ETH_P_8021Q)) {
+	if (!lan9303_sanity_check(skb->data)) {
 		dev_warn_ratelimited(&dev->dev, "Dropping packet due to invalid VLAN marker\n");
 		return NULL;
 	}
 
-	lan9303_tag1 = ntohs(lan9303_tag[1]);
-	source_port = lan9303_tag1 & 0x3;
+	source_port = lan9303_source_port(skb->data);
 
 	skb->dev = dsa_master_find_slave(dev, 0, source_port);
 	if (!skb->dev) {
@@ -117,13 +132,14 @@ static struct sk_buff *lan9303_rcv(struct sk_buff *skb, struct net_device *dev,
 		return NULL;
 	}
 
+	skb->offload_fwd_mark = !lan9303_trapped_to_cpu(skb->data);
+
 	/* remove the special VLAN tag between the MAC addresses
 	 * and the current ethertype field.
 	 */
 	skb_pull_rcsum(skb, 2 + 2);
 	memmove(skb->data - ETH_HLEN, skb->data - (ETH_HLEN + LAN9303_TAG_LEN),
 		2 * ETH_ALEN);
-	skb->offload_fwd_mark = !(lan9303_tag1 & LAN9303_TAG_RX_TRAPPED_TO_CPU);
 
 	return skb;
 }
@@ -132,7 +148,7 @@ static void lan9303_flow_dissect(const struct sk_buff *skb, __be16 *proto,
 				 int *offset)
 {
 	*offset = LAN9303_TAG_LEN;
-	*proto = *(__be16 *)(skb->data + 2);
+	*proto = lan9303_encap_proto(skb->data);
 }
 
 static const struct dsa_device_ops lan9303_netdev_ops = {
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
