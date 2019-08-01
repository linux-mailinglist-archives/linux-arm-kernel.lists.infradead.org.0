Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 089007DB6E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 14:27:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FL0EqfGNVCXXWJyFRSvpaYixHIqns8DOV0IlRcREs8A=; b=aTbt5O5tr6VUBlajfQvuJ4v2r
	BD9MKNOVhFk5iKB5kPAYj5tOiGUUN5wyLsxdHM86u37wJ8VeqDabSN8xtYdV6TJgQ2TKa+pS7yb3K
	sMHLAVFy6CmM341P4ViFFQEh4IjzxXvxRT6EAPea6rSnL/ycTDodSY2zLGBF/6D3JL5n11zWT6pFI
	HBizvPeXMfez3L4CNC6WQqBtM9BaCwnTFs5MNXNhXBxE5OIxoq+2dikeIIGfLrhrp2oAu3ks/OY7V
	C+Ikifl7fB8UIoJ601X3VN/5//qS8MNTii6vS5UXFwp6KyeBNReLh3TyHpBg25CUgNgXx/jtuqW9H
	JKXsqkG3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htABP-0004D2-H5; Thu, 01 Aug 2019 12:27:47 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1htABE-0004CQ-Q4
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 12:27:38 +0000
Received: from localhost (p54B333D2.dip0.t-ipconnect.de [84.179.51.210])
 by pokefinder.org (Postfix) with ESMTPSA id 026C62C2817;
 Thu,  1 Aug 2019 14:27:35 +0200 (CEST)
Date: Thu, 1 Aug 2019 14:27:35 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: Re: [PATCH v3 5/7] drivers: Introduce device lookup variants by
 ACPI_COMPANION device
Message-ID: <20190801122735.GD1659@ninjato>
References: <20190723221838.12024-1-suzuki.poulose@arm.com>
 <20190723221838.12024-6-suzuki.poulose@arm.com>
 <20190726202353.GA963@kunai>
 <20190801115856.GS23480@smile.fi.intel.com>
 <20190801120830.GA1659@ninjato>
 <20190801122106.GU23480@smile.fi.intel.com>
MIME-Version: 1.0
In-Reply-To: <20190801122106.GU23480@smile.fi.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_052736_997601_52C7C0D8 
X-CRM114-Status: UNSURE (   5.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: rafael@kernel.org, gregkh@linuxfoundation.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-acpi@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Jarkko Nikula <jarkko.nikula@linux.intel.com>,
 linux-i2c@vger.kernel.org, Mika Westerberg <mika.westerberg@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org, Len Brown <lenb@kernel.org>
Content-Type: multipart/mixed; boundary="===============7775003630703560284=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7775003630703560284==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="n2Pv11Ogg/Ox8ay5"
Content-Disposition: inline


--n2Pv11Ogg/Ox8ay5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> It's again not Cc'ed to all parties.
> But OK, looks good to me.
> Tough may be Jarkko can test all this.

To be fair, only Mika is listed as I2C ACPI maintainer. Feel free to add
more :) I assume Mika doesn't mind.


--n2Pv11Ogg/Ox8ay5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl1C2rcACgkQFA3kzBSg
KbbC7g/+JDJ/wQtaEgLwko1svAEbCfU6wxRadTwM0jWd4adQgIpPuwceKEDRV5ap
sdqUoIDjY4UInI7HeUYLRTY/VUIaOmQ4C0VkWvgYFnAsZoAU/GWKrGVnJ74C34oK
L1n76meYZVFj1+kuOPce8PKPbZ1N6t2N0H5VHChczypiPldel2s/UiW5Myk18T5v
ZBt/xDU/C+vn2IPRKu5ybKFWzsSGIeAq0D/LvrnsO6q7z3bu8nmOL8rNTQCOVVwl
vG1B3arBO1jwtT5kVA3/1hQZDoDucaXlFNw/8oL/jSHCajH2kKf/Ux0D4gAjK18y
XWexgt84CLU9Q1MIwuYoJ+yuB8jyeJVdWAEkDSBVS6qUSZRx+00arhni5AJKWKGG
aXe/UHiDv1FAgyqekJDwerz3pRRULCqtiGTZ3H3IOlLc1FtTibJ5VJeDZ8dH/+4z
+TeZiW+iLpNDufs3x8Sf6I+StIUB0bDWlvWyY2rdcL0YqozlUMYlQLvRfjOJLf9t
3C1S9F4JB8pf9XOxPHKMIUgXpruGuWSLKm2m+rX7X49kQ3Ey4YRAhhVGT8PT9e3B
1YtgOqFwsdaexAc3Y1LoVutgoLEARcqZ4q30pao5uIVzy7reLFmM/u3NRJDTKurR
UxJH+EIkqg6UzLXABaZ5mTPYOFeiNDbjRAvLF7yBFENM9bBw2ZY=
=K7Ly
-----END PGP SIGNATURE-----

--n2Pv11Ogg/Ox8ay5--


--===============7775003630703560284==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7775003630703560284==--

