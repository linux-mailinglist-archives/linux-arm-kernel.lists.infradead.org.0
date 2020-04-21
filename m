Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A951B28D9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 15:59:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Zq6i2tnXejHAboRogOQDhBlleqHgWFODVf7xeDRa7M=; b=Dv42ldi9Wz44oC
	V8N2COr8n5MjPPdxoPJfLAUQrTqYrEpQq7Iy3A7Ks+NCc75L+qjOGOUGvCLrCun4MKHGylQU8f9cW
	mKUf73JIHARKYtSXhCBV9YcUlLwzI9U1NpB0IQ0wfOWRc4JmNNlIa/9LG0blpxsbuzzqoJ/TXhEoJ
	cfjcDXvfIKAvCaTVtGXtGzonVmjccsuPOTeovSCDuIO61LRMfKOGqOzi7TNMJyb79MP5afhj+miSP
	Tyw7ydRy1yKhcspyxkZcZ1nc7Uwr6JW2dXy5XSIk5RRN0iYXe8EG7Mvd1spBHV+YaAxErzkZTlmlG
	148cHEkc/Ge1xdT9OVRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQtQt-0001VF-66; Tue, 21 Apr 2020 13:59:27 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQtQh-0001SM-3A
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 13:59:16 +0000
Received: by mail-wm1-x344.google.com with SMTP id e26so3664549wmk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 06:59:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=GFhVcwNkH19cbR+cE1ypfH56nXaAVZCLec2xJqB4kFg=;
 b=Cje0RUyUW8yZe79iZsor+8dzm23NXNZJ6S9VH8UVO9QRfVvhQ3rggw5tCYa3jMeE7p
 3qJjIF8mqBY9qgK1Htwamf5L8vvpm7FUqIK8p1ZB11DdtpdZ3YeJxD5P999SiexzhLNA
 P3E77WgVZvTJGej9UVAmIT7dFemOmy5x3SZ20=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=GFhVcwNkH19cbR+cE1ypfH56nXaAVZCLec2xJqB4kFg=;
 b=EP56VomsHcvJwJgSqKjOG9xpR3iNkP8bLAeEbeeVmhuiqfTzHflDehIK2l7s/q8z+w
 NyevApaaF+rdvkpj4iayrw45PoKK158T3k/WOjy3prD+bGEM6CiN1NG3uTiRHf3qwn5X
 6+YlCAA+QzzBtVipoj4loCb9g1AGeDv5Y0sKFoYUQ6Mzp1xJ2l5wnNo8g5w1OtizPRpb
 yxa+iwf4yfIXbfRsL03xrKQIDEfqIY/bPJpwzx+5/49bXzLzVIm6NBOEeXzfZmivQsaH
 VKRmCG5xc8leKW4OYYUB6jU8r9FVeuTMZWOdbUhbGN4+GRl6Tmj11EmV4YqWbRFjA/IM
 +IHA==
X-Gm-Message-State: AGi0PuYhySHjTTM9kAaleDQWZTBkz5uHqHYfu180sM+gDELpUD5KoiVc
 IXApEC54StYXtMdND7A7R1Hd7g==
X-Google-Smtp-Source: APiQypIThebpIsiA00RlINe3F/bJOmBXZSBWSdmsF3bQaYRTVrY4O3DozqrT76sEJG1Uw2UhgdLnBA==
X-Received: by 2002:a7b:cdfa:: with SMTP id p26mr5000192wmj.186.1587477550341; 
 Tue, 21 Apr 2020 06:59:10 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id d5sm3863822wrp.44.2020.04.21.06.59.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2020 06:59:09 -0700 (PDT)
Date: Tue, 21 Apr 2020 15:59:07 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH] drm/meson: add mode selection limits against specific
 SoC revisions
Message-ID: <20200421135907.GC3456981@phenom.ffwll.local>
Mail-Followup-To: Neil Armstrong <narmstrong@baylibre.com>,
 dri-devel@lists.freedesktop.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20200421134410.30603-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200421134410.30603-1-narmstrong@baylibre.com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_065915_139009_DE50C15F 
X-CRM114-Status: GOOD (  25.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 21, 2020 at 03:44:10PM +0200, Neil Armstrong wrote:
> The Amlogic S805X/Y uses the same die as the S905X, but with more
> limited graphics capabilities.
> 
> This adds a soc version detection adding specific limitations on the HDMI
> mode selections.
> 
> Here, we limit to HDMI 1.3a max HDMI PHY clock frequency.
> 
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>

Just a drive-by, but the code organization between the dw-hdmi bridge and
the driver looks pretty terribly and really leaky. Can't we do better?
Either by fixing the dw-hdmi bridge abstraction to actually abstract
something, or by givin up the dw-hdmi is a bridge and convert it to some
helper to implement a drm_encoder. Current status just doesn't make too
much sense to me.
-Daniel

> ---
>  drivers/gpu/drm/meson/meson_drv.c     | 29 ++++++++++++++++++++++++++-
>  drivers/gpu/drm/meson/meson_drv.h     |  6 ++++++
>  drivers/gpu/drm/meson/meson_dw_hdmi.c |  7 +++++++
>  3 files changed, 41 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/meson/meson_drv.c b/drivers/gpu/drm/meson/meson_drv.c
> index 6f29fab79952..621f6de0f076 100644
> --- a/drivers/gpu/drm/meson/meson_drv.c
> +++ b/drivers/gpu/drm/meson/meson_drv.c
> @@ -11,6 +11,7 @@
>  #include <linux/component.h>
>  #include <linux/module.h>
>  #include <linux/of_graph.h>
> +#include <linux/sys_soc.h>
>  #include <linux/platform_device.h>
>  #include <linux/soc/amlogic/meson-canvas.h>
>  
> @@ -183,6 +184,24 @@ static void meson_remove_framebuffers(void)
>  	kfree(ap);
>  }
>  
> +struct meson_drm_soc_attr {
> +	struct meson_drm_soc_limits limits;
> +	const struct soc_device_attribute *attrs;
> +};
> +
> +static const struct meson_drm_soc_attr meson_drm_soc_attrs[] = {
> +	/* S805X/S805Y HDMI PLL won't lock for HDMI PHY freq > 1,65GHz */
> +	{
> +		.limits = {
> +			.max_hdmi_phy_freq = 1650000,
> +		},
> +		.attrs = (const struct soc_device_attribute []) {
> +			{ .soc_id = "GXL (S805*)", },
> +			{ /* sentinel */ },
> +		}
> +	},
> +};
> +
>  static int meson_drv_bind_master(struct device *dev, bool has_components)
>  {
>  	struct platform_device *pdev = to_platform_device(dev);
> @@ -191,7 +210,7 @@ static int meson_drv_bind_master(struct device *dev, bool has_components)
>  	struct drm_device *drm;
>  	struct resource *res;
>  	void __iomem *regs;
> -	int ret;
> +	int ret, i;
>  
>  	/* Checks if an output connector is available */
>  	if (!meson_vpu_has_available_connectors(dev)) {
> @@ -281,6 +300,14 @@ static int meson_drv_bind_master(struct device *dev, bool has_components)
>  	if (ret)
>  		goto free_drm;
>  
> +	/* Assign limits per soc revision/package */
> +	for (i = 0 ; i < ARRAY_SIZE(meson_drm_soc_attrs) ; ++i) {
> +		if (soc_device_match(meson_drm_soc_attrs[i].attrs)) {
> +			priv->limits = &meson_drm_soc_attrs[i].limits;
> +			break;
> +		}
> +	}
> +
>  	/* Remove early framebuffers (ie. simplefb) */
>  	meson_remove_framebuffers();
>  
> diff --git a/drivers/gpu/drm/meson/meson_drv.h b/drivers/gpu/drm/meson/meson_drv.h
> index 04fdf3826643..5b23704a80d6 100644
> --- a/drivers/gpu/drm/meson/meson_drv.h
> +++ b/drivers/gpu/drm/meson/meson_drv.h
> @@ -30,6 +30,10 @@ struct meson_drm_match_data {
>  	struct meson_afbcd_ops *afbcd_ops;
>  };
>  
> +struct meson_drm_soc_limits {
> +	unsigned int max_hdmi_phy_freq;
> +};
> +
>  struct meson_drm {
>  	struct device *dev;
>  	enum vpu_compatible compat;
> @@ -48,6 +52,8 @@ struct meson_drm {
>  	struct drm_plane *primary_plane;
>  	struct drm_plane *overlay_plane;
>  
> +	const struct meson_drm_soc_limits *limits;
> +
>  	/* Components Data */
>  	struct {
>  		bool osd1_enabled;
> diff --git a/drivers/gpu/drm/meson/meson_dw_hdmi.c b/drivers/gpu/drm/meson/meson_dw_hdmi.c
> index e8c94915a4fc..dc3d5122475a 100644
> --- a/drivers/gpu/drm/meson/meson_dw_hdmi.c
> +++ b/drivers/gpu/drm/meson/meson_dw_hdmi.c
> @@ -695,6 +695,13 @@ dw_hdmi_mode_valid(struct drm_connector *connector,
>  	dev_dbg(connector->dev->dev, "%s: vclk:%d phy=%d venc=%d hdmi=%d\n",
>  		__func__, phy_freq, vclk_freq, venc_freq, hdmi_freq);
>  
> +	/* Check against soc revision/package limits */
> +	if (priv->limits) {
> +		if (priv->limits->max_hdmi_phy_freq &&
> +		    phy_freq > priv->limits->max_hdmi_phy_freq)
> +			return MODE_CLOCK_HIGH;
> +	}
> +
>  	return meson_vclk_vic_supported_freq(phy_freq, vclk_freq);
>  }
>  
> -- 
> 2.22.0
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
