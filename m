Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D19F8F9B7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 15:16:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EVbdzPY8s3Bt3ftagcekwbdA7n2naa6uLAU0eMdnmmA=; b=gug53N/hlw/g++
	8TI4rRW0ZbKIorE1hLM1oC2cKpVlrNjvxaeLg8wXwdT5eqgdQOxLTfD8yM5VZFtmCu3e4lbfqzwUn
	ZbVXRnx1xhrxen33xXTRSSWPOhnzDKHvG281fASKye56pXIAdkUNHqFEBH6E98CvnIW7bDicQQnqL
	Ux8a2aLk2rd1zdqlVeZ3YbPvYoePVUMXyK8UWou2W/Z0nBx1KHFUk1ZAwTow4dO6+MNQ90zxFXjHw
	sykGTZ6rPUvljF86WDtrNHJ2jAtnNoIFD2ENjruuwBdTHz13XdBOmcSN0NF+jhXlC3yseMylZ/ODJ
	R3rH0G+6D4q0DZJ+cHqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLSbd-0005ew-WD; Tue, 30 Apr 2019 13:15:34 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLSav-0003lT-4c
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 13:14:50 +0000
X-Originating-IP: 90.88.149.145
Received: from mc-bl-xps13.lan
 (aaubervilliers-681-1-29-145.w90-88.abo.wanadoo.fr [90.88.149.145])
 (Authenticated sender: maxime.chevallier@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 94D311BF209;
 Tue, 30 Apr 2019 13:14:45 +0000 (UTC)
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
To: davem@davemloft.net
Subject: [PATCH net-next 4/4] net: mvpp2: cls: Allow dropping packets with
 classification offload
Date: Tue, 30 Apr 2019 15:14:29 +0200
Message-Id: <20190430131429.19361-5-maxime.chevallier@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190430131429.19361-1-maxime.chevallier@bootlin.com>
References: <20190430131429.19361-1-maxime.chevallier@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_061449_476363_B49C9DDD 
X-CRM114-Status: GOOD (  14.90  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
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

This commit introduces support for the "Drop" action in classification
offload. This corresponds to the "-1" action with ethtool -N.

This is achieved using the color marking actions available in the C2
engine, which associate a color to a packet. These colors can be either
Green, Yellow or Red, Red meaning that the packet should be dropped.

Green and Yellow colors are interpreted by the Policer, which isn't
supported yet.

This method of dropping using the Classifier is different than the
already existing early-drop features, such as VLAN filtering and MAC
UC/MC filtering, which are performed during the Parsing step, and
therefore take precedence over classification actions.

Signed-off-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
---
 drivers/net/ethernet/marvell/mvpp2/mvpp2.h    |  1 +
 .../net/ethernet/marvell/mvpp2/mvpp2_cls.c    | 29 +++++++++++++------
 .../net/ethernet/marvell/mvpp2/mvpp2_cls.h    | 11 +++++++
 3 files changed, 32 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/marvell/mvpp2/mvpp2.h b/drivers/net/ethernet/marvell/mvpp2/mvpp2.h
index 9d2222ab60ae..6171270a016c 100644
--- a/drivers/net/ethernet/marvell/mvpp2/mvpp2.h
+++ b/drivers/net/ethernet/marvell/mvpp2/mvpp2.h
@@ -136,6 +136,7 @@
 #define     MVPP22_CLS_C2_ACT_FWD(act)		(((act) & 0x7) << 13)
 #define     MVPP22_CLS_C2_ACT_QHIGH(act)	(((act) & 0x3) << 11)
 #define     MVPP22_CLS_C2_ACT_QLOW(act)		(((act) & 0x3) << 9)
+#define     MVPP22_CLS_C2_ACT_COLOR(act)	((act) & 0x7)
 #define MVPP22_CLS_C2_ATTR0			0x1b64
 #define     MVPP22_CLS_C2_ATTR0_QHIGH(qh)	(((qh) & 0x1f) << 24)
 #define     MVPP22_CLS_C2_ATTR0_QHIGH_MASK	0x1f
diff --git a/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c b/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c
index f4dd59c00d80..4989fb13244f 100644
--- a/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c
+++ b/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c
@@ -1057,17 +1057,28 @@ static int mvpp2_port_c2_tcam_rule_add(struct mvpp2_port *port,
 	c2.tcam[4] |= MVPP22_CLS_C2_TCAM_EN(MVPP22_CLS_C2_LU_TYPE(MVPP2_CLS_LU_TYPE_MASK));
 	c2.tcam[4] |= MVPP22_CLS_C2_LU_TYPE(rule->loc);
 
-	/* Mark packet as "forwarded to software", needed for RSS */
-	c2.act |= MVPP22_CLS_C2_ACT_FWD(MVPP22_C2_FWD_SW_LOCK);
+	if (act->id == FLOW_ACTION_DROP) {
+		c2.act = MVPP22_CLS_C2_ACT_COLOR(MVPP22_C2_COL_RED_LOCK);
+	} else {
+		/* We want to keep the default color derived from the Header
+		 * Parser drop entries, for VLAN and MAC filtering. This will
+		 * assign a default color of Green or Red, and we want matches
+		 * with a non-drop action to keep that color.
+		 */
+		c2.act = MVPP22_CLS_C2_ACT_COLOR(MVPP22_C2_COL_NO_UPD_LOCK);
 
-	c2.act |= MVPP22_CLS_C2_ACT_QHIGH(MVPP22_C2_UPD_LOCK) |
-		   MVPP22_CLS_C2_ACT_QLOW(MVPP22_C2_UPD_LOCK);
+		/* Mark packet as "forwarded to software", needed for RSS */
+		c2.act |= MVPP22_CLS_C2_ACT_FWD(MVPP22_C2_FWD_SW_LOCK);
 
-	qh = ((act->queue.index + port->first_rxq) >> 3) & MVPP22_CLS_C2_ATTR0_QHIGH_MASK;
-	ql = (act->queue.index + port->first_rxq) & MVPP22_CLS_C2_ATTR0_QLOW_MASK;
+		c2.act |= MVPP22_CLS_C2_ACT_QHIGH(MVPP22_C2_UPD_LOCK) |
+			   MVPP22_CLS_C2_ACT_QLOW(MVPP22_C2_UPD_LOCK);
 
-	c2.attr[0] = MVPP22_CLS_C2_ATTR0_QHIGH(qh) |
-		      MVPP22_CLS_C2_ATTR0_QLOW(ql);
+		qh = ((act->queue.index + port->first_rxq) >> 3) & MVPP22_CLS_C2_ATTR0_QHIGH_MASK;
+		ql = (act->queue.index + port->first_rxq) & MVPP22_CLS_C2_ATTR0_QLOW_MASK;
+
+		c2.attr[0] = MVPP22_CLS_C2_ATTR0_QHIGH(qh) |
+			      MVPP22_CLS_C2_ATTR0_QLOW(ql);
+	}
 
 	c2.valid = true;
 
@@ -1183,7 +1194,7 @@ static int mvpp2_cls_rfs_parse_rule(struct mvpp2_rfs_rule *rule)
 	struct flow_action_entry *act;
 
 	act = &flow->action.entries[0];
-	if (act->id != FLOW_ACTION_QUEUE)
+	if (act->id != FLOW_ACTION_QUEUE && act->id != FLOW_ACTION_DROP)
 		return -EOPNOTSUPP;
 
 	/* For now, only use the C2 engine which has a HEK size limited to 64
diff --git a/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.h b/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.h
index 431563a13524..56b617375a65 100644
--- a/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.h
+++ b/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.h
@@ -92,6 +92,17 @@ enum mvpp22_cls_c2_fwd_action {
 	MVPP22_C2_FWD_HW_LOW_LAT_LOCK,
 };
 
+enum mvpp22_cls_c2_color_action {
+	MVPP22_C2_COL_NO_UPD = 0,
+	MVPP22_C2_COL_NO_UPD_LOCK,
+	MVPP22_C2_COL_GREEN,
+	MVPP22_C2_COL_GREEN_LOCK,
+	MVPP22_C2_COL_YELLOW,
+	MVPP22_C2_COL_YELLOW_LOCK,
+	MVPP22_C2_COL_RED,		/* Drop */
+	MVPP22_C2_COL_RED_LOCK,		/* Drop */
+};
+
 #define MVPP2_CLS_C2_TCAM_WORDS			5
 #define MVPP2_CLS_C2_ATTR_WORDS			5
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
