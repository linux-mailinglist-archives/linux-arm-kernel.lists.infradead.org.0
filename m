Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E18E16EE5F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 19:50:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=57wQBoUbfQjinN6BQ9RTuhQ5EeDhblDcTq+R+rz1Va8=; b=A/9e/BwLsbukhj
	nSJ36TRu9GInzAxSKR24QiQi9DZNu7jJ65ilk4M/rx5ag5pH+XWjFAI0Ds3WxLLuZ27uOYAjPwZE+
	I9U/GGoJUYK8JobW8Nrae4PBm5zGpO94yUx8aCCDoI54SKksb1v/rOHNb1IFZf9PskmdK0gnYGHty
	6kKGJy5av71mH0Oz0RmVoW7c/Gfu52VmGYYuioy9BofkXslQwy4JReserm+orvWnBB4P7YhMcUF7Z
	ANZNgdLxH6Pluz1oh4A0F1MPvgvuZPX/6qhptIMsJWmMYHc1+OTYa1hUpu7WAbI4AfI5HjcnuB8Sr
	mMPqouBCEQyBV9VmHAVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6fHl-00086H-MU; Tue, 25 Feb 2020 18:50:25 +0000
Received: from mailoutvs48.siol.net ([185.57.226.239] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6fHc-00084I-Dr
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 18:50:18 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 98BFF524A96;
 Tue, 25 Feb 2020 19:50:06 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id OIDBOTbewRWl; Tue, 25 Feb 2020 19:50:06 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 2F4BF524A94;
 Tue, 25 Feb 2020 19:50:06 +0100 (CET)
Received: from jernej-laptop.localnet (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id 93601524A8B;
 Tue, 25 Feb 2020 19:50:03 +0100 (CET)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Maxime Ripard <maxime@cerno.tech>, Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH 6/7] drm/sun4i: de2: Don't return de2_fmt_info struct
Date: Tue, 25 Feb 2020 19:50:03 +0100
Message-ID: <12462592.uLZWGnKmhe@jernej-laptop>
In-Reply-To: <CAGb2v64g7Q4e+ic08pA7tbamgToOjyYzuzqP0bpqBZjRuRUrPA@mail.gmail.com>
References: <20200224173901.174016-1-jernej.skrabec@siol.net>
 <20200225083448.6upblnctjjrbarje@gilmour.lan>
 <CAGb2v64g7Q4e+ic08pA7tbamgToOjyYzuzqP0bpqBZjRuRUrPA@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_105016_625395_9EEC6BBD 
X-CRM114-Status: GOOD (  24.40  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.239 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Hi!

Dne torek, 25. februar 2020 ob 09:52:18 CET je Chen-Yu Tsai napisal(a):
> On Tue, Feb 25, 2020 at 4:35 PM Maxime Ripard <maxime@cerno.tech> wrote:
> > Hi,
> > 
> > On Mon, Feb 24, 2020 at 06:39:00PM +0100, Jernej Skrabec wrote:
> > > Now that de2_fmt_info contains only DRM <-> HW format mapping, it
> > > doesn't make sense to return pointer to structure when searching by DRM
> > > format. Rework that to return only HW format instead.
> > > 
> > > This doesn't make any functional change.
> > > 
> > > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > > ---
> > > 
> > >  drivers/gpu/drm/sun4i/sun8i_mixer.c    | 15 +++++++++++----
> > >  drivers/gpu/drm/sun4i/sun8i_mixer.h    |  7 +------
> > >  drivers/gpu/drm/sun4i/sun8i_ui_layer.c | 10 +++++-----
> > >  drivers/gpu/drm/sun4i/sun8i_vi_layer.c | 12 ++++++------
> > >  4 files changed, 23 insertions(+), 21 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/sun4i/sun8i_mixer.c
> > > b/drivers/gpu/drm/sun4i/sun8i_mixer.c index e078ec96de2d..56cc037fd312
> > > 100644
> > > --- a/drivers/gpu/drm/sun4i/sun8i_mixer.c
> > > +++ b/drivers/gpu/drm/sun4i/sun8i_mixer.c
> > > @@ -27,6 +27,11 @@
> > > 
> > >  #include "sun8i_vi_layer.h"
> > >  #include "sunxi_engine.h"
> > > 
> > > +struct de2_fmt_info {
> > > +     u32     drm_fmt;
> > > +     u32     de2_fmt;
> > > +};
> > > +
> > > 
> > >  static const struct de2_fmt_info de2_formats[] = {
> > >  
> > >       {
> > >       
> > >               .drm_fmt = DRM_FORMAT_ARGB8888,
> > > 
> > > @@ -230,15 +235,17 @@ static const struct de2_fmt_info de2_formats[] = {
> > > 
> > >       },
> > >  
> > >  };
> > > 
> > > -const struct de2_fmt_info *sun8i_mixer_format_info(u32 format)
> > > +int sun8i_mixer_drm_format_to_hw(u32 format, u32 *hw_format)
> > > 
> > >  {
> > >  
> > >       unsigned int i;
> > >       
> > >       for (i = 0; i < ARRAY_SIZE(de2_formats); ++i)
> > > 
> > > -             if (de2_formats[i].drm_fmt == format)
> > > -                     return &de2_formats[i];
> > > +             if (de2_formats[i].drm_fmt == format) {
> > > +                     *hw_format = de2_formats[i].de2_fmt;
> > > +                     return 0;
> > > +             }
> > > 
> > > -     return NULL;
> > > +     return -EINVAL;
> > > 
> > >  }
> > 
> > I'm not too sure about that one. It breaks the consistency with the
> > other functions, and I don't really see a particular benefit to it?
> 

I don't have strong opinion about this patch. It can be dropped.

> I guess we could just define an "invalid" value, and have the function
> return that if can't find a match? I'm guessing 0x0 is valid, so maybe
> 0xffffffff or 0xdeadbeef ?
> 
> That would keep consistency with everything else all the while
> removing the level of indirection you wanted to.

I modeled this after 
static int sun4i_backend_drm_format_to_layer(u32 format, u32 *mode);
from sun4i_backend.c.

What consistency do you have in mind?

> 
> ChenYu
> 
> > The rest of the series is
> > Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks!

Best regards,
Jernej

> > 
> > Maxime





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
