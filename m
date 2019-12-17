Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7977D122920
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 11:45:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0nYdjhAg3Ev9JK4XQja4kw45uzdFMXosQ094nAkNkto=; b=H2Bgr1Z2tUmiHwujzrpkBN18a
	8X+EdPtSWszoOZ6neWdHZxDIwAyLyson7P1WFjef+SuYUfJvH+Y675vQuitZOGilngANl98Ob73DC
	scjbkW4D2H16pIeVQtfPJnR77GEVqtOlgMPh6jf4emExO8qCstuNWqflhozysj6ahzmPQUPaPjB4o
	VAZOmzzMxsiFanmijiS/fOd2r7ZDNEysgUVcyrjyC9fibCacVSmLHhgUHtRXGYqTdoTpHYQ03HddR
	IYF8EksyTKuhbWVK4zGMJRByguRacA3ufFdxI+0LQkZqqgDyYUkv4VBYE3gxTCJ2WY8y2O4sZqDP9
	zePJBbzdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihAML-0007w4-Kg; Tue, 17 Dec 2019 10:45:45 +0000
Received: from jabberwock.ucw.cz ([46.255.230.98])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihAM2-0007fv-T1
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 10:45:28 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id BE3661C25AF; Tue, 17 Dec 2019 11:45:21 +0100 (CET)
Date: Tue, 17 Dec 2019 11:45:20 +0100
From: Pavel Machek <pavel@ucw.cz>
To: Arnd Bergmann <arnd@arndb.de>, kernel list <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-omap@vger.kernel.org, tony@atomide.com, sre@kernel.org,
 nekit1000@gmail.com, mpartap@gmx.net, merlijn@wizzup.org,
 martin_rysavy@centrum.cz
Subject: TI omap compile problem in 5.5-rc1? was Re: [PATCH] ARM: davinci:
 select CONFIG_RESET_CONTROLLER
Message-ID: <20191217104520.GA6812@amd>
References: <20191210195202.622734-1-arnd@arndb.de>
MIME-Version: 1.0
In-Reply-To: <20191210195202.622734-1-arnd@arndb.de>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_024527_115481_48902F2E 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
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
Cc: David Lechner <david@lechnology.com>, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5200093548350517321=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5200093548350517321==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="G4iJoqBmSsgzjUCe"
Content-Disposition: inline


--G4iJoqBmSsgzjUCe
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> Selecting RESET_CONTROLLER is actually required, otherwise we
> can get a link failure in the clock driver:
>=20
> drivers/clk/davinci/psc.o: In function `__davinci_psc_register_clocks':
> psc.c:(.text+0x9a0): undefined reference to `devm_reset_controller_regist=
er'
> drivers/clk/davinci/psc-da850.o: In function `da850_psc0_init':
> psc-da850.c:(.text+0x24): undefined reference to
> `reset_controller_add_lookup'

Does omap need similar handing in 5.5-rc1?

  LD      .tmp_vmlinux1
  drivers/soc/ti/omap_prm.o: In function `omap_prm_probe':
  omap_prm.c:(.text+0x4d0): undefined reference to
  `devm_reset_controller_register'
  /data/fast/l/k/Makefile:1077: recipe for target 'vmlinux' failed
  make[1]: *** [vmlinux] Error 1

Enabling reset controller seems to help::

Reset Controller Support (RESET_CONTROLLER) [Y/n/?] (NEW)
  TI SYSCON Reset Driver (RESET_TI_SYSCON) [N/m/y/?] (NEW)

Best regards,
									Pavel
								=09
--G4iJoqBmSsgzjUCe
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl34scAACgkQMOfwapXb+vJX/QCaAiolSUbq20R1wAUi547D5rKC
5RUAoIioT2u+yCvZCDxs+tUsZ16rutri
=bJen
-----END PGP SIGNATURE-----

--G4iJoqBmSsgzjUCe--


--===============5200093548350517321==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5200093548350517321==--

