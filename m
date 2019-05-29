Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F3302D3D7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 04:34:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xmtHGExodETEP56xzpfAbuoND8vKQInvb5CZxMiWwTs=; b=WmnJ+pqbxpBuov
	A71w7k3k0H1pCSdFd6rUtgewUfVOMIFGImh8wYrr4uc5UKF96RxWLjTklQpMmIc9yu8Yu8+lJzzJ9
	ajS7Odmw9trdn1SdHt/0eQ/fX2Yrd4Dc9XjPlYlcF4q3VZrgSiK818lsNLGcdzgoZgP6izgjEMNVi
	cKEwze6HeGlATIeK0rR6bpVcuVx2f2GvyjzydKrXCoiuMqzsJczNsoNi4Hwr7Vlb2H8J1oqes/JGS
	rIb6Zq0FDzhJ6sidzPDcw6jWuqBqYnTbygtnaaXD+VhVqwngeMzWvcNLJXFIhJ3KAGahP4FdRnMgk
	I1fEimuBOhGktCP8JuQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVoQQ-0008VQ-Td; Wed, 29 May 2019 02:34:46 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVoQJ-0008Ug-BW
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 02:34:41 +0000
Received: by mail-io1-f67.google.com with SMTP id u25so469760iot.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 19:34:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=16vRENUAaVkpiHADxLDX2jGaoPlKnqXavEdP3eFZTkA=;
 b=icV+/vsYGwJqu836tOzUUoWatsdXyNfpZU/shEZJdxq/TtupGo5Ie7+yJGw+UDF2k/
 0a2X9WJLy46w2pmMgqzZF2Z/76VcsI0CBrDVKV29vFNYS9o31xCJswNgJaptL6/ZiO19
 mfJbshb2p0VomVs73YZaFDQjQfbScfStNTKVjLxgQ+JHGRcU87Rtfcip5rwwPWw3/T4w
 yqwN4GjD0SeKtqXbZwUVWGv5Ng+FeeYm8war0LYJLjiB2/mON4YMsANGMok9Fzv13YhU
 c/fl5V6308ULHILnQMOYsh+pvOF8MFmid6jNPo/Xx46JYHzbGoMUurui4gn3b5XwruxR
 1K3w==
X-Gm-Message-State: APjAAAXVzGJFAkIrIp4MR1+VAVCrsEjYJ13Bstppjmtqdlm0r7VaxPac
 cf8ZeUy3TR6DRiaZluRdCYIy0rbSdJJ5/A==
X-Google-Smtp-Source: APXvYqxsF/1SEDgqxYcADaXBlus/rtHYX46e3YdhvRBu0hF0yyuffwfG41dWQWkGg1pHE3Psol4Wjw==
X-Received: by 2002:a5d:97d1:: with SMTP id k17mr28361335ios.228.1559097277735; 
 Tue, 28 May 2019 19:34:37 -0700 (PDT)
Received: from mail-it1-f179.google.com (mail-it1-f179.google.com.
 [209.85.166.179])
 by smtp.gmail.com with ESMTPSA id w189sm416787itf.39.2019.05.28.19.34.36
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 19:34:37 -0700 (PDT)
Received: by mail-it1-f179.google.com with SMTP id a186so1196087itg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 19:34:36 -0700 (PDT)
X-Received: by 2002:a24:91d2:: with SMTP id i201mr5877754ite.88.1559097276557; 
 Tue, 28 May 2019 19:34:36 -0700 (PDT)
MIME-Version: 1.0
References: <1559040459-16488-1-git-send-email-georgii.staroselskii@emlid.com>
In-Reply-To: <1559040459-16488-1-git-send-email-georgii.staroselskii@emlid.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Wed, 29 May 2019 10:34:25 +0800
X-Gmail-Original-Message-ID: <CAGb2v64osE5yVdpCxSRfpkaq2TqeUUiLUbr3wZWW1rawuqxW-Q@mail.gmail.com>
Message-ID: <CAGb2v64osE5yVdpCxSRfpkaq2TqeUUiLUbr3wZWW1rawuqxW-Q@mail.gmail.com>
Subject: Re: [PATCH v2] ASoC: sun4i-codec: fix first delay on Speaker
To: Georgii Staroselskii <georgii.staroselskii@emlid.com>,
 Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_193439_397612_32974A5A 
X-CRM114-Status: GOOD (  25.02  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Danny Milosavljevic <dannym@scratchpost.org>, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 6:48 PM Georgii Staroselskii
<georgii.staroselskii@emlid.com> wrote:
>
> Allwinner DAC seems to have a delay in the Speaker audio routing. When
> playing a sound for the first time, the sound gets chopped. On a second
> play the sound is played correctly. After some time (~5s) the issue gets
> back.

FYI that is DAPM powering down the amp. You'll here a light pop when that
happens.

> This commit seems to be fixing the same issue as bf14da7 but
> for another codepath.
>
> This is the DTS that was used to debug the problem.
>
> &codec {
>         allwinner,pa-gpios = <&r_pio 0 11 GPIO_ACTIVE_HIGH>; /* PL11 */
>         allwinner,audio-routing =
>                 "Speaker", "LINEOUT";
>
>         status = "okay";
> }
>
> Signed-off-by: Georgii Staroselskii <georgii.staroselskii@emlid.com>
> ---
>  sound/soc/sunxi/sun4i-codec.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
>
> diff --git a/sound/soc/sunxi/sun4i-codec.c b/sound/soc/sunxi/sun4i-codec.c
> index f2deffe..9e1f00e 100644
> --- a/sound/soc/sunxi/sun4i-codec.c
> +++ b/sound/soc/sunxi/sun4i-codec.c
> @@ -1320,6 +1320,15 @@ static int sun4i_codec_spk_event(struct snd_soc_dapm_widget *w,
>         gpiod_set_value_cansleep(scodec->gpio_pa,
>                                  !!SND_SOC_DAPM_EVENT_ON(event));
>
> +       if (SND_SOC_DAPM_EVENT_ON(event)) {
> +               /*
> +                * Need a delay to wait for DAC to push the data. 700ms seems
> +                * to be the best compromise not to feel this delay while
> +                * playing a sound.

It is not that the DAC is not pushing data, it's just the internal headphone
amp needs some time to charge up. So this patch basically adds a delay before
sound is actually pushed out, thereby preventing any sound from being silently
dropped. It doesn't help with the pop on power down though, and the latency
might not be that great.

I wonder if we shouldn't just keep the amplifier section powered up
all the time.
Also it seems not very many codec drivers go all out with DAPM.

Mark, any suggestions on the matter?

ChenYu


> +                */
> +               msleep(700);
> +       }
> +
>         return 0;
>  }
>
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
