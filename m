Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C5B11EC5EC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 01:52:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sLD17SMq2D5uyxzq4Yswn73s4tTAUd2j17hYl1uPKPY=; b=Q/WlXbN4wsTais
	hzh8Oi2dGS8i6pzBEPLwKb44KYqJqCLhTzpSECe2hNA1O+xYtVHY09s7Hv5eoHtnNuRj06RK6Qlb2
	zOEA2n4rrX0ZDLmaYBj7R4hw3t/XiKqyRPSd2mmg3Sav544emSEAhFJIh6JFcBtOq5Y3vnBMQbABl
	oRK+jWUuc763ZNdLfsV/ocQwvlbsjvMlrMlfOgm68nbEGxVlcdfT848z4IMmaqLEmRyJjCXtEi0nA
	DW7wzVFI50XIwOTy8y3yuxEMe8ZllEOOiK66dMCpiTYdxPsIELNq9zXGBljuoSH8S15euNSaqMw2t
	AXHTHPEHyus81QzbYuBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgGhP-0004CQ-OP; Tue, 02 Jun 2020 23:52:03 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgGhI-0004C3-7E; Tue, 02 Jun 2020 23:51:57 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 876A22B3;
 Wed,  3 Jun 2020 01:51:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1591141914;
 bh=Fe8f3kgWX47nIzg78wyxjbab4WD6Saxj6pxZxkB/gRo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JhhykH0rs1dR3LZsV2DsnKzuF2z9VlZj4+I2990IxcsJkczDcz7VYPYx26TRo4Hqs
 pJ3UkFFW7TOPtB1S1AxdP6uT0Jac6CbZ7Z6OJd89o8ZSdD7yQaDvoLg7Lp18AkwXkD
 rD2FG3r3HaSGN5hYDv+GDvzDB9etxpWO1icCqJDY=
Date: Wed, 3 Jun 2020 02:51:39 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Adrian Ratiu <adrian.ratiu@collabora.com>
Subject: Re: [PATCH v8 04/10] drm: bridge: dw_mipi_dsi: allow bridge daisy
 chaining
Message-ID: <20200602235139.GS6547@pendragon.ideasonboard.com>
References: <20200427081952.3536741-1-adrian.ratiu@collabora.com>
 <20200427081952.3536741-5-adrian.ratiu@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200427081952.3536741-5-adrian.ratiu@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_165156_408117_D1C56FF0 
X-CRM114-Status: GOOD (  16.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Andrzej Hajda <a.hajda@samsung.com>, linux-imx@nxp.com,
 linux-rockchip@lists.infradead.org, kernel@collabora.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Adrian,

Thank you for the patch.

On Mon, Apr 27, 2020 at 11:19:46AM +0300, Adrian Ratiu wrote:
> Up until now the assumption was that the synopsis dsi bridge will
> directly connect to an encoder provided by the platform driver, but
> the current practice for drivers is to leave the encoder empty via
> the simple encoder API and add their logic to their own drm_bridge.
> 
> Thus we need an ablility to connect the DSI bridge to another bridge
> provided by the platform driver, so we extend the dw_mipi_dsi bind()
> API with a new "previous bridge" arg instead of just hardcoding NULL.
> 
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
> ---
> New in v8.
> ---
>  drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c   | 6 ++++--
>  drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c | 2 +-
>  include/drm/bridge/dw_mipi_dsi.h                | 5 ++++-
>  3 files changed, 9 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> index 16fd87055e7b7..140ff40fa1b62 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> @@ -1456,11 +1456,13 @@ EXPORT_SYMBOL_GPL(dw_mipi_dsi_remove);
>  /*
>   * Bind/unbind API, used from platforms based on the component framework.
>   */
> -int dw_mipi_dsi_bind(struct dw_mipi_dsi *dsi, struct drm_encoder *encoder)
> +int dw_mipi_dsi_bind(struct dw_mipi_dsi *dsi,
> +		     struct drm_encoder *encoder,
> +		     struct drm_bridge *prev_bridge)
>  {
>  	int ret;
>  
> -	ret = drm_bridge_attach(encoder, &dsi->bridge, NULL, 0);
> +	ret = drm_bridge_attach(encoder, &dsi->bridge, prev_bridge, 0);

Please note that chaining of bridges doesn't work well if multiple
bridges in the chain try to create a connector. This is why a
DRM_BRIDGE_ATTACH_NO_CONNECTOR flag has been added, with a helper to
create a connector for a chain of bridges (drm_bridge_connector_init()).
This won't play well with the component framework. I would recommend
using the of_drm_find_bridge() instead in the rockchip driver, and
deprecating dw_mipi_dsi_bind().

>  	if (ret) {
>  		DRM_ERROR("Failed to initialize bridge with drm\n");
>  		return ret;
> diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> index 3feff0c45b3f7..83ef43be78135 100644
> --- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> @@ -929,7 +929,7 @@ static int dw_mipi_dsi_rockchip_bind(struct device *dev,
>  		return ret;
>  	}
>  
> -	ret = dw_mipi_dsi_bind(dsi->dmd, &dsi->encoder);
> +	ret = dw_mipi_dsi_bind(dsi->dmd, &dsi->encoder, NULL);
>  	if (ret) {
>  		DRM_DEV_ERROR(dev, "Failed to bind: %d\n", ret);
>  		return ret;
> diff --git a/include/drm/bridge/dw_mipi_dsi.h b/include/drm/bridge/dw_mipi_dsi.h
> index b0e390b3288e8..699b3531f5b36 100644
> --- a/include/drm/bridge/dw_mipi_dsi.h
> +++ b/include/drm/bridge/dw_mipi_dsi.h
> @@ -14,6 +14,7 @@
>  #include <drm/drm_modes.h>
>  
>  struct drm_display_mode;
> +struct drm_bridge;
>  struct drm_encoder;
>  struct dw_mipi_dsi;
>  struct mipi_dsi_device;
> @@ -62,7 +63,9 @@ struct dw_mipi_dsi *dw_mipi_dsi_probe(struct platform_device *pdev,
>  				      const struct dw_mipi_dsi_plat_data
>  				      *plat_data);
>  void dw_mipi_dsi_remove(struct dw_mipi_dsi *dsi);
> -int dw_mipi_dsi_bind(struct dw_mipi_dsi *dsi, struct drm_encoder *encoder);
> +int dw_mipi_dsi_bind(struct dw_mipi_dsi *dsi,
> +		     struct drm_encoder *encoder,
> +		     struct drm_bridge *prev_bridge);
>  void dw_mipi_dsi_unbind(struct dw_mipi_dsi *dsi);
>  void dw_mipi_dsi_set_slave(struct dw_mipi_dsi *dsi, struct dw_mipi_dsi *slave);
>  

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
