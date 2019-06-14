Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0561245C8F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 14:19:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CsFbFT9CIjYCaKJ57z9QcNyBHyNFBrF9ebEhG/Pjqvs=; b=F62HaiMai0060P
	y2sscmq708k5guBiGaLVM9ahrRdpSXFRwZgJpkBDmSz6o7VN2OURBlp65DDPcqO4UI3rWZnVWkQLX
	K3KcVPP0ptfpWcpMHQe2rq/83gXtXiwVKJgIq2kZi/XckE4MjdHPsXean+9bfisCepSwgftBzmt35
	6dUut5504FqeW+VHzQM4xCUaoZdOP7Fp0I8Lyunh5VxiyUpbXkalSpsgDOwMZrZ1Ve4bLaTvL3TdX
	6BYfC4f3yiGtXMTThS5/gBB02EOSAVk5F0WqxeRjwe/IxWGA3cYi8Ii7VNurmU1dcojFGnL2M5yfX
	0US8u8kbnVUOk7hT0z4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hblAZ-0001WD-99; Fri, 14 Jun 2019 12:18:59 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbl5l-0004YA-2o
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 12:14:09 +0000
X-Originating-IP: 90.88.23.150
Received: from localhost (aaubervilliers-681-1-81-150.w90-88.abo.wanadoo.fr
 [90.88.23.150]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id E3A8DE0005;
 Fri, 14 Jun 2019 12:13:48 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sean Paul <seanpaul@chromium.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Daniel Vetter <daniel.vetter@intel.com>, David Airlie <airlied@linux.ie>
Subject: [PATCH v4 07/12] drm/modes: Allow to specify rotation and reflection
 on the commandline
Date: Fri, 14 Jun 2019 14:13:14 +0200
Message-Id: <bc0803209a42b1e1c1e33281b16cd6fa4a4556b3.1560514379.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.5fc7840dc8fb24744516c13acb8c8aa18e44c0d0.1560514379.git-series.maxime.ripard@bootlin.com>
References: <cover.5fc7840dc8fb24744516c13acb8c8aa18e44c0d0.1560514379.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_051401_563399_6673BF1A 
X-CRM114-Status: GOOD (  21.91  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
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
 drivers/gpu/drm/drm_client_modeset.c |  20 +++++-
 drivers/gpu/drm/drm_modes.c          | 110 ++++++++++++++++++++++------
 include/drm/drm_connector.h          |   9 ++-
 3 files changed, 119 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/drm_client_modeset.c b/drivers/gpu/drm/drm_client_modeset.c
index 33d4988f22ae..57937e38492c 100644
--- a/drivers/gpu/drm/drm_client_modeset.c
+++ b/drivers/gpu/drm/drm_client_modeset.c
@@ -824,6 +824,7 @@ bool drm_client_rotation(struct drm_mode_set *modeset, unsigned int *rotation)
 {
 	struct drm_connector *connector = modeset->connectors[0];
 	struct drm_plane *plane = modeset->crtc->primary;
+	struct drm_cmdline_mode *cmdline;
 	u64 valid_mask = 0;
 	unsigned int i;
 
@@ -844,6 +845,25 @@ bool drm_client_rotation(struct drm_mode_set *modeset, unsigned int *rotation)
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
+	 */
+	cmdline = &connector->cmdline_mode;
+	if (cmdline->specified) {
+		unsigned int panel_rot = ilog2(*rotation & DRM_MODE_ROTATE_MASK);
+		unsigned int cmdline_rot = ilog2(cmdline->rotation & DRM_MODE_ROTATE_MASK);
+		unsigned int sum_rot;
+
+		sum_rot = (panel_rot + cmdline_rot) % 4;
+		*rotation = 1 << sum_rot;
+	}
+
 	/*
 	 * TODO: support 90 / 270 degree hardware rotation,
 	 * depending on the hardware this may require the framebuffer
diff --git a/drivers/gpu/drm/drm_modes.c b/drivers/gpu/drm/drm_modes.c
index 429d3be17800..b92b7df6784a 100644
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
+	mode->rotation = rotation;
+
+	return 0;
+}
+
 /**
  * drm_mode_parse_command_line_for_connector - parse command line modeline for connector
  * @mode_option: optional per connector mode option
@@ -1581,9 +1646,10 @@ bool drm_mode_parse_command_line_for_connector(const char *mode_option,
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
 
@@ -1632,13 +1698,18 @@ bool drm_mode_parse_command_line_for_connector(const char *mode_option,
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
@@ -1680,24 +1751,23 @@ bool drm_mode_parse_command_line_for_connector(const char *mode_option,
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
index f46a53e86d75..68a04169ea36 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -1006,6 +1006,15 @@ struct drm_cmdline_mode {
 	 * state to one of the DRM_FORCE_* values.
 	 */
 	enum drm_connector_force force;
+
+	/**
+	 * @rotation:
+	 *
+	 * Initial rotation of the mode setup from the command line.
+	 * See DRM_MODE_ROTATE_*. Only DRM_MODE_ROTATE_0 and
+	 * DRM_MODE_ROTATE_180 are supported at the moment.
+	 */
+	unsigned int rotation;
 };
 
 /**
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
