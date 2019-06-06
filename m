Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E3337C4D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 20:32:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=M0T2jWM5gX/NrQYGixTYzQv5PHbkUjGhEeLXWaxd6P4=; b=B7c1GMFZjwA+C2N/356m+bla9
	UFXJQCk6QRMi54h5bxlqd0rJVFIdHBYt9Mx/xk/GBFymPFK81QDLgs3NRQcOZZkLnD3buRFs1wWvX
	ug7wE79ECGJabNQzmQ8eNfBKXmHdYf+HuAQdHnKTZIo9awJvUkIjYkQdL0ft6AlwmVnonE/5vK4Kh
	8Sr8ozCE0DoyabrMYC2B/NrLwMtPyioD2Jawk+aGhNbpapWMQxfXYu8wY1CfoZEGQIiHcnpSRBmod
	mjMCSY+eGYBN7wgr7TdeuXubi0clfQgJOOoqnkM2wONjuH/MG3omJd0aAjsn/NUsB9aEilHDA4b4p
	VBmV4Fnkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYxB9-0000qj-Gc; Thu, 06 Jun 2019 18:31:59 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYxB2-0000q8-Jc; Thu, 06 Jun 2019 18:31:54 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id A10C1AE4D;
 Thu,  6 Jun 2019 18:31:49 +0000 (UTC)
Message-ID: <50edadb7b1b1d74c605d73d48518b5e20638b51a.camel@suse.de>
Subject: Re: [PATCH v2 4/7] cpufreq: add driver for Raspbery Pi
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stephen Boyd <sboyd@kernel.org>, "Rafael J. Wysocki"
 <rjw@rjwysocki.net>,  Viresh Kumar <viresh.kumar@linaro.org>,
 stefan.wahren@i2se.com
Date: Thu, 06 Jun 2019 20:31:47 +0200
In-Reply-To: <20190606182335.1D15F20872@mail.kernel.org>
References: <20190606142255.29454-1-nsaenzjulienne@suse.de>
 <20190606142255.29454-5-nsaenzjulienne@suse.de>
 <20190606170949.4A46720652@mail.kernel.org>
 <eb72a26b55cf17c29df6a7fd3c5def08182e00af.camel@suse.de>
 <20190606173609.2C3952083D@mail.kernel.org>
 <153579ddd7e6bd1e5c860a7a01115e47c78a1442.camel@suse.de>
 <20190606182335.1D15F20872@mail.kernel.org>
User-Agent: Evolution 3.32.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_113152_937996_12C2FA35 
X-CRM114-Status: GOOD (  24.81  )
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arm-kernel@lists.infradead.org, f.fainelli@gmail.com,
 ptesarik@suse.com, mturquette@baylibre.com, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, eric@anholt.net,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, mbrugger@suse.de, ssuloev@orpaltech.com
Content-Type: multipart/mixed; boundary="===============7165469943632309649=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7165469943632309649==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-PCYUiltwEYfTM8wgpO12"


--=-PCYUiltwEYfTM8wgpO12
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2019-06-06 at 11:23 -0700, Stephen Boyd wrote:
> Quoting Nicolas Saenz Julienne (2019-06-06 11:10:04)
> > On Thu, 2019-06-06 at 10:36 -0700, Stephen Boyd wrote:
> > > Quoting Nicolas Saenz Julienne (2019-06-06 10:22:16)
> > > > Hi Stephen,
> > > > Thanks for the review.
> > > >=20
> > > > On Thu, 2019-06-06 at 10:09 -0700, Stephen Boyd wrote:
> > > > > Quoting Nicolas Saenz Julienne (2019-06-06 07:22:56)
> > > > > > diff --git a/drivers/cpufreq/raspberrypi-cpufreq.c
> > > > > > b/drivers/cpufreq/raspberrypi-cpufreq.c
> > > > > > new file mode 100644
> > > > > > index 000000000000..99b59d5a50aa
> > > > > > --- /dev/null
> > > > > > +++ b/drivers/cpufreq/raspberrypi-cpufreq.c
> > > > > [...]
> > > > > > +
> > > > > > +/*
> > > > > > + * Since the driver depends on clk-raspberrypi, which may retu=
rn
> > > > > > EPROBE_DEFER,
> > > > > > + * all the activity is performed in the probe, which may be de=
fered
> > > > > > as
> > > > > > well.
> > > > > > + */
> > > > > > +static struct platform_driver raspberrypi_cpufreq_driver =3D {
> > > > > > +       .driver =3D {
> > > > > > +               .name =3D "raspberrypi-cpufreq",
> > > > > > +       },
> > > > > > +       .probe          =3D raspberrypi_cpufreq_probe,
> > > > > > +       .remove         =3D raspberrypi_cpufreq_remove,
> > > > > > +};
> > > > > > +module_platform_driver(raspberrypi_cpufreq_driver);
> > > > >=20
> > > > > How does this driver probe? Do you have a node in DT named
> > > > > raspberrypi-cpufreq that matches and probes this? I would think t=
his
> > > > > would follow the drivers/cpufreq/cpufreq-dt-platdev.c design wher=
e
> > > > > it's
> > > > > an initcall that probes the board compatible string.
> > > > >=20
> > > > > Or, if it depends on clk-raspberrypi probing, maybe it could crea=
te
> > > > > the
> > > > > platform device in that drivers probe function.
> > > >=20
> > > > Well you just reviewed that patch :)
> > >=20
> > > Ok. So what's your plan?
> >=20
> > So as discussed previously with the RPi mantainers, they preferred for =
the
> > platform device for raspberrypi-clk to be created by the firmware inter=
face
> > driver. IIRC Stefan said it was more flexible and the approach used wit=
h
> > RPi's
> > hwmon driver already. Also, it's not really clear whether this driver r=
eally
> > fits the device tree as it wouldn't be describing hardware.
> >=20
> > As far as raspberrypi-cpufreq is concerned the max and min frequencies =
are
> > configurable in the firmware. So we can't really integrate cpufreq into=
 the
> > device tree as we need to create the opp table dynamically. Hence the
> > dedicated
> > driver. On top of that the CPU might not have a clock during the init
> > process,
> > as both the firmware interface and raspberrypi-clk can be compiled as
> > modules.
> > So I decided the simplest solution was to create the raspberrypi-cpufre=
q
> > platform device at the end of raspberrypi-clk's probe.
> >=20
> > Once raspberrypi-cpufreq is loaded it queries the min/max frequencies,
> > populates the CPU's opp table and creates an instance of cpufreq-dt. Wh=
ich
> > finally can operate, without the need of any dt info, as opp tables are
> > populated and CPUs have a clock.
> >=20
> > I hope this makes it a little more clear :).
> >=20
>=20
> Yes, thanks. I see that largely follows the commit description so it
> looks OK to me.
>=20

Thanks!


--=-PCYUiltwEYfTM8wgpO12
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAlz5XBMACgkQlfZmHno8
x/7vFwgAnjzWaIFSw0AxW4nf31cfoR9r+HpJidC2eUQM6yOtUWsHYyQkO2rYhnko
wEZ2B2agV3Ya0AE4xD4gklrTm5J2E/Wsd1jVX4SBWvlCuiKFSEad4zG0xeR+HvRP
gMOArg11sPi4INEfqaDANfQyPoMdD9f7qVGlytyV5Fb2028FCJwVMe7VlXbTj2/K
WdD5dIU/VXIEqqV5SelI5CoXt2J52kGDVg6+rIM/3fu+KNdUE/WS5sstEdKUksAF
JxDel6WB/mVepEQ3lMDX0X22ThhqR984OJYPiIFfHzVafoN+1A1lGeWHa2DmcSyM
QtCewkj8IzG0h6bz4O+0yyfFnqjZTA==
=aEU8
-----END PGP SIGNATURE-----

--=-PCYUiltwEYfTM8wgpO12--



--===============7165469943632309649==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7165469943632309649==--


