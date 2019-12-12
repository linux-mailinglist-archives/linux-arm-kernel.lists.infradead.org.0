Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2EBF11CF83
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 15:15:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fpXqIsvmtWnWLpKaRYTZlNCWyzO8o/6bczPam7ITOms=; b=J5tAYo6gPtEuos
	tAsFJ7hTzHFO5FXuv+oL3kvaaRYXkIOhZJQaoW0rCIoHqSyP/u9df6XLqah1CL310t14YdpanC9lW
	Xx8kf1XDhCPxQSyCktv3ZAxZ77ZkusVudEYNFxY6Eehni0UEzcUF0cpB1FPUzXhKzdc+tJGP6CVFO
	jUH6rcRQmZKEQmprRCGJkiUTZVoRJpxn8n+KfcujIkQkcSHDiZYNf7l7eOdKyG2OyPb5W7BEIjoox
	0etr0SFt8UZ0Lq0JVsMlscs5gb2x4N4oqw/asSyko8+SCVX/yV+BV2rrXUd8O/HOOhsr02PbZXM8e
	m5mr13MNXvvV/KLE9sfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifPFl-000630-Tp; Thu, 12 Dec 2019 14:15:41 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifPFc-00061x-U0
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 14:15:35 +0000
Received: by mail-io1-f66.google.com with SMTP id b10so2145141iof.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 06:15:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rYO0vtrh5ndy7gwZikU1oH7JLP2fHnRpDb1aMOPMlmg=;
 b=ZEpemDipLJFLngdu5DRHLK9+G9LT0ArmVRxkc8wGxIJnqkil2etBm4qSp+IMEctcSB
 OaorxX5ZkSpoAZAOyvdKfot1SClAuqc5sA1E179IY2tokIY8etLGQ1V5l4ZhuXNJJm/4
 x6IRDfrQ977wlrNNXnTBZrDV7TgagxbLLav5lYzy1dl2N/pjWuNkYxf1v27pDbQ6tyce
 n9zaJ+LgPuJ2H69BsPTLviGI7wdCrYaCVRSkFz8RPRGsGZZDxAixGKOt1caM6QhqC3G1
 QegodW0hqpFnlRN2EmipG2w/5jSb7CygatS9gavL1rORWt3K7EZGGYkkyNtIXvNQcVGF
 PDAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rYO0vtrh5ndy7gwZikU1oH7JLP2fHnRpDb1aMOPMlmg=;
 b=K4yK2I8Pf2YpwvZV3ucgV+4/ibl51bBDSLwHkPdkOJlUk8mpmOtRXPlEERyL4SDzEe
 VrhuZ0h7E19CZ9zsOwus16Df0/AZ3OSWluPAB/i7lw0nw2ZmKcIUkV3Bb226aIvkAG0m
 KqRRTCFYnSDXPLUldpoDbqzbD+w2Q9jIEMdX5Zh+peKH6RZgt08W/XPnCiIz3w9ge74D
 nfXZScVz7Lk7eOH8Hcj3M2SXqwWyN3dYKQ8/h7imWliROmzNbkS3oBg+ZeoyozJR2jNB
 Lo9aSNjAJ6zEheQNCXYtKjpjgVnvnnUasG396zX0fpR9r7q4/Ufmz+HCBVS0Kh/eGinj
 pjjg==
X-Gm-Message-State: APjAAAVU/3HrNk7xt1qhTjY7a0+gHyNQ5qkFf1jr5cdxT8SkRWlmZ5UC
 K1z1lK6HR2I1iRErb7TwmbMDg5X93JAQ5G3Cx2IYHA==
X-Google-Smtp-Source: APXvYqwXu9iyecqx40na9enDvYofmCWOETmlMVhDGZVixaQ93xIQYvWAz1tw1Gs5v2KKKODm4Ff9b32roWCcC4rYKpM=
X-Received: by 2002:a6b:bd06:: with SMTP id n6mr3199167iof.165.1576160070755; 
 Thu, 12 Dec 2019 06:14:30 -0800 (PST)
MIME-Version: 1.0
References: <20191211154901.176256-1-markyacoub@google.com>
 <1576125900.29693.0.camel@mtksdaap41>
In-Reply-To: <1576125900.29693.0.camel@mtksdaap41>
From: Sean Paul <sean@poorly.run>
Date: Thu, 12 Dec 2019 09:13:55 -0500
Message-ID: <CAMavQKKOtYKVnCs3RCi3iYiX-2rLHoaDBTsEHyQmvWGoYj4M0g@mail.gmail.com>
Subject: Re: [PATCH 1/2] Return from mtk_ovl_layer_config after
 mtk_ovl_layer_off
To: CK Hu <ck.hu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_061533_660707_8DB6F253 
X-CRM114-Status: GOOD (  20.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Wed, Dec 11, 2019 at 11:45 PM CK Hu <ck.hu@mediatek.com> wrote:
>
> Hi, Mark:
>
> On Wed, 2019-12-11 at 10:49 -0500, Mark Yacoub wrote:
> > drm/mediatek: return if plane pending state is disabled.
> >
> > If the plane pending state is disabled, call mtk_ovl_layer_off then
> > return.
> > This guarantees that that the state is valid for all operations when the
> > pending state is enabled.
>
> Reviewed-by: CK Hu <ck.hu@mediatek.com>
>

Thanks for reviewing these patches, CK. When you apply them to your
tree, could you please fixup the subjects with the correct prefixes?

Both patches are also

Reviewed-by: Sean Paul <seanpaul@chromium.org>

Sean

> >
> > Suggested-by: Sean Paul <seanpaul@chromium.org>
> > To: CK Hu <ck.hu@mediatek.com>
> > To: dri-devel@lists.freedesktop.org
> > Cc: Daniele Castagna <dcastagna@chromium.org>
> > Cc: Philipp Zabel <p.zabel@pengutronix.de>
> > Cc: David Airlie <airlied@linux.ie>
> > Cc: Daniel Vetter <daniel@ffwll.ch>
> > Cc: Matthias Brugger <matthias.bgg@gmail.com>
> > Cc: linux-arm-kernel@lists.infradead.org
> > Cc: linux-mediatek@lists.infradead.org
> > Signed-off-by: Mark Yacoub <markyacoub@google.com>
> > ---
> >  drivers/gpu/drm/mediatek/mtk_disp_ovl.c | 7 ++++---
> >  1 file changed, 4 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> > index 4a55bb6e2213..526b595eeff9 100644
> > --- a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> > +++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> > @@ -260,8 +260,10 @@ static void mtk_ovl_layer_config(struct mtk_ddp_comp *comp, unsigned int idx,
> >       unsigned int src_size = (pending->height << 16) | pending->width;
> >       unsigned int con;
> >
> > -     if (!pending->enable)
> > +     if (!pending->enable) {
> >               mtk_ovl_layer_off(comp, idx);
> > +             return;
> > +     }
> >
> >       con = ovl_fmt_convert(ovl, fmt);
> >       if (idx != 0)
> > @@ -283,8 +285,7 @@ static void mtk_ovl_layer_config(struct mtk_ddp_comp *comp, unsigned int idx,
> >       writel_relaxed(offset, comp->regs + DISP_REG_OVL_OFFSET(idx));
> >       writel_relaxed(addr, comp->regs + DISP_REG_OVL_ADDR(ovl, idx));
> >
> > -     if (pending->enable)
> > -             mtk_ovl_layer_on(comp, idx);
> > +     mtk_ovl_layer_on(comp, idx);
> >  }
> >
> >  static void mtk_ovl_bgclr_in_on(struct mtk_ddp_comp *comp)
>
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
