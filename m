Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A47C160B38
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 07:56:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6OgTZwVB9ztYpNjnj4Q+X6ybdtTYEGh8iERCQDAEvbE=; b=EjBxCXmGnmXTP8
	xBXAugAKkw9YHD2pqUs9VC2Sc7z+yyTBt+Qjbz4sBJfGwvd/0puatOUhcXTftS0konOjvApVc5CLu
	gbRRw0Pv4qur0Lwbu7GpQijpeYP3EQNmfYGbtGfKKqXnilTA0GL3k7EPsr2BiNym5qSywpsBZ3lTD
	tMqpJcrIdTORKqh7lb4Vq8L8YeIlY+q0dMIgv3UEziuhh13RD6xmjpj/GAwJ6PzyqmwTC8oPuOVQA
	PCgO1I1GDTEcX614qRxdh4UXyxWpdANlNaT7Z2FhyNrMR5l5Ni+66umQUcu1BdqPS6OvwLRnlF6CB
	+bTn9RXi8QTAGACSrmhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3aKh-0000bD-QR; Mon, 17 Feb 2020 06:56:43 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3aKT-0000aG-Ke
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 06:56:31 +0000
Received: by mail-ed1-f65.google.com with SMTP id m13so19419075edb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 22:56:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/WHKaTGOgOAJM+VcnF+6HFOUNwxgDydG90xB7o+8lGE=;
 b=p0WGWedBg/z9ltxv9uAhkYO9DuL6LoSaBGYPuNlWtwFQcw01rIuhnT4x6fLoguWOwe
 e0jyc7HXG+yB7u0sXbGxXMPCcuUnk0ctUH62XmVzNd/Akt1BzNMX/6BE162zzhAhnjwE
 +/F4j+eCAybQ85X3m6D/fg7azyajgKMRuXePEktlhq7u2ox5qxH6BHzED47gbigi5/Lz
 QS9b/wUUCAFtdA9jIsi5yLsZath3SMkDYpREQ4UDmTwaEikEtbQ5b+m/EQaJqcaTTQhB
 +i2bvqUPHz03G7pRMw3EDTL7cN7Fk0Bgzz8BD48vU5RmF7PEmBbo/jOV5kt8zolr5Thc
 A0Kw==
X-Gm-Message-State: APjAAAVMh+TV62H44+Rf72VZnL8dv5CWfP7nSkPMO3Abam6lRhBrX3IL
 m2IcqkzkWPTpCwgxMwR2aSCB9IgQFN8=
X-Google-Smtp-Source: APXvYqwQSq+jPlLOtQkWq+bVP1wHaMLg2kUUjaBdG/xVYH1vn3jXvMiRKo9vkwCg/YoZSoXjJqEdQQ==
X-Received: by 2002:a05:6402:1764:: with SMTP id
 da4mr13230705edb.24.1581922586295; 
 Sun, 16 Feb 2020 22:56:26 -0800 (PST)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com.
 [209.85.128.41])
 by smtp.gmail.com with ESMTPSA id x12sm837219eje.52.2020.02.16.22.56.25
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 16 Feb 2020 22:56:25 -0800 (PST)
Received: by mail-wm1-f41.google.com with SMTP id a6so17131208wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 22:56:25 -0800 (PST)
X-Received: by 2002:a05:600c:10d2:: with SMTP id
 l18mr20086133wmd.122.1581922585072; 
 Sun, 16 Feb 2020 22:56:25 -0800 (PST)
MIME-Version: 1.0
References: <20200217021813.53266-1-samuel@sholland.org>
 <20200217021813.53266-5-samuel@sholland.org>
 <CAGb2v677p8u8_0jhcbN07QsyVc21dKJmeK6=rxLCbde+AOqreQ@mail.gmail.com>
 <de0a08a8-eb02-375f-4364-2935cf4c3d7c@sholland.org>
In-Reply-To: <de0a08a8-eb02-375f-4364-2935cf4c3d7c@sholland.org>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 17 Feb 2020 14:56:14 +0800
X-Gmail-Original-Message-ID: <CAGb2v64xLO_=EFoa=vGh-HRY=nQuE0a+mv-nfveimK=pb=FjGQ@mail.gmail.com>
Message-ID: <CAGb2v64xLO_=EFoa=vGh-HRY=nQuE0a+mv-nfveimK=pb=FjGQ@mail.gmail.com>
Subject: Re: [PATCH 4/8] ASoC: sun50i-codec-analog: Make headphone routes
 stereo
To: Samuel Holland <samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_225629_681442_0AFACD86 
X-CRM114-Status: GOOD (  24.09  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wens213[at]gmail.com]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Luca Weiss <luca@z3ntu.xyz>, Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Takashi Iwai <tiwai@suse.com>,
 Maxime Ripard <mripard@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 11:57 AM Samuel Holland <samuel@sholland.org> wrote:
>
> Hello,
>
> On 2/16/20 9:48 PM, Chen-Yu Tsai wrote:
> > Hi,
> >
> > On Mon, Feb 17, 2020 at 10:18 AM Samuel Holland <samuel@sholland.org> wrote:
> >>
> >> This matches the hardware more accurately, and is necessary for
> >> including the (stereo) headphone mute switch in the DAPM graph.
> >>
> >> Signed-off-by: Samuel Holland <samuel@sholland.org>
> >> ---
> >>  sound/soc/sunxi/sun50i-codec-analog.c | 28 +++++++++++++++++++--------
> >>  1 file changed, 20 insertions(+), 8 deletions(-)
> >>
> >> diff --git a/sound/soc/sunxi/sun50i-codec-analog.c b/sound/soc/sunxi/sun50i-codec-analog.c
> >> index 17165f1ddb63..f98851067f97 100644
> >> --- a/sound/soc/sunxi/sun50i-codec-analog.c
> >> +++ b/sound/soc/sunxi/sun50i-codec-analog.c
> >> @@ -311,9 +311,15 @@ static const struct snd_soc_dapm_widget sun50i_a64_codec_widgets[] = {
> >>          */
> >>
> >>         SND_SOC_DAPM_REGULATOR_SUPPLY("cpvdd", 0, 0),
> >> -       SND_SOC_DAPM_MUX("Headphone Source Playback Route",
> >> +       SND_SOC_DAPM_MUX("Left Headphone Source",
> >>                          SND_SOC_NOPM, 0, 0, sun50i_codec_hp_src),
> >> -       SND_SOC_DAPM_OUT_DRV("Headphone Amp", SUN50I_ADDA_HP_CTRL,
> >> +       SND_SOC_DAPM_MUX("Right Headphone Source",
> >
> > Please don't remove the widget suffix. The suffix was chosen to work with
> > alsa-lib's control parsing code. The term "Playback Route" is appropriate
> > because it is playback only, and it is a routing switch, not a source or
> > sink.
>
> Removing the suffix here doesn't affect the control name as seen by userspace,
> because the control is shared between multiple widgets (Left and Right).

You're right.

> > Also, what's wrong with just having a single "stereo" widget instead of
> > two "mono" widgets? I added stereo (2-channel) support to DAPM quite
> > some time ago. You just have to have two routes in and out.
>
> If you have any completed path through a widget, the widget is turned on. A
> stereo mute switch is logically two separate paths. So if I break one path by
> muting one channel, that lets me turn off everything before and after in the
> path (e.g. turning off the right side of the DAC lets DAPM turn off the right
> mixer, the right side of the output amp, even the right side of the AIF or the
> ADC if that was the only input. That only works if there are separate Left/Right
> widgets.

Looks like that's the case indeed. Might be worth revisiting the core DAPM code
later on if I can find the time.

Since the widgets and routes changed are internal to the codec, there won't be
any issue if we rework this stuff later on. So for now,

Reviewed-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
