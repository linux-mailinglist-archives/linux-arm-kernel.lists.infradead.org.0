Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD862AED3A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 16:37:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PfEcokXqQ56FDqOuMDU2sm2ZnzJRoRvmmP94saTROoA=; b=mHIXrfba9XEwAzoUORpyjJrYJ
	3O6MbchdZDfsiT6wA7Hk6azRaXkZV3H2jLVYy/fy1+lVhQvO9bl5I216AG6Ae5myYNAUkkfGchlgZ
	lKuXHILVLi0mxcbplNSu4WtWwUhk726bUwQo+WFxf1HkZMa1GNDvr1XqOV+Hn0NI1/tcWONhS9j48
	LycE0gkKDRZ5OEqqm7gJsC6uD2VLhHTv2a0dQ8fhPbJC+0By0GMGVQm0Ewf5dkx2bNhMwUEsB3E/l
	7Kl4R7Q2390oY8efnp7YZzu0LLHRXQt8PTfa86ktIOD16zdZgMeLUm9LB+FPUptoLbhindB4atqYt
	hGYOsOhoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7hHA-0000NC-DF; Tue, 10 Sep 2019 14:37:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7hGx-0000MM-Bq
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 14:37:36 +0000
Received: from earth.universe (unknown [148.69.85.38])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 95C0121479;
 Tue, 10 Sep 2019 14:37:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568126254;
 bh=y1WgrtzyvFdOq+b4d4REujchX5rk4th/6G7OOccfmxM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iYlI8DaVumn332PgaHqmbGve4wfPHMu0RUKeSPGg0tR/ZBCA5cMBGisOPvfJ5WTat
 QFfogJ1XfKG4+7MXP5TZNCCqhaSNCAgjaVnZ0lZ9X2TpoxJ9fC0zIbRwf7lAqP9XiG
 1a67UW/obuJuytpzOoVZrwD9QXBSgZWniN83km5U=
Received: by earth.universe (Postfix, from userid 1000)
 id 8B5D53C0CFA; Tue, 10 Sep 2019 16:37:32 +0200 (CEST)
Date: Tue, 10 Sep 2019 15:37:32 +0100
From: Sebastian Reichel <sre@kernel.org>
To: Adam Ford <aford173@gmail.com>
Subject: Re: [RFC] ARM: omap3: Enable HWMODS for HW Random Number Generator
Message-ID: <20190910143732.3g3q4acvnx2pqvjx@earth.universe>
References: <20190828150037.2640-1-aford173@gmail.com>
 <20190905230443.GA52127@atomide.com>
 <CAHCN7xKxffJUV2V2CCuw0iPqUm4LJT28GMrcF2=8rDJQM2dOOw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHCN7xKxffJUV2V2CCuw0iPqUm4LJT28GMrcF2=8rDJQM2dOOw@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_073735_429188_08D0F97A 
X-CRM114-Status: GOOD (  14.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Paul Walmsley <paul@pwsan.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Tony Lindgren <tony@atomide.com>,
 Russell King <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Rob Herring <robh+dt@kernel.org>,
 =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
 Pali =?utf-8?B?Um9ow6Fy?= <pali.rohar@gmail.com>,
 Linux-OMAP <linux-omap@vger.kernel.org>, Adam Ford <adam.ford@logicpd.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============0097017294839963007=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0097017294839963007==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qrixv7njwauekhyc"
Content-Disposition: inline


--qrixv7njwauekhyc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Sep 10, 2019 at 08:56:49AM -0500, Adam Ford wrote:
> On Thu, Sep 5, 2019 at 6:04 PM Tony Lindgren <tony@atomide.com> wrote:
> > Oh and this needs to default to status =3D "disabled" for
> > HS devices like n900 as it needs to use the omap3-rom-rng.
>=20
> I don't know enough about the HS version of the OMAP3, but what's the
> main difference between omap3-rom-rng and this one?

The OMAP HS chips have the bus firewall configured to block direct
access to some cryptography related devices. The kernel will crash
with a bus error, if you try to read/write the registers for
protected devices. The omap3-rom-rng avoids this by communicating
with the security middleware component instead of directly accessing
the RNG hardware.

-- Sebastian

--qrixv7njwauekhyc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAl13tSkACgkQ2O7X88g7
+prv8g//byjix58ZdQFHZMVKdcFO70kTP9egx8f9Bsi2ZGMy3ybyYweRBD1xerSj
9ytb9qNeNKC1Tn9R4HXWF2s0uG8YiCCwYv8XO2RGD1gBYc+ohxHMgu2LUHkqrYkd
4ch8aa6vWOfoYz5p6RZ4TSMifa6pEL/Dntv73BZ2iWyIPNFiU3G0JYERDwh1k2mE
zJQ/eEq/1G+ztEYBSa5HoRSLQUfgbpRWdnjw/WMQZMYIGb67iKJhEnFRl9bKdiS+
Bj0od1d1EuQWiYclgBn2qGrfxKbweSmX9rDGTsQKzzb32zUSYLd5eh4m6dpO3Cea
eWNc4w0cBN5XXDjmVf400xtdbhl4GNS0gwfHUb6QCHp4aSPKGIvv3rU2vt5Rf+HI
K/u+3sywozcr9D6NbgmTyGNRRUxpZZe7QZdAtIaZChEcwi8FgtCxmeAtnUyXHNxr
+0vPFHKA3IFKHfR2pNKu2UlS7HbKxUg+ZEgCq6dUAVGQ8BdNK5/a26MbJCASEGor
OLfajRDyxnyFSlV2rKMh2Ich5oD39lI+rwA2jIJf+EbcHAudd25/4mGxc6Gb2oBb
PgogxAzpXE95iStDWlUeoS/8Jh0hQtD/zb9amYgvwYSookOL9Wt39x5iMovt8IBm
pHpoVJGzv5+DB874xaKn0jUe988yQdhym1joC+xayv+LGfBQvkE=
=hSyU
-----END PGP SIGNATURE-----

--qrixv7njwauekhyc--


--===============0097017294839963007==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0097017294839963007==--

