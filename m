Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA9579988C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 17:52:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TbzIJxLZyUBwAxhsav2KVEMQLkvyjaBlUmxnFhu6Ioo=; b=PKnUlcviOqeF8s
	6b7BkZFQMs18AL921LRAQf1+Ld1jWl0aZNicppR3rjk8tL6SwMNjuFUkNVfjLOtTI5NqYEHMLDQ7p
	haEfklPfuicI5mZApIoSZp1Hw2v+675dLHoUKiMxamPjz7YptJkcoxpXZ2hkt6BjAMmejvma+DmXA
	ObTOE9pJ4ElQeFChe1sgt3U8qIjTO9lwSUoRaIF6+fmsb8F6wNt/HtSI9e5DNgsmZqg2pgxBMJ0mA
	eNQb0MURsPcWeI2qGn+dxmnWAH0WEKE/7JI6fbka/AluRPUDtSW5Afvhvc//jP2G/3P+Tr0qhA9ec
	euUxCVi/MBuRl5Org2BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0pO1-0002BF-Bz; Thu, 22 Aug 2019 15:52:29 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0pNm-0002AX-9K
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 15:52:17 +0000
Received: by mail-wm1-x342.google.com with SMTP id d16so6297183wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 08:52:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=e+HWkLnutzVYEKEusU+dAu/E7XhW47xXkduInHWGa84=;
 b=qKrFjG5zt9PaE08/AwWG39SZgldWszn97hxZRQHSdceNBda9FSQpaco//QfK5tzIM+
 QsglPuVXM0zTU9radD0pJEkWpqullf965FwyvUG7hUTogJf8ceanONKvQYSb48Dld5/t
 RmGMWUDOaTT2RneBo7ISjzO1qal1I6gA7xd0w25w/cQ0NrRJ0VvlY10ft7+q61vQElvq
 VhX6//EL1pRmXxaZLdzn+Jgc2QC8q4GZvK9JHSvCLlUcNroZTJpRjtMyEB2SD40gfyDw
 HLu/JhGsS+SJQ1HakPSaH72JYRgzAHP5G+3h/D97lwBUlsI3axeF8Z8AZh2UGb89xzcJ
 0Olw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=e+HWkLnutzVYEKEusU+dAu/E7XhW47xXkduInHWGa84=;
 b=EcHjf2eF/j3CP5SS6nUJuFBG3KRaqB5SHVbDA7jacbQvpXh7FHaHbJ1u4mDryFde1F
 BO9o3+2Iazgys1wWZ9EUVyKDlJpfo59wJsvRa+gzw31+773huOMirJcHhvFV64IqJe6Y
 AJ8XI+GEuwmNdwXQhDln69pxYAJ0XwQv/J4BaT28L1xgQogANL/Hur60jxmGpx/WBEQs
 c1cANxHxlw27j2tolchceD/3BZry6Vj1QqlHiib4y0ctolMu7BnGVHAFAnXUjPvOOJc8
 qT7WelszM1Kl/Nz/t92Nm0wXEDZVP2LjYfUHrBBHf5DO8gZtGDySA/gQPL5pFx5PAJ66
 4kSA==
X-Gm-Message-State: APjAAAUJpNmLF5GaNcOmD8IFi8D4R9MV7IvvZJVIUfiEuWnESzw5QYxf
 jSKakgHgbRSKfV9/gxwO73d3vQ==
X-Google-Smtp-Source: APXvYqyjc3exTWGd/PvEO1YL9KcSBg5Kcyjx4iHUCVf4AUBQPkP0ugdHMq66ImQLA1QCZbfR7hUbpg==
X-Received: by 2002:a1c:ca0c:: with SMTP id a12mr7050881wmg.71.1566489132157; 
 Thu, 22 Aug 2019 08:52:12 -0700 (PDT)
Received: from [192.168.1.62] (176-150-251-154.abo.bbox.fr. [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id
 f24sm2835377wmc.25.2019.08.22.08.52.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 22 Aug 2019 08:52:11 -0700 (PDT)
Subject: Re: [PATCH v2] drm: meson: use match data to detect vpu compatibility
To: Julien Masson <jmasson@baylibre.com>, Kevin Hilman <khilman@baylibre.com>
References: <87imqpz21w.fsf@masson.i-did-not-set--mail-host-address--so-tickle-me>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <4551d50f-19e5-68f8-68a7-a43d591a0b2f@baylibre.com>
Date: Thu, 22 Aug 2019 17:52:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <87imqpz21w.fsf@masson.i-did-not-set--mail-host-address--so-tickle-me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_085214_338336_03E3D6BB 
X-CRM114-Status: GOOD (  25.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Julien,

On 22/08/2019 16:43, Julien Masson wrote:
> This patch introduce new enum which contains all VPU family (GXBB,
> GXL, GXM and G12A).
> This enum is used to detect the VPU compatible with the device.
> 
> We only need to set .data to the corresponding enum in the device
> table, no need to check .compatible string anymore.
> 
> Signed-off-by: Julien Masson <jmasson@baylibre.com>
> ---
> 
> Changes since v1 at [1]:
> - Set .data field in struct dt_match instead of connectors_match
> - Add compat in struct meson_drm and set it the corresponding family at probe
> - Check directly compat in meson_vpu_is_compatible
> 
> [1] https://patchwork.kernel.org/patch/11108855/
> 
>  drivers/gpu/drm/meson/meson_crtc.c      |  2 +-
>  drivers/gpu/drm/meson/meson_drv.c       | 14 ++++--
>  drivers/gpu/drm/meson/meson_drv.h       | 13 ++++-
>  drivers/gpu/drm/meson/meson_dw_hdmi.c   |  2 +-
>  drivers/gpu/drm/meson/meson_overlay.c   |  2 +-
>  drivers/gpu/drm/meson/meson_plane.c     | 10 ++--
>  drivers/gpu/drm/meson/meson_vclk.c      | 64 ++++++++++++-------------
>  drivers/gpu/drm/meson/meson_venc.c      |  2 +-
>  drivers/gpu/drm/meson/meson_venc_cvbs.c | 10 ++--
>  drivers/gpu/drm/meson/meson_viu.c       | 10 ++--
>  drivers/gpu/drm/meson/meson_vpp.c       | 10 ++--
>  11 files changed, 77 insertions(+), 62 deletions(-)

Tested-by: Neil Armstrong <narmstrong@baylibre.com>

on SEI510 (G12A), VIM2 (GXM) and Libretech-AC (GXL)

and

Acked-by: Neil Armstrong <narmstrong@baylibre.com>

Applying to drm-misc-next

Neil

> 
> diff --git a/drivers/gpu/drm/meson/meson_crtc.c b/drivers/gpu/drm/meson/meson_crtc.c
> index bba25325aa9c..57ae1c13d1e6 100644
> --- a/drivers/gpu/drm/meson/meson_crtc.c
> +++ b/drivers/gpu/drm/meson/meson_crtc.c
> @@ -575,7 +575,7 @@ int meson_crtc_create(struct meson_drm *priv)
>  		return ret;
>  	}
>  
> -	if (meson_vpu_is_compatible(priv, "amlogic,meson-g12a-vpu")) {
> +	if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A)) {
>  		meson_crtc->enable_osd1 = meson_g12a_crtc_enable_osd1;
>  		meson_crtc->enable_vd1 = meson_g12a_crtc_enable_vd1;
>  		meson_crtc->viu_offset = MESON_G12A_VIU_OFFSET;
> diff --git a/drivers/gpu/drm/meson/meson_drv.c b/drivers/gpu/drm/meson/meson_drv.c
> index ae0166181606..a24f8dec5adc 100644
> --- a/drivers/gpu/drm/meson/meson_drv.c
> +++ b/drivers/gpu/drm/meson/meson_drv.c
> @@ -209,6 +209,8 @@ static int meson_drv_bind_master(struct device *dev, bool has_components)
>  	priv->drm = drm;
>  	priv->dev = dev;
>  
> +	priv->compat = (enum vpu_compatible)of_device_get_match_data(priv->dev);
> +
>  	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "vpu");
>  	regs = devm_ioremap_resource(dev, res);
>  	if (IS_ERR(regs)) {
> @@ -453,10 +455,14 @@ static int meson_drv_probe(struct platform_device *pdev)
>  };
>  
>  static const struct of_device_id dt_match[] = {
> -	{ .compatible = "amlogic,meson-gxbb-vpu" },
> -	{ .compatible = "amlogic,meson-gxl-vpu" },
> -	{ .compatible = "amlogic,meson-gxm-vpu" },
> -	{ .compatible = "amlogic,meson-g12a-vpu" },
> +	{ .compatible = "amlogic,meson-gxbb-vpu",
> +	  .data       = (void *)VPU_COMPATIBLE_GXBB },
> +	{ .compatible = "amlogic,meson-gxl-vpu",
> +	  .data       = (void *)VPU_COMPATIBLE_GXL },
> +	{ .compatible = "amlogic,meson-gxm-vpu",
> +	  .data       = (void *)VPU_COMPATIBLE_GXM },
> +	{ .compatible = "amlogic,meson-g12a-vpu",
> +	  .data       = (void *)VPU_COMPATIBLE_G12A },
>  	{}
>  };
>  MODULE_DEVICE_TABLE(of, dt_match);
> diff --git a/drivers/gpu/drm/meson/meson_drv.h b/drivers/gpu/drm/meson/meson_drv.h
> index c9aaec1a846e..820d07bdd42a 100644
> --- a/drivers/gpu/drm/meson/meson_drv.h
> +++ b/drivers/gpu/drm/meson/meson_drv.h
> @@ -9,6 +9,7 @@
>  
>  #include <linux/device.h>
>  #include <linux/of.h>
> +#include <linux/of_device.h>
>  #include <linux/regmap.h>
>  
>  struct drm_crtc;
> @@ -16,8 +17,16 @@ struct drm_device;
>  struct drm_plane;
>  struct meson_drm;
>  
> +enum vpu_compatible {
> +	VPU_COMPATIBLE_GXBB = 0,
> +	VPU_COMPATIBLE_GXL  = 1,
> +	VPU_COMPATIBLE_GXM  = 2,
> +	VPU_COMPATIBLE_G12A = 3,
> +};
> +
>  struct meson_drm {
>  	struct device *dev;
> +	enum vpu_compatible compat;
>  	void __iomem *io_base;
>  	struct regmap *hhi;
>  	int vsync_irq;
> @@ -116,9 +125,9 @@ struct meson_drm {
>  };
>  
>  static inline int meson_vpu_is_compatible(struct meson_drm *priv,
> -					  const char *compat)
> +					  enum vpu_compatible family)
>  {
> -	return of_device_is_compatible(priv->dev->of_node, compat);
> +	return priv->compat == family;
>  }
>  
>  #endif /* __MESON_DRV_H */
> diff --git a/drivers/gpu/drm/meson/meson_dw_hdmi.c b/drivers/gpu/drm/meson/meson_dw_hdmi.c
> index f893ebd0b799..68bbd987147b 100644
> --- a/drivers/gpu/drm/meson/meson_dw_hdmi.c
> +++ b/drivers/gpu/drm/meson/meson_dw_hdmi.c
> @@ -937,7 +937,7 @@ static int meson_dw_hdmi_bind(struct device *dev, struct device *master,
>  	reset_control_reset(meson_dw_hdmi->hdmitx_phy);
>  
>  	/* Enable APB3 fail on error */
> -	if (!meson_vpu_is_compatible(priv, "amlogic,meson-g12a-vpu")) {
> +	if (!meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A)) {
>  		writel_bits_relaxed(BIT(15), BIT(15),
>  				    meson_dw_hdmi->hdmitx + HDMITX_TOP_CTRL_REG);
>  		writel_bits_relaxed(BIT(15), BIT(15),
> diff --git a/drivers/gpu/drm/meson/meson_overlay.c b/drivers/gpu/drm/meson/meson_overlay.c
> index 5aa9dcb4b35e..2468b0212d52 100644
> --- a/drivers/gpu/drm/meson/meson_overlay.c
> +++ b/drivers/gpu/drm/meson/meson_overlay.c
> @@ -513,7 +513,7 @@ static void meson_overlay_atomic_disable(struct drm_plane *plane,
>  	priv->viu.vd1_enabled = false;
>  
>  	/* Disable VD1 */
> -	if (meson_vpu_is_compatible(priv, "amlogic,meson-g12a-vpu")) {
> +	if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A)) {
>  		writel_relaxed(0, priv->io_base + _REG(VD1_BLEND_SRC_CTRL));
>  		writel_relaxed(0, priv->io_base + _REG(VD2_BLEND_SRC_CTRL));
>  		writel_relaxed(0, priv->io_base + _REG(VD1_IF0_GEN_REG + 0x17b0));
> diff --git a/drivers/gpu/drm/meson/meson_plane.c b/drivers/gpu/drm/meson/meson_plane.c
> index b9e1e117fb85..ed543227b00d 100644
> --- a/drivers/gpu/drm/meson/meson_plane.c
> +++ b/drivers/gpu/drm/meson/meson_plane.c
> @@ -138,7 +138,7 @@ static void meson_plane_atomic_update(struct drm_plane *plane,
>  				      OSD_ENDIANNESS_LE);
>  
>  	/* On GXBB, Use the old non-HDR RGB2YUV converter */
> -	if (meson_vpu_is_compatible(priv, "amlogic,meson-gxbb-vpu"))
> +	if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXBB))
>  		priv->viu.osd1_blk0_cfg[0] |= OSD_OUTPUT_COLOR_RGB;
>  
>  	switch (fb->format->format) {
> @@ -292,7 +292,7 @@ static void meson_plane_atomic_update(struct drm_plane *plane,
>  	priv->viu.osd1_blk0_cfg[3] = ((dest.x2 - 1) << 16) | dest.x1;
>  	priv->viu.osd1_blk0_cfg[4] = ((dest.y2 - 1) << 16) | dest.y1;
>  
> -	if (meson_vpu_is_compatible(priv, "amlogic,meson-g12a-vpu")) {
> +	if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A)) {
>  		priv->viu.osd_blend_din0_scope_h = ((dest.x2 - 1) << 16) | dest.x1;
>  		priv->viu.osd_blend_din0_scope_v = ((dest.y2 - 1) << 16) | dest.y1;
>  		priv->viu.osb_blend0_size = dst_h << 16 | dst_w;
> @@ -308,8 +308,8 @@ static void meson_plane_atomic_update(struct drm_plane *plane,
>  
>  	if (!meson_plane->enabled) {
>  		/* Reset OSD1 before enabling it on GXL+ SoCs */
> -		if (meson_vpu_is_compatible(priv, "amlogic,meson-gxm-vpu") ||
> -		    meson_vpu_is_compatible(priv, "amlogic,meson-gxl-vpu"))
> +		if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXM) ||
> +		    meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXL))
>  			meson_viu_osd1_reset(priv);
>  
>  		meson_plane->enabled = true;
> @@ -327,7 +327,7 @@ static void meson_plane_atomic_disable(struct drm_plane *plane,
>  	struct meson_drm *priv = meson_plane->priv;
>  
>  	/* Disable OSD1 */
> -	if (meson_vpu_is_compatible(priv, "amlogic,meson-g12a-vpu"))
> +	if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A))
>  		writel_bits_relaxed(VIU_OSD1_POSTBLD_SRC_OSD1, 0,
>  				    priv->io_base + _REG(OSD1_BLEND_SRC_CTRL));
>  	else
> diff --git a/drivers/gpu/drm/meson/meson_vclk.c b/drivers/gpu/drm/meson/meson_vclk.c
> index 869231c93617..ac491a781952 100644
> --- a/drivers/gpu/drm/meson/meson_vclk.c
> +++ b/drivers/gpu/drm/meson/meson_vclk.c
> @@ -242,7 +242,7 @@ static void meson_venci_cvbs_clock_config(struct meson_drm *priv)
>  	unsigned int val;
>  
>  	/* Setup PLL to output 1.485GHz */
> -	if (meson_vpu_is_compatible(priv, "amlogic,meson-gxbb-vpu")) {
> +	if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXBB)) {
>  		regmap_write(priv->hhi, HHI_HDMI_PLL_CNTL, 0x5800023d);
>  		regmap_write(priv->hhi, HHI_HDMI_PLL_CNTL2, 0x00404e00);
>  		regmap_write(priv->hhi, HHI_HDMI_PLL_CNTL3, 0x0d5c5091);
> @@ -254,8 +254,8 @@ static void meson_venci_cvbs_clock_config(struct meson_drm *priv)
>  		/* Poll for lock bit */
>  		regmap_read_poll_timeout(priv->hhi, HHI_HDMI_PLL_CNTL, val,
>  					 (val & HDMI_PLL_LOCK), 10, 0);
> -	} else if (meson_vpu_is_compatible(priv, "amlogic,meson-gxm-vpu") ||
> -		   meson_vpu_is_compatible(priv, "amlogic,meson-gxl-vpu")) {
> +	} else if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXM) ||
> +		   meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXL)) {
>  		regmap_write(priv->hhi, HHI_HDMI_PLL_CNTL, 0x4000027b);
>  		regmap_write(priv->hhi, HHI_HDMI_PLL_CNTL2, 0x800cb300);
>  		regmap_write(priv->hhi, HHI_HDMI_PLL_CNTL3, 0xa6212844);
> @@ -272,7 +272,7 @@ static void meson_venci_cvbs_clock_config(struct meson_drm *priv)
>  		/* Poll for lock bit */
>  		regmap_read_poll_timeout(priv->hhi, HHI_HDMI_PLL_CNTL, val,
>  					 (val & HDMI_PLL_LOCK), 10, 0);
> -	} else if (meson_vpu_is_compatible(priv, "amlogic,meson-g12a-vpu")) {
> +	} else if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A)) {
>  		regmap_write(priv->hhi, HHI_HDMI_PLL_CNTL, 0x1a0504f7);
>  		regmap_write(priv->hhi, HHI_HDMI_PLL_CNTL2, 0x00010000);
>  		regmap_write(priv->hhi, HHI_HDMI_PLL_CNTL3, 0x00000000);
> @@ -300,7 +300,7 @@ static void meson_venci_cvbs_clock_config(struct meson_drm *priv)
>  				VCLK2_DIV_MASK, (55 - 1));
>  
>  	/* select vid_pll for vclk2 */
> -	if (meson_vpu_is_compatible(priv, "amlogic,meson-g12a-vpu"))
> +	if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A))
>  		regmap_update_bits(priv->hhi, HHI_VIID_CLK_CNTL,
>  					VCLK2_SEL_MASK, (0 << VCLK2_SEL_SHIFT));
>  	else
> @@ -455,7 +455,7 @@ void meson_hdmi_pll_set_params(struct meson_drm *priv, unsigned int m,
>  {
>  	unsigned int val;
>  
> -	if (meson_vpu_is_compatible(priv, "amlogic,meson-gxbb-vpu")) {
> +	if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXBB)) {
>  		regmap_write(priv->hhi, HHI_HDMI_PLL_CNTL, 0x58000200 | m);
>  		if (frac)
>  			regmap_write(priv->hhi, HHI_HDMI_PLL_CNTL2,
> @@ -475,8 +475,8 @@ void meson_hdmi_pll_set_params(struct meson_drm *priv, unsigned int m,
>  		/* Poll for lock bit */
>  		regmap_read_poll_timeout(priv->hhi, HHI_HDMI_PLL_CNTL,
>  					 val, (val & HDMI_PLL_LOCK), 10, 0);
> -	} else if (meson_vpu_is_compatible(priv, "amlogic,meson-gxm-vpu") ||
> -		   meson_vpu_is_compatible(priv, "amlogic,meson-gxl-vpu")) {
> +	} else if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXM) ||
> +		   meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXL)) {
>  		regmap_write(priv->hhi, HHI_HDMI_PLL_CNTL, 0x40000200 | m);
>  		regmap_write(priv->hhi, HHI_HDMI_PLL_CNTL2, 0x800cb000 | frac);
>  		regmap_write(priv->hhi, HHI_HDMI_PLL_CNTL3, 0x860f30c4);
> @@ -493,7 +493,7 @@ void meson_hdmi_pll_set_params(struct meson_drm *priv, unsigned int m,
>  		/* Poll for lock bit */
>  		regmap_read_poll_timeout(priv->hhi, HHI_HDMI_PLL_CNTL, val,
>  				(val & HDMI_PLL_LOCK), 10, 0);
> -	} else if (meson_vpu_is_compatible(priv, "amlogic,meson-g12a-vpu")) {
> +	} else if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A)) {
>  		regmap_write(priv->hhi, HHI_HDMI_PLL_CNTL, 0x0b3a0400 | m);
>  
>  		/* Enable and reset */
> @@ -545,36 +545,36 @@ void meson_hdmi_pll_set_params(struct meson_drm *priv, unsigned int m,
>  		} while(1);
>  	}
>  
> -	if (meson_vpu_is_compatible(priv, "amlogic,meson-gxbb-vpu"))
> +	if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXBB))
>  		regmap_update_bits(priv->hhi, HHI_HDMI_PLL_CNTL2,
>  				3 << 16, pll_od_to_reg(od1) << 16);
> -	else if (meson_vpu_is_compatible(priv, "amlogic,meson-gxm-vpu") ||
> -		 meson_vpu_is_compatible(priv, "amlogic,meson-gxl-vpu"))
> +	else if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXM) ||
> +		 meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXL))
>  		regmap_update_bits(priv->hhi, HHI_HDMI_PLL_CNTL3,
>  				3 << 21, pll_od_to_reg(od1) << 21);
> -	else if (meson_vpu_is_compatible(priv, "amlogic,meson-g12a-vpu"))
> +	else if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A))
>  		regmap_update_bits(priv->hhi, HHI_HDMI_PLL_CNTL,
>  				3 << 16, pll_od_to_reg(od1) << 16);
>  
> -	if (meson_vpu_is_compatible(priv, "amlogic,meson-gxbb-vpu"))
> +	if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXBB))
>  		regmap_update_bits(priv->hhi, HHI_HDMI_PLL_CNTL2,
>  				3 << 22, pll_od_to_reg(od2) << 22);
> -	else if (meson_vpu_is_compatible(priv, "amlogic,meson-gxm-vpu") ||
> -		 meson_vpu_is_compatible(priv, "amlogic,meson-gxl-vpu"))
> +	else if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXM) ||
> +		 meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXL))
>  		regmap_update_bits(priv->hhi, HHI_HDMI_PLL_CNTL3,
>  				3 << 23, pll_od_to_reg(od2) << 23);
> -	else if (meson_vpu_is_compatible(priv, "amlogic,meson-g12a-vpu"))
> +	else if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A))
>  		regmap_update_bits(priv->hhi, HHI_HDMI_PLL_CNTL,
>  				3 << 18, pll_od_to_reg(od2) << 18);
>  
> -	if (meson_vpu_is_compatible(priv, "amlogic,meson-gxbb-vpu"))
> +	if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXBB))
>  		regmap_update_bits(priv->hhi, HHI_HDMI_PLL_CNTL2,
>  				3 << 18, pll_od_to_reg(od3) << 18);
> -	else if (meson_vpu_is_compatible(priv, "amlogic,meson-gxm-vpu") ||
> -		 meson_vpu_is_compatible(priv, "amlogic,meson-gxl-vpu"))
> +	else if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXM) ||
> +		 meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXL))
>  		regmap_update_bits(priv->hhi, HHI_HDMI_PLL_CNTL3,
>  				3 << 19, pll_od_to_reg(od3) << 19);
> -	else if (meson_vpu_is_compatible(priv, "amlogic,meson-g12a-vpu"))
> +	else if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A))
>  		regmap_update_bits(priv->hhi, HHI_HDMI_PLL_CNTL,
>  				3 << 20, pll_od_to_reg(od3) << 20);
>  }
> @@ -585,7 +585,7 @@ static unsigned int meson_hdmi_pll_get_m(struct meson_drm *priv,
>  					 unsigned int pll_freq)
>  {
>  	/* The GXBB PLL has a /2 pre-multiplier */
> -	if (meson_vpu_is_compatible(priv, "amlogic,meson-gxbb-vpu"))
> +	if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXBB))
>  		pll_freq /= 2;
>  
>  	return pll_freq / XTAL_FREQ;
> @@ -605,12 +605,12 @@ static unsigned int meson_hdmi_pll_get_frac(struct meson_drm *priv,
>  	unsigned int frac;
>  
>  	/* The GXBB PLL has a /2 pre-multiplier and a larger FRAC width */
> -	if (meson_vpu_is_compatible(priv, "amlogic,meson-gxbb-vpu")) {
> +	if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXBB)) {
>  		frac_max = HDMI_FRAC_MAX_GXBB;
>  		parent_freq *= 2;
>  	}
>  
> -	if (meson_vpu_is_compatible(priv, "amlogic,meson-g12a-vpu"))
> +	if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A))
>  		frac_max = HDMI_FRAC_MAX_G12A;
>  
>  	/* We can have a perfect match !*/
> @@ -631,15 +631,15 @@ static bool meson_hdmi_pll_validate_params(struct meson_drm *priv,
>  					   unsigned int m,
>  					   unsigned int frac)
>  {
> -	if (meson_vpu_is_compatible(priv, "amlogic,meson-gxbb-vpu")) {
> +	if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXBB)) {
>  		/* Empiric supported min/max dividers */
>  		if (m < 53 || m > 123)
>  			return false;
>  		if (frac >= HDMI_FRAC_MAX_GXBB)
>  			return false;
> -	} else if (meson_vpu_is_compatible(priv, "amlogic,meson-gxm-vpu") ||
> -		   meson_vpu_is_compatible(priv, "amlogic,meson-gxl-vpu") ||
> -		   meson_vpu_is_compatible(priv, "amlogic,meson-g12a-vpu")) {
> +	} else if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXM) ||
> +		   meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXL) ||
> +		   meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A)) {
>  		/* Empiric supported min/max dividers */
>  		if (m < 106 || m > 247)
>  			return false;
> @@ -759,7 +759,7 @@ static void meson_vclk_set(struct meson_drm *priv, unsigned int pll_base_freq,
>  	/* Set HDMI PLL rate */
>  	if (!od1 && !od2 && !od3) {
>  		meson_hdmi_pll_generic_set(priv, pll_base_freq);
> -	} else if (meson_vpu_is_compatible(priv, "amlogic,meson-gxbb-vpu")) {
> +	} else if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXBB)) {
>  		switch (pll_base_freq) {
>  		case 2970000:
>  			m = 0x3d;
> @@ -776,8 +776,8 @@ static void meson_vclk_set(struct meson_drm *priv, unsigned int pll_base_freq,
>  		}
>  
>  		meson_hdmi_pll_set_params(priv, m, frac, od1, od2, od3);
> -	} else if (meson_vpu_is_compatible(priv, "amlogic,meson-gxm-vpu") ||
> -		   meson_vpu_is_compatible(priv, "amlogic,meson-gxl-vpu")) {
> +	} else if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXM) ||
> +		   meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXL)) {
>  		switch (pll_base_freq) {
>  		case 2970000:
>  			m = 0x7b;
> @@ -794,7 +794,7 @@ static void meson_vclk_set(struct meson_drm *priv, unsigned int pll_base_freq,
>  		}
>  
>  		meson_hdmi_pll_set_params(priv, m, frac, od1, od2, od3);
> -	} else if (meson_vpu_is_compatible(priv, "amlogic,meson-g12a-vpu")) {
> +	} else if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A)) {
>  		switch (pll_base_freq) {
>  		case 2970000:
>  			m = 0x7b;
> diff --git a/drivers/gpu/drm/meson/meson_venc.c b/drivers/gpu/drm/meson/meson_venc.c
> index 679d2274531c..4efd7864d5bf 100644
> --- a/drivers/gpu/drm/meson/meson_venc.c
> +++ b/drivers/gpu/drm/meson/meson_venc.c
> @@ -1759,7 +1759,7 @@ void meson_venc_disable_vsync(struct meson_drm *priv)
>  void meson_venc_init(struct meson_drm *priv)
>  {
>  	/* Disable CVBS VDAC */
> -	if (meson_vpu_is_compatible(priv, "amlogic,meson-g12a-vpu")) {
> +	if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A)) {
>  		regmap_write(priv->hhi, HHI_VDAC_CNTL0_G12A, 0);
>  		regmap_write(priv->hhi, HHI_VDAC_CNTL1_G12A, 8);
>  	} else {
> diff --git a/drivers/gpu/drm/meson/meson_venc_cvbs.c b/drivers/gpu/drm/meson/meson_venc_cvbs.c
> index 6dc130a24070..9ab27aecfcf3 100644
> --- a/drivers/gpu/drm/meson/meson_venc_cvbs.c
> +++ b/drivers/gpu/drm/meson/meson_venc_cvbs.c
> @@ -155,7 +155,7 @@ static void meson_venc_cvbs_encoder_disable(struct drm_encoder *encoder)
>  	struct meson_drm *priv = meson_venc_cvbs->priv;
>  
>  	/* Disable CVBS VDAC */
> -	if (meson_vpu_is_compatible(priv, "amlogic,meson-g12a-vpu")) {
> +	if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A)) {
>  		regmap_write(priv->hhi, HHI_VDAC_CNTL0_G12A, 0);
>  		regmap_write(priv->hhi, HHI_VDAC_CNTL1_G12A, 0);
>  	} else {
> @@ -174,14 +174,14 @@ static void meson_venc_cvbs_encoder_enable(struct drm_encoder *encoder)
>  	writel_bits_relaxed(VENC_VDAC_SEL_ATV_DMD, 0,
>  			    priv->io_base + _REG(VENC_VDAC_DACSEL0));
>  
> -	if (meson_vpu_is_compatible(priv, "amlogic,meson-gxbb-vpu")) {
> +	if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXBB)) {
>  		regmap_write(priv->hhi, HHI_VDAC_CNTL0, 1);
>  		regmap_write(priv->hhi, HHI_VDAC_CNTL1, 0);
> -	} else if (meson_vpu_is_compatible(priv, "amlogic,meson-gxm-vpu") ||
> -		 meson_vpu_is_compatible(priv, "amlogic,meson-gxl-vpu")) {
> +	} else if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXM) ||
> +		 meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXL)) {
>  		regmap_write(priv->hhi, HHI_VDAC_CNTL0, 0xf0001);
>  		regmap_write(priv->hhi, HHI_VDAC_CNTL1, 0);
> -	} else if (meson_vpu_is_compatible(priv, "amlogic,meson-g12a-vpu")) {
> +	} else if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A)) {
>  		regmap_write(priv->hhi, HHI_VDAC_CNTL0_G12A, 0x906001);
>  		regmap_write(priv->hhi, HHI_VDAC_CNTL1_G12A, 0);
>  	}
> diff --git a/drivers/gpu/drm/meson/meson_viu.c b/drivers/gpu/drm/meson/meson_viu.c
> index e70cd55d56c9..68cf2c2eca5f 100644
> --- a/drivers/gpu/drm/meson/meson_viu.c
> +++ b/drivers/gpu/drm/meson/meson_viu.c
> @@ -353,10 +353,10 @@ void meson_viu_init(struct meson_drm *priv)
>  			    priv->io_base + _REG(VIU_OSD2_CTRL_STAT));
>  
>  	/* On GXL/GXM, Use the 10bit HDR conversion matrix */
> -	if (meson_vpu_is_compatible(priv, "amlogic,meson-gxm-vpu") ||
> -	    meson_vpu_is_compatible(priv, "amlogic,meson-gxl-vpu"))
> +	if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXM) ||
> +	    meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXL))
>  		meson_viu_load_matrix(priv);
> -	else if (meson_vpu_is_compatible(priv, "amlogic,meson-g12a-vpu"))
> +	else if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A))
>  		meson_viu_set_g12a_osd1_matrix(priv, RGB709_to_YUV709l_coeff,
>  					       true);
>  
> @@ -367,7 +367,7 @@ void meson_viu_init(struct meson_drm *priv)
>  		VIU_OSD_WORDS_PER_BURST(4) | /* 4 words in 1 burst */
>  		VIU_OSD_FIFO_LIMITS(2);      /* fifo_lim: 2*16=32 */
>  
> -	if (meson_vpu_is_compatible(priv, "amlogic,meson-g12a-vpu"))
> +	if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A))
>  		reg |= meson_viu_osd_burst_length_reg(32);
>  	else
>  		reg |= meson_viu_osd_burst_length_reg(64);
> @@ -394,7 +394,7 @@ void meson_viu_init(struct meson_drm *priv)
>  	writel_relaxed(0x00FF00C0,
>  			priv->io_base + _REG(VD2_IF0_LUMA_FIFO_SIZE));
>  
> -	if (meson_vpu_is_compatible(priv, "amlogic,meson-g12a-vpu")) {
> +	if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A)) {
>  		writel_relaxed(VIU_OSD_BLEND_REORDER(0, 1) |
>  			       VIU_OSD_BLEND_REORDER(1, 0) |
>  			       VIU_OSD_BLEND_REORDER(2, 0) |
> diff --git a/drivers/gpu/drm/meson/meson_vpp.c b/drivers/gpu/drm/meson/meson_vpp.c
> index 1429f3be6028..154837688ab0 100644
> --- a/drivers/gpu/drm/meson/meson_vpp.c
> +++ b/drivers/gpu/drm/meson/meson_vpp.c
> @@ -91,20 +91,20 @@ static void meson_vpp_write_vd_scaling_filter_coefs(struct meson_drm *priv,
>  void meson_vpp_init(struct meson_drm *priv)
>  {
>  	/* set dummy data default YUV black */
> -	if (meson_vpu_is_compatible(priv, "amlogic,meson-gxl-vpu"))
> +	if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXL))
>  		writel_relaxed(0x108080, priv->io_base + _REG(VPP_DUMMY_DATA1));
> -	else if (meson_vpu_is_compatible(priv, "amlogic,meson-gxm-vpu")) {
> +	else if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXM)) {
>  		writel_bits_relaxed(0xff << 16, 0xff << 16,
>  				    priv->io_base + _REG(VIU_MISC_CTRL1));
>  		writel_relaxed(VPP_PPS_DUMMY_DATA_MODE,
>  			       priv->io_base + _REG(VPP_DOLBY_CTRL));
>  		writel_relaxed(0x1020080,
>  				priv->io_base + _REG(VPP_DUMMY_DATA1));
> -	} else if (meson_vpu_is_compatible(priv, "amlogic,meson-g12a-vpu"))
> +	} else if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A))
>  		writel_relaxed(0xf, priv->io_base + _REG(DOLBY_PATH_CTRL));
>  
>  	/* Initialize vpu fifo control registers */
> -	if (meson_vpu_is_compatible(priv, "amlogic,meson-g12a-vpu"))
> +	if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A))
>  		writel_relaxed(VPP_OFIFO_SIZE_DEFAULT,
>  			       priv->io_base + _REG(VPP_OFIFO_SIZE));
>  	else
> @@ -113,7 +113,7 @@ void meson_vpp_init(struct meson_drm *priv)
>  	writel_relaxed(VPP_POSTBLEND_HOLD_LINES(4) | VPP_PREBLEND_HOLD_LINES(4),
>  		       priv->io_base + _REG(VPP_HOLD_LINES));
>  
> -	if (!meson_vpu_is_compatible(priv, "amlogic,meson-g12a-vpu")) {
> +	if (!meson_vpu_is_compatible(priv, VPU_COMPATIBLE_G12A)) {
>  		/* Turn off preblend */
>  		writel_bits_relaxed(VPP_PREBLEND_ENABLE, 0,
>  				    priv->io_base + _REG(VPP_MISC));
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
