Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2869E115C96
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Dec 2019 15:04:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3USKUtcR0HsLqnavyDq9wOkQl42lTz8sBH/1y3x6aHY=; b=dXPQWbIZmLj6rs
	ncmzdIUzwIkI8BFBTRZ6u+eZFdQriBMUWmldVNBzmmKnH12PDzSK4btYOKVWbkY4h3SQO1ev/EJvW
	dlE5X9yAXm7/xf9YZ49KvZyLvFIP1yK8EYwKbcTBiJ0NnYuH4ajJUDBEV8/h0kTBNlzBia9ggiB3l
	w6hobice/ldJKpD1DtF1ebcCvnV4U6WnwbbW/m+Yd1mOrkgJBhoyQ7QAbLSVBMaagEXRcF61FT45c
	ID+GwkbCdgSAeZ9Z03bt05nCQlq+KouCq0/2O3kDe+wKZFgjBcUIZW1Z0p1DRHlOuBuLMy+dicFpQ
	I7c8kz/mGZlb5BbcHccg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idahA-0005W7-8E; Sat, 07 Dec 2019 14:04:28 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idags-0005Uz-ED; Sat, 07 Dec 2019 14:04:13 +0000
Received: by mail-lj1-x244.google.com with SMTP id a13so10680280ljm.10;
 Sat, 07 Dec 2019 06:04:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=09R7/ETfAQongQcpHtYMvdgzNr6cEpi4kt0evNQlel8=;
 b=eUPpUGcM24jDpW09ox7tYraxBMMPEoKCHBpyoFXU1ns5j5BvUftRnblywc3foi01+4
 3A+ev/GecfdzXRjqwAcMS7rNmEmYpiozwEokncVBQetDG7bcNV3lI4cydiiOh0QpHJk3
 jK/rvpbz+6e5uvZkap5tHgKSt8VfyPFChgne+wo4LZCzX8MGTZsid4cbYNtuBXEzzB7z
 Sx35EmAqlw0iGBTV8Bg5MK0kgjSgE1VrwrfGdMQ6RdfMVR7MZPBOPBQZNi0qIGUpNFYz
 8g+cfSCeP9qNF7zrJ3v+L4qVEkVD75c5JDBCiG0OvRCLFrPzt7FRGQnuyY+6j15UP0DJ
 hsOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=09R7/ETfAQongQcpHtYMvdgzNr6cEpi4kt0evNQlel8=;
 b=NsWz5iiE5SuTzFGJTGdj5JKQ1HyUPZ2AiUkIJGS4QLvnQ4idvosSuwdc5I65mOknTm
 J3nSosutAWIIhcFVwhthRamNp1vtH+Vo+UeLQsAIIG69m+O8T4Zpem4pEUydbJ844rMW
 A1p6QdR4ShxVn8+pSLzqwGB6G5FqDof9oJbkIHFkD7tCTrdGFhaSSqJWTBY7r1rYVf9h
 IzM/sJi7jes1LmocxzFWTKlR4N2JeWBgO2FPSt2P0FswN3CpMpxqJAS7TE8d557TkmxS
 Xu6mxiB0nijrq/m5RoCX2dRV5rK1tE8HU5ESvsMa5Mk+w2fbSb7odvD9G6FsDwIvUVAm
 3r/g==
X-Gm-Message-State: APjAAAXKfgRlVbzu3PaGzTMp5y48uyBerpSwYsMdpoSJMziEMiiJdPpE
 JoOi5zraeUjgTc/AyR4MkLg=
X-Google-Smtp-Source: APXvYqzzuQW/QsZdeNm/EDYoiqS87VHKamnYK3WVlv8ULbQEytIe7i24ai/v96Ta4eVh7joLCdMOCQ==
X-Received: by 2002:a2e:b017:: with SMTP id y23mr11609484ljk.229.1575727445413; 
 Sat, 07 Dec 2019 06:04:05 -0800 (PST)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 w17sm5644188lfn.22.2019.12.07.06.04.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 07 Dec 2019 06:04:04 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sam Ravnborg <sam@ravnborg.org>
Subject: [PATCH v2 0/25] drm/panel infrastructure + backlight update
Date: Sat,  7 Dec 2019 15:03:28 +0100
Message-Id: <20191207140353.23967-1-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_060410_507084_5742C9E2 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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
 linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
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

This patchset include a couple of different
things - all related to panels.

- The callbacks are optional - so drop error if
  callback is not present.
 
- Add support for backlight in drm_panel.
  This allows us to make much simpler backlight
  support to most panels.
  The patchset include conversion of most of the
  trivial cases.

- Drop drm_connector from drm_panel.
  This change required many changes to most
  panels and many bridges and display drivers.
  This is by far the most invasive change in this patchset.

With this patchset drm_panel_(attach|detach) are nop's
but they are kept for now.

A few of these patches has been sent out before - but versioning
started again from v1 - as the most patches are new.

I have tested the panel-simple changes, and thus some
of the infrastructure changes.
The testing was done on an earlier iteration - and I ended
up submitting this as Laurent and others started to depend on it.

v2:
  This is mostly addressing comments from Laurent.
  - drop get_timings removal, we should start using it
  - do not fail in drm_panel_of_backlight() if DT is not enabled
  - updated changelogs and code comments in many places (thanks Laurent!)
  - get_modes is a mandatory callback - return -EOPNOTSUPP if not specified
  - log if backlight update fails
  - added a-b/r-bs
    o thanks to Laurent and Linus for the prompt reviews!

When "drm/panel: add backlight support" is reviewed I plan to
apply the full series to drm-misc-next.

	Sam

Sam Ravnborg (25):
      drm/drm_panel: no error when no callback
      drm/panel: add backlight support
      drm/panel: simple: use drm_panel backlight support
      drm: get drm_bridge_panel connector via helper
      drm/panel: add drm_connector argument to get_modes()
      drm/panel: decouple connector from drm_panel
      drm/panel: drop drm_device from drm_panel
      drm/panel: feiyang-fy07024di26a30d: use drm_panel backlight support
      drm/panel: ilitek-ili9881c: use drm_panel backlight support
      drm/panel: innolux-p079zca: use drm_panel backlight support
      drm/panel: kingdisplay-kd097d04: use drm_panel backlight support
      drm/panel: lvds: use drm_panel backlight support
      drm/panel: olimex-lcd-olinuxino: use drm_panel backlight support
      drm/panel: osd-osd101t2587-53ts: use drm_panel backlight support
      drm/panel: panasonic-vvx10f034n00: use drm_panel backlight support
      drm/panel: raydium-rm68200: use drm_panel backlight support
      drm/panel: rocktech-jh057n00900: use drm_panel backlight support
      drm/panel: ronbo-rb070d30: use drm_panel backlight support
      drm/panel: seiko-43wvf1g: use drm_panel backlight support
      drm/panel: sharp-lq101r1sx01: use drm_panel backlight support
      drm/panel: sharp-ls043t1le01: use drm_panel backlight support
      drm/panel: sitronix-st7701: use drm_panel backlight support
      drm/panel: sitronix-st7789v: use drm_panel backlight support
      drm/panel: tpo-td028ttec1: use drm_panel backlight support
      drm/panel: tpo-tpg110: use drm_panel backlight support

 drivers/gpu/drm/bridge/analogix/analogix-anx6345.c |   2 +-
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c |   2 +-
 drivers/gpu/drm/bridge/panel.c                     |  19 +++-
 drivers/gpu/drm/bridge/parade-ps8622.c             |   2 +-
 drivers/gpu/drm/bridge/tc358764.c                  |   2 +-
 drivers/gpu/drm/bridge/tc358767.c                  |   2 +-
 drivers/gpu/drm/bridge/ti-sn65dsi86.c              |   2 +-
 drivers/gpu/drm/drm_panel.c                        | 107 +++++++++++++++++----
 drivers/gpu/drm/exynos/exynos_drm_dpi.c            |   2 +-
 drivers/gpu/drm/exynos/exynos_drm_dsi.c            |   2 +-
 drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_rgb.c          |   2 +-
 drivers/gpu/drm/imx/imx-ldb.c                      |   2 +-
 drivers/gpu/drm/imx/parallel-display.c             |   2 +-
 drivers/gpu/drm/mediatek/mtk_dsi.c                 |   2 +-
 .../gpu/drm/msm/disp/mdp4/mdp4_lvds_connector.c    |   2 +-
 drivers/gpu/drm/msm/dsi/dsi_manager.c              |   2 +-
 drivers/gpu/drm/mxsfb/mxsfb_out.c                  |   2 +-
 drivers/gpu/drm/omapdrm/omap_connector.c           |   3 +-
 drivers/gpu/drm/panel/panel-arm-versatile.c        |   6 +-
 .../gpu/drm/panel/panel-feiyang-fy07024di26a30d.c  |  16 ++-
 drivers/gpu/drm/panel/panel-ilitek-ili9322.c       |  19 ++--
 drivers/gpu/drm/panel/panel-ilitek-ili9881c.c      |  29 ++----
 drivers/gpu/drm/panel/panel-innolux-p079zca.c      |  45 +++------
 drivers/gpu/drm/panel/panel-jdi-lt070me05000.c     |  11 ++-
 drivers/gpu/drm/panel/panel-kingdisplay-kd097d04.c |  43 +++------
 drivers/gpu/drm/panel/panel-lg-lb035q02.c          |   6 +-
 drivers/gpu/drm/panel/panel-lg-lg4573.c            |  12 +--
 drivers/gpu/drm/panel/panel-lvds.c                 |  46 ++-------
 drivers/gpu/drm/panel/panel-nec-nl8048hl11.c       |   6 +-
 drivers/gpu/drm/panel/panel-novatek-nt39016.c      |   6 +-
 drivers/gpu/drm/panel/panel-olimex-lcd-olinuxino.c |  27 ++----
 drivers/gpu/drm/panel/panel-orisetech-otm8009a.c   |  11 ++-
 drivers/gpu/drm/panel/panel-osd-osd101t2587-53ts.c |  37 +++----
 .../gpu/drm/panel/panel-panasonic-vvx10f034n00.c   |  58 +++--------
 .../gpu/drm/panel/panel-raspberrypi-touchscreen.c  |   9 +-
 drivers/gpu/drm/panel/panel-raydium-rm67191.c      |   8 +-
 drivers/gpu/drm/panel/panel-raydium-rm68200.c      |  26 +++--
 drivers/gpu/drm/panel/panel-rocktech-jh057n00900.c |  35 +++----
 drivers/gpu/drm/panel/panel-ronbo-rb070d30.c       |  31 ++----
 drivers/gpu/drm/panel/panel-samsung-ld9040.c       |   4 +-
 drivers/gpu/drm/panel/panel-samsung-s6d16d0.c      |   6 +-
 drivers/gpu/drm/panel/panel-samsung-s6e3ha2.c      |   6 +-
 drivers/gpu/drm/panel/panel-samsung-s6e63j0x03.c   |   6 +-
 drivers/gpu/drm/panel/panel-samsung-s6e63m0.c      |   6 +-
 drivers/gpu/drm/panel/panel-samsung-s6e8aa0.c      |   4 +-
 drivers/gpu/drm/panel/panel-seiko-43wvf1g.c        |  54 +++--------
 drivers/gpu/drm/panel/panel-sharp-lq101r1sx01.c    |  34 +++----
 drivers/gpu/drm/panel/panel-sharp-ls037v7dw01.c    |   6 +-
 drivers/gpu/drm/panel/panel-sharp-ls043t1le01.c    |  33 +++----
 drivers/gpu/drm/panel/panel-simple.c               |  92 ++++++------------
 drivers/gpu/drm/panel/panel-sitronix-st7701.c      |  23 ++---
 drivers/gpu/drm/panel/panel-sitronix-st7789v.c     |  49 ++--------
 drivers/gpu/drm/panel/panel-sony-acx565akm.c       |   6 +-
 drivers/gpu/drm/panel/panel-tpo-td028ttec1.c       |  20 ++--
 drivers/gpu/drm/panel/panel-tpo-td043mtea1.c       |   6 +-
 drivers/gpu/drm/panel/panel-tpo-tpg110.c           |  26 ++---
 drivers/gpu/drm/panel/panel-truly-nt35597.c        |   4 +-
 drivers/gpu/drm/pl111/pl111_drv.c                  |   2 +-
 drivers/gpu/drm/rcar-du/rcar_lvds.c                |   2 +-
 drivers/gpu/drm/rockchip/rockchip_lvds.c           |   2 +-
 drivers/gpu/drm/sti/sti_dvo.c                      |   2 +-
 drivers/gpu/drm/sun4i/sun4i_lvds.c                 |   2 +-
 drivers/gpu/drm/sun4i/sun4i_rgb.c                  |   2 +-
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c             |   2 +-
 drivers/gpu/drm/tegra/output.c                     |   2 +-
 drivers/gpu/drm/tve200/tve200_drv.c                |   2 +-
 include/drm/drm_bridge.h                           |   1 +
 include/drm/drm_panel.h                            |  61 ++++++++----
 68 files changed, 491 insertions(+), 620 deletions(-)



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
