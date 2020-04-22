Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54EE31B346B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 03:19:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wsMm+LaQBM5K8s4dPrn+RVj2xWcqHgVxs+8OxxaPJss=; b=XLwT7QRiG2AsUw
	pmAg+nAcwFk/I6jM0gIjfYdUiOGElFIRTvpHvD5CLzF2bMFYaHr+pfVvKO5+ZV+fS8r2t4Pnl4H64
	1Py0LxOkhE5CnX3nA8cZNO/4TaPPvgeSCRHIaCjsJHE9f+ZqAJKZeu8Xph+HfFaDmieVzTPNfThiq
	JjPVg8f2ldDx2bGa7bhVTAZdQoKd8jywGCWvD9w0yJYiexkMBvZt7oat8mKPh88Yp7w+sw4c+nKzV
	PHQf6qplNUzlHegHC9AgumJzIkufy+ACIlHaOi5BQR2lq4zrO59T9n/Zccns5dWo1ci50QQszFXT8
	rpI0Vof/nvHdEo4/lhTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR436-0004dR-H9; Wed, 22 Apr 2020 01:19:36 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR42w-0004cZ-I6
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 01:19:28 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 9C654528;
 Wed, 22 Apr 2020 03:19:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1587518363;
 bh=aQO8hkVW8AJTCkqFbuUp2DC5MDJLF/Iapewa2JgbC14=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=l+ynLYufNvpR4APTfTo+rsAjA5Q3vWXC/0gkTghRxNOkHvNnyUeAr6+rnMWAAOMs8
 btnasNQsjHHGD8qsRE8gRmVQ/see5aInyonQC8nfKDc9kevLsbSRcbGEnvmEQHkJqe
 pdoD50nOtIpGvJUM80xwkIFb6LoH6XNXq3GXMVyk=
Date: Wed, 22 Apr 2020 04:19:10 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Adrian Ratiu <adrian.ratiu@collabora.com>
Subject: Re: [PATCH] drm: imx: Unify encoder creation
Message-ID: <20200422011910.GO5983@pendragon.ideasonboard.com>
References: <20200420100222.1308898-1-adrian.ratiu@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200420100222.1308898-1-adrian.ratiu@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_181926_751795_8478C532 
X-CRM114-Status: GOOD (  23.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
 Enric Balletbo Serra <eballetbo@gmail.com>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, kernel@collabora.com,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Adrian,

Thank you for the patch.

On Mon, Apr 20, 2020 at 01:02:22PM +0300, Adrian Ratiu wrote:
> imx drivers don't require drm encoders and they all had empty/no-op
> implementations which got converted to simple objects to pacify the
> drm core which still requires something to be defined.
> 
> The problem now is that each driver duplicates the same encoder
> initialization logic and I'm working on adding yet-another driver
> (for imx6 mipi-dsi), so instead of copy-pasting the initialization
> let's move it from the drivers to a shared function in imx-drm-core.

This is one step in the right direction, but only a first small step:
what really needs to be done is to move the calls to
imx_drm_create_encoder() into the i.MX display controller driver core.
This requires turning the ldb, tve and hdmi encoders into drm_bridges.
Parallel display is already architectured in the right way, you can have
a look at it to see how to proceed. I recommend addressing ldb and tve
first, what you need to remove from them through conversion to
drm_bridge is the drm_encoder_helper_funcs.

> The imx_drm_encoder_parse_of() logic is made part of the newly added
> imx_drm_create_encoder() which was its only caller after the move to
> imx-drm-core.
> 
> Suggested-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Suggested-by: Enric Balletbo Serra <eballetbo@gmail.com>
> Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
> ---
>  drivers/gpu/drm/imx/dw_hdmi-imx.c      | 18 ++++++------------
>  drivers/gpu/drm/imx/imx-drm-core.c     | 13 ++++++++++---
>  drivers/gpu/drm/imx/imx-drm.h          |  2 +-
>  drivers/gpu/drm/imx/imx-ldb.c          |  8 ++++----
>  drivers/gpu/drm/imx/imx-tve.c          |  8 ++++----
>  drivers/gpu/drm/imx/parallel-display.c | 11 +++++------
>  6 files changed, 30 insertions(+), 30 deletions(-)
> 
> diff --git a/drivers/gpu/drm/imx/dw_hdmi-imx.c b/drivers/gpu/drm/imx/dw_hdmi-imx.c
> index ba4ca17fd4d8..a710e3d576b4 100644
> --- a/drivers/gpu/drm/imx/dw_hdmi-imx.c
> +++ b/drivers/gpu/drm/imx/dw_hdmi-imx.c
> @@ -18,7 +18,6 @@
>  #include <drm/drm_edid.h>
>  #include <drm/drm_encoder.h>
>  #include <drm/drm_of.h>
> -#include <drm/drm_simple_kms_helper.h>
>  
>  #include "imx-drm.h"
>  
> @@ -218,22 +217,17 @@ static int dw_hdmi_imx_bind(struct device *dev, struct device *master,
>  	hdmi->dev = &pdev->dev;
>  	encoder = &hdmi->encoder;
>  
> -	encoder->possible_crtcs = drm_of_find_possible_crtcs(drm, dev->of_node);
> -	/*
> -	 * If we failed to find the CRTC(s) which this encoder is
> -	 * supposed to be connected to, it's because the CRTC has
> -	 * not been registered yet.  Defer probing, and hope that
> -	 * the required CRTC is added later.
> -	 */
> -	if (encoder->possible_crtcs == 0)
> -		return -EPROBE_DEFER;
> -
>  	ret = dw_hdmi_imx_parse_dt(hdmi);
>  	if (ret < 0)
>  		return ret;
>  
> +	ret = imx_drm_create_encoder(drm, encoder, dev->of_node);
> +	if (ret) {
> +		dev_err(dev, "Failed to create drm encoder\n");
> +		return ret;
> +	}
> +
>  	drm_encoder_helper_add(encoder, &dw_hdmi_imx_encoder_helper_funcs);
> -	drm_simple_encoder_init(drm, encoder, DRM_MODE_ENCODER_TMDS);
>  
>  	platform_set_drvdata(pdev, hdmi);
>  
> diff --git a/drivers/gpu/drm/imx/imx-drm-core.c b/drivers/gpu/drm/imx/imx-drm-core.c
> index 2e38f1a5cf8d..eaf087ed354f 100644
> --- a/drivers/gpu/drm/imx/imx-drm-core.c
> +++ b/drivers/gpu/drm/imx/imx-drm-core.c
> @@ -23,6 +23,7 @@
>  #include <drm/drm_of.h>
>  #include <drm/drm_plane_helper.h>
>  #include <drm/drm_probe_helper.h>
> +#include <drm/drm_simple_kms_helper.h>
>  #include <drm/drm_vblank.h>
>  
>  #include "imx-drm.h"
> @@ -116,11 +117,11 @@ static const struct drm_mode_config_helper_funcs imx_drm_mode_config_helpers = {
>  	.atomic_commit_tail = imx_drm_atomic_commit_tail,
>  };
>  
> -
> -int imx_drm_encoder_parse_of(struct drm_device *drm,
> +int imx_drm_create_encoder(struct drm_device *drm,
>  	struct drm_encoder *encoder, struct device_node *np)
>  {
>  	uint32_t crtc_mask = drm_of_find_possible_crtcs(drm, np);
> +	int ret;
>  
>  	/*
>  	 * If we failed to find the CRTC(s) which this encoder is
> @@ -136,9 +137,15 @@ int imx_drm_encoder_parse_of(struct drm_device *drm,
>  	/* FIXME: cloning support not clear, disable it all for now */
>  	encoder->possible_clones = 0;
>  
> +	ret = drm_simple_encoder_init(drm, encoder, DRM_MODE_ENCODER_NONE);
> +	if (ret) {
> +		DRM_ERROR("Failed to initialize simple drm encoder\n");
> +		return ret;
> +	}
> +
>  	return 0;
>  }
> -EXPORT_SYMBOL_GPL(imx_drm_encoder_parse_of);
> +EXPORT_SYMBOL_GPL(imx_drm_create_encoder);
>  
>  static const struct drm_ioctl_desc imx_drm_ioctls[] = {
>  	/* none so far */
> diff --git a/drivers/gpu/drm/imx/imx-drm.h b/drivers/gpu/drm/imx/imx-drm.h
> index c3e1a3f14d30..8573a668a5f5 100644
> --- a/drivers/gpu/drm/imx/imx-drm.h
> +++ b/drivers/gpu/drm/imx/imx-drm.h
> @@ -34,7 +34,7 @@ void imx_drm_mode_config_init(struct drm_device *drm);
>  
>  struct drm_gem_cma_object *imx_drm_fb_get_obj(struct drm_framebuffer *fb);
>  
> -int imx_drm_encoder_parse_of(struct drm_device *drm,
> +int imx_drm_create_encoder(struct drm_device *drm,
>  	struct drm_encoder *encoder, struct device_node *np);
>  
>  void imx_drm_connector_destroy(struct drm_connector *connector);
> diff --git a/drivers/gpu/drm/imx/imx-ldb.c b/drivers/gpu/drm/imx/imx-ldb.c
> index 66ea68e8da87..a37fa325a8c3 100644
> --- a/drivers/gpu/drm/imx/imx-ldb.c
> +++ b/drivers/gpu/drm/imx/imx-ldb.c
> @@ -26,7 +26,6 @@
>  #include <drm/drm_panel.h>
>  #include <drm/drm_print.h>
>  #include <drm/drm_probe_helper.h>
> -#include <drm/drm_simple_kms_helper.h>
>  
>  #include "imx-drm.h"
>  
> @@ -423,9 +422,11 @@ static int imx_ldb_register(struct drm_device *drm,
>  	struct drm_encoder *encoder = &imx_ldb_ch->encoder;
>  	int ret;
>  
> -	ret = imx_drm_encoder_parse_of(drm, encoder, imx_ldb_ch->child);
> -	if (ret)
> +	ret = imx_drm_create_encoder(drm, encoder, imx_ldb_ch->child);
> +	if (ret) {
> +		dev_err(ldb->dev, "Failed to create drm encoder\n");
>  		return ret;
> +	}
>  
>  	ret = imx_ldb_get_clk(ldb, imx_ldb_ch->chno);
>  	if (ret)
> @@ -438,7 +439,6 @@ static int imx_ldb_register(struct drm_device *drm,
>  	}
>  
>  	drm_encoder_helper_add(encoder, &imx_ldb_encoder_helper_funcs);
> -	drm_simple_encoder_init(drm, encoder, DRM_MODE_ENCODER_LVDS);
>  
>  	if (imx_ldb_ch->bridge) {
>  		ret = drm_bridge_attach(&imx_ldb_ch->encoder,
> diff --git a/drivers/gpu/drm/imx/imx-tve.c b/drivers/gpu/drm/imx/imx-tve.c
> index ee63782c77e9..2d88aca0f7e7 100644
> --- a/drivers/gpu/drm/imx/imx-tve.c
> +++ b/drivers/gpu/drm/imx/imx-tve.c
> @@ -21,7 +21,6 @@
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_fb_helper.h>
>  #include <drm/drm_probe_helper.h>
> -#include <drm/drm_simple_kms_helper.h>
>  
>  #include "imx-drm.h"
>  
> @@ -471,12 +470,13 @@ static int imx_tve_register(struct drm_device *drm, struct imx_tve *tve)
>  	encoder_type = tve->mode == TVE_MODE_VGA ?
>  				DRM_MODE_ENCODER_DAC : DRM_MODE_ENCODER_TVDAC;
>  
> -	ret = imx_drm_encoder_parse_of(drm, &tve->encoder, tve->dev->of_node);
> -	if (ret)
> +	ret = imx_drm_create_encoder(drm, &tve->encoder, tve->dev->of_node);
> +	if (ret) {
> +		dev_err(tve->dev, "failed to create drm encoder\n");
>  		return ret;
> +	}
>  
>  	drm_encoder_helper_add(&tve->encoder, &imx_tve_encoder_helper_funcs);
> -	drm_simple_encoder_init(drm, &tve->encoder, encoder_type);
>  
>  	drm_connector_helper_add(&tve->connector,
>  			&imx_tve_connector_helper_funcs);
> diff --git a/drivers/gpu/drm/imx/parallel-display.c b/drivers/gpu/drm/imx/parallel-display.c
> index 4465e9c602f8..321accb4ca7c 100644
> --- a/drivers/gpu/drm/imx/parallel-display.c
> +++ b/drivers/gpu/drm/imx/parallel-display.c
> @@ -18,7 +18,6 @@
>  #include <drm/drm_of.h>
>  #include <drm/drm_panel.h>
>  #include <drm/drm_probe_helper.h>
> -#include <drm/drm_simple_kms_helper.h>
>  
>  #include "imx-drm.h"
>  
> @@ -274,10 +273,6 @@ static int imx_pd_register(struct drm_device *drm,
>  	struct drm_encoder *encoder = &imxpd->encoder;
>  	int ret;
>  
> -	ret = imx_drm_encoder_parse_of(drm, encoder, imxpd->dev->of_node);
> -	if (ret)
> -		return ret;
> -
>  	/* set the connector's dpms to OFF so that
>  	 * drm_helper_connector_dpms() won't return
>  	 * immediately since the current state is ON
> @@ -285,7 +280,11 @@ static int imx_pd_register(struct drm_device *drm,
>  	 */
>  	imxpd->connector.dpms = DRM_MODE_DPMS_OFF;
>  
> -	drm_simple_encoder_init(drm, encoder, DRM_MODE_ENCODER_NONE);
> +	ret = imx_drm_create_encoder(drm, encoder, imxpd->dev->of_node);
> +	if (ret) {
> +		dev_err(imxpd->dev, "failed to create drm encoder\n");
> +		return ret;
> +	}
>  
>  	imxpd->bridge.funcs = &imx_pd_bridge_funcs;
>  	drm_bridge_attach(encoder, &imxpd->bridge, NULL, 0);

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
