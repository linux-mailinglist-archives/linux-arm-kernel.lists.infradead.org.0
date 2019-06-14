Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E58545C85
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 14:17:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HnoGDIFOzi+CyW+w9HtL42jtn/RqtD4K1+8Irwt6T5w=; b=OUwFjZW+C1PfBF
	F12q7Gko/yakgb/CHo6wqsf05aRfQ0sz3npjc0Y76/cDlLo4ERA1GCp+1y16/xokmY6M5QNtW121A
	iyoSYa58FGDCJ8M0IzhVIvhhXgNzjkVeZQU6VawktP1wh4Za1EYTdLwibYj41mFsQ2vQ+uQE5OQWl
	hn51t2AmjHggIE5j2ixjEKGmKXRxNMcpfcr/0Ms9axBPomyTpEs3+rmCL4zEdw15Q96GWjDjdZrXS
	+SNVME+wG29VN5gHDXlIW/wILK6eaEZoV8PX4JTMPlXvVTXEFWg3kMC0xvqzqBoQOJOYf90sGAawH
	rQj+cYxDYm6vHmozcKxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbl90-0008PW-Cs; Fri, 14 Jun 2019 12:17:22 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbl5X-0004P4-3I
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 12:13:50 +0000
X-Originating-IP: 90.88.23.150
Received: from localhost (aaubervilliers-681-1-81-150.w90-88.abo.wanadoo.fr
 [90.88.23.150]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 44859FF80C;
 Fri, 14 Jun 2019 12:13:43 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sean Paul <seanpaul@chromium.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Daniel Vetter <daniel.vetter@intel.com>, David Airlie <airlied@linux.ie>
Subject: [PATCH v4 05/12] drm/modes: Rewrite the command line parser
Date: Fri, 14 Jun 2019 14:13:12 +0200
Message-Id: <0797f942f8c79a3825974fe9584e810e515ab8e0.1560514379.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.5fc7840dc8fb24744516c13acb8c8aa18e44c0d0.1560514379.git-series.maxime.ripard@bootlin.com>
References: <cover.5fc7840dc8fb24744516c13acb8c8aa18e44c0d0.1560514379.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_051347_491021_C286C55F 
X-CRM114-Status: GOOD (  18.08  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
 Maxime Ripard <maxime.ripard@free-electrons.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maxime Ripard <maxime.ripard@free-electrons.com>

Rewrite the command line parser in order to get away from the state machine
parsing the video mode lines.

Hopefully, this will allow to extend it more easily to support named modes
and / or properties set directly on the command line.

Signed-off-by: Maxime Ripard <maxime.ripard@free-electrons.com>
---
 drivers/gpu/drm/drm_modes.c | 325 +++++++++++++++++++++++--------------
 1 file changed, 210 insertions(+), 115 deletions(-)

diff --git a/drivers/gpu/drm/drm_modes.c b/drivers/gpu/drm/drm_modes.c
index 5a07a28fec6d..6debbd6c1763 100644
--- a/drivers/gpu/drm/drm_modes.c
+++ b/drivers/gpu/drm/drm_modes.c
@@ -30,6 +30,7 @@
  * authorization from the copyright holder(s) and author(s).
  */
 
+#include <linux/ctype.h>
 #include <linux/list.h>
 #include <linux/list_sort.h>
 #include <linux/export.h>
@@ -1408,6 +1409,151 @@ void drm_connector_list_update(struct drm_connector *connector)
 }
 EXPORT_SYMBOL(drm_connector_list_update);
 
+static int drm_mode_parse_cmdline_bpp(const char *str, char **end_ptr,
+				      struct drm_cmdline_mode *mode)
+{
+	unsigned int bpp;
+
+	if (str[0] != '-')
+		return -EINVAL;
+
+	str++;
+	bpp = simple_strtol(str, end_ptr, 10);
+	if (*end_ptr == str)
+		return -EINVAL;
+
+	mode->bpp = bpp;
+	mode->bpp_specified = true;
+
+	return 0;
+}
+
+static int drm_mode_parse_cmdline_refresh(const char *str, char **end_ptr,
+					  struct drm_cmdline_mode *mode)
+{
+	unsigned int refresh;
+
+	if (str[0] != '@')
+		return -EINVAL;
+
+	str++;
+	refresh = simple_strtol(str, end_ptr, 10);
+	if (*end_ptr == str)
+		return -EINVAL;
+
+	mode->refresh = refresh;
+	mode->refresh_specified = true;
+
+	return 0;
+}
+
+static int drm_mode_parse_cmdline_extra(const char *str, int length,
+					struct drm_connector *connector,
+					struct drm_cmdline_mode *mode)
+{
+	int i;
+
+	for (i = 0; i < length; i++) {
+		switch (str[i]) {
+		case 'i':
+			mode->interlace = true;
+			break;
+		case 'm':
+			mode->margins = true;
+			break;
+		case 'D':
+			if (mode->force != DRM_FORCE_UNSPECIFIED)
+				return -EINVAL;
+
+			if ((connector->connector_type != DRM_MODE_CONNECTOR_DVII) &&
+			    (connector->connector_type != DRM_MODE_CONNECTOR_HDMIB))
+				mode->force = DRM_FORCE_ON;
+			else
+				mode->force = DRM_FORCE_ON_DIGITAL;
+			break;
+		case 'd':
+			if (mode->force != DRM_FORCE_UNSPECIFIED)
+				return -EINVAL;
+
+			mode->force = DRM_FORCE_OFF;
+			break;
+		case 'e':
+			if (mode->force != DRM_FORCE_UNSPECIFIED)
+				return -EINVAL;
+
+			mode->force = DRM_FORCE_ON;
+			break;
+		default:
+			return -EINVAL;
+		}
+	}
+
+	return 0;
+}
+
+static int drm_mode_parse_cmdline_res_mode(const char *str, unsigned int length,
+					   bool extras,
+					   struct drm_connector *connector,
+					   struct drm_cmdline_mode *mode)
+{
+	const char *str_start = str;
+	bool rb = false, cvt = false;
+	int xres = 0, yres = 0;
+	int remaining, i;
+	char *end_ptr;
+
+	xres = simple_strtol(str, &end_ptr, 10);
+	if (end_ptr == str)
+		return -EINVAL;
+
+	if (end_ptr[0] != 'x')
+		return -EINVAL;
+	end_ptr++;
+
+	str = end_ptr;
+	yres = simple_strtol(str, &end_ptr, 10);
+	if (end_ptr == str)
+		return -EINVAL;
+
+	remaining = length - (end_ptr - str_start);
+	if (remaining < 0)
+		return -EINVAL;
+
+	for (i = 0; i < remaining; i++) {
+		switch (end_ptr[i]) {
+		case 'M':
+			cvt = true;
+			break;
+		case 'R':
+			rb = true;
+			break;
+		default:
+			/*
+			 * Try to pass that to our extras parsing
+			 * function to handle the case where the
+			 * extras are directly after the resolution
+			 */
+			if (extras) {
+				int ret = drm_mode_parse_cmdline_extra(end_ptr + i,
+								       1,
+								       connector,
+								       mode);
+				if (ret)
+					return ret;
+			} else {
+				return -EINVAL;
+			}
+		}
+	}
+
+	mode->xres = xres;
+	mode->yres = yres;
+	mode->cvt = cvt;
+	mode->rb = rb;
+
+	return 0;
+}
+
 /**
  * drm_mode_parse_command_line_for_connector - parse command line modeline for connector
  * @mode_option: optional per connector mode option
@@ -1434,13 +1580,12 @@ bool drm_mode_parse_command_line_for_connector(const char *mode_option,
 					       struct drm_cmdline_mode *mode)
 {
 	const char *name;
-	unsigned int namelen;
-	bool res_specified = false, bpp_specified = false, refresh_specified = false;
-	unsigned int xres = 0, yres = 0, bpp = 32, refresh = 0;
-	bool yres_specified = false, cvt = false, rb = false;
-	bool interlace = false, margins = false, was_digit = false;
-	int i;
-	enum drm_connector_force force = DRM_FORCE_UNSPECIFIED;
+	bool parse_extras = false;
+	unsigned int bpp_off = 0, refresh_off = 0;
+	unsigned int mode_end = 0;
+	char *bpp_ptr = NULL, *refresh_ptr = NULL, *extra_ptr = NULL;
+	char *bpp_end_ptr = NULL, *refresh_end_ptr = NULL;
+	int ret;
 
 #ifdef CONFIG_FB
 	if (!mode_option)
@@ -1453,127 +1598,77 @@ bool drm_mode_parse_command_line_for_connector(const char *mode_option,
 	}
 
 	name = mode_option;
-	namelen = strlen(name);
-	for (i = namelen-1; i >= 0; i--) {
-		switch (name[i]) {
-		case '@':
-			if (!refresh_specified && !bpp_specified &&
-			    !yres_specified && !cvt && !rb && was_digit) {
-				refresh = simple_strtol(&name[i+1], NULL, 10);
-				refresh_specified = true;
-				was_digit = false;
-			} else
-				goto done;
-			break;
-		case '-':
-			if (!bpp_specified && !yres_specified && !cvt &&
-			    !rb && was_digit) {
-				bpp = simple_strtol(&name[i+1], NULL, 10);
-				bpp_specified = true;
-				was_digit = false;
-			} else
-				goto done;
-			break;
-		case 'x':
-			if (!yres_specified && was_digit) {
-				yres = simple_strtol(&name[i+1], NULL, 10);
-				yres_specified = true;
-				was_digit = false;
-			} else
-				goto done;
-			break;
-		case '0' ... '9':
-			was_digit = true;
-			break;
-		case 'M':
-			if (yres_specified || cvt || was_digit)
-				goto done;
-			cvt = true;
-			break;
-		case 'R':
-			if (yres_specified || cvt || rb || was_digit)
-				goto done;
-			rb = true;
-			break;
-		case 'm':
-			if (cvt || yres_specified || was_digit)
-				goto done;
-			margins = true;
-			break;
-		case 'i':
-			if (cvt || yres_specified || was_digit)
-				goto done;
-			interlace = true;
-			break;
-		case 'e':
-			if (yres_specified || bpp_specified || refresh_specified ||
-			    was_digit || (force != DRM_FORCE_UNSPECIFIED))
-				goto done;
 
-			force = DRM_FORCE_ON;
-			break;
-		case 'D':
-			if (yres_specified || bpp_specified || refresh_specified ||
-			    was_digit || (force != DRM_FORCE_UNSPECIFIED))
-				goto done;
+	if (!isdigit(name[0]))
+		return false;
 
-			if ((connector->connector_type != DRM_MODE_CONNECTOR_DVII) &&
-			    (connector->connector_type != DRM_MODE_CONNECTOR_HDMIB))
-				force = DRM_FORCE_ON;
-			else
-				force = DRM_FORCE_ON_DIGITAL;
-			break;
-		case 'd':
-			if (yres_specified || bpp_specified || refresh_specified ||
-			    was_digit || (force != DRM_FORCE_UNSPECIFIED))
-				goto done;
+	/* Try to locate the bpp and refresh specifiers, if any */
+	bpp_ptr = strchr(name, '-');
+	if (bpp_ptr) {
+		bpp_off = bpp_ptr - name;
+		mode->bpp_specified = true;
+	}
 
-			force = DRM_FORCE_OFF;
-			break;
-		default:
-			goto done;
-		}
+	refresh_ptr = strchr(name, '@');
+	if (refresh_ptr) {
+		refresh_off = refresh_ptr - name;
+		mode->refresh_specified = true;
 	}
 
-	if (i < 0 && yres_specified) {
-		char *ch;
-		xres = simple_strtol(name, &ch, 10);
-		if ((ch != NULL) && (*ch == 'x'))
-			res_specified = true;
-		else
-			i = ch - name;
-	} else if (!yres_specified && was_digit) {
-		/* catch mode that begins with digits but has no 'x' */
-		i = 0;
+	/* Locate the end of the name / resolution, and parse it */
+	if (bpp_ptr && refresh_ptr) {
+		mode_end = min(bpp_off, refresh_off);
+	} else if (bpp_ptr) {
+		mode_end = bpp_off;
+	} else if (refresh_ptr) {
+		mode_end = refresh_off;
+	} else {
+		mode_end = strlen(name);
+		parse_extras = true;
 	}
-done:
-	if (i >= 0) {
-		pr_warn("[drm] parse error at position %i in video mode '%s'\n",
-			i, name);
-		mode->specified = false;
+
+	ret = drm_mode_parse_cmdline_res_mode(name, mode_end,
+					      parse_extras,
+					      connector,
+					      mode);
+	if (ret)
 		return false;
-	}
+	mode->specified = true;
 
-	if (res_specified) {
-		mode->specified = true;
-		mode->xres = xres;
-		mode->yres = yres;
+	if (bpp_ptr) {
+		ret = drm_mode_parse_cmdline_bpp(bpp_ptr, &bpp_end_ptr, mode);
+		if (ret)
+			return false;
 	}
 
-	if (refresh_specified) {
-		mode->refresh_specified = true;
-		mode->refresh = refresh;
+	if (refresh_ptr) {
+		ret = drm_mode_parse_cmdline_refresh(refresh_ptr,
+						     &refresh_end_ptr, mode);
+		if (ret)
+			return false;
 	}
 
-	if (bpp_specified) {
-		mode->bpp_specified = true;
-		mode->bpp = bpp;
+	/*
+	 * Locate the end of the bpp / refresh, and parse the extras
+	 * if relevant
+	 */
+	if (bpp_ptr && refresh_ptr)
+		extra_ptr = max(bpp_end_ptr, refresh_end_ptr);
+	else if (bpp_ptr)
+		extra_ptr = bpp_end_ptr;
+	else if (refresh_ptr)
+		extra_ptr = refresh_end_ptr;
+
+	if (extra_ptr) {
+		int remaining = strlen(name) - (extra_ptr - name);
+
+		/*
+		 * We still have characters to process, while
+		 * we shouldn't have any
+		 */
+		if (remaining > 0)
+			return false;
 	}
-	mode->rb = rb;
-	mode->cvt = cvt;
-	mode->interlace = interlace;
-	mode->margins = margins;
-	mode->force = force;
 
 	return true;
 }
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
