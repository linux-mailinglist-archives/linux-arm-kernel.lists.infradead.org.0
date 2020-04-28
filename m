Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C62D51BC471
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 18:04:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=u3d88MMNxqGnqcQkvoBDy3WkHWLJAu/8sWOpnGZPhw8=; b=l6VsuDNm/+AVOTznBeQgbht2P
	cRiXgkyoD0OeaDZQtumOJv5aYl4totw3gWoib4jT4Hg/+b2Neuqx626fPn0VIDKMQP5UMNxQDanT0
	H4EIM9ejPdmoxxPVgMl5N5RO3EFxacDFMaDKSVBfDiVme/A9ths4t2z/X4nhmP0gcpM3BRn4ht8Yt
	qyOC63/8IqaChfYOwlQrLmOrNens6+VkPD1MaxbpgBcOSMLdWpoaEimVMTw1zn3ZV3O3QCAcMsT0w
	AqaISPy82i/ePNspzLv8dgeJMzrtOEJWQzf/EXRNc/qxQIjnR6QdJ+EzIUwprH5RYeCJjVQhgjp+0
	rCeLYqOMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTSiq-00009m-MH; Tue, 28 Apr 2020 16:04:36 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTSig-00008s-G1
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 16:04:27 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 2FE3D5FA;
 Tue, 28 Apr 2020 12:04:21 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 28 Apr 2020 12:04:22 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=sOFZ1jPclsSm3u+h/VuhDsJZx7b
 YOtqGCr5nWlpsVh8=; b=ekHX1BRP+1TfVz1t22l+bCdNvO/JzeQA6e1nC954d4t
 rugCIEuZ2M2dWlEhMvSRZ4oA5UJN/TFTwHhTkMpX1eHjW/IJqhA24mA1ZLW6ADi2
 ds41Pi/0PKU7IBUJztJ2fMbH24oDPRpcSKr6TSlUTNwnoEfEms/G9QS+fKVl2iKT
 g17IGuNcD1m7j2dzaLwyBq/6ZKpJhDjPiYaWNu/1F6BavVzE/KrjFM7DsilU6TLr
 0lHD+FzZygGLcEevSvRb7A7f4NwRtsm2kphDtYfD1ry+lzvYJvHRigGWVNR+z6+T
 69c0QuwMZlF4ksNiGEovncrc1hbLSbJT8v1snxvA1Wg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=sOFZ1j
 PclsSm3u+h/VuhDsJZx7bYOtqGCr5nWlpsVh8=; b=gXKvxnxNmCf3WzsWvfJxkq
 RNCq20RIfaux0rfvjpbZCbZgyGFomX2PW8pAhVUDi0QyecEHnbpX6L5R7JlQ1EpD
 aWZSxc8TjVtV/jCZlbvZ6UFzl+c0Z6sIfRUmbtnKfgnKE8XRtgjUEh6tk/dEy/bH
 NrGFoDPbAk6vIDYzpPMPbJh7RqPmEXKOp6tnBRLNah4Wuoj9k73C/VlBfQV+H4SC
 1kdf8Ieh8ZjyLvNXatnoL4SRDZBt2lidxPam/d8XFQMLbSvKCXDpHvYkMHgyb6Nr
 mj2OTA1MuhWAd3DkcEOFCMtT7c3E5O7D9A15hCLzhdqhDMajahNsznB2+jBc1Iew
 ==
X-ME-Sender: <xms:A1SoXgPyPISErhLyus-Su-GMKMbZFWO0F3E6774q64G3isa-TqfrWw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedriedugdelhecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtudenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:A1SoXgqgsqFCW-8s3uz2IiEo8frR3GgpaC4i3pHB53t_H9S02lhFcw>
 <xmx:A1SoXmlhcIkmeYJJhvXDDXSA7D1pqfRXHo3SIVaJiuGm_E6fEuZRag>
 <xmx:A1SoXgzuKmdtl820vHTZvitDHafGzX5L1UfDZrxYMyTmPJNgbsVMng>
 <xmx:BFSoXu5UwG_QI_x28zWwyD59bvLsERgxEGoqiXQ7gqsokpHr_cgGY4ZNc2I>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 0FF803280059;
 Tue, 28 Apr 2020 12:04:18 -0400 (EDT)
Date: Tue, 28 Apr 2020 18:04:17 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH 4/7] arm64: dts: allwinner: a64: Add HDMI audio
Message-ID: <20200428160417.6q5oab2guaumhhwi@gilmour.lan>
References: <20200426120442.11560-1-peron.clem@gmail.com>
 <20200426120442.11560-5-peron.clem@gmail.com>
 <20200428080020.35qcuylwq2ylmubu@gilmour.lan>
 <CAJiuCcc2LQ4L36KSfO8iLVFBUO6k+zsZFX+_Ovm_10PoWO4AsA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJiuCcc2LQ4L36KSfO8iLVFBUO6k+zsZFX+_Ovm_10PoWO4AsA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_090426_573918_513CFD75 
X-CRM114-Status: GOOD (  19.65  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Takashi Iwai <tiwai@suse.com>,
 Rob Herring <robh+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Marcus Cooper <codekipper@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============6599983107422689631=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6599983107422689631==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rbultuas4kxpkny5"
Content-Disposition: inline


--rbultuas4kxpkny5
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 28, 2020 at 10:54:00AM +0200, Cl=E9ment P=E9ron wrote:
> Hi Maxime,
>=20
> On Tue, 28 Apr 2020 at 10:00, Maxime Ripard <maxime@cerno.tech> wrote:
> >
> > On Sun, Apr 26, 2020 at 02:04:39PM +0200, Cl=E9ment P=E9ron wrote:
> > > From: Marcus Cooper <codekipper@gmail.com>
> > >
> > > Add a simple-soundcard to link audio between HDMI and I2S.
> > >
> > > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > > Signed-off-by: Marcus Cooper <codekipper@gmail.com>
> > > Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> > > ---
> > >  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 21 +++++++++++++++++=
++
> > >  1 file changed, 21 insertions(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm=
64/boot/dts/allwinner/sun50i-a64.dtsi
> > > index e56e1e3d4b73..08ab6b5e72a5 100644
> > > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > > @@ -102,6 +102,25 @@
> > >               status =3D "disabled";
> > >       };
> > >
> > > +     hdmi_sound: hdmi-sound {
> > > +             compatible =3D "simple-audio-card";
> > > +             simple-audio-card,format =3D "i2s";
> > > +             simple-audio-card,name =3D "allwinner,hdmi";
> >
> > I'm not sure what the usual card name should be like though. I would as=
sume that
> > this should be something specific enough so that you're able to differe=
ntiate
> > between boards / SoC so that the userspace can choose a different confi=
guration
> > based on it?
>=20
> I really don't know what we should use here,
> I just have a look at other SoC:
> rk3328: "HDMI"
> rk3399: "hdmi-sound"
> r8a774c0-cat874: "CAT874 HDMI sound"
>=20
> But maybe it's time to introduce proper name:
> What about :
> sun50i-a64-hdmi
> sun50i-h6-hdmi

It's pretty much what we've been using for the other sound cards we have, s=
o it
makes sense to me.

> How should we handle this with h3 / h5 ?
> settings the simple-audio-card,name in each SoC dts?
> Or using sun50i-h3-hdmi as they are both identical?

Yeah, we can do the latter

Maxime

--rbultuas4kxpkny5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXqhUAQAKCRDj7w1vZxhR
xThzAQCdfGqGBenInfXFcERmsGo6KmDYj/IpfZqqLJhS7hMAmAEAu4oEes/hmj4+
lop9h0Zfn5J8S9rkeex26DXrp2LOsQY=
=x+kX
-----END PGP SIGNATURE-----

--rbultuas4kxpkny5--


--===============6599983107422689631==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6599983107422689631==--

