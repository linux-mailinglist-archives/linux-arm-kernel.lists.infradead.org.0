Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41F06BB3F1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 14:40:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=h3g2tfOqYFDonRkGQkm2qBOKkeLcGlUElRf5iBXtFL8=; b=lB2
	Cpg+CiENIBJV0fYgjVY7AB3Vay3eIhNhBOML+vKhrikGxHgmKXZ+VOPE+WMrrf6GESouvvnMNxrob
	292XVh3icpzMOSDi4ZyRF78tHsd/HyUcHx1RL5NkGXBZabnlLTz6gx/lphp4DfkCYn82hqox1psWe
	1P1aIJZP+ML54fBSRdS6iD5Wj6MC3OcWWDKFJQ09qg8DVJJnwNKjpLD/bPkmknE4Am6IeyenOi6Cu
	mz5ExF5GWS3BuUzQDaqWLkzA0wDtgD6EkoXX+1ZlBduEfpyQMnA/rpTf+ugwNNkjRoWjTMlze7Mz+
	/+gF0z0WkB/N680PTVRDPdXv9vOXSxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCNdE-0002kK-NE; Mon, 23 Sep 2019 12:39:56 +0000
Received: from regular1.263xmail.com ([211.150.70.206])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCNd2-0002jE-7N; Mon, 23 Sep 2019 12:39:46 +0000
Received: from hjc?rock-chips.com (unknown [192.168.167.32])
 by regular1.263xmail.com (Postfix) with ESMTP id C150D466;
 Mon, 23 Sep 2019 20:39:29 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P10893T140454720919296S1569242369031174_; 
 Mon, 23 Sep 2019 20:39:30 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <bd1751fca440128fc09a37549efa450c>
X-RL-SENDER: hjc@rock-chips.com
X-SENDER: hjc@rock-chips.com
X-LOGIN-NAME: hjc@rock-chips.com
X-FST-TO: dri-devel@lists.freedesktop.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Sandy Huang <hjc@rock-chips.com>
To: dri-devel@lists.freedesktop.org, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH 00/36] Add support 10bit yuv format
Date: Mon, 23 Sep 2019 20:38:49 +0800
Message-Id: <1569242365-182133-1-git-send-email-hjc@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_053944_655155_0BE825C0 
X-CRM114-Status: UNSURE (   6.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.206 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: linux-mediatek@lists.infradead.org, hjc@rock-chips.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series of patches is to add 2 plane YCbCr 10bit format
support, but now the drm_format_info.cpp[3] unit is BytePerPlane,
when we add define 10bit YUV format, here have some problems.
So we change cpp to bpp, use unit BitPerPlane to describe the data
format.

Sandy Huang (36):
  drm/fourcc: Add 2 plane YCbCr 10bit format support
  drm/rockchip: use bpp instead of cpp for drm_format_info
  drm/i915: use bpp instead of cpp for drm_format_info
  drm: exynos: use bpp instead of cpp for drm_format_info
  drm/sun4i: use bpp instead of cpp for drm_format_info
  drm/amd: use bpp instead of cpp for drm_format_info
  drm/gma500: use bpp instead of cpp for drm_format_info
  drm/msm: use bpp instead of cpp for drm_format_info
  dm/vmwgfx: use bpp instead of cpp for drm_format_info
  drm/arm: use bpp instead of cpp for drm_format_info
  drm/armada: use bpp instead of cpp for drm_format_info
  drm/radeon: use bpp instead of cpp for drm_format_info
  drm/nouveau: use bpp instead of cpp for drm_format_info
  drm/tegra: use bpp instead of cpp for drm_format_info
  drm/mediatek: use bpp instead of cpp for drm_format_info
  drm/tilcdc: use bpp instead of cpp for drm_format_info
  drm/zte: use bpp instead of cpp for drm_format_info
  drm/xen: use bpp instead of cpp for drm_format_info
  drm/vkms: use bpp instead of cpp for drm_format_info
  drm/ast: use bpp instead of cpp for drm_format_info
  drm/vc4: use bpp instead of cpp for drm_format_info
  drm/atmel-hlcdc: use bpp instead of cpp for drm_format_info
  drm/cirrus: use bpp instead of cpp for drm_format_info
  drm/hisilicon: use bpp instead of cpp for drm_format_info
  drm/imx: use bpp instead of cpp for drm_format_info
  drm/vboxvideo: use bpp instead of cpp for drm_format_info
  drm/pl111: use bpp instead of cpp for drm_format_info
  drm/qxl: use bpp instead of cpp for drm_format_info
  drm/ingenic: use bpp instead of cpp for drm_format_info
  drm/sti: use bpp instead of cpp for drm_format_info
  drm/stm: use bpp instead of cpp for drm_format_info
  drm/mcde: use bpp instead of cpp for drm_format_info
  drm/mgag200: use bpp instead of cpp for drm_format_info
  drm/tve200: use bpp instead of cpp for drm_format_info
  drm/udl: use bpp instead of cpp for drm_format_info
  drm/omapdrm: use bpp instead of cpp for drm_format_info

 drivers/gpu/drm/amd/amdgpu/amdgpu_fb.c             |   2 +-
 drivers/gpu/drm/amd/amdgpu/dce_v10_0.c             |   2 +-
 drivers/gpu/drm/amd/amdgpu/dce_v11_0.c             |   2 +-
 drivers/gpu/drm/amd/amdgpu/dce_v6_0.c              |   2 +-
 drivers/gpu/drm/amd/amdgpu/dce_v8_0.c              |   2 +-
 drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c  |   6 +-
 .../drm/arm/display/komeda/komeda_framebuffer.c    |   2 +-
 drivers/gpu/drm/arm/malidp_hw.c                    |   2 +-
 drivers/gpu/drm/arm/malidp_planes.c                |   2 +-
 drivers/gpu/drm/armada/armada_fbdev.c              |   2 +-
 drivers/gpu/drm/armada/armada_plane.c              |   6 +-
 drivers/gpu/drm/ast/ast_mode.c                     |   8 +-
 drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c    |   2 +-
 drivers/gpu/drm/cirrus/cirrus.c                    |  10 +-
 drivers/gpu/drm/drm_client.c                       |   4 +-
 drivers/gpu/drm/drm_fb_helper.c                    |   8 +-
 drivers/gpu/drm/drm_format_helper.c                |   4 +-
 drivers/gpu/drm/drm_fourcc.c                       | 172 +++++++++++----------
 drivers/gpu/drm/drm_framebuffer.c                  |   2 +-
 drivers/gpu/drm/exynos/exynos5433_drm_decon.c      |   4 +-
 drivers/gpu/drm/exynos/exynos7_drm_decon.c         |   6 +-
 drivers/gpu/drm/exynos/exynos_drm_fbdev.c          |   4 +-
 drivers/gpu/drm/exynos/exynos_drm_fimc.c           |   6 +-
 drivers/gpu/drm/exynos/exynos_drm_fimd.c           |   2 +-
 drivers/gpu/drm/exynos/exynos_drm_gsc.c            |   4 +-
 drivers/gpu/drm/exynos/exynos_drm_ipp.c            |   6 +-
 drivers/gpu/drm/exynos/exynos_drm_rotator.c        |   4 +-
 drivers/gpu/drm/exynos/exynos_drm_scaler.c         |   4 +-
 drivers/gpu/drm/exynos/exynos_mixer.c              |   4 +-
 drivers/gpu/drm/gma500/framebuffer.c               |   4 +-
 drivers/gpu/drm/gma500/gma_display.c               |   4 +-
 drivers/gpu/drm/gma500/mdfld_intel_display.c       |   6 +-
 drivers/gpu/drm/gma500/oaktrail_crtc.c             |   4 +-
 drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_de.c     |   6 +-
 drivers/gpu/drm/i915/display/intel_atomic_plane.c  |   2 +-
 drivers/gpu/drm/i915/display/intel_display.c       |  28 ++--
 drivers/gpu/drm/i915/display/intel_fbc.c           |   8 +-
 drivers/gpu/drm/i915/display/intel_fbdev.c         |   6 +-
 drivers/gpu/drm/i915/display/intel_sprite.c        |   4 +-
 drivers/gpu/drm/i915/i915_debugfs.c                |   4 +-
 drivers/gpu/drm/i915/intel_pm.c                    |  28 ++--
 drivers/gpu/drm/imx/ipuv3-plane.c                  |   8 +-
 drivers/gpu/drm/ingenic/ingenic-drm.c              |   2 +-
 drivers/gpu/drm/mcde/mcde_display.c                |   4 +-
 drivers/gpu/drm/mediatek/mtk_drm_fb.c              |   2 +-
 drivers/gpu/drm/mediatek/mtk_drm_plane.c           |   2 +-
 drivers/gpu/drm/mgag200/mgag200_mode.c             |  16 +-
 drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c           |   4 +-
 drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c          |   2 +-
 drivers/gpu/drm/msm/disp/mdp5/mdp5_smp.c           |   2 +-
 drivers/gpu/drm/msm/msm_fb.c                       |   2 +-
 drivers/gpu/drm/nouveau/dispnv04/crtc.c            |   7 +-
 drivers/gpu/drm/nouveau/dispnv50/base507c.c        |   4 +-
 drivers/gpu/drm/nouveau/dispnv50/ovly507e.c        |   2 +-
 drivers/gpu/drm/omapdrm/omap_fb.c                  |   8 +-
 drivers/gpu/drm/pl111/pl111_display.c              |   2 +-
 drivers/gpu/drm/qxl/qxl_draw.c                     |   2 +-
 drivers/gpu/drm/radeon/atombios_crtc.c             |  10 +-
 drivers/gpu/drm/radeon/r100.c                      |   4 +-
 drivers/gpu/drm/radeon/radeon_display.c            |   6 +-
 drivers/gpu/drm/radeon/radeon_fb.c                 |   2 +-
 drivers/gpu/drm/radeon/radeon_legacy_crtc.c        |  14 +-
 drivers/gpu/drm/rockchip/rockchip_drm_fb.c         |   2 +-
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c        |   4 +-
 drivers/gpu/drm/sti/sti_gdp.c                      |   2 +-
 drivers/gpu/drm/stm/ltdc.c                         |   2 +-
 drivers/gpu/drm/sun4i/sun8i_ui_layer.c             |   2 +-
 drivers/gpu/drm/sun4i/sun8i_vi_layer.c             |   2 +-
 drivers/gpu/drm/tegra/dc.c                         |   2 +-
 drivers/gpu/drm/tegra/drm.c                        |   2 +-
 drivers/gpu/drm/tegra/fb.c                         |   2 +-
 drivers/gpu/drm/tilcdc/tilcdc_crtc.c               |   2 +-
 drivers/gpu/drm/tilcdc/tilcdc_plane.c              |   2 +-
 drivers/gpu/drm/tve200/tve200_display.c            |   2 +-
 drivers/gpu/drm/udl/udl_fb.c                       |   4 +-
 drivers/gpu/drm/vboxvideo/vbox_mode.c              |   2 +-
 drivers/gpu/drm/vc4/vc4_plane.c                    |  10 +-
 drivers/gpu/drm/vkms/vkms_plane.c                  |   2 +-
 drivers/gpu/drm/vmwgfx/vmwgfx_fb.c                 |   4 +-
 drivers/gpu/drm/vmwgfx/vmwgfx_ldu.c                |   4 +-
 drivers/gpu/drm/vmwgfx/vmwgfx_scrn.c               |   4 +-
 drivers/gpu/drm/vmwgfx/vmwgfx_stdu.c               |   2 +-
 drivers/gpu/drm/xen/xen_drm_front_kms.c            |   2 +-
 drivers/gpu/drm/zte/zx_plane.c                     |   4 +-
 include/drm/drm_fourcc.h                           |   4 +-
 include/uapi/drm/drm_fourcc.h                      |  15 ++
 86 files changed, 299 insertions(+), 277 deletions(-)

-- 
2.7.4




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
