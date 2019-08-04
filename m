Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3371F80C53
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  4 Aug 2019 22:17:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ukvavvy0D6tYViD1ZzTt8kBSQMRyEE2KeHC0/XjiQs4=; b=jd5RgXsRA3mGbQ
	l+ayklqnKYzia0MIDMo7iUyWiDVABCFPVTYIWiI8jRQ6JTyW69tmQcOy4+822Lmq5zuTGKP95x0NJ
	wBuwBgBk/A00hTZg+Ee3S/tyxa7qjv/UfxtTGR8MIgQK25hi3LlbBGdI2+07gsYUQ8k9FRZa2/hNg
	5YJx3PYh8lnn6xyWLqhLEvGLhZEuxDjK7D8VsQiSxKeszGGdq+OPFBk4r6rDkK2JK0awoYaQCsj0w
	NU88ks8/z6hZRHDfyV5ep8XiMFo4kVeK4jhg4w1OWG4Mqa0hBlJt7mLufafHM4Q8i5XvtRGQYB8a4
	FPGCeui+mRfBiS+bXsLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huMwG-0008CS-MO; Sun, 04 Aug 2019 20:17:08 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huMw7-0008BN-7F
 for linux-arm-kernel@lists.infradead.org; Sun, 04 Aug 2019 20:17:03 +0000
Received: by mail-lj1-x241.google.com with SMTP id p17so77442758ljg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 04 Aug 2019 13:16:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3JqNJR/tbllInqzUqAgcIBZy8c2/hdUEosVg+96WWSo=;
 b=OFo5m7UYW1t09ibVa24pGV8LSs92/jiLMbnmIRIrUAONwdrp/xVYrUT41t4kq7FAXt
 XWCk8JrCjhMvDYV4roa7yWoSu242TuRiw9Ov/1WsXSkKId0Yt+d1PIlxD5OImGaol8Z7
 zrglP6rxfB9ty7sP5J7PDoED29Z7fxR6dK+xKEnLZvKfQkRVYJ5lnlgucCLlkbag3ZJq
 tIl9ttBBlOUipT0Kt8rzjyQ7gvYGhWrir+mA820NfHzaPdOc2cSw2MG4ECkDp/MYAARi
 WksCS7ziA1MMweO/fYeDo7M870dhtafgJdCrLF5JbbsXWYnV9Z6Eydf5FTn//cJ6tYZ+
 AbMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=3JqNJR/tbllInqzUqAgcIBZy8c2/hdUEosVg+96WWSo=;
 b=Zk5ZZcSHmlcurx6NEZxM3AnPts8cj0c/Mrv0iWJRwKd8PHEyBYAnMM89eVc6w13i8g
 qV4XKrZa3gJyxL/kAcKQPvwYwt8sEtyCDv75iP402EzT1NTTu8pdiKYl3Voux+UJgCxf
 e0FqJwh+nGmQdzCwh+0appnwh47ud/UIONgxeae5aYiSVfqNQDxdTvpyBdM8O/Xuh2Dt
 RYbdxX2X/io4wSifbcM4QUL93QnYIW1uho4878W/w1xLXGpV7NbiogvMz3t8qlHRLOnP
 yiAxHJIQ2xBitt8c47/YgHc1ugHULCv6ofjLLig8nMEe+lZlQ3GZiKLNjnJ+zch1DKTG
 dyfQ==
X-Gm-Message-State: APjAAAXGOJa2lHY8rE3l+FOFMjl2IwMJ7uMEr7IsN920YFQfpVL7nCeu
 V13N63tpmeRrVuRiH7ArRZA=
X-Google-Smtp-Source: APXvYqxubNgp0cYLhN8wuC7+2LA2WOAC50nfeiKvF5Oq3p74Zf9n27xnchcBuEjvjjCBlvoc6/29TQ==
X-Received: by 2002:a2e:8559:: with SMTP id u25mr13365606ljj.224.1564949816865; 
 Sun, 04 Aug 2019 13:16:56 -0700 (PDT)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 p87sm16540794ljp.50.2019.08.04.13.16.54
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 13:16:56 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH v1 0/16] drm: panel related updates
Date: Sun,  4 Aug 2019 22:16:21 +0200
Message-Id: <20190804201637.1240-1-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_131659_287830_535468B8 
X-CRM114-Status: GOOD (  13.32  )
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

The first 9 patches replaces direct use of the drm_panel
function pointers with their drm_panel_* counterparts.
The function pointers are only supposed to be used by
the drm_panel infrastructure and direct use are discouraged.

ili9322 is updated to handle bus_flags in get_modes like everyone else.
This is in preparation for a later patch series where controller
becomes an arugument to get_modes() and not like today where drm_panel
is attached to a controller.

The remaining patches move functionality to the drm_panel core that
today are repeated in many drivers.
As preparation for this the inline functions are moved to drm_panel.c
and kernel-doc is made inline.
panel-simple is updated to benefit from the additional infrastructure
and is an example for the simplifications that can be done.

The patchset has been tested on my embedded target,
and build tested.

Feedback welcome!

The "fix opencoded" patches are all independent and can be applied
out of order. They were kept here to keep panel related patches in one series.

	Sam

Cc: Alexios Zavras <alexios.zavras@intel.com>
Cc: Alison Wang <alison.wang@nxp.com>
Cc: Allison Randal <allison@lohutok.net>
Cc: Andrzej Hajda <a.hajda@samsung.com>
Cc: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: David Airlie <airlied@linux.ie>
Cc: Enrico Weigelt <info@metux.net>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Cc: Inki Dae <inki.dae@samsung.com>
Cc: Jernej Skrabec <jernej.skrabec@siol.net>
Cc: Jonas Karlman <jonas@kwiboo.se>
Cc: Jonathan Hunter <jonathanh@nvidia.com>
Cc: Joonyoung Shim <jy0922.shim@samsung.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Kukjin Kim <kgene@kernel.org>
Cc: Kyungmin Park <kyungmin.park@samsung.com>
Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Cc: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-samsung-soc@vger.kernel.org
Cc: linux-tegra@vger.kernel.org
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Marek Vasut <marex@denx.de>
Cc: Maxime Ripard <maxime.ripard@bootlin.com>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Sean Paul <sean@poorly.run>
Cc: Seung-Woo Kim <sw0312.kim@samsung.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Stefan Agner <stefan@agner.ch>
Cc: Thierry Reding <thierry.reding@gmail.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Vincent Abriou <vincent.abriou@st.com>

Sam Ravnborg (16):
      drm/bridge: tc358767: fix opencoded use of drm_panel_*
      drm/exynos: fix opencoded use of drm_panel_*
      drm/exynos: fix opencoded use of drm_panel_*
      drm/imx: fix opencoded use of drm_panel_*
      drm/fsl-dcu: fix opencoded use of drm_panel_*
      drm/msm: fix opencoded use of drm_panel_*
      drm/mxsfb: fix opencoded use of drm_panel_*
      drm/sti: fix opencoded use of drm_panel_*
      drm/tegra: fix opencoded use of drm_panel_*
      drm/panel: ili9322: move bus_flags to get_modes()
      drm/panel: move drm_panel functions to .c file
      drm/panel: use inline comments in drm_panel.h
      drm/panel: drop return code from drm_panel_detach()
      drm/panel: call prepare/enable only once
      drm/panel: add backlight support
      drm/panel: simple: use drm_panel infrastructure

 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c |   3 +-
 drivers/gpu/drm/bridge/tc358767.c                  |  10 +-
 drivers/gpu/drm/drm_panel.c                        | 185 ++++++++++++++++-
 drivers/gpu/drm/exynos/exynos_drm_dpi.c            |   4 +-
 drivers/gpu/drm/exynos/exynos_drm_dsi.c            |   2 +-
 drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_rgb.c          |  10 +-
 drivers/gpu/drm/imx/imx-ldb.c                      |  11 +-
 drivers/gpu/drm/imx/parallel-display.c             |  11 +-
 .../gpu/drm/msm/disp/mdp4/mdp4_lvds_connector.c    |   2 +-
 drivers/gpu/drm/mxsfb/mxsfb_out.c                  |   2 +-
 drivers/gpu/drm/panel/panel-ilitek-ili9322.c       |  34 ++-
 drivers/gpu/drm/panel/panel-simple.c               |  73 +------
 drivers/gpu/drm/sti/sti_dvo.c                      |   8 +-
 drivers/gpu/drm/tegra/output.c                     |   2 +-
 include/drm/drm_panel.h                            | 227 +++++++++++----------
 15 files changed, 349 insertions(+), 235 deletions(-)



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
