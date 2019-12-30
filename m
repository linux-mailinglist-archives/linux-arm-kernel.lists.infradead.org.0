Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D04D912D0D9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 15:37:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ktuHc5GDmwFx8E97rK1UOIsa54wxfjkKEWEscUsgqs=; b=ddL7J5VkjDh2zE
	JRNBFQPWPxEFVgKvHzswns+Z0tmdMcAWzKrouVlhZqqMxV5c+RPeyCFVtTcuBP/n8hMgIZtactHAF
	1Zhhe8DxO8Uq9GzTLYnW+k4atmu/1PIcg6sv881AwBqowrjoNQapyksdowiYFen+HE7VdN8byBZyd
	QBGKtLjHmIBwrZPl+ug5buAdU5jnlNU20rwTHxKFZeaTSANUcZr/LgKWIj1V9s2Z4QEX5O2c+TSWQ
	6gh+3WZT1h45oxCCZsi0/no1qzBYbkndKgdhlBNfaeCOgKfwGbInVlCcB5HwRCkdUTorA+5T7C7UK
	pxyJ5vTdF1thKzILGYUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilwBB-00017A-JU; Mon, 30 Dec 2019 14:37:57 +0000
Received: from fd.dlink.ru ([178.170.168.18])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilwAj-0000xN-QJ; Mon, 30 Dec 2019 14:37:31 +0000
Received: by fd.dlink.ru (Postfix, from userid 5000)
 id 0913D1B210C1; Mon, 30 Dec 2019 17:31:28 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 fd.dlink.ru 0913D1B210C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dlink.ru; s=mail;
 t=1577716289; bh=L55d4XdjAtvKL0l9HxmdxPvldFzgURGS4JiXQm8SXdA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=G/ZMx01H4wK1kGPSkQ5hXbnB1LPCUOYawurey2dYWrN4V+lsdHzGjsnCQ6usv61m7
 44kBKmAJmJc/E6klpfzq/IvUguB+Lc+5bL44gy4VTg7gfUFwCiqRxK+J5mtgEuR5mQ
 gXtLyqlqRUqXEIUgU0sImBKvY9rQZEEicFJ/jegs=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dlink.ru
X-Spam-Level: 
X-Spam-Status: No, score=-99.2 required=7.5 tests=BAYES_50,URIBL_BLOCKED,
 USER_IN_WHITELIST autolearn=disabled version=3.4.2
Received: from mail.rzn.dlink.ru (mail.rzn.dlink.ru [178.170.168.13])
 by fd.dlink.ru (Postfix) with ESMTP id 83F871B20206;
 Mon, 30 Dec 2019 17:31:05 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 fd.dlink.ru 83F871B20206
Received: from mail.rzn.dlink.ru (localhost [127.0.0.1])
 by mail.rzn.dlink.ru (Postfix) with ESMTP id C95A91B229D0;
 Mon, 30 Dec 2019 17:31:03 +0300 (MSK)
Received: from localhost.localdomain (unknown [196.196.203.126])
 by mail.rzn.dlink.ru (Postfix) with ESMTPA;
 Mon, 30 Dec 2019 17:31:03 +0300 (MSK)
From: Alexander Lobakin <alobakin@dlink.ru>
To: "David S. Miller" <davem@davemloft.net>
Subject: [PATCH RFC net-next 01/19] net: dsa: make .flow_dissect() callback
 returning void
Date: Mon, 30 Dec 2019 17:30:09 +0300
Message-Id: <20191230143028.27313-2-alobakin@dlink.ru>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191230143028.27313-1-alobakin@dlink.ru>
References: <20191230143028.27313-1-alobakin@dlink.ru>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_063730_221672_6392FF0C 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: 2.4 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.6 RCVD_IN_SBL            RBL: Received via a relay in Spamhaus SBL
 [196.196.203.126 listed in zen.spamhaus.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.170.168.18 listed in list.dnswl.org]
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

There are no tag protocols which return non-zero values from
flow_dissect() callback. Remove it to simplify code and save some
object size.
If a particular tagger can't calculate offset and proto for some
reason, it can simply leave the original values untouched.

Signed-off-by: Alexander Lobakin <alobakin@dlink.ru>
---
 include/net/dsa.h         | 5 ++---
 net/core/flow_dissector.c | 8 ++++----
 net/dsa/tag_dsa.c         | 5 ++---
 net/dsa/tag_edsa.c        | 5 ++---
 net/dsa/tag_mtk.c         | 6 ++----
 net/dsa/tag_qca.c         | 6 ++----
 6 files changed, 14 insertions(+), 21 deletions(-)

diff --git a/include/net/dsa.h b/include/net/dsa.h
index da5578db228e..633d9894ab87 100644
--- a/include/net/dsa.h
+++ b/include/net/dsa.h
@@ -72,8 +72,8 @@ struct dsa_device_ops {
 	struct sk_buff *(*xmit)(struct sk_buff *skb, struct net_device *dev);
 	struct sk_buff *(*rcv)(struct sk_buff *skb, struct net_device *dev,
 			       struct packet_type *pt);
-	int (*flow_dissect)(const struct sk_buff *skb, __be16 *proto,
-			    int *offset);
+	void (*flow_dissect)(const struct sk_buff *skb, __be16 *proto,
+			     int *offset);
 	/* Used to determine which traffic should match the DSA filter in
 	 * eth_type_trans, and which, if any, should bypass it and be processed
 	 * as regular on the master net device.
@@ -774,4 +774,3 @@ static struct dsa_tag_driver *dsa_tag_driver_array[] =	{		\
 };									\
 module_dsa_tag_drivers(dsa_tag_driver_array)
 #endif
-
diff --git a/net/core/flow_dissector.c b/net/core/flow_dissector.c
index 2dbbb030fbed..2c9d8c7c76b3 100644
--- a/net/core/flow_dissector.c
+++ b/net/core/flow_dissector.c
@@ -971,12 +971,12 @@ bool __skb_flow_dissect(const struct net *net,
 #if IS_ENABLED(CONFIG_NET_DSA)
 		if (unlikely(skb->dev && netdev_uses_dsa(skb->dev) &&
 			     proto == htons(ETH_P_XDSA))) {
-			const struct dsa_device_ops *ops;
+			typeof_member(struct dsa_device_ops, flow_dissect) fd;
 			int offset = 0;
 
-			ops = skb->dev->dsa_ptr->tag_ops;
-			if (ops->flow_dissect &&
-			    !ops->flow_dissect(skb, &proto, &offset)) {
+			fd = skb->dev->dsa_ptr->tag_ops->flow_dissect;
+			if (fd) {
+				fd(skb, &proto, &offset);
 				hlen -= offset;
 				nhoff += offset;
 			}
diff --git a/net/dsa/tag_dsa.c b/net/dsa/tag_dsa.c
index 7ddec9794477..ef15aee58dfc 100644
--- a/net/dsa/tag_dsa.c
+++ b/net/dsa/tag_dsa.c
@@ -142,12 +142,11 @@ static struct sk_buff *dsa_rcv(struct sk_buff *skb, struct net_device *dev,
 	return skb;
 }
 
-static int dsa_tag_flow_dissect(const struct sk_buff *skb, __be16 *proto,
-				int *offset)
+static void dsa_tag_flow_dissect(const struct sk_buff *skb, __be16 *proto,
+				 int *offset)
 {
 	*offset = 4;
 	*proto = ((__be16 *)skb->data)[1];
-	return 0;
 }
 
 static const struct dsa_device_ops dsa_netdev_ops = {
diff --git a/net/dsa/tag_edsa.c b/net/dsa/tag_edsa.c
index e8eaa804ccb9..37a99254b411 100644
--- a/net/dsa/tag_edsa.c
+++ b/net/dsa/tag_edsa.c
@@ -161,12 +161,11 @@ static struct sk_buff *edsa_rcv(struct sk_buff *skb, struct net_device *dev,
 	return skb;
 }
 
-static int edsa_tag_flow_dissect(const struct sk_buff *skb, __be16 *proto,
-				 int *offset)
+static void edsa_tag_flow_dissect(const struct sk_buff *skb, __be16 *proto,
+				  int *offset)
 {
 	*offset = 8;
 	*proto = ((__be16 *)skb->data)[3];
-	return 0;
 }
 
 static const struct dsa_device_ops edsa_netdev_ops = {
diff --git a/net/dsa/tag_mtk.c b/net/dsa/tag_mtk.c
index b5705cba8318..c3ad7b7b142a 100644
--- a/net/dsa/tag_mtk.c
+++ b/net/dsa/tag_mtk.c
@@ -89,13 +89,11 @@ static struct sk_buff *mtk_tag_rcv(struct sk_buff *skb, struct net_device *dev,
 	return skb;
 }
 
-static int mtk_tag_flow_dissect(const struct sk_buff *skb, __be16 *proto,
-				int *offset)
+static void mtk_tag_flow_dissect(const struct sk_buff *skb, __be16 *proto,
+				 int *offset)
 {
 	*offset = 4;
 	*proto = ((__be16 *)skb->data)[1];
-
-	return 0;
 }
 
 static const struct dsa_device_ops mtk_netdev_ops = {
diff --git a/net/dsa/tag_qca.c b/net/dsa/tag_qca.c
index c95885215525..8e2dbaaffe59 100644
--- a/net/dsa/tag_qca.c
+++ b/net/dsa/tag_qca.c
@@ -90,13 +90,11 @@ static struct sk_buff *qca_tag_rcv(struct sk_buff *skb, struct net_device *dev,
 	return skb;
 }
 
-static int qca_tag_flow_dissect(const struct sk_buff *skb, __be16 *proto,
-                                int *offset)
+static void qca_tag_flow_dissect(const struct sk_buff *skb, __be16 *proto,
+				 int *offset)
 {
 	*offset = QCA_HDR_LEN;
 	*proto = ((__be16 *)skb->data)[0];
-
-	return 0;
 }
 
 static const struct dsa_device_ops qca_netdev_ops = {
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
