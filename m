Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AED81B2235
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 11:00:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=re9EEXXHXVm91oCtuTlax9b7zwuNozwH1Wq3Kv3+iVc=; b=cpb7xSFuPVE29bUD7+20J5JCn
	53LfUUiJSqdnk26QLBMcoiU9UqhAsfo382yssDL2pMOPnqqLnY5KoIYU1GjGZAWuoEj4S1tjZs6nC
	/JG8N0dTUGVGeDTlbm64xGpQ1G0gl8Tb2eryYlhKVHyjET1Jss+ZrTtA1ZVgujllqgaMAc0LPv2tD
	y8B1vaMyuJJn/EmYx4rbAB9uA3DEQjOm9ZJNbScCj4j1BGFl+yQMdAmDNiFokSHQ9xUtignHYa8F4
	RoUkuDGOlOR6qHUQFq+OwTW7WBshD5V4REM4+ivXQS0lqv+Z7u8R9qyEI58YJddGZ0ZiRA2GqP7ik
	3IO1l2sfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQola-0001KM-2w; Tue, 21 Apr 2020 09:00:30 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQolL-00013P-2A
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 09:00:17 +0000
X-Originating-IP: 93.29.109.196
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id E8C7AE0015;
 Tue, 21 Apr 2020 09:00:06 +0000 (UTC)
Date: Tue, 21 Apr 2020 11:00:05 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>
Subject: Re: [linux-sunxi] [PATCH] media: cedrus: Implement runtime PM
Message-ID: <20200421090005.GB610776@aptenodytes>
References: <20200408010232.48432-1-samuel@sholland.org>
 <5590139.lOV4Wx5bFT@jernej-laptop>
 <20200420175651.GA610776@aptenodytes>
 <4523224.GXAFRqVoOG@jernej-laptop>
MIME-Version: 1.0
In-Reply-To: <4523224.GXAFRqVoOG@jernej-laptop>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_020015_413391_B70E6BAD 
X-CRM114-Status: GOOD (  38.81  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Samuel Holland <samuel@sholland.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============6910684134987210816=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6910684134987210816==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hQiwHBbRI9kgIhsi"
Content-Disposition: inline


--hQiwHBbRI9kgIhsi
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon 20 Apr 20, 20:09, Jernej =C5=A0krabec wrote:
> Hi!
>=20
> Dne ponedeljek, 20. april 2020 ob 19:56:51 CEST je Paul Kocialkowski=20
> napisal(a):
> > Hi Jernej,
> >=20
> > On Mon 20 Apr 20, 18:41, Jernej =C5=A0krabec wrote:
> > > Dne ponedeljek, 20. april 2020 ob 17:10:10 CEST je Paul Kocialkowski
> > >=20
> > > napisal(a):
> > > > Hi,
> > > >=20
> > > > On Sun 19 Apr 20, 15:28, Samuel Holland wrote:
> > > > > On 4/8/20 11:01 AM, Jernej =C5=A0krabec wrote:
> > > > > > Hi Samuel!
> > > > > >=20
> > > > > > Dne sreda, 08. april 2020 ob 03:02:32 CEST je Samuel Holland=20
> napisal(a):
> > > > > >> This allows the VE clocks and PLL_VE to be disabled most of the
> > > > > >> time.
> > > > > >>=20
> > > > > >> Since the device is stateless, each frame gets a separate runt=
ime
> > > > > >> PM
> > > > > >> reference. Enable autosuspend so the PM callbacks are not run
> > > > > >> before
> > > > > >> and
> > > > > >> after every frame.
> > > > > >>=20
> > > > > >> Signed-off-by: Samuel Holland <samuel@sholland.org>
> > > > > >> ---
> > > > > >>=20
> > > > > >> I tested this with v4l2-request-test. I don't have the setup t=
o do
> > > > > >> anything more complicated at the moment.
> > > > > >>=20
> > > > > >> ---
> > > > > >>=20
> > > > > >>  drivers/staging/media/sunxi/cedrus/cedrus.c   |   7 ++
> > > > > >>  .../staging/media/sunxi/cedrus/cedrus_hw.c    | 115
> > > > > >>  ++++++++++++------
> > > > > >>  .../staging/media/sunxi/cedrus/cedrus_hw.h    |   3 +
> > > > > >>  3 files changed, 88 insertions(+), 37 deletions(-)
> > > > >=20
> > > > > [snip]
> > > > >=20
> > > > > > Reset above causes problem. When format is set in
> > > > > > cedrus_s_fmt_vid_cap()
> > > > > > a
> > > > > > function is called, which sets few registers in HW. Of course, =
there
> > > > > > is
> > > > > > no
> > > > > > guarantee that someone will start decoding immediately after ca=
pture
> > > > > > format is set. So, if the driver puts VPU to sleep in the mean =
time,
> > > > > > reset will clear those registers and decoded video will be in
> > > > > > different
> > > > > > format than expected. It could be even argued that registers sh=
ould
> > > > > > not
> > > > > > be set in that function and that this is design issue or bug in
> > > > > > driver.
> > > > >=20
> > > > > You're right. I didn't see that cedrus_dst_format_set() was called
> > > > > outside
> > > > > cedrus_engine_enable/disable().
> > > >=20
> > > > This might indeed be an issue with multiple decoding contexts in
> > > > parallel,
> > > > with potentially different formats. For that reason, it looks like =
the
> > > > right thing to do would be to set the format at each decoding run b=
ased
> > > > on
> > > > the format set in the context by s_fmt.
> > >=20
> > > So you are suggesting that cedrus_dst_format_set() should be moved to
> > > cedrus_device_run(), right? This way all registers are set at each ru=
n,
> > > which is then truly stateless.
> >=20
> > Yes, exactly! But this is outside of the scope of this series though.
>=20
> I'm not sure about being out of scope. It has to be moved anyway, so why =
not=20
> put it in best place?

I agree it should be moved to cedrus_device_run, for sure!

What I meant is that Samuel doesn't have to make that change with the runti=
me PM
patch series because it's a different issue. But reading the discussion aga=
in,
it's true that there is a chance of the VPU going to sleep between set fmt =
and
start streaming, so we should probably take care of it before merging runti=
me
PM.

Samuel, do you feel like making that change with your series?
I can do it otherwise.

Cheers,

Paul

> Best
>=20
> >=20
> > Cheers,
> >=20
> > Paul
> >=20
> > > Best regards,
> > > Jernej
> > >=20
> > > > > > Anyway, I made a runtime PM support long time ago, but never do
> > > > > > anything
> > > > > > besides running few tests:
> > > > > > https://github.com/jernejsk/linux-1/commit/
> > > > > > d245b7fa2a26e519ff675a255c45230575a4a848
> > > > > >=20
> > > > > > It takes a bit different approach. Power is enabled in start
> > > > > > streaming
> > > > > > and
> > > > > > disabled in stop streaming. This is simpler approach and doesn't
> > > > > > need
> > > > > > autosuspend functionality. I also moved call to a function which
> > > > > > sets
> > > > > > format in HW registers to start streaming handler, so it's
> > > > > > guaranteed
> > > > > > to be set at the beginning.
> > > > >=20
> > > > > Assuming cedrus_device_run() only gets called between streamon and
> > > > > streamoff (which appears to be the case), this looks like a better
> > > > > design.
> > > >=20
> > > > Yes, this is defintiely ensured by the V4L2 framework. I agree that
> > > > streamon/off are the correct sync points.
> > > >=20
> > > > > > Note that some registers are only set in start streaming handle=
r.
> > > > > > With
> > > > > > your
> > > > > > approach, if first frame is submitted too late, asserting and
> > > > > > de-asserting
> > > > > > reset line could reset those registers.
> > > > >=20
> > > > > I only see registers being set in cedrus_start_streaming() after =
your
> > > > > patch, where you add a call to cedrus_dst_format_set(). I can't f=
ind
> > > > > any
> > > > > registers being written in any of the ->start() callbacks.
> > > > >=20
> > > > > I'll send a v2 which combines the two patches: yours which handle=
s the
> > > > > runtime part better, and mine which handles the probe/remove part
> > > > > better
> > > > > with !CONFIG_PM.
> > > >=20
> > > > Thanks, that should do it!
> > > >=20
> > > > Cheers,
> > > >=20
> > > > Paul
>=20
>=20
>=20
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--hQiwHBbRI9kgIhsi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl6ethUACgkQ3cLmz3+f
v9Ew4Qf+OsCirGHO5U3TqjH7KcY4Rjw8LUvEvxIHIlRK4ldsZb2K+JpgUM3n7e91
zMbRienlmbtTkUWbjvx+JyRauUUacyYGnVqsW1qfuvW4IDrS8gCmTEfeT3h7DZ8W
FNIadZRwiaoEH/ckVRtKV6t+1Y7xSZC0f4prZlwPy8GbZa1x7/3W8TGKEk4fAOSc
h3lsykDREA4zvlxUhyjM7sc0DHpzp91ItV+lJaeXNRCOos9li6nz0fYgQbpjS7Gf
4epH0um6o6UCctggxXX0ElrrnOL3Jk0pdJija+vjEzXwmh+jVk6eX4DrIy8ZT1aP
sPKnIi1gseYx3NaZpo0K1gI5MX1Glg==
=Wg0J
-----END PGP SIGNATURE-----

--hQiwHBbRI9kgIhsi--


--===============6910684134987210816==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6910684134987210816==--

