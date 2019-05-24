Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E3182956D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 12:07:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6xl5z7HIBMtaqYQJnjJDLV997CfD2XQZjczwZMjuqNM=; b=H0WPvMvddB+3BY
	qnrucs/vlwp4+G4EQjqrHlXHIQZ2ij+aAC7z1Q5WsVnnUbVN5lyiJ7Kab8NuJAydKpXGIyYw8l4MX
	mn1fCwYW8xbCPcV2D+1KK1qpk4Yo9x4S+8bVk4ZfbUO1/Uyd8V3W0irV9t2DuFbRfZr4SBlOD6LCc
	NAx4oPCwoUvuf9EY4G4DVHFNGxtf4IVUsIG+mEYphaxkKBloXkv12vsEznc0tcAuN2mz2oLK4Ypxa
	W1T2rJYZ69Ji/K0B9Kx37lFrz4SlYdJt9DplKYStYp6arAboDZ/3UHV9qcipk0tljxOeXd9Z2Oqzp
	/aWVMkSOBvRl7Aq89/fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU76J-00010Q-1d; Fri, 24 May 2019 10:06:59 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU75a-0000N3-Eh
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 10:06:15 +0000
X-Originating-IP: 90.88.147.134
Received: from mc-bl-xps13.lan
 (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr [90.88.147.134])
 (Authenticated sender: maxime.chevallier@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id BBE524001F;
 Fri, 24 May 2019 10:06:10 +0000 (UTC)
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
To: davem@davemloft.net
Subject: [PATCH net-next 4/5] net: mvpp2: cls: Extract the RSS context when
 parsing the ethtool rule
Date: Fri, 24 May 2019 12:05:53 +0200
Message-Id: <20190524100554.8606-5-maxime.chevallier@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190524100554.8606-1-maxime.chevallier@bootlin.com>
References: <20190524100554.8606-1-maxime.chevallier@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_030614_637846_1EFA3E41 
X-CRM114-Status: GOOD (  10.30  )
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

ethtool_rx_flow_rule_create takes into parameter the ethtool flow spec,
which doesn't contain the rss context id. We therefore need to extract
it ourself before parsing the ethtool rule.

The FLOW_RSS flag is only set in info->fs.flow_type, and not
info->flow_type.

Signed-off-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
---
 drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c b/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c
index c16e343ccbbf..c1a83e9cb80a 100644
--- a/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c
+++ b/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c
@@ -1281,6 +1281,12 @@ int mvpp2_ethtool_cls_rule_ins(struct mvpp2_port *port,
 
 	input.fs = &info->fs;
 
+	/* We need to manually set the rss_ctx, since this info isn't present
+	 * in info->fs
+	 */
+	if (info->fs.flow_type & FLOW_RSS)
+		input.rss_ctx = info->rss_context;
+
 	ethtool_rule = ethtool_rx_flow_rule_create(&input);
 	if (IS_ERR(ethtool_rule)) {
 		ret = PTR_ERR(ethtool_rule);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
