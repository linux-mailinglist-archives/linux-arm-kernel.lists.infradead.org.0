Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA007698A2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 17:56:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FSksB2lg4uiU1227JaUpH9UAXJiUxYvJ+8c53QcMMwk=; b=dl5sq3u0Q2CLCF
	0qcRiuR0yL6fhKgm+FAdtD/dyz0t4zVIuk6ENZD7GwvGmZS6kDdBF1ROnnXe2gdJKR2RFi6gZffwv
	UCiqu0UmdD/iIjNJXvE5wAwoh5ZVubS6eOKJhQ41Crl0vK4r6STb20w73fmTtLESzM33mTvT8UMjJ
	+VqBoEMy0nCsqcS3GvQPmWOpTlNQ/3mRBw7xywiRYyuIler+6Si2AM55VdUvjB5Fm1WrlmUIlqUWd
	slrEZ1HhgMliV5w2A+mdMDykMhC0Cf+2teN21j//9lu4d15qEuyLmFUqek5Cu1Ne9+xEDlzZFDryV
	SiT35+EzRl13A/oqCYiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn3LN-0006oh-46; Mon, 15 Jul 2019 15:56:49 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn3LA-0006mv-HT
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 15:56:37 +0000
Received: by mail-ot1-x341.google.com with SMTP id r21so11471286otq.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 08:56:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BxdnANqifDB1z1Ih8rPgPPFQ52+wPGcxB0Lct34ID5Q=;
 b=SA30rmEvAAB/UeWM0cJpboyXWomGji7I7a5x3X8IC2z8RDCcu48fRpx3oXaTPieM78
 hMUBvyfACXuvhVyl7122TsYzmlo3PSQz9JgHl3IzAfFzF4LUSFpBOVOTOS1B1L4yygl7
 QOOGtMtHFpJt8B1LZKpTsfOdvejMLuCIDQCalifs34k7ukv+KzyMS3/rAXEkr2VMjwP1
 SBtlOVlmpKFktDXSl32r68WJn6RZP964o2hS1wrBNhCu42BpzNeAZYsIqnpYlDH19pdT
 IooGaAqomRnAwqqNrb8iHZz4u/RbyBz6uQU3gz+bKjgxr0xq0hFlSy/JRzbwLlHSQ+Nf
 EO5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BxdnANqifDB1z1Ih8rPgPPFQ52+wPGcxB0Lct34ID5Q=;
 b=pexKT2tqBcKyszv8p3G7ReWbrdfWDnWdUohmL/Vz8OwzQswEnlhRzv/AwG4hcspkB3
 OF/g/lk1ATVJ05vj4m8SOl6Kfv5BpU1hlW2w5nuXhPBqU5dU/tOyWlAfFF+VhVmLoMP7
 NNqDU53eCatk2ax6+zCRzNbGEiHURty9qxUE4bX3jQ4CHAjtvQ17SnBofwPFQg40pk5m
 tz8Di1d/4LkPVGSc6MDnayAgP+SdxHUwYu+rarApp5XeRdJd3/4pa3GoTxLvIkuS4ujW
 JZtCvtq+UMAg2tcxPSWAo01PineMryqQyEHnYcPFS5Z3OHSl6f3huoIAu44ynGz5GJ5i
 NHpA==
X-Gm-Message-State: APjAAAU8gvHuN7ajud8ftvi+7MSMzraNI2VK2epJjo3EVMEpQriFKSFZ
 k2rUjbyysYI/e+ttjlIBKzvpVxCr608BTtT7jQfIpQ==
X-Google-Smtp-Source: APXvYqwsZvLcK5LidkOK7j4XvKdYHFQb2nVh/AtXUYin5kr5W0WlZFyIM9UGzPAW85pcfSoyZbDk7ZxnfK/q+cptnb0=
X-Received: by 2002:a05:6830:1cd:: with SMTP id
 r13mr8619272ota.99.1563206191242; 
 Mon, 15 Jul 2019 08:56:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190712100443.221322-1-cychiang@chromium.org>
 <20190712100443.221322-2-cychiang@chromium.org>
 <20190712105745.xr7jxc626lwoaajx@shell.armlinux.org.uk>
In-Reply-To: <20190712105745.xr7jxc626lwoaajx@shell.armlinux.org.uk>
From: Tzung-Bi Shih <tzungbi@google.com>
Date: Mon, 15 Jul 2019 23:56:19 +0800
Message-ID: <CA+Px+wWbmUemETY3OMk1T9XS2w8ZXvZUhVEGzw_w6AxtU8R0rw@mail.gmail.com>
Subject: Re: [PATCH v3 1/5] ASoC: hdmi-codec: Add an op to set callback
 function for plug event
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_085636_590075_41C283B7 
X-CRM114-Status: GOOD (  19.57  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: ALSA development <alsa-devel@alsa-project.org>, tzungbi@chromium.org,
 Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>,
 David Airlie <airlied@linux.ie>, Mark Brown <broonie@kernel.org>,
 Takashi Iwai <tiwai@suse.com>, Douglas Anderson <dianders@chromium.org>,
 dri-devel@lists.freedesktop.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, linux-rockchip@lists.infradead.org,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, dgreid@chromium.org,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org,
 Cheng-Yi Chiang <cychiang@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 12, 2019 at 6:58 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Fri, Jul 12, 2019 at 06:04:39PM +0800, Cheng-Yi Chiang wrote:
> > Add an op in hdmi_codec_ops so codec driver can register callback
> > function to handle plug event.
> >
> > Driver in DRM can use this callback function to report connector status.
> >
> > Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
> > ---
> >  include/sound/hdmi-codec.h    | 16 +++++++++++++
> >  sound/soc/codecs/hdmi-codec.c | 45 +++++++++++++++++++++++++++++++++++
> >  2 files changed, 61 insertions(+)
> >
> > diff --git a/include/sound/hdmi-codec.h b/include/sound/hdmi-codec.h
> > index 7fea496f1f34..9a8661680256 100644
> > --- a/include/sound/hdmi-codec.h
> > +++ b/include/sound/hdmi-codec.h
> > @@ -47,6 +47,9 @@ struct hdmi_codec_params {
> >       int channels;
> >  };
> >
> > +typedef void (*hdmi_codec_plugged_cb)(struct device *dev,
> > +                                   bool plugged);
> > +
>
> I'd like to pose a question for people to think about.
>
> Firstly, typedefs are generally shunned in the kernel.  However, for
> these cases it seems to make sense.
>
> However, should the "pointer"-ness be part of the typedef or not?  To
> see what I mean, consider:
>
>         typedef void (*hdmi_foo)(void);
>
>         int register_foo(hdmi_foo foo);
>
> vs
>
>         typedef void hdmi_foo(void);
>
>         int register_foo(hdmi_foo *foo);
>
> which is more in keeping with how we code non-typedef'd code - it's
> obvious that foo is a pointer while reading the code.
I have a different opinion.  Its suffix "_cb" self-described it is a
callback function.  Since function and function pointer are equivalent
in the language, I think we don't need to emphasize that it is a
function "pointer".


> It seems to me that the latter better matches what is in the kernel's
> coding style, which states:
>
>   In general, a pointer, or a struct that has elements that can
>   reasonably be directly accessed should **never** be a typedef.
>
> or maybe Documentation/process/coding-style.rst needs updating?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
