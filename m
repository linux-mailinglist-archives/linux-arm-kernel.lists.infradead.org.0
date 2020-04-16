Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A29C1ACEBD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 19:34:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GLUxCeN0SohaNIct/4XYn8JcmPFJuCDfjU7W/3D3/iA=; b=QVoKq5nDW4bup4
	oaqG+i9eyj7hh++iLo76vI8BI9YRFBJ02ck30Krm3gi482s1hZS+wag9JthcaC7+te/rDM561l5Ki
	HZJC4Am2ky5qFMK4hODEUlgXss2rX8pBZXibKNH/uOF+BHnBcC2XV++WnXY7dTBP8swmL7ARIbx+L
	4uH6ATqoE3h6JpkGmaH/h02po5WE4cRuVhYCJwEC1MI39bxHScOH5NixRv1XRI6qQ0Sfv/8G/4Ot6
	I0g0PLZgvYS/jq9geF1YRsf8GN8PCnP9qR/jiuJouwsHa9mFmN5BqWgX59qq878GSHZJai1s0z170
	t8Wzi/2mis8CHfgoitpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP8P2-0005RY-KS; Thu, 16 Apr 2020 17:34:16 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP8Od-0005Cm-Ht; Thu, 16 Apr 2020 17:33:53 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id C1F8B97D;
 Thu, 16 Apr 2020 19:24:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1587057888;
 bh=n96mzpZtECYxDWfSDMueCKOeosR0PhwZDxdep4i2jmI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JFrpxmOXiWHzXnwDoyiRONCycIkNUzJYgNmk635T7FlC9y2jc/AlXdflLh+I/WI+s
 rFk4kGJdsGPl0HQEAP8Id2du0KeHQn3uIN6nEo6+fX0ijONqcCJOgGXH/zoBXkwaHN
 Y0NErElmPG3LoFsHaCFdRq+/Buhl9BCJ71y7rcoM=
Date: Thu, 16 Apr 2020 20:24:35 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: Re: [PATCH v2 3/7] drm/mediatek: mtk_dsi: Rename bridge to next_bridge
Message-ID: <20200416172435.GM4796@pendragon.ideasonboard.com>
References: <20200416155720.2360443-1-enric.balletbo@collabora.com>
 <20200416155720.2360443-4-enric.balletbo@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200416155720.2360443-4-enric.balletbo@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_103351_831586_9F40C2A9 
X-CRM114-Status: GOOD (  17.13  )
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

On Thu, Apr 16, 2020 at 05:57:15PM +0200, Enric Balletbo i Serra wrote:
> This is really a cosmetic change just to make a bit more readable the
> code after convert the driver to drm_bridge. The bridge variable name
> will be used by the encoder drm_bridge, and the chained bridge will be
> named next_bridge.
> 
> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> ---
> 
> Changes in v2: None
> 
>  drivers/gpu/drm/mediatek/mtk_dsi.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
> index cfa45d6abd74..44ee884cc31c 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
> @@ -182,7 +182,7 @@ struct mtk_dsi {
>  	struct drm_encoder encoder;
>  	struct drm_connector conn;
>  	struct drm_panel *panel;
> -	struct drm_bridge *bridge;
> +	struct drm_bridge *next_bridge;
>  	struct phy *phy;
>  
>  	void __iomem *regs;
> @@ -903,8 +903,9 @@ static int mtk_dsi_create_conn_enc(struct drm_device *drm, struct mtk_dsi *dsi)
>  	dsi->encoder.possible_crtcs = 1;
>  
>  	/* If there's a bridge, attach to it and let it create the connector */

Maybe s/bridge/next bridge/ here ? I expect this comment to go away
though, as there will always be a next bridge when the driver switches
to the DRM panel bridge helper.

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> -	if (dsi->bridge) {
> -		ret = drm_bridge_attach(&dsi->encoder, dsi->bridge, NULL, 0);
> +	if (dsi->next_bridge) {
> +		ret = drm_bridge_attach(&dsi->encoder, dsi->next_bridge, NULL,
> +					0);
>  		if (ret) {
>  			DRM_ERROR("Failed to attach bridge to drm\n");
>  			goto err_encoder_cleanup;
> @@ -1185,7 +1186,7 @@ static int mtk_dsi_probe(struct platform_device *pdev)
>  	}
>  
>  	ret = drm_of_find_panel_or_bridge(dev->of_node, 0, 0,
> -					  &dsi->panel, &dsi->bridge);
> +					  &dsi->panel, &dsi->next_bridge);
>  	if (ret)
>  		goto err_unregister_host;
>  

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
