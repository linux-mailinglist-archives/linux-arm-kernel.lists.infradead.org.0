Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A60731BDAF2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 13:46:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=r0YjGcpH7GjiJh5sdN9OvcMqcufj9YviGKFFRE6huwc=; b=Xm8Xwvqh1Ge+gIL6aY9OfH9Nf
	CbeXAavrtQxdJ7WqsHDsyfXY3BuPjxPNwd85VdhkXH29mceNlI4haJQXFkkD30sCbr5MMzwI/Qt8d
	D78wrirkb1jmPItjFit+ESvrOzwP9ShBLkP65vdZs/AelCRBWztZ/vxc663D/9gWbeB/sLvqYi/YZ
	/DDQNyiIyaMJW3kFDj4Fb5wZ3k0neJmBf5V/q4ZrAgfiz6POqCAkqagU9KHLfmCi5l3SxPnDK4O9E
	u2i7fxq3mi+6vbvATMz+IMrSf0rp2oNvS1ZXPihy6VLztL1KxEqAFyrRkPAMP6A0GxjcINS8MHHYO
	QxefN3W+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTlAr-00063U-4T; Wed, 29 Apr 2020 11:46:45 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTlAh-00062H-2k
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 11:46:37 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id B012458030E;
 Wed, 29 Apr 2020 07:46:30 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 29 Apr 2020 07:46:30 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=ZvEbMMVJZDjdYM1QIg1icW+9stZ
 lmLb6CDKcUuaXfzU=; b=nt7DMfvs09Xpfb4vMkdvm05rRcvwWcLUhdETj3btMVA
 A+XvMS92TvDxU9m23JCI4fBEeVRqfxI9CI1X3rqINObTwtwIAStAf+8qn7avVywp
 Yor8GkgXTToRF4fT9+7fT8dt6e0sAQe8GF2XWztEFMD9W+N9WzRanHdpPUgB6McQ
 rmk3+YOr5UBPQG3I+XPjwkTot7fbseok7JzqxVdwlQv69EAYgy1Vdqk9yh/CNcjp
 eMErMhoA36RDL7VQSYH+SkUVbxD9Zlv5CYYVVovrat7bg5JmBSNp+6JY6JeZq/Vy
 MyldqXkcGYFSywKos1Uv7XP+TRwcPdVkVa2fXGNjIyw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=ZvEbMM
 VJZDjdYM1QIg1icW+9stZlmLb6CDKcUuaXfzU=; b=rlPz/pkkcy2dWpdUvlv/ir
 vtYrFA3ulb/eg/SUSyojJ43Rke6QNhg6iK1J/aWZQW6f5jXcl9ANPyEYVpeanNOb
 4OmrlWo2CaMtgNEWZFdkpENTBvRpgSe6dxk05va1kKjj18o63s00Kj7QU6nxJsK+
 lJ4tXcxVJAy2wN2kMw1CgmdW3e9Q+YbCuonb3yc8u1Ld9O7pP+o4d9dGdIq8rOxU
 2z7ESY2ra6RnQRncBBa3LaUczGZi5xwiDWVpG9vhUTFq9CiSUVRo3z6nOe+ABOml
 iinoH7vsAQDDLnAeH2q6p508IuJJwatYPZRreESJiDJ5l+mMduNrV/kBVc0DcUJg
 ==
X-ME-Sender: <xms:EmmpXuTaL7jyB6NagF09nlADw6Aax82osf7BTuPnrEkualPhNvwnJg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrieefgdeggecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtjeenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:EmmpXhoRDmaFEZmMKkZYlTnR41LhUIIaZjImCqFD5DuSuWYwZTJ6Tg>
 <xmx:EmmpXk4YKBMkvssvjHwCf-xmflLWnMlrS6zCCRxPtLo3U6bnw-T0mA>
 <xmx:EmmpXrTK4tSAKnOToVeZoK2zqD-uOFytxzDEFTmJTMUPo4p90Yq_fQ>
 <xmx:FmmpXpm6TPT8FydYLZ2eCifKzK9BEs3u5n3J33Z3y7xJ7NT41Eidaw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 914093280063;
 Wed, 29 Apr 2020 07:46:26 -0400 (EDT)
Date: Wed, 29 Apr 2020 13:46:24 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@siol.net>
Subject: Re: [linux-sunxi] Re: Audio sound card name [was [PATCH 4/7] arm64:
 dts: allwinner: a64: Add HDMI audio]
Message-ID: <20200429114624.42chsbmnsk36jtqw@gilmour.lan>
References: <20200426120442.11560-1-peron.clem@gmail.com>
 <20200429081729.qa3gqtl5sof2jhem@gilmour.lan>
 <f9b701d9-0c4e-6e41-1ce8-52adf0f59a2a@arm.com>
 <2545943.S5iK65abk1@jernej-laptop>
MIME-Version: 1.0
In-Reply-To: <2545943.S5iK65abk1@jernej-laptop>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_044635_488356_C7F4B565 
X-CRM114-Status: GOOD (  33.79  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Marcus Cooper <codekipper@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>,
 =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 Jaroslav Kysela <perex@perex.cz>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============8056231184735411169=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8056231184735411169==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ksk6gvoylw54ps5r"
Content-Disposition: inline


--ksk6gvoylw54ps5r
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 29, 2020 at 12:53:49PM +0200, Jernej =C5=A0krabec wrote:
> Dne sreda, 29. april 2020 ob 12:43:06 CEST je Robin Murphy napisal(a):
> > On 2020-04-29 9:17 am, Maxime Ripard wrote:
> > > On Wed, Apr 29, 2020 at 02:24:00PM +0800, Chen-Yu Tsai wrote:
> > >> On Wed, Apr 29, 2020 at 1:11 AM Robin Murphy <robin.murphy@arm.com>=
=20
> wrote:
> > >>> On 2020-04-28 5:49 pm, Cl=C3=A9ment P=C3=A9ron wrote:
> > >>>> Hi Mark, Rob,
> > >>>>=20
> > >>>> On Tue, 28 Apr 2020 at 18:04, Maxime Ripard <maxime@cerno.tech> wr=
ote:
> > >>>>> On Tue, Apr 28, 2020 at 10:54:00AM +0200, Cl=C3=A9ment P=C3=A9ron=
 wrote:
> > >>>>>> Hi Maxime,
> > >>>>>>=20
> > >>>>>> On Tue, 28 Apr 2020 at 10:00, Maxime Ripard <maxime@cerno.tech>=
=20
> wrote:
> > >>>>>>> On Sun, Apr 26, 2020 at 02:04:39PM +0200, Cl=C3=A9ment P=C3=A9r=
on wrote:
> > >>>>>>>> From: Marcus Cooper <codekipper@gmail.com>
> > >>>>>>>>=20
> > >>>>>>>> Add a simple-soundcard to link audio between HDMI and I2S.
> > >>>>>>>>=20
> > >>>>>>>> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > >>>>>>>> Signed-off-by: Marcus Cooper <codekipper@gmail.com>
> > >>>>>>>> Signed-off-by: Cl=C3=A9ment P=C3=A9ron <peron.clem@gmail.com>
> > >>>>>>>> ---
> > >>>>>>>>=20
> > >>>>>>>>    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 21
> > >>>>>>>>    +++++++++++++++++++
> > >>>>>>>>    1 file changed, 21 insertions(+)
> > >>>>>>>>=20
> > >>>>>>>> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > >>>>>>>> b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi index
> > >>>>>>>> e56e1e3d4b73..08ab6b5e72a5 100644
> > >>>>>>>> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > >>>>>>>> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > >>>>>>>> @@ -102,6 +102,25 @@
> > >>>>>>>>=20
> > >>>>>>>>                 status =3D "disabled";
> > >>>>>>>>        =20
> > >>>>>>>>         };
> > >>>>>>>>=20
> > >>>>>>>> +     hdmi_sound: hdmi-sound {
> > >>>>>>>> +             compatible =3D "simple-audio-card";
> > >>>>>>>> +             simple-audio-card,format =3D "i2s";
> > >>>>>>>> +             simple-audio-card,name =3D "allwinner,hdmi";
> > >>>>>>>=20
> > >>>>>>> I'm not sure what the usual card name should be like though. I =
would
> > >>>>>>> assume that this should be something specific enough so that yo=
u're
> > >>>>>>> able to differentiate between boards / SoC so that the userspace
> > >>>>>>> can choose a different configuration based on it?
> > >>>>>>=20
> > >>>>>> I really don't know what we should use here,
> > >>>>>> I just have a look at other SoC:
> > >>>>>> rk3328: "HDMI"
> > >>>>>> rk3399: "hdmi-sound"
> > >>>>>> r8a774c0-cat874: "CAT874 HDMI sound"
> > >>>>>>=20
> > >>>>>> But maybe it's time to introduce proper name:
> > >>>>>> What about :
> > >>>>>> pat
> > >>>>>> sun50i-h6-hdmi
> > >>>>>=20
> > >>>>> It's pretty much what we've been using for the other sound cards =
we
> > >>>>> have, so it makes sense to me.
> > >>>>=20
> > >>>> I have a question regarding the simple-audio-card,name.
> > >>>> In this patch, I would like to introduce a simple-audio-card for t=
he
> > >>>> Allwinner A64 HDMI.
> > >>>>=20
> > >>>> What should be the preferred name for this sound card?
> > >>>> "sun50i-a64-hdmi" ? "allwinner, sun50i-a64-hdmi" ?
> > >>>=20
> > >>> I can at least speak for RK3328, and the reasoning there was that a=
s the
> > >>> user looking at what `aplay -l` says, I don't give a hoot about wha=
t the
> > >>> SoC may be called, I see two cards and I want to know, with the lea=
st
> > >>> amount of uncertainty, which one will make the sound come out of the
> > >>> port that's labelled "HDMI" on the box ;)
> > >>=20
> > >> I agree. The user really doesn't care what SoC the system uses. The =
only
> > >> real requirement is to be able to tell which output the card is rela=
ted
> > >> to, i.e. is it onboard or an external DAC, is it analog or HDMI, etc=
=2E.
> > >=20
> > > Yeah, but it's exactly the point.
> > >=20
> > > If we also end up with "HDMI" as our card name, then the userspace ha=
s no
> > > way to tell anymore if it's running from an rk3328 or an allwinner So=
C,
> > > or something else entirely. And therefore it cannot really configure
> > > anything to work out of the box anymore.
> >=20
> > OK, you're a userspace audio application - enlighten me as to what exact
> > chip you're running on here, and why you need to know:
> >=20
> > card 0: HDMI [HDA ATI HDMI]
> >=20
> > or how about here?
> >=20
> > card 0: Intel [HDA Intel]
> >=20
> >=20
> > Furthermore, your argument works both ways - if the equivalent (or in
> > common cases like DesignWare IP blocks, exact same) thing across 3
> > different SoCs has 3 different names, then it's that much harder for
> > userspace that wants to present a consistent behaviour. I don't know
> > exactly why LibreELEC have downstream patches that standardise all the
> > Rockchip ones to "HDMI", but I can't help noting that they do.
> >=20
> > With simple-audio-card we're talking about trivial interfaces that often
> > don't expose any controls at all, so there's unlikely to be much
> > 'configuration' for userspace to do beyond choosing which card to outpu=
t to.
>=20
> Only difference is slightly different version of HDMI controller and diff=
erent
> This combination (DesignWare HDMI controller + I2S) is same as on Rockchi=
p.
> I2S core.

Well, that fact only is already information that is not carried on to the
userspace. Think about it this way: let's say you run Debian, you just inst=
alled
it without any configuration, and you don't have any knowledge about the
hardware, you're just a user. Can the OS know how to configure that output =
based
on the card name "HDMI" alone?

HDMI is an easy one compared to the i2s + codec combinations we might have,=
 but
it already has some interesting differences between hardwares. For example,=
 the
RPi iirc needs an IEC958 format, while this one works just fine with a stan=
dard
PCM format.

Maxime

--ksk6gvoylw54ps5r
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXqlpEAAKCRDj7w1vZxhR
xceuAQD7ZQuXykpB0izmXzhIHRMLAEuqdSkBj//F5pIRAU3Y9AEAvovq1h0wrKWg
oGOAHmXqkZsagk6Icg0LvTMvw26v0QA=
=eKGm
-----END PGP SIGNATURE-----

--ksk6gvoylw54ps5r--


--===============8056231184735411169==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8056231184735411169==--

