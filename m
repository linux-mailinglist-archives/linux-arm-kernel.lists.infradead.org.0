Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56DFA1F424A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 19:30:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2zXpeq95609x+01zK7PBwZxPQCjhs7a3jGMcBFHvA4Y=; b=DEN61DW/qk1rymxiXiRxsyu3L
	GpUrGbMz0FJcWUot/MuqE/f6BR0md8tE/0fZupIfHiJGOul9nlwgorYxE7A8S8tdtjytvrw1G0wVS
	n4TuT/FtgAOwi0x3DWUFvpIklAA95DIUPbiPSGleXc4KgmZ1Jfw1Nv2M1Erl3o4iezSyhahTbhJl1
	dTTqEswgLOSwYYRAj3DyaDM98NiPLPrsFkWK00NwZhi8qNFp23FO0srEcbRPgS1lS0k1M+LJT3Z66
	9HpeLKwwtuff9k+ShGDEwVX9e5SjeyEyJL/YFJkoA0/NTmllxEIRGJKSkcGs6ilpVjVuCv8MFrqGl
	ZHXsX7s/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jii4o-0001e1-Fh; Tue, 09 Jun 2020 17:30:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jii4T-0001Ij-91
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 17:30:01 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5C97A20774;
 Tue,  9 Jun 2020 17:29:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591723796;
 bh=Qmr3xU4Wr498BcrukotcukidPlKEgC2wLsO/I0prusU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=19nG0JhFpICXKRdbQSqtV0xLlrZOSFIZdBzGSyuzFEyQ2dbY5bUXfPdrnZ6jcWHUo
 5oFSLLb0j1GAaGWDSmFkt13oJIr1GWQVeODfQGNwbTo6AcQi4rffXKZCSqX3WSqM3s
 CO4pnstLd/HBdIWUPNfNZy1qr8OFn5U3V2Azny5c=
Date: Tue, 9 Jun 2020 18:29:54 +0100
From: Mark Brown <broonie@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v4 02/11] mfd: Add support for Kontron sl28cpld
 management controller
Message-ID: <20200609172954.GM4583@sirena.org.uk>
References: <20200608082827.GB3567@dell>
 <CAHp75VdiH=J-ovCdh1RFJDW_bJM8=pbXRaHmB691GLb-5oBmYQ@mail.gmail.com>
 <7d7feb374cbf5a587dc1ce65fc3ad672@walle.cc>
 <20200608185651.GD4106@dell>
 <32231f26f7028d62aeda8fdb3364faf1@walle.cc>
 <20200609064735.GH4106@dell>
 <32287ac0488f7cbd5a7d1259c284e554@walle.cc>
 <20200609144201.GK4583@sirena.org.uk>
 <a2bae71634fe288f067d5e92090b7561@walle.cc>
 <20200609171520.GC1019634@bogus>
MIME-Version: 1.0
In-Reply-To: <20200609171520.GC1019634@bogus>
X-Cookie: Be careful!  Is it classified?
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_103000_308979_8E4D2B48 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-pwm@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Marc Zyngier <maz@kernel.org>,
 Ranjani Sridharan <ranjani.sridharan@linux.intel.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 david.m.ertman@intel.com, Guenter Roeck <linux@roeck-us.net>,
 devicetree <devicetree@vger.kernel.org>, Jean Delvare <jdelvare@suse.com>,
 linux-watchdog@vger.kernel.org,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, shiraz.saleem@intel.com,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-hwmon@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Michael Walle <michael@walle.cc>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: multipart/mixed; boundary="===============2251570089884482023=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2251570089884482023==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Pz/qqzCPDfGwIFOg"
Content-Disposition: inline


--Pz/qqzCPDfGwIFOg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 09, 2020 at 11:15:20AM -0600, Rob Herring wrote:

> Find another driver doing this already and rename it 'simple-mfd' (no=20
> relation to the DT binding) and add your compatible string to it.=20
> 'Generic' or 'simple' drivers don't require generic/simple DT bindings.

> Or extend the existing syscon driver to look up the bus_type and create=
=20
> the regmap based on the bus type?

You'd need a particular bus driver to instantiate for a given bus (or
I'm misunderstanding your proposal) so it wouldn't even need a lookup,
just per-bus ID tables (and ideally also data tables with the regmap
and child descriptions).

--Pz/qqzCPDfGwIFOg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7fxxEACgkQJNaLcl1U
h9DCLQf/bdNDdxW0Qpw6CjYiwGbdGhDPz2buR07hZ0HFwlLW/CCeJCk0naiEaRo1
P3qH84YQ2ka1vdYpGLWX6+vvXjU2ejaSPz9GmDxoUVkrxB8SjwVYWehydJkgE8Bs
/f9vdLsoac0TjNNro7gumcUGE6bIGFDUvuOJkjn+O4dOBz3cTqhYsY4Sz14cyTxW
maZmtiiVvFyP5Jrf0LTE2oQzqnTEKgoBY8Ku6f34K7EiNmIK/bgppdXsJvNGqZp9
tPbeGiW01Rg8XVNPYnjJf6TipJRvHLJh8hma6sFq5dqH0ZNDpFFW35xqWLPWL5Af
2Plbt+f89ibSJGeBNXMaaEPkfzTv7A==
=lKAA
-----END PGP SIGNATURE-----

--Pz/qqzCPDfGwIFOg--


--===============2251570089884482023==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2251570089884482023==--

