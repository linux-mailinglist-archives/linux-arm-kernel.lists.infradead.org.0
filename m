Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7885E12F1DA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 00:38:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=MFbpLNJxoRPzrnvX/XAT+eHAkjSZZMGCg5eQDQDVUIE=; b=fCY
	f3nvhx6Qa+gfCdPQZ51v1vsQu6X13a81HdtjG+TlFs4VVe3vnc9fIJWUuWu1q5p+Zz/zoR5OKnN1y
	Afy+7FTEl8nlRHJKXqzWMmjId+i0XiBhcAN/UYjNpeUvZ/H53WD4VB8OZFNwuqXDQiiestsL1nDUT
	/xdotgxhlWoDc/y5v+s4iqGevJJXrSsbdNci30guK/KwarId1H3tgcMGTHvoNbSZj4gRf+883WCAw
	0HrWgWPNPK6A8AaPWiEAfZrkhYETuzyITAD0Fpb8nXY8xB627JC9kDu+yMfASG0+d8F6Fw4x3DoL5
	yVk761akrThdVCtylV2AndyCmD0E5Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inA3B-0008JG-4G; Thu, 02 Jan 2020 23:38:45 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inA33-0008IS-8R; Thu, 02 Jan 2020 23:38:39 +0000
Received: by mail-pf1-x443.google.com with SMTP id 195so21877829pfw.11;
 Thu, 02 Jan 2020 15:38:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=+i7ic5QJroprhhGIk1bmK5MIiUO4KPc7ky4YhGp+2n8=;
 b=sto1QBYvyxocM5YSop6sa2vDb3lP0kZwCy4NX7l+uNw399ljIgLFFEh/lLsr3WbrZ6
 Ua75WZA53oAXtgMz5HOaatc1X1cerw6JrQVgzV7wNGF2cwHvwaH6BnxCrYUC8aaXttEi
 G3e/FqkalbF5q7AFmL1S68iRyDyCznkQ8ugRC1ID+kb1ESqTO+ybB1YWSuQF8L0M834v
 lSOzbjzxDELT1sRzyKSQZZcb+O8SJKjU776Nq/CAJFrSE2zzKkNeHPNnns+V6dZFAPaw
 SBI2EBLrIcO8R6lkgx9yDOCrvlEfA2xCLdFup3CmCOI0ekRNIHHoPoHU0K/SUKl1wMaq
 ZudQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=+i7ic5QJroprhhGIk1bmK5MIiUO4KPc7ky4YhGp+2n8=;
 b=GxOezQaUrwkOjFmEDdYyvQuLE4Yec9wmQ9Tgp/9zNULj4U0NNR7bj3mW0F3E5ttGvZ
 CiC4VEElpew+tIZBmc3vJEMFricgTNag/tTQ1v8MwmhGuKoQRomvLC3rmVbOXvGcAtNv
 GCfIjRavmivbe0zcEmvCzn0SBNtSNZdtbZD/0wtSWgEVyWgWrx45mNeMp46KuLaZKXr/
 xbanTc1NXgw3dY3O1eCpQrD/rLZvunqqqkc2vetRH3qo1rNWqLfodPr5DVkOHfhNWmMW
 W0+IMFAQbJjnQ/TnQP6FRwDyw0UwSfQTcG3HnSzrsGBc1UeadIB4qNCNe2t/HKsZflL0
 pwmA==
X-Gm-Message-State: APjAAAU0njwxBNlMr7do8HZZ1GrI+otYeZzi0ca0XwfH/M1GTA/UoNd4
 K5OGTtwT0bN5WVA+qi74Iaw=
X-Google-Smtp-Source: APXvYqyOn4AyoceAvfeBjHjiSwgLJ2hMKiYpUPV5l+dd5BsW3kJDiPu1tRRJxaRZ5TaG5KAigNZnWA==
X-Received: by 2002:aa7:9d9c:: with SMTP id f28mr91617241pfq.20.1578008314628; 
 Thu, 02 Jan 2020 15:38:34 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id c22sm42720161pfo.50.2020.01.02.15.38.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Jan 2020 15:38:33 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next] net: dsa: Remove indirect function call for flow
 dissection
Date: Thu,  2 Jan 2020 15:36:53 -0800
Message-Id: <20200102233657.12933-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_153837_325560_D69DFF49 
X-CRM114-Status: GOOD (  14.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 rmk+kernel@armlinux.org.uk, "David S. Miller" <davem@davemloft.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We only need "static" information to be given for DSA flow dissection,
so replace the expensive call to .flow_dissect() with an integer giving
us the offset into the packet array of bytes that we must de-reference
to obtain the protocol number. The overhead was alreayd available from
the dsa_device_ops structure so use that directly.

The presence of a flow_dissect callback used to indicate that the DSA
tagger supported returning that information,we now encode this with a
proto_off value of DSA_PROTO_OFF_UNPSEC if the tagger does not support
providing that information yet.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
Changes since RFC:

- use a constant instead of the "magic" -1
- update all tag drivers and build test correctly

 include/net/dsa.h         |  5 +++--
 net/core/flow_dissector.c | 15 ++++++++++-----
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
 12 files changed, 26 insertions(+), 45 deletions(-)

diff --git a/include/net/dsa.h b/include/net/dsa.h
index da5578db228e..5b77eb7eea02 100644
--- a/include/net/dsa.h
+++ b/include/net/dsa.h
@@ -68,18 +68,19 @@ enum dsa_tag_protocol {
 struct packet_type;
 struct dsa_switch;
 
+#define DSA_PROTO_OFF_UNSPEC	-1
+
 struct dsa_device_ops {
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
index 2dbbb030fbed..1d8f1ecde51e 100644
--- a/net/core/flow_dissector.c
+++ b/net/core/flow_dissector.c
@@ -972,13 +972,18 @@ bool __skb_flow_dissect(const struct net *net,
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
+			if (likely(overhead &&
+				   proto_off != DSA_PROTO_OFF_UNSPEC &&
+				   proto_off < skb->len)) {
+				hlen -= overhead;
+				nhoff += overhead;
+				proto = ((__be16 *)skb->data)[proto_off];
 			}
 		}
 #endif
diff --git a/net/dsa/tag_brcm.c b/net/dsa/tag_brcm.c
index 9c3114179690..abc050e3c092 100644
--- a/net/dsa/tag_brcm.c
+++ b/net/dsa/tag_brcm.c
@@ -177,6 +177,7 @@ static const struct dsa_device_ops brcm_netdev_ops = {
 	.xmit	= brcm_tag_xmit,
 	.rcv	= brcm_tag_rcv,
 	.overhead = BRCM_TAG_LEN,
+	.proto_off = DSA_PROTO_OFF_UNSPEC,
 };
 
 DSA_TAG_DRIVER(brcm_netdev_ops);
@@ -205,6 +206,7 @@ static const struct dsa_device_ops brcm_prepend_netdev_ops = {
 	.xmit	= brcm_tag_xmit_prepend,
 	.rcv	= brcm_tag_rcv_prepend,
 	.overhead = BRCM_TAG_LEN,
+	.proto_off = DSA_PROTO_OFF_UNSPEC,
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
index b678160bbd66..4161852d871d 100644
--- a/net/dsa/tag_gswip.c
+++ b/net/dsa/tag_gswip.c
@@ -109,6 +109,7 @@ static const struct dsa_device_ops gswip_netdev_ops = {
 	.xmit = gswip_tag_xmit,
 	.rcv = gswip_tag_rcv,
 	.overhead = GSWIP_RX_HEADER_LEN,
+	.proto_off = DSA_PROTO_OFF_UNSPEC,
 };
 
 MODULE_LICENSE("GPL");
diff --git a/net/dsa/tag_ksz.c b/net/dsa/tag_ksz.c
index 90d055c4df9e..4c9576201963 100644
--- a/net/dsa/tag_ksz.c
+++ b/net/dsa/tag_ksz.c
@@ -123,6 +123,7 @@ static const struct dsa_device_ops ksz8795_netdev_ops = {
 	.xmit	= ksz8795_xmit,
 	.rcv	= ksz8795_rcv,
 	.overhead = KSZ_INGRESS_TAG_LEN,
+	.proto_off = DSA_PROTO_OFF_UNSPEC,
 };
 
 DSA_TAG_DRIVER(ksz8795_netdev_ops);
@@ -198,6 +199,7 @@ static const struct dsa_device_ops ksz9477_netdev_ops = {
 	.xmit	= ksz9477_xmit,
 	.rcv	= ksz9477_rcv,
 	.overhead = KSZ9477_INGRESS_TAG_LEN,
+	.proto_off = DSA_PROTO_OFF_UNSPEC,
 };
 
 DSA_TAG_DRIVER(ksz9477_netdev_ops);
@@ -236,6 +238,7 @@ static const struct dsa_device_ops ksz9893_netdev_ops = {
 	.xmit	= ksz9893_xmit,
 	.rcv	= ksz9477_rcv,
 	.overhead = KSZ_INGRESS_TAG_LEN,
+	.proto_off = DSA_PROTO_OFF_UNSPEC,
 };
 
 DSA_TAG_DRIVER(ksz9893_netdev_ops);
diff --git a/net/dsa/tag_lan9303.c b/net/dsa/tag_lan9303.c
index eb0e7a32e53d..16cdc2e4c050 100644
--- a/net/dsa/tag_lan9303.c
+++ b/net/dsa/tag_lan9303.c
@@ -134,6 +134,7 @@ static const struct dsa_device_ops lan9303_netdev_ops = {
 	.xmit = lan9303_xmit,
 	.rcv = lan9303_rcv,
 	.overhead = LAN9303_TAG_LEN,
+	.proto_off = DSA_PROTO_OFF_UNSPEC,
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
index 8e3e7283d430..f9d9cc705caf 100644
--- a/net/dsa/tag_ocelot.c
+++ b/net/dsa/tag_ocelot.c
@@ -233,6 +233,7 @@ static struct dsa_device_ops ocelot_netdev_ops = {
 	.xmit			= ocelot_xmit,
 	.rcv			= ocelot_rcv,
 	.overhead		= OCELOT_TAG_LEN + OCELOT_LONG_PREFIX_LEN,
+	.proto_off		= DSA_PROTO_OFF_UNSPEC,
 };
 
 MODULE_LICENSE("GPL v2");
diff --git a/net/dsa/tag_qca.c b/net/dsa/tag_qca.c
index c95885215525..87cf2b9f78ea 100644
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
+	.proto_off = 0,
 };
 
 MODULE_LICENSE("GPL");
diff --git a/net/dsa/tag_sja1105.c b/net/dsa/tag_sja1105.c
index 63ef2a14c934..9be591186638 100644
--- a/net/dsa/tag_sja1105.c
+++ b/net/dsa/tag_sja1105.c
@@ -300,6 +300,7 @@ static struct dsa_device_ops sja1105_netdev_ops = {
 	.rcv = sja1105_rcv,
 	.filter = sja1105_filter,
 	.overhead = VLAN_HLEN,
+	.proto_off = DSA_PROTO_OFF_UNSPEC,
 };
 
 MODULE_LICENSE("GPL v2");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
