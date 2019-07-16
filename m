Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C536A32B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 09:45:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5/NMKLgpDfXFHPuDh9kAJxz7SgUOCpXO/MNmh4jyt6w=; b=ECfPW9/zlr2kYt
	b9FJNgcPqDmvrLoHU7vaWx4Y7VGmc781dLEDe33SqLkJ90hlfHW1ZpGHlake9TO4DqCpEPm0zLRzR
	BV09l/F9N4IxPM+Mp7JAmZMQREFUa0R4cmTObvmbf8OFs3dOPMdqY3iwyv9oFGFcByj0l6RwQQjaG
	DX7QPVd71zl9pZQqpGv1ahREYUMrWn1uzKXYlvRubamizkipi4GkXCXOsc4ka1KjFjiehttUhUhL1
	FE7NLIPpM3EwpCBr67L9Et5amM8frinhpiyc6rZxNEnG0/W1/VnctHhdjxHa5Q0jzpB43RctDOP+s
	27E6eNXcYGswMQTfrKuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnI8u-0007Jy-2G; Tue, 16 Jul 2019 07:44:56 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnI8d-0007G3-TT; Tue, 16 Jul 2019 07:44:42 +0000
X-UUID: 00a57ab1080c44b19d140dc2325fe7f1-20190715
X-UUID: 00a57ab1080c44b19d140dc2325fe7f1-20190715
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 249397174; Mon, 15 Jul 2019 23:44:37 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 16 Jul 2019 00:44:35 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by mtkcas07.mediatek.inc
 (172.21.101.84) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 16 Jul 2019 15:44:33 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 16 Jul 2019 15:44:34 +0800
Message-ID: <1563263074.6904.1.camel@mtksdaap41>
Subject: Re: [PATCH v2 19/19] drm/mediatek: drop use of drmP.h
From: CK Hu <ck.hu@mediatek.com>
To: Sam Ravnborg <sam@ravnborg.org>
Date: Tue, 16 Jul 2019 15:44:34 +0800
In-Reply-To: <20190716064220.18157-20-sam@ravnborg.org>
References: <20190716064220.18157-1-sam@ravnborg.org>
 <20190716064220.18157-20-sam@ravnborg.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_004440_032597_FE452AB2 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Philipp Zabel <p.zabel@pengutronix.de>, David
 Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>, Matthias
 Brugger <matthias.bgg@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Emil Velikov <emil.velikov@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Sam:

On Tue, 2019-07-16 at 08:42 +0200, Sam Ravnborg wrote:
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

Reviewed-by: CK Hu <ck.hu@mediatek.com>

Thanks.

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
>  #define DSI_START		0x00
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



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
