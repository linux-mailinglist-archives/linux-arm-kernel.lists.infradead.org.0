Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC591ACEC1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 19:35:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nP+U1gNqQDmguXzN3a9x1yuwJjI2rRXoBj99sSyu83o=; b=iEeUeER1OYek8a
	WBegSFiMKLn92iu++jlZfCJcr9ufGzwuyr8ynW4ntTCZ9XGJdIX1y94D6qoXvfGYhfWX9XDXonj4r
	8tzJsXcxyIpiQwKX71X56NGpDwr3qZlV3GW+4SFIV8zhrxzHnQ/SSeXziq4D9/sKDQHEMz8YywAJp
	y+oH40oxiyPxil6PP8br155Z2EMqfEwyFTQyCRisQCkaYjmsIqotChuCPZhyz8hHHROl/0CgQuOoL
	4GO9rVN5+AGw75DEHghAPxjb9fMMxK8m2nqnW8YpgMW1tr9vqkBfXQpKbRyYcXlbsMupFZ3TREgKq
	E6QJipbhsW9WLlmEn48w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP8QV-0000FD-KT; Thu, 16 Apr 2020 17:35:47 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP8QN-0000Ee-4k; Thu, 16 Apr 2020 17:35:40 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 5601C97D;
 Thu, 16 Apr 2020 19:35:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1587058537;
 bh=4Q847mvkwFuCXv962ZXNNdX9bZudBbb/nEWEfDUEdNw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wRSP0OzCTXppY61r2bs0z/Gd6zSMzkjfjOUnd/qz/qv8cGp6y+isKPskzxXCwxKtV
 Q19e78n3HZKWHzvU71dJiwtecFsCBV3I1UjZb7B/YE58u5zq8IwUqfioxT9tQKqaz2
 h7z9Cq2mIDYQDDiHs6UojyVB4F+dhS8UA1i7aS+M=
Date: Thu, 16 Apr 2020 20:35:25 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: Re: [PATCH v2 7/7] drm/mediatek: mtk_dsi: Create connector for bridges
Message-ID: <20200416173525.GQ4796@pendragon.ideasonboard.com>
References: <20200416155720.2360443-1-enric.balletbo@collabora.com>
 <20200416155720.2360443-8-enric.balletbo@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200416155720.2360443-8-enric.balletbo@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_103539_338055_E11A8931 
X-CRM114-Status: GOOD (  17.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>, drinkcat@chromium.org,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 hsinyi@chromium.org, matthias.bgg@gmail.com,
 Collabora Kernel ML <kernel@collabora.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Enric,

Thank you for the patch.

On Thu, Apr 16, 2020 at 05:57:19PM +0200, Enric Balletbo i Serra wrote:
> Use the drm_bridge_connector helper to create a connector for pipelines
> that use drm_bridge. This allows splitting connector operations across
> multiple bridges when necessary, instead of having the last bridge in
> the chain creating the connector and handling all connector operations
> internally.

That's the right direction, but this should be done in the mtk display
controller driver core, not in here. I'm OK with the code being here as
an interim measure if needed to move forward, but that should then be
temporary only.

> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> ---
> 
> Changes in v2: None
> 
>  drivers/gpu/drm/mediatek/mtk_dsi.c | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
> index 44718fa3d1ca..2f8876c32864 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
> @@ -17,6 +17,7 @@
>  
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_bridge.h>
> +#include <drm/drm_bridge_connector.h>
>  #include <drm/drm_mipi_dsi.h>
>  #include <drm/drm_of.h>
>  #include <drm/drm_panel.h>
> @@ -184,6 +185,7 @@ struct mtk_dsi {
>  	struct drm_bridge bridge;
>  	struct drm_bridge *panel_bridge;
>  	struct drm_bridge *next_bridge;
> +	struct drm_connector *connector;
>  	struct phy *phy;
>  
>  	void __iomem *regs;
> @@ -983,10 +985,19 @@ static int mtk_dsi_encoder_init(struct drm_device *drm, struct mtk_dsi *dsi)
>  	 */
>  	dsi->encoder.possible_crtcs = 1;
>  
> -	ret = drm_bridge_attach(&dsi->encoder, &dsi->bridge, NULL, 0);
> +	ret = drm_bridge_attach(&dsi->encoder, &dsi->bridge, NULL,
> +				DRM_BRIDGE_ATTACH_NO_CONNECTOR);
>  	if (ret)
>  		goto err_cleanup_encoder;
>  
> +	dsi->connector = drm_bridge_connector_init(drm, &dsi->encoder);
> +	if (IS_ERR(dsi->connector)) {
> +		DRM_ERROR("Unable to create bridge connector\n");
> +		ret = PTR_ERR(dsi->connector);
> +		goto err_cleanup_encoder;
> +	}
> +	drm_connector_attach_encoder(dsi->connector, &dsi->encoder);
> +
>  	return 0;
>  
>  err_cleanup_encoder:
> @@ -1144,6 +1155,7 @@ static int mtk_dsi_probe(struct platform_device *pdev)
>  
>  	dsi->bridge.funcs = &mtk_dsi_bridge_funcs;
>  	dsi->bridge.of_node = dev->of_node;
> +	dsi->bridge.type = DRM_MODE_CONNECTOR_DSI;

I think this line belongs to the patch that adds drm_bridge support to
this driver.

>  
>  	drm_bridge_add(&dsi->bridge);
>  

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
