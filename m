Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 755E6BB4C3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 15:04:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=byScM47WejrenZBFgVTGpeRuIAOAH5j100tfDSnG2+4=; b=IkQ7hak3C6As62
	FAAWtZDvIR4aLNz14iDAnSeVNhICjbJ6zqPAxPneBPtWUIWsZApG0lMrAHPasXh2sYUzyeb5NnSM6
	vLLTgxhB+FahZ+uvr2FQoLyVRVPKlICCnaYh1sf7kFE1YlqidWdTH1XpZX7WF6pmfvdiJNhn0uky4
	CpS6qfB74E1jpifvSJtO2ZqSaVL6dBreo+kQM7RAw5nl8gyYd1lvGvHNXfScC8ssKgYsQgdccSYkk
	5dJiZmDLEb3jMoaSz8iVFxJxehS7R35oN2PmAfisih8ysugdyCfu94WM1wPyn2JWknyYyLnENSk2u
	uXxvPcIdiJnbFaVneldg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCO0v-00044n-O3; Mon, 23 Sep 2019 13:04:25 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCO0g-000436-Kl
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 13:04:13 +0000
Received: by mail-oi1-x241.google.com with SMTP id k25so7431033oiw.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 06:04:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=piRs2IS5MOyFgqBghenqHp8ZimiG6fJnHJ/5Ma2bSsw=;
 b=k0+3XoDaSkpOoJigqWk57pFuEQHzOAHUh0BQi9tvzWlQJKuip366XA/RcMCAgmOJqg
 UdgKosQnH1HhES6H2OSmInQZFpf8XT9ESoOR4xoxk6r9mc012eB3etX5RhS5AsF0pgyZ
 wXrH32HFqWokGC1FONyBYc8WZdYqzMzoq30EQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=piRs2IS5MOyFgqBghenqHp8ZimiG6fJnHJ/5Ma2bSsw=;
 b=mx/SPxU7jgzIYi6YYVAsG9v0c+EIdwLhBJiGMX7E2D3B4wfi+RWNoDjQ1lTha/VmLk
 th9JUq8J8P+anCfnEts6UhGvFKl0UWTEK4jy6SZjPcDtcqAUPrj24MWPQVdqBGYBe9ub
 gOwl2o8KS8LRiMYIuP2+JiaMBdQzLQANqXb46VUSJE1SeKZcnRhg8SXJTIP8oIKxygos
 p5R62plBTeG5MGSiAGLaScBypfYaJbOvUEBWcsbqbQkG3oFq8MDPTxOZB1R2Km7YUATF
 PzBQ+Q81WoWZs+S64d/jVzz6Y8YM4bNODck3x2D4l45aKEZISkq03qbLRZf2BKdtse/4
 7Znw==
X-Gm-Message-State: APjAAAU6oAf8ydE2A/85LnVskZX3oinNCpkrZpqYR4LijNl7Re9798B0
 LHkwmbKr2CdlaPJYgUfFuKJR0IXGc4iADNjLgDTD4w==
X-Google-Smtp-Source: APXvYqz8rt1MdgTGBevIyRjqcmbavxEpW6EIa6vRQuuPJmmE7PEXmuGO9L6rXl5BG0tR+lTbhyax6yChhGQlUlXJhSc=
X-Received: by 2002:aca:eac5:: with SMTP id
 i188mr14118846oih.110.1569243848670; 
 Mon, 23 Sep 2019 06:04:08 -0700 (PDT)
MIME-Version: 1.0
References: <1569242365-182133-1-git-send-email-hjc@rock-chips.com>
In-Reply-To: <1569242365-182133-1-git-send-email-hjc@rock-chips.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Mon, 23 Sep 2019 15:03:56 +0200
Message-ID: <CAKMK7uFYmqEK5CGxiJhgPpYwt3StLDP0YgE5oVY2FiHEmbWQpA@mail.gmail.com>
Subject: Re: [PATCH 00/36] Add support 10bit yuv format
To: Sandy Huang <hjc@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_060411_202688_14184C9C 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-mediatek@lists.infradead.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 23, 2019 at 2:51 PM Sandy Huang <hjc@rock-chips.com> wrote:
>
> This series of patches is to add 2 plane YCbCr 10bit format
> support, but now the drm_format_info.cpp[3] unit is BytePerPlane,
> when we add define 10bit YUV format, here have some problems.
> So we change cpp to bpp, use unit BitPerPlane to describe the data
> format.

Wrong direction, we don't want more users of the old legacy cpp values
in the format structure. Instead if we want new stuff, add/extend
functions which can extract all kinds of interesting computed value
from the drm_format_info structure. See all the functions in
drm_fourcc.h.
-Daniel

>
> Sandy Huang (36):
>   drm/fourcc: Add 2 plane YCbCr 10bit format support
>   drm/rockchip: use bpp instead of cpp for drm_format_info
>   drm/i915: use bpp instead of cpp for drm_format_info
>   drm: exynos: use bpp instead of cpp for drm_format_info
>   drm/sun4i: use bpp instead of cpp for drm_format_info
>   drm/amd: use bpp instead of cpp for drm_format_info
>   drm/gma500: use bpp instead of cpp for drm_format_info
>   drm/msm: use bpp instead of cpp for drm_format_info
>   dm/vmwgfx: use bpp instead of cpp for drm_format_info
>   drm/arm: use bpp instead of cpp for drm_format_info
>   drm/armada: use bpp instead of cpp for drm_format_info
>   drm/radeon: use bpp instead of cpp for drm_format_info
>   drm/nouveau: use bpp instead of cpp for drm_format_info
>   drm/tegra: use bpp instead of cpp for drm_format_info
>   drm/mediatek: use bpp instead of cpp for drm_format_info
>   drm/tilcdc: use bpp instead of cpp for drm_format_info
>   drm/zte: use bpp instead of cpp for drm_format_info
>   drm/xen: use bpp instead of cpp for drm_format_info
>   drm/vkms: use bpp instead of cpp for drm_format_info
>   drm/ast: use bpp instead of cpp for drm_format_info
>   drm/vc4: use bpp instead of cpp for drm_format_info
>   drm/atmel-hlcdc: use bpp instead of cpp for drm_format_info
>   drm/cirrus: use bpp instead of cpp for drm_format_info
>   drm/hisilicon: use bpp instead of cpp for drm_format_info
>   drm/imx: use bpp instead of cpp for drm_format_info
>   drm/vboxvideo: use bpp instead of cpp for drm_format_info
>   drm/pl111: use bpp instead of cpp for drm_format_info
>   drm/qxl: use bpp instead of cpp for drm_format_info
>   drm/ingenic: use bpp instead of cpp for drm_format_info
>   drm/sti: use bpp instead of cpp for drm_format_info
>   drm/stm: use bpp instead of cpp for drm_format_info
>   drm/mcde: use bpp instead of cpp for drm_format_info
>   drm/mgag200: use bpp instead of cpp for drm_format_info
>   drm/tve200: use bpp instead of cpp for drm_format_info
>   drm/udl: use bpp instead of cpp for drm_format_info
>   drm/omapdrm: use bpp instead of cpp for drm_format_info
>
>  drivers/gpu/drm/amd/amdgpu/amdgpu_fb.c             |   2 +-
>  drivers/gpu/drm/amd/amdgpu/dce_v10_0.c             |   2 +-
>  drivers/gpu/drm/amd/amdgpu/dce_v11_0.c             |   2 +-
>  drivers/gpu/drm/amd/amdgpu/dce_v6_0.c              |   2 +-
>  drivers/gpu/drm/amd/amdgpu/dce_v8_0.c              |   2 +-
>  drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c  |   6 +-
>  .../drm/arm/display/komeda/komeda_framebuffer.c    |   2 +-
>  drivers/gpu/drm/arm/malidp_hw.c                    |   2 +-
>  drivers/gpu/drm/arm/malidp_planes.c                |   2 +-
>  drivers/gpu/drm/armada/armada_fbdev.c              |   2 +-
>  drivers/gpu/drm/armada/armada_plane.c              |   6 +-
>  drivers/gpu/drm/ast/ast_mode.c                     |   8 +-
>  drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c    |   2 +-
>  drivers/gpu/drm/cirrus/cirrus.c                    |  10 +-
>  drivers/gpu/drm/drm_client.c                       |   4 +-
>  drivers/gpu/drm/drm_fb_helper.c                    |   8 +-
>  drivers/gpu/drm/drm_format_helper.c                |   4 +-
>  drivers/gpu/drm/drm_fourcc.c                       | 172 +++++++++++----------
>  drivers/gpu/drm/drm_framebuffer.c                  |   2 +-
>  drivers/gpu/drm/exynos/exynos5433_drm_decon.c      |   4 +-
>  drivers/gpu/drm/exynos/exynos7_drm_decon.c         |   6 +-
>  drivers/gpu/drm/exynos/exynos_drm_fbdev.c          |   4 +-
>  drivers/gpu/drm/exynos/exynos_drm_fimc.c           |   6 +-
>  drivers/gpu/drm/exynos/exynos_drm_fimd.c           |   2 +-
>  drivers/gpu/drm/exynos/exynos_drm_gsc.c            |   4 +-
>  drivers/gpu/drm/exynos/exynos_drm_ipp.c            |   6 +-
>  drivers/gpu/drm/exynos/exynos_drm_rotator.c        |   4 +-
>  drivers/gpu/drm/exynos/exynos_drm_scaler.c         |   4 +-
>  drivers/gpu/drm/exynos/exynos_mixer.c              |   4 +-
>  drivers/gpu/drm/gma500/framebuffer.c               |   4 +-
>  drivers/gpu/drm/gma500/gma_display.c               |   4 +-
>  drivers/gpu/drm/gma500/mdfld_intel_display.c       |   6 +-
>  drivers/gpu/drm/gma500/oaktrail_crtc.c             |   4 +-
>  drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_de.c     |   6 +-
>  drivers/gpu/drm/i915/display/intel_atomic_plane.c  |   2 +-
>  drivers/gpu/drm/i915/display/intel_display.c       |  28 ++--
>  drivers/gpu/drm/i915/display/intel_fbc.c           |   8 +-
>  drivers/gpu/drm/i915/display/intel_fbdev.c         |   6 +-
>  drivers/gpu/drm/i915/display/intel_sprite.c        |   4 +-
>  drivers/gpu/drm/i915/i915_debugfs.c                |   4 +-
>  drivers/gpu/drm/i915/intel_pm.c                    |  28 ++--
>  drivers/gpu/drm/imx/ipuv3-plane.c                  |   8 +-
>  drivers/gpu/drm/ingenic/ingenic-drm.c              |   2 +-
>  drivers/gpu/drm/mcde/mcde_display.c                |   4 +-
>  drivers/gpu/drm/mediatek/mtk_drm_fb.c              |   2 +-
>  drivers/gpu/drm/mediatek/mtk_drm_plane.c           |   2 +-
>  drivers/gpu/drm/mgag200/mgag200_mode.c             |  16 +-
>  drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c           |   4 +-
>  drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c          |   2 +-
>  drivers/gpu/drm/msm/disp/mdp5/mdp5_smp.c           |   2 +-
>  drivers/gpu/drm/msm/msm_fb.c                       |   2 +-
>  drivers/gpu/drm/nouveau/dispnv04/crtc.c            |   7 +-
>  drivers/gpu/drm/nouveau/dispnv50/base507c.c        |   4 +-
>  drivers/gpu/drm/nouveau/dispnv50/ovly507e.c        |   2 +-
>  drivers/gpu/drm/omapdrm/omap_fb.c                  |   8 +-
>  drivers/gpu/drm/pl111/pl111_display.c              |   2 +-
>  drivers/gpu/drm/qxl/qxl_draw.c                     |   2 +-
>  drivers/gpu/drm/radeon/atombios_crtc.c             |  10 +-
>  drivers/gpu/drm/radeon/r100.c                      |   4 +-
>  drivers/gpu/drm/radeon/radeon_display.c            |   6 +-
>  drivers/gpu/drm/radeon/radeon_fb.c                 |   2 +-
>  drivers/gpu/drm/radeon/radeon_legacy_crtc.c        |  14 +-
>  drivers/gpu/drm/rockchip/rockchip_drm_fb.c         |   2 +-
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.c        |   4 +-
>  drivers/gpu/drm/sti/sti_gdp.c                      |   2 +-
>  drivers/gpu/drm/stm/ltdc.c                         |   2 +-
>  drivers/gpu/drm/sun4i/sun8i_ui_layer.c             |   2 +-
>  drivers/gpu/drm/sun4i/sun8i_vi_layer.c             |   2 +-
>  drivers/gpu/drm/tegra/dc.c                         |   2 +-
>  drivers/gpu/drm/tegra/drm.c                        |   2 +-
>  drivers/gpu/drm/tegra/fb.c                         |   2 +-
>  drivers/gpu/drm/tilcdc/tilcdc_crtc.c               |   2 +-
>  drivers/gpu/drm/tilcdc/tilcdc_plane.c              |   2 +-
>  drivers/gpu/drm/tve200/tve200_display.c            |   2 +-
>  drivers/gpu/drm/udl/udl_fb.c                       |   4 +-
>  drivers/gpu/drm/vboxvideo/vbox_mode.c              |   2 +-
>  drivers/gpu/drm/vc4/vc4_plane.c                    |  10 +-
>  drivers/gpu/drm/vkms/vkms_plane.c                  |   2 +-
>  drivers/gpu/drm/vmwgfx/vmwgfx_fb.c                 |   4 +-
>  drivers/gpu/drm/vmwgfx/vmwgfx_ldu.c                |   4 +-
>  drivers/gpu/drm/vmwgfx/vmwgfx_scrn.c               |   4 +-
>  drivers/gpu/drm/vmwgfx/vmwgfx_stdu.c               |   2 +-
>  drivers/gpu/drm/xen/xen_drm_front_kms.c            |   2 +-
>  drivers/gpu/drm/zte/zx_plane.c                     |   4 +-
>  include/drm/drm_fourcc.h                           |   4 +-
>  include/uapi/drm/drm_fourcc.h                      |  15 ++
>  86 files changed, 299 insertions(+), 277 deletions(-)
>
> --
> 2.7.4
>
>
>
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel



-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
