Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A5EA477D7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 04:01:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zmMqMoF+gVr4ViDFrjBxFvdT6ly2UWxWHgiJzETKwNQ=; b=TSPin77BrZImHc
	S66R4BEOhjxNi1scWrV3VyJryBrvZKzl5fLGjuoKJA36/XJHpgEgMiRZB7wt8uoHXcOyxTUTF01/H
	+VeqzowXpalCovnlFpFz+7pJ6+E9haLh7Ox9yUEzFz52TpWxaDJCsEim2rldL41lAs++GUNzmWK/1
	zeHNaS5wReWg3cSAt2e+wtdqx+nzIrAMkBENEeC7RfEhmKOSl3Pc3nfncLbpPHHfckF9FZbBuE5xk
	5zGboNNKkRhhKwsjM6l38TNDyxhGYmPZQOlYFXVyFUP4xYD4ffW8xmbzb/3QuAf4vjUnWVZiXAIik
	1PfOlPWLDn8ZHrsi36zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcgy1-0002a1-FU; Mon, 17 Jun 2019 02:01:53 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcgxo-0002Zd-8S; Mon, 17 Jun 2019 02:01:41 +0000
X-UUID: 3d743532cd754ba3a2f015f6e2af9a3d-20190616
X-UUID: 3d743532cd754ba3a2f015f6e2af9a3d-20190616
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1391609689; Sun, 16 Jun 2019 18:01:34 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 16 Jun 2019 19:01:32 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS31N2.mediatek.inc (172.27.4.87) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 17 Jun 2019 10:01:29 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 17 Jun 2019 10:01:29 +0800
Message-ID: <1560736889.25168.0.camel@mtksdaap41>
Subject: Re: [PATCH v3, 19/27] drm/mediatek: add function to background
 color input select for ovl/ovl_2l direct link
From: CK Hu <ck.hu@mediatek.com>
To: <yongqiang.niu@mediatek.com>
Date: Mon, 17 Jun 2019 10:01:29 +0800
In-Reply-To: <1559734986-7379-20-git-send-email-yongqiang.niu@mediatek.com>
References: <1559734986-7379-1-git-send-email-yongqiang.niu@mediatek.com>
 <1559734986-7379-20-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_190140_308379_136DA2B6 
X-CRM114-Status: GOOD (  13.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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

On Wed, 2019-06-05 at 19:42 +0800, yongqiang.niu@mediatek.com wrote:
> From: Yongqiang Niu <yongqiang.niu@mediatek.com>
> 
> This patch add function to background color input select for ovl/ovl_2l direct link
> for ovl/ovl_2l direct link usecase, we need set background color
> input select for these hardware.
> this is preparation patch for ovl/ovl_2l usecase
> 
> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
> index 158c1e5..aa1e183 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
> @@ -92,6 +92,9 @@ struct mtk_ddp_comp_funcs {
>  			     struct mtk_plane_state *state);
>  	void (*gamma_set)(struct mtk_ddp_comp *comp,
>  			  struct drm_crtc_state *state);
> +	void (*bgclr_in_on)(struct mtk_ddp_comp *comp,
> +			    enum mtk_ddp_comp_id prev);

prev is useless, so remove it.

Regards,
CK

> +	void (*bgclr_in_off)(struct mtk_ddp_comp *comp);
>  };
>  
>  struct mtk_ddp_comp {
> @@ -173,6 +176,19 @@ static inline void mtk_ddp_gamma_set(struct mtk_ddp_comp *comp,
>  		comp->funcs->gamma_set(comp, state);
>  }
>  
> +static inline void mtk_ddp_comp_bgclr_in_on(struct mtk_ddp_comp *comp,
> +					    enum mtk_ddp_comp_id prev)
> +{
> +	if (comp->funcs && comp->funcs->bgclr_in_on)
> +		comp->funcs->bgclr_in_on(comp, prev);
> +}
> +
> +static inline void mtk_ddp_comp_bgclr_in_off(struct mtk_ddp_comp *comp)
> +{
> +	if (comp->funcs && comp->funcs->bgclr_in_off)
> +		comp->funcs->bgclr_in_off(comp);
> +}
> +
>  int mtk_ddp_comp_get_id(struct device_node *node,
>  			enum mtk_ddp_comp_type comp_type);
>  int mtk_ddp_comp_init(struct device *dev, struct device_node *comp_node,



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
