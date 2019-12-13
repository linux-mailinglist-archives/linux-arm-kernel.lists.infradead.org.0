Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5F3011DC2B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 03:35:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6j5yUNbWAl2zvCTMZKvJjyEGN6qD3eEmg9TpF+Qh4KI=; b=pStRhWZY3GyHrR
	fJgozn0Y6VdqiQVMF4L/jb3FkQW3u3mkh1cyGia9XVtxf15LeS/0WGFSwVvdur2cO5IO9UZhub2Kf
	Dsy2n9KPrI3LRxcHjylD3SmxAy1Uxw9MlpRpOZLTGxHYVD3uW/nKTyht6ANVw4sqBx7ervXW57P26
	hiqI9WPFWzidtY5mDGdCD/cTR2g4lLtxXqF37UrHs5TYGKtUgnFcNdz5TOUDybRjxkrpdc9f71wop
	QiISxmfn8WKq3KmsSs2MSOuX/ao1ogS85czxxS6Z7e6GWYRRTly2tivbyidky4o0DT3Abi27kMgxU
	pPJyzlyW0FC5EOxcsR8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifanV-0004Ch-Qv; Fri, 13 Dec 2019 02:35:17 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifanM-0003YZ-8s; Fri, 13 Dec 2019 02:35:10 +0000
X-UUID: 47fa587e52fc447683185be32e24f6e0-20191212
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=yhFMIzdACTJWG8hG2F5mM6oLY9KIsSirpu7dj4pmzWo=; 
 b=OQv/fxiQsfz4cvuh5JCsWQWp2JRkjT1QaFhtXzcgEfYxmmzin8CsOw79fhtWlphFO76eLW+07eYB+O8zKugRMO8JivvHFUMbzH2x63ELE60uieaRK2swT6thOuy/iTJDEyiI2n0pCYqHYmvGhNwdHcr1o+h6XYOghd9Suw+u0MY=;
X-UUID: 47fa587e52fc447683185be32e24f6e0-20191212
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1796512916; Thu, 12 Dec 2019 18:35:01 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Dec 2019 18:35:16 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 13 Dec 2019 10:34:36 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 13 Dec 2019 10:34:51 +0800
Message-ID: <1576204492.26694.0.camel@mtksdaap41>
Subject: Re: [PATCH 1/2] Return from mtk_ovl_layer_config after
 mtk_ovl_layer_off
From: CK Hu <ck.hu@mediatek.com>
To: Sean Paul <sean@poorly.run>
Date: Fri, 13 Dec 2019 10:34:52 +0800
In-Reply-To: <CAMavQKKOtYKVnCs3RCi3iYiX-2rLHoaDBTsEHyQmvWGoYj4M0g@mail.gmail.com>
References: <20191211154901.176256-1-markyacoub@google.com>
 <1576125900.29693.0.camel@mtksdaap41>
 <CAMavQKKOtYKVnCs3RCi3iYiX-2rLHoaDBTsEHyQmvWGoYj4M0g@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_183508_332736_CBB67145 
X-CRM114-Status: GOOD (  19.46  )
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
Cc: Daniele Castagna <dcastagna@chromium.org>, David Airlie <airlied@linux.ie>,
 dri-devel <dri-devel@lists.freedesktop.org>, Sean Paul <seanpaul@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mark Yacoub <markyacoub@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Sean:

On Thu, 2019-12-12 at 09:13 -0500, Sean Paul wrote:
> On Wed, Dec 11, 2019 at 11:45 PM CK Hu <ck.hu@mediatek.com> wrote:
> >
> > Hi, Mark:
> >
> > On Wed, 2019-12-11 at 10:49 -0500, Mark Yacoub wrote:
> > > drm/mediatek: return if plane pending state is disabled.
> > >
> > > If the plane pending state is disabled, call mtk_ovl_layer_off then
> > > return.
> > > This guarantees that that the state is valid for all operations when the
> > > pending state is enabled.
> >
> > Reviewed-by: CK Hu <ck.hu@mediatek.com>
> >
> 
> Thanks for reviewing these patches, CK. When you apply them to your
> tree, could you please fixup the subjects with the correct prefixes?

Thanks for your notice. I've already planed to do so.

Regards,
CK

> 
> Both patches are also
> 
> Reviewed-by: Sean Paul <seanpaul@chromium.org>
> 
> Sean
> 
> > >
> > > Suggested-by: Sean Paul <seanpaul@chromium.org>
> > > To: CK Hu <ck.hu@mediatek.com>
> > > To: dri-devel@lists.freedesktop.org
> > > Cc: Daniele Castagna <dcastagna@chromium.org>
> > > Cc: Philipp Zabel <p.zabel@pengutronix.de>
> > > Cc: David Airlie <airlied@linux.ie>
> > > Cc: Daniel Vetter <daniel@ffwll.ch>
> > > Cc: Matthias Brugger <matthias.bgg@gmail.com>
> > > Cc: linux-arm-kernel@lists.infradead.org
> > > Cc: linux-mediatek@lists.infradead.org
> > > Signed-off-by: Mark Yacoub <markyacoub@google.com>
> > > ---
> > >  drivers/gpu/drm/mediatek/mtk_disp_ovl.c | 7 ++++---
> > >  1 file changed, 4 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> > > index 4a55bb6e2213..526b595eeff9 100644
> > > --- a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> > > +++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> > > @@ -260,8 +260,10 @@ static void mtk_ovl_layer_config(struct mtk_ddp_comp *comp, unsigned int idx,
> > >       unsigned int src_size = (pending->height << 16) | pending->width;
> > >       unsigned int con;
> > >
> > > -     if (!pending->enable)
> > > +     if (!pending->enable) {
> > >               mtk_ovl_layer_off(comp, idx);
> > > +             return;
> > > +     }
> > >
> > >       con = ovl_fmt_convert(ovl, fmt);
> > >       if (idx != 0)
> > > @@ -283,8 +285,7 @@ static void mtk_ovl_layer_config(struct mtk_ddp_comp *comp, unsigned int idx,
> > >       writel_relaxed(offset, comp->regs + DISP_REG_OVL_OFFSET(idx));
> > >       writel_relaxed(addr, comp->regs + DISP_REG_OVL_ADDR(ovl, idx));
> > >
> > > -     if (pending->enable)
> > > -             mtk_ovl_layer_on(comp, idx);
> > > +     mtk_ovl_layer_on(comp, idx);
> > >  }
> > >
> > >  static void mtk_ovl_bgclr_in_on(struct mtk_ddp_comp *comp)
> >
> > _______________________________________________
> > dri-devel mailing list
> > dri-devel@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/dri-devel
> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
