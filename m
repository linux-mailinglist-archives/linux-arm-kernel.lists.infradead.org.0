Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 366966B705
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 08:55:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V6JqRgEIPQD7amK1d3q/nHGuIPehsUcwR6C2K43vZs8=; b=e1WWMcF+OkeCIf
	F6Jshq2GMfqQniw7mbzTholPcDCw/DxgIfFlgMFDDTtMeIAoaoQTU6nBN6Vag+YEzGp0SJxjgk5Bz
	cGyrIu49ftiTmPVjeYRLFchWMU3mu5PoLQPX4Jqq2nN45oYFIActoVEGzHCE53UbYE3v4hKPfEEUq
	rBvBPIUqr8FQ8fgNS5l1sGblwAAMtSML6K6sPBt+cljKqMVvz0Op9ACWhv/t9u92qImXW07e9soHt
	d/QyWt0qU2gvxr7eQTFyxre7cBFiwELFSKSe+yYGfr496/Lp1bKP1CnTpRv2pGHc76yt1axM/5FqE
	qKJhmfy8+lOpP11GY6Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hndqu-00038c-SK; Wed, 17 Jul 2019 06:55:48 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hndqe-00037l-Hk; Wed, 17 Jul 2019 06:55:34 +0000
X-UUID: 0d04b852cfc24fc3af28d17c7e6efd1b-20190716
X-UUID: 0d04b852cfc24fc3af28d17c7e6efd1b-20190716
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1544915712; Tue, 16 Jul 2019 22:55:05 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 16 Jul 2019 23:55:04 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31N2.mediatek.inc (172.27.4.87) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 17 Jul 2019 14:55:01 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 17 Jul 2019 14:55:01 +0800
Message-ID: <1563346501.29169.25.camel@mtksdaap41>
Subject: Re: [PATCH v4, 24/33] drm/mediatek: distinguish ovl and ovl_2l by
 layer_nr
From: CK Hu <ck.hu@mediatek.com>
To: <yongqiang.niu@mediatek.com>
Date: Wed, 17 Jul 2019 14:55:01 +0800
In-Reply-To: <1562625253-29254-25-git-send-email-yongqiang.niu@mediatek.com>
References: <1562625253-29254-1-git-send-email-yongqiang.niu@mediatek.com>
 <1562625253-29254-25-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 11F1DE6BD2C0561D80B2B9B084DC8B4CE48F7F7536BCB170DD002279A4AB79AD2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_235532_587801_7C8BECFF 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Yongqiang:

On Tue, 2019-07-09 at 06:34 +0800, yongqiang.niu@mediatek.com wrote:
> From: Yongqiang Niu <yongqiang.niu@mediatek.com>
> 
> distinguish ovl and ovl_2l by layer_nr when get comp
> id
> 

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_disp_ovl.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> index 8ca4965..7e99827 100644
> --- a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> +++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> @@ -326,7 +326,12 @@ static int mtk_disp_ovl_probe(struct platform_device *pdev)
>  	if (irq < 0)
>  		return irq;
>  
> -	comp_id = mtk_ddp_comp_get_id(dev->of_node, MTK_DISP_OVL);
> +	priv->data = of_device_get_match_data(dev);
> +
> +	comp_id = mtk_ddp_comp_get_id(dev->of_node,
> +				      priv->data->layer_nr == 4 ?
> +				      MTK_DISP_OVL :
> +				      MTK_DISP_OVL_2L);
>  	if (comp_id < 0) {
>  		dev_err(dev, "Failed to identify by alias: %d\n", comp_id);
>  		return comp_id;
> @@ -339,8 +344,6 @@ static int mtk_disp_ovl_probe(struct platform_device *pdev)
>  		return ret;
>  	}
>  
> -	priv->data = of_device_get_match_data(dev);
> -
>  	platform_set_drvdata(pdev, priv);
>  
>  	ret = devm_request_irq(dev, irq, mtk_disp_ovl_irq_handler,



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
