Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDB7719F239
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 11:13:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=E2UkfBqORTGyaD+vZB+AN3b+6+VnUKSB0u99slDqeGI=; b=S3jEF2MixYQCo+oPKRHx1SoIt
	t4Q5o+h+UjKxZZjNt/aHPh1pRb22+V0xd+5w7QfTNXjbo3YqMiggGT8M16z5hwFlkHFcYkq01FHsN
	BLPbi22qXCgIFlUUYPN57y51XLlZhe/iBhHDucP92PpW/kbAHCAmYQiKqoUoI405mkVxdWmPObJOD
	p2KmzZRzLkQVLPJtS560YB9BrWOqI+n7/+G48SLg3t/KgpzO8dKbIgxNTJYf37wyy/GVarg9NvU0y
	9786Y2NIepL+6IQkRzIkhPj9w8ZBsR9BbsVN+DW8PC/yF0nbdN3zjMYllDFUFXT/eI9fvQGfheM3D
	SeSr9Ti2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLNoz-0007Jk-VJ; Mon, 06 Apr 2020 09:13:33 +0000
Received: from jabberwock.ucw.cz ([46.255.230.98])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLNos-0007Il-A0; Mon, 06 Apr 2020 09:13:29 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 575E91C4527; Mon,  6 Apr 2020 11:13:19 +0200 (CEST)
Date: Mon, 6 Apr 2020 11:13:13 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 1/6] arm64: dts: rockchip: rk3399-roc-pc: Fix MMC
 numbering for LED triggers
Message-ID: <20200406091313.GF31120@duo.ucw.cz>
References: <20200327030414.5903-2-wens@kernel.org>
 <684a08e6-7dfe-4cb1-2ae5-c1fb4128976b@gmail.com>
 <CAGb2v65ayZwN14S-Pzu2ip1K=fgzTbNB=ZzUcpou-jtv8m6vBA@mail.gmail.com>
 <ccf35a92-7005-9c6d-a8a2-c17b714a60bc@arm.com>
MIME-Version: 1.0
In-Reply-To: <ccf35a92-7005-9c6d-a8a2-c17b714a60bc@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_021326_996472_75D9A49B 
X-CRM114-Status: GOOD (  16.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.255.230.98 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org,
 Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, jacek.anaszewski@gmail.com,
 Johan Jonker <jbx6244@gmail.com>, Chen-Yu Tsai <wens@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============1435186325796203393=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1435186325796203393==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ExXT7PjY8AI4Hyfa"
Content-Disposition: inline


--ExXT7PjY8AI4Hyfa
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> > > arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dt.yaml: leds:
> > > diy-led:linux,default-trigger:0: 'mmc2' is not one of ['backlight',
> > > 'default-on', 'heartbeat', 'disk-activity', 'ide-disk', 'timer', 'pat=
tern']
> > > arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dt.yaml: leds:
> > > yellow-led:linux,default-trigger:0: 'mmc1' is not one of ['backlight',
> > > 'default-on', 'heartbeat', 'disk-activity', 'ide-disk', 'timer', 'pat=
tern']
> >=20
> > Maybe we should just get rid of linux,default-trigger then?
>=20
> In this particular case, I'd say it's probably time to reevaluate the rat=
her
> out-of-date binding. The apparent intent of the "linux,default-trigger"
> property seems to be to describe any trigger supported by Linux, so either
> the binding wants to be kept in sync with all the triggers Linux actually
> supports, or perhaps it should just be redefined as a free-form

It is enough to keep it in sync with all the triggers we actually use :-).

> I'd be slightly inclined towards the latter, since the schema validator
> can't know whether the given trigger actually corresponds to the correct
> thing for whatever the LED is physically labelled on the board/case, nor
> whether the version(s) of Linux that people intend to use actually support
> that trigger (since it doesn't have to be the version contemporary with t=
he
> schema definition), so strict validation of this particular property seems
> to be of limited value.

But freeform seems acceptable, too.

> > > > -             diy-led {
> > > > +             diy_led: diy-led {
> > > >                        label =3D "red:diy";
> > > >                        gpios =3D <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
> > > >                        default-state =3D "off";
> > > >                        linux,default-trigger =3D "mmc1";
> > > >                };

This label probably should be "mmc1:red:activity" or something like that.

> > > > -             yellow-led {
> > > > +             yellow_led: yellow-led {
> > > >                        label =3D "yellow:yellow-led";
> > > >                        gpios =3D <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
> > > >                        default-state =3D "off";

And this label should be changed, too.

Best regards,
									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--ExXT7PjY8AI4Hyfa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCXoryqQAKCRAw5/Bqldv6
8ulxAJ9JvBVEpW4qxrGrRgIxyoWrDXPWaACglhyoV7FLpZSAdi34M9to1ysGuB4=
=FV4E
-----END PGP SIGNATURE-----

--ExXT7PjY8AI4Hyfa--


--===============1435186325796203393==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1435186325796203393==--

