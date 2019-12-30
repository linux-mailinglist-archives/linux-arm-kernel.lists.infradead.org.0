Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21F2912D109
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 15:44:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mUjA34Y2JEjXF4xlvxEX/BmT/tYkkQQG0bgnKjxlAXU=; b=IC4ZdAZ4wMwc3F
	OPwb8ByiIMgcd1mx9xKve5cQBxkU9HXZniJoTS3RKBGG1cNvZVF8UIs27ajwZfms46LJjLGrVV7x8
	wzD/sMO92E2fWBEQVQJ8k8CK/AqNOO31txV3nmre00TUyQCr2OBmob8n+wQ3CSIdOny3CGvUQe72h
	biY+FWieWkgfG+YOMDHIv1ZOcKvRm+X301JIoVijSExq+WfzSWFrL+sHGuDddyXIEPqb5RReAoIB5
	XgKfrOIXroTVGPySbfW/EJNBYXTnbvE8MaX6TK0e+o7/z6wP4PRjLe7hFdmUZFcsup7zg2axxUTX8
	C5Xhr7jiPrkq8vVzKrMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilwHR-00051s-D5; Mon, 30 Dec 2019 14:44:25 +0000
Received: from fd.dlink.ru ([178.170.168.18])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilwFY-0003vx-Gh; Mon, 30 Dec 2019 14:42:31 +0000
Received: by fd.dlink.ru (Postfix, from userid 5000)
 id 03CEF1B218C1; Mon, 30 Dec 2019 17:32:44 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 fd.dlink.ru 03CEF1B218C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dlink.ru; s=mail;
 t=1577716365; bh=oevogiD6ZZjPjhds8OttybiSWL3W+YH+lNJv5xktFv4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=W+81RZh70xRv2YQ9Uh/40TpcbYlXCM7cscSdVj2AQL+6x/LphC0er7cU2TZNb6wzW
 8gtpweVg6mCswv3aiRHrQoVZdXzhGJDWT/M7REGe9bDjiITIsizcSal/sfUmPoi1cK
 FKyfrqTEEud4FrqpG4Qydzr8qitHV/q3Tofw3AWQ=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dlink.ru
X-Spam-Level: 
X-Spam-Status: No, score=-99.2 required=7.5 tests=BAYES_50,URIBL_BLOCKED,
 USER_IN_WHITELIST autolearn=disabled version=3.4.2
Received: from mail.rzn.dlink.ru (mail.rzn.dlink.ru [178.170.168.13])
 by fd.dlink.ru (Postfix) with ESMTP id 0E58B1B2176F;
 Mon, 30 Dec 2019 17:31:17 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 fd.dlink.ru 0E58B1B2176F
Received: from mail.rzn.dlink.ru (localhost [127.0.0.1])
 by mail.rzn.dlink.ru (Postfix) with ESMTP id D02B21B229CB;
 Mon, 30 Dec 2019 17:31:14 +0300 (MSK)
Received: from localhost.localdomain (unknown [196.196.203.126])
 by mail.rzn.dlink.ru (Postfix) with ESMTPA;
 Mon, 30 Dec 2019 17:31:14 +0300 (MSK)
From: Alexander Lobakin <alobakin@dlink.ru>
To: "David S. Miller" <davem@davemloft.net>
Subject: [PATCH RFC net-next 07/19] net: dsa: tag_gswip: switch to bitfield
 helpers
Date: Mon, 30 Dec 2019 17:30:15 +0300
Message-Id: <20191230143028.27313-8-alobakin@dlink.ru>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191230143028.27313-1-alobakin@dlink.ru>
References: <20191230143028.27313-1-alobakin@dlink.ru>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_064228_911362_3C0940DB 
X-CRM114-Status: GOOD (  10.08  )
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

Make code look cleaner and more readable by using bitfield macros instead
of open-coding masks and shifts.
Misc: remove redundant variable in gswip_tag_xmit(), make dsa_port const.

Signed-off-by: Alexander Lobakin <alobakin@dlink.ru>
---
 net/dsa/tag_gswip.c | 24 +++++++++---------------
 1 file changed, 9 insertions(+), 15 deletions(-)

diff --git a/net/dsa/tag_gswip.c b/net/dsa/tag_gswip.c
index 408d4af390a0..de920f6aac5b 100644
--- a/net/dsa/tag_gswip.c
+++ b/net/dsa/tag_gswip.c
@@ -5,6 +5,7 @@
  * Copyright (C) 2017 - 2018 Hauke Mehrtens <hauke@hauke-m.de>
  */
 
+#include <linux/bitfield.h>
 #include <linux/bitops.h>
 #include <linux/etherdevice.h>
 #include <linux/skbuff.h>
@@ -45,26 +46,22 @@
 #define GSWIP_TX_CLASS_MASK		GENMASK(3, 0)
 
 /* Byte 3 */
+#define GSWIP_TX_PORT_MAP(port)		FIELD_PREP(GENMASK(6, 1), BIT(port))
 #define GSWIP_TX_DPID_EN		BIT(0)
-#define GSWIP_TX_PORT_MAP_SHIFT		1
-#define GSWIP_TX_PORT_MAP_MASK		GENMASK(6, 1)
 
-#define GSWIP_RX_HEADER_LEN	8
+#define GSWIP_RX_HEADER_LEN		8
 
 /* special tag in RX path header */
 /* Byte 7 */
-#define GSWIP_RX_SPPID_SHIFT		4
-#define GSWIP_RX_SPPID_MASK		GENMASK(6, 4)
+#define GSWIP_RX_SPPID(byte_7)		FIELD_GET(GENMASK(6, 4), byte_7)
 
 static struct sk_buff *gswip_tag_xmit(struct sk_buff *skb,
 				      struct net_device *dev)
 {
-	struct dsa_port *dp = dsa_slave_to_port(dev);
-	int err;
+	const struct dsa_port *dp = dsa_slave_to_port(dev);
 	u8 *gswip_tag;
 
-	err = skb_cow_head(skb, GSWIP_TX_HEADER_LEN);
-	if (err)
+	if (skb_cow_head(skb, GSWIP_TX_HEADER_LEN))
 		return NULL;
 
 	skb_push(skb, GSWIP_TX_HEADER_LEN);
@@ -73,8 +70,7 @@ static struct sk_buff *gswip_tag_xmit(struct sk_buff *skb,
 	gswip_tag[0] = GSWIP_TX_SLPID_CPU;
 	gswip_tag[1] = GSWIP_TX_DPID_ELAN;
 	gswip_tag[2] = GSWIP_TX_PORT_MAP_EN | GSWIP_TX_PORT_MAP_SEL;
-	gswip_tag[3] = BIT(dp->index + GSWIP_TX_PORT_MAP_SHIFT) & GSWIP_TX_PORT_MAP_MASK;
-	gswip_tag[3] |= GSWIP_TX_DPID_EN;
+	gswip_tag[3] = GSWIP_TX_PORT_MAP(dp->index) | GSWIP_TX_DPID_EN;
 
 	return skb;
 }
@@ -84,15 +80,13 @@ static struct sk_buff *gswip_tag_rcv(struct sk_buff *skb,
 				     struct packet_type *pt)
 {
 	int port;
-	u8 *gswip_tag;
 
 	if (unlikely(!pskb_may_pull(skb, GSWIP_RX_HEADER_LEN)))
 		return NULL;
 
-	gswip_tag = skb->data - ETH_HLEN;
-
 	/* Get source port information */
-	port = (gswip_tag[7] & GSWIP_RX_SPPID_MASK) >> GSWIP_RX_SPPID_SHIFT;
+	port = GSWIP_RX_SPPID(*(skb->data - ETH_HLEN + 7));
+
 	skb->dev = dsa_master_find_slave(dev, 0, port);
 	if (!skb->dev)
 		return NULL;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
