Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EBF1CE289
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 15:04:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bz+5gIEZO7p+P7HBxGaWLsUuCg1GFiNudNqaInDUbU0=; b=ZX4tnCPEKekaf/
	WuJtEKZslDAVwACNkaC1gJXdLwZRMNOl+XWOPXGZAgmlpyHASv/Rw3Ola9PZo0LIG/sPFvjbPh5Vk
	vMaOnf25sgXSYBeIhOHnNdN8JNqlMXxqhnIKzD3YupmWS+95ZfzxUB6CAae3gaT8P5+lx1CQVKSNv
	zaHERyzTdUNbfFivgZA4geBEXtDm6LGcR5ZD/cBwfWTvjKrMVb3nNLRxros/eN+I6YFs414cfe13k
	0RhQ5HF+qE/ovFM1PJFwbXKqi7mlvueWmkrKK3gbknlglJ6X88iG3E8jf8tCkGTo32PYmxWv8GKu3
	k7SAA2XQeOPDkh+MRZYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHSg4-0003Hq-8Z; Mon, 07 Oct 2019 13:03:52 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHSfu-0003Fu-91
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 13:03:43 +0000
Received: by mail-ua1-x944.google.com with SMTP id n63so4010745uan.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 07 Oct 2019 06:03:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ds8WznLX+NYi3ptkiUX0OCakAHSXETW90blbf1WdtvY=;
 b=SeFZrK8gMg6fY4PxMOK0NPAoUBk5SKZP6Rm2RpMc1sRZKgJg2NDDLR9yH+ZTkFrojb
 ECECpc6XwZXZYWrLpY3dkrOp1pLvCwRPEB3LV/Opy8prDkyQaXBI+0Em6seuvBwIpUf3
 WSFX4glUQS905Oi7/4W2htI0p1s5RzgKNERk4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ds8WznLX+NYi3ptkiUX0OCakAHSXETW90blbf1WdtvY=;
 b=A9semYQz5VkavrzXq4q7bdr+K+Pd8Gb2uY8ZlWrYsTuRF+r21K89XQ9NR1g4qYas08
 0r19ZBi7QaLWPfC6wDWAd9P249M/tvVO3s8zd1M8OB+cb6SuczmsrN5YQOzTJfkHrVN4
 b5Ak0PhsfuAM4HEXFvmfqT3brgT+AU0meJkTDwmIUwf4VJ5tz6Ekc5gVnsjKMRtQIvjK
 wKdPLC7okPL6gzRYMsaXi6yM4IUIC6lr5XsKkhn3W+MDh4zpVcIy2vSBhW4dlLbek6/L
 ik+vj8K1FzPvNqZQfu+OYwFfae94L99v8J4XzWwmJ6VPKgiQ/ZaiAOnPHpA2RNP4UM9X
 6rNw==
X-Gm-Message-State: APjAAAUP7kFOz8tjaL47R7635IbZstbZjQ7aWO+nE8wZzzUBnLFJ4vdz
 kkIj+FWkrKGHKhfOy9kiNlUpFnfREc21p9Ke/FnHlA==
X-Google-Smtp-Source: APXvYqyXRPLlM1sC+Qh9Y+U2YnUrT41/QnuLEzazUmqup77OPEOS8gKvErJCG8qbHkr6M+W+SZdp07y4EAEUpxg6cwg=
X-Received: by 2002:a9f:2924:: with SMTP id t33mr11661088uat.69.1570453416905; 
 Mon, 07 Oct 2019 06:03:36 -0700 (PDT)
MIME-Version: 1.0
References: <20191003041438.194224-1-cychiang@chromium.org>
 <b8ad03db-b93f-44e0-ccd6-fc8bda1af223@baylibre.com>
In-Reply-To: <b8ad03db-b93f-44e0-ccd6-fc8bda1af223@baylibre.com>
From: Cheng-yi Chiang <cychiang@chromium.org>
Date: Mon, 7 Oct 2019 21:03:10 +0800
Message-ID: <CAFv8Nw+xfqzKC+x9m-Zd-dmPNayXxqTCeo8JsO7pQn8Uk1Ybsw@mail.gmail.com>
Subject: Re: [PATCH v2 RESEND] drm/bridge: dw-hdmi: Restore audio when setting
 a mode
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_060342_342214_6B2A9F0C 
X-CRM114-Status: GOOD (  24.62  )
X-Spam-Score: -7.4 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>,
 Doug Anderson <dianders@chromium.org>,
 "moderated list:SOUND - SOC LAYER / DYNAMIC AUDIO POWER MANAGEM..."
 <alsa-devel@alsa-project.org>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Tzung-Bi Shih <tzungbi@chromium.org>, Jaroslav Kysela <perex@perex.cz>,
 Hans Verkuil <hverkuil@xs4all.nl>, linux-rockchip@lists.infradead.org,
 Russell King <rmk+kernel@armlinux.org.uk>, Mark Brown <broonie@kernel.org>,
 dri-devel@lists.freedesktop.org, Daniel Kurtz <djkurtz@chromium.org>,
 Yakir Yang <ykk@rock-chips.com>, Dylan Reid <dgreid@chromium.org>,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 7, 2019 at 7:57 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Hi,
>
> On 03/10/2019 06:14, Cheng-Yi Chiang wrote:
> > From: Daniel Kurtz <djkurtz@chromium.org>
> >
> > When setting a new display mode, dw_hdmi_setup() calls
> > dw_hdmi_enable_video_path(), which disables all hdmi clocks, including
> > the audio clock.
> >
> > We should only (re-)enable the audio clock if audio was already enabled
> > when setting the new mode.
> >
> > Without this patch, on RK3288, there will be HDMI audio on some monitors
> > if i2s was played to headphone when the monitor was plugged.
> > ACER H277HU and ASUS PB278 are two of the monitors showing this issue.
> >
> > Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
> > Signed-off-by: Daniel Kurtz <djkurtz@chromium.org>
> > Signed-off-by: Yakir Yang <ykk@rock-chips.com>
> > ---
> >  Change from v1 to v2:
> >   - Use audio_lock to protect audio clock.
> >   - Fix the patch title.
> >
> >  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 13 ++++++++++++-
> >  1 file changed, 12 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> > index aa7efd4da1c8..749d8e4c535b 100644
> > --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> > +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> > @@ -1982,6 +1982,17 @@ static void hdmi_disable_overflow_interrupts(struct dw_hdmi *hdmi)
> >                   HDMI_IH_MUTE_FC_STAT2);
> >  }
> >
> > +static void dw_hdmi_audio_restore(struct dw_hdmi *hdmi)
> > +{
> > +     unsigned long flags;
> > +
> > +     spin_lock_irqsave(&hdmi->audio_lock, flags);
> > +
> > +     hdmi_enable_audio_clk(hdmi, hdmi->audio_enable);
> > +
> > +     spin_unlock_irqrestore(&hdmi->audio_lock, flags);
>
> Dumb question, why is this protected by a spinlock ?
>
> Neil
>

Hi Neil,
Thanks for the review.
Good catch. I found that the spinlock audio_lock was introduced in

b90120a96608 drm: bridge/dw_hdmi: introduce interfaces to enable and
disable audio

to protect N/CTS value.
Actually it was not used to protect audio clock.
So we don't need this spinlock.

Hi Daniel Kurtz,
If this rings any bell in your memory as for why this is protected,
please let me know.
I would like to remove this spinlock and simplify this patch in v3.

Thanks!


> > +}
> > +
> >  static int dw_hdmi_setup(struct dw_hdmi *hdmi, struct drm_display_mode *mode)
> >  {
> >       int ret;
> > @@ -2045,7 +2056,7 @@ static int dw_hdmi_setup(struct dw_hdmi *hdmi, struct drm_display_mode *mode)
> >
> >               /* HDMI Initialization Step E - Configure audio */
> >               hdmi_clk_regenerator_update_pixel_clock(hdmi);
> > -             hdmi_enable_audio_clk(hdmi, true);
> > +             dw_hdmi_audio_restore(hdmi);
> >       }
> >
> >       /* not for DVI mode */
> >
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
