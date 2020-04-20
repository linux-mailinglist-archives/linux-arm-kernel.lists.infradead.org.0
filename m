Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB4521B0F5B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 17:10:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ah/iZrrnw5YOEXtOSh0iotOObfUOG0PbifgpKGxPsKA=; b=KqC3mJF3oslmR9UOZ3mpQRIP+
	z/BW2iDmS9BjWDjwdbM7T9Vp3EbFCPE6ngn/3yKCeTnECXN+Fss0L2VWXO/CbLtPgkbTUGv8HlB+G
	A403ecqMLgkQFqXo04VWJ8nRw53LFfhJ0nJP9WrA7RNpcVsrrXd+mX/MePTreKHldTFHXA5jaRETw
	0QJjSp8dI5v2jVqvdpkqUfWuPRFjv2vGswkrpgNg57xUI/mrm/dEtsIu+DQuBHSR/QnNCd7FDDSEO
	uEpV4VhUx54DbD9XlTqiaVD1Rtc65Z6VKcMD9RbOSSJ7rMi8CE3St8o0zPZYG6xmFd8n2KHA6q3za
	rzwqCuxeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQY48-0006c6-0Q; Mon, 20 Apr 2020 15:10:32 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQY3x-0006Zt-Su
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 15:10:23 +0000
X-Originating-IP: 93.29.109.196
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 94D031C0006;
 Mon, 20 Apr 2020 15:10:10 +0000 (UTC)
Date: Mon, 20 Apr 2020 17:10:10 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [linux-sunxi] [PATCH] media: cedrus: Implement runtime PM
Message-ID: <20200420151010.GL125838@aptenodytes>
References: <20200408010232.48432-1-samuel@sholland.org>
 <9673642.nUPlyArG6x@jernej-laptop>
 <244922ec-ed3a-eca7-6640-49de7ad9c605@sholland.org>
MIME-Version: 1.0
In-Reply-To: <244922ec-ed3a-eca7-6640-49de7ad9c605@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_081022_202844_E96498D1 
X-CRM114-Status: GOOD (  25.73  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============1737575372088993688=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1737575372088993688==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="1hKfHPzOXWu1rh0v"
Content-Disposition: inline


--1hKfHPzOXWu1rh0v
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sun 19 Apr 20, 15:28, Samuel Holland wrote:
> On 4/8/20 11:01 AM, Jernej =C5=A0krabec wrote:
> > Hi Samuel!
> >=20
> > Dne sreda, 08. april 2020 ob 03:02:32 CEST je Samuel Holland napisal(a):
> >> This allows the VE clocks and PLL_VE to be disabled most of the time.
> >>
> >> Since the device is stateless, each frame gets a separate runtime PM
> >> reference. Enable autosuspend so the PM callbacks are not run before a=
nd
> >> after every frame.
> >>
> >> Signed-off-by: Samuel Holland <samuel@sholland.org>
> >> ---
> >>
> >> I tested this with v4l2-request-test. I don't have the setup to do
> >> anything more complicated at the moment.
> >>
> >> ---
> >>  drivers/staging/media/sunxi/cedrus/cedrus.c   |   7 ++
> >>  .../staging/media/sunxi/cedrus/cedrus_hw.c    | 115 ++++++++++++------
> >>  .../staging/media/sunxi/cedrus/cedrus_hw.h    |   3 +
> >>  3 files changed, 88 insertions(+), 37 deletions(-)
>=20
> [snip]
>=20
> > Reset above causes problem. When format is set in cedrus_s_fmt_vid_cap(=
) a=20
> > function is called, which sets few registers in HW. Of course, there is=
 no=20
> > guarantee that someone will start decoding immediately after capture fo=
rmat is=20
> > set. So, if the driver puts VPU to sleep in the mean time, reset will c=
lear=20
> > those registers and decoded video will be in different format than expe=
cted. It=20
> > could be even argued that registers should not be set in that function =
and=20
> > that this is design issue or bug in driver.
>=20
> You're right. I didn't see that cedrus_dst_format_set() was called outside
> cedrus_engine_enable/disable().

This might indeed be an issue with multiple decoding contexts in parallel, =
with
potentially different formats. For that reason, it looks like the right thi=
ng to
do would be to set the format at each decoding run based on the format set =
in
the context by s_fmt.

> > Anyway, I made a runtime PM support long time ago, but never do anythin=
g=20
> > besides running few tests:
> > https://github.com/jernejsk/linux-1/commit/
> > d245b7fa2a26e519ff675a255c45230575a4a848
> >=20
> > It takes a bit different approach. Power is enabled in start streaming =
and=20
> > disabled in stop streaming. This is simpler approach and doesn't need=
=20
> > autosuspend functionality. I also moved call to a function which sets f=
ormat=20
> > in HW registers to start streaming handler, so it's guaranteed to be se=
t at=20
> > the beginning.
>=20
> Assuming cedrus_device_run() only gets called between streamon and stream=
off
> (which appears to be the case), this looks like a better design.

Yes, this is defintiely ensured by the V4L2 framework. I agree that streamo=
n/off
are the correct sync points.

> > Note that some registers are only set in start streaming handler. With =
your=20
> > approach, if first frame is submitted too late, asserting and de-assert=
ing=20
> > reset line could reset those registers.
>=20
> I only see registers being set in cedrus_start_streaming() after your pat=
ch,
> where you add a call to cedrus_dst_format_set(). I can't find any registe=
rs
> being written in any of the ->start() callbacks.
>=20
> I'll send a v2 which combines the two patches: yours which handles the ru=
ntime
> part better, and mine which handles the probe/remove part better with !CO=
NFIG_PM.

Thanks, that should do it!

Cheers,

Paul

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--1hKfHPzOXWu1rh0v
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl6du1IACgkQ3cLmz3+f
v9FYIAf/RIkE0bJg+MZKJgy+uiwj7BSER1drSDwD9c70d1EXUoq1TFT0eBqtU81H
wwM8uhND1u3KDdcNFcGy6OG7Q6CYPR9ne2E0ETFdyP0sJDsxjsTixZ3mLPtImLam
tTC4jsUz2fTIH/LXI9tPR2XAEB6CFPX9KL2R+pC7T03g2Hje0WygVxRh+dPy2V/y
w7rpGym9y8A9hZtaGMOREuuqkqsBHd3SpuB6xs/7yTIL9eXtcw4cpffi8GiQQ0s/
SB/QdcOp3MeT87yg5QpbkpykqwrRkM9/dbP8aU0yRbqvVyvjKMbM+qKxb8CdH3b2
H1+DLey3Po/R46r4AHmGMA2flB7c9Q==
=VY9i
-----END PGP SIGNATURE-----

--1hKfHPzOXWu1rh0v--


--===============1737575372088993688==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1737575372088993688==--

