Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD5C21203
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 04:30:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=teJR7P+x4il14Fr30gZ3p1prAq+OZog4abl5GpJQdWQ=; b=I5NzHnLyN2QZoi
	Liz3MVzLsTChPIWpWfkaUFSk3yP6uIk0AzrAo290dluHinP8GUfe8KfYmXRAELz7ApY+zq30lMhVT
	OqhlEKN+9o2A4dqUbpHSPvEB2SNEJ9d1mOsgOGVbqbuivIsKicEFxPBjfbGKd3p0KAHXBnkAeXivt
	Ncxw8nvuDdUGgYKAw4yP9gRPSWLb4dhHsEmma7o2JyIhmBLzyy2SlEHLw3z0C5RGhgaWm9dOHxTQl
	00bxynXrSRK495l90P32CpyTk4bTEwxGrlal7K7ClvEwQEGDrcFsWtqi3tkeBnL6b53TcrYEqrNS4
	WZfKFEoTVOfSEFGnUk8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRSdQ-00072n-M8; Fri, 17 May 2019 02:30:12 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRSdG-0006Pn-9F
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 02:30:04 +0000
Received: by mail-ed1-f65.google.com with SMTP id n17so8258686edb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 19:29:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vd7a6BOY3BmwDuAXW4h7Ge5sD0QEyF7r1GtbJLVFNZ0=;
 b=F3ZYQQgot8KIqQS5gxtUbGzdEkfPUGmqoC3C+CG6jNsGiNVHX0UV9kkvtgi7srLfhO
 mkEdhlHFMHKDSelKbi3lL39FdBm9Zsmf/538ruAgyuiXhP5JEIZUxD2HeQh7qcT+5fpn
 gfgM7fPQbyisoJ5Bcf1xg6o2qpwzka7R8J2Jgoh/ZODYAsCQBEIejUK0uSkYUNzdNA3O
 yQq0Z1+V+Xj5nAK2MozijC+6B5XVUDDt2ek0Ja5W+un1768ZqEHntYRFvcM9gbJP5GTH
 +HU5j6A/s2GjVXKcXzOPFtNEQiVtYc3zszuW7a9nZJqrDFkBjb+hujjz/G7WOWVHsymH
 6ypg==
X-Gm-Message-State: APjAAAUAk65unY3zXIBKVs9klhD9sUUGJ17AubfeIV3WRheDr2wmfYzG
 ZqyWCQZ+WQP7IC1qTnt7Y1sjtUN1Dsk=
X-Google-Smtp-Source: APXvYqwMPrA8EE9paGHv4eG2xW4Qqs/yUxcf8SAo9MgTJtQVTr9WuFHRSOKkTJUqq518dXqZEk3fIQ==
X-Received: by 2002:a50:89ea:: with SMTP id h39mr44051284edh.10.1558060194441; 
 Thu, 16 May 2019 19:29:54 -0700 (PDT)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com.
 [209.85.221.47])
 by smtp.gmail.com with ESMTPSA id w5sm2405786edd.19.2019.05.16.19.29.53
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 19:29:53 -0700 (PDT)
Received: by mail-wr1-f47.google.com with SMTP id g12so5099514wro.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 19:29:53 -0700 (PDT)
X-Received: by 2002:adf:e8d2:: with SMTP id k18mr25719234wrn.329.1558060193026; 
 Thu, 16 May 2019 19:29:53 -0700 (PDT)
MIME-Version: 1.0
References: <1557925120-31498-1-git-send-email-georgii.staroselskii@emlid.com>
 <20190515135813.5y72f2h526yjkncy@flea> <20190515152749.GA2241@softcrasher>
 <20190516201256.te7ya3n7ugbfmzrw@flea>
In-Reply-To: <20190516201256.te7ya3n7ugbfmzrw@flea>
From: Chen-Yu Tsai <wens@csie.org>
Date: Fri, 17 May 2019 10:29:41 +0800
X-Gmail-Original-Message-ID: <CAGb2v65D23-sXmZPT2t2d0XrZnO2yfUKwgc7z=1VEfVkK+855A@mail.gmail.com>
Message-ID: <CAGb2v65D23-sXmZPT2t2d0XrZnO2yfUKwgc7z=1VEfVkK+855A@mail.gmail.com>
Subject: Re: [PATCH] ASoC: sun4i-codec: fix first delay on Speaker
To: Maxime Ripard <maxime.ripard@bootlin.com>, 
 Georgii Staroselskii <georgii.staroselskii@emlid.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_193002_332583_C475AD2D 
X-CRM114-Status: GOOD (  24.75  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Linux-ALSA <alsa-devel@alsa-project.org>,
 Danny Milosavljevic <dannym@scratchpost.org>, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 17, 2019 at 4:13 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> On Wed, May 15, 2019 at 06:27:49PM +0300, Georgii Staroselskii wrote:
> > On Wed, May 15, 2019 at 03:58:13PM +0200, Maxime Ripard wrote:
> > > > diff --git a/sound/soc/sunxi/sun4i-codec.c b/sound/soc/sunxi/sun4i-codec.c
> > > > index 15d08e3..e0099519 100644
> > > > --- a/sound/soc/sunxi/sun4i-codec.c
> > > > +++ b/sound/soc/sunxi/sun4i-codec.c
> > > > @@ -1329,6 +1329,15 @@ static int sun4i_codec_spk_event(struct snd_soc_dapm_widget *w,
> > > >   gpiod_set_value_cansleep(scodec->gpio_pa,
> > > >                            !!SND_SOC_DAPM_EVENT_ON(event));
> > > >
> > > > + if (SND_SOC_DAPM_EVENT_ON(event)) {
> > > > +         /*
> > > > +          * Need a delay to have the amplifier up. 700ms seems the best
> > > > +          * compromise between the time to let the amplifier up and the
> > > > +          * time not to feel this delay while playing a sound.
> > > > +          */
> > > > +         msleep(700);
> > > > + }
> > > > +
> > >
> > > Since this is an external amplifier, I guess they would have different
> > > warm-up time depending on the exact part being used?
> >
> > I guess I might've used Speaker wrong and bumped into an existing
> > issue.  The issue first arose when I needed to connect a speaker and
> > use a mute GPIO pin to toggle it. I bumped into the lag similar to
> > the one that has been fixed in bf14da7. The word "amplifier" here in
> > my comments might be wrong and misleding. Sorry for that. I just
> > measured the latency on the speaker I'm using and it is well under
> > 1ms so this is the Allwinner DAC that is pushing the data with a
> > lag. Or some other thing, I'm not sure.
> >
> > I want to stress again that I might've experienced the issue because
> > I was abusing "Speaker" routing. I basically just needed the analog
> > audio stream and mute GPIO handling done automatically.
>
> Ok. I guess the comment should just be reflecting that then.

Sounds like the board has an external buffer / amplifier for the speaker.
Does it have a headphone jack that bypasses it? Then you could check for
the actual latency.

Also, I think it might be better if we could move to actual audio routing
and have a simple-amplifier instead.

ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
