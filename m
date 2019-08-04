Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB12780C7F
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  4 Aug 2019 22:17:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=leiicJ+qcpxYeaQvrZuKccxc+jsRaS+54TrrsmVxMDk=; b=LxI0kKI5ciBqgv
	hWxwRAyEAyUcmvW66k+rAgl+63Qb1LHqpnPNlkpa8Z6KIGF7VaqRDEpqlePuyiijdktjSom7Tu0mA
	RGTPmb8lo8KRC5yqeDu2mE6FROUqxacjPpmeatAZnSJg/q8HqcspXVCvovlVRzDr8nIINTqbJs1V+
	D5OHdbRq4fPdEbSSF4kEzi3lkOmuVmHM9VEpFWUvremosFLqnaSVajYK/yMxw35htzyd7/8pvgNQJ
	vqeLy1opZT0x57fNfH1grzsms7B03hTGb3A0X7Ugu5qCF94EWyZ9dYXsQgb/3wUAq8ZXXiW04InpK
	QYl8YZb7rgf1ukn+b/yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huMwt-0000SM-42; Sun, 04 Aug 2019 20:17:47 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huMwI-0008Jm-8z
 for linux-arm-kernel@lists.infradead.org; Sun, 04 Aug 2019 20:17:11 +0000
Received: by mail-lj1-x241.google.com with SMTP id m23so77345213lje.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 04 Aug 2019 13:17:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1TEXaZ1KpdAoiO85boEPTBxnq8MPM5bbeG78Znsg1kk=;
 b=UY9E/BN/VsoWEhEtkdN8SUZ6JHfj/MBgZgo1KwFNcuBN2pN7TOGU5AbsZbBMQBBMp/
 +KPl14S0+PYrY1NlQyBlfArZikLv53LGe2G/hMahk+c88DAkGoN1qgt0F0pIFL6MlC69
 Lcg7RTaWFBAx4PfmCtkLgYHY73b8PSgMP9+nEJT1uYEv3otLP4iBzlNGlEbAcG98zDQZ
 E6yypKdyIS1mOqIB1qbZbUit/9wBYgZ6PRdzJSzvLpvas00dvht3i0+tzIDnbOuyzH3p
 RAn2m/o5JiW0VANG9Eoc7to6esERy5lprBeYjTpFb798pyI2UJNt8Ef9POkUjSlMe9BK
 Z98A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=1TEXaZ1KpdAoiO85boEPTBxnq8MPM5bbeG78Znsg1kk=;
 b=nMeh26U8Lr4ppT2r7qGphiTpYdxSi7l6IRWIkfktU9GFyx6bQ8k1fMwjQsdNhRHmo2
 NYkaM34+c6Xl4D0vvOGd9XFT1LtwMC9FhMU0wbMhSFq/rPniUDQxLsFW+aJQ47c20N1B
 KQ6xi9yiIu6AfvmtvHJlAZSEVuRelL/6ADN9KbTI02n/VTFAEH/SYTvp4Q6kmftXsNgB
 ewrbh5VXhSPMe2xtwQkrjLP5EI+4bOD/WxECFKAr9IzPKs+y0Rk4ZSyKzewN45p70WBq
 RFK2u7xZzuPJ4C3qkEMnxIqGAUDzmBkbrCgsYoiZe02wiJY06L8bWlwzs4m8MTMlOZg4
 ygSw==
X-Gm-Message-State: APjAAAWp3oM922zTlB9SAklY7nUPOJntaya2M95uiIj1uyxBbon+2f6E
 4/xf66THjP8giva3z9tGKvQ=
X-Google-Smtp-Source: APXvYqyX2DV4pg4STFder0QLYZxjB3cRp7z66cR5BIB23ZVo0ZMYOEKaRseLqKMG0kPOviSdCK01aQ==
X-Received: by 2002:a2e:3211:: with SMTP id y17mr38833847ljy.86.1564949828875; 
 Sun, 04 Aug 2019 13:17:08 -0700 (PDT)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 p87sm16540794ljp.50.2019.08.04.13.17.06
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 13:17:08 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH v1 03/16] drm/exynos: fix opencoded use of drm_panel_*
Date: Sun,  4 Aug 2019 22:16:24 +0200
Message-Id: <20190804201637.1240-4-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190804201637.1240-1-sam@ravnborg.org>
References: <20190804201637.1240-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_131710_350781_F8B7A9EF 
X-CRM114-Status: GOOD (  15.26  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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

Call via drm_panel_get_modes().

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
 drivers/gpu/drm/exynos/exynos_drm_dsi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/exynos/exynos_drm_dsi.c b/drivers/gpu/drm/exynos/exynos_drm_dsi.c
index 6926cee91b36..36b02b456d9c 100644
--- a/drivers/gpu/drm/exynos/exynos_drm_dsi.c
+++ b/drivers/gpu/drm/exynos/exynos_drm_dsi.c
@@ -1460,7 +1460,7 @@ static int exynos_dsi_get_modes(struct drm_connector *connector)
 	struct exynos_dsi *dsi = connector_to_dsi(connector);
 
 	if (dsi->panel)
-		return dsi->panel->funcs->get_modes(dsi->panel);
+		return drm_panel_get_modes(dsi->panel);
 
 	return 0;
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
