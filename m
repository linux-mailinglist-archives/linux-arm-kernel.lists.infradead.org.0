Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD67980C8F
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  4 Aug 2019 22:19:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sqv1FA1YHdCmcDFSgs9j1sa4Z/aF/O71e4proRAXc0Q=; b=ISewgaz1DeIse8
	mICfMqLGoKRfsLzyjKjPMnp9Vf0IBhKyS8OSGaBRJwKxM0OK+YyDieAKBEfAvQodf1CLprClaI1VA
	qpetWPj40Iiv+IMCiL3S7h18jhbxQUiyQZAf7c9pdQ0ATo8WmREwyKWXmYLUOMjgghYsGiU8s8gxW
	OQX56bT++x09ei7vhITVL9OYkKWGomu6LGFsoGJEywKFqogYuaVRuc/2tFnD4vLawSzBANWSclbfM
	lB3agIZs1fyBldNFcdkkWtFjt3AHHN3ewajEFIUodb7m+G7DU1jE9k8ShRWwR3s9H8HoZ4qhgval9
	+mCMVrQ6Ncv0c5YiqpyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huMyz-0003Oq-6w; Sun, 04 Aug 2019 20:19:57 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huMwq-0000dL-RY
 for linux-arm-kernel@lists.infradead.org; Sun, 04 Aug 2019 20:17:47 +0000
Received: by mail-lf1-x143.google.com with SMTP id h28so56312621lfj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 04 Aug 2019 13:17:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aobqP46odx3tunBAtyyrec00lPA6Ep/KC6NYpNeo17U=;
 b=SFyUwEVzQiN+6Jh9U4W+Ou+eODKjyMW+KpMuYRXjME46CmaH8aJsl/dRMIn9p2zWZO
 G8C9gUmunvvNAfQnltvpwvvr6SZKIBTXon/9pdHoYF2OEAzg4X0T7udsIbCPJZOJcMaK
 bF7VAH94hYH9HecpdWX9NjSM2fOUXMY4DPHYOXKH4dCA1oQVpxwV9gghaBGzSrUJGnCf
 gnWSfFzy8l0vUQExN4iXCesBUcBGkrx41lBJ9v6i6fEVRhrOLfUtHJOvNoWinLnBY6Yd
 cJ8A0XDKQ6zvW2868e4DsxOCHxTkdTI4F7DukDhV0NOo+sRz6pV/i5BymdeavxXTvWwJ
 XOag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=aobqP46odx3tunBAtyyrec00lPA6Ep/KC6NYpNeo17U=;
 b=DBDQtCEtQ3HvwUprTeyY4bf4kcW5Bi5gDBgI26ZI/k9NBSpIq7O8h4V0Qgqb0eOjm1
 2C6Q4nNtEm+Pr9q5tyMlxMRn8+6GcSM4l1dE5xSW71O6zTYwbLeSAyoT4ryzpeRGLQGd
 avddXIb2xKlNg1ykqP4lmxgF7xjzmtRT7UNaoMevtnBQFTsK/z0dtHXpV/v5D+TIfooC
 H9zbor3hR+c7DvhrVvFD1PCivXZMIytmjpDmwwCMoakUfVu5WD/zxLQp07HWgz0oxzZv
 5tP1mFOH5Vpitvi9pFLDWCSN1NXslIiLINb96cvan6qeTFmudqSZPrzkBFfoEjoTltYc
 +sLQ==
X-Gm-Message-State: APjAAAVZHGHMgm6RV63PhXbVdMRzTdH/uTVZIDFtQTdasj4v+xZA08ob
 X0T0X1u+ZUeYYlWVmEFDQNs=
X-Google-Smtp-Source: APXvYqzTqaOH/E4yWYEObO2R5wACA7U9nuaIZddLKnxycMIdLIM6Ra7WWa7AU5/RHuBYEwNpuEELQA==
X-Received: by 2002:ac2:4289:: with SMTP id m9mr5299981lfh.49.1564949863271;
 Sun, 04 Aug 2019 13:17:43 -0700 (PDT)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 p87sm16540794ljp.50.2019.08.04.13.17.41
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 13:17:42 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH v1 15/16] drm/panel: add backlight support
Date: Sun,  4 Aug 2019 22:16:36 +0200
Message-Id: <20190804201637.1240-16-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190804201637.1240-1-sam@ravnborg.org>
References: <20190804201637.1240-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_131744_954548_24A5A10B 
X-CRM114-Status: GOOD (  20.88  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sam.ravnborg[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 Linus Walleij <linus.walleij@linaro.org>, Stefan Agner <stefan@agner.ch>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Fabio Estevam <festevam@gmail.com>, Marek Vasut <marex@denx.de>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Joonyoung Shim <jy0922.shim@samsung.com>, Sam Ravnborg <sam@ravnborg.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Kukjin Kim <kgene@kernel.org>,
 Allison Randal <allison@lohutok.net>, Philipp Zabel <p.zabel@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Jonas Karlman <jonas@kwiboo.se>, Sascha Hauer <s.hauer@pengutronix.de>,
 Alison Wang <alison.wang@nxp.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>, Inki Dae <inki.dae@samsung.com>,
 Alexios Zavras <alexios.zavras@intel.com>, linux-samsung-soc@vger.kernel.org,
 linux-tegra@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, Shawn Guo <shawnguo@kernel.org>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, Vincent Abriou <vincent.abriou@st.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Daniel Vetter <daniel@ffwll.ch>,
 Enrico Weigelt <info@metux.net>
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

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <maxime.ripard@bootlin.com>
Cc: Sean Paul <sean@poorly.run>
Cc: Thierry Reding <thierry.reding@gmail.com>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
---
 drivers/gpu/drm/drm_panel.c | 41 +++++++++++++++++++++++++++++++++++++
 include/drm/drm_panel.h     | 23 +++++++++++++++++++++
 2 files changed, 64 insertions(+)

diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
index 0853764040de..d8139674b883 100644
--- a/drivers/gpu/drm/drm_panel.c
+++ b/drivers/gpu/drm/drm_panel.c
@@ -21,6 +21,7 @@
  * DEALINGS IN THE SOFTWARE.
  */
 
+#include <linux/backlight.h>
 #include <linux/err.h>
 #include <linux/module.h>
 
@@ -110,6 +111,7 @@ int drm_panel_enable(struct drm_panel *panel)
 	if (ret >= 0)
 		panel->enabled = true;
 
+	backlight_enable(panel->backlight);
 	return ret;
 }
 EXPORT_SYMBOL(drm_panel_enable);
@@ -134,6 +136,8 @@ int drm_panel_disable(struct drm_panel *panel)
 	if (!panel->enabled)
 		return 0;
 
+	backlight_disable(panel->backlight);
+
 	if (panel->funcs && panel->funcs->disable)
 		ret = panel->funcs->disable(panel);
 
@@ -308,6 +312,43 @@ struct drm_panel *of_drm_find_panel(const struct device_node *np)
 EXPORT_SYMBOL(of_drm_find_panel);
 #endif
 
+#ifdef CONFIG_BACKLIGHT_CLASS_DEVICE
+/**
+ * drm_panel_of_backlight - use backlight device node for backlight
+ * @panel: DRM panel
+ *
+ * Use this function to enable backlight handling if your panel
+ * uses device tree and has a backlight handle.
+ *
+ * When panel is enabled backlight will be enabled after a
+ * successfull call to &drm_panel_funcs.enable()
+ *
+ * When panel is disabled backlight will be disabled before the
+ * call to &drm_panel_funcs.disable().
+ *
+ * A typical implementation for a panel driver supporting device tree
+ * will call this function and then backlight just works.
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
index 7493500fc9bd..31349c2393b7 100644
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
+ * drm_panel_of_backlight(). Then the driver do not need to implement the
+ * functionality to enable/disable backlight.
  */
 struct drm_panel_funcs {
 	/**
@@ -139,6 +144,15 @@ struct drm_panel {
 	 */
 	struct device *dev;
 
+	/**
+	 * @backlight:
+	 *
+	 * Backlight device, used to turn on backlight after
+	 * the call to enable(), and to turn off
+	 * backlight before call to disable().
+	 */
+	struct backlight_device *backlight;
+
 	/**
 	 * @funcs:
 	 *
@@ -193,4 +207,13 @@ static inline struct drm_panel *of_drm_find_panel(const struct device_node *np)
 }
 #endif
 
+#if defined(CONFIG_BACKLIGHT_CLASS_DEVICE) && defined(CONFIG_DRM_PANEL)
+int drm_panel_of_backlight(struct drm_panel *panel);
+#else
+static inline int drm_panel_of_backlight(struct drm_panel *panel)
+{
+	return -EINVAL;
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
