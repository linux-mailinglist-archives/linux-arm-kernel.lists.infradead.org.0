Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A9DDF9B5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 15:15:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6c8W7LHFo8bDQQy2SrrCyA8WpuJyXn5UZvdiYuQYmmI=; b=m0vjD1D0QH8J4h
	kmno6od5EIdecr9e3hYJ78s4+TzBiWrl7F2DhMo7VS1ziMtEygypqtRXpv1tGZ10U5PhD5AOuix5h
	XKK/OE7LKm5oVjY96IeJhDyUug/tD5F4XuctK51XlmDVjmyvjfj3Fnr2teod9T1a3XA3RP+HFH/9b
	6JN+crZ/xrSdQBTwAnxN2aDIRQziAliVgeyjWUPyNo4OJ/iXk15lFfwuo+SY9yZlxWazqe7zLdgLo
	Eu0kT6NarU1FDIaaLxUyUrb1E6sA/bYQUL02F1WZnJ4JjB5MPzgnSmhMS2A6a8txESahtbHadmXPD
	TQg76+a+NKJ279ocfJ1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLSbo-0005t8-QJ; Tue, 30 Apr 2019 13:15:44 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLSat-0003ju-3H
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 13:14:51 +0000
X-Originating-IP: 90.88.149.145
Received: from mc-bl-xps13.lan
 (aaubervilliers-681-1-29-145.w90-88.abo.wanadoo.fr [90.88.149.145])
 (Authenticated sender: maxime.chevallier@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 837AD1BF20E;
 Tue, 30 Apr 2019 13:14:40 +0000 (UTC)
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
To: davem@davemloft.net
Subject: [PATCH net-next 2/4] net: mvpp2: cls: Use a bitfield to represent the
 flow_type
Date: Tue, 30 Apr 2019 15:14:27 +0200
Message-Id: <20190430131429.19361-3-maxime.chevallier@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190430131429.19361-1-maxime.chevallier@bootlin.com>
References: <20190430131429.19361-1-maxime.chevallier@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_061447_440077_DF722BCD 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Jakub Kicinski <jakub.kicinski@netronome.com>,
 Antoine Tenart <antoine.tenart@bootlin.com>, netdev@vger.kernel.org,
 gregory.clement@bootlin.com, linux-kernel@vger.kernel.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>, nadavh@marvell.com,
 Saeed Mahameed <saeedm@mellanox.com>, linux-arm-kernel@lists.infradead.org,
 thomas.petazzoni@bootlin.com, miquel.raynal@bootlin.com, stefanc@marvell.com,
 mw@semihalf.com, Russell King <linux@armlinux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As of today, the classification code is used only for RSS. We split the
incoming traffic into multiple flows, that correspond to the ethtool
flow_type parameter.

We don't want to use the ethtool flow definitions such as TCP_V4_FLOW,
for several reason :

 - We want to decorrelate the driver code from ethtool as much as
   possible, so that we can easily use other interfaces such as tc flower,

 - We want the flow_type to be a bitfield, so that we can match flows
   embedded into each other, such as TCP4 which is a subset of IP4.

This commit does the conversion to the newer type.

Signed-off-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
---
 .../net/ethernet/marvell/mvpp2/mvpp2_cls.c    | 164 ++++++++++--------
 .../net/ethernet/marvell/mvpp2/mvpp2_cls.h    |  14 ++
 2 files changed, 109 insertions(+), 69 deletions(-)

diff --git a/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c b/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c
index ca32ccdab68a..2bbd4c294fc9 100644
--- a/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c
+++ b/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c
@@ -24,300 +24,300 @@
 
 static const struct mvpp2_cls_flow cls_flows[MVPP2_N_PRS_FLOWS] = {
 	/* TCP over IPv4 flows, Not fragmented, no vlan tag */
-	MVPP2_DEF_FLOW(TCP_V4_FLOW, MVPP2_FL_IP4_TCP_NF_UNTAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_TCP4, MVPP2_FL_IP4_TCP_NF_UNTAG,
 		       MVPP22_CLS_HEK_IP4_5T,
 		       MVPP2_PRS_RI_VLAN_NONE | MVPP2_PRS_RI_L3_IP4 |
 		       MVPP2_PRS_RI_L4_TCP,
 		       MVPP2_PRS_IP_MASK | MVPP2_PRS_RI_VLAN_MASK),
 
-	MVPP2_DEF_FLOW(TCP_V4_FLOW, MVPP2_FL_IP4_TCP_NF_UNTAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_TCP4, MVPP2_FL_IP4_TCP_NF_UNTAG,
 		       MVPP22_CLS_HEK_IP4_5T,
 		       MVPP2_PRS_RI_VLAN_NONE | MVPP2_PRS_RI_L3_IP4_OPT |
 		       MVPP2_PRS_RI_L4_TCP,
 		       MVPP2_PRS_IP_MASK | MVPP2_PRS_RI_VLAN_MASK),
 
-	MVPP2_DEF_FLOW(TCP_V4_FLOW, MVPP2_FL_IP4_TCP_NF_UNTAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_TCP4, MVPP2_FL_IP4_TCP_NF_UNTAG,
 		       MVPP22_CLS_HEK_IP4_5T,
 		       MVPP2_PRS_RI_VLAN_NONE | MVPP2_PRS_RI_L3_IP4_OTHER |
 		       MVPP2_PRS_RI_L4_TCP,
 		       MVPP2_PRS_IP_MASK | MVPP2_PRS_RI_VLAN_MASK),
 
 	/* TCP over IPv4 flows, Not fragmented, with vlan tag */
-	MVPP2_DEF_FLOW(TCP_V4_FLOW, MVPP2_FL_IP4_TCP_NF_TAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_TCP4, MVPP2_FL_IP4_TCP_NF_TAG,
 		       MVPP22_CLS_HEK_IP4_5T | MVPP22_CLS_HEK_OPT_VLAN,
 		       MVPP2_PRS_RI_L3_IP4 | MVPP2_PRS_RI_L4_TCP,
 		       MVPP2_PRS_IP_MASK),
 
-	MVPP2_DEF_FLOW(TCP_V4_FLOW, MVPP2_FL_IP4_TCP_NF_TAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_TCP4, MVPP2_FL_IP4_TCP_NF_TAG,
 		       MVPP22_CLS_HEK_IP4_5T | MVPP22_CLS_HEK_OPT_VLAN,
 		       MVPP2_PRS_RI_L3_IP4_OPT | MVPP2_PRS_RI_L4_TCP,
 		       MVPP2_PRS_IP_MASK),
 
-	MVPP2_DEF_FLOW(TCP_V4_FLOW, MVPP2_FL_IP4_TCP_NF_TAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_TCP4, MVPP2_FL_IP4_TCP_NF_TAG,
 		       MVPP22_CLS_HEK_IP4_5T | MVPP22_CLS_HEK_OPT_VLAN,
 		       MVPP2_PRS_RI_L3_IP4_OTHER | MVPP2_PRS_RI_L4_TCP,
 		       MVPP2_PRS_IP_MASK),
 
 	/* TCP over IPv4 flows, fragmented, no vlan tag */
-	MVPP2_DEF_FLOW(TCP_V4_FLOW, MVPP2_FL_IP4_TCP_FRAG_UNTAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_TCP4, MVPP2_FL_IP4_TCP_FRAG_UNTAG,
 		       MVPP22_CLS_HEK_IP4_2T,
 		       MVPP2_PRS_RI_VLAN_NONE | MVPP2_PRS_RI_L3_IP4 |
 		       MVPP2_PRS_RI_L4_TCP,
 		       MVPP2_PRS_IP_MASK | MVPP2_PRS_RI_VLAN_MASK),
 
-	MVPP2_DEF_FLOW(TCP_V4_FLOW, MVPP2_FL_IP4_TCP_FRAG_UNTAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_TCP4, MVPP2_FL_IP4_TCP_FRAG_UNTAG,
 		       MVPP22_CLS_HEK_IP4_2T,
 		       MVPP2_PRS_RI_VLAN_NONE | MVPP2_PRS_RI_L3_IP4_OPT |
 		       MVPP2_PRS_RI_L4_TCP,
 		       MVPP2_PRS_IP_MASK | MVPP2_PRS_RI_VLAN_MASK),
 
-	MVPP2_DEF_FLOW(TCP_V4_FLOW, MVPP2_FL_IP4_TCP_FRAG_UNTAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_TCP4, MVPP2_FL_IP4_TCP_FRAG_UNTAG,
 		       MVPP22_CLS_HEK_IP4_2T,
 		       MVPP2_PRS_RI_VLAN_NONE | MVPP2_PRS_RI_L3_IP4_OTHER |
 		       MVPP2_PRS_RI_L4_TCP,
 		       MVPP2_PRS_IP_MASK | MVPP2_PRS_RI_VLAN_MASK),
 
 	/* TCP over IPv4 flows, fragmented, with vlan tag */
-	MVPP2_DEF_FLOW(TCP_V4_FLOW, MVPP2_FL_IP4_TCP_FRAG_TAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_TCP4, MVPP2_FL_IP4_TCP_FRAG_TAG,
 		       MVPP22_CLS_HEK_IP4_2T | MVPP22_CLS_HEK_OPT_VLAN,
 		       MVPP2_PRS_RI_L3_IP4 | MVPP2_PRS_RI_L4_TCP,
 		       MVPP2_PRS_IP_MASK),
 
-	MVPP2_DEF_FLOW(TCP_V4_FLOW, MVPP2_FL_IP4_TCP_FRAG_TAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_TCP4, MVPP2_FL_IP4_TCP_FRAG_TAG,
 		       MVPP22_CLS_HEK_IP4_2T | MVPP22_CLS_HEK_OPT_VLAN,
 		       MVPP2_PRS_RI_L3_IP4_OPT | MVPP2_PRS_RI_L4_TCP,
 		       MVPP2_PRS_IP_MASK),
 
-	MVPP2_DEF_FLOW(TCP_V4_FLOW, MVPP2_FL_IP4_TCP_FRAG_TAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_TCP4, MVPP2_FL_IP4_TCP_FRAG_TAG,
 		       MVPP22_CLS_HEK_IP4_2T | MVPP22_CLS_HEK_OPT_VLAN,
 		       MVPP2_PRS_RI_L3_IP4_OTHER | MVPP2_PRS_RI_L4_TCP,
 		       MVPP2_PRS_IP_MASK),
 
 	/* UDP over IPv4 flows, Not fragmented, no vlan tag */
-	MVPP2_DEF_FLOW(UDP_V4_FLOW, MVPP2_FL_IP4_UDP_NF_UNTAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_UDP4, MVPP2_FL_IP4_UDP_NF_UNTAG,
 		       MVPP22_CLS_HEK_IP4_5T,
 		       MVPP2_PRS_RI_VLAN_NONE | MVPP2_PRS_RI_L3_IP4 |
 		       MVPP2_PRS_RI_L4_UDP,
 		       MVPP2_PRS_IP_MASK | MVPP2_PRS_RI_VLAN_MASK),
 
-	MVPP2_DEF_FLOW(UDP_V4_FLOW, MVPP2_FL_IP4_UDP_NF_UNTAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_UDP4, MVPP2_FL_IP4_UDP_NF_UNTAG,
 		       MVPP22_CLS_HEK_IP4_5T,
 		       MVPP2_PRS_RI_VLAN_NONE | MVPP2_PRS_RI_L3_IP4_OPT |
 		       MVPP2_PRS_RI_L4_UDP,
 		       MVPP2_PRS_IP_MASK | MVPP2_PRS_RI_VLAN_MASK),
 
-	MVPP2_DEF_FLOW(UDP_V4_FLOW, MVPP2_FL_IP4_UDP_NF_UNTAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_UDP4, MVPP2_FL_IP4_UDP_NF_UNTAG,
 		       MVPP22_CLS_HEK_IP4_5T,
 		       MVPP2_PRS_RI_VLAN_NONE | MVPP2_PRS_RI_L3_IP4_OTHER |
 		       MVPP2_PRS_RI_L4_UDP,
 		       MVPP2_PRS_IP_MASK | MVPP2_PRS_RI_VLAN_MASK),
 
 	/* UDP over IPv4 flows, Not fragmented, with vlan tag */
-	MVPP2_DEF_FLOW(UDP_V4_FLOW, MVPP2_FL_IP4_UDP_NF_TAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_UDP4, MVPP2_FL_IP4_UDP_NF_TAG,
 		       MVPP22_CLS_HEK_IP4_5T | MVPP22_CLS_HEK_OPT_VLAN,
 		       MVPP2_PRS_RI_L3_IP4 | MVPP2_PRS_RI_L4_UDP,
 		       MVPP2_PRS_IP_MASK),
 
-	MVPP2_DEF_FLOW(UDP_V4_FLOW, MVPP2_FL_IP4_UDP_NF_TAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_UDP4, MVPP2_FL_IP4_UDP_NF_TAG,
 		       MVPP22_CLS_HEK_IP4_5T | MVPP22_CLS_HEK_OPT_VLAN,
 		       MVPP2_PRS_RI_L3_IP4_OPT | MVPP2_PRS_RI_L4_UDP,
 		       MVPP2_PRS_IP_MASK),
 
-	MVPP2_DEF_FLOW(UDP_V4_FLOW, MVPP2_FL_IP4_UDP_NF_TAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_UDP4, MVPP2_FL_IP4_UDP_NF_TAG,
 		       MVPP22_CLS_HEK_IP4_5T | MVPP22_CLS_HEK_OPT_VLAN,
 		       MVPP2_PRS_RI_L3_IP4_OTHER | MVPP2_PRS_RI_L4_UDP,
 		       MVPP2_PRS_IP_MASK),
 
 	/* UDP over IPv4 flows, fragmented, no vlan tag */
-	MVPP2_DEF_FLOW(UDP_V4_FLOW, MVPP2_FL_IP4_UDP_FRAG_UNTAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_UDP4, MVPP2_FL_IP4_UDP_FRAG_UNTAG,
 		       MVPP22_CLS_HEK_IP4_2T,
 		       MVPP2_PRS_RI_VLAN_NONE | MVPP2_PRS_RI_L3_IP4 |
 		       MVPP2_PRS_RI_L4_UDP,
 		       MVPP2_PRS_IP_MASK | MVPP2_PRS_RI_VLAN_MASK),
 
-	MVPP2_DEF_FLOW(UDP_V4_FLOW, MVPP2_FL_IP4_UDP_FRAG_UNTAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_UDP4, MVPP2_FL_IP4_UDP_FRAG_UNTAG,
 		       MVPP22_CLS_HEK_IP4_2T,
 		       MVPP2_PRS_RI_VLAN_NONE | MVPP2_PRS_RI_L3_IP4_OPT |
 		       MVPP2_PRS_RI_L4_UDP,
 		       MVPP2_PRS_IP_MASK | MVPP2_PRS_RI_VLAN_MASK),
 
-	MVPP2_DEF_FLOW(UDP_V4_FLOW, MVPP2_FL_IP4_UDP_FRAG_UNTAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_UDP4, MVPP2_FL_IP4_UDP_FRAG_UNTAG,
 		       MVPP22_CLS_HEK_IP4_2T,
 		       MVPP2_PRS_RI_VLAN_NONE | MVPP2_PRS_RI_L3_IP4_OTHER |
 		       MVPP2_PRS_RI_L4_UDP,
 		       MVPP2_PRS_IP_MASK | MVPP2_PRS_RI_VLAN_MASK),
 
 	/* UDP over IPv4 flows, fragmented, with vlan tag */
-	MVPP2_DEF_FLOW(UDP_V4_FLOW, MVPP2_FL_IP4_UDP_FRAG_TAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_UDP4, MVPP2_FL_IP4_UDP_FRAG_TAG,
 		       MVPP22_CLS_HEK_IP4_2T | MVPP22_CLS_HEK_OPT_VLAN,
 		       MVPP2_PRS_RI_L3_IP4 | MVPP2_PRS_RI_L4_UDP,
 		       MVPP2_PRS_IP_MASK),
 
-	MVPP2_DEF_FLOW(UDP_V4_FLOW, MVPP2_FL_IP4_UDP_FRAG_TAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_UDP4, MVPP2_FL_IP4_UDP_FRAG_TAG,
 		       MVPP22_CLS_HEK_IP4_2T | MVPP22_CLS_HEK_OPT_VLAN,
 		       MVPP2_PRS_RI_L3_IP4_OPT | MVPP2_PRS_RI_L4_UDP,
 		       MVPP2_PRS_IP_MASK),
 
-	MVPP2_DEF_FLOW(UDP_V4_FLOW, MVPP2_FL_IP4_UDP_FRAG_TAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_UDP4, MVPP2_FL_IP4_UDP_FRAG_TAG,
 		       MVPP22_CLS_HEK_IP4_2T | MVPP22_CLS_HEK_OPT_VLAN,
 		       MVPP2_PRS_RI_L3_IP4_OTHER | MVPP2_PRS_RI_L4_UDP,
 		       MVPP2_PRS_IP_MASK),
 
 	/* TCP over IPv6 flows, not fragmented, no vlan tag */
-	MVPP2_DEF_FLOW(TCP_V6_FLOW, MVPP2_FL_IP6_TCP_NF_UNTAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_TCP6, MVPP2_FL_IP6_TCP_NF_UNTAG,
 		       MVPP22_CLS_HEK_IP6_5T,
 		       MVPP2_PRS_RI_VLAN_NONE | MVPP2_PRS_RI_L3_IP6 |
 		       MVPP2_PRS_RI_L4_TCP,
 		       MVPP2_PRS_IP_MASK | MVPP2_PRS_RI_VLAN_MASK),
 
-	MVPP2_DEF_FLOW(TCP_V6_FLOW, MVPP2_FL_IP6_TCP_NF_UNTAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_TCP6, MVPP2_FL_IP6_TCP_NF_UNTAG,
 		       MVPP22_CLS_HEK_IP6_5T,
 		       MVPP2_PRS_RI_VLAN_NONE | MVPP2_PRS_RI_L3_IP6_EXT |
 		       MVPP2_PRS_RI_L4_TCP,
 		       MVPP2_PRS_IP_MASK | MVPP2_PRS_RI_VLAN_MASK),
 
 	/* TCP over IPv6 flows, not fragmented, with vlan tag */
-	MVPP2_DEF_FLOW(TCP_V6_FLOW, MVPP2_FL_IP6_TCP_NF_TAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_TCP6, MVPP2_FL_IP6_TCP_NF_TAG,
 		       MVPP22_CLS_HEK_IP6_5T | MVPP22_CLS_HEK_OPT_VLAN,
 		       MVPP2_PRS_RI_L3_IP6 | MVPP2_PRS_RI_L4_TCP,
 		       MVPP2_PRS_IP_MASK),
 
-	MVPP2_DEF_FLOW(TCP_V6_FLOW, MVPP2_FL_IP6_TCP_NF_TAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_TCP6, MVPP2_FL_IP6_TCP_NF_TAG,
 		       MVPP22_CLS_HEK_IP6_5T | MVPP22_CLS_HEK_OPT_VLAN,
 		       MVPP2_PRS_RI_L3_IP6_EXT | MVPP2_PRS_RI_L4_TCP,
 		       MVPP2_PRS_IP_MASK),
 
 	/* TCP over IPv6 flows, fragmented, no vlan tag */
-	MVPP2_DEF_FLOW(TCP_V6_FLOW, MVPP2_FL_IP6_TCP_FRAG_UNTAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_TCP6, MVPP2_FL_IP6_TCP_FRAG_UNTAG,
 		       MVPP22_CLS_HEK_IP6_2T,
 		       MVPP2_PRS_RI_VLAN_NONE | MVPP2_PRS_RI_L3_IP6 |
 		       MVPP2_PRS_RI_IP_FRAG_TRUE | MVPP2_PRS_RI_L4_TCP,
 		       MVPP2_PRS_IP_MASK | MVPP2_PRS_RI_VLAN_MASK),
 
-	MVPP2_DEF_FLOW(TCP_V6_FLOW, MVPP2_FL_IP6_TCP_FRAG_UNTAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_TCP6, MVPP2_FL_IP6_TCP_FRAG_UNTAG,
 		       MVPP22_CLS_HEK_IP6_2T,
 		       MVPP2_PRS_RI_VLAN_NONE | MVPP2_PRS_RI_L3_IP6_EXT |
 		       MVPP2_PRS_RI_IP_FRAG_TRUE | MVPP2_PRS_RI_L4_TCP,
 		       MVPP2_PRS_IP_MASK | MVPP2_PRS_RI_VLAN_MASK),
 
 	/* TCP over IPv6 flows, fragmented, with vlan tag */
-	MVPP2_DEF_FLOW(TCP_V6_FLOW, MVPP2_FL_IP6_TCP_FRAG_TAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_TCP6, MVPP2_FL_IP6_TCP_FRAG_TAG,
 		       MVPP22_CLS_HEK_IP6_2T | MVPP22_CLS_HEK_OPT_VLAN,
 		       MVPP2_PRS_RI_L3_IP6 | MVPP2_PRS_RI_IP_FRAG_TRUE |
 		       MVPP2_PRS_RI_L4_TCP,
 		       MVPP2_PRS_IP_MASK),
 
-	MVPP2_DEF_FLOW(TCP_V6_FLOW, MVPP2_FL_IP6_TCP_FRAG_TAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_TCP6, MVPP2_FL_IP6_TCP_FRAG_TAG,
 		       MVPP22_CLS_HEK_IP6_2T | MVPP22_CLS_HEK_OPT_VLAN,
 		       MVPP2_PRS_RI_L3_IP6_EXT | MVPP2_PRS_RI_IP_FRAG_TRUE |
 		       MVPP2_PRS_RI_L4_TCP,
 		       MVPP2_PRS_IP_MASK),
 
 	/* UDP over IPv6 flows, not fragmented, no vlan tag */
-	MVPP2_DEF_FLOW(UDP_V6_FLOW, MVPP2_FL_IP6_UDP_NF_UNTAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_UDP6, MVPP2_FL_IP6_UDP_NF_UNTAG,
 		       MVPP22_CLS_HEK_IP6_5T,
 		       MVPP2_PRS_RI_VLAN_NONE | MVPP2_PRS_RI_L3_IP6 |
 		       MVPP2_PRS_RI_L4_UDP,
 		       MVPP2_PRS_IP_MASK | MVPP2_PRS_RI_VLAN_MASK),
 
-	MVPP2_DEF_FLOW(UDP_V6_FLOW, MVPP2_FL_IP6_UDP_NF_UNTAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_UDP6, MVPP2_FL_IP6_UDP_NF_UNTAG,
 		       MVPP22_CLS_HEK_IP6_5T,
 		       MVPP2_PRS_RI_VLAN_NONE | MVPP2_PRS_RI_L3_IP6_EXT |
 		       MVPP2_PRS_RI_L4_UDP,
 		       MVPP2_PRS_IP_MASK | MVPP2_PRS_RI_VLAN_MASK),
 
 	/* UDP over IPv6 flows, not fragmented, with vlan tag */
-	MVPP2_DEF_FLOW(UDP_V6_FLOW, MVPP2_FL_IP6_UDP_NF_TAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_UDP6, MVPP2_FL_IP6_UDP_NF_TAG,
 		       MVPP22_CLS_HEK_IP6_5T | MVPP22_CLS_HEK_OPT_VLAN,
 		       MVPP2_PRS_RI_L3_IP6 | MVPP2_PRS_RI_L4_UDP,
 		       MVPP2_PRS_IP_MASK),
 
-	MVPP2_DEF_FLOW(UDP_V6_FLOW, MVPP2_FL_IP6_UDP_NF_TAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_UDP6, MVPP2_FL_IP6_UDP_NF_TAG,
 		       MVPP22_CLS_HEK_IP6_5T | MVPP22_CLS_HEK_OPT_VLAN,
 		       MVPP2_PRS_RI_L3_IP6_EXT | MVPP2_PRS_RI_L4_UDP,
 		       MVPP2_PRS_IP_MASK),
 
 	/* UDP over IPv6 flows, fragmented, no vlan tag */
-	MVPP2_DEF_FLOW(UDP_V6_FLOW, MVPP2_FL_IP6_UDP_FRAG_UNTAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_UDP6, MVPP2_FL_IP6_UDP_FRAG_UNTAG,
 		       MVPP22_CLS_HEK_IP6_2T,
 		       MVPP2_PRS_RI_VLAN_NONE | MVPP2_PRS_RI_L3_IP6 |
 		       MVPP2_PRS_RI_IP_FRAG_TRUE | MVPP2_PRS_RI_L4_UDP,
 		       MVPP2_PRS_IP_MASK | MVPP2_PRS_RI_VLAN_MASK),
 
-	MVPP2_DEF_FLOW(UDP_V6_FLOW, MVPP2_FL_IP6_UDP_FRAG_UNTAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_UDP6, MVPP2_FL_IP6_UDP_FRAG_UNTAG,
 		       MVPP22_CLS_HEK_IP6_2T,
 		       MVPP2_PRS_RI_VLAN_NONE | MVPP2_PRS_RI_L3_IP6_EXT |
 		       MVPP2_PRS_RI_IP_FRAG_TRUE | MVPP2_PRS_RI_L4_UDP,
 		       MVPP2_PRS_IP_MASK | MVPP2_PRS_RI_VLAN_MASK),
 
 	/* UDP over IPv6 flows, fragmented, with vlan tag */
-	MVPP2_DEF_FLOW(UDP_V6_FLOW, MVPP2_FL_IP6_UDP_FRAG_TAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_UDP6, MVPP2_FL_IP6_UDP_FRAG_TAG,
 		       MVPP22_CLS_HEK_IP6_2T | MVPP22_CLS_HEK_OPT_VLAN,
 		       MVPP2_PRS_RI_L3_IP6 | MVPP2_PRS_RI_IP_FRAG_TRUE |
 		       MVPP2_PRS_RI_L4_UDP,
 		       MVPP2_PRS_IP_MASK),
 
-	MVPP2_DEF_FLOW(UDP_V6_FLOW, MVPP2_FL_IP6_UDP_FRAG_TAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_UDP6, MVPP2_FL_IP6_UDP_FRAG_TAG,
 		       MVPP22_CLS_HEK_IP6_2T | MVPP22_CLS_HEK_OPT_VLAN,
 		       MVPP2_PRS_RI_L3_IP6_EXT | MVPP2_PRS_RI_IP_FRAG_TRUE |
 		       MVPP2_PRS_RI_L4_UDP,
 		       MVPP2_PRS_IP_MASK),
 
 	/* IPv4 flows, no vlan tag */
-	MVPP2_DEF_FLOW(IPV4_FLOW, MVPP2_FL_IP4_UNTAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_IP4, MVPP2_FL_IP4_UNTAG,
 		       MVPP22_CLS_HEK_IP4_2T,
 		       MVPP2_PRS_RI_VLAN_NONE | MVPP2_PRS_RI_L3_IP4,
 		       MVPP2_PRS_RI_VLAN_MASK | MVPP2_PRS_RI_L3_PROTO_MASK),
-	MVPP2_DEF_FLOW(IPV4_FLOW, MVPP2_FL_IP4_UNTAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_IP4, MVPP2_FL_IP4_UNTAG,
 		       MVPP22_CLS_HEK_IP4_2T,
 		       MVPP2_PRS_RI_VLAN_NONE | MVPP2_PRS_RI_L3_IP4_OPT,
 		       MVPP2_PRS_RI_VLAN_MASK | MVPP2_PRS_RI_L3_PROTO_MASK),
-	MVPP2_DEF_FLOW(IPV4_FLOW, MVPP2_FL_IP4_UNTAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_IP4, MVPP2_FL_IP4_UNTAG,
 		       MVPP22_CLS_HEK_IP4_2T,
 		       MVPP2_PRS_RI_VLAN_NONE | MVPP2_PRS_RI_L3_IP4_OTHER,
 		       MVPP2_PRS_RI_VLAN_MASK | MVPP2_PRS_RI_L3_PROTO_MASK),
 
 	/* IPv4 flows, with vlan tag */
-	MVPP2_DEF_FLOW(IPV4_FLOW, MVPP2_FL_IP4_TAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_IP4, MVPP2_FL_IP4_TAG,
 		       MVPP22_CLS_HEK_IP4_2T | MVPP22_CLS_HEK_OPT_VLAN,
 		       MVPP2_PRS_RI_L3_IP4,
 		       MVPP2_PRS_RI_L3_PROTO_MASK),
-	MVPP2_DEF_FLOW(IPV4_FLOW, MVPP2_FL_IP4_TAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_IP4, MVPP2_FL_IP4_TAG,
 		       MVPP22_CLS_HEK_IP4_2T | MVPP22_CLS_HEK_OPT_VLAN,
 		       MVPP2_PRS_RI_L3_IP4_OPT,
 		       MVPP2_PRS_RI_L3_PROTO_MASK),
-	MVPP2_DEF_FLOW(IPV4_FLOW, MVPP2_FL_IP4_TAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_IP4, MVPP2_FL_IP4_TAG,
 		       MVPP22_CLS_HEK_IP4_2T | MVPP22_CLS_HEK_OPT_VLAN,
 		       MVPP2_PRS_RI_L3_IP4_OTHER,
 		       MVPP2_PRS_RI_L3_PROTO_MASK),
 
 	/* IPv6 flows, no vlan tag */
-	MVPP2_DEF_FLOW(IPV6_FLOW, MVPP2_FL_IP6_UNTAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_IP6, MVPP2_FL_IP6_UNTAG,
 		       MVPP22_CLS_HEK_IP6_2T,
 		       MVPP2_PRS_RI_VLAN_NONE | MVPP2_PRS_RI_L3_IP6,
 		       MVPP2_PRS_RI_VLAN_MASK | MVPP2_PRS_RI_L3_PROTO_MASK),
-	MVPP2_DEF_FLOW(IPV6_FLOW, MVPP2_FL_IP6_UNTAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_IP6, MVPP2_FL_IP6_UNTAG,
 		       MVPP22_CLS_HEK_IP6_2T,
 		       MVPP2_PRS_RI_VLAN_NONE | MVPP2_PRS_RI_L3_IP6,
 		       MVPP2_PRS_RI_VLAN_MASK | MVPP2_PRS_RI_L3_PROTO_MASK),
 
 	/* IPv6 flows, with vlan tag */
-	MVPP2_DEF_FLOW(IPV6_FLOW, MVPP2_FL_IP6_TAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_IP6, MVPP2_FL_IP6_TAG,
 		       MVPP22_CLS_HEK_IP6_2T | MVPP22_CLS_HEK_OPT_VLAN,
 		       MVPP2_PRS_RI_L3_IP6,
 		       MVPP2_PRS_RI_L3_PROTO_MASK),
-	MVPP2_DEF_FLOW(IPV6_FLOW, MVPP2_FL_IP6_TAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_IP6, MVPP2_FL_IP6_TAG,
 		       MVPP22_CLS_HEK_IP6_2T | MVPP22_CLS_HEK_OPT_VLAN,
 		       MVPP2_PRS_RI_L3_IP6,
 		       MVPP2_PRS_RI_L3_PROTO_MASK),
 
 	/* Non IP flow, no vlan tag */
-	MVPP2_DEF_FLOW(ETHER_FLOW, MVPP2_FL_NON_IP_UNTAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_ETHERNET, MVPP2_FL_NON_IP_UNTAG,
 		       0,
 		       MVPP2_PRS_RI_VLAN_NONE,
 		       MVPP2_PRS_RI_VLAN_MASK),
 	/* Non IP flow, with vlan tag */
-	MVPP2_DEF_FLOW(ETHER_FLOW, MVPP2_FL_NON_IP_TAG,
+	MVPP2_DEF_FLOW(MVPP22_FLOW_ETHERNET, MVPP2_FL_NON_IP_TAG,
 		       MVPP22_CLS_HEK_OPT_VLAN,
 		       0, 0),
 };
@@ -539,6 +539,26 @@ void mvpp2_cls_c2_read(struct mvpp2 *priv, int index,
 	c2->valid = !(val & MVPP22_CLS_C2_TCAM_INV_BIT);
 }
 
+static int mvpp2_cls_ethtool_flow_to_type(int flow_type)
+{
+	switch (flow_type & ~(FLOW_EXT | FLOW_MAC_EXT | FLOW_RSS)) {
+	case TCP_V4_FLOW:
+		return MVPP22_FLOW_TCP4;
+	case TCP_V6_FLOW:
+		return MVPP22_FLOW_TCP6;
+	case UDP_V4_FLOW:
+		return MVPP22_FLOW_UDP4;
+	case UDP_V6_FLOW:
+		return MVPP22_FLOW_UDP6;
+	case IPV4_FLOW:
+		return MVPP22_FLOW_IP4;
+	case IPV6_FLOW:
+		return MVPP22_FLOW_IP6;
+	default:
+		return -EOPNOTSUPP;
+	}
+}
+
 /* Initialize the flow table entries for the given flow */
 static void mvpp2_cls_flow_init(struct mvpp2 *priv,
 				const struct mvpp2_cls_flow *flow)
@@ -565,7 +585,7 @@ static void mvpp2_cls_flow_init(struct mvpp2 *priv,
 
 	mvpp2_cls_flow_eng_set(&fe, MVPP22_CLS_ENGINE_C2);
 	mvpp2_cls_flow_port_id_sel(&fe, true);
-	mvpp2_cls_flow_lu_type_set(&fe, MVPP2_CLS_LU_ALL);
+	mvpp2_cls_flow_lu_type_set(&fe, MVPP22_FLOW_ETHERNET);
 
 	/* Add all ports */
 	for (i = 0; i < MVPP2_MAX_PORTS; i++)
@@ -810,7 +830,7 @@ static void mvpp2_port_c2_cls_init(struct mvpp2_port *port)
 
 	/* Match on Lookup Type */
 	c2.tcam[4] |= MVPP22_CLS_C2_TCAM_EN(MVPP22_CLS_C2_LU_TYPE(MVPP2_CLS_LU_TYPE_MASK));
-	c2.tcam[4] |= MVPP22_CLS_C2_LU_TYPE(MVPP2_CLS_LU_ALL);
+	c2.tcam[4] |= MVPP22_CLS_C2_LU_TYPE(MVPP22_FLOW_ETHERNET);
 
 	/* Update RSS status after matching this entry */
 	c2.act = MVPP22_CLS_C2_ACT_RSS_EN(MVPP22_C2_UPD_LOCK);
@@ -997,19 +1017,22 @@ void mvpp22_rss_fill_table(struct mvpp2_port *port, u32 table)
 int mvpp2_ethtool_rxfh_set(struct mvpp2_port *port, struct ethtool_rxnfc *info)
 {
 	u16 hash_opts = 0;
+	u32 flow_type;
 
-	switch (info->flow_type) {
-	case TCP_V4_FLOW:
-	case UDP_V4_FLOW:
-	case TCP_V6_FLOW:
-	case UDP_V6_FLOW:
+	flow_type = mvpp2_cls_ethtool_flow_to_type(info->flow_type);
+
+	switch (flow_type) {
+	case MVPP22_FLOW_TCP4:
+	case MVPP22_FLOW_UDP4:
+	case MVPP22_FLOW_TCP6:
+	case MVPP22_FLOW_UDP6:
 		if (info->data & RXH_L4_B_0_1)
 			hash_opts |= MVPP22_CLS_HEK_OPT_L4SIP;
 		if (info->data & RXH_L4_B_2_3)
 			hash_opts |= MVPP22_CLS_HEK_OPT_L4DIP;
 		/* Fallthrough */
-	case IPV4_FLOW:
-	case IPV6_FLOW:
+	case MVPP22_FLOW_IP4:
+	case MVPP22_FLOW_IP6:
 		if (info->data & RXH_L2DA)
 			hash_opts |= MVPP22_CLS_HEK_OPT_MAC_DA;
 		if (info->data & RXH_VLAN)
@@ -1026,15 +1049,18 @@ int mvpp2_ethtool_rxfh_set(struct mvpp2_port *port, struct ethtool_rxnfc *info)
 	default: return -EOPNOTSUPP;
 	}
 
-	return mvpp2_port_rss_hash_opts_set(port, info->flow_type, hash_opts);
+	return mvpp2_port_rss_hash_opts_set(port, flow_type, hash_opts);
 }
 
 int mvpp2_ethtool_rxfh_get(struct mvpp2_port *port, struct ethtool_rxnfc *info)
 {
 	unsigned long hash_opts;
+	u32 flow_type;
 	int i;
 
-	hash_opts = mvpp2_port_rss_hash_opts_get(port, info->flow_type);
+	flow_type = mvpp2_cls_ethtool_flow_to_type(info->flow_type);
+
+	hash_opts = mvpp2_port_rss_hash_opts_get(port, flow_type);
 	info->data = 0;
 
 	for_each_set_bit(i, &hash_opts, MVPP22_CLS_HEK_N_FIELDS) {
@@ -1097,10 +1123,10 @@ void mvpp22_port_rss_init(struct mvpp2_port *port)
 	mvpp22_rss_fill_table(port, port->id);
 
 	/* Configure default flows */
-	mvpp2_port_rss_hash_opts_set(port, IPV4_FLOW, MVPP22_CLS_HEK_IP4_2T);
-	mvpp2_port_rss_hash_opts_set(port, IPV6_FLOW, MVPP22_CLS_HEK_IP6_2T);
-	mvpp2_port_rss_hash_opts_set(port, TCP_V4_FLOW, MVPP22_CLS_HEK_IP4_5T);
-	mvpp2_port_rss_hash_opts_set(port, TCP_V6_FLOW, MVPP22_CLS_HEK_IP6_5T);
-	mvpp2_port_rss_hash_opts_set(port, UDP_V4_FLOW, MVPP22_CLS_HEK_IP4_5T);
-	mvpp2_port_rss_hash_opts_set(port, UDP_V6_FLOW, MVPP22_CLS_HEK_IP6_5T);
+	mvpp2_port_rss_hash_opts_set(port, MVPP22_FLOW_IP4, MVPP22_CLS_HEK_IP4_2T);
+	mvpp2_port_rss_hash_opts_set(port, MVPP22_FLOW_IP6, MVPP22_CLS_HEK_IP6_2T);
+	mvpp2_port_rss_hash_opts_set(port, MVPP22_FLOW_TCP4, MVPP22_CLS_HEK_IP4_5T);
+	mvpp2_port_rss_hash_opts_set(port, MVPP22_FLOW_TCP6, MVPP22_CLS_HEK_IP6_5T);
+	mvpp2_port_rss_hash_opts_set(port, MVPP22_FLOW_UDP4, MVPP22_CLS_HEK_IP4_5T);
+	mvpp2_port_rss_hash_opts_set(port, MVPP22_FLOW_UDP6, MVPP22_CLS_HEK_IP6_5T);
 }
diff --git a/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.h b/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.h
index 96304ffc5d49..284a16225370 100644
--- a/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.h
+++ b/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.h
@@ -107,6 +107,20 @@ struct mvpp2_cls_c2_entry {
 	u8 valid;
 };
 
+#define MVPP22_FLOW_ETHER_BIT	BIT(0)
+#define MVPP22_FLOW_IP4_BIT	BIT(1)
+#define MVPP22_FLOW_IP6_BIT	BIT(2)
+#define MVPP22_FLOW_TCP_BIT	BIT(3)
+#define MVPP22_FLOW_UDP_BIT	BIT(4)
+
+#define MVPP22_FLOW_TCP4	(MVPP22_FLOW_ETHER_BIT | MVPP22_FLOW_IP4_BIT | MVPP22_FLOW_TCP_BIT)
+#define MVPP22_FLOW_TCP6	(MVPP22_FLOW_ETHER_BIT | MVPP22_FLOW_IP6_BIT | MVPP22_FLOW_TCP_BIT)
+#define MVPP22_FLOW_UDP4	(MVPP22_FLOW_ETHER_BIT | MVPP22_FLOW_IP4_BIT | MVPP22_FLOW_UDP_BIT)
+#define MVPP22_FLOW_UDP6	(MVPP22_FLOW_ETHER_BIT | MVPP22_FLOW_IP6_BIT | MVPP22_FLOW_UDP_BIT)
+#define MVPP22_FLOW_IP4		(MVPP22_FLOW_ETHER_BIT | MVPP22_FLOW_IP4_BIT)
+#define MVPP22_FLOW_IP6		(MVPP22_FLOW_ETHER_BIT | MVPP22_FLOW_IP6_BIT)
+#define MVPP22_FLOW_ETHERNET	(MVPP22_FLOW_ETHER_BIT)
+
 /* Classifier C2 engine entries */
 #define MVPP22_CLS_C2_N_ENTRIES		256
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
