Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FAFA1BDA22
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 12:54:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ob5exOWBzSsU7BQflMbXHzYTBV8IL/ERbzDCEwC3WLk=; b=dh4hA3ikbihpWc
	ZGPIxg/USobYdg56OthGOWKo5t1FMJX4dLRca7Zl8eH8Juamzhjz3mXRDE9xE92ILF7EZLb5+UR0L
	YJrlFzr1b0TIU5EoFZw5yAXdjnWlxaVahzU3f1yKFZRoTlWP9988nRHOVxHDOZDUs1oviZmiQ9Xrn
	/jw239UdVh2tjbexjHbaStFU+GfYQi4Zn4EGSiELfahOttRLLexG/07pvRe1SDTXmO0YiyN5yhWsj
	+3Zuk7PphcYIUzvoYaso8qQ7f1OpkkhK0oor+jY/qmqVfthNugzaAbzdbxLW0NVxFTVl8CCTt2Okh
	i4shkLErFXh5LJrNTIFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTkM4-0008Oj-VE; Wed, 29 Apr 2020 10:54:16 +0000
Received: from mailoutvs55.siol.net ([185.57.226.246] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTkLt-0008N2-Lo
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 10:54:07 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTP id C3AF3521BE9;
 Wed, 29 Apr 2020 12:53:52 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta12.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta12.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id WTuFh5kUYBaz; Wed, 29 Apr 2020 12:53:52 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTPS id 3A022521DDA;
 Wed, 29 Apr 2020 12:53:52 +0200 (CEST)
Received: from jernej-laptop.localnet (89-212-178-211.dynamic.t-2.net
 [89.212.178.211]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Zimbra) with ESMTPA id E16C2521BE9;
 Wed, 29 Apr 2020 12:53:49 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Maxime Ripard <maxime@cerno.tech>, Chen-Yu Tsai <wens@csie.org>,
 Robin Murphy <robin.murphy@arm.com>
Subject: Re: [linux-sunxi] Re: Audio sound card name [was [PATCH 4/7] arm64:
 dts: allwinner: a64: Add HDMI audio]
Date: Wed, 29 Apr 2020 12:53:49 +0200
Message-ID: <2545943.S5iK65abk1@jernej-laptop>
In-Reply-To: <f9b701d9-0c4e-6e41-1ce8-52adf0f59a2a@arm.com>
References: <20200426120442.11560-1-peron.clem@gmail.com>
 <20200429081729.qa3gqtl5sof2jhem@gilmour.lan>
 <f9b701d9-0c4e-6e41-1ce8-52adf0f59a2a@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_035405_870987_660807A3 
X-CRM114-Status: GOOD (  26.91  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.246 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linux-ALSA <alsa-devel@alsa-project.org>, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Marcus Cooper <codekipper@gmail.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Mark Brown <broonie@kernel.org>,
 =?ISO-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>,
 Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dne sreda, 29. april 2020 ob 12:43:06 CEST je Robin Murphy napisal(a):
> On 2020-04-29 9:17 am, Maxime Ripard wrote:
> > On Wed, Apr 29, 2020 at 02:24:00PM +0800, Chen-Yu Tsai wrote:
> >> On Wed, Apr 29, 2020 at 1:11 AM Robin Murphy <robin.murphy@arm.com> =

wrote:
> >>> On 2020-04-28 5:49 pm, Cl=E9ment P=E9ron wrote:
> >>>> Hi Mark, Rob,
> >>>> =

> >>>> On Tue, 28 Apr 2020 at 18:04, Maxime Ripard <maxime@cerno.tech> wrot=
e:
> >>>>> On Tue, Apr 28, 2020 at 10:54:00AM +0200, Cl=E9ment P=E9ron wrote:
> >>>>>> Hi Maxime,
> >>>>>> =

> >>>>>> On Tue, 28 Apr 2020 at 10:00, Maxime Ripard <maxime@cerno.tech> =

wrote:
> >>>>>>> On Sun, Apr 26, 2020 at 02:04:39PM +0200, Cl=E9ment P=E9ron wrote:
> >>>>>>>> From: Marcus Cooper <codekipper@gmail.com>
> >>>>>>>> =

> >>>>>>>> Add a simple-soundcard to link audio between HDMI and I2S.
> >>>>>>>> =

> >>>>>>>> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> >>>>>>>> Signed-off-by: Marcus Cooper <codekipper@gmail.com>
> >>>>>>>> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> >>>>>>>> ---
> >>>>>>>> =

> >>>>>>>>    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 21
> >>>>>>>>    +++++++++++++++++++
> >>>>>>>>    1 file changed, 21 insertions(+)
> >>>>>>>> =

> >>>>>>>> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> >>>>>>>> b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi index
> >>>>>>>> e56e1e3d4b73..08ab6b5e72a5 100644
> >>>>>>>> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> >>>>>>>> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> >>>>>>>> @@ -102,6 +102,25 @@
> >>>>>>>> =

> >>>>>>>>                 status =3D "disabled";
> >>>>>>>>         =

> >>>>>>>>         };
> >>>>>>>> =

> >>>>>>>> +     hdmi_sound: hdmi-sound {
> >>>>>>>> +             compatible =3D "simple-audio-card";
> >>>>>>>> +             simple-audio-card,format =3D "i2s";
> >>>>>>>> +             simple-audio-card,name =3D "allwinner,hdmi";
> >>>>>>> =

> >>>>>>> I'm not sure what the usual card name should be like though. I wo=
uld
> >>>>>>> assume that this should be something specific enough so that you'=
re
> >>>>>>> able to differentiate between boards / SoC so that the userspace
> >>>>>>> can choose a different configuration based on it?
> >>>>>> =

> >>>>>> I really don't know what we should use here,
> >>>>>> I just have a look at other SoC:
> >>>>>> rk3328: "HDMI"
> >>>>>> rk3399: "hdmi-sound"
> >>>>>> r8a774c0-cat874: "CAT874 HDMI sound"
> >>>>>> =

> >>>>>> But maybe it's time to introduce proper name:
> >>>>>> What about :
> >>>>>> pat
> >>>>>> sun50i-h6-hdmi
> >>>>> =

> >>>>> It's pretty much what we've been using for the other sound cards we
> >>>>> have, so it makes sense to me.
> >>>> =

> >>>> I have a question regarding the simple-audio-card,name.
> >>>> In this patch, I would like to introduce a simple-audio-card for the
> >>>> Allwinner A64 HDMI.
> >>>> =

> >>>> What should be the preferred name for this sound card?
> >>>> "sun50i-a64-hdmi" ? "allwinner, sun50i-a64-hdmi" ?
> >>> =

> >>> I can at least speak for RK3328, and the reasoning there was that as =
the
> >>> user looking at what `aplay -l` says, I don't give a hoot about what =
the
> >>> SoC may be called, I see two cards and I want to know, with the least
> >>> amount of uncertainty, which one will make the sound come out of the
> >>> port that's labelled "HDMI" on the box ;)
> >> =

> >> I agree. The user really doesn't care what SoC the system uses. The on=
ly
> >> real requirement is to be able to tell which output the card is related
> >> to, i.e. is it onboard or an external DAC, is it analog or HDMI, etc..
> > =

> > Yeah, but it's exactly the point.
> > =

> > If we also end up with "HDMI" as our card name, then the userspace has =
no
> > way to tell anymore if it's running from an rk3328 or an allwinner SoC,
> > or something else entirely. And therefore it cannot really configure
> > anything to work out of the box anymore.
> =

> OK, you're a userspace audio application - enlighten me as to what exact
> chip you're running on here, and why you need to know:
> =

> card 0: HDMI [HDA ATI HDMI]
> =

> or how about here?
> =

> card 0: Intel [HDA Intel]
> =

> =

> Furthermore, your argument works both ways - if the equivalent (or in
> common cases like DesignWare IP blocks, exact same) thing across 3
> different SoCs has 3 different names, then it's that much harder for
> userspace that wants to present a consistent behaviour. I don't know
> exactly why LibreELEC have downstream patches that standardise all the
> Rockchip ones to "HDMI", but I can't help noting that they do.
> =

> With simple-audio-card we're talking about trivial interfaces that often
> don't expose any controls at all, so there's unlikely to be much
> 'configuration' for userspace to do beyond choosing which card to output =
to.

This combination (DesignWare HDMI controller + I2S) is same as on Rockchip. =

Only difference is slightly different version of HDMI controller and differ=
ent =

I2S core. Not sure what kind of configuration do you have in mind, but all =

these controllers support 2-8 channels, different sample sizes, even =

passthrough mode can be set (but it's not implemented yet). I would say tha=
t =

this audio output supports quiet a few possible configurations.

BTW, above patches were thoroughly tested in LibreELEC. The only missing th=
ing =

is extending I2S driver to support channel allocation through DT, but that'=
s =

outside the scope of this series. Currently only 2 channels will work =

correctly.

Best regards,
Jernej




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
