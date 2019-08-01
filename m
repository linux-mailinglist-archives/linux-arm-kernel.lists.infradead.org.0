Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D75317E29C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 20:48:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:Date:Message-ID:Subject:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dDgkBbKgtkq2WR4b3u2gMvWgIMnvZ9rqvrgfWxHSEZo=; b=XYOvfws6Gd+I/PGa7dVviUUm6
	T7rZO0NweH9baWWWiGI2r6Z6amN55M4ADZs78NvEW8qBFOTiZLvl9QvM2ohB2dDd8fB999/xrraPn
	ubOndvPJhWK/jrDIzPwKqgGQkRXWyw0b7K1JOfzjRzyCiC7rO7EueL38EWh/a0+uF4NRzqE7uCaOP
	p269l1TKqsWEdXgZOarLPbuGLu4INMhZt9jyX6eKdZvguuQn3qe8rg+0zuKZgRIxPGaPB29FqCLpP
	GRFWKxHvy9BQ7c6/Hq52EFvLcUuPADz3fZWvwQBd9puH7gLiRco+XsUCqQYUsCjn2vTlE2hOCLv1B
	MFhTREtTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htG7N-0002Wq-4p; Thu, 01 Aug 2019 18:48:01 +0000
Received: from mout.perfora.net ([74.208.4.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htG7F-0002WS-2m
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 18:47:54 +0000
Received: from [192.168.0.104] ([71.197.225.149]) by mrelay.perfora.net
 (mreueus001 [74.208.5.2]) with ESMTPSA (Nemesis) id 0MLxKE-1i0xDV1OBQ-007rxd; 
 Thu, 01 Aug 2019 20:47:41 +0200
To: Martin Ayotte <martinayotte@gmail.com>, Chen-Yu Tsai <wens@csie.org>
References: <20190727210307.17607-1-sunil@medhas.org>
 <CAGb2v66S1+CSn=CYwZQOP8V+ZL+D9ayf6cvidzK5ENXOqKRGew@mail.gmail.com>
 <CAKQ8BtjLmhDgA8woY5NqaifODLUh_w_K4QYOUuqc4Six5Amerg@mail.gmail.com>
From: Sunil Mohan Adapa <sunil@medhas.org>
Openpgp: preference=signencrypt
Autocrypt: addr=sunil@medhas.org; prefer-encrypt=mutual; keydata=
 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
Subject: Re: [PATCH v2] arm64: dts: allwinner: a64: Enable eMMC on
 A64-OLinuXino
Message-ID: <fd19b2e3-e340-f4fd-a320-1cfc45964f5b@medhas.org>
Date: Thu, 1 Aug 2019 11:47:34 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAKQ8BtjLmhDgA8woY5NqaifODLUh_w_K4QYOUuqc4Six5Amerg@mail.gmail.com>
X-Provags-ID: V03:K1:/GlwKoTmyWPr+FeTuJymMX2/zICqK9puZzx6pzQARYRUfFJwPXP
 s7ncA+oOp3T4Bop35t04BkQnS/D9WNEtxTW/CWSP11paUXlAvv3Flpa6jt1z29yyJIzebbF
 jRSOaFiJ/bmR0+9eJtrhNqo+aaaFGZDt+6ln04GmAiFp+Iz/Jw38MxjMUou+jsBXWjZ6Rbx
 FaA9h2sPXbADSRZKJzE2g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:BHtCFARUh64=:IgiShEMuy7kLBQCqAacJq3
 7XmlGTMeeqL8XzipX7bChzaESW8OyIk5DTMXQHrvvPHF0s7c4LH/lU3iojOczIxI6lva2AAGX
 cbfgSHyuLSVMgvdSohszfjl6zx1PtLYbOyLgiVX56M4w+SUaAj8bNJw2+SYTjU1i31MZj4GCk
 T2j3MR7WZcGyd9AQR6mRbLBqRncZzM+oIQw2JeAfLbDnsI0XKMhPZ798ImJ9zMo3J8MygeFiN
 lvk7Scp4S+UWiAZnoNdNwtwXZXL5+USWA3QCtu6LrVMsLonZfUelIO645743CVjFAMf3rNPsc
 xP9+chVfFxPMC1f8zDvsaRmsBRdNItg3MDJV7CfMLzsqkCyX/vatI6dieIxEfc5DARLbJH7Ue
 QVETz3rJTdyRgKeK/pZKeX+m8yY8GoboGWt52Q7QIDyGfUKc3r8NnLQn+MTclzlqb+oauPglB
 mw9ovDgOcHnv/CY9YhJYG8YCd03c2CT9avmEbb6MfW16mJWNRZgyyBsaSXzfiioREnBuUWfGQ
 Y9M3sr/j9mErDWndf8rcw+Woy+SEWMdOMRXPpNnrYpB9zZE/LxK0eYFeSc5sD/iSLo9eArGJl
 0zoDkdsu+XLCm2hAbi8Ot0+EPJsbSgIWwFQgHEnv3pIjJdx9gZ+iWxrlTPgrAs/p/di/TOjp0
 0UDK0qABt10rHfZ0xR6Q+ic0Pf9HluIQz5be7V3gVSqSShsf3B09DzcSyxynaMHIQ0B9bWK5/
 F9gjYBQM4eY7tUkMai66v0NCuJ3EenOYyTTZuQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_114753_193711_404A05FA 
X-CRM114-Status: GOOD (  10.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [74.208.4.196 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============6981068648427630942=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============6981068648427630942==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="bn3SiIfaKqK8CclvlLd5lxdwZZFn5cqLL"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--bn3SiIfaKqK8CclvlLd5lxdwZZFn5cqLL
Content-Type: multipart/mixed; boundary="W0rw8eAs4khFTh1h3gMm3OdORvNOOVB3h";
 protected-headers="v1"
From: Sunil Mohan Adapa <sunil@medhas.org>
To: Martin Ayotte <martinayotte@gmail.com>, Chen-Yu Tsai <wens@csie.org>
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>
Message-ID: <fd19b2e3-e340-f4fd-a320-1cfc45964f5b@medhas.org>
Subject: Re: [PATCH v2] arm64: dts: allwinner: a64: Enable eMMC on
 A64-OLinuXino
References: <20190727210307.17607-1-sunil@medhas.org>
 <CAGb2v66S1+CSn=CYwZQOP8V+ZL+D9ayf6cvidzK5ENXOqKRGew@mail.gmail.com>
 <CAKQ8BtjLmhDgA8woY5NqaifODLUh_w_K4QYOUuqc4Six5Amerg@mail.gmail.com>
In-Reply-To: <CAKQ8BtjLmhDgA8woY5NqaifODLUh_w_K4QYOUuqc4Six5Amerg@mail.gmail.com>

--W0rw8eAs4khFTh1h3gMm3OdORvNOOVB3h
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 01/08/19 6:49 am, Martin Ayotte wrote:
> If my SOB could help here, I don't mind since I've done the commit=20
> more than a year ago for Armbian ...
>=20
> Signed-off-by: Martin Ayotte <martinayotte@gmai.com>
> Tested-by: Martin Ayotte <martinayotte@gmai.com>
gmai.com is likely a typo.

> On Wed, Jul 31, 2019 at 10:42 PM Chen-Yu Tsai <wens@csie.org
>=20
>> Thanks. The patch looks good overall. The authorship is a little=20
>> confusing though. If it was initially done by Martin (CC-ed), then
>> he should be the author, and we should get his Signed-off-by if=20
>> possible.

Martin is indeed the original author of the patch. Thank you for reviewin=
g.

--=20
Sunil


--W0rw8eAs4khFTh1h3gMm3OdORvNOOVB3h--

--bn3SiIfaKqK8CclvlLd5lxdwZZFn5cqLL
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE5xPDY9ZyWnWupXSBQ+oc/wqnxfIFAl1DM8YACgkQQ+oc/wqn
xfLiXRAAjurNNqsyHWHF/nRUFCxqLSi7iAQ18Xce/yi7h3dJii8QJffMKyEqf4L9
iCNqV0NSmAohvzZ2DAfLvg1Z/v8UH2m5lQxnZg49328YUBK7Iqg8Yl9Nx77pURmG
PIuRppJWzYygqP0VlNCsTXcIfwBvNUCFZlFYW6d/2nVIR985D4R5A+sXRjzi1tbL
krvt+fSAMsJ2ClO4WEiG2uKo1tjciRGc+x70M4VzTD2PTinRIMwjsMexvrcEg3kW
yLRWcKrcVo0stL6mqZh5w3BKqRZhUvS6h+zQj85BU4QCzIwzMyz5I46cBio7G82d
udK4neqQF+ZNvSd6PtXrG7wkJKuCeo3+OA14G407S1lgS5zyNRT8es9eAqyYlXdN
bmwvQa8/k/ooMqAxTXznUG32ROwCuUBcrIyl/UjLNuZ7v/KpqsCEjXLCIYG00dGf
5NAifVk9+AYpLbhsYSBrohF5j4GJsCwa/uVUtPtLSmSzuBNmDnNTdfNesf+mxKJq
ICxJteohaEx6yH7z328zPHYIHwCB7ZHAT94RAcs9hPh0ljwWviZxCu7CwML1AzOH
vMCvaOFjxfgpAu6z/Mp5EPPgKXwVa0+zZfNzJ2LUxgxm4xcXOKPq0l1p8zrkKtIY
g1r/0bOhgzc84gS0VAH1l5n6d6CykAoLYRMCJwquck6SwpBcBQs=
=B2Hr
-----END PGP SIGNATURE-----

--bn3SiIfaKqK8CclvlLd5lxdwZZFn5cqLL--


--===============6981068648427630942==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6981068648427630942==--

