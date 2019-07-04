Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2ED25FEE6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 01:58:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=O/spFQ+Mwc04OEBYo/nKnhPhVvDIQ715ry2Lg9LpZzo=; b=VYh9MJqFGgOk40sPMbUcsI1fvx
	mEkoJyWpQuzZU0XUQEhVgUPHO0wS/8IeiyL3C/y57j55dxh1Ya+9HroWmDMbRXsWXArBuva9RfTRQ
	wG5jXd2ZLcKc9OyOQogpyha+nFIXYgFN95l3Wi2X/SzptsXHM7i+v7bwEXoZB1ox4XQ1t98jBjZkl
	Y+g6BV81EXb25M5lYT2CYiIV7WfEXZ4L7KLwe9wRWp4+hdZb4t5pndfLKjNk00jK4zFwLnlF8N7ik
	JzGLUEyb35dAqzLITvW/CwVXdL+cUmQyaxrZVXgPAfZJFjIxNP0ET8FujUVTgOXR8upfp+U4OaXGv
	wI2ttebA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjBcY-0003TA-5A; Thu, 04 Jul 2019 23:58:34 +0000
Received: from smtprelay0190.hostedemail.com ([216.40.44.190]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjBc4-0003HI-4a
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 23:58:05 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay01.hostedemail.com (Postfix) with ESMTP id 89177100E806B;
 Thu,  4 Jul 2019 23:58:00 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::::,
 RULES_HIT:41:355:379:541:800:960:973:988:989:1260:1345:1359:1437:1534:1540:1568:1711:1714:1730:1747:1777:1792:2393:2559:2562:3138:3139:3140:3141:3142:3865:4321:4605:5007:6261:8603:10004:10848:11026:11657:11658:11914:12043:12296:12297:12555:12895:13069:13138:13231:13311:13357:14096:14181:14384:14394:14721:21080:21627:30054:30075,
 0,
 RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:28,
 LUA_SUMMARY:none
X-HE-Tag: swim69_62de18b54c925
X-Filterd-Recvd-Size: 1809
Received: from joe-laptop.perches.com (cpe-23-242-196-136.socal.res.rr.com
 [23.242.196.136]) (Authenticated sender: joe@perches.com)
 by omf14.hostedemail.com (Postfix) with ESMTPA;
 Thu,  4 Jul 2019 23:57:59 +0000 (UTC)
From: Joe Perches <joe@perches.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>,
	Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH 5/8] net: ethernet: sun4i-emac: Fix misuse of strlcpy
Date: Thu,  4 Jul 2019 16:57:45 -0700
Message-Id: <faf2d0e7c0260d24b6e90c55bb7fec7496e5e76a.1562283944.git.joe@perches.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <cover.1562283944.git.joe@perches.com>
References: <cover.1562283944.git.joe@perches.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_165804_250794_DE64AE58 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.190 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: netdev@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Probable cut&paste typo - use the correct field size.

Signed-off-by: Joe Perches <joe@perches.com>
---
 drivers/net/ethernet/allwinner/sun4i-emac.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/allwinner/sun4i-emac.c b/drivers/net/ethernet/allwinner/sun4i-emac.c
index 9e06dff619c3..40a359dd90b4 100644
--- a/drivers/net/ethernet/allwinner/sun4i-emac.c
+++ b/drivers/net/ethernet/allwinner/sun4i-emac.c
@@ -224,8 +224,8 @@ static int emac_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
 static void emac_get_drvinfo(struct net_device *dev,
 			      struct ethtool_drvinfo *info)
 {
-	strlcpy(info->driver, DRV_NAME, sizeof(DRV_NAME));
-	strlcpy(info->version, DRV_VERSION, sizeof(DRV_VERSION));
+	strlcpy(info->driver, DRV_NAME, sizeof(info->driver));
+	strlcpy(info->version, DRV_VERSION, sizeof(info->version));
 	strlcpy(info->bus_info, dev_name(&dev->dev), sizeof(info->bus_info));
 }
 
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
