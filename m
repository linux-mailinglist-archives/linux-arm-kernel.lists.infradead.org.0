Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F146920F84
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 22:13:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jxj10EMibzfyewv1J5IedtCoxEY8goEUTOfsn+LGVt4=; b=SPMHsZSjgolGtc
	hzLNQrQQFVSKumtYpDsSgzbacgWugsi25c2sB2uSy2WAUjILkqBYGlKueLSJO5Rjj5+rDioY2Qx75
	6sj7MzqDfEJ9eMXopdUejHrT4sHtSO2If/IKb/dv3PIRwE7Db1coEvF4KRK3G7QimUSvm3UiVyZdo
	8ATXYphMKY0XRkWIGtwuyWPdRiRD6EId8pxj1o5kdUTjaxtxISSWiiz9KlJ6EW+ZhkeGSCEaSGBuI
	k6XBVjvpskIGFe4kg1m8fS6WNissrOaWQo+PPaTqsnW7L8P2liol3PsmTjJSMELj881kLeWrjVOD7
	TaaLcTso1WgEfYgAI5hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRMkj-0004Rz-EP; Thu, 16 May 2019 20:13:21 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRMkb-0004Re-VH
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 20:13:15 +0000
X-Originating-IP: 46.193.9.130
Received: from localhost (cust-west-pareq2-46-193-9-130.wb.wifirst.net
 [46.193.9.130]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id BC2EBC0005;
 Thu, 16 May 2019 20:12:58 +0000 (UTC)
Date: Thu, 16 May 2019 22:12:56 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Georgii Staroselskii <georgii.staroselskii@emlid.com>
Subject: Re: [PATCH] ASoC: sun4i-codec: fix first delay on Speaker
Message-ID: <20190516201256.te7ya3n7ugbfmzrw@flea>
References: <1557925120-31498-1-git-send-email-georgii.staroselskii@emlid.com>
 <20190515135813.5y72f2h526yjkncy@flea>
 <20190515152749.GA2241@softcrasher>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190515152749.GA2241@softcrasher>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_131314_155779_BEE09188 
X-CRM114-Status: GOOD (  20.04  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Wed, May 15, 2019 at 06:27:49PM +0300, Georgii Staroselskii wrote:
> On Wed, May 15, 2019 at 03:58:13PM +0200, Maxime Ripard wrote:
> > > diff --git a/sound/soc/sunxi/sun4i-codec.c b/sound/soc/sunxi/sun4i-codec.c
> > > index 15d08e3..e0099519 100644
> > > --- a/sound/soc/sunxi/sun4i-codec.c
> > > +++ b/sound/soc/sunxi/sun4i-codec.c
> > > @@ -1329,6 +1329,15 @@ static int sun4i_codec_spk_event(struct snd_soc_dapm_widget *w,
> > >  	gpiod_set_value_cansleep(scodec->gpio_pa,
> > >  				 !!SND_SOC_DAPM_EVENT_ON(event));
> > >
> > > +	if (SND_SOC_DAPM_EVENT_ON(event)) {
> > > +		/*
> > > +		 * Need a delay to have the amplifier up. 700ms seems the best
> > > +		 * compromise between the time to let the amplifier up and the
> > > +		 * time not to feel this delay while playing a sound.
> > > +		 */
> > > +		msleep(700);
> > > +	}
> > > +
> >
> > Since this is an external amplifier, I guess they would have different
> > warm-up time depending on the exact part being used?
>
> I guess I might've used Speaker wrong and bumped into an existing
> issue.  The issue first arose when I needed to connect a speaker and
> use a mute GPIO pin to toggle it. I bumped into the lag similar to
> the one that has been fixed in bf14da7. The word "amplifier" here in
> my comments might be wrong and misleding. Sorry for that. I just
> measured the latency on the speaker I'm using and it is well under
> 1ms so this is the Allwinner DAC that is pushing the data with a
> lag. Or some other thing, I'm not sure.
>
> I want to stress again that I might've experienced the issue because
> I was abusing "Speaker" routing. I basically just needed the analog
> audio stream and mute GPIO handling done automatically.

Ok. I guess the comment should just be reflecting that then.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
