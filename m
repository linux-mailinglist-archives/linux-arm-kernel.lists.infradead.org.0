Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84941128A5D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Dec 2019 17:21:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=P13nOaDPE39C/A/lvMHq7xApLPuEnR5x7QQHMlHPSyY=; b=DtT3P4xhaWvUB9wb+jakTPBA4
	hSBDv3998WSbqI4dp13OFlVmv8IBVdVQpmrUjPA0vGjjGo+lKRAnUXsPZfTyECBe05VkrfGyR1xXj
	xQWi/2oW7gWY+Svn1I/b4riIT0qRa1fPxVp5LKwUDkb6FvlacoOkIveUaGinWOGepEZRFgQ8koQRA
	0NfSjlERD6RNKHfFQL4U6NBLEtiAnzv/rZbIC330pYeUdK//Rxm/QooUX2awWRWPgqVDpzVgaMJmt
	OOCk2K5QlqfdgQBfMK+YRDb6FLEhONDIMYQABPMCc0Y9R8wKa7RAPqYoOpnBPJqoU1C/Llqtb47yE
	1hihtKeGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iihVA-0004NA-Df; Sat, 21 Dec 2019 16:21:12 +0000
Received: from jabberwock.ucw.cz ([46.255.230.98])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iihV1-0004Lv-9T
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Dec 2019 16:21:05 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 600AC1C24DF; Sat, 21 Dec 2019 17:20:56 +0100 (CET)
Date: Sat, 21 Dec 2019 17:20:55 +0100
From: Pavel Machek <pavel@ucw.cz>
To: Tony Lindgren <tony@atomide.com>
Subject: Re: TI omap compile problem in 5.5-rc1? was Re: [PATCH] ARM:
 davinci: select CONFIG_RESET_CONTROLLER
Message-ID: <20191221162055.GA28997@amd>
References: <20191210195202.622734-1-arnd@arndb.de> <20191217104520.GA6812@amd>
 <20191217164640.GX35479@atomide.com>
MIME-Version: 1.0
In-Reply-To: <20191217164640.GX35479@atomide.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191221_082103_481523_A6B8D6F2 
X-CRM114-Status: GOOD (  13.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.255.230.98 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mpartap@gmx.net, Arnd Bergmann <arnd@arndb.de>,
 Sekhar Nori <nsekhar@ti.com>, merlijn@wizzup.org, martin_rysavy@centrum.cz,
 kernel list <linux-kernel@vger.kernel.org>, stable@vger.kernel.org,
 sre@kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 nekit1000@gmail.com, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-omap@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 David Lechner <david@lechnology.com>
Content-Type: multipart/mixed; boundary="===============5654096588490748844=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5654096588490748844==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="sm4nu43k4a2Rpi4c"
Content-Disposition: inline


--sm4nu43k4a2Rpi4c
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> > > Selecting RESET_CONTROLLER is actually required, otherwise we
> > > can get a link failure in the clock driver:
> > >=20
> > > drivers/clk/davinci/psc.o: In function `__davinci_psc_register_clocks=
':
> > > psc.c:(.text+0x9a0): undefined reference to `devm_reset_controller_re=
gister'
> > > drivers/clk/davinci/psc-da850.o: In function `da850_psc0_init':
> > > psc-da850.c:(.text+0x24): undefined reference to
> > > `reset_controller_add_lookup'
> >=20
> > Does omap need similar handing in 5.5-rc1?
> >=20
> >   LD      .tmp_vmlinux1
> >   drivers/soc/ti/omap_prm.o: In function `omap_prm_probe':
> >   omap_prm.c:(.text+0x4d0): undefined reference to
> >   `devm_reset_controller_register'
> >   /data/fast/l/k/Makefile:1077: recipe for target 'vmlinux' failed
> >   make[1]: *** [vmlinux] Error 1
> >=20
> > Enabling reset controller seems to help::
> >=20
> > Reset Controller Support (RESET_CONTROLLER) [Y/n/?] (NEW)
> >   TI SYSCON Reset Driver (RESET_TI_SYSCON) [N/m/y/?] (NEW)
>=20
> Yes see the patch Arnd recently posted to do that.

Thanks for the hint and sorry for the noise.

Best regards,
									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--sm4nu43k4a2Rpi4c
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl3+RmcACgkQMOfwapXb+vKm5gCdFEsAX+EXEf7Ut87c0ONSz54l
qhkAn1USmYq8ChLyUnMRl1fbdwed6pTk
=PjuJ
-----END PGP SIGNATURE-----

--sm4nu43k4a2Rpi4c--


--===============5654096588490748844==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5654096588490748844==--

