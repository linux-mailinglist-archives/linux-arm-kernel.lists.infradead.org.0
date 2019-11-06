Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 049DAF18F7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 15:43:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NdA5qJCyVgGw7kwuid3vwk4r6F05jvRRfJxho/yUC6E=; b=BlwKZRid2UvlZY
	kdvcuLyi36P9s0tC7crxp3bm3H68REUM2jn+GtECd41IE1RWQsg1lYRZ7zhpAlDC7DkyTkmygkh/Z
	XSA2dW+zaG0lgMGDjrkglnmMCnIPaSdoWu41mnkZr7UzlfhWpvfQqE7bK/d+YDyBbAZ5iYk33jBcP
	9lstdIBAk63ptjawd9b7XnYYts2PRFMF6TRyfqlVx9JcUG52nM/AFM5vE8kirP3Gjpl0FtggUPm17
	fWAJNA7fEljdEvk7wJjLYBs3+vJ9515ASkhWJuwZKQhBISN+pLV1hCIBdWkkXk88tuxcKPwjtfwJf
	f4ZzD3HTzt2TIeivjCjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSMWl-0007Uh-VM; Wed, 06 Nov 2019 14:43:19 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSMWZ-0007Rp-Lr
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 14:43:10 +0000
Received: by mail-il1-x144.google.com with SMTP id m16so21950669iln.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 06:43:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UgbtTe5dfKDfjSAPPMs/EABl+5bwJ2fJ35WEQgISza0=;
 b=DJ7GRoQwtoJVvxh25wjbOVxrGXKnOfZUfCfrccd998QNYDbeEbmI9jR+5Yf1CUA4MI
 U91L4xMXytJAtCx+r6/SK7Wc7mC5bpryeamAr+BD28yJ/ss41ilPO0FBhsBdc8NNwHTO
 pI6ajBoiiX1590yszT2CLjXcxRFL1BcAEK09Wr/xHZphiCaetD8mNRraZB0dInanLbeJ
 7EzcAgk3/SvyIkRdH+o0e93JbZzUC0KgRFYNXsQmNZUC3dr85fE5jSgX+rrKafPlo2qG
 beuQ/XbnZb8Rmo2s3OpSGsIBVGMvdCnCJgt7toEGxv518Hqq+sC7Avs9oZ3aZpaRDC/I
 rzEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UgbtTe5dfKDfjSAPPMs/EABl+5bwJ2fJ35WEQgISza0=;
 b=TCqOTeBwTRKqm3ba1rx4bE1SkUfOuz5jG0wyDU6GVuJp0MxgcNM6qhcXKQjxWFSerB
 /z4U8p2PAB14+pujDFZXEA9bCA5ysmZruTAGNYymECR/e4TrM133LQwJFnx+jOiTGcon
 XCphdFfSyI2QyKJeB40bX1+rKRVBeV01UnlEuQsG+oNig792QDkjF0KQbxXXfXJAex6B
 u1X69ZM0JKJGPPzECNVW7k09Wm+/KGu+RDzI6vMyqTsM17Mg4D6h3wPBb3T7bKEafqB5
 nPhkv6ZrV+FL9IeP4DmUkJmtcTSxrvNadLYA/JvEQjSTtN2g+7hguuccHPjXqhhQwtEg
 RMHw==
X-Gm-Message-State: APjAAAWUdg8RuWxLBQ4eE1hKYitHVNfkeMkTvsxn7D7FK6/3TgdjZnaL
 Anl7cAJjnNB1KjPcx92pAyjMz5pibR334OvFFSQcQw==
X-Google-Smtp-Source: APXvYqxrvorcUxqto/zT7qnrJ74yhghH4wbgzwgyazlJSpgoqiDGrdIhp+fcXb3osgPdsezRxHND7qjelFPlg9cKvkY=
X-Received: by 2002:a92:c152:: with SMTP id b18mr3052785ilh.71.1573051386198; 
 Wed, 06 Nov 2019 06:43:06 -0800 (PST)
MIME-Version: 1.0
References: <20191105211034.123937-1-sean@poorly.run>
 <20191105211034.123937-8-sean@poorly.run>
 <1573031243.15410.2.camel@mtksdaap41>
In-Reply-To: <1573031243.15410.2.camel@mtksdaap41>
From: Sean Paul <sean@poorly.run>
Date: Wed, 6 Nov 2019 09:42:30 -0500
Message-ID: <CAMavQKJ+_+fytidjp4WvMwSrytJO_aU+57a54h1ACAqPHp3e7A@mail.gmail.com>
Subject: Re: [PATCH v2 7/7] drm/mediatek: Support 180 degree rotation
To: CK Hu <ck.hu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_064307_779622_B0859DE9 
X-CRM114-Status: GOOD (  20.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Daniele Castagna <dcastagna@chromium.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Fritz Koenig <frkoenig@chromium.org>, Miguel Casas <mcasas@chromium.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sean Paul <seanpaul@chromium.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mark Yacoub <markyacoub@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 6, 2019 at 4:07 AM CK Hu <ck.hu@mediatek.com> wrote:
>
> Hi, Sean:
>
> On Tue, 2019-11-05 at 16:10 -0500, Sean Paul wrote:
> > From: Sean Paul <seanpaul@chromium.org>
> >
> > Now that we support both reflections, we can expose 180 degree rotation
> > and rely on the simplify routine to convert that into REFLECT_X |
> > REFLECT_Y
> >
>
> Patch 1 ~ 6 of this series looks good to me.
> For this one, I think the rotation check in mtk_ovl_layer_check() should
> be modified.
>

Thanks for the quick reviews, CK!

In what way would you like the check to be modified? I'm guessing
you're asking that I add it to the bitmask passed to the
simplify_rotation function?

If that's the case, we don't actually want to modify the
simplify_rotation bitmask since that bitmask is supposed to be only
the rotations that the hardware can achieve. So if you pass ROTATE_180
into simplify_rotation, it will return REFLECT_X | REFLECT_Y, which is
what we want. Does that make sense, or am I missing something?

Thanks,

Sean

> Regards,
> CK
>
> > Signed-off-by: Sean Paul <seanpaul@chromium.org>
> > ---
> >  drivers/gpu/drm/mediatek/mtk_disp_ovl.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> > index f4c4d3fedc5f..4a55bb6e2213 100644
> > --- a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> > +++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> > @@ -143,8 +143,8 @@ static unsigned int mtk_ovl_layer_nr(struct mtk_ddp_comp *comp)
> >
> >  static unsigned int mtk_ovl_supported_rotations(struct mtk_ddp_comp *comp)
> >  {
> > -     return DRM_MODE_ROTATE_0 | DRM_MODE_REFLECT_Y |
> > -            DRM_MODE_REFLECT_X;
> > +     return DRM_MODE_ROTATE_0 | DRM_MODE_ROTATE_180 |
> > +            DRM_MODE_REFLECT_X | DRM_MODE_REFLECT_Y;
> >  }
> >
> >  static int mtk_ovl_layer_check(struct mtk_ddp_comp *comp, unsigned int idx,
>
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
