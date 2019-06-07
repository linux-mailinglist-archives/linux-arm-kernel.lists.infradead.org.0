Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F5763873A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 11:42:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8KXgcHz23tp+09oTEQowJEbUpx/vB1fMaDbIKR4Ug2M=; b=EPyuX+pdQS/qQ8w2ZeZ/SbvUp
	9Oq6lOqF2hZO01bayzmO5HkxNX5WTtnuht6nXam7lXz5Inin4fcoyRsklbV2RA6Gh4as89oA6Hlz8
	XvokdCYcFRpE4BhCmCQN880tsth9fywtzyU2AzIw26f6fnpM2P2DZ4t0vhsrQDXsYEoPqEnh6mLDE
	3tkl6K6nN4bd2oOhTHrcjzvZtFvzfc6m5Laq9ftLmKuxziEagMZq5CPYFi4ANVFe7TBss6xIBRLVu
	XTZVdV0VZ9MluWvoF4uIshurwnNJR0XXjXIWqNzosZAiQ2OIy0gFuPnWQL0ykoRKGCMNlbmYQ7EMN
	trBLtDNIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZBOg-0003JK-4Y; Fri, 07 Jun 2019 09:42:54 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZBOT-0003IO-NT; Fri, 07 Jun 2019 09:42:43 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 3CC5EAE15;
 Fri,  7 Jun 2019 09:42:37 +0000 (UTC)
Message-ID: <5dccf2500f023ce2c78d9ff3f41b53e36843298b.camel@suse.de>
Subject: Re: [PATCH v2 2/7] clk: bcm283x: add driver interfacing with
 Raspberry Pi's firmware
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stefan Wahren <wahrenst@gmx.net>, stefan.wahren@i2se.com, 
 linux-kernel@vger.kernel.org
Date: Fri, 07 Jun 2019 11:42:34 +0200
In-Reply-To: <3c4c8b56-eb02-be6f-9b3a-a94a895f10f0@gmx.net>
References: <20190606142255.29454-1-nsaenzjulienne@suse.de>
 <20190606142255.29454-3-nsaenzjulienne@suse.de>
 <3c4c8b56-eb02-be6f-9b3a-a94a895f10f0@gmx.net>
User-Agent: Evolution 3.32.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_024242_056321_FFF43153 
X-CRM114-Status: GOOD (  18.50  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: f.fainelli@gmail.com, ptesarik@suse.com, sboyd@kernel.org,
 viresh.kumar@linaro.org, mturquette@baylibre.com, linux-pm@vger.kernel.org,
 rjw@rjwysocki.net, mbrugger@suse.de, eric@anholt.net,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 ssuloev@orpaltech.com
Content-Type: multipart/mixed; boundary="===============6290961454860255849=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6290961454860255849==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-vYYrm15OHAAapvPJgPuT"


--=-vYYrm15OHAAapvPJgPuT
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2019-06-07 at 11:26 +0200, Stefan Wahren wrote:
> Hi Nicolas,
>=20
> Am 06.06.19 um 16:22 schrieb Nicolas Saenz Julienne:
> > Raspberry Pi's firmware offers an interface though which update it's
> > clock's frequencies. This is specially useful in order to change the CP=
U
> > clock (pllb_arm) which is 'owned' by the firmware and we're unable to
> > scale using the register interface provided by clk-bcm2835.
> >=20
> > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > Acked-by: Eric Anholt <eric@anholt.net>
> >=20
> > ---
> >=20
> > Changes since v1:
> >   - Use BIT()
> >   - Add Kconfig entry, with compile test
> >   - remove prepare/unprepare
> >   - Fix uninitialized init.name in pllb registration
> >   - Add MODULE_ALIAS()
> >   - Use determine_rate() instead of round_rate()
> >   - Add small introduction explaining need for driver
> >=20
> >  drivers/clk/bcm/Kconfig           |   7 +
> >  drivers/clk/bcm/Makefile          |   1 +
> >  drivers/clk/bcm/clk-raspberrypi.c | 302 ++++++++++++++++++++++++++++++
> >  3 files changed, 310 insertions(+)
> >  create mode 100644 drivers/clk/bcm/clk-raspberrypi.c
> >=20
> > diff --git a/drivers/clk/bcm/Kconfig b/drivers/clk/bcm/Kconfig
> > index 29ee7b776cd4..a4a2775d65e1 100644
> > --- a/drivers/clk/bcm/Kconfig
> > +++ b/drivers/clk/bcm/Kconfig
> > @@ -64,3 +64,10 @@ config CLK_BCM_SR
> >  	default ARCH_BCM_IPROC
> >  	help
> >  	  Enable common clock framework support for the Broadcom Stingray SoC
> > +
> > +config CLK_RASPBERRYPI
> > +	tristate "Raspberry Pi firmware based clock support"
> > +	depends on RASPBERRYPI_FIRMWARE || (COMPILE_TEST &&
> > !RASPBERRYPI_FIRMWARE)
> > +	help
> > +	  Enable common clock framework support for Raspberry Pi's firmware
> > +	  dependent clocks
> > diff --git a/drivers/clk/bcm/Makefile b/drivers/clk/bcm/Makefile
> > index 002661d39128..eb7159099d82 100644
> > --- a/drivers/clk/bcm/Makefile
> > +++ b/drivers/clk/bcm/Makefile
> > @@ -7,6 +7,7 @@ obj-$(CONFIG_CLK_BCM_KONA)	+=3D clk-bcm21664.o
> >  obj-$(CONFIG_COMMON_CLK_IPROC)	+=3D clk-iproc-armpll.o clk-iproc-pll.o
> > clk-iproc-asiu.o
> >  obj-$(CONFIG_ARCH_BCM2835)	+=3D clk-bcm2835.o
> >  obj-$(CONFIG_ARCH_BCM2835)	+=3D clk-bcm2835-aux.o
> > +obj-$(CONFIG_CLK_RASPBERRYPI)	+=3D clk-raspberrypi.o
> >  obj-$(CONFIG_ARCH_BCM_53573)	+=3D clk-bcm53573-ilp.o
> >  obj-$(CONFIG_CLK_BCM_CYGNUS)	+=3D clk-cygnus.o
> >  obj-$(CONFIG_CLK_BCM_HR2)	+=3D clk-hr2.o
>=20
> not your fault but you better rebase your next version on linux-next
> because Florian's latest patches ("clk: bcm: Make BCM2835 clock drivers
> selectable") collide with this patch.
>=20
> Checkpatch gives the following output about this patch:
>=20
> WARNING: 'harware' may be misspelled - perhaps 'hardware'?
>=20
> #58: FILE: drivers/clk/bcm/clk-raspberrypi.c:5:
> + * Even though clk-bcm2835 provides an interface to the harware
> registers for
>=20
> ERROR: code indent should use tabs where possible
> #197: FILE: drivers/clk/bcm/clk-raspberrypi.c:144:
> +^I^I^I^I           struct clk_rate_request *req)$

Noted, thanks.

As this seems fairly calm, should I send v3 or wait little more?


--=-vYYrm15OHAAapvPJgPuT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAlz6MYsACgkQlfZmHno8
x/4cAgf8C0p+K3P3lwXzF2aerFWGjQdQ5MTyixpeAFG52zhaabNg97gJ1Id0m0pa
DpW++g2ioGud8UyqpllRIVQYkdyCTMR2EpK7IQ29LN9nwS8SwKBg33HhYDUYgVY9
7Bl4zb+IavOd74KzxP+VBhdRrGIh8TsI/mfS7d2udj121AKJtpy9eFx6KrT60sPn
xAAgkcj490MpT3c4kihVMVPy/kLBQoHYWKpui23sTNyMKT7+2arsYrOgKcy6THbl
/JI1MO+kCGIQUVmkHk8jzoQMOVAGQqnqLYmjQVntn6Esdujc2PBqu5fqzV3mWrks
7LsAb94I/Y1BUed/JKAFjT5DJ0qLPA==
=zWl2
-----END PGP SIGNATURE-----

--=-vYYrm15OHAAapvPJgPuT--



--===============6290961454860255849==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6290961454860255849==--


