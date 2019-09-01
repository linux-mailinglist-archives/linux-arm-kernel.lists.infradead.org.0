Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19447A4B7C
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Sep 2019 21:49:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=16EX49MheZzZGQwhFjbvULU/43Fdtr76jntbXRjQW0E=; b=K77DRK8+c9cWfjAuLyt5teGyN
	oefw1ApWJr+2aMTw/gEFXymFWRvoY+SB5LZuboGLy1trew22jX+WvtvML+DclJYKHBmgwdWEyLY5Q
	RoSmvYo9QO6EAA2ptHmZBaWzMMBxnqpKiF9tvQnSpHz/z+JcsNt5nuT4NH0uhm6t8oWCfl6ehJK9y
	pzqLosXKyaOcKH/XDrQsOr/qGrnzKqWWyhAGwi+LWSrR1ogf+TPxbsut2cZcy4UUmww4SuVjSgdea
	JtBOj2U/kjxAzDgLl8xtNsHMz7Gw1ruD90/nCnqQuF7nkSLVPfYLtbvYjteRc2bx3g/Vrm4JKG2kk
	/+MSvPZMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4Vqo-0002nE-Eu; Sun, 01 Sep 2019 19:49:26 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4Vqc-0002mo-HF
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Sep 2019 19:49:15 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id B812181841; Sun,  1 Sep 2019 21:48:58 +0200 (CEST)
Date: Sun, 1 Sep 2019 21:49:11 +0200
From: Pavel Machek <pavel@denx.de>
To: Pavel Machek <pavel@denx.de>
Subject: Re: next-20190830 on Droid 4 was Re: [PATCH 0/4] musb host
 improvments mostly for omap2430 glue
Message-ID: <20190901194911.GB30586@amd>
References: <20190830232058.53414-1-tony@atomide.com>
 <20190901193925.GA30586@amd>
MIME-Version: 1.0
In-Reply-To: <20190901193925.GA30586@amd>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_124914_726156_C840807E 
X-CRM114-Status: GOOD (  16.26  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.113.26.193 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Jacopo Mondi <jacopo@jmondi.org>, mpartap@gmx.net,
 Tony Lindgren <tony@atomide.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, merlijn@wizzup.org,
 linux-usb@vger.kernel.org, kernel list <linux-kernel@vger.kernel.org>,
 sre@kernel.org, nekit1000@gmail.com, Michael Scott <hashcode0f@gmail.com>,
 linux-omap@vger.kernel.org, Bin Liu <b-liu@ti.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============5703145473869424961=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5703145473869424961==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="JP+T4n/bALQSJXh8"
Content-Disposition: inline


--JP+T4n/bALQSJXh8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun 2019-09-01 21:39:25, Pavel Machek wrote:
> Hi!
>=20
> > So I ended up cleaning up omap2430 glue layer a bit for host mode with =
the
> > various reproducable errors I was seeing docking droid4 to a lapdock. T=
here
> > are a few fixes, and then we end up removing all the devctl register ti=
nkering
> > for omap2430 glue layer.
>=20
> I thought I'd test this, so I took
>=20
> commit 6d028043b55e54f48fbdf62ea8ce11a4ad830cac
>     Add linux-next specific files for 20190830
>=20
> Series (and the other two patches you sent around it) applies ok, but
> the result does not boot.

Hmm. Maybe I'm just having problem with the backlight. I do see
regulator failure:

[    2.143920] cpcap-usb-phy cpcap-usb-phy.0: using device tree for
GPIO lookup
[    2.151031] of_get_named_gpiod_flags: parsed 'mode-gpios' property
of node ')
[    2.166015] gpio gpiochip2: Persistence not supported for GPIO 28
214935] ------------[ cut here ]------------
[    2.219604] WARNING: CPU: 0 PID: 1 at drivers/regulator/core.c:2040
_regulat0
[    2.228118] Modules linked in:
[    2.231201] CPU: 0 PID: 1 Comm: swapper/0 Not tainted
5.3.0-rc6-next-20190834
[    2.238800] Hardware name: Generic OMAP4 (Flattened Device Tree)
[    2.244873] [<c010f224>] (unwind_backtrace) from [<c010b4fc>]
(show_stack+0x)
[    2.252655] [<c010b4fc>] (show_stack) from [<c08ca584>]
(dump_stack+0xa8/0xc)

and some drm problems:

[   59.303253] omap-mcbsp 40124000.mcbsp: CLKS: could not clk_get()
prcm_fck
[   59.311492] ------------[ cut here ]------------
[   59.314666] WARNING: CPU: 0 PID: 2704 at
drivers/gpu/drm/omapdrm/dss/hdmi4.c0
[   59.325866] Modules linked in:
[   59.328948] CPU: 0 PID: 2704 Comm: alsa-sink-HDMI  Tainted: G
W      4
[   59.337982] Hardware name: Generic OMAP4 (Flattened Device Tree)
[   59.344757] [<c010f224>] (unwind_backtrace) from [<c010b4fc>]
(show_stack+0x)
[   59.352569] [<c010b4fc>] (show_stack) from [<c08ca584>]
(dump_stack+0xa8/0xc)
[   59.359832] [<c08ca584>] (dump_stack) from [<c012de94>]
(__warn+0xc8/0xf0)

But I get login prompt on the serial. And after I do:

root@devuan:/sys/class/leds/lm3532::backlight# echo 255 > brightness

I can even see X are running.

Good so far :-).

Best regards,							Pavel

--=20
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany

--JP+T4n/bALQSJXh8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl1sILcACgkQMOfwapXb+vJyDACgkYHyNaGha8AzYvK35pKloee1
m2EAoIvw/eYdUmGoDUBy6nO6XeLFC2/K
=oxiI
-----END PGP SIGNATURE-----

--JP+T4n/bALQSJXh8--


--===============5703145473869424961==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5703145473869424961==--

