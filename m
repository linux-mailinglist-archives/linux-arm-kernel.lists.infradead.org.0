Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A7112679D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 18:04:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IFcLX8/hoRBZiLa9eLe1MDh1JqVW+OO8/6FsC3iS2Rw=; b=FzgspfKG3FJyOh2xXCtIL5Box
	vCQHwD/fwrqIJvdumg/xHI3dfF2Wj028MVaq5AAhVysbG4/Qx38W7gK8M5WNDaBGPtRe9QEqHUzTk
	RQDKJ+Kd9K+OyjrSUUY4hV3ffUxtNjVZqIoK8KMELrFMIra9jHPUyM9bFI71fUBUea3pq09WA0T9A
	Hh1FvhsyF7KlaQGRgFtR9/B0KF+FKe/LeV0IgEV9/rwIoSVBNYNkj4lFgZyoFaB1bvEdrCxJ0GvQA
	DSr5UOZ5cyoLTFlVZfPg1aqvTOPl4Ru5KuaEbTrJL7HshScLkVTN6V3fJV2sEHbY8d/0YPUvZygqX
	BUyp+ljNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihzE6-0004vm-OD; Thu, 19 Dec 2019 17:04:39 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihzDy-0004uE-Fm
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 17:04:31 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: sre)
 with ESMTPSA id 63C77292B37
Received: by earth.universe (Postfix, from userid 1000)
 id CCDED3C0C7B; Thu, 19 Dec 2019 18:04:24 +0100 (CET)
Date: Thu, 19 Dec 2019 18:04:24 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH 0/2] at91-sama5d2_shdwc shutdown controller
Message-ID: <20191219170424.lx42pzdysqjwzoal@earth.universe>
References: <1576765674-22070-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
In-Reply-To: <1576765674-22070-1-git-send-email-claudiu.beznea@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_090430_660028_BBFD9B13 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-kernel@vger.kernel.org, alexandre.belloni@bootlin.com,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============3666761063561113672=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3666761063561113672==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cbfgrqhlxasynysk"
Content-Disposition: inline


--cbfgrqhlxasynysk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Dec 19, 2019 at 04:27:52PM +0200, Claudiu Beznea wrote:
> PMC master clock register offset is different b/w sam9x60 and
> other SoCs. Since there is a need of this register offset in
> shutdown procedure we need to have it per SoC. This is what
> this series does.

Patches look good to me, but I will wait a bit to give Nicolas
and Alexandre a chance to review/test the changes.

-- Sebastian

> Claudiu Beznea (2):
>   power: reset: at91-sama5d2_shdwc: introduce struct shdwc_reg_config
>   power: reset: at91-sama5d2_shdwc: use proper master clock register
>     offset
>=20
>  drivers/power/reset/at91-sama5d2_shdwc.c | 75 +++++++++++++++++++++-----=
------
>  1 file changed, 49 insertions(+), 26 deletions(-)
>=20
> --=20
> 2.7.4
>=20

--cbfgrqhlxasynysk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAl37rZIACgkQ2O7X88g7
+ppKTQ//WW4FUtcXIE3pmAzAQCHDm6oLLp1IgXG6CBKRP9apk/d5HxS1lDCRwC7M
lK2MQp23XVxO6dhUTrAaC51//Esv4qrouga7pdnQT1ruYXGuCP9YivvENv4WZYQK
qLpFCFeK853DKEbh6R/vqWAhTxcZeeFLjs51DpCFDNGGBP6A09CvrvodAaAf/NBH
NteprA/W29YjYoo1WImBALdgiaB2kMH9dzXTJhRHjvEjkMCg+KNe9GC0A8t5n5TK
0UXa7NxJIun5ISzJKzZYFF4qxAlDE7cY2mfBA2YKsL/UdE2CaM/k4gGB55eMv5Q4
m6h836d5Ypq6Xt1P3cQgB8wr4r+p4W5oxA7dosSTx487H7QRcrSUkZ4vhBp8/d5O
kL0vuD8qdViMyVE9klommHijvKTxdZdKxG2bxZxMUljyhjmlEAs8bQule/Og2Xzp
NqubWnlofcOyGZpSiBIvPfzfaWmRsZdWByxTnXl9Im5NUIivQOMkpeP48lVCNPa3
KMWGHIvUxfNvVL6dEuh73O2FXctutcmt9xYKlyl0V5p+mhQRyKWR5nSiAnEUBV2p
uLanxn+IitxK7tLZ5n6DEjQmGk1g8vxAoA7h36sjhK6Vt7M6ruZI5EE8O2rfwbmb
j4DKfsU8zxj8hyHKFIbkrMsJJNZuAZmStjY36J5M8Cpzbc+vRUI=
=Rjmv
-----END PGP SIGNATURE-----

--cbfgrqhlxasynysk--


--===============3666761063561113672==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3666761063561113672==--

