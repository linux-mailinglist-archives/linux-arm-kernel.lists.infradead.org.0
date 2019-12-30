Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2180F12D115
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 15:46:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yOXkpZOaa1pAH4SjGSes4BuSOYgOXo7o+UwxFq+5Yh8=; b=VNwivexNw4pYVF
	0QvEU13DvkogYSeRiOJ6/shR9yAugnGISMmbJzO9KYKeMl9Stitm1xdMQ3tj1zloBEOxNmZ7iPnDW
	AN28uSuKFRbr+Av/4o2eb/nk3cT4SxYzVKc3Kr/v1s6q4Qoyj3WbosPm0eNPItxvs7AOz0koDOCAH
	+CsW83FO2YL0b93JjGrl9TUGIVAv4jfWrtKJVpMS3TORZ3L2qF80DlCUK8iZHVxkhvPv+yGRdeprw
	wSd/P3xJCEnQnyCjIiWDroVv/pIq6Yi4w34KK7z640zILTELH1T6f4IEq+NN4y3s6rFNwYg+WKndr
	IUL/63pgHyqbHwZ4GTaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilwJ3-0007OQ-VL; Mon, 30 Dec 2019 14:46:05 +0000
Received: from mail.dlink.ru ([178.170.168.18] helo=fd.dlink.ru)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilwFb-0003xX-1a; Mon, 30 Dec 2019 14:42:34 +0000
Received: by fd.dlink.ru (Postfix, from userid 5000)
 id 1004F1B218DD; Mon, 30 Dec 2019 17:32:45 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 fd.dlink.ru 1004F1B218DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dlink.ru; s=mail;
 t=1577716367; bh=E3wS4CWwlylImJof0eomCAHaPV4aLBnqVAQ7xnSqdyA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=IVVHVnaM/RM+UDv2UYa/dQtQ/GFA+1urOJh+VXrWV/uPNbowe6Rt8I20pPuEXrap7
 jcLdLQhThhhNiI6Y4YNa/SkZSscpCdqfuECR6wfrGmlcyzKINgSQ2ZkDCWae8ZBJmc
 7MgLJuXdK6F1c+t21rbp5crN4fJC1WbW5PFw5aKo=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dlink.ru
X-Spam-Level: 
X-Spam-Status: No, score=-99.2 required=7.5 tests=BAYES_50,URIBL_BLOCKED,
 USER_IN_WHITELIST autolearn=disabled version=3.4.2
Received: from mail.rzn.dlink.ru (mail.rzn.dlink.ru [178.170.168.13])
 by fd.dlink.ru (Postfix) with ESMTP id 70CB51B21845;
 Mon, 30 Dec 2019 17:31:37 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 fd.dlink.ru 70CB51B21845
Received: from mail.rzn.dlink.ru (localhost [127.0.0.1])
 by mail.rzn.dlink.ru (Postfix) with ESMTP id 4683B1B229D0;
 Mon, 30 Dec 2019 17:31:35 +0300 (MSK)
Received: from localhost.localdomain (unknown [196.196.203.126])
 by mail.rzn.dlink.ru (Postfix) with ESMTPA;
 Mon, 30 Dec 2019 17:31:35 +0300 (MSK)
From: Alexander Lobakin <alobakin@dlink.ru>
To: "David S. Miller" <davem@davemloft.net>
Subject: [PATCH RFC net-next 17/19] net: dsa: tag_qca: switch to bitfield
 helpers
Date: Mon, 30 Dec 2019 17:30:25 +0300
Message-Id: <20191230143028.27313-18-alobakin@dlink.ru>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191230143028.27313-1-alobakin@dlink.ru>
References: <20191230143028.27313-1-alobakin@dlink.ru>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_064231_456137_E394F5E0 
X-CRM114-Status: GOOD (  11.09  )
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

Make code look cleaner and more readable by using bitfield macros.
Misc: fix several macro identation and phdr type in qca_tag_xmit().

Signed-off-by: Alexander Lobakin <alobakin@dlink.ru>
---
 net/dsa/tag_qca.c | 29 ++++++++++++++---------------
 1 file changed, 14 insertions(+), 15 deletions(-)

diff --git a/net/dsa/tag_qca.c b/net/dsa/tag_qca.c
index e1c4dd04734a..8939abce36d7 100644
--- a/net/dsa/tag_qca.c
+++ b/net/dsa/tag_qca.c
@@ -3,15 +3,15 @@
  * Copyright (c) 2015, The Linux Foundation. All rights reserved.
  */
 
+#include <linux/bitfield.h>
 #include <linux/etherdevice.h>
 
 #include "dsa_priv.h"
 
-#define QCA_HDR_LEN	2
-#define QCA_HDR_VERSION	0x2
+#define QCA_HDR_LEN			2
+#define QCA_HDR_VERSION			0x2
 
-#define QCA_HDR_RECV_VERSION_MASK	GENMASK(15, 14)
-#define QCA_HDR_RECV_VERSION_S		14
+#define QCA_HDR_RECV_VERSION(tag)	FIELD_GET(GENMASK(15, 14), tag)
 #define QCA_HDR_RECV_PRIORITY_MASK	GENMASK(13, 11)
 #define QCA_HDR_RECV_PRIORITY_S		11
 #define QCA_HDR_RECV_TYPE_MASK		GENMASK(10, 6)
@@ -19,19 +19,20 @@
 #define QCA_HDR_RECV_FRAME_IS_TAGGED	BIT(3)
 #define QCA_HDR_RECV_SOURCE_PORT_MASK	GENMASK(2, 0)
 
-#define QCA_HDR_XMIT_VERSION_MASK	GENMASK(15, 14)
-#define QCA_HDR_XMIT_VERSION_S		14
+#define QCA_HDR_XMIT_VERSION		FIELD_PREP(GENMASK(15, 14), \
+						   QCA_HDR_VERSION)
 #define QCA_HDR_XMIT_PRIORITY_MASK	GENMASK(13, 11)
 #define QCA_HDR_XMIT_PRIORITY_S		11
 #define QCA_HDR_XMIT_CONTROL_MASK	GENMASK(10, 8)
 #define QCA_HDR_XMIT_CONTROL_S		8
 #define QCA_HDR_XMIT_FROM_CPU		BIT(7)
-#define QCA_HDR_XMIT_DP_BIT_MASK	GENMASK(6, 0)
+#define QCA_HDR_XMIT_DP(port)		FIELD_PREP(GENMASK(6, 0), BIT(port))
 
 static struct sk_buff *qca_tag_xmit(struct sk_buff *skb, struct net_device *dev)
 {
-	struct dsa_port *dp = dsa_slave_to_port(dev);
-	u16 *phdr, hdr;
+	const struct dsa_port *dp = dsa_slave_to_port(dev);
+	__be16 *phdr;
+	u16 hdr;
 
 	if (skb_cow_head(skb, 0) < 0)
 		return NULL;
@@ -39,11 +40,11 @@ static struct sk_buff *qca_tag_xmit(struct sk_buff *skb, struct net_device *dev)
 	skb_push(skb, QCA_HDR_LEN);
 
 	memmove(skb->data, skb->data + QCA_HDR_LEN, 2 * ETH_ALEN);
-	phdr = (u16 *)(skb->data + 2 * ETH_ALEN);
+	phdr = (__be16 *)(skb->data + 2 * ETH_ALEN);
 
 	/* Set the version field, and set destination port information */
-	hdr = QCA_HDR_VERSION << QCA_HDR_XMIT_VERSION_S |
-		QCA_HDR_XMIT_FROM_CPU | BIT(dp->index);
+	hdr = QCA_HDR_XMIT_VERSION | QCA_HDR_XMIT_FROM_CPU |
+	      QCA_HDR_XMIT_DP(dp->index);
 
 	*phdr = htons(hdr);
 
@@ -53,7 +54,6 @@ static struct sk_buff *qca_tag_xmit(struct sk_buff *skb, struct net_device *dev)
 static struct sk_buff *qca_tag_rcv(struct sk_buff *skb, struct net_device *dev,
 				   struct packet_type *pt)
 {
-	u8 ver;
 	int port;
 	__be16 *phdr, hdr;
 
@@ -68,8 +68,7 @@ static struct sk_buff *qca_tag_rcv(struct sk_buff *skb, struct net_device *dev,
 	hdr = ntohs(*phdr);
 
 	/* Make sure the version is correct */
-	ver = (hdr & QCA_HDR_RECV_VERSION_MASK) >> QCA_HDR_RECV_VERSION_S;
-	if (unlikely(ver != QCA_HDR_VERSION))
+	if (unlikely(QCA_HDR_RECV_VERSION(hdr) != QCA_HDR_VERSION))
 		return NULL;
 
 	/* Remove QCA tag and recalculate checksum */
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
