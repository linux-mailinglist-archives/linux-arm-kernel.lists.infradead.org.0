Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E405910F13A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 20:59:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=igRqjOuNAAQhVJwNjZgob5jdLItM4FcLoCnDSZXEpPQ=; b=KXoEcbbKXwFRFa
	CN6TWxDpLXGx4X9Ik2liJ2Fh8ZONVwwvf0YtuuUX7gY2A7LGi316VozOLX6+auLUYXrlBtC3tloCT
	kty8d7m30tm6/hVUXaruE2XdWOoRu2ILvZD+kGMZdivs56NLBVh1kiSnKZ+YNS8p1M43AXsAzi90b
	sVo3AXd9OD6jFtngFAfwNXMzIVIXdavRAB21IcJshX0Coi9nqbFXN1fUuIbAYxFiUyKgr5mzU3J1/
	jg5CrcrVn38T0Yi5CXR471/r3IU7jguJYJV/yQ5QDmOPYIwCyh4gsTfPsLOBkxq4JjiVpeZjhTt6P
	fBTGVoa0SjXShn6LPqeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibrrQ-0001o2-DR; Mon, 02 Dec 2019 19:59:56 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibrrD-0001li-VY; Mon, 02 Dec 2019 19:59:45 +0000
Received: by mail-il1-x143.google.com with SMTP id w13so886503ilo.1;
 Mon, 02 Dec 2019 11:59:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/1GIiVAt9IkBpoZ9Uj4zenbh/EnV7XYXqjcP5Gkayek=;
 b=InHq5aiL3hR9tFDnhuqx6aayq30VOPnHw69PCMZh0fSzKM55HtwqVJl0b4YhHu7o0S
 +vKSRzTuJwrb/lXpHGExaIBaelO+6e1no2J7UB2BWeJc2O8zSrV6zrjf11Joenv7+K+O
 bIOK66rwnalFLRsaiCMoP1L5Q+Gri2cgksvOUQua6x2NZ9JNO0modjT5LhxhvqbmC8dc
 2FZZWCxZ4UxsFPSHkDVN45m1Rxjv8DMuTLQZdROk5eqrpDHYKSl4SPzzPtiTLnQvNG4L
 Gdc25pYlvp0qSQqCaGqVXUgLhtnumBY8uup6p7tMk8yK2DpH0DcOK17AODcn1FefgjKv
 oLRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/1GIiVAt9IkBpoZ9Uj4zenbh/EnV7XYXqjcP5Gkayek=;
 b=q+hO3jzAUPXrexqIFoFOJMuCDVrKsXsOwEApr79wxzos+xjyTV2zZobjwt2yCQINDl
 USckEEkCVGNiH++rzB6fylOepLWebIw8HRgD+wpjgPk9+pkgDZgrylchBwQPUCUNK2iD
 GpvWoYu7AOixTBzpN6WKlHkP9IOqUST+4ccRILUHnwrUgENS93sQ3rG9UhEwfUKqHZQw
 QSyk5zCNosec5PvaM4TmJgfgPVocn/hPoFN5HUASy/QG9MaNrDGhDxBiCH2zJ+pVGwUN
 vr/fqixKZhmki7UGHGfL0Vi+XFIS8vbiJIsEHz+yDavvayS9Nv/uyQQQ5PeGgfSWh3TW
 m68w==
X-Gm-Message-State: APjAAAXeivuTcXrFyLDRIGodBDPNnSkNDvwA4rUCYQfqw78Y++FNrkpo
 aiFVbs8cqtsYuBhIwIhhA+UIjlk/hUyLgXFp5Po=
X-Google-Smtp-Source: APXvYqx6YUMOUm+z16ig9xldwuTeM19+Bd22B3aBAblOLhFaOGglg7N1XrSehMoTWzvuuSea3OH9TLlXRGuqdFXhTE0=
X-Received: by 2002:a92:4891:: with SMTP id j17mr565262ilg.33.1575316780879;
 Mon, 02 Dec 2019 11:59:40 -0800 (PST)
MIME-Version: 1.0
References: <20191202193230.21310-1-sam@ravnborg.org>
In-Reply-To: <20191202193230.21310-1-sam@ravnborg.org>
From: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
Date: Mon, 2 Dec 2019 12:59:29 -0700
Message-ID: <CAOCk7NoKPoxcETLYQ4CyAtYGnPwvYapdSavZM=aRdswDydTLEA@mail.gmail.com>
Subject: Re: [PATCH v1 0/26] drm/panel infrastructure + backlight update
To: Sam Ravnborg <sam@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_115944_020011_0AA751B6 
X-CRM114-Status: GOOD (  19.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jeffrey.l.hugo[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Andrzej Hajda <a.hajda@samsung.com>, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 linux-samsung-soc@vger.kernel.org, Abhinav Kumar <abhinavk@codeaurora.org>,
 linux-rockchip@lists.infradead.org, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 NXP Linux Team <linux-imx@nxp.com>, Jagan Teki <jagan@amarulasolutions.com>,
 Jitao Shi <jitao.shi@mediatek.com>, Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, linux-mediatek@lists.infradead.org,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 linux-tegra@vger.kernel.org, Sean Paul <sean@poorly.run>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Purism Kernel Team <kernel@puri.sm>, linux-renesas-soc@vger.kernel.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 2, 2019 at 12:33 PM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> This patchset include a couple of different
> things - all related to panels.
>
> - The panel callbacks are optional - so drop error if
>   callback is not present.
>
> - Add support for backlight in drm_panel.
>   This allows us to make much simpler backlight
>   support to most panels.
>   The patchset include conversion of most of the
>   trivial cases.
>
> - Drop drm_connector from drm_panel.
>   This change required many changes to most
>   panels and many bridges and display drivers.
>   This is by far the most invasive change in this patchset.
>
> - Drop the unused get_timings() callback.
>   No users, so no need to keep it around.
>
> With this patchset drm_panel_(attach|detach) are nop's
> but they are kept for now.
>
> A few of these patches has been sent out before - but versioning
> started again from v1 - as the most patches are new.
>
> I have tested the panel-simple changes, and thus some
> of the infrastructure changes.
> The testing was done on an earlier iteration - and I ended
> up submitting this as Laurent and others started to depend on it.
> Jitao has a patch to add more callbacks, and I wanted the
> simplification of the callbacks before we add more callbacks.
>
>         Sam
>
>
> Sam Ravnborg (26):
>       drm/drm_panel: no error when no callback
>       drm/panel: add backlight support
>       drm/panel: simple: use drm_panel backlight support
>       drm: get drm_bridge_panel connector via helper
>       drm/panel: add drm_connector argument to get_modes()
>       drm/panel: decouple connector from drm_panel
>       drm/panel: remove get_timings
>       drm/panel: drop drm_device from drm_panel
>       drm/panel: feiyang-fy07024di26a30d: use drm_panel backlight support
>       drm/panel: ilitek-ili9881c: use drm_panel backlight support
>       drm/panel: innolux-p079zca: use drm_panel backlight support
>       drm/panel: kingdisplay-kd097d04: use drm_panel backlight support
>       drm/panel: lvds: use drm_panel backlight support
>       drm/panel: olimex-lcd-olinuxino: use drm_panel backlight support
>       drm/panel: osd-osd101t2587-53ts: use drm_panel backlight support
>       drm/panel: panasonic-vvx10f034n00: use drm_panel backlight support
>       drm/panel: raydium-rm68200: use drm_panel backlight support
>       drm/panel: rocktech-jh057n00900: use drm_panel backlight support
>       drm/panel: ronbo-rb070d30: use drm_panel backlight support
>       drm/panel: seiko-43wvf1g: use drm_panel backlight support
>       drm/panel: sharp-lq101r1sx01: use drm_panel backlight support
>       drm/panel: sharp-ls043t1le01: use drm_panel backlight support
>       drm/panel: sitronix-st7701: use drm_panel backlight support
>       drm/panel: sitronix-st7789v: use drm_panel backlight support
>       drm/panel: tpo-td028ttec1: use drm_panel backlight support
>       drm/panel: tpo-tpg110: use drm_panel backlight support
>
>  drivers/gpu/drm/bridge/analogix/analogix-anx6345.c |   2 +-
>  drivers/gpu/drm/bridge/analogix/analogix_dp_core.c |   2 +-
>  drivers/gpu/drm/bridge/panel.c                     |  18 +++-
>  drivers/gpu/drm/bridge/parade-ps8622.c             |   2 +-
>  drivers/gpu/drm/bridge/tc358764.c                  |   2 +-
>  drivers/gpu/drm/bridge/tc358767.c                  |   2 +-
>  drivers/gpu/drm/bridge/ti-sn65dsi86.c              |   2 +-
>  drivers/gpu/drm/drm_panel.c                        |  96 ++++++++++++++----
>  drivers/gpu/drm/exynos/exynos_drm_dpi.c            |   2 +-
>  drivers/gpu/drm/exynos/exynos_drm_dsi.c            |   2 +-
>  drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_rgb.c          |   2 +-
>  drivers/gpu/drm/imx/imx-ldb.c                      |   2 +-
>  drivers/gpu/drm/imx/parallel-display.c             |   2 +-
>  drivers/gpu/drm/mediatek/mtk_dsi.c                 |   2 +-
>  .../gpu/drm/msm/disp/mdp4/mdp4_lvds_connector.c    |   2 +-
>  drivers/gpu/drm/msm/dsi/dsi_manager.c              |   2 +-

How come the diff stat in the cover letter here indicates a change to
this file, yet I cannot find a change to this file in any of the
patches?  What am I missing?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
