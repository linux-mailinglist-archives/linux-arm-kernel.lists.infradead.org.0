Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77EB180C6B
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  4 Aug 2019 22:17:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Ao23Gax8e896grD866C9ZQSpFfkPlXaEiYg1okvBsM=; b=Vkl4OlcGXspHQw
	VuNijGcA5GlfVclTB21UUjW53vm1noiOcPSFaK6zETj2cwfYz8maT8iYJSMAdIFwiuZLjEkKcJP5M
	IKvNkoBrQMeyekMn9XRjBz7o45r3v13324a00ofjtXH6dtwut6geb2l3JhrvAsGtXz4gFMv5lxG+U
	R1yAyYBUd8dlS/KEsrIbrtYn1MA0phRyw0yO5Yt45F6VEvktc/Updfm/E8uIRE5KV8sHgL6q9mZYB
	OI+enfeToQAKPhUDT++cO3PvQmiOpIKA5RvYMaoST1JJPXXQ2+r+B9XsYy0ChP08tXlGpmDKdc0TK
	gb26Dd3sSAl1u+C9CPDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huMwb-00006W-Um; Sun, 04 Aug 2019 20:17:29 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huMwE-0008DC-La
 for linux-arm-kernel@lists.infradead.org; Sun, 04 Aug 2019 20:17:08 +0000
Received: by mail-lf1-x144.google.com with SMTP id b17so56365400lff.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 04 Aug 2019 13:17:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZQy9HfEbGA1ab0VIPAqW/5LFlvvMfM3YtKt25w5akQg=;
 b=kU2m0+RBLUeqJOTqmN7wdIW5oOoJZk4mOVt8g2Pj9LBw8owAvIqfINDwzOdJ8fG3vY
 TmasVFXMgD9rbalVp2CRfKLF2xAY6JU4RpR/URtcsWX5hO4W1AcMMyl7KxM0EwKntN+X
 s0PmeKEE1zCtIcWZZbPwdxjRU5nYL6lOJnt+7SVLtKXAqsl18OyMoAewTdWmVuRodIhM
 KERP/ppypDVfWGQGYyvXKM9f9XAJghQ8AgeG2s18H4kOr9xhKEUbFmFZ5sLSnbcTPPgg
 zbfqIEc3h652BTSzj7i7m2PWJWdp865ZGwAZPpyW4xSJXt92fzG/ahvoGyE7oIx+IrkH
 t9mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=ZQy9HfEbGA1ab0VIPAqW/5LFlvvMfM3YtKt25w5akQg=;
 b=YApQcluDdoBWk6C18dAInv0ra+GMvR167r3hU0C22SKoKHIyAMgBoHxKcEbwVKgQcd
 V9WCXXYjBrqQ7O5FxHqUzN5k+tUvGdOqndxwFnTlPQghGNKQNjz07J4EqpkgBNlSNnju
 seTXW8EJYzDk/S4PtUK9Ejki54MP/8AagD4TDITzIGMiRTZhUtzJmFj4L8LqH+7JFwQR
 FM/kJ+c9+iGWIrmY1KctKWR2iUH1rvbjvTHytLG6Mnl6g2kctmEdUEcMLwe5hNDHStDR
 VYQrZSpCnuQ138e/vHkOvZwW6bHtKQdnRQ8O83Xu380cb2de3CZCiQVcKRpvQBnZtXxU
 CT9A==
X-Gm-Message-State: APjAAAW+lpGW7ZJprEFn2rvjS2a8sW0lI5oMqTPxrRph6w2mpq0Sc92D
 Nw/SDxwFCnykGF2nU8GFaMU=
X-Google-Smtp-Source: APXvYqxrxJ6f5gcwOvxklU9HO4h4OF+p5nSRTWaf0Mi726mZOEO7tha0ZCSglPRdKYDVM/d5m/f2qg==
X-Received: by 2002:a05:6512:146:: with SMTP id
 m6mr5406980lfo.90.1564949824886; 
 Sun, 04 Aug 2019 13:17:04 -0700 (PDT)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 p87sm16540794ljp.50.2019.08.04.13.17.02
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 13:17:04 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH v1 02/16] drm/exynos: fix opencoded use of drm_panel_*
Date: Sun,  4 Aug 2019 22:16:23 +0200
Message-Id: <20190804201637.1240-3-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190804201637.1240-1-sam@ravnborg.org>
References: <20190804201637.1240-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_131706_716553_45B53621 
X-CRM114-Status: GOOD (  15.95  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
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

drm_panel_attach() will check if there is a controller
already attached - drop the check in the driver.

Use drm_panel_get_modes() so the driver no longer uses the function
pointer.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Cc: Inki Dae <inki.dae@samsung.com>
Cc: Joonyoung Shim <jy0922.shim@samsung.com>
Cc: Seung-Woo Kim <sw0312.kim@samsung.com>
Cc: Kyungmin Park <kyungmin.park@samsung.com>
Cc: Kukjin Kim <kgene@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-samsung-soc@vger.kernel.org
---
 drivers/gpu/drm/exynos/exynos_drm_dpi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/exynos/exynos_drm_dpi.c b/drivers/gpu/drm/exynos/exynos_drm_dpi.c
index 3cebb19ec1c4..5479ff71cbc6 100644
--- a/drivers/gpu/drm/exynos/exynos_drm_dpi.c
+++ b/drivers/gpu/drm/exynos/exynos_drm_dpi.c
@@ -43,7 +43,7 @@ exynos_dpi_detect(struct drm_connector *connector, bool force)
 {
 	struct exynos_dpi *ctx = connector_to_dpi(connector);
 
-	if (ctx->panel && !ctx->panel->connector)
+	if (ctx->panel)
 		drm_panel_attach(ctx->panel, &ctx->connector);
 
 	return connector_status_connected;
@@ -85,7 +85,7 @@ static int exynos_dpi_get_modes(struct drm_connector *connector)
 	}
 
 	if (ctx->panel)
-		return ctx->panel->funcs->get_modes(ctx->panel);
+		return drm_panel_get_modes(ctx->panel);
 
 	return 0;
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
