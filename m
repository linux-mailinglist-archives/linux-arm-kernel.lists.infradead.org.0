Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E60AFA1B28
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 15:15:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:
	In-Reply-To:Date:To:From:Subject:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AjztnZq2DZbvB2GLYJBiQR1q4iZlbKG1LewYuOz1Xj0=; b=HX+oDhX0AxyTrB
	ZhhlXT1l1b9qeNHDNJZKHJqAvAj9gH4wYAeFqIY1c8cUZEYGmFShw1FayZrReqvg/flByGq05nW8D
	nwxP8+NE5BpEAOV3IIRy6WOtDI0nYsAeWIKNmdec7y9tb8OdQ1VQBYje1ceI+VZe+QL6orgFJ5wHa
	Yt6gFTN00wqs6eftQff1/SsZbzKChZyVOvz93kNG+DAQgz3z1mUFdVF2NAOv89PzzsedVMdNVIXm2
	Tk82kcOVPAyCuZJF4pIXwoEsFxAhum+THRwEntQj8fh9KDU7/dFLApoTsOXkx9U5i/PPMjzCjmbMy
	ist4ILAFBmIalTcEM32w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3KH1-0004ke-Dl; Thu, 29 Aug 2019 13:15:35 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3KGm-0004kF-Vm; Thu, 29 Aug 2019 13:15:22 +0000
X-UUID: 32f0c27d7edd419780c1a36707c9f4b7-20190829
X-UUID: 32f0c27d7edd419780c1a36707c9f4b7-20190829
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <yongqiang.niu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1006156088; Thu, 29 Aug 2019 05:15:24 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 29 Aug 2019 06:15:22 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by mtkmbs01n1.mediatek.inc
 (172.21.101.68) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 29 Aug 2019 21:15:14 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 29 Aug 2019 21:15:14 +0800
Message-ID: <1567084508.30648.4.camel@mhfsdcap03>
Subject: Re: [PATCH v4, 23/33] drm/mediatek: add ovl0/ovl_2l0 usecase
From: Yongqiang Niu <yongqiang.niu@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>
Date: Thu, 29 Aug 2019 21:15:08 +0800
In-Reply-To: <1563346064.29169.24.camel@mtksdaap41>
References: <1562625253-29254-1-git-send-email-yongqiang.niu@mediatek.com>
 <1562625253-29254-24-git-send-email-yongqiang.niu@mediatek.com>
 <1563346064.29169.24.camel@mtksdaap41>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_061521_035146_52BBA741 
X-CRM114-Status: GOOD (  21.11  )
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
Reply-To: yongqiang.niu@mediatek.com
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

On Wed, 2019-07-17 at 14:47 +0800, CK Hu wrote:
> Hi, Yongqiang:
> 
> On Tue, 2019-07-09 at 06:34 +0800, yongqiang.niu@mediatek.com wrote:
> > From: Yongqiang Niu <yongqiang.niu@mediatek.com>
> > 
> > This patch add ovl0/ovl_2l0 usecase
> > in ovl->ovl_2l0 direct link usecase:
> > 1. the crtc support layer number will 4+2
> > 2. ovl_2l0 background color input select ovl0 when crtc init
> > and disable it when crtc finish
> > 3. config ovl_2l0 layer, if crtc config layer number is
> > bigger than ovl0 support layers(max is 4)
> > 
> > Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> > ---
> >  drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 38 +++++++++++++++++++++++++++++++--
> >  1 file changed, 36 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> > index 5eac376..9ee9ce2 100644
> > --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> > +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> > @@ -282,6 +282,15 @@ static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc)
> >  
> >  	for (i = 0; i < mtk_crtc->ddp_comp_nr; i++) {
> >  		struct mtk_ddp_comp *comp = mtk_crtc->ddp_comp[i];
> > +		enum mtk_ddp_comp_id prev;
> > +
> > +		if (i > 0)
> > +			prev = mtk_crtc->ddp_comp[i - 1]->id;
> > +		else
> > +			prev = DDP_COMPONENT_ID_MAX;
> > +
> > +		if (prev == DDP_COMPONENT_OVL0)
> > +			mtk_ddp_comp_bgclr_in_on(comp);
> 
> I does not like to use a specific component id to check, that is not
> general. For now, you could simply call mtk_ddp_comp_bgclr_in_on(comp);
> for all component because only ovl_2l has implemented it.
> 
> Regards,
> CK
> 

both OVL0 and OVL_2L0 has the function mtk_ddp_comp_bgclr_in_on

> >  
> >  		mtk_ddp_comp_config(comp, width, height, vrefresh, bpc);
> >  		mtk_ddp_comp_start(comp);
> > @@ -291,9 +300,18 @@ static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc)
> >  	for (i = 0; i < mtk_crtc->layer_nr; i++) {
> >  		struct drm_plane *plane = &mtk_crtc->planes[i];
> >  		struct mtk_plane_state *plane_state;
> > +		struct mtk_ddp_comp *comp = mtk_crtc->ddp_comp[0];
> > +		unsigned int comp_layer_nr = mtk_ddp_comp_layer_nr(comp);
> > +		unsigned int local_layer;
> >  
> >  		plane_state = to_mtk_plane_state(plane->state);
> > -		mtk_ddp_comp_layer_config(mtk_crtc->ddp_comp[0], i,
> > +
> > +		if (i >= comp_layer_nr) {
> > +			comp = mtk_crtc->ddp_comp[1];
> > +			local_layer = i - comp_layer_nr;
> > +		} else
> > +			local_layer = i;
> > +		mtk_ddp_comp_layer_config(comp , local_layer,
> >  					  plane_state);
> >  	}
> >  
> > @@ -319,6 +337,7 @@ static void mtk_crtc_ddp_hw_fini(struct mtk_drm_crtc *mtk_crtc)
> >  					   mtk_crtc->ddp_comp[i]->id);
> >  	mtk_disp_mutex_disable(mtk_crtc->mutex);
> >  	for (i = 0; i < mtk_crtc->ddp_comp_nr - 1; i++) {
> > +		mtk_ddp_comp_bgclr_in_off(mtk_crtc->ddp_comp[i]);
> >  		mtk_ddp_remove_comp_from_path(mtk_crtc->config_regs,
> >  					      mtk_crtc->mmsys_reg_data,
> >  					      mtk_crtc->ddp_comp[i]->id,
> > @@ -339,6 +358,8 @@ static void mtk_crtc_ddp_config(struct drm_crtc *crtc)
> >  	struct mtk_crtc_state *state = to_mtk_crtc_state(mtk_crtc->base.state);
> >  	struct mtk_ddp_comp *comp = mtk_crtc->ddp_comp[0];
> >  	unsigned int i;
> > +	unsigned int comp_layer_nr = mtk_ddp_comp_layer_nr(comp);
> > +	unsigned int local_layer;
> >  
> >  	/*
> >  	 * TODO: instead of updating the registers here, we should prepare
> > @@ -361,7 +382,14 @@ static void mtk_crtc_ddp_config(struct drm_crtc *crtc)
> >  			plane_state = to_mtk_plane_state(plane->state);
> >  
> >  			if (plane_state->pending.config) {
> > -				mtk_ddp_comp_layer_config(comp, i, plane_state);
> > +				if (i >= comp_layer_nr) {
> > +					comp = mtk_crtc->ddp_comp[1];
> > +					local_layer = i - comp_layer_nr;
> > +				} else
> > +					local_layer = i;
> > +
> > +				mtk_ddp_comp_layer_config(comp, local_layer,
> > +							  plane_state);
> >  				plane_state->pending.config = false;
> >  			}
> >  		}
> > @@ -592,6 +620,12 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
> >  	}
> >  
> >  	mtk_crtc->layer_nr = mtk_ddp_comp_layer_nr(mtk_crtc->ddp_comp[0]);
> > +	if (mtk_crtc->ddp_comp_nr > 1) {
> > +		struct mtk_ddp_comp *comp = mtk_crtc->ddp_comp[1];
> > +
> > +		if (comp->funcs->bgclr_in_on)
> > +			mtk_crtc->layer_nr += mtk_ddp_comp_layer_nr(comp);
> > +	}
> >  	mtk_crtc->planes = devm_kcalloc(dev, mtk_crtc->layer_nr,
> >  					sizeof(struct drm_plane),
> >  					GFP_KERNEL);
> 
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
