Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45F6B19F8C5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 17:25:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jqzkGz8KhKwfGdBC4D667bWtB+3HN2gFknSJNZbPQAM=; b=abChup2Mgb4/gb
	DczAmViD76GnjPmf/c3aBAg/Yx5YBtdBdQ8N7efxuv5csEqIUoRxYof1joctPdrfqtL4F3/5/JWDF
	v+zm60WHP1dy34Ihv2t1mMgGA9ksJINsUEiUh1h0AL2AldIMNN9bXJmxThzrYUFOPhb/muwO8X/5y
	XXpALpsdGS/ewOy3zxDy3olF4jZXZhdszZP3D+0nd+KKx5rIrsfeZGFkHXlmHqillEqvrUDqTuRVj
	OmMjHkFM0uPI3o8vaUKlAasZGgY83+/l+Hw1sxEeRaE80o+qK3RUJAPKSg/sWVeDdUFKI7aHagYFQ
	WO6ER6kuA5lYgXP9lHKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLTci-0003h7-5A; Mon, 06 Apr 2020 15:25:16 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLTcZ-0002Fl-O3; Mon, 06 Apr 2020 15:25:09 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 66E2D293F03
Subject: Re: [PATCH] drm: mediatek: fix device passed to cmdq
To: Hsin-Yi Wang <hsinyi@chromium.org>, linux-arm-kernel@lists.infradead.org
References: <20200406051131.225748-1-hsinyi@chromium.org>
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Message-ID: <095576cb-7124-9b23-fe24-7a91cce57d99@collabora.com>
Date: Mon, 6 Apr 2020 17:25:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200406051131.225748-1-hsinyi@chromium.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_082507_935911_5F0E2495 
X-CRM114-Status: GOOD (  16.77  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, CK Hu <ck.hu@mediatek.com>,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Hsin-Yi

Thanks for sending the patch upstream

On 6/4/20 7:11, Hsin-Yi Wang wrote:
> drm device is now probed from mmsys. We need to use mmsys device to get gce
> nodes. Fix following errors:
> 
> [    0.740068] mediatek-drm mediatek-drm.1.auto: error -2 can't parse gce-client-reg property (0)
> [    0.748721] mediatek-drm mediatek-drm.1.auto: error -2 can't parse gce-client-reg property (0)
> ...
> [    2.659645] mediatek-drm mediatek-drm.1.auto: failed to request channel
> [    2.666270] mediatek-drm mediatek-drm.1.auto: failed to request channel
> 
> Fixes: 1d367541aded ("soc / drm: mediatek: Fix mediatek-drm device probing")
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>

Right, the mmsys device is now the parent of the drm device.

Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>

Also I tested drm with the patch applied and adding the gce client register to
my device-tree.

Tested-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>

Thanks,
 Enric

> ---
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 6 ++++--
>  drivers/gpu/drm/mediatek/mtk_drm_drv.c  | 3 ++-
>  2 files changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> index 615a54e60fe2..8621f0289399 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> @@ -822,14 +822,16 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
>  
>  #if IS_REACHABLE(CONFIG_MTK_CMDQ)
>  	mtk_crtc->cmdq_client =
> -			cmdq_mbox_create(dev, drm_crtc_index(&mtk_crtc->base),
> +			cmdq_mbox_create(mtk_crtc->mmsys_dev,
> +					 drm_crtc_index(&mtk_crtc->base),
>  					 2000);
>  	if (IS_ERR(mtk_crtc->cmdq_client)) {
>  		dev_dbg(dev, "mtk_crtc %d failed to create mailbox client, writing register by CPU now\n",
>  			drm_crtc_index(&mtk_crtc->base));
>  		mtk_crtc->cmdq_client = NULL;
>  	}
> -	ret = of_property_read_u32_index(dev->of_node, "mediatek,gce-events",
> +	ret = of_property_read_u32_index(mtk_crtc->mmsys_dev->of_node,
> +					 "mediatek,gce-events",
>  					 drm_crtc_index(&mtk_crtc->base),
>  					 &mtk_crtc->cmdq_event);
>  	if (ret)
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> index e2bb0d19ef99..dc78e86bccc0 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> @@ -517,7 +517,8 @@ static int mtk_drm_probe(struct platform_device *pdev)
>  				goto err_node;
>  			}
>  
> -			ret = mtk_ddp_comp_init(dev, node, comp, comp_id, NULL);
> +			ret = mtk_ddp_comp_init(dev->parent, node, comp,
> +						comp_id, NULL);
>  			if (ret) {
>  				of_node_put(node);
>  				goto err_node;
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
