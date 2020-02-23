Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A42169AA9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 00:17:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TY/LdsFQc4CfOmUeR5Bz1D3/dRc+UPUR/8IPUedMAlQ=; b=NPWVdEZCUb1nskEwDK+36ADle
	6wDMoQc1j8rdRqXzmUhBEjaa/8y0tYJmO0PGDFmhN9cV4H6wTEHBc7DdyHxC4VMiNClMpAUos9/co
	WeHx+km3SRIk5Yjh124Y/vzA4UctEWcj2hfiqIIFKeHWJoTwPS6e1bV/iCOdMgk5Z27nQga22S6hz
	P2K2OzCPYyUaPMfT25rtmTeaBoRhHXB57Nsr9HjJIY+vEjp8vzASwwutCxMAXECzZpYpDsU2iqW39
	LKwTPQVEQXIawUsAmoNgzLapQnRo8kbSG8wuMAi/VIyHZkWvFHoyOxO2vPLXDrvEj6pwKEWxWNCWP
	nvMEY5aPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j60Ut-0001dm-5r; Sun, 23 Feb 2020 23:17:15 +0000
Received: from ozlabs.org ([2401:3900:2:1::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j60Uf-0001cW-DW; Sun, 23 Feb 2020 23:17:03 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 48Qh0l2zmzz9sPK;
 Mon, 24 Feb 2020 10:16:55 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1582499816;
 bh=ZDsuoOV08OG4rWiKXytPH30q7PC/XrARg94GbSYzkBw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=AKp3byLjUgGeWJ48kznETWc0Q3R5R+v1q1teBHVmawsNupD3Pe0ucEI5ezfd7pOAy
 PW/mL8pfaMHcX16KOvg6I71vLR4Bieg2nsmUWXZItzr0DqnsomYD7lx/lHov0Ft8fQ
 Hf9+mEEH7uRY8xZKIUCj0bEH679ZzqORtM5yx8UTUHzGIBFxluhGQUmhq4N54emir2
 DaqzTzxbhB0bQqArroPfI+p1d3N/FF3ywJHRFrTAM8fouTZOkblsC/wk0kpn1xMWFG
 BG9VEhQqMOam6UjEzDAKYuuUNUCRK7y1rY9DM21KuhEbv+hcA0Ck6cutVtrQKqe0bu
 jN215DYPbaD8g==
Date: Mon, 24 Feb 2020 10:16:54 +1100
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Kevin Hilman <khilman@baylibre.com>, Carlo Caione <carlo@caione.org>
Subject: Re: [PATCH] soc: amlogic: fix compile failure with
 MESON_SECURE_PM_DOMAINS & !MESON_SM
Message-ID: <20200224101654.530f1837@canb.auug.org.au>
In-Reply-To: <20200218092229.0448d266@canb.auug.org.au>
References: <1581955933-69832-1-git-send-email-jianxin.pan@amlogic.com>
 <20200218080743.07e58c6e@canb.auug.org.au>
 <20200218092229.0448d266@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_151701_658055_5F1352A2 
X-CRM114-Status: GOOD (  14.97  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2401:3900:2:1:0:0:0:2 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Hanjie Lin <hanjie.lin@amlogic.com>,
 Victor Wan <victor.wan@amlogic.com>, Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Jian Hu <jian.hu@amlogic.com>,
 Xingyu Chen <xingyu.chen@amlogic.com>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: multipart/mixed; boundary="===============9085853265070953901=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============9085853265070953901==
Content-Type: multipart/signed; boundary="Sig_/HRS=wqj=EXtghxVG08E8STH";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/HRS=wqj=EXtghxVG08E8STH
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

On Tue, 18 Feb 2020 09:22:29 +1100 Stephen Rothwell <sfr@canb.auug.org.au> =
wrote:
>
> On Tue, 18 Feb 2020 08:07:43 +1100 Stephen Rothwell <sfr@canb.auug.org.au=
> wrote:
> >
> > On Tue, 18 Feb 2020 00:12:13 +0800 Jianxin Pan <jianxin.pan@amlogic.com=
> wrote: =20
> > >
> > > When MESON_SECURE_PM_DOMAINS & !MESON_SM, there will be compile failu=
re:
> > > .../meson-secure-pwrc.o: In function `meson_secure_pwrc_on':
> > > .../meson-secure-pwrc.c:76: undefined reference to `meson_sm_call'
> > >=20
> > > Fix this by adding depends on MESON_SM for MESON_SECURE_PM_DOMAINS.
> > >=20
> > > Fixes: b3dde5013e13 ("soc: amlogic: Add support for Secure power doma=
ins controller")
> > >=20
> > > Reported-by: kbuild test robot <lkp@intel.com>
> > > Reported-by: patchwork-bot+linux-amlogic<patchwork-bot+linux-amlogic@=
kernel.org>
> > > Reported-by: Stephen Rothwell<sfr@canb.auug.org.au>
> > > Signed-off-by: Jianxin Pan <jianxin.pan@amlogic.com>
> > > ---
> > >  drivers/soc/amlogic/Kconfig | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)   =20
> >=20
> > I will apply that patch to linux-next today. =20
>=20
> This fixes the build for me.
>=20
> Tested-by: Stephen Rothwell<sfr@canb.auug.org.au>
>=20
> Also, please keep the commit message tags together at the end of the
> commit message i.e. remove the blank line after the Fixes: tag above.
> (see "git interpret-trailers ")

I am still applying this patch ...
--=20
Cheers,
Stephen Rothwell

--Sig_/HRS=wqj=EXtghxVG08E8STH
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl5TB+YACgkQAVBC80lX
0Gw1Ygf9FYA4QbsYVulSaeKZSzIU8INOux2IozBcABlP9zBBHobUJpQC28V80fti
ImqOIwDNv+r67DnCKDg64+X5PfPyOySRYssr9sRSWcjwoud1qt2ln0iez9tDMG0t
B7ntUEWmRAFZ0GtBYqSGZw73lldQRod4lD7B1RrxVK36xIVMUo+X/ZWAEbvlQGn1
oWkoVMxhbDK6crqYBKgTfAVSa2QbpNQV++y0fmmfJUMl/8txhSYEhMIrKr+pr4i6
xHLq3w3J4HJXTo/07+1RjlhgVHdO+e3JyLunOA5MA+aW215AjiCXGcSLHX7PD1QM
mtWa7KCNYCHULAxJs6JOuzD+gOMLLg==
=gH3w
-----END PGP SIGNATURE-----

--Sig_/HRS=wqj=EXtghxVG08E8STH--


--===============9085853265070953901==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============9085853265070953901==--

