Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9529DF013
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 16:39:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Muu6MBYrZfpa5pb5ir6pNtPrBE4ah5RCba9NKgVfsik=; b=DpX4DbZIU8X6EHEA9ndO3Q1EMO
	5UYhl4Im8+Ymzn0nJvDxHu2M/WdLFLHa6piuVFdBK26aDf5fUfUA3lT1nMdH6JZgdcXVmzEGp5Str
	RKOOknVRhvIEnVpWmzS1DkqucQ5GARn9YZHOZdM9+m1qIt3+BfqOAG4i4zKhkJXlQhnHtE7Y1VffK
	LO88/caNEcksUScStIH1H7vLfnL7viyVkMFSsLDxzrTX+ZqjrR9dwabk9YbyFxrskicJMK14lSGuS
	OEB0jJxCcV33+CLQvxT2udMmSlSuvbsbxFgTQSaOTZpdbNIT6ZIYGia8sJ+wJfZBGpFVT5I+78+Vx
	cI4nxE5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMYqT-00064G-NQ; Mon, 21 Oct 2019 14:39:41 +0000
Received: from michel.telenet-ops.be ([2a02:1800:110:4::f00:18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMYos-0004ad-5m
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 14:38:05 +0000
Received: from ramsan ([84.194.98.4]) by michel.telenet-ops.be with bizsmtp
 id GEdo2100S05gfCL06Edorm; Mon, 21 Oct 2019 16:37:54 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iMYoe-0007cz-DO; Mon, 21 Oct 2019 16:37:48 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iMYoe-0003mc-C6; Mon, 21 Oct 2019 16:37:48 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Jaehoon Chung <jh80.chung@samsung.com>,
 "David S . Miller" <davem@davemloft.net>,
 "Rafael J . Wysocki" <rafael@kernel.org>,
 Johannes Berg <johannes@sipsolutions.net>
Subject: [PATCH 2/7] mac80211: Use debugfs_create_xul() helper
Date: Mon, 21 Oct 2019 16:37:37 +0200
Message-Id: <20191021143742.14487-3-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191021143742.14487-1-geert+renesas@glider.be>
References: <20191021143742.14487-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_073802_373723_67F5952B 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:18 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the new debugfs_create_xul() helper instead of open-coding the same
operation.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 net/mac80211/debugfs_sta.c | 17 +++--------------
 1 file changed, 3 insertions(+), 14 deletions(-)

diff --git a/net/mac80211/debugfs_sta.c b/net/mac80211/debugfs_sta.c
index c8ad20c28c438dab..ca34dcdac8c0bd4d 100644
--- a/net/mac80211/debugfs_sta.c
+++ b/net/mac80211/debugfs_sta.c
@@ -928,12 +928,7 @@ STA_OPS(he_capa);
 		sta->debugfs_dir, sta, &sta_ ##name## _ops);
 
 #define DEBUGFS_ADD_COUNTER(name, field)				\
-	if (sizeof(sta->field) == sizeof(u32))				\
-		debugfs_create_u32(#name, 0400, sta->debugfs_dir,	\
-			(u32 *) &sta->field);				\
-	else								\
-		debugfs_create_u64(#name, 0400, sta->debugfs_dir,	\
-			(u64 *) &sta->field);
+	debugfs_create_ulong(#name, 0400, sta->debugfs_dir, &sta->field);
 
 void ieee80211_sta_debugfs_add(struct sta_info *sta)
 {
@@ -978,14 +973,8 @@ void ieee80211_sta_debugfs_add(struct sta_info *sta)
 				    NL80211_EXT_FEATURE_AIRTIME_FAIRNESS))
 		DEBUGFS_ADD(airtime);
 
-	if (sizeof(sta->driver_buffered_tids) == sizeof(u32))
-		debugfs_create_x32("driver_buffered_tids", 0400,
-				   sta->debugfs_dir,
-				   (u32 *)&sta->driver_buffered_tids);
-	else
-		debugfs_create_x64("driver_buffered_tids", 0400,
-				   sta->debugfs_dir,
-				   (u64 *)&sta->driver_buffered_tids);
+	debugfs_create_xul("driver_buffered_tids", 0400, sta->debugfs_dir,
+			   &sta->driver_buffered_tids);
 
 	drv_sta_add_debugfs(local, sdata, &sta->sta, sta->debugfs_dir);
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
