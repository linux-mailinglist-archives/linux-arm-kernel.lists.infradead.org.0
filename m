Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3246A88073
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 18:46:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XTmeEf9asl1Thp5erDlZzA39wz189jqP5ocfgLFvbYA=; b=rwnPfxsHtLiyvV
	ZRsWJ1R2ON56PgnF+v594YkTZkICDlxqrPdgdabiFEG4mQMB+tVBh24qWTt9qn0Z/ZTcaWKYL5FSR
	M6elrC/LMuxztWBXzx0DSC3fsfJaWc8mgXJhZpd8U8f6baEfr1eFYmrhICPf3EPzBPNY9Its9hLcA
	IO8wqOrmPE9h0Be7VV42/KE9Xpa7nXXJucHOhDf6x++Wxw4zWRtCHn9wq4FOIVMTdqmHOv25G2RBw
	u3D6mB1VOkbwuyT30dhDrtbZJ3Aqf5yd2kDd80mxY7MUkfkmKD5QWG9ZYOLPq70ov1CSbto3KenDI
	pRA2QBReUoW54numOUkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw81a-0002JY-2y; Fri, 09 Aug 2019 16:45:54 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw81O-0002JC-Sh
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 16:45:44 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 2B1D1FB03;
 Fri,  9 Aug 2019 18:45:40 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zG0agjQGW3tZ; Fri,  9 Aug 2019 18:45:38 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id BDFB241D9E; Fri,  9 Aug 2019 18:45:37 +0200 (CEST)
Date: Fri, 9 Aug 2019 18:45:37 +0200
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Ville Baillie <vmbaillie@googlemail.com>
Subject: Re: [PATCH] mxsfb: allow attachment of display bridges
Message-ID: <20190809164537.GA4212@bogon.m.sigxcpu.org>
References: <20190801111853.GA24574@villeb-dev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190801111853.GA24574@villeb-dev>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_094543_245849_7ACEF3FA 
X-CRM114-Status: GOOD (  16.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: marex@denx.de, kernel@pengutronix.de, dri-devel@lists.freedesktop.org,
 airlied@linux.ie, festevam@gmail.com, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, stefan@agner.ch, linux-imx@nxp.com,
 daniel@ffwll.ch, Robert Chiras <robert.chiras@nxp.com>, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,
On Thu, Aug 01, 2019 at 11:18:53AM +0000, Ville Baillie wrote:
> ---
>  drivers/gpu/drm/mxsfb/mxsfb_drv.c | 20 ++++++++++++++++----
>  drivers/gpu/drm/mxsfb/mxsfb_drv.h |  1 +
>  drivers/gpu/drm/mxsfb/mxsfb_out.c | 14 +++++++++++---
>  3 files changed, 28 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mxsfb/mxsfb_drv.c b/drivers/gpu/drm/mxsfb/mxsfb_drv.c
> index 6fafc90da4ec..c19a7b7aa3a6 100644
> --- a/drivers/gpu/drm/mxsfb/mxsfb_drv.c
> +++ b/drivers/gpu/drm/mxsfb/mxsfb_drv.c
> @@ -229,10 +229,22 @@ static int mxsfb_load(struct drm_device *drm, unsigned long flags)
>  		goto err_vblank;
>  	}
>  
> -	ret = drm_panel_attach(mxsfb->panel, &mxsfb->connector);
> -	if (ret) {
> -		dev_err(drm->dev, "Cannot connect panel\n");
> -		goto err_vblank;
> +	if (mxsfb->panel) {
> +		ret = drm_panel_attach(mxsfb->panel, &mxsfb->connector);
> +		if (ret) {
> +			dev_err(drm->dev, "Cannot connect panel\n");
> +			goto err_vblank;
> +		}
> +	} else if (mxsfb->bridge) {
> +		ret = drm_bridge_attach(&mxsfb->pipe.encoder, mxsfb->bridge,
> +				NULL);
> +		if (ret) {
> +			dev_err(drm->dev, "Cannot connect bridge\n");
> +			goto err_vblank;
> +		}
> +	} else {
> +		dev_err(drm->dev, "No panel or bridge\n");
> +		return -EINVAL;
>  	}
>  
>  	drm->mode_config.min_width	= MXSFB_MIN_XRES;
> diff --git a/drivers/gpu/drm/mxsfb/mxsfb_drv.h b/drivers/gpu/drm/mxsfb/mxsfb_drv.h
> index d975300dca05..436fe4bbb47a 100644
> --- a/drivers/gpu/drm/mxsfb/mxsfb_drv.h
> +++ b/drivers/gpu/drm/mxsfb/mxsfb_drv.h
> @@ -29,6 +29,7 @@ struct mxsfb_drm_private {
>  	struct drm_simple_display_pipe	pipe;
>  	struct drm_connector		connector;
>  	struct drm_panel		*panel;
> +	struct drm_bridge		*bridge;
>  };
>  
>  int mxsfb_setup_crtc(struct drm_device *dev);
> diff --git a/drivers/gpu/drm/mxsfb/mxsfb_out.c b/drivers/gpu/drm/mxsfb/mxsfb_out.c
> index 91e76f9cead6..77e03eb0fca6 100644
> --- a/drivers/gpu/drm/mxsfb/mxsfb_out.c
> +++ b/drivers/gpu/drm/mxsfb/mxsfb_out.c
> @@ -78,9 +78,11 @@ int mxsfb_create_output(struct drm_device *drm)
>  {
>  	struct mxsfb_drm_private *mxsfb = drm->dev_private;
>  	struct drm_panel *panel;
> +	struct drm_bridge *bridge;
>  	int ret;
>  
> -	ret = drm_of_find_panel_or_bridge(drm->dev->of_node, 0, 0, &panel, NULL);
> +	ret = drm_of_find_panel_or_bridge(drm->dev->of_node, 0, 0, &panel,
> +			&bridge);
>  	if (ret)
>  		return ret;
>  
> @@ -91,8 +93,14 @@ int mxsfb_create_output(struct drm_device *drm)
>  	ret = drm_connector_init(drm, &mxsfb->connector,
>  				 &mxsfb_panel_connector_funcs,
>  				 DRM_MODE_CONNECTOR_Unknown);
> -	if (!ret)
> -		mxsfb->panel = panel;
> +	if (!ret) {
> +		if (panel)
> +			mxsfb->panel = panel;
> +		else if (bridge)
> +			mxsfb->bridge = bridge;
> +		else
> +			return -EINVAL;
> +	}
>  
>  	return ret;
>  }
> -- 
> 2.17.1

Robert Chiras posted bridge support for mxsfb back in June:

    https://patchwork.freedesktop.org/patch/314430/?series=62822&rev=1

Cheers,
 -- Guido

> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
