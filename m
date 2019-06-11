Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E56F3C103
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 03:42:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k9ad33B3z4S7mzoxEf2h5WNApRJheKdNFy68wxGvi/k=; b=IHz6bUDxWKeYeB
	zxJx/cDwuoz+rvHXMa3VIOcQ0lVk/4O/EjQTk4ME+gao5q9Hw05nUdKhhOyhJms5oP8SvxI+I7QFu
	jtG5YyCv2MkjRxhUDCJoMLgddWnZtO2/d4wwHbkWkCEiVo7w5/80E03b1DmIbxZvtL6g5V7iMVOWy
	itdAAaKaN5UnAFcE08u4OT4j/Fzsx5WpPaDPLhMAdmcLcRmYj6dmHQrC57o7uxZrTcOYySihw1uXM
	xcZmx5MLbl76rMPU7gZgekZO2UMvt1lltqftAPoIbwXwlNLo9rz7MHLWhiyJFWtkmqdVCCZgo78vP
	tbXlpOJStoMaD91j8Ctw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haVoD-0007bw-PE; Tue, 11 Jun 2019 01:42:45 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haVo2-0007bT-DP; Tue, 11 Jun 2019 01:42:36 +0000
X-UUID: b7502dfca4a9403f80b951525808f50e-20190610
X-UUID: b7502dfca4a9403f80b951525808f50e-20190610
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1861550401; Mon, 10 Jun 2019 17:42:20 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Jun 2019 18:42:19 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 11 Jun 2019 09:42:17 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 11 Jun 2019 09:42:17 +0800
Message-ID: <1560217337.15546.1.camel@mtksdaap41>
Subject: Re: [PATCH 5/5] drm/mtk: add panel orientation property
From: CK Hu <ck.hu@mediatek.com>
To: Derek Basehore <dbasehore@chromium.org>
Date: Tue, 11 Jun 2019 09:42:17 +0800
In-Reply-To: <20190611002256.186969-6-dbasehore@chromium.org>
References: <20190611002256.186969-1-dbasehore@chromium.org>
 <20190611002256.186969-6-dbasehore@chromium.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_184234_458944_1E3D1B9C 
X-CRM114-Status: GOOD (  12.64  )
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
Cc: p.zabel@pengutronix.de, maxime.ripard@bootlin.com, sam@ravnborg.org,
 intel-gfx@lists.freedesktop.org, joonas.lahtinen@linux.intel.com,
 maarten.lankhorst@linux.intel.com, linux-kernel@vger.kernel.org,
 jani.nikula@linux.intel.com, airlied@linux.ie, thierry.reding@gmail.com,
 linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org,
 daniel@ffwll.ch, rodrigo.vivi@intel.com, matthias.bgg@gmail.com,
 sean@poorly.run, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Derek:

On Mon, 2019-06-10 at 17:22 -0700, Derek Basehore wrote:
> This inits the panel orientation property for the mediatek dsi driver
> if the panel orientation (connector.display_info.panel_orientation) is
> not DRM_MODE_PANEL_ORIENTATION_UNKNOWN.
> 

Looks good to me,

Acked-by: CK Hu <ck.hu@mediatek.com>

> Signed-off-by: Derek Basehore <dbasehore@chromium.org>
> ---
>  drivers/gpu/drm/mediatek/mtk_dsi.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
> index 4a0b9150a7bb..08ffdc7526dd 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
> @@ -782,10 +782,18 @@ static int mtk_dsi_create_connector(struct drm_device *drm, struct mtk_dsi *dsi)
>  			DRM_ERROR("Failed to attach panel to drm\n");
>  			goto err_connector_cleanup;
>  		}
> +
> +		ret = drm_connector_init_panel_orientation_property(&dsi->conn);
> +		if (ret) {
> +			DRM_ERROR("Failed to init panel orientation\n");
> +			goto err_panel_detach;
> +		}
>  	}
>  
>  	return 0;
>  
> +err_panel_detach:
> +	drm_panel_detach(dsi->panel);
>  err_connector_cleanup:
>  	drm_connector_cleanup(&dsi->conn);
>  	return ret;



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
