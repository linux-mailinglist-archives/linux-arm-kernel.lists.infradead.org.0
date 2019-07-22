Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DF8C7034B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 17:13:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	Subject:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=7UA9rsvy/KgVpNKCgJXrM6RacOBBUYRBd4QoTpAXU08=; b=Al
	XT9CWmwcQh/77ej70e1lf0bB2HorFTKb2+ZZ9KRlrSqCHOJHEIvo+HSiGTo8kYb2/xVmremnYQCM4
	VV1vGUu1vfwjrotkwdD7HOMM4H9Ef/FtJMUtSYf4g3bNDFtMV90ZUVuC5mBbRmZ+oxbO1a8HlImfo
	h0V/FZuZbFVenWmUmKlAzFhPnoF1BMSnK0AcZb7SWsVCLtcx3IZz2FLisRCeEGPOCzLv18bchWzaG
	JvDADQjm5UIThADiAUMx8j7XfHG0zJy6K6qsvAt76QEqitm2CXIrs1zHNJ7hIknlSE5lTk9kB7f5I
	j6A4J9vvH7b5oC14fhWh+2jn4dTYF1tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpa0U-0004lc-CZ; Mon, 22 Jul 2019 15:13:42 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpZyg-0003wS-Bi
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 15:11:52 +0000
Received: by verein.lst.de (Postfix, from userid 2005)
 id A17CC227A8A; Mon, 22 Jul 2019 17:11:48 +0200 (CEST)
From: Torsten Duwe <duwe@lst.de>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Icenowy Zheng <icenowy@aosc.io>, Sean Paul <seanpaul@chromium.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>, Harald Geyer <harald@ccbib.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>
References: <<20190722150414.9F97668B20@verein.lst.de>>
Subject: [PATCH v3 4/7] drm/bridge: Prepare Analogix anx6345 support
Message-Id: <20190722151148.A17CC227A8A@verein.lst.de>
Date: Mon, 22 Jul 2019 17:11:48 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_081151_274899_03C12F9C 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add bit definitions required for the anx6345 and add a
sanity check in anx_dp_aux_transfer.

Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
Signed-off-by: Torsten Duwe <duwe@suse.de>
Reviewed-by: Andrzej Hajda <a.hajda@samsung.com>
---
 drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.c     | 2 +-
 drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.h     | 8 ++++++++
 drivers/gpu/drm/bridge/analogix/analogix-i2c-txcommon.h | 3 +++
 3 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.c b/drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.c
index 60707bb5afe7..fe40bab21530 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.c
@@ -116,7 +116,7 @@ ssize_t anx_dp_aux_transfer(struct regmap *map_dptx,
 	else	/* For non-zero-sized set the length field. */
 		ctrl1 |= (msg->size - 1) << SP_AUX_LENGTH_SHIFT;
 
-	if ((msg->request & DP_AUX_I2C_READ) == 0) {
+	if ((msg->size > 0) && ((msg->request & DP_AUX_I2C_READ) == 0)) {
 		/* When WRITE | MOT write values to data buffer */
 		err = regmap_bulk_write(map_dptx,
 					SP_DP_BUF_DATA0_REG, buffer,
diff --git a/drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.h b/drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.h
index 430a039c10cd..24bc67ac5479 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.h
+++ b/drivers/gpu/drm/bridge/analogix/analogix-i2c-dptx.h
@@ -74,7 +74,11 @@
 #define SP_CHA_STA			BIT(2)
 /* Bits for DP System Control Register 3 */
 #define SP_HPD_STATUS			BIT(6)
+#define SP_HPD_FORCE			BIT(5)
+#define SP_HPD_CTRL			BIT(4)
 #define SP_STRM_VALID			BIT(2)
+#define SP_STRM_FORCE			BIT(1)
+#define SP_STRM_CTRL			BIT(0)
 /* Bits for DP System Control Register 4 */
 #define SP_ENHANCED_MODE		BIT(3)
 
@@ -119,6 +123,9 @@
 #define SP_LINK_BW_SET_MASK		0x1f
 #define SP_INITIAL_SLIM_M_AUD_SEL	BIT(5)
 
+/* DP Lane Count Setting Register */
+#define SP_DP_LANE_COUNT_SET_REG	0xa1
+
 /* DP Training Pattern Set Register */
 #define SP_DP_TRAINING_PATTERN_SET_REG	0xa2
 
@@ -132,6 +139,7 @@
 
 /* DP Link Training Control Register */
 #define SP_DP_LT_CTRL_REG		0xa8
+#define SP_DP_LT_INPROGRESS		0x80
 #define SP_LT_ERROR_TYPE_MASK		0x70
 #  define SP_LT_NO_ERROR		0x00
 #  define SP_LT_AUX_WRITE_ERROR		0x01
diff --git a/drivers/gpu/drm/bridge/analogix/analogix-i2c-txcommon.h b/drivers/gpu/drm/bridge/analogix/analogix-i2c-txcommon.h
index c1030e0f74cc..9fa6f426f990 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix-i2c-txcommon.h
+++ b/drivers/gpu/drm/bridge/analogix/analogix-i2c-txcommon.h
@@ -179,6 +179,9 @@
 #define SP_VBIT				BIT(1)
 #define SP_AUDIO_LAYOUT			BIT(0)
 
+/* Analog Debug Register 1 */
+#define SP_ANALOG_DEBUG1_REG		0xdc
+
 /* Analog Debug Register 2 */
 #define SP_ANALOG_DEBUG2_REG		0xdd
 #define SP_FORCE_SW_OFF_BYPASS		0x20
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
