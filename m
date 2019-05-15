Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CF761F617
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 15:58:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AgcV2hAPymjj70WjT4enZGUp7chO9ysBKr+TwBEG4Bw=; b=btO8f55sqwPsAk
	ETubedLp9qG4aa4HFC4xCknPHqIIeKppy6f3Jw2DbradGc1QAhGVawDCyE2ogrlixKgFTi2ccGQ4P
	xIVMkFGhnJlXP/gtwYepNsWjHhVFIPYEyS0wsVezLYD44+V0oeux1X+BTwZlzfgxSu0nm3e+V4tXx
	X3vH1u4/Sm/1X+rDUXJuL8Gm8IchIEZ7qtdFRFtGN0fcPo0uRg61h0QJNk9srmOkPHuexOnU1HMxa
	8txAqvl/s+qLWtrzaNTlAluXWYf115M/9JlVldpwaeSJ/4ElexjvPtRojTZ4hgc08MVY/d0tPkKPi
	x21K0ecTarYZkmrKlU6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQuQZ-0004LW-7I; Wed, 15 May 2019 13:58:39 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQuQR-0004KZ-Bh
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 13:58:33 +0000
Received: from localhost (unknown [80.215.224.99])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id C3A16100010;
 Wed, 15 May 2019 13:58:14 +0000 (UTC)
Date: Wed, 15 May 2019 15:58:13 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Georgii Staroselskii <georgii.staroselskii@emlid.com>
Subject: Re: [PATCH] ASoC: sun4i-codec: fix first delay on Speaker
Message-ID: <20190515135813.5y72f2h526yjkncy@flea>
References: <1557925120-31498-1-git-send-email-georgii.staroselskii@emlid.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557925120-31498-1-git-send-email-georgii.staroselskii@emlid.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_065831_547264_4346A40B 
X-CRM114-Status: GOOD (  18.54  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: alsa-devel@alsa-project.org, dannym@scratchpost.org, tiwai@suse.com,
 lgirdwood@gmail.com, wens@csie.org, broonie@kernel.org, perex@perex.cz,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Wed, May 15, 2019 at 03:58:40PM +0300, Georgii Staroselskii wrote:
> This commit fixes the same issue as bf14da7 but for another codepath.
> The issue can be triggered by having Speaker in codec audio routing.

Mentionning what "the issue" is in the commit log would be great.

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
> index 15d08e3..e0099519 100644
> --- a/sound/soc/sunxi/sun4i-codec.c
> +++ b/sound/soc/sunxi/sun4i-codec.c
> @@ -1329,6 +1329,15 @@ static int sun4i_codec_spk_event(struct snd_soc_dapm_widget *w,
>  	gpiod_set_value_cansleep(scodec->gpio_pa,
>  				 !!SND_SOC_DAPM_EVENT_ON(event));
>
> +	if (SND_SOC_DAPM_EVENT_ON(event)) {
> +		/*
> +		 * Need a delay to have the amplifier up. 700ms seems the best
> +		 * compromise between the time to let the amplifier up and the
> +		 * time not to feel this delay while playing a sound.
> +		 */
> +		msleep(700);
> +	}
> +

Since this is an external amplifier, I guess they would have different
warm-up time depending on the exact part being used?

If so, we should use a property and set it on a per-board basis.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
