Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6158F16BC87
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 09:52:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ayrp9ZlBaJtAkTf1+dClm9LnPNu5I8WA2sk6Btt63zY=; b=lAI3HPHmLjfUe6
	YeEE5hRvTIlJOOSSPlg3wdnfjv143pSF562+mN0lzZ9/0AQDvqWJT03FAghTlJNYyVD8Ni1gdb16z
	79KWXca59h9k0vpBuiAHeLgk4wwxEIWAJq0E9VMPT4b1D+j0tbbbLXiNEp/7bBI1qEQrU1d3SAHyy
	vLnoZNh/IjU8cPymu9leaw/ohWD5rnDPdhcUpXitxKDT+0YyT5Jqq0VJSQmvOk09ClTSU/l0yEQVJ
	EuH1RK5UrBIkrjTyDGMSz7x8XnW/yqYsattTEark3uvx4LiBaSFIXl8zXSs0rQenkU1+qaTWisjs1
	uiKnOETomU4sfjgD1rlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6VxL-0001Re-Po; Tue, 25 Feb 2020 08:52:43 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6VxB-0001RA-Oe
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 08:52:35 +0000
Received: by mail-ed1-f67.google.com with SMTP id dc19so15310909edb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 00:52:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=K+2A/gft6LrFZSl1mPAmF46n0w4UjXc0APhIZ+UJahU=;
 b=uocEcLoyM3RsTBLUAjvu+FapLeJ71lssN7fTrEdWZj6MBrJavqpbUwx+TN9xVE1tas
 nBP5/S9Si3Ee2BV9UOw+nsvdo7bU+FD4mvKWtZNyWkxjU0c5SxCOrlFQRX4wzvpPUuSa
 F8kOTAp9PDqiCHx5RG5Q1Q6YfaaCrtXBKSG3TVUoNtBZYqV+ysCCvdYLw6ZaiTxtVCXU
 lYPypi1js+B6CKpwd8daD66aRZvG+9FZzNNNHXKFLzr/F/sZ4GjixjVgk5QEWT7m7Y8D
 UK1pg5Pef/0Sb4ybfh2ZDjnAAyMSAYBkavKXeEzwWERk7Dppineorr/uCwj5WQqhW0rC
 iFvg==
X-Gm-Message-State: APjAAAVbZ6fWfHoN/SFDCotKFGyLeY5n2a7kzToM9APVm5y+9mbN7nOj
 2veTEWtRpn3wctJ5wWp7mku4rJzJkU0=
X-Google-Smtp-Source: APXvYqzIcTNlC8CGZdXRhCbwjPswfwmgROQnLqLIp3KkU7xoXU0QCyNPH2OGMgz51iEpMsWt4blzxg==
X-Received: by 2002:a05:6402:b3a:: with SMTP id
 bo26mr49113526edb.242.1582620751245; 
 Tue, 25 Feb 2020 00:52:31 -0800 (PST)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com.
 [209.85.221.42])
 by smtp.gmail.com with ESMTPSA id n14sm893841ejx.11.2020.02.25.00.52.30
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 25 Feb 2020 00:52:31 -0800 (PST)
Received: by mail-wr1-f42.google.com with SMTP id m16so13636758wrx.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 00:52:30 -0800 (PST)
X-Received: by 2002:a5d:604a:: with SMTP id j10mr5439322wrt.181.1582620750522; 
 Tue, 25 Feb 2020 00:52:30 -0800 (PST)
MIME-Version: 1.0
References: <20200224173901.174016-1-jernej.skrabec@siol.net>
 <20200224173901.174016-7-jernej.skrabec@siol.net>
 <20200225083448.6upblnctjjrbarje@gilmour.lan>
In-Reply-To: <20200225083448.6upblnctjjrbarje@gilmour.lan>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 25 Feb 2020 16:52:18 +0800
X-Gmail-Original-Message-ID: <CAGb2v64g7Q4e+ic08pA7tbamgToOjyYzuzqP0bpqBZjRuRUrPA@mail.gmail.com>
Message-ID: <CAGb2v64g7Q4e+ic08pA7tbamgToOjyYzuzqP0bpqBZjRuRUrPA@mail.gmail.com>
Subject: Re: [PATCH 6/7] drm/sun4i: de2: Don't return de2_fmt_info struct
To: Maxime Ripard <maxime@cerno.tech>, Jernej Skrabec <jernej.skrabec@siol.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_005233_801078_4CB41596 
X-CRM114-Status: GOOD (  24.50  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wens213[at]gmail.com]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: David Airlie <airlied@linux.ie>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 25, 2020 at 4:35 PM Maxime Ripard <maxime@cerno.tech> wrote:
>
> Hi,
>
> On Mon, Feb 24, 2020 at 06:39:00PM +0100, Jernej Skrabec wrote:
> > Now that de2_fmt_info contains only DRM <-> HW format mapping, it
> > doesn't make sense to return pointer to structure when searching by DRM
> > format. Rework that to return only HW format instead.
> >
> > This doesn't make any functional change.
> >
> > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > ---
> >  drivers/gpu/drm/sun4i/sun8i_mixer.c    | 15 +++++++++++----
> >  drivers/gpu/drm/sun4i/sun8i_mixer.h    |  7 +------
> >  drivers/gpu/drm/sun4i/sun8i_ui_layer.c | 10 +++++-----
> >  drivers/gpu/drm/sun4i/sun8i_vi_layer.c | 12 ++++++------
> >  4 files changed, 23 insertions(+), 21 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/sun4i/sun8i_mixer.c b/drivers/gpu/drm/sun4i/sun8i_mixer.c
> > index e078ec96de2d..56cc037fd312 100644
> > --- a/drivers/gpu/drm/sun4i/sun8i_mixer.c
> > +++ b/drivers/gpu/drm/sun4i/sun8i_mixer.c
> > @@ -27,6 +27,11 @@
> >  #include "sun8i_vi_layer.h"
> >  #include "sunxi_engine.h"
> >
> > +struct de2_fmt_info {
> > +     u32     drm_fmt;
> > +     u32     de2_fmt;
> > +};
> > +
> >  static const struct de2_fmt_info de2_formats[] = {
> >       {
> >               .drm_fmt = DRM_FORMAT_ARGB8888,
> > @@ -230,15 +235,17 @@ static const struct de2_fmt_info de2_formats[] = {
> >       },
> >  };
> >
> > -const struct de2_fmt_info *sun8i_mixer_format_info(u32 format)
> > +int sun8i_mixer_drm_format_to_hw(u32 format, u32 *hw_format)
> >  {
> >       unsigned int i;
> >
> >       for (i = 0; i < ARRAY_SIZE(de2_formats); ++i)
> > -             if (de2_formats[i].drm_fmt == format)
> > -                     return &de2_formats[i];
> > +             if (de2_formats[i].drm_fmt == format) {
> > +                     *hw_format = de2_formats[i].de2_fmt;
> > +                     return 0;
> > +             }
> >
> > -     return NULL;
> > +     return -EINVAL;
> >  }
>
> I'm not too sure about that one. It breaks the consistency with the
> other functions, and I don't really see a particular benefit to it?

I guess we could just define an "invalid" value, and have the function
return that if can't find a match? I'm guessing 0x0 is valid, so maybe
0xffffffff or 0xdeadbeef ?

That would keep consistency with everything else all the while
removing the level of indirection you wanted to.

ChenYu


> The rest of the series is
> Acked-by: Maxime Ripard <mripard@kernel.org>
>
> Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
