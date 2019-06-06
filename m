Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F288637AF0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 19:22:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nJAnZ0v7mY3JLxxu62t6mVOhN/mJbrlhAz4elsAqhSs=; b=MgCaHnSsq3UJ5bfT4Xw2CTsI3
	JmM30uq2RDk+XnZ1gidetzvz+/w3s0QBGHQCNacN8gbSZhF4XmRAs3oRMvMA/aPtvKfRCq8JiDjpV
	+MWjTA3nta6UwPlVUKeTWSEQFMhg+FDy2dqIwhEo5sX8mbOzijPwKxrNQjwzX7FPk7Eu+6KzgA+TX
	B1n1Nf4lv89vhbEXvpTYcBY1OFbImu/yKSf1vnsaMflNf8Rsly5OyMd4tHYHrMM5XgEAUeXuwsTEG
	3O+ssgw1UihUb/0pTkRFwo474NR3rjh2J/SfejLgvcIUBsm/9j8TJZ0Aqg9xCyLenIhO4Fs/dDlwf
	n+CqWODOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYw6C-0000IO-C7; Thu, 06 Jun 2019 17:22:48 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYw65-0000Hz-DL; Thu, 06 Jun 2019 17:22:42 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 1878AABD0;
 Thu,  6 Jun 2019 17:22:40 +0000 (UTC)
Message-ID: <eb72a26b55cf17c29df6a7fd3c5def08182e00af.camel@suse.de>
Subject: Re: [PATCH v2 4/7] cpufreq: add driver for Raspbery Pi
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stephen Boyd <sboyd@kernel.org>, "Rafael J. Wysocki"
 <rjw@rjwysocki.net>,  Viresh Kumar <viresh.kumar@linaro.org>,
 stefan.wahren@i2se.com
Date: Thu, 06 Jun 2019 19:22:16 +0200
In-Reply-To: <20190606170949.4A46720652@mail.kernel.org>
References: <20190606142255.29454-1-nsaenzjulienne@suse.de>
 <20190606142255.29454-5-nsaenzjulienne@suse.de>
 <20190606170949.4A46720652@mail.kernel.org>
User-Agent: Evolution 3.32.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_102241_600852_DD01349B 
X-CRM114-Status: GOOD (  16.21  )
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
Cc: f.fainelli@gmail.com, linux-pm@vger.kernel.org, mturquette@baylibre.com,
 ptesarik@suse.com, linux-kernel@vger.kernel.org, mbrugger@suse.de,
 eric@anholt.net, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, ssuloev@orpaltech.com
Content-Type: multipart/mixed; boundary="===============9197915799142124161=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============9197915799142124161==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-Pw8rcdAQwigEg8aqt+O7"


--=-Pw8rcdAQwigEg8aqt+O7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Stephen,
Thanks for the review.

On Thu, 2019-06-06 at 10:09 -0700, Stephen Boyd wrote:
> Quoting Nicolas Saenz Julienne (2019-06-06 07:22:56)
> > diff --git a/drivers/cpufreq/raspberrypi-cpufreq.c
> > b/drivers/cpufreq/raspberrypi-cpufreq.c
> > new file mode 100644
> > index 000000000000..99b59d5a50aa
> > --- /dev/null
> > +++ b/drivers/cpufreq/raspberrypi-cpufreq.c
> [...]
> > +
> > +/*
> > + * Since the driver depends on clk-raspberrypi, which may return
> > EPROBE_DEFER,
> > + * all the activity is performed in the probe, which may be defered as
> > well.
> > + */
> > +static struct platform_driver raspberrypi_cpufreq_driver =3D {
> > +       .driver =3D {
> > +               .name =3D "raspberrypi-cpufreq",
> > +       },
> > +       .probe          =3D raspberrypi_cpufreq_probe,
> > +       .remove         =3D raspberrypi_cpufreq_remove,
> > +};
> > +module_platform_driver(raspberrypi_cpufreq_driver);
>=20
> How does this driver probe? Do you have a node in DT named
> raspberrypi-cpufreq that matches and probes this? I would think this
> would follow the drivers/cpufreq/cpufreq-dt-platdev.c design where it's
> an initcall that probes the board compatible string.
>
> Or, if it depends on clk-raspberrypi probing, maybe it could create the
> platform device in that drivers probe function.

Well you just reviewed that patch :)

> > +
> > +MODULE_AUTHOR("Nicolas Saenz Julienne <nsaenzjulienne@suse.de");
> > +MODULE_DESCRIPTION("Raspberry Pi cpufreq driver");
> > +MODULE_LICENSE("GPL");
> > +MODULE_ALIAS("platform:raspberrypi-cpufreq");
>=20
> I don't think the module alias is needed anymore.

That's surprising. I remember the driver not being loaded by udev without i=
t.

Regards,
Nicolas


--=-Pw8rcdAQwigEg8aqt+O7
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAlz5S8gACgkQlfZmHno8
x/6ReQgAmTObVFlrCJjS+HsdqcP5Er91BEOTv2XnVOfYkRC/w/vFXhkOZIlokLgq
kj+GwzHmUGEGzlwyGsb1cJCnOffS7QI5Y1P2pfqqF1z0+kCfNiS8RMVJh6lvazsr
wxTIqZBjf6Qi6Hckl03htdGmFkHCP4ftoHTWP6SVjWRfm9tSzbfWSWczNMwsU2g0
ICXOdZ1BzUiDU69Tq8yWuKFavbvp7JmHKTzGI5sV7hyiFikQZDwbivbUN8dERESJ
aWlDO32Twc2v+W8z9ZJaWtfCcOtFA/Tkca2sZ+HHt8cxe67dPzcQIFC/BoPfTw/h
TVzSQVZjVbG91S6E0W+ElFkMVnI8BQ==
=zgC8
-----END PGP SIGNATURE-----

--=-Pw8rcdAQwigEg8aqt+O7--



--===============9197915799142124161==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============9197915799142124161==--


