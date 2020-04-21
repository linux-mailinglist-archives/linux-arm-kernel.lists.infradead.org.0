Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5FD81B223C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 11:02:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=afQnmp2ulj/nNRlhoxYVU2NwaBSSsmgRBve8yv1zmpw=; b=V+nmwusTyvzd0yOdDv9o6V0TQ
	5HsTBp1LoncCzRX875AqBDPltfnDs77qxZ5sha6WYX8UAWCwsYKXjQLFoN19TvkFI+RYCXSbKIzk6
	MLRtNdkZ4Ks+8V5F0okMn9L7rUA/uJf2bkAlJeqktQaLAwToVXzw4kPiiT9kbm0Kh6TtSHV7IjxcT
	12EGw8tr846qUwVTbHfknxy44+01WLxwyx7DM+5F2b/CqRcXdzd8PQy4hDCRMvohPO23qRQDfkqL2
	G58VwPgklqelUEVvAGFZHU2GTcBGcxXCE02v2cEpTsBpUcGJccWCiuqbdqE32cc949MfRJPgU2Bg1
	mQ17Jm6ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQomy-0001zb-RF; Tue, 21 Apr 2020 09:01:56 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQomn-0001xK-IV
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 09:01:47 +0000
X-Originating-IP: 93.29.109.196
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id E13916001C;
 Tue, 21 Apr 2020 09:01:39 +0000 (UTC)
Date: Tue, 21 Apr 2020 11:01:39 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Subject: Re: [linux-sunxi] [PATCH] media: cedrus: Implement runtime PM
Message-ID: <20200421090139.GC610776@aptenodytes>
References: <20200408010232.48432-1-samuel@sholland.org>
 <244922ec-ed3a-eca7-6640-49de7ad9c605@sholland.org>
 <20200420151010.GL125838@aptenodytes>
 <5590139.lOV4Wx5bFT@jernej-laptop>
 <CAAEAJfCjUY3JeZ1dmVwkQaumoCbv8OR0FTP9Prdg=RS=gh_NUg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAAEAJfCjUY3JeZ1dmVwkQaumoCbv8OR0FTP9Prdg=RS=gh_NUg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_020145_895153_C6E5C245 
X-CRM114-Status: GOOD (  27.67  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.195 listed in wl.mailspike.net]
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
 Maxime Ripard <mripard@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-sunxi@googlegroups.com, jernej.skrabec@gmail.com,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============8342687774491620685=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8342687774491620685==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5QAgd0e35j3NYeGe"
Content-Disposition: inline


--5QAgd0e35j3NYeGe
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Ezequiel,

On Tue 21 Apr 20, 00:51, Ezequiel Garcia wrote:
> Hi Jernej, Paul:
>=20
> On Mon, 20 Apr 2020 at 13:41, Jernej =C5=A0krabec <jernej.skrabec@gmail.c=
om> wrote:
> >
> > Dne ponedeljek, 20. april 2020 ob 17:10:10 CEST je Paul Kocialkowski
> > napisal(a):
> > > Hi,
> > >
> > > On Sun 19 Apr 20, 15:28, Samuel Holland wrote:
> > > > On 4/8/20 11:01 AM, Jernej =C5=A0krabec wrote:
> > > > > Hi Samuel!
> > > > >
> > > > > Dne sreda, 08. april 2020 ob 03:02:32 CEST je Samuel Holland napi=
sal(a):
> > > > >> This allows the VE clocks and PLL_VE to be disabled most of the =
time.
> > > > >>
> > > > >> Since the device is stateless, each frame gets a separate runtim=
e PM
> > > > >> reference. Enable autosuspend so the PM callbacks are not run be=
fore
> > > > >> and
> > > > >> after every frame.
> > > > >>
> > > > >> Signed-off-by: Samuel Holland <samuel@sholland.org>
> > > > >> ---
> > > > >>
> > > > >> I tested this with v4l2-request-test. I don't have the setup to =
do
> > > > >> anything more complicated at the moment.
> > > > >>
> > > > >> ---
> > > > >>
> > > > >>  drivers/staging/media/sunxi/cedrus/cedrus.c   |   7 ++
> > > > >>  .../staging/media/sunxi/cedrus/cedrus_hw.c    | 115 +++++++++++=
+------
> > > > >>  .../staging/media/sunxi/cedrus/cedrus_hw.h    |   3 +
> > > > >>  3 files changed, 88 insertions(+), 37 deletions(-)
> > > >
> > > > [snip]
> > > >
> > > > > Reset above causes problem. When format is set in cedrus_s_fmt_vi=
d_cap()
> > > > > a
> > > > > function is called, which sets few registers in HW. Of course, th=
ere is
> > > > > no
> > > > > guarantee that someone will start decoding immediately after capt=
ure
> > > > > format is set. So, if the driver puts VPU to sleep in the mean ti=
me,
> > > > > reset will clear those registers and decoded video will be in dif=
ferent
> > > > > format than expected. It could be even argued that registers shou=
ld not
> > > > > be set in that function and that this is design issue or bug in d=
river.
> > > >
> > > > You're right. I didn't see that cedrus_dst_format_set() was called =
outside
> > > > cedrus_engine_enable/disable().
> > >
> > > This might indeed be an issue with multiple decoding contexts in para=
llel,
> > > with potentially different formats. For that reason, it looks like the
> > > right thing to do would be to set the format at each decoding run bas=
ed on
> > > the format set in the context by s_fmt.
> >
> > So you are suggesting that cedrus_dst_format_set() should be moved to
> > cedrus_device_run(), right? This way all registers are set at each run,=
 which
> > is then truly stateless.
> >
>=20
> BTW, this is how the Hantro and Rockchip's Rkvdec
> drivers are implemented. One of the main reasons is
> to have simultaneous decoding support.

That's a wise decision :)

I had actually tested that cedrus can decode multiple streams in parallel, =
but
I must have used the same format settings for both and didn't notice the is=
sue
then.

Good that we are fixing it now!

Cheers,

Paul

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--5QAgd0e35j3NYeGe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl6etnMACgkQ3cLmz3+f
v9ESAgf+JF43Flex0ZzI560R3iFiOKh0qptQg+PzMUxxWUm8DffID3NoERvbt4n7
ceoOqXP9t2kUPBsYZpvXStydgxHHvp+Gk4z5fKRhv4bH3MZu+FVdhLZwrclpq1qC
/IO9T4LwvBqamcgR9fNhIy5j6kb+lMUYp8VBYpd5NskxMbUyDboFJaUONdgB2+cr
YlflGNy7qgvY/MfM/3P49x/HtLRbDWBCY0R8Xti6OLvfQcvme/hS1eAtpHpfAYeL
1n5XqbfL0AQr7But5vVkBFvUD/cMrlwYiwN8YidW17r28wJGvn9b7eGahbcQKxwS
0f823/RMeZHpQlq/+/zoj2rL3iryMg==
=GrkF
-----END PGP SIGNATURE-----

--5QAgd0e35j3NYeGe--


--===============8342687774491620685==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8342687774491620685==--

