Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A92F1B13AF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 19:57:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BYtSU+u3B7T177hFdr/cqgnPuZE1oj3cjD87exoD2tM=; b=IK3Vyvbehf0rpBOTrysFRhnPN
	ADF1L6xtVj8Aj7oK2ZAWVBywXozFZVhfEIqQyjnctB4NsdDQ8dw4hKvUuIobRkw+sWqgxywem+nD4
	XLmZ4aa6tYcmO2irE7PEEyUT2adCvB9JX2yTaJ46PlvreZbnIIiCC082uFWNVEsiENUENsUW1kwYu
	WRc22Aa45PbeoRcKKbjWlhp6fBOLX2PjnPaw0lXNYk6LRd8/XGYPx54Z+bZF37BghVMlLevla9Zln
	Gix8O2Q0RHoHKI3DJ0kHyAaVPuyZq1hsfKR8Ey8CDnlhR9i3vGasXiPR7rkRHtNRhjyOG4W2pwQr+
	7mRReJVIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQafL-0001Lz-WD; Mon, 20 Apr 2020 17:57:08 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQafB-0001Kw-BI
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 17:56:59 +0000
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 65F65100006;
 Mon, 20 Apr 2020 17:56:51 +0000 (UTC)
Date: Mon, 20 Apr 2020 19:56:51 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>
Subject: Re: [linux-sunxi] [PATCH] media: cedrus: Implement runtime PM
Message-ID: <20200420175651.GA610776@aptenodytes>
References: <20200408010232.48432-1-samuel@sholland.org>
 <244922ec-ed3a-eca7-6640-49de7ad9c605@sholland.org>
 <20200420151010.GL125838@aptenodytes>
 <5590139.lOV4Wx5bFT@jernej-laptop>
MIME-Version: 1.0
In-Reply-To: <5590139.lOV4Wx5bFT@jernej-laptop>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_105657_662305_777CFD68 
X-CRM114-Status: GOOD (  31.67  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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
Cc: Samuel Holland <samuel@sholland.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============1701400858507485074=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1701400858507485074==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rwEMma7ioTxnRzrJ"
Content-Disposition: inline


--rwEMma7ioTxnRzrJ
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Jernej,

On Mon 20 Apr 20, 18:41, Jernej =C5=A0krabec wrote:
> Dne ponedeljek, 20. april 2020 ob 17:10:10 CEST je Paul Kocialkowski=20
> napisal(a):
> > Hi,
> >=20
> > On Sun 19 Apr 20, 15:28, Samuel Holland wrote:
> > > On 4/8/20 11:01 AM, Jernej =C5=A0krabec wrote:
> > > > Hi Samuel!
> > > >=20
> > > > Dne sreda, 08. april 2020 ob 03:02:32 CEST je Samuel Holland napisa=
l(a):
> > > >> This allows the VE clocks and PLL_VE to be disabled most of the ti=
me.
> > > >>=20
> > > >> Since the device is stateless, each frame gets a separate runtime =
PM
> > > >> reference. Enable autosuspend so the PM callbacks are not run befo=
re
> > > >> and
> > > >> after every frame.
> > > >>=20
> > > >> Signed-off-by: Samuel Holland <samuel@sholland.org>
> > > >> ---
> > > >>=20
> > > >> I tested this with v4l2-request-test. I don't have the setup to do
> > > >> anything more complicated at the moment.
> > > >>=20
> > > >> ---
> > > >>=20
> > > >>  drivers/staging/media/sunxi/cedrus/cedrus.c   |   7 ++
> > > >>  .../staging/media/sunxi/cedrus/cedrus_hw.c    | 115 ++++++++++++-=
-----
> > > >>  .../staging/media/sunxi/cedrus/cedrus_hw.h    |   3 +
> > > >>  3 files changed, 88 insertions(+), 37 deletions(-)
> > >=20
> > > [snip]
> > >=20
> > > > Reset above causes problem. When format is set in cedrus_s_fmt_vid_=
cap()
> > > > a
> > > > function is called, which sets few registers in HW. Of course, ther=
e is
> > > > no
> > > > guarantee that someone will start decoding immediately after capture
> > > > format is set. So, if the driver puts VPU to sleep in the mean time,
> > > > reset will clear those registers and decoded video will be in diffe=
rent
> > > > format than expected. It could be even argued that registers should=
 not
> > > > be set in that function and that this is design issue or bug in dri=
ver.
> > >=20
> > > You're right. I didn't see that cedrus_dst_format_set() was called ou=
tside
> > > cedrus_engine_enable/disable().
> >=20
> > This might indeed be an issue with multiple decoding contexts in parall=
el,
> > with potentially different formats. For that reason, it looks like the
> > right thing to do would be to set the format at each decoding run based=
 on
> > the format set in the context by s_fmt.
>=20
> So you are suggesting that cedrus_dst_format_set() should be moved to=20
> cedrus_device_run(), right? This way all registers are set at each run, w=
hich=20
> is then truly stateless.

Yes, exactly! But this is outside of the scope of this series though.

Cheers,

Paul

> Best regards,
> Jernej
>=20
> >=20
> > > > Anyway, I made a runtime PM support long time ago, but never do any=
thing
> > > > besides running few tests:
> > > > https://github.com/jernejsk/linux-1/commit/
> > > > d245b7fa2a26e519ff675a255c45230575a4a848
> > > >=20
> > > > It takes a bit different approach. Power is enabled in start stream=
ing
> > > > and
> > > > disabled in stop streaming. This is simpler approach and doesn't ne=
ed
> > > > autosuspend functionality. I also moved call to a function which se=
ts
> > > > format in HW registers to start streaming handler, so it's guarante=
ed
> > > > to be set at the beginning.
> > >=20
> > > Assuming cedrus_device_run() only gets called between streamon and
> > > streamoff (which appears to be the case), this looks like a better
> > > design.
> >=20
> > Yes, this is defintiely ensured by the V4L2 framework. I agree that
> > streamon/off are the correct sync points.
> >=20
> > > > Note that some registers are only set in start streaming handler. W=
ith
> > > > your
> > > > approach, if first frame is submitted too late, asserting and
> > > > de-asserting
> > > > reset line could reset those registers.
> > >=20
> > > I only see registers being set in cedrus_start_streaming() after your
> > > patch, where you add a call to cedrus_dst_format_set(). I can't find =
any
> > > registers being written in any of the ->start() callbacks.
> > >=20
> > > I'll send a v2 which combines the two patches: yours which handles the
> > > runtime part better, and mine which handles the probe/remove part bet=
ter
> > > with !CONFIG_PM.
> > Thanks, that should do it!
> >=20
> > Cheers,
> >=20
> > Paul
>=20
>=20
>=20
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--rwEMma7ioTxnRzrJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl6d4mIACgkQ3cLmz3+f
v9EzUwf/fWYkOXQ7aCfBor+vnOz95eIXeb6WY3jGTqlLKcK+4HY9KlRVwHAt4Eiw
9vxNX+qb3CUvMu1WsvE+t7Zn2Xvd6PSLuYyTHsW+DCuY9qlbwT8iQHCzwWLelCui
4g+RaZU555V7GxVNk2lHtWMtfn9lD0cHnsAJLUHSEJDMWSGJW7O5cZ0Zb639iDxf
GEGaw6YVbheeiOCHHQbMkPjzCkEu99R9Rzp1GT4tszc3RiUBgxxpYYgnCr+mhZ01
Kt1mRfGlTXFdmzHPYAj83sbcKXJtlp3aS/dya99bAM91Z2Tbeeg0hHs4Lkfgn3ZQ
NA4GEvITmUZyyxDEeTCw48xHR1mgrA==
=x5mQ
-----END PGP SIGNATURE-----

--rwEMma7ioTxnRzrJ--


--===============1701400858507485074==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1701400858507485074==--

