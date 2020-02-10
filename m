Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3034156DBB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 03:52:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4FXkOzMLhCBM5Usd871NhYpyfXZ2ALSvl/RmiXw7lYQ=; b=N3+YDET+Sp1uaq
	Qoui6TlpJq4/iU3IkH4fCD275CJSk+cyf0ezeZFVuD5MMtDorIUK0fBBmnNz5KTlgpbkj3Jtod86n
	yK4yVxe10JgiGRsn4jPCLPG1FQFdj/p5Tym3fwA/dnw8MlFtYKiaahTsmsq/9O4aQ2Ds1wMELOXZl
	YBX90QkxiKFV2f0JoySwMSq4akZkuPdUM+6eGVlvyKJkE8TxDxO3wGIs4MZ3nVSoz4u3ujwXLCO6U
	Zfnz2Dn56SNbdzeZOc8BbZJTNseq9/gZphBXzun3rw5XRbdngW2etKANKUFlb6jMlJikubEZKoQJP
	t693aE2IbyHeuHtll98g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0zBF-0006Sj-IH; Mon, 10 Feb 2020 02:52:13 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0zB7-0006SD-CQ; Mon, 10 Feb 2020 02:52:06 +0000
X-UUID: 0355937f39ae445597b2eed98d46f735-20200209
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=EJpRwbjSh58mj6l2nQ/bNZGk/GQgl0/adoFvtAUjmAg=; 
 b=t65FEvW9RFvsiH+mt1LBXASuu/S25/yu3c0oIIDqK2ea6l0ywQXa7/+/3zWODd46jYK8nZVd063SV/d59UBkd16Xd7fsMAVPZ9jGZsKCdfBr9P3TFXGhNHMKSMrIX6i2YHdq+dDdFQHrHPoX/ECHKLPU2svEuZ/qeKOdLBkC3WQ=;
X-UUID: 0355937f39ae445597b2eed98d46f735-20200209
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1389923424; Sun, 09 Feb 2020 18:51:58 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 9 Feb 2020 18:52:32 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Feb 2020 10:50:33 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 10 Feb 2020 10:52:06 +0800
Message-ID: <1581303109.951.1.camel@mtksdaap41>
Subject: Re: [PATCH] drm/mediatek: Ensure the cursor plane is on top of
 other overlays
From: CK Hu <ck.hu@mediatek.com>
To: Sean Paul <sean@poorly.run>
Date: Mon, 10 Feb 2020 10:51:49 +0800
In-Reply-To: <1580441226.9516.1.camel@mtksdaap41>
References: <20200130192511.81205-1-sean@poorly.run>
 <1580441226.9516.1.camel@mtksdaap41>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: C0506BEC4AA5A41519AE24F56027614D84231C02A31EF03E8A3004DDC58C47C22000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200209_185205_432342_0A2765B2 
X-CRM114-Status: GOOD (  15.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: dcastagna@chromium.org, dri-devel@lists.freedesktop.org,
 Sean Paul <seanpaul@chromium.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias
 Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Sean:

On Fri, 2020-01-31 at 11:27 +0800, CK Hu wrote:
> Hi, Sean:
> 
> On Thu, 2020-01-30 at 14:24 -0500, Sean Paul wrote:
> > From: Sean Paul <seanpaul@chromium.org>
> > 
> > Currently the cursor is placed on the first overlay plane, which means
> > it will be at the bottom of the stack when the hw does the compositing
> > with anything other than primary plane. Since mtk doesn't support plane
> > zpos, change the cursor location to the top-most plane.
> > 
> 
> Reviewed-by: CK Hu <ck.hu@mediatek.com>

Applied to mediatek-drm-fixes-5.6 [1], thanks.

[1]
https://github.com/ckhu-mediatek/linux.git-tags/commits/mediatek-drm-fixes-5.6

Regards,
CK

> 
> > Signed-off-by: Sean Paul <seanpaul@chromium.org>
> > ---
> >  drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 8 +++++---
> >  1 file changed, 5 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> > index 0dfcd1787e651..4ac76b9613926 100644
> > --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> > +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> > @@ -689,11 +689,12 @@ static int mtk_drm_crtc_num_comp_planes(struct mtk_drm_crtc *mtk_crtc,
> >  }
> >  
> >  static inline
> > -enum drm_plane_type mtk_drm_crtc_plane_type(unsigned int plane_idx)
> > +enum drm_plane_type mtk_drm_crtc_plane_type(unsigned int plane_idx,
> > +					    unsigned int num_planes)
> >  {
> >  	if (plane_idx == 0)
> >  		return DRM_PLANE_TYPE_PRIMARY;
> > -	else if (plane_idx == 1)
> > +	else if (plane_idx == (num_planes - 1))
> >  		return DRM_PLANE_TYPE_CURSOR;
> >  	else
> >  		return DRM_PLANE_TYPE_OVERLAY;
> > @@ -712,7 +713,8 @@ static int mtk_drm_crtc_init_comp_planes(struct drm_device *drm_dev,
> >  		ret = mtk_plane_init(drm_dev,
> >  				&mtk_crtc->planes[mtk_crtc->layer_nr],
> >  				BIT(pipe),
> > -				mtk_drm_crtc_plane_type(mtk_crtc->layer_nr),
> > +				mtk_drm_crtc_plane_type(mtk_crtc->layer_nr,
> > +							num_planes),
> >  				mtk_ddp_comp_supported_rotations(comp));
> >  		if (ret)
> >  			return ret;
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
