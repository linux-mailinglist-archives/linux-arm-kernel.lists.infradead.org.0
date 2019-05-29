Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC8F2D361
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 03:35:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xvehg+nBZfVgOEW8vnhHc6lZ0CMP3Hi3os2FQJ2e32Y=; b=Y2VdMKpTqXaF8Z
	z+H2lP1YakYemD+BCQnmt02IfUpgxpVTb45ry9Y2R32b1oW7s4gc/yJ45U6NOeGsJj2Fm8BV5d4Gy
	yqVdygwepAzYvbhn1rMGLm3n+y551H9B3lfhwZc70fjtfH6kptHph43Nty6ZrbiR1v3F3h+FDBjC7
	vouYih11soYKpaImb1UD3C6OtayzUhZVaT4brgIi1oNEKTrXgiBsVvxijULHemXh3jgP9PnJnJQxw
	R1jWpX8zzWA4p7pfKG8do7cYn8v04/EsmBbE9s5Ug+WtXOYv4O+tFbuo7ct1+5QtVoygeExNokXE2
	xjr3aRSBnNgUw6FKMBwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVnVC-0005ur-Uz; Wed, 29 May 2019 01:35:39 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVnV5-0005tv-2H; Wed, 29 May 2019 01:35:33 +0000
X-UUID: 9934a6f9010e4fad899b91e7ee2badc0-20190528
X-UUID: 9934a6f9010e4fad899b91e7ee2badc0-20190528
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 735358917; Tue, 28 May 2019 17:35:25 -0800
Received: from mtkexhb02.mediatek.inc (172.21.101.103) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 28 May 2019 18:35:24 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by mtkexhb02.mediatek.inc
 (172.21.101.103) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Wed, 29 May 2019 09:35:11 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 29 May 2019 09:35:11 +0800
Message-ID: <1559093711.11380.6.camel@mtksdaap41>
Subject: Re: [PATCH 1/3] drm: mediatek: fix unbind functions
From: CK Hu <ck.hu@mediatek.com>
To: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Wed, 29 May 2019 09:35:11 +0800
In-Reply-To: <20190527045054.113259-2-hsinyi@chromium.org>
References: <20190527045054.113259-1-hsinyi@chromium.org>
 <20190527045054.113259-2-hsinyi@chromium.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_183531_116359_782DB0CB 
X-CRM114-Status: GOOD (  15.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Hsin-yi:

On Mon, 2019-05-27 at 12:50 +0800, Hsin-Yi Wang wrote:
> move mipi_dsi_host_unregister() to .remove since mipi_dsi_host_register()
> is called in .probe.

In the latest kernel [1], mipi_dsi_host_register() is called in
mtk_dsi_bind(), I think we don't need this part.

[1]
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/gpu/drm/mediatek/mtk_dsi.c?h=v5.2-rc2

> 
> detatch panel in mtk_dsi_destroy_conn_enc(), since .bind will try to
> attach it again.
> 
> Fixes: 2e54c14e310f ("drm/mediatek: Add DSI sub driver")
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---
>  drivers/gpu/drm/mediatek/mtk_dsi.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
> index b00eb2d2e086..c9b6d3a68c8b 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
> @@ -844,6 +844,8 @@ static void mtk_dsi_destroy_conn_enc(struct mtk_dsi *dsi)
>  	/* Skip connector cleanup if creation was delegated to the bridge */
>  	if (dsi->conn.dev)
>  		drm_connector_cleanup(&dsi->conn);
> +	if (dsi->panel)
> +		drm_panel_detach(dsi->panel);

I think mtk_dsi_destroy_conn_enc() has much thing to do and I would like
you to do more. You could refer to [2] for complete implementation.

[2]
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/gpu/drm/exynos/exynos_drm_dsi.c?h=v5.2-rc2#n1575

Regards,
CK

>  }
>  
>  static void mtk_dsi_ddp_start(struct mtk_ddp_comp *comp)
> @@ -1073,7 +1075,6 @@ static void mtk_dsi_unbind(struct device *dev, struct device *master,
>  	struct mtk_dsi *dsi = dev_get_drvdata(dev);
>  
>  	mtk_dsi_destroy_conn_enc(dsi);
> -	mipi_dsi_host_unregister(&dsi->host);
>  	mtk_ddp_comp_unregister(drm, &dsi->ddp_comp);
>  }
>  
> @@ -1179,6 +1180,7 @@ static int mtk_dsi_remove(struct platform_device *pdev)
>  
>  	mtk_output_dsi_disable(dsi);
>  	component_del(&pdev->dev, &mtk_dsi_component_ops);
> +	mipi_dsi_host_unregister(&dsi->host);
>  
>  	return 0;
>  }



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
