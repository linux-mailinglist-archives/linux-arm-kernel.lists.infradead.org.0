Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A951830FA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 14:14:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PNcxRjVq760vLnEXl2WWtkBFGydeJ7Wjl+IuQG0XAto=; b=eYYW3MSBDoYcdlSCmLmFZ8Dse
	B7TM1mox5Gm7Z9urJ8C5e6rC2ae2/vE2IRawooaZmoIgEJhF+KVi1LdIi7R/SeFw6ewkFSl05Yl8I
	mtfyd3aer9laYF+pzTH3+8+sV7e3tgw+YmlUzJxcagzcOUIfWOOAVjRs6y+gWVgC7VMsU5z1N/Mw7
	NLj+jc73N76Tc2G31N3K6V+AsW+pO8fGgCYPSqEqbZ0CeDgVImkCh0wARp0W8ynPjN+f/fpK0Gkoo
	lEY4rbhD6K6chfX6vhuur0E6fYxHCSaN8lB9PzB8B8Mc1w/fDO8UebIPEN2XyJ0kCo3hAm6lJq4uW
	96TVvK4bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCNex-0001Ch-OD; Thu, 12 Mar 2020 13:13:59 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCNeo-0001C2-Su; Thu, 12 Mar 2020 13:13:52 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 16749B210;
 Thu, 12 Mar 2020 13:13:48 +0000 (UTC)
Message-ID: <a51badd7ba6fc1938a120b8a3b8a423ca9a3613b.camel@suse.de>
Subject: Re: [PATCH v2 00/11] Raspbery Pi 4 vmmc regulator support
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 12 Mar 2020 14:13:45 +0100
In-Reply-To: <CAPDyKFp+XwGog_w+8Sv1hYA-Umi6Rt2LYR1fyMEEb9abdb9nGQ@mail.gmail.com>
References: <20200306174413.20634-1-nsaenzjulienne@suse.de>
 <CAPDyKFp+XwGog_w+8Sv1hYA-Umi6Rt2LYR1fyMEEb9abdb9nGQ@mail.gmail.com>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_061351_219874_CFC3A27E 
X-CRM114-Status: GOOD (  15.01  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, DTML <devicetree@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>,
 linux-rpi-kernel@lists.infradead.org, phil@raspberrypi.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============4719103837623911302=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4719103837623911302==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-dHp/NTMIYot5p5695p1B"


--=-dHp/NTMIYot5p5695p1B
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Ulf,

On Thu, 2020-03-12 at 14:08 +0100, Ulf Hansson wrote:
> On Fri, 6 Mar 2020 at 18:44, Nicolas Saenz Julienne
> <nsaenzjulienne@suse.de> wrote:
> > The series first cleans up a common pattern, which is ultimately needed
> > to integrate the regulator with bcm2711's sdhci-iproc. It then
> > introduces the relevant device-tree changes.
> >=20
> > ---
> >=20
> > Changes since v1:
> >  - Use helper function istead of quirk
> >  - Add GPIO label
> >=20
> > Nicolas Saenz Julienne (11):
> >   mmc: sdhci: Introduce sdhci_set_power_and_bus_voltage()
> >   mmc: sdhci: arasan: Use sdhci_set_power_and_voltage()
> >   mmc: sdhci: milbeaut: Use sdhci_set_power_and_voltage()
> >   mmc: sdhci: at91: Use sdhci_set_power_and_voltage()
> >   mmc: sdhci: pxav3: Use sdhci_set_power_and_voltage()
> >   mmc: sdhci: xenon: Use sdhci_set_power_and_voltage()
> >   mmc: sdhci: am654: Use sdhci_set_power_and_voltage()
> >   mmc: sdhci: Unexport sdhci_set_power_noreg()
> >   mmc: sdhci: iproc: Add custom set_power() callback for bcm2711
> >   ARM: dts: bcm2711: Update expgpio's GPIO labels
> >   ARM: dts: bcm2711: Add vmmc regulator in emmc2
> >=20
> >  arch/arm/boot/dts/bcm2711-rpi-4-b.dts | 13 ++++++++++++-
> >  drivers/mmc/host/sdhci-iproc.c        | 17 ++++++++++++++++-
> >  drivers/mmc/host/sdhci-milbeaut.c     | 13 +------------
> >  drivers/mmc/host/sdhci-of-arasan.c    | 15 ++-------------
> >  drivers/mmc/host/sdhci-of-at91.c      | 18 +-----------------
> >  drivers/mmc/host/sdhci-pxav3.c        | 20 +-------------------
> >  drivers/mmc/host/sdhci-xenon.c        | 20 +-------------------
> >  drivers/mmc/host/sdhci.c              | 24 +++++++++++++++++++++---
> >  drivers/mmc/host/sdhci.h              |  5 +++--
> >  drivers/mmc/host/sdhci_am654.c        | 17 +++--------------
> >  10 files changed, 61 insertions(+), 101 deletions(-)
> >=20
> > --
> > 2.25.1
> >=20
>=20
> Patch 1-4, 6, 9 applied for next, thanks!

I think you meant to apply 1-4, 7 and 9. Patch 6 is one of the contentious
ones.

Regards,
Nicolas


--=-dHp/NTMIYot5p5695p1B
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5qNYkACgkQlfZmHno8
x/48GAgAi6d1UCzPYCwsj71N7+l4MLbwJlBgYMPOcNnLon8xik24Ay4PhalmwceJ
BSNQoqNVBL7IK/xKzVQfLZlGs81Pi4Dmh/AwAwhliFuZmB0dPcZFxnjRL0qk+wja
pjU1xyVgCce9tLMKOKLdvDt22ivtDd4SO1/dp+MKhJ5+MFhdYdTTFa0KiGkq5F7P
E3lJshWnP0/8ilwO2J0yNaKZ3SsjQwgLLVYyy56t4oLL24Dt/Jt+JgQWdTvHY+1a
B4ibgW6C7j/FbksXEUDAtETYKcXyhSGnuxJJxU2SFYXvYLzX820BisWwxxw+XdJP
kwEo+Mk6cui89Y9Vu6W6D7UegdvPBQ==
=k11V
-----END PGP SIGNATURE-----

--=-dHp/NTMIYot5p5695p1B--



--===============4719103837623911302==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4719103837623911302==--


