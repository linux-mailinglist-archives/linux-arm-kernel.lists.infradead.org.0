Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CF076B7EB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 10:14:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gn/Wd4HSfrATR482d01KMIBMPsANhnmzRNKShmK5eoA=; b=GeY7z9YfG+4klv
	WO/M9cLbeuVCEbRbZ88BOF7ChhKhlWNNDlGkaM7pZUZpXeva3sGzFY9wK45OT4svivayugp8kFO46
	ZSzbgFIxj5PwbAB9E9naEWXrdvZ200bu3lEI+UJZOXfwtiy3onQXi45jx7ehF6AGDuIuJo7oUoFkj
	pIR/cDPfs6xftE1Pzkv41nw72Z99XGNlRJuWHaMYN2Szyt33IaYyAVQEEByykhoIBIzhVpNOfEYdC
	Z0dVBTTJ5W7m/C4U3Z0EYehQXHwLY5ArI4c9uZRcx4pPLUperhJgjPeWGO1qiNNDhjuPQEcwmBdI+
	JeNXzdRbYL/hHyovM5aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnf4s-0000hn-JA; Wed, 17 Jul 2019 08:14:18 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnf4d-0000h5-AB
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 08:14:04 +0000
Received: by mail-vs1-xe44.google.com with SMTP id v129so15822066vsb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 01:14:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mOxb5tg5seSjtQqIorgKM+Di7ixuS6uqfAgdFu5RpzA=;
 b=G9skQ3aRbgwXpozrH+1DO97KndwvPNLHeERqMmQDZWWaONNCADEoaOMvPkA0sFj53o
 phoK8JUmNVcvN1zKr+0kawyF+mSilxU7i4gtAoMto3xyO9TQG5uMPuI/UfH3wukUoDOc
 j6XhR7QyCsO7y931Q57UTyK2rbsj1P5my0hS0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mOxb5tg5seSjtQqIorgKM+Di7ixuS6uqfAgdFu5RpzA=;
 b=Adu4zA1D5R4/TjN19fX6odKjAqv0jD04atE90YnyL3Q15sPFu/catrfjTIScIiGHKP
 V8KPLzRLyq4MTmmEAolDvyYxqQbGijsm5gt6Oi5WIU+Kn1mqCyif5IoRRid3xqFi+xHx
 fwP7daZF+BNj2yTQWQKxUhDkZjmYD1BYt/icVlosLH5LlQVI/1U7q/OGVAtBvnNfqa79
 hglnj5D9L28hQkJA5qhp1zSZfb/ozc7tlU8vPgaU0aMD/PEooQqteuMpdbazLIxOr+UU
 z60cm77RWAl914WlJP8Oxdq6VyVEsE9ogQYnH0+L043WOM+5k2j1oXEbBJb+pk63swq3
 mPjg==
X-Gm-Message-State: APjAAAUdm4Hd5nyf82WFsH9AR2jePXejh2Z2RwtccTvsfCtHdIpNd2pn
 ZQzw+1cFKodhGwxFK5MXUV1dhxd6MpVArA59bqmkIQ==
X-Google-Smtp-Source: APXvYqwumLX15i5KhdhsUxIfW0Chce/ceicYE3QuO3Xntx39jQED40S5LxMsWwDhbGTmvCiWV49cMhif6dAhO+pZRnI=
X-Received: by 2002:a67:eb12:: with SMTP id a18mr1522512vso.119.1563351241789; 
 Wed, 17 Jul 2019 01:14:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190716115725.66558-1-cychiang@chromium.org>
 <20190716115725.66558-6-cychiang@chromium.org>
 <CA+Px+wXK9gJKZwzsG8BXh1gmoEyscxtMzB_VCrHz-nenBEL9AQ@mail.gmail.com>
In-Reply-To: <CA+Px+wXK9gJKZwzsG8BXh1gmoEyscxtMzB_VCrHz-nenBEL9AQ@mail.gmail.com>
From: Cheng-yi Chiang <cychiang@chromium.org>
Date: Wed, 17 Jul 2019 16:13:35 +0800
Message-ID: <CAFv8NwKJ4SEbN34EyS7wA33z9+bCCM2mzQRUBfDLr9Vg5CP9jQ@mail.gmail.com>
Subject: Re: [PATCH v4 5/5] ASoC: rockchip_max98090: Add HDMI jack support
To: Tzung-Bi Shih <tzungbi@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_011403_356027_531DF27B 
X-CRM114-Status: GOOD (  12.62  )
X-Spam-Score: -7.4 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: ALSA development <alsa-devel@alsa-project.org>,
 Douglas Anderson <dianders@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Liam Girdwood <lgirdwood@gmail.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Takashi Iwai <tiwai@suse.com>,
 tzungbi@chromium.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Mark Brown <broonie@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-rockchip@lists.infradead.org,
 Dylan Reid <dgreid@chromium.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 16, 2019 at 10:16 PM Tzung-Bi Shih <tzungbi@google.com> wrote:
>
> On Tue, Jul 16, 2019 at 7:58 PM Cheng-Yi Chiang <cychiang@chromium.org> wrote:
> >
> > diff --git a/sound/soc/rockchip/rockchip_max98090.c b/sound/soc/rockchip/rockchip_max98090.c
> > index c82948e383da..c81c4acda917 100644
> > --- a/sound/soc/rockchip/rockchip_max98090.c
> > +++ b/sound/soc/rockchip/rockchip_max98090.c
> > +static struct snd_soc_jack rk_hdmi_jack;
> > +
> > +static int rk_hdmi_init(struct snd_soc_pcm_runtime *runtime)
> > +{
> > +       struct snd_soc_card *card = runtime->card;
> > +       struct snd_soc_component *component = runtime->codec_dai->component;
> > +       int ret;
> > +
> > +       /* enable jack detection */
> > +       ret = snd_soc_card_jack_new(card, "HDMI Jack", SND_JACK_LINEOUT,
> > +                                   &rk_hdmi_jack, NULL, 0);
> > +       if (ret) {
> > +               dev_err(card->dev, "Can't new HDMI Jack %d\n", ret);
> > +               return ret;
> > +       }
> > +
> > +       return hdmi_codec_set_jack_detect(component, &rk_hdmi_jack);
> > +}
> In the patch, you should select SND_SOC_HDMI_CODEC, because the patch
> uses hdmi_codec_set_jack_detect which depends on hdmi-codec.c.
Thanks! I'll fix in v5.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
