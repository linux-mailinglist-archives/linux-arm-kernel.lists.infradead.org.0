Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 431711BD6FA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 10:18:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LhQlzUqmYrbrSBk39dn3WtF4w1F8z9LrjI5v1MFrJnA=; b=eFJq9g78bM4m14dbwL/PU9xdH
	Jw/e9B3Y2/w7Ak1trbHyf3aWwye2LCSvulZb8CZ2XIfu/IIUQhXrzYO9ZsNuqGrmfLn4vm9rdp+8i
	NxFXQ02OzcLI2Q6X/32JGaBixwZrQt84BEoH0nlOsR4+sxZQMX70lT+CPCVuOXaDO5W3QsW3Ddhjq
	F7+8qwLnAHH7ueK9fAJ0KIk6MUSxwEIQJGewxWwXK8LSVFcmrvv4WPcFW6Lhub22Mq9GGx72w84T8
	ZCDtfeECQVWdt5MlPFE7BaehQwdeXSh+Kkc1ku/zxucTqCIyJeQwAfiaAZjLUHIH7DuYRyktw5fMd
	VxBC4MAIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jThuk-00055Y-UB; Wed, 29 Apr 2020 08:17:54 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jThuc-00052B-AH
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 08:17:48 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id DDA5458027F;
 Wed, 29 Apr 2020 04:17:35 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 29 Apr 2020 04:17:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=9P7/0UPj4dCl+a9BcbVbxC2GgjY
 drzjTRocMwAg6NXE=; b=keE4AtNXGrlJztPQMSvbYzA7Oe3i6UvofEq6umdij9u
 Pux+ERdLZV7JTep+VMsZG5IsrOh444fgFLZl9YyywdvLKAfQyoPgjut0SQXoMkNg
 MHGXl9b7+6Y0BoQr2g6R/VG+4/h/XDkwBMhIKyzGp+wvh/jzyjGKEi5KHohISFaw
 zDyQU/FXhBE4V54O1LPLiylO4qSIM3zwtnp+CWayu2KXxTCe70//Ddo02l1ODMLd
 HqMbfr3mIQjQ+R6LTUEL1OCUpwU8FHNX4HBhpxj0i6iKbtSXP/daE4QTvhnsH3Nk
 ABybXh/saM33t73l/2NT5oiZIoMXeXOWHEW3anNfH6w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=9P7/0U
 Pj4dCl+a9BcbVbxC2GgjYdrzjTRocMwAg6NXE=; b=RMY1ao3DHXhAEwoo64/9W/
 Unc27nWmyVqTxWpZ5Kj/qOMTZBmTT1oygte96nP8AWbiNNARfWT1m89qqNQZvzOt
 VhHjcjw2etl5XyHGqS5Jpf7wsUt3ib3fvRdSmGeAtbw/amfNFZochFNcB2iVOgWl
 yRZZE4o8nQ96TECjUl9PmH6e5NTt0mXNW+OJaZlB/MR3MEWLKdE2pf9+V319E613
 wZjfVXqBR9Czu78uTwO0tx1wPomQ8ZZFc7Crru3/nnd5aGWKVIQTfq8HRUAFkd5H
 m1vCyW9OhIzTe4tXiNmsx4efwtSjoVDDVitG8IfFPZz7tsiCx2DZYw47D0HRtR1g
 ==
X-ME-Sender: <xms:HDipXu7Orb7mtmRyTUdO08HJWZCN3zjSbecqDbXTKzWsmuOfubFzag>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrieefgddtvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtudenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:HDipXsLkdyB2sG1xAavaIw6hOxf_IdCsCrC8B5mMM8fcgKyElVBcjQ>
 <xmx:HDipXoefFWuYxW3tciiXC1eTjQbRLfL5kjhrSjrqkKz-5sixcbKEQw>
 <xmx:HDipXvc_-zYT7s-dvtCYusmxXd0o1fK48WiUkuXcgs1kWs5fbGGbaw>
 <xmx:HzipXpKkrszbNmiG7DG5lVN15LJp3NBmmxbvcqPOnUAo1aQIYXxioQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 2F9863280063;
 Wed, 29 Apr 2020 04:17:32 -0400 (EDT)
Date: Wed, 29 Apr 2020 10:17:29 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [linux-sunxi] Re: Audio sound card name [was [PATCH 4/7] arm64:
 dts: allwinner: a64: Add HDMI audio]
Message-ID: <20200429081729.qa3gqtl5sof2jhem@gilmour.lan>
References: <20200426120442.11560-1-peron.clem@gmail.com>
 <20200426120442.11560-5-peron.clem@gmail.com>
 <20200428080020.35qcuylwq2ylmubu@gilmour.lan>
 <CAJiuCcc2LQ4L36KSfO8iLVFBUO6k+zsZFX+_Ovm_10PoWO4AsA@mail.gmail.com>
 <20200428160417.6q5oab2guaumhhwi@gilmour.lan>
 <CAJiuCccFFUJJzXwygLQbDK4fGJ61p72Hv7vj3WVP-=z=J1Yj0Q@mail.gmail.com>
 <031ee5d3-8a30-82ee-76db-c0e8a1073046@arm.com>
 <CAGb2v65rRbRpUTdkTF3hd5LnLQQt19YVOyVzM5te5XNVhQQH=A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGb2v65rRbRpUTdkTF3hd5LnLQQt19YVOyVzM5te5XNVhQQH=A@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_011746_496876_998C272E 
X-CRM114-Status: GOOD (  25.98  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Jernej Skrabec <jernej.skrabec@siol.net>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 Marcus Cooper <codekipper@gmail.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Mark Brown <broonie@kernel.org>,
 =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 Jaroslav Kysela <perex@perex.cz>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============2939203594578239520=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2939203594578239520==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="gt2wxqg5mx7iouyn"
Content-Disposition: inline


--gt2wxqg5mx7iouyn
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 29, 2020 at 02:24:00PM +0800, Chen-Yu Tsai wrote:
> On Wed, Apr 29, 2020 at 1:11 AM Robin Murphy <robin.murphy@arm.com> wrote:
> >
> > On 2020-04-28 5:49 pm, Cl=E9ment P=E9ron wrote:
> > > Hi Mark, Rob,
> > >
> > > On Tue, 28 Apr 2020 at 18:04, Maxime Ripard <maxime@cerno.tech> wrote:
> > >>
> > >> On Tue, Apr 28, 2020 at 10:54:00AM +0200, Cl=E9ment P=E9ron wrote:
> > >>> Hi Maxime,
> > >>>
> > >>> On Tue, 28 Apr 2020 at 10:00, Maxime Ripard <maxime@cerno.tech> wro=
te:
> > >>>>
> > >>>> On Sun, Apr 26, 2020 at 02:04:39PM +0200, Cl=E9ment P=E9ron wrote:
> > >>>>> From: Marcus Cooper <codekipper@gmail.com>
> > >>>>>
> > >>>>> Add a simple-soundcard to link audio between HDMI and I2S.
> > >>>>>
> > >>>>> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > >>>>> Signed-off-by: Marcus Cooper <codekipper@gmail.com>
> > >>>>> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> > >>>>> ---
> > >>>>>   arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 21 ++++++++++++=
+++++++
> > >>>>>   1 file changed, 21 insertions(+)
> > >>>>>
> > >>>>> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch=
/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > >>>>> index e56e1e3d4b73..08ab6b5e72a5 100644
> > >>>>> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > >>>>> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > >>>>> @@ -102,6 +102,25 @@
> > >>>>>                status =3D "disabled";
> > >>>>>        };
> > >>>>>
> > >>>>> +     hdmi_sound: hdmi-sound {
> > >>>>> +             compatible =3D "simple-audio-card";
> > >>>>> +             simple-audio-card,format =3D "i2s";
> > >>>>> +             simple-audio-card,name =3D "allwinner,hdmi";
> > >>>>
> > >>>> I'm not sure what the usual card name should be like though. I wou=
ld assume that
> > >>>> this should be something specific enough so that you're able to di=
fferentiate
> > >>>> between boards / SoC so that the userspace can choose a different =
configuration
> > >>>> based on it?
> > >>>
> > >>> I really don't know what we should use here,
> > >>> I just have a look at other SoC:
> > >>> rk3328: "HDMI"
> > >>> rk3399: "hdmi-sound"
> > >>> r8a774c0-cat874: "CAT874 HDMI sound"
> > >>>
> > >>> But maybe it's time to introduce proper name:
> > >>> What about :
> > >>> pat
> > >>> sun50i-h6-hdmi
> > >>
> > >> It's pretty much what we've been using for the other sound cards we =
have, so it
> > >> makes sense to me.
> > >
> > > I have a question regarding the simple-audio-card,name.
> > > In this patch, I would like to introduce a simple-audio-card for the
> > > Allwinner A64 HDMI.
> > >
> > > What should be the preferred name for this sound card?
> > > "sun50i-a64-hdmi" ? "allwinner, sun50i-a64-hdmi" ?
> >
> > I can at least speak for RK3328, and the reasoning there was that as the
> > user looking at what `aplay -l` says, I don't give a hoot about what the
> > SoC may be called, I see two cards and I want to know, with the least
> > amount of uncertainty, which one will make the sound come out of the
> > port that's labelled "HDMI" on the box ;)
>=20
> I agree. The user really doesn't care what SoC the system uses. The only
> real requirement is to be able to tell which output the card is related
> to, i.e. is it onboard or an external DAC, is it analog or HDMI, etc..

Yeah, but it's exactly the point.

If we also end up with "HDMI" as our card name, then the userspace has no w=
ay to
tell anymore if it's running from an rk3328 or an allwinner SoC, or somethi=
ng
else entirely. And therefore it cannot really configure anything to work ou=
t of
the box anymore.

Maxime

--gt2wxqg5mx7iouyn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXqk4GQAKCRDj7w1vZxhR
xdYuAQCSWAhkZ+elqEcbpxFkCF5lqsPWcmn8x+bXetvScA7cMgEAqsSiFvNk9/P6
g63BaHgYF/RoI8GqAS53kmmdYLmT1gs=
=tWdH
-----END PGP SIGNATURE-----

--gt2wxqg5mx7iouyn--


--===============2939203594578239520==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2939203594578239520==--

