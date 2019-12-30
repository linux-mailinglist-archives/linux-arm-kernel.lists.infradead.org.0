Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BBA312D3D8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 20:22:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=bZRbBrNfgRpSDBCWS+zzoD5WmwmpcbZ1kpT6REHuN/I=; b=bBB
	TFM3rCWV9l/1ZRvmB50f6umoVTpRxF+O9RYemV4wKeHFkJxgdqoHSEy2V9a9iAQ1hvquQzi9QXoTZ
	RJmnD3JcjC7ebKjcWnTDxIVBm26i/pXZfpCmFtsLSmbHXwUsxf8xOhXKD5aJbb51B6rGV6mqvqo/S
	uC4cuNFOU/6dd/KHo5USczWekIYu84Q79RmXNVdL2M9l8HKWWOuGX/YxtzCxJg8hOkNqWllR2LVOt
	rlFm3eCYiWlQQ/8E/9hH79WeTi4N/Ewmq/LzSDJU5Xw8fARs7NG508goNek/iVD2+mydfoXgrP0A9
	BdcSi1a0HEzBznJ3L8p9Hx4ANsgWAxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1im0c4-00044F-5T; Mon, 30 Dec 2019 19:22:00 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1im0bs-00043W-JB; Mon, 30 Dec 2019 19:21:50 +0000
Received: by mail-pj1-x1041.google.com with SMTP id u63so190825pjb.0;
 Mon, 30 Dec 2019 11:21:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=l3p+J+NMA4RacixDQSVQdCBbSfVRvmkFA8N8sAMaHR0=;
 b=lKt2P/F16WRytsC4P82G59gXvnKuyL5Xmb3uEboalC0aL7L7K0XGHtA8ztMt4QE5nB
 +XnKPtvtxDo6DFwL+94MA3QJG5bo8J85Ixh8lpREUFDHB6quXMAf/pezv4RoDJjynuyO
 GCKgR7hDapsdnqUg8GIy5CkHdDPL2AM+8F3i/rWRkr0YQziR9Ja1jYZu9UuhMoCqsT2X
 mUjBhdcAJO5pCjW3rsYoZ/czVPwmUfWu5mUUqg+VakyPei+vugp93abK3sj4TXHEVdie
 yjmw7HctR285DnWcfU5RfEH86IT9cj/jn6txcn/k/IaOCTmJn8QCvbrVYAs9pTyZ8xgo
 dkFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=l3p+J+NMA4RacixDQSVQdCBbSfVRvmkFA8N8sAMaHR0=;
 b=eek610FXKmLLBuh4yT2rOi2CjguvDfEohRMRQ5n+Gb/3XM0JqNJB2kFSY5ZZ2vLAbb
 Ot6TNsBjHhhzsXvMMjS3oP78ljm3KhQySomwodmphwXlL1WHpMhwzf7M6DfXe0bk9PKN
 I5tWcejWEdZNzrvyA7SdmFE41HsaeNPDdF7JHYKZpiakwj+jlW7jpM/IQAep51Hi4+4w
 5N/wMWrfuy/HyJTONu6Wfx2YyMOTQinhOU4gvxQuVqSWb9NlGIJSOz9JButTQXqyQrz2
 1hshcWiQgBWJIudT+H4HcRfMZ+XnX3wT6aq4lhhc6b9sxJYT1R2gwCffK4vCxPR308lb
 yjjg==
X-Gm-Message-State: APjAAAWSxOI+QxWciSVFuyZGFVjyIXFdZo59vQYTI8Ksgo3/Oe5lJjki
 vyCz5ECCfas/6UNI68AaSTg=
X-Google-Smtp-Source: APXvYqw84MQhflqquwmqg25ne2SB0uiY4DhKbvkO8v/WKGdmQyhKZ//nObXAwT8l91fvuauMS5Gs/w==
X-Received: by 2002:a17:90a:20c4:: with SMTP id
 f62mr911488pjg.70.1577733707609; 
 Mon, 30 Dec 2019 11:21:47 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id h3sm53392631pfr.15.2019.12.30.11.21.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Dec 2019 11:21:46 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: netdev@vger.kernel.org
Subject: [RFC net-next v2] net: dsa: Remove indirect function call for flow
 dissection
Date: Mon, 30 Dec 2019 11:20:22 -0800
Message-Id: <20191230192025.14567-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_112148_657978_536D2A76 
X-CRM114-Status: GOOD (  14.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Vladimir Oltean <vladimir.oltean@nxp.com>, alobakin@dlink.ru,
 Yoshiki Komachi <komachi.yoshiki@gmail.com>,
 open list <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 Stanislav Fomichev <sdf@google.com>, Matteo Croce <mcroce@redhat.com>,
 Petar Penkov <ppenkov@google.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Jakub Sitnicki <jakub@cloudflare.com>, Daniel Borkmann <daniel@iogearbox.net>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>, Hauke Mehrtens <hauke@hauke-m.de>,
 Sean Wang <sean.wang@mediatek.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>, Paul Blakey <paulb@mellanox.com>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 "David S. Miller" <davem@davemloft.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We only need "static" information to be given for DSA flow dissection,
so replace the expensive call to .flow_dissect() with an integer given
us the offset into the packet that we must de-reference to obtain the
protocol number. The overhead was alreayd available from the
dsa_device_ops structure so use that directly.

The presence of a flow_dissect callback used to indicate that the DSA
tagger supported returning that information,we now encode this with a
negative proto_off if the tagger does not support providing that
information.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
Changes in v2:

- update all taggers to indicate a valid/invalid protocol offset where
  applicable

 include/net/dsa.h         |  3 +--
 net/core/flow_dissector.c | 14 +++++++++-----
 net/dsa/tag_brcm.c        |  2 ++
 net/dsa/tag_dsa.c         | 10 +---------
 net/dsa/tag_edsa.c        | 10 +---------
 net/dsa/tag_gswip.c       |  1 +
 net/dsa/tag_ksz.c         |  3 +++
 net/dsa/tag_lan9303.c     |  1 +
 net/dsa/tag_mtk.c         | 11 +----------
 net/dsa/tag_ocelot.c      |  1 +
 net/dsa/tag_qca.c         | 11 +----------
 net/dsa/tag_sja1105.c     |  1 +
 12 files changed, 23 insertions(+), 45 deletions(-)

diff --git a/include/net/dsa.h b/include/net/dsa.h
index da5578db228e..fc656cf3e3dd 100644
--- a/include/net/dsa.h
+++ b/include/net/dsa.h
@@ -72,14 +72,13 @@ struct dsa_device_ops {
 	struct sk_buff *(*xmit)(struct sk_buff *skb, struct net_device *dev);
 	struct sk_buff *(*rcv)(struct sk_buff *skb, struct net_device *dev,
 			       struct packet_type *pt);
-	int (*flow_dissect)(const struct sk_buff *skb, __be16 *proto,
-			    int *offset);
 	/* Used to determine which traffic should match the DSA filter in
 	 * eth_type_trans, and which, if any, should bypass it and be processed
 	 * as regular on the master net device.
 	 */
 	bool (*filter)(const struct sk_buff *skb, struct net_device *dev);
 	unsigned int overhead;
+	int proto_off;
 	const char *name;
 	enum dsa_tag_protocol proto;
 };
diff --git a/net/core/flow_dissector.c b/net/core/flow_dissector.c
index 2dbbb030fbed..942218943010 100644
--- a/net/core/flow_dissector.c
+++ b/net/core/flow_dissector.c
@@ -972,13 +972,17 @@ bool __skb_flow_dissect(const struct net *net,
 		if (unlikely(skb->dev && netdev_uses_dsa(skb->dev) &&
 			     proto == htons(ETH_P_XDSA))) {
 			const struct dsa_device_ops *ops;
-			int offset = 0;
+			unsigned int overhead;
+			int proto_off;
 
 			ops = skb->dev->dsa_ptr->tag_ops;
-			if (ops->flow_dissect &&
-			    !ops->flow_dissect(skb, &proto, &offset)) {
-				hlen -= offset;
-				nhoff += offset;
+			overhead = ops->overhead;
+			proto_off = ops->proto_off;
+			if (likely(overhead && proto_off >= 0 &&
+				   proto_off < skb->len)) {
+				hlen -= overhead;
+				nhoff += overhead;
+				proto = ((__be16 *)skb->data)[proto_off];
 			}
 		}
 #endif
diff --git a/net/dsa/tag_brcm.c b/net/dsa/tag_brcm.c
index 9c3114179690..5b4c5bbba2cc 100644
--- a/net/dsa/tag_brcm.c
+++ b/net/dsa/tag_brcm.c
@@ -177,6 +177,7 @@ static const struct dsa_device_ops brcm_netdev_ops = {
 	.xmit	= brcm_tag_xmit,
 	.rcv	= brcm_tag_rcv,
 	.overhead = BRCM_TAG_LEN,
+	.proto_off = -1,
 };
 
 DSA_TAG_DRIVER(brcm_netdev_ops);
@@ -205,6 +206,7 @@ static const struct dsa_device_ops brcm_prepend_netdev_ops = {
 	.xmit	= brcm_tag_xmit_prepend,
 	.rcv	= brcm_tag_rcv_prepend,
 	.overhead = BRCM_TAG_LEN,
+	.proto_off = -1,
 };
 
 DSA_TAG_DRIVER(brcm_prepend_netdev_ops);
diff --git a/net/dsa/tag_dsa.c b/net/dsa/tag_dsa.c
index 7ddec9794477..4a970e959fef 100644
--- a/net/dsa/tag_dsa.c
+++ b/net/dsa/tag_dsa.c
@@ -142,21 +142,13 @@ static struct sk_buff *dsa_rcv(struct sk_buff *skb, struct net_device *dev,
 	return skb;
 }
 
-static int dsa_tag_flow_dissect(const struct sk_buff *skb, __be16 *proto,
-				int *offset)
-{
-	*offset = 4;
-	*proto = ((__be16 *)skb->data)[1];
-	return 0;
-}
-
 static const struct dsa_device_ops dsa_netdev_ops = {
 	.name	= "dsa",
 	.proto	= DSA_TAG_PROTO_DSA,
 	.xmit	= dsa_xmit,
 	.rcv	= dsa_rcv,
-	.flow_dissect   = dsa_tag_flow_dissect,
 	.overhead = DSA_HLEN,
+	.proto_off = 1,
 };
 
 MODULE_LICENSE("GPL");
diff --git a/net/dsa/tag_edsa.c b/net/dsa/tag_edsa.c
index e8eaa804ccb9..c7cb0df17287 100644
--- a/net/dsa/tag_edsa.c
+++ b/net/dsa/tag_edsa.c
@@ -161,21 +161,13 @@ static struct sk_buff *edsa_rcv(struct sk_buff *skb, struct net_device *dev,
 	return skb;
 }
 
-static int edsa_tag_flow_dissect(const struct sk_buff *skb, __be16 *proto,
-				 int *offset)
-{
-	*offset = 8;
-	*proto = ((__be16 *)skb->data)[3];
-	return 0;
-}
-
 static const struct dsa_device_ops edsa_netdev_ops = {
 	.name	= "edsa",
 	.proto	= DSA_TAG_PROTO_EDSA,
 	.xmit	= edsa_xmit,
 	.rcv	= edsa_rcv,
-	.flow_dissect   = edsa_tag_flow_dissect,
 	.overhead = EDSA_HLEN,
+	.proto_off = 3,
 };
 
 MODULE_LICENSE("GPL");
diff --git a/net/dsa/tag_gswip.c b/net/dsa/tag_gswip.c
index b678160bbd66..646453c3ef44 100644
--- a/net/dsa/tag_gswip.c
+++ b/net/dsa/tag_gswip.c
@@ -109,6 +109,7 @@ static const struct dsa_device_ops gswip_netdev_ops = {
 	.xmit = gswip_tag_xmit,
 	.rcv = gswip_tag_rcv,
 	.overhead = GSWIP_RX_HEADER_LEN,
+	.proto_off = -1,
 };
 
 MODULE_LICENSE("GPL");
diff --git a/net/dsa/tag_ksz.c b/net/dsa/tag_ksz.c
index 90d055c4df9e..ab42d8ddeade 100644
--- a/net/dsa/tag_ksz.c
+++ b/net/dsa/tag_ksz.c
@@ -123,6 +123,7 @@ static const struct dsa_device_ops ksz8795_netdev_ops = {
 	.xmit	= ksz8795_xmit,
 	.rcv	= ksz8795_rcv,
 	.overhead = KSZ_INGRESS_TAG_LEN,
+	.proto_off = -1,
 };
 
 DSA_TAG_DRIVER(ksz8795_netdev_ops);
@@ -198,6 +199,7 @@ static const struct dsa_device_ops ksz9477_netdev_ops = {
 	.xmit	= ksz9477_xmit,
 	.rcv	= ksz9477_rcv,
 	.overhead = KSZ9477_INGRESS_TAG_LEN,
+	.proto_off = -1,
 };
 
 DSA_TAG_DRIVER(ksz9477_netdev_ops);
@@ -236,6 +238,7 @@ static const struct dsa_device_ops ksz9893_netdev_ops = {
 	.xmit	= ksz9893_xmit,
 	.rcv	= ksz9477_rcv,
 	.overhead = KSZ_INGRESS_TAG_LEN,
+	.proto_off = -1,
 };
 
 DSA_TAG_DRIVER(ksz9893_netdev_ops);
diff --git a/net/dsa/tag_lan9303.c b/net/dsa/tag_lan9303.c
index eb0e7a32e53d..709abf0ab6be 100644
--- a/net/dsa/tag_lan9303.c
+++ b/net/dsa/tag_lan9303.c
@@ -134,6 +134,7 @@ static const struct dsa_device_ops lan9303_netdev_ops = {
 	.xmit = lan9303_xmit,
 	.rcv = lan9303_rcv,
 	.overhead = LAN9303_TAG_LEN,
+	.proto_off = -1,
 };
 
 MODULE_LICENSE("GPL");
diff --git a/net/dsa/tag_mtk.c b/net/dsa/tag_mtk.c
index b5705cba8318..c96354f12317 100644
--- a/net/dsa/tag_mtk.c
+++ b/net/dsa/tag_mtk.c
@@ -89,22 +89,13 @@ static struct sk_buff *mtk_tag_rcv(struct sk_buff *skb, struct net_device *dev,
 	return skb;
 }
 
-static int mtk_tag_flow_dissect(const struct sk_buff *skb, __be16 *proto,
-				int *offset)
-{
-	*offset = 4;
-	*proto = ((__be16 *)skb->data)[1];
-
-	return 0;
-}
-
 static const struct dsa_device_ops mtk_netdev_ops = {
 	.name		= "mtk",
 	.proto		= DSA_TAG_PROTO_MTK,
 	.xmit		= mtk_tag_xmit,
 	.rcv		= mtk_tag_rcv,
-	.flow_dissect	= mtk_tag_flow_dissect,
 	.overhead	= MTK_HDR_LEN,
+	.proto_off	= 1,
 };
 
 MODULE_LICENSE("GPL");
diff --git a/net/dsa/tag_ocelot.c b/net/dsa/tag_ocelot.c
index 8e3e7283d430..d29e86c66853 100644
--- a/net/dsa/tag_ocelot.c
+++ b/net/dsa/tag_ocelot.c
@@ -233,6 +233,7 @@ static struct dsa_device_ops ocelot_netdev_ops = {
 	.xmit			= ocelot_xmit,
 	.rcv			= ocelot_rcv,
 	.overhead		= OCELOT_TAG_LEN + OCELOT_LONG_PREFIX_LEN,
+	.proto_off		= -1,
 };
 
 MODULE_LICENSE("GPL v2");
diff --git a/net/dsa/tag_qca.c b/net/dsa/tag_qca.c
index c95885215525..a88849d211f0 100644
--- a/net/dsa/tag_qca.c
+++ b/net/dsa/tag_qca.c
@@ -90,22 +90,13 @@ static struct sk_buff *qca_tag_rcv(struct sk_buff *skb, struct net_device *dev,
 	return skb;
 }
 
-static int qca_tag_flow_dissect(const struct sk_buff *skb, __be16 *proto,
-                                int *offset)
-{
-	*offset = QCA_HDR_LEN;
-	*proto = ((__be16 *)skb->data)[0];
-
-	return 0;
-}
-
 static const struct dsa_device_ops qca_netdev_ops = {
 	.name	= "qca",
 	.proto	= DSA_TAG_PROTO_QCA,
 	.xmit	= qca_tag_xmit,
 	.rcv	= qca_tag_rcv,
-	.flow_dissect = qca_tag_flow_dissect,
 	.overhead = QCA_HDR_LEN,
+	.proto_offset = 0,
 };
 
 MODULE_LICENSE("GPL");
diff --git a/net/dsa/tag_sja1105.c b/net/dsa/tag_sja1105.c
index 63ef2a14c934..626d3476c6af 100644
--- a/net/dsa/tag_sja1105.c
+++ b/net/dsa/tag_sja1105.c
@@ -300,6 +300,7 @@ static struct dsa_device_ops sja1105_netdev_ops = {
 	.rcv = sja1105_rcv,
 	.filter = sja1105_filter,
 	.overhead = VLAN_HLEN,
+	.proto_off = -1,
 };
 
 MODULE_LICENSE("GPL v2");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
