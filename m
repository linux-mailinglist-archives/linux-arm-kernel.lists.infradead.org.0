Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3366A29570
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 12:07:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZYqQmvLqAZbmT/Of6HPXW4i4P/hiaDZ0u+w9/scxqYg=; b=V2qRWV3xbASimT
	IRWinunQrHLEedtZM0WRlLAZYPd8/kjmZfQdtJNCPAqnzeZII5yQoIeORaf2hJ6SD37+BLaYUiTwm
	58sOY2ILky0RPbhy5v7w+YneQgXdu87kPJM2rmy1SLtLoRtDc0BRiZJf01vs4fmLzAhbxqj9i778r
	1mlUi3vcamDgSSL60ModzkQCSdg3RPm9v/tNiDq52scXm/OpAgFKGImT4O7VVjZsevsCm7kjm1nbh
	fxbEUxm8c6s/42COIr8xJv6k4NZNxDjm2qWa5N0XuQ+twUslf0y9aC/kELltipY/53hNlVZC3PbIt
	Sr8nOGhDk6tRRfVTow8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU76h-0001Xb-Vi; Fri, 24 May 2019 10:07:23 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU75d-0000Oh-1C
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 10:06:19 +0000
X-Originating-IP: 90.88.147.134
Received: from mc-bl-xps13.lan
 (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr [90.88.147.134])
 (Authenticated sender: maxime.chevallier@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 3427540018;
 Fri, 24 May 2019 10:06:13 +0000 (UTC)
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
To: davem@davemloft.net
Subject: [PATCH net-next 5/5] net: mvpp2: cls: Support steering to RSS contexts
Date: Fri, 24 May 2019 12:05:54 +0200
Message-Id: <20190524100554.8606-6-maxime.chevallier@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190524100554.8606-1-maxime.chevallier@bootlin.com>
References: <20190524100554.8606-1-maxime.chevallier@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_030617_864410_DD26E3A0 
X-CRM114-Status: GOOD (  15.54  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Antoine Tenart <antoine.tenart@bootlin.com>, netdev@vger.kernel.org,
 gregory.clement@bootlin.com, linux-kernel@vger.kernel.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>, nadavh@marvell.com,
 linux-arm-kernel@lists.infradead.org, thomas.petazzoni@bootlin.com,
 miquel.raynal@bootlin.com, stefanc@marvell.com, mw@semihalf.com,
 Russell King <linux@armlinux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When steering to an RXQ, we can perform an extra RSS step to assign a
queue from an RSS table.

This is done by setting the RSS_EN attribute in the C2 engine. In that
case, the RXQ that is assigned is the global RSS context id, that is
then translated to an RSS table using the RXQ2RSS table.

An example using ethtool to steer to RXQ 2 and 3 would be :

ethtool -X eth0 weight 0 0 1 1 context new

(This would print the allocated context id, let's say it's 1)

ethtool -N eth0 flow-type udp4 dst-port 1234 context 1 loc 0

The hash parameters are the ones that are globally configured for RSS :

ethtool -N eth0 rx-flow-hash udp4 sdfn

When an RSS context is removed while there are active classification
rules using this context, these rules are removed.

Signed-off-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
---
 .../net/ethernet/marvell/mvpp2/mvpp2_cls.c    | 58 +++++++++++++++++--
 1 file changed, 54 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c b/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c
index c1a83e9cb80a..cd0daad011ce 100644
--- a/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c
+++ b/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c
@@ -1068,7 +1068,7 @@ static int mvpp2_port_c2_tcam_rule_add(struct mvpp2_port *port,
 	struct flow_action_entry *act;
 	struct mvpp2_cls_c2_entry c2;
 	u8 qh, ql, pmap;
-	int index;
+	int index, ctx;
 
 	memset(&c2, 0, sizeof(c2));
 
@@ -1108,14 +1108,36 @@ static int mvpp2_port_c2_tcam_rule_add(struct mvpp2_port *port,
 		 */
 		c2.act = MVPP22_CLS_C2_ACT_COLOR(MVPP22_C2_COL_NO_UPD_LOCK);
 
+		/* Update RSS status after matching this entry */
+		if (act->queue.ctx)
+			c2.attr[2] |= MVPP22_CLS_C2_ATTR2_RSS_EN;
+
+		/* Always lock the RSS_EN decision. We might have high prio
+		 * rules steering to an RXQ, and a lower one steering to RSS,
+		 * we don't want the low prio RSS rule overwriting this flag.
+		 */
+		c2.act = MVPP22_CLS_C2_ACT_RSS_EN(MVPP22_C2_UPD_LOCK);
+
 		/* Mark packet as "forwarded to software", needed for RSS */
 		c2.act |= MVPP22_CLS_C2_ACT_FWD(MVPP22_C2_FWD_SW_LOCK);
 
 		c2.act |= MVPP22_CLS_C2_ACT_QHIGH(MVPP22_C2_UPD_LOCK) |
 			   MVPP22_CLS_C2_ACT_QLOW(MVPP22_C2_UPD_LOCK);
 
-		qh = ((act->queue.index + port->first_rxq) >> 3) & MVPP22_CLS_C2_ATTR0_QHIGH_MASK;
-		ql = (act->queue.index + port->first_rxq) & MVPP22_CLS_C2_ATTR0_QLOW_MASK;
+		if (act->queue.ctx) {
+			/* Get the global ctx number */
+			ctx = mvpp22_rss_ctx(port, act->queue.ctx);
+			if (ctx < 0)
+				return -EINVAL;
+
+			qh = (ctx >> 3) & MVPP22_CLS_C2_ATTR0_QHIGH_MASK;
+			ql = ctx & MVPP22_CLS_C2_ATTR0_QLOW_MASK;
+		} else {
+			qh = ((act->queue.index + port->first_rxq) >> 3) &
+			      MVPP22_CLS_C2_ATTR0_QHIGH_MASK;
+			ql = (act->queue.index + port->first_rxq) &
+			      MVPP22_CLS_C2_ATTR0_QLOW_MASK;
+		}
 
 		c2.attr[0] = MVPP22_CLS_C2_ATTR0_QHIGH(qh) |
 			      MVPP22_CLS_C2_ATTR0_QLOW(ql);
@@ -1235,6 +1257,13 @@ static int mvpp2_cls_rfs_parse_rule(struct mvpp2_rfs_rule *rule)
 	if (act->id != FLOW_ACTION_QUEUE && act->id != FLOW_ACTION_DROP)
 		return -EOPNOTSUPP;
 
+	/* When both an RSS context and an queue index are set, the index
+	 * is considered as an offset to be added to the indirection table
+	 * entries. We don't support this, so reject this rule.
+	 */
+	if (act->queue.ctx && act->queue.index)
+		return -EOPNOTSUPP;
+
 	/* For now, only use the C2 engine which has a HEK size limited to 64
 	 * bits for TCAM matching.
 	 */
@@ -1455,11 +1484,32 @@ static struct mvpp2_rss_table *mvpp22_rss_table_get(struct mvpp2 *priv,
 int mvpp22_port_rss_ctx_delete(struct mvpp2_port *port, u32 port_ctx)
 {
 	struct mvpp2 *priv = port->priv;
-	int rss_ctx = mvpp22_rss_ctx(port, port_ctx);
+	struct ethtool_rxnfc *rxnfc;
+	int i, rss_ctx, ret;
+
+	rss_ctx = mvpp22_rss_ctx(port, port_ctx);
 
 	if (rss_ctx < 0 || rss_ctx >= MVPP22_N_RSS_TABLES)
 		return -EINVAL;
 
+	/* Invalidate any active classification rule that use this context */
+	for (i = 0; i < MVPP2_N_RFS_ENTRIES_PER_FLOW; i++) {
+		if (!port->rfs_rules[i])
+			continue;
+
+		rxnfc = &port->rfs_rules[i]->rxnfc;
+		if (!(rxnfc->fs.flow_type & FLOW_RSS) ||
+		    rxnfc->rss_context != port_ctx)
+			continue;
+
+		ret = mvpp2_ethtool_cls_rule_del(port, rxnfc);
+		if (ret) {
+			netdev_warn(port->dev,
+				    "couldn't remove classification rule %d associated to this context",
+				    rxnfc->fs.location);
+		}
+	}
+
 	kfree(priv->rss_tables[rss_ctx]);
 
 	priv->rss_tables[rss_ctx] = NULL;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
