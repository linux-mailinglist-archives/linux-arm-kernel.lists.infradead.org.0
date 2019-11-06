Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B50A0F169F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 14:06:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6lTqieaorL1ArPpAWg/djXN8ai6cQhI/Dr82fCMJ+uw=; b=gMmIaxzXS2Ugqo
	edlz00ypqfF7Ge93/V+B2oiDzOk+zGsTp2fKYBXIOmR5CE+sjtimiNKVmPvPDnvhUZsVWxH0LMNCQ
	+ZGEYPNW6f7dAKaqPY7P9F458QapQR+I+CwHJyoanrchNFbvzAWpyCbklHONLxtSbkt02oCtscPhS
	W2Yvcn5s4hyzxN6HghS+Mof0wbeikUqtE6Rmue3Kh1wiK91124eBitskqkebfPAMHLzHe+s/llVa3
	SydILBWsrbEHIpb3J4dWFHp6sHMOCbIM7gLBr9/KNiUEY3EKL7UjYZ7ame/wq1CGrJuNVXzo0t5FT
	Y8ypNCzWmedURXqn5raA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSL0v-00046T-KJ; Wed, 06 Nov 2019 13:06:21 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSL0n-00045W-Vg; Wed, 06 Nov 2019 13:06:15 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 3F66D52C;
 Wed,  6 Nov 2019 14:06:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1573045566;
 bh=rwBoN4G+nIkI+5mwwd3pzYuox8k2CBX+v3Hd1yQBQGw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aNPiEWK3sndyfV2uKQzJt9vYTAKeVjELD9xjz1RZxQvRYlrfizq8BhE5JMF7786tS
 yiP/KIA0+YSBYXx1Hg+0yQgUK9i/MD9DcTyQGguIJInQ00TU9Df+thxLlpRs9wTZom
 9fPWxbx8TEzZc2kktPxlbJbZqNHSFhNTwyXaCCq8=
Date: Wed, 6 Nov 2019 15:05:57 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
Subject: Re: [PATCH 2/3] drm/rockchip: add ability to handle external dphys
 in mipi-dsi
Message-ID: <20191106130557.GF4878@pendragon.ideasonboard.com>
References: <20191106112650.8365-1-heiko.stuebner@theobroma-systems.com>
 <20191106112650.8365-2-heiko.stuebner@theobroma-systems.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191106112650.8365-2-heiko.stuebner@theobroma-systems.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_050614_310643_92224243 
X-CRM114-Status: GOOD (  24.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, jernej.skrabec@siol.net,
 heiko@sntech.de, narmstrong@baylibre.com, linux-kernel@vger.kernel.org,
 jonas@kwiboo.se, hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 philippe.cornu@st.com, yannick.fertre@st.com, a.hajda@samsung.com,
 robh+dt@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Heiko,

Thank you for the patch.

On Wed, Nov 06, 2019 at 12:26:49PM +0100, Heiko Stuebner wrote:
> While the common case is that the dsi controller uses an internal dphy,
> accessed through the phy registers inside the dsi controller, there is
> also the possibility to use a separate dphy from a different vendor.
> 
> One such case is the Rockchip px30 that uses a Innosilicon Mipi dphy,
> so add the support for handling such a constellation, including the pll
> also getting generated inside that external phy.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---
>  .../display/rockchip/dw_mipi_dsi_rockchip.txt |  7 ++-
>  .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 54 ++++++++++++++++++-
>  2 files changed, 57 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt b/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt
> index ce4c1fc9116c..8b25156a9dcf 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt
> +++ b/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt
> @@ -8,8 +8,9 @@ Required properties:
>  	      "rockchip,rk3399-mipi-dsi", "snps,dw-mipi-dsi".
>  - reg: Represent the physical address range of the controller.
>  - interrupts: Represent the controller's interrupt to the CPU(s).
> -- clocks, clock-names: Phandles to the controller's pll reference
> -  clock(ref) and APB clock(pclk). For RK3399, a phy config clock
> +- clocks, clock-names: Phandles to the controller's and APB clock(pclk)
> +  and either a pll reference clock(ref) (internal dphy) or pll clock(pll)
> +  (when connected to an external phy). For RK3399, a phy config clock

Why does external PHY clock need to be specified here ? Shouldn't it be
handled by the PHY instead ?

>    (phy_cfg) and a grf clock(grf) are required. As described in [1].
>  - rockchip,grf: this soc should set GRF regs to mux vopl/vopb.
>  - ports: contain a port node with endpoint definitions as defined in [2].
> @@ -18,6 +19,8 @@ Required properties:
>  - video port 1 for either a panel or subsequent encoder
>  
>  Optional properties:
> +- phys: from general PHY binding: the phandle for the PHY device.
> +- phy-names: Should be "dphy" if phys references an external phy.
>  - power-domains: a phandle to mipi dsi power domain node.
>  - resets: list of phandle + reset specifier pairs, as described in [3].
>  - reset-names: string reset name, must be "apb".
> diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> index bc073ec5c183..99ec625e0448 100644
> --- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> @@ -12,6 +12,7 @@
>  #include <linux/mfd/syscon.h>
>  #include <linux/module.h>
>  #include <linux/of_device.h>
> +#include <linux/phy/phy.h>
>  #include <linux/pm_runtime.h>
>  #include <linux/regmap.h>
>  
> @@ -223,6 +224,9 @@ struct dw_mipi_dsi_rockchip {
>  	bool is_slave;
>  	struct dw_mipi_dsi_rockchip *slave;
>  
> +	/* optional external dphy */
> +	struct phy *phy;
> +
>  	unsigned int lane_mbps; /* per lane */
>  	u16 input_div;
>  	u16 feedback_div;
> @@ -359,6 +363,9 @@ static int dw_mipi_dsi_phy_init(void *priv_data)
>  	struct dw_mipi_dsi_rockchip *dsi = priv_data;
>  	int ret, i, vco;
>  
> +	if (dsi->phy)
> +		return 0;
> +
>  	/*
>  	 * Get vco from frequency(lane_mbps)
>  	 * vco	frequency table
> @@ -467,6 +474,27 @@ static int dw_mipi_dsi_phy_init(void *priv_data)
>  	return ret;
>  }
>  
> +static void dw_mipi_dsi_phy_power_on(void *priv_data)
> +{
> +	struct dw_mipi_dsi_rockchip *dsi = priv_data;
> +	int ret;
> +
> +	ret = phy_set_mode(dsi->phy, PHY_MODE_MIPI_DPHY);
> +	if (ret) {
> +		DRM_DEV_ERROR(dsi->dev, "failed to set phy mode: %d\n", ret);
> +		return;
> +	}
> +
> +	phy_power_on(dsi->phy);
> +}
> +
> +static void dw_mipi_dsi_phy_power_off(void *priv_data)
> +{
> +	struct dw_mipi_dsi_rockchip *dsi = priv_data;
> +
> +	phy_power_off(dsi->phy);
> +}
> +
>  static int
>  dw_mipi_dsi_get_lane_mbps(void *priv_data, const struct drm_display_mode *mode,
>  			  unsigned long mode_flags, u32 lanes, u32 format,
> @@ -504,9 +532,21 @@ dw_mipi_dsi_get_lane_mbps(void *priv_data, const struct drm_display_mode *mode,
>  				      "DPHY clock frequency is out of range\n");
>  	}
>  
> -	fin = clk_get_rate(dsi->pllref_clk);
>  	fout = target_mbps * USEC_PER_SEC;
>  
> +	/* an external phy does have a controllable pll clk */
> +	if (dsi->phy) {
> +		fout = clk_round_rate(dsi->pllref_clk, fout);
> +		clk_set_rate(dsi->pllref_clk, fout);
> +
> +		dsi->lane_mbps = target_mbps;
> +		*lane_mbps = dsi->lane_mbps;
> +
> +		return 0;
> +	}
> +
> +	fin = clk_get_rate(dsi->pllref_clk);
> +
>  	/* constraint: 5Mhz <= Fref / N <= 40MHz */
>  	min_prediv = DIV_ROUND_UP(fin, 40 * USEC_PER_SEC);
>  	max_prediv = fin / (5 * USEC_PER_SEC);
> @@ -561,6 +601,8 @@ dw_mipi_dsi_get_lane_mbps(void *priv_data, const struct drm_display_mode *mode,
>  
>  static const struct dw_mipi_dsi_phy_ops dw_mipi_dsi_rockchip_phy_ops = {
>  	.init = dw_mipi_dsi_phy_init,
> +	.power_on = dw_mipi_dsi_phy_power_on,
> +	.power_off = dw_mipi_dsi_phy_power_off,
>  	.get_lane_mbps = dw_mipi_dsi_get_lane_mbps,
>  };
>  
> @@ -920,7 +962,15 @@ static int dw_mipi_dsi_rockchip_probe(struct platform_device *pdev)
>  		return -EINVAL;
>  	}
>  
> -	dsi->pllref_clk = devm_clk_get(dev, "ref");
> +	/* try to get a possible external dphy */
> +	dsi->phy = devm_phy_optional_get(dev, "dphy");
> +	if (IS_ERR(dsi->phy)) {
> +		ret = PTR_ERR(dsi->phy);
> +		DRM_DEV_ERROR(dev, "failed to get mipi dphy: %d\n", ret);
> +		return ret;
> +	}
> +
> +	dsi->pllref_clk = devm_clk_get(dev, dsi->phy ? "pll" : "ref");
>  	if (IS_ERR(dsi->pllref_clk)) {
>  		ret = PTR_ERR(dsi->pllref_clk);
>  		DRM_DEV_ERROR(dev,

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
