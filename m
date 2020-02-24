Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20AAA16AB11
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 17:14:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RjgOuR5YWLy94qq/VlFAblJuu2vnURoUWnE6F7R0QJI=; b=iLSowddCCdUXS4uohnp5dMf63
	qOeHEo6ZIjnKrVo37pBgoX7y0kISKGNs1gSXJmATet9kNYIjbvXN0zmPYts8pKvL3btKPAHCvCUPT
	CjunVEZNOb8315W+I/ewhersoPixS9OC3STfmvr62YWGy0lwQ0hQOHk3uD1/cGnggOGwRB82Q/KZX
	Px1oyfOjzaoh6y2Fobkd1OwpLLpaDv/fIV9liFdZtMIz4s048j+ovLbtLSYx17ZEWjaM9isZ2IoWs
	hT6VgJ3PnupaLPG0EctaOg5r5izacGZrp9xVGiNU83nwRy/ynSCBAVbmm/f7WlWIBXhu4tDcBQC6U
	4yTsvT36Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6GMn-0002h9-AF; Mon, 24 Feb 2020 16:13:57 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6GMU-0002dl-KN
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 16:13:43 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 394406D98;
 Mon, 24 Feb 2020 11:13:37 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 11:13:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=q96RioY8BsR7brS2orsnP3F5i2+
 XuFH0NxA6g4n1MCU=; b=SIibQvtYJJh2Z2bUPQ48iYczwowW5hI6SjxL8fF0bXz
 F6AAgLsYlkg+gV2inWgm6U4JrwoJneHW5GivyL7tcsyi2+iXFvq0VTTLs5xeoUgh
 ailh6Dh9OgE3NXpemYsA856ULtNHOBA5acxXqzJfut03zx5YYgJTlFvmqocFSm3S
 uJTJ6RFp+UzBUlV15JegYoCOiVnU76HPRuXAZBKJXLfT66Gaag2X7UhrutopD+4o
 J6u8IPjcO2UCX7Ssannt2obo0P/00Y+jZTUfXYh0oh2HFgUL1CZZRXMX8wGeqVBr
 NFop4LE991CuM0p9dy59PrxKZT318SOVSDUVp9BIV2A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=q96Rio
 Y8BsR7brS2orsnP3F5i2+XuFH0NxA6g4n1MCU=; b=D0LBK/mU6zq4aSxI3aFkS+
 cJyPXCWrMTo9T8gFaOcdnYJCNVHBUyfo7V+mcvrGl+6EdlAYCWQy4fCUhjJnhg6I
 nm3WXkZdFcH0J6juNF5pAr6xqrXJbmulOGhrau7eI8FqLkV4EyI03yIuZ1pKV81H
 Tc2MvzW+yh6ChrTjwiUyEI3RrnGuM33b3LQQgtgg7EvUz7IHnFl2mXgiHpH5F6C5
 kiXIgSUXPLi/e2gq1bCFeC1lBt0VG2ZQHMUCR2yTK0lsv3Zdrx2J+9rVY+aZ9ZvE
 1Oa1xwNu5NYgJltfSMKIfVyYl4Mx+5fecqGx20Zqgm145hD5bJqdIS26aicBnN6A
 ==
X-ME-Sender: <xms:K_ZTXkUHZiy6j97bmy8d0Os2zHpOjxeK2KImr6kSrVri8LZVlSmlvA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtgdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtjeenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucffohhmrghinh
 epmhgvghhouhhsrdgtohhmnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnh
 hordhtvggthh
X-ME-Proxy: <xmx:K_ZTXkRPO4_FWkOhOcK2nQxPBWEYRmY-26Ox5oXgsE0HYez1wQJw_w>
 <xmx:K_ZTXk3ZnICLKmJW8vVOJQaPyH2Q0TFjVX5J6euuKA3NGhsPf6IFEw>
 <xmx:K_ZTXseLHSN4asOJKE6unoum5NglQFv8lGw0n_gfai21t__grIUP2Q>
 <xmx:MfZTXssX3z2zJY4pHhinKCkREtdRqWuWVnrYW0oW6ONYFwu01yOVjg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id ACEC33060F9B;
 Mon, 24 Feb 2020 11:13:31 -0500 (EST)
Date: Mon, 24 Feb 2020 17:13:30 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: linux-sunxi@googlegroups.com, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Mark Rutland <mark.rutland@arm.com>, Luca Weiss <luca@z3ntu.xyz>,
 Tomas Novotny <tomas@novotny.cz>, linux-input@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 3/4] ARM: dts: sun8i-a83t-tbs-a711: Add support for the
 vibrator motor
Message-ID: <20200224161330.4att6sleqm3al47f@gilmour.lan>
References: <20200222231428.233621-1-megous@megous.com>
 <20200222231428.233621-4-megous@megous.com>
 <20200224091059.lljffogofbexhudt@gilmour.lan>
 <20200224141437.opcsfhozfppulu4g@core.my.home>
MIME-Version: 1.0
In-Reply-To: <20200224141437.opcsfhozfppulu4g@core.my.home>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_081339_006935_91C346FB 
X-CRM114-Status: GOOD (  19.23  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: multipart/mixed; boundary="===============5137303076235629779=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5137303076235629779==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zp4wvrz5w52hdyou"
Content-Disposition: inline


--zp4wvrz5w52hdyou
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 24, 2020 at 03:14:37PM +0100, Ond=C5=99ej Jirman wrote:
> Hello,
>
> On Mon, Feb 24, 2020 at 10:10:59AM +0100, Maxime Ripard wrote:
> > Hi,
> >
> > On Sun, Feb 23, 2020 at 12:14:27AM +0100, Ondrej Jirman wrote:
> > > The board has a vibrator mottor. Hook it to the input subsystem.
> > >
> > > Signed-off-by: Ondrej Jirman <megous@megous.com>
> > > ---
> > >  arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts | 5 +++++
> > >  1 file changed, 5 insertions(+)
> > >
> > > diff --git a/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts b/arch/arm/boo=
t/dts/sun8i-a83t-tbs-a711.dts
> > > index 2fd31a0a0b344..a22920275e99b 100644
> > > --- a/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts
> > > +++ b/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts
> > > @@ -99,6 +99,11 @@ panel_input: endpoint {
> > >  		};
> > >  	};
> > >
> > > +	vibrator {
> > > +		compatible =3D "gpio-vibrator";
> > > +		vcc-supply =3D <&reg_ldo_io1>;
> > > +	};
> > > +
> >
> > LDO IO1 can also be muxed in as a GPIO iirc, why did you choose the
> > regulator instead?
>
> According to the specification, LDO needs to be enabled (value 0b11)
> to achieve the specified max driving current of 150mA:
>
>   https://megous.com/dl/tmp/92b7d9d94820c3ba.png
>
> Otherwise the chip is probably just using the regular CMOS logic output
> (typically limited to around 20-35mA, but not specified in this datasheet=
),
> which would be probably overdriven, if we try to drive the motor with it.
>
> And since we're driving a motor directly, the more the better.

Ok, that works for me then. This is typically the kind of things that
should be in your commit log though, since it's basically the
motivation for doing what you're doing in your patches.

Maxime

--zp4wvrz5w52hdyou
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXlP2KgAKCRDj7w1vZxhR
xcqcAQCXerWJNQWeY178xiMvfPAmMNbC8H5ZByXeaxC/SXh6uwD+IosF9jDvAZpG
y+FKGGhJKhcy68xqvVnjrDUxrAJjKg4=
=Cv2A
-----END PGP SIGNATURE-----

--zp4wvrz5w52hdyou--


--===============5137303076235629779==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5137303076235629779==--

