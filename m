Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2406B10F78A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 06:58:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jigW4Ok+WFf0praOGX+YBZAMkZo1DIDx8G+ml1Yh6zo=; b=A11Ji0emA7yTQQ
	F+TCiPkjBiA07Hh2t4ux7JnJa/YLUUJkK23kthL8sJ4pPzIFBt5axlhSx8hYtuYRjweugNic5QDwb
	gD1tuZQubSYIfFq5ZV3vWyXBkQvoNOp0hMw6XbN7Z76qBbV8oQOnk6LBczteLxzhjMfkZFgnb/iWh
	ECG4eJGyox2Ayl9XRipR8pbE92kB7RWSR6VLXX1RYQ7DeremvS2HWcTAFsa8PyOnljaWINsG4FPPH
	tTgkQj7aIwWYpoKAiT/CDwsp3BmmwdAHqV3o5/WgSlWjOwyWJXFIRUNS2v9oUCieawGNph4dj0Ul+
	zWO67/UntQZdYPFoM0bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic1Cq-0001Wz-02; Tue, 03 Dec 2019 05:58:40 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic1Ci-0001WO-L8; Tue, 03 Dec 2019 05:58:34 +0000
X-UUID: 750e5e3c9ee04dd39d783db2caf9dee5-20191202
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=6DCb7uPyQXGO0SVO2IKAV+0ziUuW5YDj4cnCAfRju/o=; 
 b=ROpVu9I2o7AZPVfuYhpFtl3ULo0inmoHsX8VIuQ7EcHGS7+73Zu4xzFaQNTGgAL8t9zv+eUMeo4g0dbnNHftvods37lvQx6Jt1HiJBXgR62Io0RgXDAZ5Zua81PTzSg+9mgnNBIROyqEPFwzHtedGvJXaOs0imrnsw8G1zTrr6s=;
X-UUID: 750e5e3c9ee04dd39d783db2caf9dee5-20191202
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1764200700; Mon, 02 Dec 2019 21:58:27 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 2 Dec 2019 21:49:07 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 MTKMBS31DR.mediatek.inc (172.27.6.102) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 3 Dec 2019 13:47:58 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 3 Dec 2019 13:48:03 +0800
Message-ID: <1575352101.2457.8.camel@mtksdaap41>
Subject: Re: [PATCH v1, 1/2] drm/mediatek: Fixup external display black
 screen issue
From: CK Hu <ck.hu@mediatek.com>
To: <yongqiang.niu@mediatek.com>
Date: Tue, 3 Dec 2019 13:48:21 +0800
In-Reply-To: <1574817475-22378-2-git-send-email-yongqiang.niu@mediatek.com>
References: <1574817475-22378-1-git-send-email-yongqiang.niu@mediatek.com>
 <1574817475-22378-2-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: ECDA7C700F230F49CC04960EDF378BA1B224B8EBA5C76FADE77E7DC3A6A045032000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_215832_699529_D30EB466 
X-CRM114-Status: GOOD (  17.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Wed, 2019-11-27 at 09:17 +0800, yongqiang.niu@mediatek.com wrote:
> From: Yongqiang Niu <yongqiang.niu@mediatek.com>
> 
> Problem:
> overlay hangup when external display hotplut test
> 
> Fix:
> disable overlay when crtc disable

I think you do two things in this patch. The first is to config layer
before component start, and the second is disable layer when crtc
disable. So separate to two patches.

> 
> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 39 +++++++++++++++++++++------------
>  1 file changed, 25 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> index 4fb346c..7eca02f 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> @@ -369,6 +369,20 @@ static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc)
>  	mtk_disp_mutex_add_comp(mtk_crtc->mutex, mtk_crtc->ddp_comp[i]->id);
>  	mtk_disp_mutex_enable(mtk_crtc->mutex);
>  
> +	/* Initially configure all planes */
> +	for (i = 0; i < mtk_crtc->layer_nr; i++) {
> +		struct drm_plane *plane = &mtk_crtc->planes[i];
> +		struct mtk_plane_state *plane_state;
> +		struct mtk_ddp_comp *comp;
> +		unsigned int local_layer;
> +
> +		plane_state = to_mtk_plane_state(plane->state);
> +		comp = mtk_drm_ddp_comp_for_plane(crtc, plane, &local_layer);
> +		if (comp)
> +			mtk_ddp_comp_layer_config(comp, local_layer,
> +						  plane_state, NULL);
> +	}
> +
>  	for (i = 0; i < mtk_crtc->ddp_comp_nr; i++) {
>  		struct mtk_ddp_comp *comp = mtk_crtc->ddp_comp[i];
>  		enum mtk_ddp_comp_id prev;
> @@ -385,20 +399,6 @@ static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc)
>  		mtk_ddp_comp_start(comp);
>  	}
>  
> -	/* Initially configure all planes */
> -	for (i = 0; i < mtk_crtc->layer_nr; i++) {
> -		struct drm_plane *plane = &mtk_crtc->planes[i];
> -		struct mtk_plane_state *plane_state;
> -		struct mtk_ddp_comp *comp;
> -		unsigned int local_layer;
> -
> -		plane_state = to_mtk_plane_state(plane->state);
> -		comp = mtk_drm_ddp_comp_for_plane(crtc, plane, &local_layer);
> -		if (comp)
> -			mtk_ddp_comp_layer_config(comp, local_layer,
> -						  plane_state, NULL);
> -	}
> -
>  	return 0;
>  
>  err_mutex_unprepare:
> @@ -607,10 +607,21 @@ static void mtk_drm_crtc_atomic_disable(struct drm_crtc *crtc,
>  	for (i = 0; i < mtk_crtc->layer_nr; i++) {
>  		struct drm_plane *plane = &mtk_crtc->planes[i];
>  		struct mtk_plane_state *plane_state;
> +		struct mtk_ddp_comp *comp = mtk_crtc->ddp_comp[0];
> +		unsigned int comp_layer_nr = mtk_ddp_comp_layer_nr(comp);
> +		unsigned int local_layer;
>  
>  		plane_state = to_mtk_plane_state(plane->state);
>  		plane_state->pending.enable = false;
>  		plane_state->pending.config = true;
> +
> +		if (i >= comp_layer_nr) {
> +			comp = mtk_crtc->ddp_comp[1];
> +			local_layer = i - comp_layer_nr;
> +		} else
> +			local_layer = i;
> +		mtk_ddp_comp_layer_config(comp, local_layer,
> +					  plane_state, NULL);

I'm confused with this part. The design of this loop is to set
plane_state->pending.enable = false and wait for irq handler to write
register. Why do you directly write register?

Regards,
CK

>  	}
>  	mtk_crtc->pending_planes = true;
>  

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
