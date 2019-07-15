Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D68568506
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 10:16:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QL233qAAdmYvvmqfhEYoGC4rna5i/vI1RgcImLIzj0M=; b=NBBsNNiACT1DUf
	bokA2WuLE4/runiJmI7m0SEhbjlgYm9rkLH7cWA8vsjdF9ElSKS20Puv3UM6xLM4xlVGjyzimq7Q3
	Np0R+0CvUUWWT310mvvZalFbwB1cop7tIkioKH0sY7gyhqkzV+nUUisdtnZB8sJ6XfD5r1s4MRWC6
	W9UoaP2uIe2RDzmEkXUFrV39Qg2A6h0FvQ3Mplp0y3e9eHcsGkYb9zPmUOiMYAmiyEsdXpGjT5NN9
	/Q2rOBaKbsTATfHAs2xMDk4sp7jv+KY0sdTVEWbNfkOXmBqJ5x5rmoQ2VD+4q2t8i+CIZq6n4y0lH
	M0WtrnQ+AyBexdVA6Rpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmw9O-0000yd-4O; Mon, 15 Jul 2019 08:15:58 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmw99-0000xx-JC
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 08:15:46 +0000
Received: from pc-375.home
 (2a01cb0c88d94a005820d607da339aae.ipv6.abo.wanadoo.fr
 [IPv6:2a01:cb0c:88d9:4a00:5820:d607:da33:9aae])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 6C4D82852D6;
 Mon, 15 Jul 2019 09:15:40 +0100 (BST)
Date: Mon, 15 Jul 2019 10:15:37 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v1 14/33] drm/atmel_hlcdc: drop use of drmP.h
Message-ID: <20190715101537.3c154bd6@pc-375.home>
In-Reply-To: <20190630061922.7254-15-sam@ravnborg.org>
References: <20190630061922.7254-1-sam@ravnborg.org>
 <20190630061922.7254-15-sam@ravnborg.org>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_011543_895030_4F2BFBB0 
X-CRM114-Status: GOOD (  16.87  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Boris Brezillon <bbrezillon@kernel.org>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 30 Jun 2019 08:19:03 +0200
Sam Ravnborg <sam@ravnborg.org> wrote:

> Drop use of the deprecated header drmP.h.
> Make header file self-contained, with only the required set
> of include files.
> And fixed fallout in remaining files.
> Divide include files in blocks and sort them within each block.
> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Cc: Boris Brezillon <bbrezillon@kernel.org>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
> Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Cc: Ludovic Desroches <ludovic.desroches@microchip.com>
> Cc: linux-arm-kernel@lists.infradead.org
> ---
> The list of cc: was too large to add all recipients to the cover letter.
> Please find cover letter here:
> https://lists.freedesktop.org/archives/dri-devel/2019-June/thread.html
> Search for "drm: drop use of drmp.h in drm-misc"
> 
>         Sam
> 
>  .../gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c    | 12 +++++++----
>  drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c  | 12 +++++++++++
>  drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.h  | 20 +++----------------
>  .../gpu/drm/atmel-hlcdc/atmel_hlcdc_output.c  |  3 ++-
>  .../gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c   | 10 ++++++++++
>  5 files changed, 35 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c
> index 81c50772df05..edcd0042bc9c 100644
> --- a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c
> +++ b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c
> @@ -19,15 +19,19 @@
>   */
>  
>  #include <linux/clk.h>
> +#include <linux/mfd/atmel-hlcdc.h>
> +#include <linux/pinctrl/consumer.h>
>  #include <linux/pm.h>
>  #include <linux/pm_runtime.h>
> -#include <linux/pinctrl/consumer.h>
>  
> +#include <video/videomode.h>
> +
> +#include <drm/drm_atomic.h>
> +#include <drm/drm_atomic_helper.h>
>  #include <drm/drm_crtc.h>
> +#include <drm/drm_modeset_helper_vtables.h>
>  #include <drm/drm_probe_helper.h>
> -#include <drm/drmP.h>
> -
> -#include <video/videomode.h>
> +#include <drm/drm_vblank.h>
>  
>  #include "atmel_hlcdc_dc.h"
>  
> diff --git a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c
> index 2b794a50e7ab..891708048c8f 100644
> --- a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c
> +++ b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c
> @@ -22,8 +22,20 @@
>  #include <linux/clk.h>
>  #include <linux/irq.h>
>  #include <linux/irqchip.h>
> +#include <linux/mfd/atmel-hlcdc.h>
>  #include <linux/module.h>
>  #include <linux/pm_runtime.h>
> +#include <linux/platform_device.h>
> +
> +#include <drm/drm_atomic.h>
> +#include <drm/drm_atomic_helper.h>
> +#include <drm/drm_drv.h>
> +#include <drm/drm_fb_helper.h>
> +#include <drm/drm_gem_cma_helper.h>
> +#include <drm/drm_gem_framebuffer_helper.h>
> +#include <drm/drm_irq.h>
> +#include <drm/drm_probe_helper.h>
> +#include <drm/drm_vblank.h>
>  
>  #include "atmel_hlcdc_dc.h"
>  
> diff --git a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.h b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.h
> index 0155efb9c443..b56c399f8715 100644
> --- a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.h
> +++ b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.h
> @@ -22,23 +22,9 @@
>  #ifndef DRM_ATMEL_HLCDC_H
>  #define DRM_ATMEL_HLCDC_H
>  
> -#include <linux/clk.h>
> -#include <linux/dmapool.h>
> -#include <linux/irqdomain.h>
> -#include <linux/mfd/atmel-hlcdc.h>
> -#include <linux/pwm.h>
> -
> -#include <drm/drm_atomic.h>
> -#include <drm/drm_atomic_helper.h>
> -#include <drm/drm_crtc.h>
> -#include <drm/drm_probe_helper.h>
> -#include <drm/drm_fb_helper.h>
> -#include <drm/drm_fb_cma_helper.h>
> -#include <drm/drm_gem_cma_helper.h>
> -#include <drm/drm_gem_framebuffer_helper.h>
> -#include <drm/drm_panel.h>
> -#include <drm/drm_plane_helper.h>
> -#include <drm/drmP.h>
> +#include <linux/regmap.h>
> +
> +#include <drm/drm_plane.h>
>  
>  #define ATMEL_HLCDC_LAYER_CHER			0x0
>  #define ATMEL_HLCDC_LAYER_CHDR			0x4
> diff --git a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_output.c b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_output.c
> index f73d8a92274e..24938bd5adf6 100644
> --- a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_output.c
> +++ b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_output.c
> @@ -19,9 +19,10 @@
>   * this program.  If not, see <http://www.gnu.org/licenses/>.
>   */
>  
> +#include <linux/media-bus-format.h>
>  #include <linux/of_graph.h>
>  
> -#include <drm/drmP.h>
> +#include <drm/drm_encoder.h>
>  #include <drm/drm_of.h>
>  #include <drm/drm_bridge.h>
>  
> diff --git a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c
> index 0ee5b7a3a4b0..e66ea9f32185 100644
> --- a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c
> +++ b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c
> @@ -17,6 +17,16 @@
>   * this program.  If not, see <http://www.gnu.org/licenses/>.
>   */
>  
> +#include <linux/dmapool.h>
> +#include <linux/mfd/atmel-hlcdc.h>
> +
> +#include <drm/drm_atomic.h>
> +#include <drm/drm_atomic_helper.h>
> +#include <drm/drm_fb_cma_helper.h>
> +#include <drm/drm_fourcc.h>
> +#include <drm/drm_gem_cma_helper.h>
> +#include <drm/drm_plane_helper.h>
> +
>  #include "atmel_hlcdc_dc.h"
>  
>  /**


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
