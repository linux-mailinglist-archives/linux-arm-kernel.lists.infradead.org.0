Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19DC911DF24
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 09:09:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bJI8qAx8SsaoyAv4RWJmFxJvPMY0Q1WIn3e2W2XdWvc=; b=CBcVEY5a0y9txE
	uXCsJ+NKmreyY4yYHw6+o/hR6n6UYOixKuF8Nmw4vc2RBXIhQaLpKbEjSR3nqMMcsRkqSv10Mq+yQ
	cH40XiEPS0RIH2i7tR7FJlgSw4fWjVLhiVx3+Jumd97wXftHKjo/cRz76r8RIcYu/kkNI473LgQE8
	ytaSC1kxqFh+3w3TvTtP/vcAueisZcMopoG675AEXTUrFknKko4A62S9TzWlhg9XRsnMf8hdmB0oR
	xdvbv0gXTiFITF1bDlvBdDVMqkQ4UFsJMSk13AN6VHl5M2gV0aY3X6SE22sCdnAFxwPgvpdg6ycFf
	pQLRDy1RRxeHU+aaAUqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifg1I-0006h0-40; Fri, 13 Dec 2019 08:09:52 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifg1A-0006gZ-A8; Fri, 13 Dec 2019 08:09:45 +0000
X-UUID: 08c5585388254b87b29b892e9444109d-20191213
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=XJhy5g+NHFwDI5f0gUqZjPngJbGRrCHM6x7omxpoGFE=; 
 b=Zfzmf3eeptgNR+cdaGZfy0k5q6FPpIVUdSfVXDRiJb7hUZaUP2sw4GA2U9fqz9gyeEeoE570TCJ3YSr1ZSqjh5pvEtFeAXGahzHxo0vo5wTqfo76dhcY7/DSz0KScAApushiW8tjfsjfuvkPRD+vD0JremZqlEVDzi767EuJmiY=;
X-UUID: 08c5585388254b87b29b892e9444109d-20191213
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 13295992; Fri, 13 Dec 2019 00:09:40 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 13 Dec 2019 00:09:55 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 13 Dec 2019 16:09:23 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 13 Dec 2019 16:09:34 +0800
Message-ID: <1576224575.13335.1.camel@mtksdaap41>
Subject: Re: [PATCH v2, 1/2] drm/mediatek: Fix gamma correction issue
From: CK Hu <ck.hu@mediatek.com>
To: Yongqiang Niu <yongqiang.niu@mediatek.com>
Date: Fri, 13 Dec 2019 16:09:35 +0800
In-Reply-To: <1576224191.31822.2.camel@mhfsdcap03>
References: <1576222132-31586-1-git-send-email-yongqiang.niu@mediatek.com>
 <1576222132-31586-2-git-send-email-yongqiang.niu@mediatek.com>
 <1576223336.9817.3.camel@mtksdaap41> <1576224191.31822.2.camel@mhfsdcap03>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: E0C81D5B10B64C1A208C0F2484C5E394387DD294A1723E0D5353D5CFEA9397FD2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_000944_360467_C501A975 
X-CRM114-Status: GOOD (  17.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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

On Fri, 2019-12-13 at 16:03 +0800, Yongqiang Niu wrote:
> On Fri, 2019-12-13 at 15:48 +0800, CK Hu wrote:
> > Hi, Yongqiang:
> > 
> > The title is too rough. Any bug of gamma would be this title. I would
> > like the title show explicitly what it does.
> > 
> > On Fri, 2019-12-13 at 15:28 +0800, Yongqiang Niu wrote:
> > > if there is no gamma function in the crtc
> > > display path, don't add gamma property
> > > for crtc
> > > 
> > > Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> > > ---
> > >  drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 10 ++++++++--
> > >  1 file changed, 8 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> > > index ca4fc47..9a8e1d4 100644
> > > --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> > > +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> > > @@ -734,6 +734,7 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
> > >  	int pipe = priv->num_pipes;
> > >  	int ret;
> > >  	int i;
> > > +	uint gamma_lut_size = 0;
> > >  
> > >  	if (!path)
> > >  		return 0;
> > > @@ -785,6 +786,9 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
> > >  		}
> > >  
> > >  		mtk_crtc->ddp_comp[i] = comp;
> > > +
> > > +		if (comp->funcs->gamma_set)
> > > +			gamma_lut_size = MTK_LUT_SIZE;
> > >  	}
> > >  
> > >  	for (i = 0; i < mtk_crtc->ddp_comp_nr; i++)
> > > @@ -805,8 +809,10 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
> > >  				NULL, pipe);
> > >  	if (ret < 0)
> > >  		return ret;
> > > -	drm_mode_crtc_set_gamma_size(&mtk_crtc->base, MTK_LUT_SIZE);
> > > -	drm_crtc_enable_color_mgmt(&mtk_crtc->base, 0, false, MTK_LUT_SIZE);
> > > +
> > > +	if (gamma_lut_size)
> > > +		drm_mode_crtc_set_gamma_size(&mtk_crtc->base, gamma_lut_size);
> > > +	drm_crtc_enable_color_mgmt(&mtk_crtc->base, 0, false, gamma_lut_size);
> > 
> > If there is no gamma, shall we enable color management?
> > 
> > Regards,
> > CK
> 
> drm_crtc_enable_color_mgmt will check the gamma_lut_size parameter,
> if no gamma, gamma_lut_size will be 0, and gamma_lut_size will not attch
> gamma property for the crtc

OK, you're right. So

Reviewed-by: CK Hu <ck.hu@mediatek.com>

and what title would you like?
I could modify it when I apply this patch.

Regards,
CK

> > 
> > >  	priv->num_pipes++;
> > >  	mutex_init(&mtk_crtc->hw_lock);
> > >  
> > 
> > 
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
