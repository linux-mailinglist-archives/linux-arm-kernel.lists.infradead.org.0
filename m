Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76BA811DF04
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 09:03:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:
	In-Reply-To:Date:To:From:Subject:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XOy+/zahDcMdZQ+tsHBw9PFN1J7e64Lz32DbJdFLRuE=; b=aIdf4E9fqboCT5
	X865k8s9fbDMJYAcG5sjB+kzRA/guwJYg7FPQpDG9vv2D+9zKp9qzXdGiyywHQSO0hoJDTF7DDTZg
	/bHr4zx1Izbb4sxYHCZrKNdKYmKigzlO97o8pkhCUFSU4jM7ERVzgsmFdQNB4VS28qGxMsRBetDub
	VmhVwYTGKquJ/Ed1sDF8CcPdSXbBLZf7Hlwqx0d4it+kLjFFUQvxwEbLJsrownPyiCT287j4yKlyq
	lz0DTsZMqpaLHsgjIJBuSO7x44FlQcLlRwVzYkJxC8k4vdValwfychSV4SXcWyOlLXDemiG0dNmQp
	IbyEsibR9jO1W9LeiIIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iffvB-0004Cy-Rz; Fri, 13 Dec 2019 08:03:33 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iffv1-0004CZ-Jr; Fri, 13 Dec 2019 08:03:25 +0000
X-UUID: b538c21a97f84202bcfd5a1fe8964f26-20191213
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:Reply-To:From:Subject:Message-ID;
 bh=3iGzWvQ973vDVy2jTOS5BARL9ANWb/8ieSVfodrTkr4=; 
 b=Q8dA/9WQLk57H+t7aqd0+s6RFLHlGomn33rqYN8MFiu2AmwQZaL9ZKkEt8OgkmgKMxTk+T9D/0sE+QFrOJkk6QuuL2qT+m9rNVUGt1cOUz7s27C+CivdDGHLC7F15R9xKKnm4i04kZowdudB8TmQA43W7Id36QDeI1vfAXIiVTE=;
X-UUID: b538c21a97f84202bcfd5a1fe8964f26-20191213
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <yongqiang.niu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1632271844; Fri, 13 Dec 2019 00:03:15 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 13 Dec 2019 00:04:17 -0800
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by mtkmbs05n2.mediatek.inc
 (172.21.101.140) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Fri, 13 Dec 2019 16:02:52 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 13 Dec 2019 16:03:11 +0800
Message-ID: <1576224191.31822.2.camel@mhfsdcap03>
Subject: Re: [PATCH v2, 1/2] drm/mediatek: Fix gamma correction issue
From: Yongqiang Niu <yongqiang.niu@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>
Date: Fri, 13 Dec 2019 16:03:11 +0800
In-Reply-To: <1576223336.9817.3.camel@mtksdaap41>
References: <1576222132-31586-1-git-send-email-yongqiang.niu@mediatek.com>
 <1576222132-31586-2-git-send-email-yongqiang.niu@mediatek.com>
 <1576223336.9817.3.camel@mtksdaap41>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_000323_659598_27967D7B 
X-CRM114-Status: GOOD (  16.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Reply-To: Yongqiang Niu <yongqiang.niu@mediatek.com>
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

On Fri, 2019-12-13 at 15:48 +0800, CK Hu wrote:
> Hi, Yongqiang:
> 
> The title is too rough. Any bug of gamma would be this title. I would
> like the title show explicitly what it does.
> 
> On Fri, 2019-12-13 at 15:28 +0800, Yongqiang Niu wrote:
> > if there is no gamma function in the crtc
> > display path, don't add gamma property
> > for crtc
> > 
> > Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> > ---
> >  drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 10 ++++++++--
> >  1 file changed, 8 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> > index ca4fc47..9a8e1d4 100644
> > --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> > +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> > @@ -734,6 +734,7 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
> >  	int pipe = priv->num_pipes;
> >  	int ret;
> >  	int i;
> > +	uint gamma_lut_size = 0;
> >  
> >  	if (!path)
> >  		return 0;
> > @@ -785,6 +786,9 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
> >  		}
> >  
> >  		mtk_crtc->ddp_comp[i] = comp;
> > +
> > +		if (comp->funcs->gamma_set)
> > +			gamma_lut_size = MTK_LUT_SIZE;
> >  	}
> >  
> >  	for (i = 0; i < mtk_crtc->ddp_comp_nr; i++)
> > @@ -805,8 +809,10 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
> >  				NULL, pipe);
> >  	if (ret < 0)
> >  		return ret;
> > -	drm_mode_crtc_set_gamma_size(&mtk_crtc->base, MTK_LUT_SIZE);
> > -	drm_crtc_enable_color_mgmt(&mtk_crtc->base, 0, false, MTK_LUT_SIZE);
> > +
> > +	if (gamma_lut_size)
> > +		drm_mode_crtc_set_gamma_size(&mtk_crtc->base, gamma_lut_size);
> > +	drm_crtc_enable_color_mgmt(&mtk_crtc->base, 0, false, gamma_lut_size);
> 
> If there is no gamma, shall we enable color management?
> 
> Regards,
> CK

drm_crtc_enable_color_mgmt will check the gamma_lut_size parameter,
if no gamma, gamma_lut_size will be 0, and gamma_lut_size will not attch
gamma property for the crtc
> 
> >  	priv->num_pipes++;
> >  	mutex_init(&mtk_crtc->hw_lock);
> >  
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
