Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE4A0157D1A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 15:11:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W1C5lKWDsRUksoFVPDCVIRTCC/1KPy3+ktgWhCPF1O4=; b=DwgdXv5FH2jxxW
	eHtseECRppPWMIq5ezMWH1EEuXOuISYEIcLTjgj1LksCArd/qkjxbKiR1/T16wBp8cTYn+a7TGkKw
	UI+RzcNVd5auRR2qttB499N9RiT6gVGubH7ZSqwSWc6qomuSEVyZ2i/wsDZalmTXixbO+HXeM4OVp
	68ZnA4DfI/ZW8Fd1XbPj3t0a2UXMpqqMEOJCqjgEWFCcdTcSJ9QQ2R3Je5I4BLt9z+1KxEBb7sZJm
	/19ukTmYQLVpuu1K6P0/Isku/aZZGPTsqddU6otJX5KgW7rW06ydfsMTpUnmPNI12WtdeOY7W+VH+
	gOqSiWzFBBwsNLAzDn6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j19mg-0002iE-Sc; Mon, 10 Feb 2020 14:11:34 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j19mV-0002gl-Ne
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 14:11:25 +0000
Received: by mail-io1-xd43.google.com with SMTP id z8so7728998ioh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 06:11:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FX0VcA61hup+M1eG33dRqyta/5/xteIuWl8koiSPDi4=;
 b=G4uXB900exoea2ii7+OFpaGuRK0OPIwrn5b/qyL1D2Q9SXUY52mV/GbNkHjMPnchAM
 ph7SyUwqgpei3jx8lD4a2qYiY8mhLmqs3rciAPdjTSxjBZSlhSwL+K5ny5rILoVPrv3K
 J48MqqhzBHWtUo3Y0ytkyzGLqroOVBCzNr/sxerxfodFVtmee1wXpdhLvt3EBdk3LnPN
 3WT9oeSCayoMbkTRIdriomu+/UmKLxQ5ZKy7yrZbimr7zSx9r6ju33sS2XOZyJiYvUUs
 oP2DGX5M3gjG49im59BCr2dlcbr00eT7960geinWms86EIHtLSGo6OUV128LQvBM4LRW
 S1fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FX0VcA61hup+M1eG33dRqyta/5/xteIuWl8koiSPDi4=;
 b=ia/EeeOAWJQYdIqjQedhR15IZ7q9ngb5wiVTwzvy9yI2M9C8w1W0rs4QmM6sCDXD22
 I8bjzsXiwfLqVOFn+b8zkSG6Qp3fAQz4cD63YtNcZbB/mJC28PDVtSWCeA2MioTf3HIG
 L7gRh4Z4eZW8lIxeosD/EqLaM7u8klYYwZF4JK3Ox0UUjxe5j/uDIfXBbMTIU6JIJERr
 ZoatoJvi1uFyEINQIbFhpisVvpgvzrv+E8dECrEngP61TD7ABbRKLcM6zlX4M70C3lQK
 e5om/1ea6sa8SNjIC4S/TAIEBBdPPRsMCmiA/DnyY7bqGPR3ILOJUNW77Lw3VB4T/hbv
 /5ww==
X-Gm-Message-State: APjAAAWPhlfhFeDEOxwqzlFCoP2k5UYj4z8cVmLoBQaMYgKtv7gyO57E
 Bm0BqN+UnM6elGYGR6NypACc3GScjvJXwBYW7zwhvg==
X-Google-Smtp-Source: APXvYqwvxGWSdp4d4hKFIroc+x/DYVtfIyyldKkT3VpcOseZggDqKWwOctEN63TfW1gHDPo2n3ZDqZMJVhAWtbOk4dE=
X-Received: by 2002:a6b:f206:: with SMTP id q6mr9531130ioh.264.1581343878489; 
 Mon, 10 Feb 2020 06:11:18 -0800 (PST)
MIME-Version: 1.0
References: <20200206140140.GA18465@art_vandelay>
 <20200207152348.1.Ie0633018fc787dda6e869cae23df76ae30f2a686@changeid>
 <1581064499.590.0.camel@mtksdaap41> <1581303187.951.2.camel@mtksdaap41>
In-Reply-To: <1581303187.951.2.camel@mtksdaap41>
From: Sean Paul <sean@poorly.run>
Date: Mon, 10 Feb 2020 09:10:42 -0500
Message-ID: <CAMavQKLqr=a=WZKFfC2sEBcskjX+k-82a3V3XVk7LQLzpAMaBg@mail.gmail.com>
Subject: Re: [PATCH] drm/mediatek: Find the cursor plane instead of hard
 coding it
To: CK Hu <ck.hu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_061123_824695_E9557AFC 
X-CRM114-Status: GOOD (  19.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Evan Benn <evanbenn@chromium.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Feb 9, 2020 at 9:53 PM CK Hu <ck.hu@mediatek.com> wrote:
>
> Hi, Evan:
>
> On Fri, 2020-02-07 at 16:34 +0800, CK Hu wrote:
> > Hi, Evan:
> >
> > On Fri, 2020-02-07 at 15:23 +1100, Evan Benn wrote:
> > > The cursor and primary planes were hard coded.
> > > Now search for them for passing to drm_crtc_init_with_planes
> > >
> >
> > Reviewed-by: CK Hu <ck.hu@mediatek.com>
>
> Applied to mediatek-drm-fixes-5.6 [1], thanks.
>

Hi CK,
Thanks for picking this up. Before you send the pull, could you please
reverse the order of these 2 patches? Evan's should come before mine
to prevent a regression.

Sean

> [1]
> https://github.com/ckhu-mediatek/linux.git-tags/commits/mediatek-drm-fixes-5.6
>
> Regards,
> CK
>
> >
> > > Signed-off-by: Evan Benn <evanbenn@chromium.org>
> > > ---
> > >
> > >  drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 18 ++++++++++++------
> > >  1 file changed, 12 insertions(+), 6 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> > > index 7b392d6c71cc..935652990afa 100644
> > > --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> > > +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> > > @@ -658,10 +658,18 @@ static const struct drm_crtc_helper_funcs mtk_crtc_helper_funcs = {
> > >
> > >  static int mtk_drm_crtc_init(struct drm_device *drm,
> > >                          struct mtk_drm_crtc *mtk_crtc,
> > > -                        struct drm_plane *primary,
> > > -                        struct drm_plane *cursor, unsigned int pipe)
> > > +                        unsigned int pipe)
> > >  {
> > > -   int ret;
> > > +   struct drm_plane *primary = NULL;
> > > +   struct drm_plane *cursor = NULL;
> > > +   int i, ret;
> > > +
> > > +   for (i = 0; i < mtk_crtc->layer_nr; i++) {
> > > +           if (mtk_crtc->planes[i].type == DRM_PLANE_TYPE_PRIMARY)
> > > +                   primary = &mtk_crtc->planes[i];
> > > +           else if (mtk_crtc->planes[i].type == DRM_PLANE_TYPE_CURSOR)
> > > +                   cursor = &mtk_crtc->planes[i];
> > > +   }
> > >
> > >     ret = drm_crtc_init_with_planes(drm, &mtk_crtc->base, primary, cursor,
> > >                                     &mtk_crtc_funcs, NULL);
> > > @@ -830,9 +838,7 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
> > >                     return ret;
> > >     }
> > >
> > > -   ret = mtk_drm_crtc_init(drm_dev, mtk_crtc, &mtk_crtc->planes[0],
> > > -                           mtk_crtc->layer_nr > 1 ? &mtk_crtc->planes[1] :
> > > -                           NULL, pipe);
> > > +   ret = mtk_drm_crtc_init(drm_dev, mtk_crtc, pipe);
> > >     if (ret < 0)
> > >             return ret;
> > >
> >
>
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
