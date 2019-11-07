Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D65DF2462
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 02:39:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5qiznswJkb6bwqTlpe7HxSBnjlm6mIZp+/6VGywSVms=; b=jdlRbBhX+nbUq9
	/VABeamZQto/s6Wlum7yos8xUFAA3ImqDP1k2JQrgsgMPslSplb7twbwKXd4H3lQHyCwMU2zgi4lV
	dGuNn9l/GZViY4FDrAmdnPZ63PiA3pBM/7f3n4n9Ircm5Qte35TjvFQPdAaWGhMFUtETaYksNUHP4
	a+DCEXYiKDF15x36pAm9GqQxWLG5Ta4hXkpcVWKROW8j7RDEcnVYD2OXrU3LxOvo3bMklgZV8kTAo
	UZIWY3s7cHnGuVZcxcpa+mkH913/kMe+sN3Acc+Cl6ELjWjaItRh9Q1FDV+Rl3N0GCVBHAQMWJefF
	X0Dbd9kJdWUHpycOwhlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSWlT-00024S-13; Thu, 07 Nov 2019 01:39:11 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSWlI-00022f-Tg; Thu, 07 Nov 2019 01:39:02 +0000
X-UUID: 00a288d9aea24c51ba17f96ea3ff195f-20191106
X-UUID: 00a288d9aea24c51ba17f96ea3ff195f-20191106
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2054697862; Wed, 06 Nov 2019 17:39:04 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 6 Nov 2019 17:38:33 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 7 Nov 2019 09:38:32 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 7 Nov 2019 09:38:32 +0800
Message-ID: <1573090713.30408.3.camel@mtksdaap41>
Subject: Re: [PATCH v2 7/7] drm/mediatek: Support 180 degree rotation
From: CK Hu <ck.hu@mediatek.com>
To: Sean Paul <sean@poorly.run>
Date: Thu, 7 Nov 2019 09:38:33 +0800
In-Reply-To: <CAMavQKJ+_+fytidjp4WvMwSrytJO_aU+57a54h1ACAqPHp3e7A@mail.gmail.com>
References: <20191105211034.123937-1-sean@poorly.run>
 <20191105211034.123937-8-sean@poorly.run>
 <1573031243.15410.2.camel@mtksdaap41>
 <CAMavQKJ+_+fytidjp4WvMwSrytJO_aU+57a54h1ACAqPHp3e7A@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_173900_959850_1EE17B1C 
X-CRM114-Status: GOOD (  22.42  )
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
Cc: Daniele Castagna <dcastagna@chromium.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Fritz
 Koenig <frkoenig@chromium.org>, Miguel Casas <mcasas@chromium.org>,
 "moderated list:ARM/Mediatek
 SoC support" <linux-mediatek@lists.infradead.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sean Paul <seanpaul@chromium.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mark Yacoub <markyacoub@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Sean:

On Wed, 2019-11-06 at 09:42 -0500, Sean Paul wrote:
> On Wed, Nov 6, 2019 at 4:07 AM CK Hu <ck.hu@mediatek.com> wrote:
> >
> > Hi, Sean:
> >
> > On Tue, 2019-11-05 at 16:10 -0500, Sean Paul wrote:
> > > From: Sean Paul <seanpaul@chromium.org>
> > >
> > > Now that we support both reflections, we can expose 180 degree rotation
> > > and rely on the simplify routine to convert that into REFLECT_X |
> > > REFLECT_Y
> > >
> >
> > Patch 1 ~ 6 of this series looks good to me.
> > For this one, I think the rotation check in mtk_ovl_layer_check() should
> > be modified.
> >
> 
> Thanks for the quick reviews, CK!
> 
> In what way would you like the check to be modified? I'm guessing
> you're asking that I add it to the bitmask passed to the
> simplify_rotation function?
> 
> If that's the case, we don't actually want to modify the
> simplify_rotation bitmask since that bitmask is supposed to be only
> the rotations that the hardware can achieve. So if you pass ROTATE_180
> into simplify_rotation, it will return REFLECT_X | REFLECT_Y, which is
> what we want. Does that make sense, or am I missing something?

drm_rotation_simplify() is really hard to understand. You're right, so
apply this series to mediatek-drm-next-5.5-2 [1], thanks.

[1]
https://github.com/ckhu-mediatek/linux.git-tags/commits/mediatek-drm-next-5.5-2

Regards,
CK

> 
> Thanks,
> 
> Sean
> 
> > Regards,
> > CK
> >
> > > Signed-off-by: Sean Paul <seanpaul@chromium.org>
> > > ---
> > >  drivers/gpu/drm/mediatek/mtk_disp_ovl.c | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> > > index f4c4d3fedc5f..4a55bb6e2213 100644
> > > --- a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> > > +++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> > > @@ -143,8 +143,8 @@ static unsigned int mtk_ovl_layer_nr(struct mtk_ddp_comp *comp)
> > >
> > >  static unsigned int mtk_ovl_supported_rotations(struct mtk_ddp_comp *comp)
> > >  {
> > > -     return DRM_MODE_ROTATE_0 | DRM_MODE_REFLECT_Y |
> > > -            DRM_MODE_REFLECT_X;
> > > +     return DRM_MODE_ROTATE_0 | DRM_MODE_ROTATE_180 |
> > > +            DRM_MODE_REFLECT_X | DRM_MODE_REFLECT_Y;
> > >  }
> > >
> > >  static int mtk_ovl_layer_check(struct mtk_ddp_comp *comp, unsigned int idx,
> >
> >



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
