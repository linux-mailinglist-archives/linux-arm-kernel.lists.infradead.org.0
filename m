Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AD2910F5A0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 04:34:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8O3d4pOcM6kqDIHKYaLK30mje4c/tC2phtGiAPIMxuI=; b=UExa0sKlqK3KVo
	1SpuHvTRy1+vvVsjIiASNTKNMLYW2fNjgzz3oTuJs9VIQ7zOLW1ic/Tt/s1MGNnqeBI45tpZbW+c8
	rPi22RpLMza5SMEs//o0yk+Lx2K2ugqlRUUBm4cyRKJa9WVaJ0NsNidXg+vofGJhS1/Yvdpkv1OBY
	jR1qQ45NHP5m8ORwMFaOImqyP37KXUkD25yrQzcjCDdOMEgq8l2GYZDFne5RDB6BHb3XZHx0B5QX+
	oiif9uxFp4IrRa48J4BXwPiZEdtV7PIZXi6AzApMCELWBj2Vjog0ee3kjBHrr94SZ2gyWDoneWURX
	4tBohgr5a3RMo1HlNNUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibyxX-0006qt-AX; Tue, 03 Dec 2019 03:34:43 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibyxR-0006qH-Cm; Tue, 03 Dec 2019 03:34:39 +0000
X-UUID: 1d13ed885f664f5cbe3bcf4b82673030-20191202
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=YYdvdLxaz+GrtaamZIqTRrwxovn6ou6aNFueL+5BIUI=; 
 b=i5z0BJM5zG4zTt49S9eba3RZRo3J16IO1cT51iOotJ7V7VOk4r9TcmgBrG2k0Ox1LfKEh12NscTYLiSd2o4guGqTVRysbIUsZS0A8Bn6eSvX6qFAs/WJwT7g5NPiWmcdZj2YKzcMcJgVTVCuaS+iKmCWl1ZAWYmKag+1C/NeLW0=;
X-UUID: 1d13ed885f664f5cbe3bcf4b82673030-20191202
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 765615208; Mon, 02 Dec 2019 19:34:31 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 2 Dec 2019 19:35:12 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 3 Dec 2019 11:34:13 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 3 Dec 2019 11:34:08 +0800
Message-ID: <1575344068.627.2.camel@mtksdaap41>
Subject: Re: [PATCH v1 5/6] drm/mediatek: support CMDQ interface in ddp
 component
From: CK Hu <ck.hu@mediatek.com>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Date: Tue, 3 Dec 2019 11:34:28 +0800
In-Reply-To: <1575341763.19788.3.camel@mtksdaap41>
References: <20191128024238.9399-1-bibby.hsieh@mediatek.com>
 <20191128024238.9399-6-bibby.hsieh@mediatek.com>
 <1575341763.19788.3.camel@mtksdaap41>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_193437_446307_FA460B28 
X-CRM114-Status: GOOD (  15.55  )
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
Cc: drinkcat@chromium.org, Yongqiang Niu <yongqiang.niu@mediatek.com>,
 srv_heupstream@mediatek.com, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, tfiga@chromium.org,
 YT Shen <yt.shen@mediatek.com>, Thierry Reding <thierry.reding@gmail.com>,
 linux-mediatek@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Bibby:

On Tue, 2019-12-03 at 10:56 +0800, CK Hu wrote:
> Hi, Bibby:
> 
> On Thu, 2019-11-28 at 10:42 +0800, Bibby Hsieh wrote:
> > The CMDQ (Command Queue) in MT8183 is used to help
> > update all relevant display controller registers
> > with critical time limation.
> > This patch add cmdq interface in ddp_comp interface,
> > let all ddp_comp interface can support cpu/cmdq function
> > at the same time.
> > 
> > Signed-off-by: YT Shen <yt.shen@mediatek.com>
> > Signed-off-by: CK Hu <ck.hu@mediatek.com>
> > Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> > Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> > Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> > ---
> >  drivers/gpu/drm/mediatek/mtk_disp_color.c   |   7 +-
> >  drivers/gpu/drm/mediatek/mtk_disp_ovl.c     |  65 ++++++-----
> >  drivers/gpu/drm/mediatek/mtk_disp_rdma.c    |  43 ++++---
> >  drivers/gpu/drm/mediatek/mtk_drm_crtc.c     |  11 +-
> >  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c | 120 ++++++++++++++------
> >  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h |  55 ++++++---
> >  6 files changed, 190 insertions(+), 111 deletions(-)
> > 
> 

[snip]

> > diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
> > index ec55c7488cc3..5b0a3d48dfa6 100644
> > --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
> > +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
> > @@ -69,25 +69,30 @@ enum mtk_ddp_comp_id {
> >  };
> >  
> >  struct mtk_ddp_comp;
> > -
> > +struct cmdq_pkt;
> >  struct mtk_ddp_comp_funcs {
> >  	void (*config)(struct mtk_ddp_comp *comp, unsigned int w,
> > -		       unsigned int h, unsigned int vrefresh, unsigned int bpc);
> > +		       unsigned int h, unsigned int vrefresh,
> > +		       unsigned int bpc, struct cmdq_pkt *cmdq_pkt);
> >  	void (*start)(struct mtk_ddp_comp *comp);
> >  	void (*stop)(struct mtk_ddp_comp *comp);
> >  	void (*enable_vblank)(struct mtk_ddp_comp *comp, struct drm_crtc *crtc);
> >  	void (*disable_vblank)(struct mtk_ddp_comp *comp);
> >  	unsigned int (*supported_rotations)(struct mtk_ddp_comp *comp);
> >  	unsigned int (*layer_nr)(struct mtk_ddp_comp *comp);
> > -	void (*layer_on)(struct mtk_ddp_comp *comp, unsigned int idx);
> > -	void (*layer_off)(struct mtk_ddp_comp *comp, unsigned int idx);
> > +	void (*layer_on)(struct mtk_ddp_comp *comp, unsigned int idx,
> > +			 struct cmdq_pkt *cmdq_pkt);
> > +	void (*layer_off)(struct mtk_ddp_comp *comp, unsigned int idx,
> > +			  struct cmdq_pkt *cmdq_pkt);

layer_on() and layer_off() looks useless, so I would like you just
remove this interface in another patch.

Regards,
CK

> >  	int (*layer_check)(struct mtk_ddp_comp *comp,
> >  			   unsigned int idx,
> >  			   struct mtk_plane_state *state);
> >  	void (*layer_config)(struct mtk_ddp_comp *comp, unsigned int idx,
> > -			     struct mtk_plane_state *state);
> > +			     struct mtk_plane_state *state,
> > +			     struct cmdq_pkt *cmdq_pkt);
> >  	void (*gamma_set)(struct mtk_ddp_comp *comp,
> > -			  struct drm_crtc_state *state);
> > +			  struct drm_crtc_state *state,
> > +			  struct cmdq_pkt *cmdq_pkt);
> >  	void (*bgclr_in_on)(struct mtk_ddp_comp *comp);
> >  	void (*bgclr_in_off)(struct mtk_ddp_comp *comp);
> >  };
> > @@ -99,14 +104,17 @@ struct mtk_ddp_comp {
> >  	struct device *dev;
> >  	enum mtk_ddp_comp_id id;
> >  	const struct mtk_ddp_comp_funcs *funcs;
> > +	resource_size_t regs_pa;
> > +	u8 subsys;
> >  };
> >  
> >  static inline void mtk_ddp_comp_config(struct mtk_ddp_comp *comp,
> >  				       unsigned int w, unsigned int h,
> > -				       unsigned int vrefresh, unsigned int bpc)
> > +				       unsigned int vrefresh, unsigned int bpc,
> > +				       struct cmdq_pkt *cmdq_pkt)
> >  {
> >  	if (comp->funcs && comp->funcs->config)
> > -		comp->funcs->config(comp, w, h, vrefresh, bpc);
> > +		comp->funcs->config(comp, w, h, vrefresh, bpc, cmdq_pkt);
> >  }
> >  
> >  static inline void mtk_ddp_comp_start(struct mtk_ddp_comp *comp)
> > @@ -152,17 +160,19 @@ static inline unsigned int mtk_ddp_comp_layer_nr(struct mtk_ddp_comp *comp)
> >  }
> >  
> >  static inline void mtk_ddp_comp_layer_on(struct mtk_ddp_comp *comp,
> > -					 unsigned int idx)
> > +					 unsigned int idx,
> > +					 struct cmdq_pkt *cmdq_pkt)
> >  {
> >  	if (comp->funcs && comp->funcs->layer_on)
> > -		comp->funcs->layer_on(comp, idx);
> > +		comp->funcs->layer_on(comp, idx, cmdq_pkt);
> >  }
> >  
> >  static inline void mtk_ddp_comp_layer_off(struct mtk_ddp_comp *comp,
> > -					  unsigned int idx)
> > +					  unsigned int idx,
> > +					  struct cmdq_pkt *cmdq_pkt)
> >  {
> >  	if (comp->funcs && comp->funcs->layer_off)
> > -		comp->funcs->layer_off(comp, idx);
> > +		comp->funcs->layer_off(comp, idx, cmdq_pkt);
> >  }
> >  
> >  static inline int mtk_ddp_comp_layer_check(struct mtk_ddp_comp *comp,
> > @@ -176,17 +186,19 @@ static inline int mtk_ddp_comp_layer_check(struct mtk_ddp_comp *comp,
> >  
> >  static inline void mtk_ddp_comp_layer_config(struct mtk_ddp_comp *comp,
> >  					     unsigned int idx,
> > -					     struct mtk_plane_state *state)
> > +					     struct mtk_plane_state *state,
> > +					     struct cmdq_pkt *cmdq_pkt)
> >  {
> >  	if (comp->funcs && comp->funcs->layer_config)
> > -		comp->funcs->layer_config(comp, idx, state);
> > +		comp->funcs->layer_config(comp, idx, state, cmdq_pkt);
> >  }
> >  
> >  static inline void mtk_ddp_gamma_set(struct mtk_ddp_comp *comp,
> > -				     struct drm_crtc_state *state)
> > +				     struct drm_crtc_state *state,
> > +				     struct cmdq_pkt *cmdq_pkt)
> >  {
> >  	if (comp->funcs && comp->funcs->gamma_set)
> > -		comp->funcs->gamma_set(comp, state);
> > +		comp->funcs->gamma_set(comp, state, cmdq_pkt);
> >  }
> >  
> >  static inline void mtk_ddp_comp_bgclr_in_on(struct mtk_ddp_comp *comp)
> > @@ -209,6 +221,13 @@ int mtk_ddp_comp_init(struct device *dev, struct device_node *comp_node,
> >  int mtk_ddp_comp_register(struct drm_device *drm, struct mtk_ddp_comp *comp);
> >  void mtk_ddp_comp_unregister(struct drm_device *drm, struct mtk_ddp_comp *comp);
> >  void mtk_dither_set(struct mtk_ddp_comp *comp, unsigned int bpc,
> > -		    unsigned int CFG);
> > -
> > +		    unsigned int CFG, struct cmdq_pkt *cmdq_pkt);
> > +enum mtk_ddp_comp_type mtk_ddp_comp_get_type(enum mtk_ddp_comp_id comp_id);
> > +void mtk_ddp_write(struct cmdq_pkt *cmdq_pkt, unsigned int value,
> > +		   struct mtk_ddp_comp *comp, unsigned int offset);
> > +void mtk_ddp_write_relaxed(struct cmdq_pkt *cmdq_pkt, unsigned int value,
> > +			   struct mtk_ddp_comp *comp, unsigned int offset);
> > +void mtk_ddp_write_mask(struct cmdq_pkt *cmdq_pkt, unsigned int value,
> > +			struct mtk_ddp_comp *comp, unsigned int offset,
> > +			unsigned int mask);
> >  #endif /* MTK_DRM_DDP_COMP_H */
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
