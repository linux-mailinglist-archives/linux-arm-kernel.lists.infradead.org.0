Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FE244863C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 16:56:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KLuaGkJFlGRMYnT5lzVa6ZW2HTei8SN2Q+IJhnw371w=; b=an9hybRD8IY7ZF
	gbfPcMZ/EUqhJHswYlF9NRckeCJTNF/3hnfCY9wBpByha+tiJbo4OCUOhJoT4ic19E47Xvp1SU9I7
	yxMPNEeRennRT9eyBD0ZFWqB3bPmkPEegjppBUP0e1YHANUDbi8kDHWidQlvOa8Z8Spt4MwbzIpeR
	BB/Ibxw7+Py5n3wRe5zN6ysrItXApqrmrhlf8dOwXjYSALgtevxQxb8L9cUxRs4gLmeKMds1T2hTA
	mNPhC17beU9t/LmK/PXuqIIT6swve4GTW20B8f5I6ksrdJEKyx37AJTfEelPgoxpBtKrJXbh4TByp
	rI/aipoPy2cb46t04QBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hct3x-00018Q-Uv; Mon, 17 Jun 2019 14:56:49 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcszo-0005Iv-Bg
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 14:52:36 +0000
Received: from localhost (aaubervilliers-681-1-81-150.w90-88.abo.wanadoo.fr
 [90.88.23.150]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 26DDF24000B;
 Mon, 17 Jun 2019 14:52:18 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sean Paul <seanpaul@chromium.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Daniel Vetter <daniel.vetter@intel.com>, David Airlie <airlied@linux.ie>
Subject: [PATCH v5 07/12] drm/modes: Allow to specify rotation and reflection
 on the commandline
Date: Mon, 17 Jun 2019 16:51:34 +0200
Message-Id: <777da16e42db757c1f5b414b5ca34507097fed5c.1560783090.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.5190d070d1439d762d7ab273f4ae2573087fee20.1560783090.git-series.maxime.ripard@bootlin.com>
References: <cover.5190d070d1439d762d7ab273f4ae2573087fee20.1560783090.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_075232_831200_C0CDAFE6 
X-CRM114-Status: GOOD (  23.53  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: eben@raspberrypi.org, dri-devel@lists.freedesktop.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Eric Anholt <eric@anholt.net>, noralf@tronnes.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rotations and reflections setup are needed in some scenarios to initialise
properly the initial framebuffer. Some drivers already had a bunch of
quirks to deal with this, such as either a private kernel command line
parameter (omapdss) or on the device tree (various panels).

In order to accomodate this, let's create a video mode parameter to deal
with the rotation and reflexion.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 Documentation/fb/modedb.rst          |  11 +++-
 drivers/gpu/drm/drm_client_modeset.c |  30 +++++++-
 drivers/gpu/drm/drm_modes.c          | 114 +++++++++++++++++++++++-----
 include/drm/drm_connector.h          |  10 ++-
 4 files changed, 145 insertions(+), 20 deletions(-)

diff --git a/Documentation/fb/modedb.rst b/Documentation/fb/modedb.rst
index 3c2397293977..3e8a6f79dcd7 100644
--- a/Documentation/fb/modedb.rst
+++ b/Documentation/fb/modedb.rst
@@ -53,6 +53,17 @@ Specifying the option multiple times for different ports is possible, e.g.::
 
     video=LVDS-1:d video=HDMI-1:D
 
+Options can also be passed after the mode, using commas as separator.
+
+       Sample usage: 720x480,rotate=180 - 720x480 mode, rotated by 180 degrees
+
+Valid options are:
+
+  - reflect_x (boolean): Perform an axial symetry on the X axis
+  - reflect_y (boolean): Perform an axial symetry on the Y axis
+  - rotate (integer): Rotate the initial framebuffer by x
+    degrees. Valid values are 0, 90, 180 and 270.
+
 -----------------------------------------------------------------------------
 
 What is the VESA(TM) Coordinated Video Timings (CVT)?
diff --git a/drivers/gpu/drm/drm_client_modeset.c b/drivers/gpu/drm/drm_client_modeset.c
index 33d4988f22ae..e95fceac8f8b 100644
--- a/drivers/gpu/drm/drm_client_modeset.c
+++ b/drivers/gpu/drm/drm_client_modeset.c
@@ -824,6 +824,7 @@ bool drm_client_rotation(struct drm_mode_set *modeset, unsigned int *rotation)
 {
 	struct drm_connector *connector = modeset->connectors[0];
 	struct drm_plane *plane = modeset->crtc->primary;
+	struct drm_cmdline_mode *cmdline;
 	u64 valid_mask = 0;
 	unsigned int i;
 
@@ -844,6 +845,35 @@ bool drm_client_rotation(struct drm_mode_set *modeset, unsigned int *rotation)
 		*rotation = DRM_MODE_ROTATE_0;
 	}
 
+	/**
+	 * The panel already defined the default rotation
+	 * through its orientation. Whatever has been provided
+	 * on the command line needs to be added to that.
+	 *
+	 * Unfortunately, the rotations are at different bit
+	 * indices, so the math to add them up are not as
+	 * trivial as they could.
+	 *
+	 * Reflections on the other hand are pretty trivial to deal with, a
+	 * simple XOR between the two handle the addition nicely.
+	 */
+	cmdline = &connector->cmdline_mode;
+	if (cmdline->specified) {
+		unsigned int cmdline_rest, panel_rest;
+		unsigned int cmdline_rot, panel_rot;
+		unsigned int sum_rot, sum_rest;
+
+		panel_rot = ilog2(*rotation & DRM_MODE_ROTATE_MASK);
+		cmdline_rot = ilog2(cmdline->rotation_reflection & DRM_MODE_ROTATE_MASK);
+		sum_rot = (panel_rot + cmdline_rot) % 4;
+
+		panel_rest = *rotation & ~DRM_MODE_ROTATE_MASK;
+		cmdline_rest = cmdline->rotation_reflection & ~DRM_MODE_ROTATE_MASK;
+		sum_rest = panel_rest ^ cmdline_rest;
+
+		*rotation = (1 << sum_rot) | sum_rest;
+	}
+
 	/*
 	 * TODO: support 90 / 270 degree hardware rotation,
 	 * depending on the hardware this may require the framebuffer
diff --git a/drivers/gpu/drm/drm_modes.c b/drivers/gpu/drm/drm_modes.c
index 429d3be17800..dc6d11292685 100644
--- a/drivers/gpu/drm/drm_modes.c
+++ b/drivers/gpu/drm/drm_modes.c
@@ -1554,6 +1554,71 @@ static int drm_mode_parse_cmdline_res_mode(const char *str, unsigned int length,
 	return 0;
 }
 
+static int drm_mode_parse_cmdline_options(char *str, size_t len,
+					  struct drm_connector *connector,
+					  struct drm_cmdline_mode *mode)
+{
+	unsigned int rotation = 0;
+	char *sep = str;
+
+	while ((sep = strchr(sep, ','))) {
+		char *delim, *option;
+
+		option = sep + 1;
+		delim = strchr(option, '=');
+		if (!delim) {
+			delim = strchr(option, ',');
+
+			if (!delim)
+				delim = str + len;
+		}
+
+		if (!strncmp(option, "rotate", delim - option)) {
+			const char *value = delim + 1;
+			unsigned int deg;
+
+			deg = simple_strtol(value, &sep, 10);
+
+			/* Make sure we have parsed something */
+			if (sep == value)
+				return -EINVAL;
+
+			switch (deg) {
+			case 0:
+				rotation |= DRM_MODE_ROTATE_0;
+				break;
+
+			case 90:
+				rotation |= DRM_MODE_ROTATE_90;
+				break;
+
+			case 180:
+				rotation |= DRM_MODE_ROTATE_180;
+				break;
+
+			case 270:
+				rotation |= DRM_MODE_ROTATE_270;
+				break;
+
+			default:
+				return -EINVAL;
+			}
+		} else if (!strncmp(option, "reflect_x", delim - option)) {
+			rotation |= DRM_MODE_REFLECT_X;
+			sep = delim;
+		} else if (!strncmp(option, "reflect_y", delim - option)) {
+			rotation |= DRM_MODE_REFLECT_Y;
+			sep = delim;
+		} else {
+			return -EINVAL;
+		}
+	}
+
+	mode->rotation_reflection = rotation;
+
+	return 0;
+}
+
 /**
  * drm_mode_parse_command_line_for_connector - parse command line modeline for connector
  * @mode_option: optional per connector mode option
@@ -1569,6 +1634,10 @@ static int drm_mode_parse_cmdline_res_mode(const char *str, unsigned int length,
  *
  *	<xres>x<yres>[M][R][-<bpp>][@<refresh>][i][m][eDd]
  *
+ * Additionals options can be provided following the mode, using a comma to
+ * separate each option. Valid options can be found in
+ * Documentation/fb/modedb.txt.
+ *
  * The intermediate drm_cmdline_mode structure is required to store additional
  * options from the command line modline like the force-enable/disable flag.
  *
@@ -1581,9 +1650,10 @@ bool drm_mode_parse_command_line_for_connector(const char *mode_option,
 {
 	const char *name;
 	bool named_mode = false, parse_extras = false;
-	unsigned int bpp_off = 0, refresh_off = 0;
+	unsigned int bpp_off = 0, refresh_off = 0, options_off = 0;
 	unsigned int mode_end = 0;
 	char *bpp_ptr = NULL, *refresh_ptr = NULL, *extra_ptr = NULL;
+	char *options_ptr = NULL;
 	char *bpp_end_ptr = NULL, *refresh_end_ptr = NULL;
 	int ret;
 
@@ -1632,13 +1702,18 @@ bool drm_mode_parse_command_line_for_connector(const char *mode_option,
 		mode->refresh_specified = true;
 	}
 
+	/* Locate the start of named options */
+	options_ptr = strchr(name, ',');
+	if (options_ptr)
+		options_off = options_ptr - name;
+
 	/* Locate the end of the name / resolution, and parse it */
-	if (bpp_ptr && refresh_ptr) {
-		mode_end = min(bpp_off, refresh_off);
-	} else if (bpp_ptr) {
+	if (bpp_ptr) {
 		mode_end = bpp_off;
 	} else if (refresh_ptr) {
 		mode_end = refresh_off;
+	} else if (options_ptr) {
+		mode_end = options_off;
 	} else {
 		mode_end = strlen(name);
 		parse_extras = true;
@@ -1680,24 +1755,23 @@ bool drm_mode_parse_command_line_for_connector(const char *mode_option,
 	else if (refresh_ptr)
 		extra_ptr = refresh_end_ptr;
 
-	if (extra_ptr) {
-		if (!named_mode) {
-			int len = strlen(name) - (extra_ptr - name);
+	if (extra_ptr &&
+	    extra_ptr != options_ptr) {
+		int len = strlen(name) - (extra_ptr - name);
 
-			ret = drm_mode_parse_cmdline_extra(extra_ptr, len,
-							   connector, mode);
-			if (ret)
-				return false;
-		} else {
-			int remaining = strlen(name) - (extra_ptr - name);
+		ret = drm_mode_parse_cmdline_extra(extra_ptr, len,
+						   connector, mode);
+		if (ret)
+			return false;
+	}
 
-			/*
-			 * We still have characters to process, while
-			 * we shouldn't have any
-			 */
-			if (remaining > 0)
-				return false;
-		}
+	if (options_ptr) {
+		int len = strlen(name) - (options_ptr - name);
+
+		ret = drm_mode_parse_cmdline_options(options_ptr, len,
+						     connector, mode);
+		if (ret)
+			return false;
 	}
 
 	return true;
diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
index cdf2fb910010..8eebe0432c73 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -1025,6 +1025,16 @@ struct drm_cmdline_mode {
 	 * state to one of the DRM_FORCE_* values.
 	 */
 	enum drm_connector_force force;
+
+	/**
+	 * @rotation_reflection:
+	 *
+	 * Initial rotation and reflection of the mode setup from the
+	 * command line. See DRM_MODE_ROTATE_* and
+	 * DRM_MODE_REFLECT_*. The only rotations supported are
+	 * DRM_MODE_ROTATE_0 and DRM_MODE_ROTATE_180.
+	 */
+	unsigned int rotation_reflection;
 };
 
 /**
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
