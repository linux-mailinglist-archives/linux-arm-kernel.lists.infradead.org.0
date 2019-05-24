Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E88B29562
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 12:06:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7VT4lPx2xzKfScTJiRzG6caeoM3+FYlqrDaiCrBi43s=; b=Z47WCBKdxdJNo0
	RzUjASrKfWBxv15eJG/4c+TwQk9lRPvW5ExNpWzeZSpfWr6Qsei6fkYNsCkBAm+KzuCC/bpLloHQy
	IBfQqTpzn2MQDxdgY1AlpP6F00pJdaADO2eqmvS5SyE01LuewgcUpd/NHcrTZ2MXoOMobqSb71pU9
	wjMVFDkFIUyCrAZfYxcnboqYjg4FA/7Z3LcrEvu93kuVuzVjFa1Ya8+JafTWTo0odLrZ3Nio/uB0a
	7yDPNrR4eqhmqzyaF/bw/+n5Ve+T1gkT66av1hPI2s9wkXo7XDWKlbIz915lM8I9KBcbY00NG7IIk
	RFoxPHztc/puDOJte9Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU75q-0000Wo-79; Fri, 24 May 2019 10:06:30 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU75Y-0000LN-IN
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 10:06:13 +0000
X-Originating-IP: 90.88.147.134
Received: from mc-bl-xps13.lan
 (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr [90.88.147.134])
 (Authenticated sender: maxime.chevallier@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id A84EA40019;
 Fri, 24 May 2019 10:06:01 +0000 (UTC)
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
To: davem@davemloft.net
Subject: [PATCH net-next 1/5] net: mvpp2: cls: Use the correct number of rules
 in various places
Date: Fri, 24 May 2019 12:05:50 +0200
Message-Id: <20190524100554.8606-2-maxime.chevallier@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190524100554.8606-1-maxime.chevallier@bootlin.com>
References: <20190524100554.8606-1-maxime.chevallier@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_030612_752578_45A37AD0 
X-CRM114-Status: GOOD (  13.69  )
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

As of today, the classification offload implementation only supports 4
different rules to be offloaded. This number has been hardcoded in the
rule insertion function, and the wrong define is being used elsewhere.

Use the correct #define everywhere to make sure we always check for the
correct number of rules.

Signed-off-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
---
 drivers/net/ethernet/marvell/mvpp2/mvpp2.h      | 2 +-
 drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c  | 4 ++--
 drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/marvell/mvpp2/mvpp2.h b/drivers/net/ethernet/marvell/mvpp2/mvpp2.h
index 6171270a016c..d5df813e08c4 100644
--- a/drivers/net/ethernet/marvell/mvpp2/mvpp2.h
+++ b/drivers/net/ethernet/marvell/mvpp2/mvpp2.h
@@ -923,7 +923,7 @@ struct mvpp2_port {
 	u32 indir[MVPP22_RSS_TABLE_ENTRIES];
 
 	/* List of steering rules active on that port */
-	struct mvpp2_ethtool_fs *rfs_rules[MVPP2_N_RFS_RULES];
+	struct mvpp2_ethtool_fs *rfs_rules[MVPP2_N_RFS_ENTRIES_PER_FLOW];
 	int n_rfs_rules;
 };
 
diff --git a/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c b/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c
index d046f7a1dcf5..9ce73297276e 100644
--- a/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c
+++ b/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c
@@ -1212,7 +1212,7 @@ int mvpp2_ethtool_cls_rule_get(struct mvpp2_port *port,
 {
 	struct mvpp2_ethtool_fs *efs;
 
-	if (rxnfc->fs.location >= MVPP2_N_RFS_RULES)
+	if (rxnfc->fs.location >= MVPP2_N_RFS_ENTRIES_PER_FLOW)
 		return -EINVAL;
 
 	efs = port->rfs_rules[rxnfc->fs.location];
@@ -1232,7 +1232,7 @@ int mvpp2_ethtool_cls_rule_ins(struct mvpp2_port *port,
 	struct mvpp2_ethtool_fs *efs, *old_efs;
 	int ret = 0;
 
-	if (info->fs.location >= 4 ||
+	if (info->fs.location >= MVPP2_N_RFS_ENTRIES_PER_FLOW ||
 	    info->fs.location < 0)
 		return -EINVAL;
 
diff --git a/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c b/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
index d38952eb7aa9..8432315447dd 100644
--- a/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
+++ b/drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
@@ -3956,7 +3956,7 @@ static int mvpp2_ethtool_get_rxnfc(struct net_device *dev,
 		ret = mvpp2_ethtool_cls_rule_get(port, info);
 		break;
 	case ETHTOOL_GRXCLSRLALL:
-		for (i = 0; i < MVPP2_N_RFS_RULES; i++) {
+		for (i = 0; i < MVPP2_N_RFS_ENTRIES_PER_FLOW; i++) {
 			if (port->rfs_rules[i])
 				rules[loc++] = i;
 		}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
