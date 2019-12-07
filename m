Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15663115CD3
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Dec 2019 15:05:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kd4LWMo59/jXRYij0L+3a6T5zPTg/AwlYpTZRBsrXEo=; b=LLl82ycu8zybip
	YYgZk+lPB6XMfH9HCdzbY+ZVcwqHq7p1LQ3XbImFrXrPupvXWeKYKTZwZiGE7SvPz8FBh3WQYevFb
	80mxgChuUaf/vqQ58uxie0QyuC38jKd4cvVt8u+A+i9+82Ftub1Fj2m++1rSqGfUwrwXI0HiXsxly
	GTwTMwS+x+oZmeRSW1kOOZxau9WLNRxhuchGMVDDPd3WiF0DCpZq4bYX/iae2xXggwEjvZwiSbpt4
	UA/lc0qjNGYbqrPjs2GNFvCWq0+7AGqfCq8UKFAOQrxkchOM4qsFek11C9FgxOvaSCPoZNfA2SJSy
	c3xU0P3VaWYm9/cA+svQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idaiV-0006YC-8I; Sat, 07 Dec 2019 14:05:51 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idagv-0005VF-Qn; Sat, 07 Dec 2019 14:04:16 +0000
Received: by mail-lf1-x141.google.com with SMTP id f15so6583186lfl.13;
 Sat, 07 Dec 2019 06:04:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IAuPLO1NXXX2GjlvTopVslbL6mzsD4aerKxWopEcOV0=;
 b=JNdIVTzd6hQQR40rf18YTN5f5Q4Fe4/2lb99BbqbpfnGZU2hooEMtpBwrqswQgbwH2
 l5ZdY3rh5F+K8ww1hsp2bIC0eVB+FviQ+SQHIkoIZyirWeskQD/aUi+YsUgSOLXCdW7k
 XaHFzu8l1uWmE7zrcMkyE24irdFrvx8CRWH/7OEN6MnIVxM7opSCoVZJOrE5B7XyUTc6
 +/JDRgydJj91C3F69+BuQF4vm3gIkIEYeONJIetsChdLXbwFqbRw4UEjw7GzJmuV8815
 DAv5H9f+AezQ+Jhlp930lnBdD0Bt4uQ95sDaoPrxl/gyiTe/PO1xsMDUEz8fKDhvG680
 ixSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=IAuPLO1NXXX2GjlvTopVslbL6mzsD4aerKxWopEcOV0=;
 b=Lf91QRD2SBdREeUp6CHJTIT6ZKfDYqSXVE/LdhaIvdEq9AAa9AJ3YAnRA8cGgoVIwR
 j21HEa4k8vR1NJE7M7qWeLOKTQstfqOsOtC3wx1BrYq1Jo2UDQk3yW9FFrdYCdNXEP3P
 p49gisAhYx84/ngerpjrSewPaVwott+nU5+q5KP5G3wC+735Sy4bp3dmbLtCQL362Q29
 VjJ4E0eKlmUov3+C4UbLAJ86tdYza88aDROAgrI+baFvBkVQJeDhipcQYvZzyTw9Ifq4
 47nipjfqbPE0rT0QdYmh6C1xSE11tcLCF0Oro/3FP+KjDB8rTYZrwd4YfzCjzimlrBg+
 oX+g==
X-Gm-Message-State: APjAAAUGksvtzrvdSKDRDUWTpwae1dNG5rofcohOOgl2/xzFCaT/iTsi
 wJmkAiOppYyJXpb6Ou86YLQ=
X-Google-Smtp-Source: APXvYqxmrzRpkskz4b2beRWGwblJ8U53QdScC/djuvK/AuxHBlhrUpqau4y6mRBIbKrsHRxbDv56yw==
X-Received: by 2002:ac2:4436:: with SMTP id w22mr10814360lfl.185.1575727452027; 
 Sat, 07 Dec 2019 06:04:12 -0800 (PST)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 w17sm5644188lfn.22.2019.12.07.06.04.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 07 Dec 2019 06:04:11 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sam Ravnborg <sam@ravnborg.org>
Subject: [PATCH v2 02/25] drm/panel: add backlight support
Date: Sat,  7 Dec 2019 15:03:30 +0100
Message-Id: <20191207140353.23967-3-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191207140353.23967-1-sam@ravnborg.org>
References: <20191207140353.23967-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_060413_864233_1C53EDE6 
X-CRM114-Status: GOOD (  21.10  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sam.ravnborg[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Stefan Agner <stefan@agner.ch>, Andrzej Hajda <a.hajda@samsung.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-samsung-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Jagan Teki <jagan@amarulasolutions.com>, NXP Linux Team <linux-imx@nxp.com>,
 Jitao Shi <jitao.shi@mediatek.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, linux-mediatek@lists.infradead.org,
 Abhinav Kumar <abhinavk@codeaurora.org>, linux-tegra@vger.kernel.org,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org,
 Purism Kernel Team <kernel@puri.sm>, linux-renesas-soc@vger.kernel.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Panels often supports backlight as specified in a device tree.
Update the drm_panel infrastructure to support this to
simplify the drivers.

With this the panel driver just needs to add the following to the
probe() function:

    err = drm_panel_of_backlight(panel);
    if (err)
            return err;

Then drm_panel will handle all the rest.

There is one caveat with the backlight support.
If drm_panel_(enable|disable) are called multiple times
in row then backlight_(enable|disable) will be called multiple times.

The above will happen when a panel drivers unconditionally
calls drm_panel_disable() in their shutdown() function,
whan the panel is already disabled and then shutdown() is called.

Reading the backlight code it seems safe to call
the backlight_(enable|disable) several times.

v3:
- Improve comments, fix grammar (Laurent)
- Do not fail in drm_panel_of_backlight() if no DT support (Laurent)
- Log if backlight_(enable|disable) fails (Laurent)
- Improve drm_panel_of_backlight() docs
- Updated changelog with backlight analysis (triggered by Laurent)

v2:
- Drop test of CONFIG_DRM_PANEL in header-file (Laurent)
- do not enable backlight if ->enable() returns an error

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Cc: Thierry Reding <thierry.reding@gmail.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <maxime.ripard@bootlin.com>
Cc: Sean Paul <sean@poorly.run>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
---
 drivers/gpu/drm/drm_panel.c | 58 ++++++++++++++++++++++++++++++++++++-
 include/drm/drm_panel.h     | 25 ++++++++++++++++
 2 files changed, 82 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
index 4ab7229fb22b..c312d5eb214d 100644
--- a/drivers/gpu/drm/drm_panel.c
+++ b/drivers/gpu/drm/drm_panel.c
@@ -21,11 +21,13 @@
  * DEALINGS IN THE SOFTWARE.
  */
 
+#include <linux/backlight.h>
 #include <linux/err.h>
 #include <linux/module.h>
 
 #include <drm/drm_crtc.h>
 #include <drm/drm_panel.h>
+#include <drm/drm_print.h>
 
 static DEFINE_MUTEX(panel_lock);
 static LIST_HEAD(panel_list);
@@ -196,11 +198,20 @@ EXPORT_SYMBOL(drm_panel_unprepare);
  */
 int drm_panel_enable(struct drm_panel *panel)
 {
+	int ret = 0;
+
 	if (!panel)
 		return -EINVAL;
 
 	if (panel->funcs && panel->funcs->enable)
-		return panel->funcs->enable(panel);
+		ret = panel->funcs->enable(panel);
+
+	if (ret < 0)
+		return ret;
+
+	ret = backlight_enable(panel->backlight);
+	if (ret < 0)
+		DRM_DEV_INFO(panel->dev, "failed to enable backlight: %d\n", ret);
 
 	return 0;
 }
@@ -218,9 +229,15 @@ EXPORT_SYMBOL(drm_panel_enable);
  */
 int drm_panel_disable(struct drm_panel *panel)
 {
+	int ret;
+
 	if (!panel)
 		return -EINVAL;
 
+	ret = backlight_disable(panel->backlight);
+	if (ret < 0)
+		DRM_DEV_INFO(panel->dev, "failed to disable backlight: %d\n", ret);
+
 	if (panel->funcs && panel->funcs->disable)
 		return panel->funcs->disable(panel);
 
@@ -289,6 +306,45 @@ struct drm_panel *of_drm_find_panel(const struct device_node *np)
 EXPORT_SYMBOL(of_drm_find_panel);
 #endif
 
+#ifdef CONFIG_BACKLIGHT_CLASS_DEVICE
+/**
+ * drm_panel_of_backlight - use backlight device node for backlight
+ * @panel: DRM panel
+ *
+ * Use this function to enable backlight handling if your panel
+ * uses device tree and has a backlight phandle.
+ *
+ * When the panel is enabled backlight will be enabled after a
+ * successfull call to &drm_panel_funcs.enable()
+ *
+ * When the panel is disabled backlight will be disabled before the
+ * call to &drm_panel_funcs.disable().
+ *
+ * A typical implementation for a panel driver supporting device tree
+ * will call this function at probe time. Backlight will then be handled
+ * transparently without requiring any intervention from the driver.
+ * drm_panel_of_backlight() must be called after the call to drm_panel_init().
+ *
+ * Return: 0 on success or a negative error code on failure.
+ */
+int drm_panel_of_backlight(struct drm_panel *panel)
+{
+	struct backlight_device *backlight;
+
+	if (!panel || !panel->dev)
+		return -EINVAL;
+
+	backlight = devm_of_find_backlight(panel->dev);
+
+	if (IS_ERR(backlight))
+                return PTR_ERR(backlight);
+
+	panel->backlight = backlight;
+	return 0;
+}
+EXPORT_SYMBOL(drm_panel_of_backlight);
+#endif
+
 MODULE_AUTHOR("Thierry Reding <treding@nvidia.com>");
 MODULE_DESCRIPTION("DRM panel infrastructure");
 MODULE_LICENSE("GPL and additional rights");
diff --git a/include/drm/drm_panel.h b/include/drm/drm_panel.h
index d71655b2634c..c751c9b17df0 100644
--- a/include/drm/drm_panel.h
+++ b/include/drm/drm_panel.h
@@ -28,6 +28,7 @@
 #include <linux/errno.h>
 #include <linux/list.h>
 
+struct backlight_device;
 struct device_node;
 struct drm_connector;
 struct drm_device;
@@ -59,6 +60,10 @@ struct display_timing;
  *
  * To save power when no video data is transmitted, a driver can power down
  * the panel. This is the job of the .unprepare() function.
+ *
+ * Backlight can be handled automatically if configured using
+ * drm_panel_of_backlight(). Then the driver does not need to implement the
+ * functionality to enable/disable backlight.
  */
 struct drm_panel_funcs {
 	/**
@@ -146,6 +151,17 @@ struct drm_panel {
 	 */
 	struct device *dev;
 
+	/**
+	 * @backlight:
+	 *
+	 * Backlight device, used to turn on backlight after the call
+	 * to enable(), and to turn off backlight before the call to
+	 * disable().
+	 * backlight is set by drm_panel_of_backlight() and drivers
+	 * shall not assign it.
+	 */
+	struct backlight_device *backlight;
+
 	/**
 	 * @funcs:
 	 *
@@ -197,4 +213,13 @@ static inline struct drm_panel *of_drm_find_panel(const struct device_node *np)
 }
 #endif
 
+#if IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
+int drm_panel_of_backlight(struct drm_panel *panel);
+#else
+static inline int drm_panel_of_backlight(struct drm_panel *panel)
+{
+	return 0;
+}
+#endif
+
 #endif
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
