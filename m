Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3E801F775
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 17:28:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2K7bt3fY9orVJFfSiGSEmgEFO7F1jALv5X68I3cjA80=; b=BRQHxlGevK8AXE
	9pAXRF9LziaX/zEXCPH57e2AjUcn4oZbRpwGo1A808vqEq8OYbh6SpcKqzFckXa+XYHPZhGwINa1R
	FI/6oD/oHKuyRvSV4fjfRrLtaEWIrbnnLsQBFHdzDZl8aUTUfVFMHczcDbsgKsDo/BQLX7GqCuNOL
	a7Ba/kBOSEI1O/h0DDWUqm5iIbsEmZO1MZYYwsK+8VyQA/suf3bC2D9FGm475h0ubUMCki2vfF3JW
	wlNPfjBJBOqULlo4oYB8C/LeTY9tII3KXpvviqQb52peINlkkR31i6Jkti/FyE3HG6RntU8MtwWS4
	g2J9oeS5Upx15Osn796A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQvp9-0005mO-73; Wed, 15 May 2019 15:28:07 +0000
Received: from forward102p.mail.yandex.net ([77.88.28.102])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQvp1-0005m5-Fx
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 15:28:02 +0000
Received: from mxback6j.mail.yandex.net (mxback6j.mail.yandex.net
 [IPv6:2a02:6b8:0:1619::10f])
 by forward102p.mail.yandex.net (Yandex) with ESMTP id 4FBBC1D40BDA;
 Wed, 15 May 2019 18:27:54 +0300 (MSK)
Received: from smtp4o.mail.yandex.net (smtp4o.mail.yandex.net
 [2a02:6b8:0:1a2d::28])
 by mxback6j.mail.yandex.net (nwsmtp/Yandex) with ESMTP id kDVHURfUA6-Rq4Wx0eM; 
 Wed, 15 May 2019 18:27:54 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emlid.com; s=mail;
 t=1557934074; bh=C9/4v9tZ0QA/I8UwQ8+Wr54uQ98kB7tY2rAZlSGmGYI=;
 h=In-Reply-To:Subject:Cc:To:From:References:Date:Message-ID;
 b=tnQRMJznuo5R16cq/Ov8sa/PaVK+rORZKkA1sQYsDu0o7peSJuugenAiGPWBPUrlS
 Up1xPKTEoZMWy/XFlbCRjS95GmR1jY25LEe2yKUe4L0eJJOe3RT4ubBCE7e+4TGmF3
 VJRm9s/M6jk8QSmFGD3aS7F7dR37uzC5JOsQ8wj4=
Authentication-Results: mxback6j.mail.yandex.net; dkim=pass header.i=@emlid.com
Received: by smtp4o.mail.yandex.net (nwsmtp/Yandex) with ESMTPSA id
 biQI4DmMhu-Ro3qG95V; Wed, 15 May 2019 18:27:50 +0300
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (Client certificate not present)
Date: Wed, 15 May 2019 18:27:49 +0300
From: Georgii Staroselskii <georgii.staroselskii@emlid.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH] ASoC: sun4i-codec: fix first delay on Speaker
Message-ID: <20190515152749.GA2241@softcrasher>
References: <1557925120-31498-1-git-send-email-georgii.staroselskii@emlid.com>
 <20190515135813.5y72f2h526yjkncy@flea>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190515135813.5y72f2h526yjkncy@flea>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_082759_958746_5BBBCB40 
X-CRM114-Status: GOOD (  26.09  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [77.88.28.102 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Wed, May 15, 2019 at 03:58:13PM +0200, Maxime Ripard wrote:
Hi!

> Hi,
> 
> On Wed, May 15, 2019 at 03:58:40PM +0300, Georgii Staroselskii wrote:
> > This commit fixes the same issue as bf14da7 but for another codepath.
> > The issue can be triggered by having Speaker in codec audio routing.
> 
> Mentionning what "the issue" is in the commit log would be great.
> 

Sure, will do.

> > &codec {
> >         allwinner,pa-gpios = <&r_pio 0 11 GPIO_ACTIVE_HIGH>; /* PL11 */
> >         allwinner,audio-routing =
> >                 "Speaker", "LINEOUT";
> >
> >         status = "okay";
> > }
> >
> > Signed-off-by: Georgii Staroselskii <georgii.staroselskii@emlid.com>
> > ---
> >  sound/soc/sunxi/sun4i-codec.c | 9 +++++++++
> >  1 file changed, 9 insertions(+)
> >
> > diff --git a/sound/soc/sunxi/sun4i-codec.c b/sound/soc/sunxi/sun4i-codec.c
> > index 15d08e3..e0099519 100644
> > --- a/sound/soc/sunxi/sun4i-codec.c
> > +++ b/sound/soc/sunxi/sun4i-codec.c
> > @@ -1329,6 +1329,15 @@ static int sun4i_codec_spk_event(struct snd_soc_dapm_widget *w,
> >  	gpiod_set_value_cansleep(scodec->gpio_pa,
> >  				 !!SND_SOC_DAPM_EVENT_ON(event));
> >
> > +	if (SND_SOC_DAPM_EVENT_ON(event)) {
> > +		/*
> > +		 * Need a delay to have the amplifier up. 700ms seems the best
> > +		 * compromise between the time to let the amplifier up and the
> > +		 * time not to feel this delay while playing a sound.
> > +		 */
> > +		msleep(700);
> > +	}
> > +
> 
> Since this is an external amplifier, I guess they would have different
> warm-up time depending on the exact part being used?
> 

I guess I might've used Speaker wrong and bumped into an existing issue.
The issue first arose when I needed to connect a speaker and use a mute
GPIO pin to toggle it. I bumped into the lag similar to the one that has
been fixed in bf14da7. The word "amplifier" here in my comments might be wrong 
and misleding. Sorry for that. I just measured the latency on the speaker I'm
using and it is well under 1ms so this is the Allwinner DAC that is
pushing the data with a lag. Or some other thing, I'm not sure.

I want to stress again that I might've experienced the issue because
I was abusing "Speaker" routing. I basically just needed the analog 
audio stream and mute GPIO handling done automatically.

bf14da7 made me think that this is some hardware Allwinner issue that
needs to be fixed here. And well, it did fix the problem.

> If so, we should use a property and set it on a per-board basis.
> 

There might be a use case for that but this issue seems to be orthogonal
to this.

> Maxime
> 
> --
> Maxime Ripard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com

Best regards,
Georgii Staroselskii

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
