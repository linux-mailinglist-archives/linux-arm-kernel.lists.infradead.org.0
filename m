Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDCD5120EE8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 17:11:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h7CMzrJD3oP45EbgBWdF1FEm4CXlQ54G0beCrwSyjkA=; b=ixChrcdWlCRD9u
	LTcgWJvMiMHSUPhDd/xeqwcuoTgaoZcDtSHZmGv4MMOywryRQrUys3lk87WK5oQIDoO+zAiLaMTir
	G9YrY/lNgJ950FWCOjNRSBshT2VBubMrTspf9fRbGuy8h6XDy7wuug7qxf/3smOFElw+HxMzqazY6
	6Z8X1Sf6zAOGo+S1iZVpV5++VE9M65lFZGz0xPOvgsWY+xDOCsJ/srRU5LK186UuwDAE45txF/334
	HmdbP8j+nTHmuWX+z4aDPYYeBVLupCGGW7zsndc5oU8Bx/7+KQRslo3ErXcFJUSNQ5CkBkL/ISCo2
	M/UdTZntFzs7VGto8Unw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igsxu-00032n-0f; Mon, 16 Dec 2019 16:11:22 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igsxe-000317-E6; Mon, 16 Dec 2019 16:11:08 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id E3E5A28FC78
Message-ID: <ca0c26d124a0139de31405eacb7d098173897d16.camel@collabora.com>
Subject: Re: [PATCH v4 1/4] drm: bridge: dw_mipi_dsi: access registers via a
 regmap
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Adrian Ratiu <adrian.ratiu@collabora.com>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, 
 linux-rockchip@lists.infradead.org
Date: Mon, 16 Dec 2019 13:10:52 -0300
In-Reply-To: <20191202193359.703709-2-adrian.ratiu@collabora.com>
References: <20191202193359.703709-1-adrian.ratiu@collabora.com>
 <20191202193359.703709-2-adrian.ratiu@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_081106_742460_A4774C1E 
X-CRM114-Status: GOOD (  20.71  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Heiko Stuebner <heiko@sntech.de>, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Boris Brezillon <boris.brezillon@collabora.com>, linux-imx@nxp.com,
 kernel@collabora.com, Emil Velikov <emil.velikov@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Adrian,

Thanks for the patch. This is nice consolidation work.
I'm Ccing Heiko for the Rockchip part.

See below for some comments.

On Mon, 2019-12-02 at 21:33 +0200, AdrianAdrian Ratiu wrote:
> Convert the common bridge code and the two rockchip & stm drivers
> which currently use it to the regmap API in anticipation for further
> changes to make it more generic and add older DSI host controller
> support as found on i.mx6 based devices.
> 
> The regmap becomes an internal state of the bridge. No functional
> changes other than requiring the platform drivers to use the
> pre-configured regmap supplied by the bridge after its probe() call
> instead of ioremp'ing the registers themselves.
> 
> In subsequent commits the bridge will become able to detect the
> DSI host core version and init the regmap with different register
> layouts. The platform drivers will continue to use the regmap without
> modifications or worrying about the specific layout in use (in other
> words the layout is abstracted away via the regmap).
> 
> Suggested-by: Boris Brezillon <boris.brezillon@collabora.com>
> Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
> Reviewed-by: Emil Velikov <emil.velikov@collabora.com>
> Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
> ---
>  drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 215 ++++++++++--------
>  .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   |  17 +-

At least for Rockchip, I'd rather see this done in two
steps: first some regmap infrastructure introduced,
and then in a follow-up patch, the rockchip driver
moved to it.

It's safer, and better from a bisection POV, and from
a first look it seems doable.

>  drivers/gpu/drm/stm/dw_mipi_dsi-stm.c         |  34 ++-

It would be good to do try the same for STM. It's also
simpler to review that way.

>  include/drm/bridge/dw_mipi_dsi.h              |   2 +-
>  4 files changed, 145 insertions(+), 123 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> index b6e793bb653c..6cb57807f3f9 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> @@ -15,6 +15,7 @@
>  #include <linux/module.h>
>  #include <linux/of_device.h>
>  #include <linux/pm_runtime.h>
> +#include <linux/regmap.h>
>  #include <linux/reset.h>
>  
>  #include <video/mipi_display.h>
> @@ -226,7 +227,7 @@ struct dw_mipi_dsi {
>  	struct mipi_dsi_host dsi_host;
>  	struct drm_bridge *panel_bridge;
>  	struct device *dev;
> -	void __iomem *base;
> +	struct regmap *regs;
> 

You have the regmap here...
>  
>  	struct clk *pclk;
>  
[..]
> @@ -954,7 +952,6 @@ static int dw_mipi_dsi_rockchip_probe(struct platform_device *pdev)
>  	}
>  
>  	dsi->dev = dev;
> -	dsi->pdata.base = dsi->base;
>  	dsi->pdata.max_data_lanes = dsi->cdata->max_data_lanes;
>  	dsi->pdata.phy_ops = &dw_mipi_dsi_rockchip_phy_ops;
>  	dsi->pdata.host_ops = &dw_mipi_dsi_rockchip_host_ops;
> @@ -970,6 +967,8 @@ static int dw_mipi_dsi_rockchip_probe(struct platform_device *pdev)
>  		goto err_clkdisable;
>  	}
>  
> +	dsi->regs = dsi->pdata.regs;
> +

... and this goes for both STM and Rockchip: I don't think you need neither
the struct dw_mipi_dsi_plat_data.regs nor the
structdw_mipi_dsi_{rockchip, stm}.regs. You should be able to
just access the regmap via the struct dw_mipi_dsi.

[..]
>  
>  err_dsi_probe:
> @@ -474,7 +472,7 @@ static struct platform_driver dw_mipi_dsi_stm_driver = {
>  	.remove		= dw_mipi_dsi_stm_remove,
>  	.driver		= {
>  		.of_match_table = dw_mipi_dsi_stm_dt_ids,
> -		.name	= "stm32-display-dsi",
> +		.name	= DRIVER_NAME,

Unrelated change, please drop it.

>  		.pm = &dw_mipi_dsi_stm_pm_ops,
>  	},
>  };

Thanks,
Ezequiel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
