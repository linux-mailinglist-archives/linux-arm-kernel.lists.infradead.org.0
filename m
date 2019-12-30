Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0666712D0E5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 15:43:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ABZbfG4WaYEv2xsZt3gxs9zr4y3UmWFzPXYMVX5WLNQ=; b=kgTSVY1U56lfd0
	iiqx1csC9/7h0RxsO8qEQ3y0z+XbIzMBOdZkJRVq1EmXRY6L5gw30Vyt1Awyr/Ukq/g/mH50TPIyK
	FYLYRSLjaWm1Z5zI/4cUNuC8kcnwMqB7+eRRAX7PowqCqsTlj4GEZHq/5OM3b6nrnEyAJu3Rsq8Wj
	Bde5fd04BTo5/ZNhUHHS+yW8jB4OgjdpU7Av5uimpjJSyOuh7cOZ1WnFX4hdgWaw/xI2jrpbIgpok
	5//Cl7GDn4WTU0ZUIBqd/NnIxAM8kpXqa0MXKHetOKewWLyuInLipMcBzaZqobHeV8XJCrkgJG+bJ
	tpOdIJ1Wv3Fpo/EqMAKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilwGC-0004Bg-Su; Mon, 30 Dec 2019 14:43:08 +0000
Received: from mail.dlink.ru ([178.170.168.18] helo=fd.dlink.ru)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilwFY-0003vw-GW; Mon, 30 Dec 2019 14:42:30 +0000
Received: by fd.dlink.ru (Postfix, from userid 5000)
 id 596BE1B21812; Mon, 30 Dec 2019 17:32:42 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 fd.dlink.ru 596BE1B21812
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dlink.ru; s=mail;
 t=1577716363; bh=vMMdZPRhhDCtnbuTLqLyjTW+Dv/ebEhvjE+SEn3R/dc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=C4PUPT5aZfqEy+kMGpyrZc5ufQXKbyCgxM7U9mAmBzS8gDrxUVI19cHu+u6DxK4SF
 ejToayX02+FTnft8J8lMXgehX4n9JP1J/GUGg6Ms13QzXNvWeRgEY1xh2sQkpGEgIy
 a3T3fWwmwDRKya9tWVewHt8NCB/ALfqPS/rxGCJ4=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dlink.ru
X-Spam-Level: 
X-Spam-Status: No, score=-99.2 required=7.5 tests=BAYES_50,URIBL_BLOCKED,
 USER_IN_WHITELIST autolearn=disabled version=3.4.2
Received: from mail.rzn.dlink.ru (mail.rzn.dlink.ru [178.170.168.13])
 by fd.dlink.ru (Postfix) with ESMTP id DD1001B21836;
 Mon, 30 Dec 2019 17:31:39 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 fd.dlink.ru DD1001B21836
Received: from mail.rzn.dlink.ru (localhost [127.0.0.1])
 by mail.rzn.dlink.ru (Postfix) with ESMTP id 6D13F1B229CB;
 Mon, 30 Dec 2019 17:31:37 +0300 (MSK)
Received: from localhost.localdomain (unknown [196.196.203.126])
 by mail.rzn.dlink.ru (Postfix) with ESMTPA;
 Mon, 30 Dec 2019 17:31:37 +0300 (MSK)
From: Alexander Lobakin <alobakin@dlink.ru>
To: "David S. Miller" <davem@davemloft.net>
Subject: [PATCH RFC net-next 18/19] net: dsa: tag_qca: split out common tag
 accessors
Date: Mon, 30 Dec 2019 17:30:26 +0300
Message-Id: <20191230143028.27313-19-alobakin@dlink.ru>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191230143028.27313-1-alobakin@dlink.ru>
References: <20191230143028.27313-1-alobakin@dlink.ru>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_064228_906483_4AF08DCF 
X-CRM114-Status: GOOD (  11.86  )
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

...to make them available for the upcoming GRO callbacks.

Signed-off-by: Alexander Lobakin <alobakin@dlink.ru>
---
 net/dsa/tag_qca.c | 45 +++++++++++++++++++++++++++++----------------
 1 file changed, 29 insertions(+), 16 deletions(-)

diff --git a/net/dsa/tag_qca.c b/net/dsa/tag_qca.c
index 8939abce36d7..bee2788e034d 100644
--- a/net/dsa/tag_qca.c
+++ b/net/dsa/tag_qca.c
@@ -28,6 +28,27 @@
 #define QCA_HDR_XMIT_FROM_CPU		BIT(7)
 #define QCA_HDR_XMIT_DP(port)		FIELD_PREP(GENMASK(6, 0), BIT(port))
 
+static inline bool qca_tag_sanity_check(const u8 *data)
+{
+	/* The QCA header is added by the switch between src addr and Ethertype
+	 * At this point, skb->data points to ethertype so header should be
+	 * right before
+	 */
+	u16 hdr = ntohs(*(__be16 *)(data - 2));
+
+	return QCA_HDR_RECV_VERSION(hdr) == QCA_HDR_VERSION;
+}
+
+static inline int qca_tag_source_port(const u8 *data)
+{
+	return *(data - 1) & QCA_HDR_RECV_SOURCE_PORT_MASK;
+}
+
+static inline __be16 qca_tag_encap_proto(const u8 *data)
+{
+	return *(__be16 *)data;
+}
+
 static struct sk_buff *qca_tag_xmit(struct sk_buff *skb, struct net_device *dev)
 {
 	const struct dsa_port *dp = dsa_slave_to_port(dev);
@@ -55,34 +76,26 @@ static struct sk_buff *qca_tag_rcv(struct sk_buff *skb, struct net_device *dev,
 				   struct packet_type *pt)
 {
 	int port;
-	__be16 *phdr, hdr;
 
 	if (unlikely(!pskb_may_pull(skb, QCA_HDR_LEN)))
 		return NULL;
 
-	/* The QCA header is added by the switch between src addr and Ethertype
-	 * At this point, skb->data points to ethertype so header should be
-	 * right before
-	 */
-	phdr = (__be16 *)(skb->data - 2);
-	hdr = ntohs(*phdr);
-
 	/* Make sure the version is correct */
-	if (unlikely(QCA_HDR_RECV_VERSION(hdr) != QCA_HDR_VERSION))
+	if (unlikely(!qca_tag_sanity_check(skb->data)))
 		return NULL;
 
-	/* Remove QCA tag and recalculate checksum */
-	skb_pull_rcsum(skb, QCA_HDR_LEN);
-	memmove(skb->data - ETH_HLEN, skb->data - ETH_HLEN - QCA_HDR_LEN,
-		ETH_HLEN - QCA_HDR_LEN);
-
 	/* Get source port information */
-	port = (hdr & QCA_HDR_RECV_SOURCE_PORT_MASK);
+	port = qca_tag_source_port(skb->data);
 
 	skb->dev = dsa_master_find_slave(dev, 0, port);
 	if (!skb->dev)
 		return NULL;
 
+	/* Remove QCA tag and recalculate checksum */
+	skb_pull_rcsum(skb, QCA_HDR_LEN);
+	memmove(skb->data - ETH_HLEN, skb->data - ETH_HLEN - QCA_HDR_LEN,
+		ETH_HLEN - QCA_HDR_LEN);
+
 	return skb;
 }
 
@@ -90,7 +103,7 @@ static void qca_tag_flow_dissect(const struct sk_buff *skb, __be16 *proto,
 				 int *offset)
 {
 	*offset = QCA_HDR_LEN;
-	*proto = ((__be16 *)skb->data)[0];
+	*proto = qca_tag_encap_proto(skb->data);
 }
 
 static const struct dsa_device_ops qca_netdev_ops = {
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
