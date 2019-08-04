Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 424BF80C8C
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  4 Aug 2019 22:19:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tOCEbCKLA3pA6TMVMRifLTIrP93Pc2eM4rNTRNXKgwQ=; b=N7P2s0ErqAdzha
	vLxkLKgT6/fV52lQIm74m3r/qeMTj9yWv5L3K69tfJUcFQ1bwRTJLMuu5skIHNOaAPhdlnioVKV25
	OdpVW0QMVT0OJoZ5W4tH0Ih4hb+RFDm0bgEgM11HAXE9EKbVL2Gz1x0Ifriyfc5osgcC0L5REDXY0
	2Kws1TU+DxBLEOEZ9yW5Zag7kyOQkTrCKEiXN91POjt0Ywc5wiAAPiGiqdNx2LxSbzWLLXro04/D/
	V9hU/Ho5i6avKRSyZjG46Ck5R+eiSAsO8TLxluWmmSIgOF5SFJP6zxsstM3Kmeo0g4ktxhcegqOSr
	4efnjFqiouA5G8LsmrMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huMyR-0002h0-Ew; Sun, 04 Aug 2019 20:19:23 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huMwi-0000Su-G6
 for linux-arm-kernel@lists.infradead.org; Sun, 04 Aug 2019 20:17:38 +0000
Received: by mail-lj1-x243.google.com with SMTP id h10so5976226ljg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 04 Aug 2019 13:17:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TFw8aj8TVKqYV1qdWp7H7PSv0EjnAL5XrV9yT7wyYzI=;
 b=rwd7igj5BUr8/KxH5fDWHXDr9Bb3jwowv9EXwDKoBAF6i6RKSOD2641bxv40d1HHKN
 90PRk5+MErpunsqUa+ibcmpfyC1UfMifTvwajUbZ8ZqHuCMYFJKBBAjwFBo2W68OzUai
 G53Jvo1D5DDJzo+gKXvmakpxb/DH5/PhMw8aEahnixPu/po32d3aI+NDSSadM47kTbM/
 lqjP4OcW0y9Bk1NfPNwspN6J3RHQ7WY7F72jJQW2++3tGl6ZnUz3D5o0HtacBnaewCu6
 3kXeiK7YR5BoUUssAQyLfTo21VXL0dOrPgDks3dsZ86AAQ5AoD6rN4Cu2hcIz7NKG/Ie
 NLxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=TFw8aj8TVKqYV1qdWp7H7PSv0EjnAL5XrV9yT7wyYzI=;
 b=UqrsFAeESzIw+bYItxQJcNtVJ6wI7LKOJHKXeHArUrAcPglF65gnOwxolV8mpcLZKR
 gxLyRESz9OyOoNS8/aTMGye/I/gPiLF7bcH3Z9o85QBH5IcwsBaA5datsV7IRg/1HtpS
 wzA15tuW7zzq8zvXD6pikgJD75IPh44sqzCtM84dvPxmhLyjimRt2OMb3aK15Z4/gGEM
 mqMtk0GgaaKsmTkWzLmUltRuTQfObD8fAVBoFq69aBqD46FBw02/ehorauy3jTZ/ODU9
 n3PH3NGZ+FkoG5b03W7U6rXtei9X5/8vQeELatzLE3K5anbTGrDVjlqdsFqmaNkoIng4
 4pjA==
X-Gm-Message-State: APjAAAXrguYqg3/S9KlmPe1mIr7ChNur8OubIjIHEzm0GE1E/6xdsD5z
 FZYEZsvwACK/xp2669GsKZg=
X-Google-Smtp-Source: APXvYqyoAufw1JJb+gisc/+GrH+nZNn6Oe74hLjpr94kfXr5VFnqYqHplX0Q3NQsQ1CxOz1UwLnarA==
X-Received: by 2002:a2e:b0ea:: with SMTP id h10mr31006790ljl.50.1564949855034; 
 Sun, 04 Aug 2019 13:17:35 -0700 (PDT)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 p87sm16540794ljp.50.2019.08.04.13.17.32
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 13:17:34 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH v1 12/16] drm/panel: use inline comments in drm_panel.h
Date: Sun,  4 Aug 2019 22:16:33 +0200
Message-Id: <20190804201637.1240-13-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190804201637.1240-1-sam@ravnborg.org>
References: <20190804201637.1240-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_131736_566979_0BEE2071 
X-CRM114-Status: GOOD (  17.76  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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

Inline comments provide better space for additional comments.
Comments was slightly edited to follow the normal style,
but no change to actual content.
Used the opportuniy to change the order in drm_panel_funcs
to follow the order they will be used by a panel.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <maxime.ripard@bootlin.com>
Cc: Sean Paul <sean@poorly.run>
Cc: Thierry Reding <thierry.reding@gmail.com>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
---
 include/drm/drm_panel.h | 82 +++++++++++++++++++++++++++++++++--------
 1 file changed, 66 insertions(+), 16 deletions(-)

diff --git a/include/drm/drm_panel.h b/include/drm/drm_panel.h
index 053d611656b9..5e62deea49ba 100644
--- a/include/drm/drm_panel.h
+++ b/include/drm/drm_panel.h
@@ -36,14 +36,6 @@ struct display_timing;
 
 /**
  * struct drm_panel_funcs - perform operations on a given panel
- * @disable: disable panel (turn off back light, etc.)
- * @unprepare: turn off panel
- * @prepare: turn on panel and perform set up
- * @enable: enable panel (turn on back light, etc.)
- * @get_modes: add modes to the connector that the panel is attached to and
- * return the number of modes added
- * @get_timings: copy display timings into the provided array and return
- * the number of display timings available
  *
  * The .prepare() function is typically called before the display controller
  * starts to transmit video data. Panel drivers can use this to turn the panel
@@ -69,31 +61,89 @@ struct display_timing;
  * the panel. This is the job of the .unprepare() function.
  */
 struct drm_panel_funcs {
-	int (*disable)(struct drm_panel *panel);
-	int (*unprepare)(struct drm_panel *panel);
+	/**
+	 * @prepare:
+	 *
+	 * Turn on panel and perform set up.
+	 */
 	int (*prepare)(struct drm_panel *panel);
+
+	/**
+	 * @enable:
+	 *
+	 * Enable panel (turn on back light, etc.).
+	 */
 	int (*enable)(struct drm_panel *panel);
+
+	/**
+	 * @disable:
+	 *
+	 * Disable panel (turn off back light, etc.).
+	 */
+	int (*disable)(struct drm_panel *panel);
+
+	/**
+	 * @unprepare:
+	 *
+	 * Turn off panel.
+	 */
+	int (*unprepare)(struct drm_panel *panel);
+
+	/**
+	 * @get_modes:
+	 *
+	 * Add modes to the connector that the panel is attached to and
+	 * return the number of modes added.
+	 */
 	int (*get_modes)(struct drm_panel *panel);
+
+	/**
+	 * @get_timings:
+	 *
+	 * Copy display timings into the provided array and return
+	 * the number of display timings available.
+	 */
 	int (*get_timings)(struct drm_panel *panel, unsigned int num_timings,
 			   struct display_timing *timings);
 };
 
 /**
  * struct drm_panel - DRM panel object
- * @drm: DRM device owning the panel
- * @connector: DRM connector that the panel is attached to
- * @dev: parent device of the panel
- * @link: link from panel device (supplier) to DRM device (consumer)
- * @funcs: operations that can be performed on the panel
- * @list: panel entry in registry
  */
 struct drm_panel {
+	/**
+	 * @drm:
+	 *
+	 * DRM device owning the panel.
+	 */
 	struct drm_device *drm;
+
+	/**
+	 * @connector:
+	 *
+	 * DRM connector that the panel is attached to.
+	 */
 	struct drm_connector *connector;
+
+	/**
+	 * @dev:
+	 *
+	 * Parent device of the panel.
+	 */
 	struct device *dev;
 
+	/**
+	 * @funcs:
+	 *
+	 * Operations that can be performed on the panel.
+	 */
 	const struct drm_panel_funcs *funcs;
 
+	/**
+	 * @list:
+	 *
+	 * Panel entry in registry.
+	 */
 	struct list_head list;
 };
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
