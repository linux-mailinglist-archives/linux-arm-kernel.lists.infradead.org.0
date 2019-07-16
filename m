Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C243B6AA35
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 16:03:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/+0M7to7vI+k43bJPuazltf3d1ZfLoTR0X9M1klAKaU=; b=gM9PE8CN/nP5OI
	dWe20lYyj7cvagIvDo0wbBPnaYM/NGBDsFwzW63lcstVsg1ALbR+e8BtHCx25weHzJEOOAS4URlHW
	TXAcaxCDPzT5aIUs/dc7NLI992p1SJnQEEkyL54Mgaggo8CpFS2SRVCh8KtKbCRAXEflJs+B84t6B
	udf/wFKHGVT6dDBYZO0rCWy6JtAJnOvKVrshzQrAzBumDHDo/YKj8tzXyl9/ul15ILPLxHYRPsfKa
	k5sBuA2Qt1jta0a1hvN/pQ701QcaX1Cb3bSA6tk/XJqR2cNWgGFdSt0rTW3MzcvmsnQf61Sh0hxgR
	n5UJZnxKhV694zBkhapQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnO3D-0005m7-93; Tue, 16 Jul 2019 14:03:27 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnO2t-0005jx-UG; Tue, 16 Jul 2019 14:03:10 +0000
Received: by mail-wr1-x444.google.com with SMTP id f9so21066103wre.12;
 Tue, 16 Jul 2019 07:03:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HZsItjPjDhQYPiLA6jmNU77ULk0G5DWzpiz/8LZXXSk=;
 b=VRHAZYMT9D42bjajdP/6USvr9GlsAxFcKo5j4w9FQt1ZG9pUDYWAlIh625DEtEbyET
 uSnnyqMAMjyqMfuk9P7YJ39a9xPF17UFEVIkFR1EZ6e8CkoOgkK9aH1q9EEtHMf8zR8k
 D0zLhVoxinPZLVP5xYqwZ76Q8XemLQxxFpnpjL30sTswQDSXxunRxu97DpIkFIyUVgcE
 f1YEnuy9F0dBmwh1u59Ny/9TjPBrdBOP2D42D22pMIsVEcQXUUa/KisIfXeMwW70Hf9+
 k64GEzaYVL3E5l0vPpojvythV1DX2YOXJJXtOBub3ROzfDAFOQVOEbhoz3YvpbNbfihs
 zJ0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HZsItjPjDhQYPiLA6jmNU77ULk0G5DWzpiz/8LZXXSk=;
 b=KW5r0+ai3bOLNB4dlxhmFNtBh1Dkj5uqO3LdYvPCYW2WkungohjbcnEA2EI2v5Eb+1
 iMzgrN7b684HfOv4TmQhjJZRqhM7yOwTvMNszMrvJfiXk7A2jp4RJ730fcY6j9IpezVB
 kJML7P/CD7rtdX4o3SrJNEHQN7eUIr9SczQK8QvKkwBwUGhakQV7sMfgdjsqIdr4duFl
 6E+HyPIC8RUU5mcQrTiDiFPBCtzsTClXIquuKJZ487WORmNpMdthgnUxO79bYQz8mI/H
 iRoR7vc0fkhs7Lz5PA4cN8JzerbtfcY1Gay9dOf+ZZbpg1RP7eQq/7BTZ16VFNget4yC
 nBaQ==
X-Gm-Message-State: APjAAAWKjgNZAhJnRTGUfJhdlBhIBDMpdMy71Y/d5Yuvl5R+61M85Ju4
 Y1h3oDwv33HOFvvIRuQAsAhdFStcyhpC1FR/yqQ=
X-Google-Smtp-Source: APXvYqyrTALRgwm52FtUUSHJC/fTjOAydgpAzcUmYUQvpIlNqt7flB2n3sMgMFbOCc2q1aK2KOMDEz5r2YaTBLJ4VnI=
X-Received: by 2002:adf:a299:: with SMTP id s25mr29029454wra.74.1563285784578; 
 Tue, 16 Jul 2019 07:03:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190716064220.18157-1-sam@ravnborg.org>
 <20190716064220.18157-20-sam@ravnborg.org>
In-Reply-To: <20190716064220.18157-20-sam@ravnborg.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 16 Jul 2019 10:02:53 -0400
Message-ID: <CADnq5_NL0v941Pg0+=ova-6N4jm1nmFzj9To5oQBRSqeYbzLWA@mail.gmail.com>
Subject: Re: [PATCH v2 19/19] drm/mediatek: drop use of drmP.h
To: Sam Ravnborg <sam@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_070308_015482_60504136 
X-CRM114-Status: GOOD (  15.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alexdeucher[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: David Airlie <airlied@linux.ie>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Emil Velikov <emil.velikov@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 16, 2019 at 2:45 AM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> Drop use of the deprecated drmP.h header file.
>
> While touching the include files divide them up in blocks
> in the typical order:
>
> \#include <linux/*>
>
> \#include <video/*>
>
> \#include <drm/*>
>
> \#include ""
>
> And sort the includes in the blocks
> Add the necessary includes to fix build after removal of drmP.h
>
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Acked-by: Emil Velikov <emil.velikov@collabora.com>
> Cc: CK Hu <ck.hu@mediatek.com>
> Cc: Philipp Zabel <p.zabel@pengutronix.de>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: Matthias Brugger <matthias.bgg@gmail.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-mediatek@lists.infradead.org


Reviewed-by: Alex Deucher <alexander.deucher@amd.com>

> ---
>  drivers/gpu/drm/mediatek/mtk_disp_color.c   |  2 +-
>  drivers/gpu/drm/mediatek/mtk_disp_ovl.c     |  2 +-
>  drivers/gpu/drm/mediatek/mtk_disp_rdma.c    |  2 +-
>  drivers/gpu/drm/mediatek/mtk_dpi.c          | 18 ++++++++++--------
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c     | 10 ++++++----
>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c |  2 +-
>  drivers/gpu/drm/mediatek/mtk_drm_drv.c      | 16 ++++++++++------
>  drivers/gpu/drm/mediatek/mtk_drm_fb.c       |  7 ++++---
>  drivers/gpu/drm/mediatek/mtk_drm_gem.c      |  6 ++++--
>  drivers/gpu/drm/mediatek/mtk_drm_plane.c    |  2 +-
>  drivers/gpu/drm/mediatek/mtk_dsi.c          | 14 ++++++++------
>  drivers/gpu/drm/mediatek/mtk_hdmi.c         | 14 +++++++++-----
>  12 files changed, 56 insertions(+), 39 deletions(-)
>
> diff --git a/drivers/gpu/drm/mediatek/mtk_disp_color.c b/drivers/gpu/drm/mediatek/mtk_disp_color.c
> index f33d98b356d6..59de2a46aa49 100644
> --- a/drivers/gpu/drm/mediatek/mtk_disp_color.c
> +++ b/drivers/gpu/drm/mediatek/mtk_disp_color.c
> @@ -3,9 +3,9 @@
>   * Copyright (c) 2017 MediaTek Inc.
>   */
>
> -#include <drm/drmP.h>
>  #include <linux/clk.h>
>  #include <linux/component.h>
> +#include <linux/module.h>
>  #include <linux/of_device.h>
>  #include <linux/of_irq.h>
>  #include <linux/platform_device.h>
> diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> index c4f07c28c74f..21851756c579 100644
> --- a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> +++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> @@ -3,9 +3,9 @@
>   * Copyright (c) 2015 MediaTek Inc.
>   */
>
> -#include <drm/drmP.h>
>  #include <linux/clk.h>
>  #include <linux/component.h>
> +#include <linux/module.h>
>  #include <linux/of_device.h>
>  #include <linux/of_irq.h>
>  #include <linux/platform_device.h>
> diff --git a/drivers/gpu/drm/mediatek/mtk_disp_rdma.c b/drivers/gpu/drm/mediatek/mtk_disp_rdma.c
> index 9a6f0a29e43c..405afef31407 100644
> --- a/drivers/gpu/drm/mediatek/mtk_disp_rdma.c
> +++ b/drivers/gpu/drm/mediatek/mtk_disp_rdma.c
> @@ -3,9 +3,9 @@
>   * Copyright (c) 2015 MediaTek Inc.
>   */
>
> -#include <drm/drmP.h>
>  #include <linux/clk.h>
>  #include <linux/component.h>
> +#include <linux/module.h>
>  #include <linux/of_device.h>
>  #include <linux/of_irq.h>
>  #include <linux/platform_device.h>
> diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c b/drivers/gpu/drm/mediatek/mtk_dpi.c
> index bacd989cc9aa..be6d95c5ff25 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dpi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dpi.c
> @@ -3,21 +3,23 @@
>   * Copyright (c) 2014 MediaTek Inc.
>   * Author: Jie Qiu <jie.qiu@mediatek.com>
>   */
> -#include <drm/drmP.h>
> -#include <drm/drm_crtc.h>
> -#include <drm/drm_atomic_helper.h>
> -#include <drm/drm_of.h>
> -#include <linux/kernel.h>
> +
> +#include <linux/clk.h>
>  #include <linux/component.h>
> -#include <linux/platform_device.h>
> +#include <linux/interrupt.h>
> +#include <linux/kernel.h>
>  #include <linux/of.h>
>  #include <linux/of_device.h>
>  #include <linux/of_graph.h>
> -#include <linux/interrupt.h>
> +#include <linux/platform_device.h>
>  #include <linux/types.h>
> -#include <linux/clk.h>
> +
>  #include <video/videomode.h>
>
> +#include <drm/drm_atomic_helper.h>
> +#include <drm/drm_crtc.h>
> +#include <drm/drm_of.h>
> +
>  #include "mtk_dpi_regs.h"
>  #include "mtk_drm_ddp_comp.h"
>
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> index a9007210dda1..34a731755791 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> @@ -3,14 +3,16 @@
>   * Copyright (c) 2015 MediaTek Inc.
>   */
>
> +#include <linux/clk.h>
> +#include <linux/pm_runtime.h>
> +
>  #include <asm/barrier.h>
> -#include <drm/drmP.h>
> +#include <soc/mediatek/smi.h>
> +
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_plane_helper.h>
>  #include <drm/drm_probe_helper.h>
> -#include <linux/clk.h>
> -#include <linux/pm_runtime.h>
> -#include <soc/mediatek/smi.h>
> +#include <drm/drm_vblank.h>
>
>  #include "mtk_drm_drv.h"
>  #include "mtk_drm_crtc.h"
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> index b38963f1f2ec..efa85973e46b 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> @@ -12,7 +12,7 @@
>  #include <linux/of_irq.h>
>  #include <linux/of_platform.h>
>  #include <linux/platform_device.h>
> -#include <drm/drmP.h>
> +
>  #include "mtk_drm_drv.h"
>  #include "mtk_drm_plane.h"
>  #include "mtk_drm_ddp_comp.h"
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> index 2d5caf532431..2ee809a6f3dc 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> @@ -4,22 +4,26 @@
>   * Author: YT SHEN <yt.shen@mediatek.com>
>   */
>
> -#include <drm/drmP.h>
> +#include <linux/component.h>
> +#include <linux/iommu.h>
> +#include <linux/module.h>
> +#include <linux/of_address.h>
> +#include <linux/of_platform.h>
> +#include <linux/pm_runtime.h>
> +
>  #include <drm/drm_atomic.h>
>  #include <drm/drm_atomic_helper.h>
> +#include <drm/drm_drv.h>
>  #include <drm/drm_fb_helper.h>
>  #include <drm/drm_gem.h>
>  #include <drm/drm_gem_cma_helper.h>
>  #include <drm/drm_of.h>
>  #include <drm/drm_probe_helper.h>
> -#include <linux/component.h>
> -#include <linux/iommu.h>
> -#include <linux/of_address.h>
> -#include <linux/of_platform.h>
> -#include <linux/pm_runtime.h>
> +#include <drm/drm_vblank.h>
>
>  #include "mtk_drm_crtc.h"
>  #include "mtk_drm_ddp.h"
> +#include "mtk_drm_ddp.h"
>  #include "mtk_drm_ddp_comp.h"
>  #include "mtk_drm_drv.h"
>  #include "mtk_drm_fb.h"
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_fb.c b/drivers/gpu/drm/mediatek/mtk_drm_fb.c
> index 396ba497986d..ae40b080ae47 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_fb.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_fb.c
> @@ -3,13 +3,14 @@
>   * Copyright (c) 2015 MediaTek Inc.
>   */
>
> -#include <drm/drmP.h>
> +#include <linux/dma-buf.h>
> +#include <linux/reservation.h>
> +
>  #include <drm/drm_modeset_helper.h>
>  #include <drm/drm_fb_helper.h>
> +#include <drm/drm_fourcc.h>
>  #include <drm/drm_gem.h>
>  #include <drm/drm_gem_framebuffer_helper.h>
> -#include <linux/dma-buf.h>
> -#include <linux/reservation.h>
>
>  #include "mtk_drm_drv.h"
>  #include "mtk_drm_fb.h"
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_gem.c b/drivers/gpu/drm/mediatek/mtk_drm_gem.c
> index 0d69698f8173..9434f88c6341 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_gem.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_gem.c
> @@ -3,10 +3,12 @@
>   * Copyright (c) 2015 MediaTek Inc.
>   */
>
> -#include <drm/drmP.h>
> -#include <drm/drm_gem.h>
>  #include <linux/dma-buf.h>
>
> +#include <drm/drm_device.h>
> +#include <drm/drm_gem.h>
> +#include <drm/drm_prime.h>
> +
>  #include "mtk_drm_drv.h"
>  #include "mtk_drm_gem.h"
>
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_plane.c b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> index 42cc9823eaaa..584a9ecadce6 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
> @@ -4,9 +4,9 @@
>   * Author: CK Hu <ck.hu@mediatek.com>
>   */
>
> -#include <drm/drmP.h>
>  #include <drm/drm_atomic.h>
>  #include <drm/drm_atomic_helper.h>
> +#include <drm/drm_fourcc.h>
>  #include <drm/drm_plane_helper.h>
>  #include <drm/drm_gem_framebuffer_helper.h>
>
> diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
> index b91c4616644a..224afb666881 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
> @@ -3,12 +3,6 @@
>   * Copyright (c) 2015 MediaTek Inc.
>   */
>
> -#include <drm/drmP.h>
> -#include <drm/drm_atomic_helper.h>
> -#include <drm/drm_mipi_dsi.h>
> -#include <drm/drm_panel.h>
> -#include <drm/drm_of.h>
> -#include <drm/drm_probe_helper.h>
>  #include <linux/clk.h>
>  #include <linux/component.h>
>  #include <linux/iopoll.h>
> @@ -17,9 +11,17 @@
>  #include <linux/of_platform.h>
>  #include <linux/phy/phy.h>
>  #include <linux/platform_device.h>
> +
>  #include <video/mipi_display.h>
>  #include <video/videomode.h>
>
> +#include <drm/drm_atomic_helper.h>
> +#include <drm/drm_mipi_dsi.h>
> +#include <drm/drm_of.h>
> +#include <drm/drm_panel.h>
> +#include <drm/drm_print.h>
> +#include <drm/drm_probe_helper.h>
> +
>  #include "mtk_drm_ddp_comp.h"
>
>  #define DSI_START              0x00
> diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi.c b/drivers/gpu/drm/mediatek/mtk_hdmi.c
> index 5d6a9f094df5..ce91b61364eb 100644
> --- a/drivers/gpu/drm/mediatek/mtk_hdmi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_hdmi.c
> @@ -3,11 +3,7 @@
>   * Copyright (c) 2014 MediaTek Inc.
>   * Author: Jie Qiu <jie.qiu@mediatek.com>
>   */
> -#include <drm/drmP.h>
> -#include <drm/drm_atomic_helper.h>
> -#include <drm/drm_crtc.h>
> -#include <drm/drm_probe_helper.h>
> -#include <drm/drm_edid.h>
> +
>  #include <linux/arm-smccc.h>
>  #include <linux/clk.h>
>  #include <linux/delay.h>
> @@ -23,7 +19,15 @@
>  #include <linux/phy/phy.h>
>  #include <linux/platform_device.h>
>  #include <linux/regmap.h>
> +
>  #include <sound/hdmi-codec.h>
> +
> +#include <drm/drm_atomic_helper.h>
> +#include <drm/drm_crtc.h>
> +#include <drm/drm_edid.h>
> +#include <drm/drm_print.h>
> +#include <drm/drm_probe_helper.h>
> +
>  #include "mtk_cec.h"
>  #include "mtk_hdmi.h"
>  #include "mtk_hdmi_regs.h"
> --
> 2.20.1
>
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
