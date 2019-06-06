Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F3C37ACF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 19:18:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wLpdzAcrgusXixpFU0bmSBZhEFcQEaGz1TZpyGTjIq8=; b=lSUom72UWWhEJvAcmAclNnmbl
	2ZP96REJpwTAT4G7Tl7dPmcAGwPQQYmBAC0pZ+VeJOfJV/pfdTTWFPcoDLfFej4TMQI4jrN2HBUH8
	HKVg54DerogSk2SUNS9MrHVu4S4DIF6iy+2RINtRSx0PuuTWpnkY7kZR9gHQJckQig7stfjkVrQYR
	TayG6OPP7J5EBCGBjDORquUW7D0Ec9oLzJNzeTZYuhnyi8DxMcDybU0IQHzSIbAf5hnIq+1yxp0Gg
	qIuPDwOXWJsaRGWT7UBIMKq+pf11IohRYIeAwas7KaMkDvmymMpycV3fdQDuyDlRoCitSuWsv1fpC
	5yXc5Eupg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYw1s-0006pE-NT; Thu, 06 Jun 2019 17:18:20 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYw1k-0006o0-Vg; Thu, 06 Jun 2019 17:18:15 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id C95A0ABD0;
 Thu,  6 Jun 2019 17:18:09 +0000 (UTC)
Message-ID: <2dd0a516bbfe6150112ec7dc5f7d4d85cbe3cd03.camel@suse.de>
Subject: Re: [PATCH v2 5/7] clk: raspberrypi: register platform device for
 raspberrypi-cpufreq
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stephen Boyd <sboyd@kernel.org>, linux-kernel@vger.kernel.org, 
 stefan.wahren@i2se.com
Date: Thu, 06 Jun 2019 19:16:56 +0200
In-Reply-To: <20190606170505.39C5B20693@mail.kernel.org>
References: <20190606142255.29454-1-nsaenzjulienne@suse.de>
 <20190606142255.29454-6-nsaenzjulienne@suse.de>
 <20190606170505.39C5B20693@mail.kernel.org>
User-Agent: Evolution 3.32.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_101813_164645_683F84A1 
X-CRM114-Status: GOOD (  13.02  )
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
Cc: f.fainelli@gmail.com, linux-pm@vger.kernel.org, viresh.kumar@linaro.org,
 mturquette@baylibre.com, ptesarik@suse.com, rjw@rjwysocki.net,
 mbrugger@suse.de, eric@anholt.net, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, ssuloev@orpaltech.com
Content-Type: multipart/mixed; boundary="===============6149935916705701916=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6149935916705701916==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-kUnogK0EQ/Wuzf5iUu5P"


--=-kUnogK0EQ/Wuzf5iUu5P
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2019-06-06 at 10:05 -0700, Stephen Boyd wrote:
> Quoting Nicolas Saenz Julienne (2019-06-06 07:22:58)
> > diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-
> > raspberrypi.c
> > index b1365cf19f3a..052296b5fbe4 100644
> > --- a/drivers/clk/bcm/clk-raspberrypi.c
> > +++ b/drivers/clk/bcm/clk-raspberrypi.c
> > @@ -63,6 +63,8 @@ struct raspberrypi_firmware_prop {
> >         __le32 disable_turbo;
> >  } __packed;
> > =20
> > +static struct platform_device *rpi_cpufreq;
>=20
> Why can't this be stored in platform driver data?

It actually could, I just followed the same pattern as the code found in pa=
tch
#3. I'll update it in the next version if you prefer it.=20

>=20
> > +
> >  static int raspberrypi_clock_property(struct rpi_firmware *firmware, u=
32
> > tag,
> >                                       u32 clk, u32 *val)
> >  {
> > @@ -285,6 +287,17 @@ static int raspberrypi_clk_probe(struct platform_d=
evice
> > *pdev)
> >                 return ret;
> >         }
> > =20
> > +       rpi_cpufreq =3D platform_device_register_data(dev, "raspberrypi=
-
> > cpufreq",
> > +                                                   -1, NULL, 0);
> > +
> > +       return 0;
> > +}
> > +
> > +static int raspberrypi_clk_remove(struct platform_device *pdev)
> > +{
> > +       platform_device_unregister(rpi_cpufreq);
> > +       rpi_cpufreq =3D NULL;
>=20
> This assignment to NULL looks unnecessary.
>=20

Same as above, but now that you pointed out, it's true it doesn't have any
effect

> > +
> >         return 0;
> >  }
> > =20
>=20
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel


--=-kUnogK0EQ/Wuzf5iUu5P
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAlz5SogACgkQlfZmHno8
x/4VhQgAs+iCf5QclLwdbxPvkFRyZXBtati3ZFFhBMaCi1DaZZUUSSs3K37BoxW8
RbH8hNdRV0709SU3XWNHEetL5XTkJa0rBDcxxY4BNovcjJq5MXV02bZUkFVxSQDc
zjPPWadRrNsZWs/ylCDjoTFjO4Rb9OKPtvtlr3/lB11zgZZT3WSt1HWSH+58bdrO
44OehaU2kdivEHqT/M3g5cdSnkhMYYZsE874JnQsYmAOQ682FnhHrcA1n4Qjzvap
916JhXnv4rv1FeeP9WvN0wKWorSlViOOSGu97jr4mAPoJQn1wfv0WulWnw0j896i
vjBPNpJa84q+O2nkkwxpuG0bKbg4HA==
=hGpW
-----END PGP SIGNATURE-----

--=-kUnogK0EQ/Wuzf5iUu5P--



--===============6149935916705701916==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6149935916705701916==--


