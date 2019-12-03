Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 426AA10F914
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 08:44:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:
	In-Reply-To:Date:To:From:Subject:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lhqcxRW2pWlc8zX8boMxJ5r0lWh9FACR+JZos0FJilo=; b=gzbqrdopI7SrcK
	b/5yd2JmB0IGG4VgqCw7tM/ADIoetuONNjGbDfD7YG1/ctf5Q+Vr4CL7ESTUguT911rSlSQJZGKEc
	61TDeH2Y7hMZ9v+ZfTnO4Cr5GJxJFma5dOY7tlJ9NKS/894g8Ujc6wYubX3KtlhWvJiEtTeYEsnmC
	9FJ6CECuBmLiEjPQBML9jPlLcl/CEm+uIPIuhX0nd+RonOog5ljo1zD2XxKl7YmMqoMKP/+9awvvL
	HH0VUGKs68CwinuIAXZx/kHIxfrakPY+/szOtPQLYuLMx5ie6V6oQyHMUTU7KK8cxYxwwrtvjc9vV
	Os1KPU9qjRJf9NKns2fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic2qr-0005o9-FY; Tue, 03 Dec 2019 07:44:05 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic2qh-0005mp-9a; Tue, 03 Dec 2019 07:43:56 +0000
X-UUID: b851c9b4fa1f42e5816995e63f720927-20191202
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:Reply-To:From:Subject:Message-ID;
 bh=BVAs28Vtt9E82BQJB0GFe4lxbgi2+ruTeT4/bQX4A4I=; 
 b=oTUE2q6MY8W078arSClmvc1Oi7iDloldyJ4ybXhAT79sAxFit+AIJHUZMlPd2uoi5NgixpcSLq28tk1Iw6bm+mggW5jnY/DD/HuyzwKUJtYecxXHFrD6ZkSlnpdwk9wbLs2Z+9g+FdzY3k4grwcKGS5FzUbXvAh3PpB+/MONYUA=;
X-UUID: b851c9b4fa1f42e5816995e63f720927-20191202
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <yongqiang.niu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 920780151; Mon, 02 Dec 2019 23:43:51 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 2 Dec 2019 23:44:37 -0800
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by mtkmbs05n2.mediatek.inc
 (172.21.101.140) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 3 Dec 2019 15:43:33 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 3 Dec 2019 15:43:37 +0800
Message-ID: <1575359027.10160.2.camel@mhfsdcap03>
Subject: Re: [PATCH v1, 1/2] drm/mediatek: Fixup external display black
 screen issue
From: Yongqiang Niu <yongqiang.niu@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>
Date: Tue, 3 Dec 2019 15:43:47 +0800
In-Reply-To: <1575352101.2457.8.camel@mtksdaap41>
References: <1574817475-22378-1-git-send-email-yongqiang.niu@mediatek.com>
 <1574817475-22378-2-git-send-email-yongqiang.niu@mediatek.com>
 <1575352101.2457.8.camel@mtksdaap41>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_234355_351335_72ED1E5D 
X-CRM114-Status: GOOD (  19.67  )
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

On Tue, 2019-12-03 at 13:48 +0800, CK Hu wrote:
> Hi, Yongqiang:
> 
> On Wed, 2019-11-27 at 09:17 +0800, yongqiang.niu@mediatek.com wrote:
> > From: Yongqiang Niu <yongqiang.niu@mediatek.com>
> > 
> > Problem:
> > overlay hangup when external display hotplut test
> > 
> > Fix:
> > disable overlay when crtc disable
> 
> I think you do two things in this patch. The first is to config layer
> before component start, and the second is disable layer when crtc
> disable. So separate to two patches.
> 
> > 
> > Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> > ---
> >  drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 39 +++++++++++++++++++++------------
> >  1 file changed, 25 insertions(+), 14 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> > index 4fb346c..7eca02f 100644
> > --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> > +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> > @@ -369,6 +369,20 @@ static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc)
> >  	mtk_disp_mutex_add_comp(mtk_crtc->mutex, mtk_crtc->ddp_comp[i]->id);
> >  	mtk_disp_mutex_enable(mtk_crtc->mutex);
> >  
> > +	/* Initially configure all planes */
> > +	for (i = 0; i < mtk_crtc->layer_nr; i++) {
> > +		struct drm_plane *plane = &mtk_crtc->planes[i];
> > +		struct mtk_plane_state *plane_state;
> > +		struct mtk_ddp_comp *comp;
> > +		unsigned int local_layer;
> > +
> > +		plane_state = to_mtk_plane_state(plane->state);
> > +		comp = mtk_drm_ddp_comp_for_plane(crtc, plane, &local_layer);
> > +		if (comp)
> > +			mtk_ddp_comp_layer_config(comp, local_layer,
> > +						  plane_state, NULL);
> > +	}
> > +
> >  	for (i = 0; i < mtk_crtc->ddp_comp_nr; i++) {
> >  		struct mtk_ddp_comp *comp = mtk_crtc->ddp_comp[i];
> >  		enum mtk_ddp_comp_id prev;
> > @@ -385,20 +399,6 @@ static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc)
> >  		mtk_ddp_comp_start(comp);
> >  	}
> >  
> > -	/* Initially configure all planes */
> > -	for (i = 0; i < mtk_crtc->layer_nr; i++) {
> > -		struct drm_plane *plane = &mtk_crtc->planes[i];
> > -		struct mtk_plane_state *plane_state;
> > -		struct mtk_ddp_comp *comp;
> > -		unsigned int local_layer;
> > -
> > -		plane_state = to_mtk_plane_state(plane->state);
> > -		comp = mtk_drm_ddp_comp_for_plane(crtc, plane, &local_layer);
> > -		if (comp)
> > -			mtk_ddp_comp_layer_config(comp, local_layer,
> > -						  plane_state, NULL);
> > -	}
> > -
> >  	return 0;
> >  
> >  err_mutex_unprepare:
> > @@ -607,10 +607,21 @@ static void mtk_drm_crtc_atomic_disable(struct drm_crtc *crtc,
> >  	for (i = 0; i < mtk_crtc->layer_nr; i++) {
> >  		struct drm_plane *plane = &mtk_crtc->planes[i];
> >  		struct mtk_plane_state *plane_state;
> > +		struct mtk_ddp_comp *comp = mtk_crtc->ddp_comp[0];
> > +		unsigned int comp_layer_nr = mtk_ddp_comp_layer_nr(comp);
> > +		unsigned int local_layer;
> >  
> >  		plane_state = to_mtk_plane_state(plane->state);
> >  		plane_state->pending.enable = false;
> >  		plane_state->pending.config = true;
> > +
> > +		if (i >= comp_layer_nr) {
> > +			comp = mtk_crtc->ddp_comp[1];
> > +			local_layer = i - comp_layer_nr;
> > +		} else
> > +			local_layer = i;
> > +		mtk_ddp_comp_layer_config(comp, local_layer,
> > +					  plane_state, NULL);
> 
> I'm confused with this part. The design of this loop is to set
> plane_state->pending.enable = false and wait for irq handler to write
> register. Why do you directly write register?
> 
> Regards,
> CK

when cmdq enable, mtk_crtc->cmdq_client will be always true when crtc
create, there is no chance for mtk_crtc_ddp_config process in ddp irq 
callback function
> 
> >  	}
> >  	mtk_crtc->pending_planes = true;
> >  
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
