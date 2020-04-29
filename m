Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53AE01BDB2F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 13:55:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yGoqbb20+4zO7kwpigeV3qKpNL0zSuX6sIrtI+2C7l8=; b=lRMlbnMashOR41DI/S95K9mKW
	41cR5eltf3SKxinYByhbhlXjvKn+KjattehLTeRtY5NabaJKA32+GI6GIY+14my06Rhz5hTnj/Yl8
	/VujY0FNrlyikXA1wdfxMsxtb+XJCe0HyAL4KnXRvX89blvJ3wT/DzimdYtjrM4u9f2rj9hzoup8C
	gJ8JQ8AUFlrx4f0x56DA+3ILQnUhf83ukipLVG6pbCxQY9V+DWEI7DT6D9qAJk6ZHtqXwc6+2VWvL
	er9IC/ogS7Pu9h6ESE0HE95xGtZN3fgUBO1catwRcFHp1VOomlMyEa6JZIbymILSqJBlaUtVrQ2U0
	NJMuhhIwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTlJa-0004Ni-MA; Wed, 29 Apr 2020 11:55:46 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTlJS-0004Mj-6K
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 11:55:39 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 649D7580314;
 Wed, 29 Apr 2020 07:55:37 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 29 Apr 2020 07:55:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=dqO1uMCWqJFLsR0cV26+3IQsPpV
 VDS6CVMvpUDRc208=; b=bmjsFp6SLenvJjotaHCkBfZ5KkQVF6god3HnO/E8SWF
 denZ2w9oYPVsDrUxPtE0ykYE2U4x4Fi9DTrvaM750MQx5bX3N6QkidDmk4ZlxXeX
 IeVE/2XppTx5KcE8FI6OZGG3DSk5yPjHKB2k8f+WmcQpS8iXOiSsVFl+PSO92bVT
 VAQlq7bRZD5L6eA4P+Tbnbr4dNLrLtp2WH6XWwRlEhtDpDFAuv9x2ZK48bsXv2zV
 zkxZfAkKbaSHh8jqmoS8yDHvOp29IjPGlD0XIX0cxEvFWlpcL0wugOf7bBUwjOcf
 TuwE7P3+9ZIGNIvKDaayeBs6mo1U9O4934vDKuca7UQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=dqO1uM
 CWqJFLsR0cV26+3IQsPpVVDS6CVMvpUDRc208=; b=WtKGPx9pWPJ4sB95s2CwXl
 IyNCe+j3wiRK4Cqsv6vyKNi0RySUn2gXSolClyVV6Q5rwX9x3ZKlTJ6sTV4M9X5b
 R81Wq6z+io2FgBmpNhO2jZsRtOnfElTWmCkyEEr4ZpWiCBlJkcq3+fYjdlOz3vgI
 /tdsTukuvF8at82bjrSAEA2/0W/ymr3IQKiFaxVYFWQATAoFfSA0ujNbIsn16tLf
 wd3YnmscQnm2+AMHXGoaem1ICRjuAyJL31eU8E1poa/zUGlZC/wGrNDfLaAqLUiG
 KIUSxPjNZEK88yhhgf/jH2EBv/4V7NpBneZFfB2HcYsCovozxwdb6Zsc9WAIA91Q
 ==
X-ME-Sender: <xms:NmupXteDl4s-MdjVzO0tBh6N3at3v9dV2xfEkWpvWvLzi8FxDa-JIg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrieefgdegiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtudenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:NmupXrUFQsxOLCsW-TNgyBHDzJuPcKlKlzJ9QqkEzkMxnEbMmsP9Lg>
 <xmx:NmupXmwZvM4pPUr_zRk0mLkWFMVKgbU6g71wxu8jna8s0aQj-eH0Lg>
 <xmx:NmupXrBy35_tOvDHyeAJyEEFv2s_csyeSARPKJIP0NzNMpEug_RLdg>
 <xmx:OWupXijrME8Cl8FQiMtY4G12tI9duzP52sMkmrae6gsXds90ZD6rsw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 41088328005E;
 Wed, 29 Apr 2020 07:55:34 -0400 (EDT)
Date: Wed, 29 Apr 2020 13:55:32 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [linux-sunxi] Re: Audio sound card name [was [PATCH 4/7] arm64:
 dts: allwinner: a64: Add HDMI audio]
Message-ID: <20200429115532.bdidkbvg5ckybwl5@gilmour.lan>
References: <20200426120442.11560-1-peron.clem@gmail.com>
 <20200426120442.11560-5-peron.clem@gmail.com>
 <20200428080020.35qcuylwq2ylmubu@gilmour.lan>
 <CAJiuCcc2LQ4L36KSfO8iLVFBUO6k+zsZFX+_Ovm_10PoWO4AsA@mail.gmail.com>
 <20200428160417.6q5oab2guaumhhwi@gilmour.lan>
 <CAJiuCccFFUJJzXwygLQbDK4fGJ61p72Hv7vj3WVP-=z=J1Yj0Q@mail.gmail.com>
 <031ee5d3-8a30-82ee-76db-c0e8a1073046@arm.com>
 <CAGb2v65rRbRpUTdkTF3hd5LnLQQt19YVOyVzM5te5XNVhQQH=A@mail.gmail.com>
 <20200429081729.qa3gqtl5sof2jhem@gilmour.lan>
 <f9b701d9-0c4e-6e41-1ce8-52adf0f59a2a@arm.com>
MIME-Version: 1.0
In-Reply-To: <f9b701d9-0c4e-6e41-1ce8-52adf0f59a2a@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_045538_376730_525429C6 
X-CRM114-Status: GOOD (  34.95  )
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
 Jernej Skrabec <jernej.skrabec@siol.net>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 Marcus Cooper <codekipper@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>,
 =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============5737924198811901607=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5737924198811901607==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5ybrpr7cgddwqn5w"
Content-Disposition: inline


--5ybrpr7cgddwqn5w
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi

(Sorry for ignoring a couple of mails from you, for some reason your mails
didn't end up in my Inbox)

On Wed, Apr 29, 2020 at 11:43:06AM +0100, Robin Murphy wrote:
> On 2020-04-29 9:17 am, Maxime Ripard wrote:
> > On Wed, Apr 29, 2020 at 02:24:00PM +0800, Chen-Yu Tsai wrote:
> > > On Wed, Apr 29, 2020 at 1:11 AM Robin Murphy <robin.murphy@arm.com> w=
rote:
> > > >=20
> > > > On 2020-04-28 5:49 pm, Cl=E9ment P=E9ron wrote:
> > > > > Hi Mark, Rob,
> > > > >=20
> > > > > On Tue, 28 Apr 2020 at 18:04, Maxime Ripard <maxime@cerno.tech> w=
rote:
> > > > > >=20
> > > > > > On Tue, Apr 28, 2020 at 10:54:00AM +0200, Cl=E9ment P=E9ron wro=
te:
> > > > > > > Hi Maxime,
> > > > > > >=20
> > > > > > > On Tue, 28 Apr 2020 at 10:00, Maxime Ripard <maxime@cerno.tec=
h> wrote:
> > > > > > > >=20
> > > > > > > > On Sun, Apr 26, 2020 at 02:04:39PM +0200, Cl=E9ment P=E9ron=
 wrote:
> > > > > > > > > From: Marcus Cooper <codekipper@gmail.com>
> > > > > > > > >=20
> > > > > > > > > Add a simple-soundcard to link audio between HDMI and I2S.
> > > > > > > > >=20
> > > > > > > > > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > > > > > > > > Signed-off-by: Marcus Cooper <codekipper@gmail.com>
> > > > > > > > > Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> > > > > > > > > ---
> > > > > > > > >    arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 21 +++=
++++++++++++++++
> > > > > > > > >    1 file changed, 21 insertions(+)
> > > > > > > > >=20
> > > > > > > > > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dts=
i b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > > > > > > > > index e56e1e3d4b73..08ab6b5e72a5 100644
> > > > > > > > > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > > > > > > > > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > > > > > > > > @@ -102,6 +102,25 @@
> > > > > > > > >                 status =3D "disabled";
> > > > > > > > >         };
> > > > > > > > >=20
> > > > > > > > > +     hdmi_sound: hdmi-sound {
> > > > > > > > > +             compatible =3D "simple-audio-card";
> > > > > > > > > +             simple-audio-card,format =3D "i2s";
> > > > > > > > > +             simple-audio-card,name =3D "allwinner,hdmi";
> > > > > > > >=20
> > > > > > > > I'm not sure what the usual card name should be like though=
=2E I would assume that
> > > > > > > > this should be something specific enough so that you're abl=
e to differentiate
> > > > > > > > between boards / SoC so that the userspace can choose a dif=
ferent configuration
> > > > > > > > based on it?
> > > > > > >=20
> > > > > > > I really don't know what we should use here,
> > > > > > > I just have a look at other SoC:
> > > > > > > rk3328: "HDMI"
> > > > > > > rk3399: "hdmi-sound"
> > > > > > > r8a774c0-cat874: "CAT874 HDMI sound"
> > > > > > >=20
> > > > > > > But maybe it's time to introduce proper name:
> > > > > > > What about :
> > > > > > > pat
> > > > > > > sun50i-h6-hdmi
> > > > > >=20
> > > > > > It's pretty much what we've been using for the other sound card=
s we have, so it
> > > > > > makes sense to me.
> > > > >=20
> > > > > I have a question regarding the simple-audio-card,name.
> > > > > In this patch, I would like to introduce a simple-audio-card for =
the
> > > > > Allwinner A64 HDMI.
> > > > >=20
> > > > > What should be the preferred name for this sound card?
> > > > > "sun50i-a64-hdmi" ? "allwinner, sun50i-a64-hdmi" ?
> > > >=20
> > > > I can at least speak for RK3328, and the reasoning there was that a=
s the
> > > > user looking at what `aplay -l` says, I don't give a hoot about wha=
t the
> > > > SoC may be called, I see two cards and I want to know, with the lea=
st
> > > > amount of uncertainty, which one will make the sound come out of the
> > > > port that's labelled "HDMI" on the box ;)
> > >=20
> > > I agree. The user really doesn't care what SoC the system uses. The o=
nly
> > > real requirement is to be able to tell which output the card is relat=
ed
> > > to, i.e. is it onboard or an external DAC, is it analog or HDMI, etc..
> >=20
> > Yeah, but it's exactly the point.
> >=20
> > If we also end up with "HDMI" as our card name, then the userspace has =
no way to
> > tell anymore if it's running from an rk3328 or an allwinner SoC, or som=
ething
> > else entirely. And therefore it cannot really configure anything to wor=
k out of
> > the box anymore.
>=20
> OK, you're a userspace audio application - enlighten me as to what exact
> chip you're running on here, and why you need to know:
>=20
> card 0: HDMI [HDA ATI HDMI]
>=20
> or how about here?
>=20
> card 0: Intel [HDA Intel]
>=20
>=20
> Furthermore, your argument works both ways - if the equivalent (or in com=
mon
> cases like DesignWare IP blocks, exact same) thing across 3 different SoCs
> has 3 different names, then it's that much harder for userspace that wants
> to present a consistent behaviour. I don't know exactly why LibreELEC have
> downstream patches that standardise all the Rockchip ones to "HDMI", but I
> can't help noting that they do.
>=20
> With simple-audio-card we're talking about trivial interfaces that often
> don't expose any controls at all, so there's unlikely to be much
> 'configuration' for userspace to do beyond choosing which card to output =
to.

That's not really true though. simple-audio-card is used when the connection
between the DAIs is simple. It doesn't mean that the configuration of the C=
PU
DAI (i2s controller in that case) or the configuration of the codec are sim=
ple,
and with pretty featureful codecs, between the various muxes and amps, it c=
an
actually be quite difficult to get the combination of controls you need to
change to output something on the output you expected.

Maxime

--5ybrpr7cgddwqn5w
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXqlrNAAKCRDj7w1vZxhR
xeCzAP41z2Rn5Qp0+rELbXDd5d1uWOihXOwFJ1v2SyU5PkqVigEAjOqVA3ewWwoA
SR1flkEYAUZC1Ld8z7VJczJ12vkh5QQ=
=Tshz
-----END PGP SIGNATURE-----

--5ybrpr7cgddwqn5w--


--===============5737924198811901607==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5737924198811901607==--

