Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D655F9803
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 19:00:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LZIClBCfEjL3kE5KyIfVYVikcj/j3IwquNlYLwvVjKI=; b=bfm1owalYOU7gn
	1ujBYT0H4bPpFJO/zZTNCc/Gpyonx9MovK+QF3j59eF/lRpA0ZWa9SHpbauXcTwE5XsTg9UWFB7JQ
	UyqcuaoXhls3rYQKA5nVkeJK8JgH5L78/LkapsG/TWZCTrQjTPMG/XNNMH9oi4Pu95zaAM6PGQy6I
	kEedOEw4QGJEr6S697DhIV6Yjs+IWvV5gKsbA44bmhaOwCKkD2N/qj5dWnYES4qdQCK4imMFpbxp5
	iENEuVcCPn/4XspU0l2fMsCl3U6C0Gf3cmhf0V0T3RSdD0LVquwD28ok6zVN06XGtM9FKG2rwgpog
	2SkxAVsshdM/UgejKhrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUaSL-00029o-0e; Tue, 12 Nov 2019 17:59:57 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUaSD-00028J-1l
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 17:59:50 +0000
Received: by verein.lst.de (Postfix, from userid 2005)
 id DB8AF68BE1; Tue, 12 Nov 2019 18:59:40 +0100 (CET)
Date: Tue, 12 Nov 2019 18:59:40 +0100
From: Torsten Duwe <duwe@lst.de>
To: Maxime Ripard <mripard@kernel.org>
Subject: [PATCH] drm/bridge: fix anx6345 compilation for v5.5
Message-ID: <20191112175940.GA13539@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_095949_388154_69318997 
X-CRM114-Status: GOOD (  16.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Andrzej Hajda <a.hajda@samsung.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Harald Geyer <harald@ccbib.org>,
 Sean Paul <seanpaul@chromium.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


The anx6345 driver originally was copied from anx78xx.c, which has meanwhile
seen a few changes. In particular, the removal of drm_dp_link helpers and the
discontinuation to include drm_bridge.h from drm_crtc.h breaks compilation
in linux-5.5. Apply equivalents of these changes to anx6345.c.

Signed-off-by: Torsten Duwe <duwe@suse.de>

---

The commits in question are ff1e8fb68ea06 and ee68c743f8d07, but I guess the
next rebase will change these. next-20191112 plus the anx6345-v5a series plus
this patch compile cleanly on arm64.

--- a/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c
@@ -19,6 +19,7 @@
 #include <linux/types.h>
 
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_bridge.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_crtc_helper.h>
 #include <drm/drm_dp_helper.h>
@@ -49,7 +50,6 @@ struct anx6345 {
 	struct i2c_client *client;
 	struct edid *edid;
 	struct drm_connector connector;
-	struct drm_dp_link link;
 	struct drm_panel *panel;
 	struct regulator *dvdd12;
 	struct regulator *dvdd25;
@@ -96,7 +96,7 @@ static ssize_t anx6345_aux_transfer(stru
 static int anx6345_dp_link_training(struct anx6345 *anx6345)
 {
 	unsigned int value;
-	u8 dp_bw;
+	u8 dp_bw, dpcd[2];
 	int err;
 
 	err = anx6345_clear_bits(anx6345->map[I2C_IDX_TXCOM],
@@ -144,18 +143,34 @@ static int anx6345_dp_link_training(stru
 	if (err)
 		return err;
 
-	/* Check link capabilities */
-	err = drm_dp_link_probe(&anx6345->aux, &anx6345->link);
-	if (err < 0) {
-		DRM_ERROR("Failed to probe link capabilities: %d\n", err);
-		return err;
-	}
+	/*
+	 * Power up the sink (DP_SET_POWER register is only available on DPCD
+	 * v1.1 and later).
+	 */
+	if (anx6345->dpcd[DP_DPCD_REV] >= 0x11) {
+		err = drm_dp_dpcd_readb(&anx6345->aux, DP_SET_POWER, &dpcd[0]);
+		if (err < 0) {
+			DRM_ERROR("Failed to read DP_SET_POWER register: %d\n",
+				  err);
+			return err;
+		}
+
+		dpcd[0] &= ~DP_SET_POWER_MASK;
+		dpcd[0] |= DP_SET_POWER_D0;
+
+		err = drm_dp_dpcd_writeb(&anx6345->aux, DP_SET_POWER, dpcd[0]);
+		if (err < 0) {
+			DRM_ERROR("Failed to power up DisplayPort link: %d\n",
+				  err);
+			return err;
+		}
 
-	/* Power up the sink */
-	err = drm_dp_link_power_up(&anx6345->aux, &anx6345->link);
-	if (err < 0) {
-		DRM_ERROR("Failed to power up DisplayPort link: %d\n", err);
-		return err;
+		/*
+		 * According to the DP 1.1 specification, a "Sink Device must
+		 * exit the power saving state within 1 ms" (Section 2.5.3.1,
+		 * Table 5-52, "Sink Control Field" (register 0x600).
+		 */
+		usleep_range(1000, 2000);
 	}
 
 	/* Possibly enable downspread on the sink */
@@ -194,20 +209,28 @@ static int anx6345_dp_link_training(stru
 	if (err)
 		return err;
 
-	value = drm_dp_link_rate_to_bw_code(anx6345->link.rate);
+	dpcd[0] = drm_dp_max_link_rate(anx6345->dpcd);
+	dpcd[0] = drm_dp_link_rate_to_bw_code(dpcd[0]);
 	err = regmap_write(anx6345->map[I2C_IDX_DPTX],
-			   SP_DP_MAIN_LINK_BW_SET_REG, value);
+			   SP_DP_MAIN_LINK_BW_SET_REG, dpcd[0]);
 	if (err)
 		return err;
 
+	dpcd[1] = drm_dp_max_lane_count(anx6345->dpcd);
+
 	err = regmap_write(anx6345->map[I2C_IDX_DPTX],
-			   SP_DP_LANE_COUNT_SET_REG, anx6345->link.num_lanes);
+			   SP_DP_LANE_COUNT_SET_REG, dpcd[1]);
 	if (err)
 		return err;
 
-	err = drm_dp_link_configure(&anx6345->aux, &anx6345->link);
+	if (drm_dp_enhanced_frame_cap(anx6345->dpcd))
+		dpcd[1] |= DP_LANE_COUNT_ENHANCED_FRAME_EN;
+
+	err = drm_dp_dpcd_write(&anx6345->aux, DP_LINK_BW_SET, dpcd,
+				sizeof(dpcd));
+
 	if (err < 0) {
-		DRM_ERROR("Failed to configure DisplayPort link: %d\n", err);
+		DRM_ERROR("Failed to configure link: %d\n", err);
 		return err;
 	}
 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
