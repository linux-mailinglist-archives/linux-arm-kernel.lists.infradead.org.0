Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C765D12D37B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 19:44:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6xfIQat6UU+0V+9sZz+1yHVRHe+pkA1uYjUu0IzvCxU=; b=M8T
	rpIm939Xlk5QsV3IBeelDKYyiEilqwPlTt595dRhAVmea4CnGyVF8fhh7+hK7rLiXSWjr+E116REa
	B5Bb918BAemoq3qeuPcqD1YRMg2ZIh0fsmbG20K07Uj9HStq6dCD3yAjp1HxIDrwKJV+Qxde0JiGn
	pgBdcfFjgq1NKb6MPpB+oM7R3AA2zId7E3fM2lBNxddMZY+j0t5MJMj5XdO2boOWmcFxa1LgALRjx
	Jjl15+0ne6CGnJqYXMHx3lj2QgIiquXblc3FnQ0qi5GeQwhV5xc9M1YZDp38GMXtp+hkhXVFGNb+N
	ez9hDApSa04Xjh/gJYhr5RG9ZKrAhcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1im01c-0007I2-66; Mon, 30 Dec 2019 18:44:20 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1im01U-0007HS-0T; Mon, 30 Dec 2019 18:44:13 +0000
Received: by mail-wr1-x443.google.com with SMTP id j42so33433029wrj.12;
 Mon, 30 Dec 2019 10:44:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=aEXa88L0kRuP5gotOzXyyrfFcAc/gBTFiuKfEoutSbA=;
 b=jVOC/J42X6gqNNYzqn6CchuFXLSAJvvZYCAnKWiusvr2AjnN+RG4RIL9vzIeOO8yVL
 bdQY04CeLVt5R4NPgpxBMgb3bsaIp/Mbb8NPvAX9fAgb8bGwbd8G8mRRWtTsCl/nVPfV
 JWDPsLRIOgeBemIYZoXPTnXVPzq9hYbnKz+aB8FXYu55olH3y+o+VmQvuQubR7IQpMhk
 OG5fBqYKoN1iXuRolm67s/VUp4IQaFuiWo/TtLEYT9KvDOfWc3LjrbPeSRj4JCBsFWzJ
 xZdR8+oXaam1o6yevuW7mKbHcW0kXfbu+uJ98QC7+KMrJ35TWPDPHOkWFYlDjD2Dhqow
 0GGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=aEXa88L0kRuP5gotOzXyyrfFcAc/gBTFiuKfEoutSbA=;
 b=oBsOLOs8a8Dw1ZLScH+Qi2VTU3mx+JlMjafu/WiYMLVWTdwyAViMLQ3KQjtV5PgCQf
 Mxp7cb5RqhoECr6BnlsqPkyBE+Gj6Wt8k8PYvYpe79TgCj3JQ9rWk16prU0n+SchMpUF
 yxozSzEcDvNmYmnCOzy7iT16TZvCLk8scNK44scCNR6rBkkt5FGvBmE2tVsesaoScR6t
 hHVOLND8R7QqvW+aiDmnx6rEtY38eYSG889QA93cgVRv56AkjrEurhGApGrb4CCTnmzI
 i+KPWisrfgsMjNoj0mZwjxV27+HROFm5XPm2BLOVnz0eLgGfd2Q5DROj2k3bgUWb9WK9
 Ej2A==
X-Gm-Message-State: APjAAAVeR7ADpqtUpNADDy3CNs4llSGK6tKkwOY2iSanB8sHpc5ist+R
 OYhL9s7egRuC25ESIbKdY50=
X-Google-Smtp-Source: APXvYqzTveRQa/61w63Vzt39bwhFzs296eXFxp28ecmRDGkQUGGqMdlOb+0Ck7QADkwI2944QtMUPQ==
X-Received: by 2002:a5d:6ac5:: with SMTP id u5mr68008926wrw.271.1577731450020; 
 Mon, 30 Dec 2019 10:44:10 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id b137sm260692wme.26.2019.12.30.10.44.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Dec 2019 10:44:09 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: netdev@vger.kernel.org
Subject: [RFC net-next] net: dsa: Remove indirect function call for flow
 dissection
Date: Mon, 30 Dec 2019 10:44:00 -0800
Message-Id: <20191230184402.9455-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_104412_078941_7D7A4C60 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
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
 Florian Fainelli <f.fainelli@gmail.com>, Jakub Sitnicki <jakub@cloudflare.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 open list <linux-kernel@vger.kernel.org>, Paul Blakey <paulb@mellanox.com>,
 alobakin@dlink.ru, Yoshiki Komachi <komachi.yoshiki@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>, Vivien Didelot <vivien.didelot@gmail.com>,
 Eric Dumazet <edumazet@google.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Stanislav Fomichev <sdf@google.com>, Sean Wang <sean.wang@mediatek.com>,
 Matteo Croce <mcroce@redhat.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We only need "static" information to be given for DSA flow dissection,
replace the call to .flow_dissect() with an unsigned integer given us
the offset into the packet that we must de-reference to obtain the
protocol number.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
Alexander,

This should probably require us to fix all DSA taggers to provide a
valid proto_off otherwise we would be incorrectly dissecting a flow, but
that still sounds like an improvement to me.

Thanks!

 include/net/dsa.h         |  3 +--
 net/core/flow_dissector.c | 13 ++++++++-----
 net/dsa/tag_dsa.c         | 10 +---------
 net/dsa/tag_edsa.c        | 10 +---------
 net/dsa/tag_mtk.c         | 11 +----------
 net/dsa/tag_qca.c         | 11 +----------
 6 files changed, 13 insertions(+), 45 deletions(-)

diff --git a/include/net/dsa.h b/include/net/dsa.h
index 6767dc3f66c0..8e3e1fa06d75 100644
--- a/include/net/dsa.h
+++ b/include/net/dsa.h
@@ -70,14 +70,13 @@ struct dsa_device_ops {
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
+	unsigned int proto_off;
 	const char *name;
 	enum dsa_tag_protocol proto;
 };
diff --git a/net/core/flow_dissector.c b/net/core/flow_dissector.c
index d524a693e00f..9037ebdddac1 100644
--- a/net/core/flow_dissector.c
+++ b/net/core/flow_dissector.c
@@ -972,13 +972,16 @@ bool __skb_flow_dissect(const struct net *net,
 		if (unlikely(skb->dev && netdev_uses_dsa(skb->dev) &&
 			     proto == htons(ETH_P_XDSA))) {
 			const struct dsa_device_ops *ops;
-			int offset = 0;
+			unsigned int overhead;
+			unsigned int proto_off;
 
 			ops = skb->dev->dsa_ptr->tag_ops;
-			if (ops->flow_dissect &&
-			    !ops->flow_dissect(skb, &proto, &offset)) {
-				hlen -= offset;
-				nhoff += offset;
+			overhead = ops->overhead;
+			proto_off = ops->proto_off;
+			if (overhead && likely(proto_off < skb->len)) {
+				hlen -= overhead;
+				nhoff += overhead;
+				proto = ((__be16 *)skb->data)[proto_off];
 			}
 		}
 #endif
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
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
