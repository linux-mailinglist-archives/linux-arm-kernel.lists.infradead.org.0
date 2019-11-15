Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A490FFD84F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 10:03:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eGGtx5N7rjBDgZgppmxDEFXHvUh6mmLBVoh5N5t3s54=; b=aE/4KBDnX8U1XswXu3OOIXoUl
	J4f0qx08qOZhkgwu4Buw+cmvqWi5As2RQgbVTewXNznm9JH7vCmv+szFV8zQv9+HCKONBB3qCuiYG
	q4vsXYyJBZuVw1JMV4KEEQ5sC/azSKZyxpKaCLdFNOJlieSw7HNFbj5I2CncQuJKCBdqCVE1+OPIX
	eNx82mNE52DumZM3OYYSgXVaKwOEbB5Ecu/tqxHJI6+Xyw2ZwXAJB9N7PoQZ5R3TAA55bl+ynbQn9
	U27bSLusokxwJB3IGeUvRwlw1jJt2CrI8OtPypv+9pW1mli8wKUbK/9KuS2mqYfmMxy3Ld98o4N/Q
	ZiTjEreRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVXVD-0008NQ-ND; Fri, 15 Nov 2019 09:02:51 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVXV2-0008MG-Cx; Fri, 15 Nov 2019 09:02:42 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id BBB52B1A9;
 Fri, 15 Nov 2019 09:02:34 +0000 (UTC)
Message-ID: <5bef91ad4e4a7ff9ba3f73c63ddb5f1605e82766.camel@suse.de>
Subject: Re: [PATCH v3 1/2] ARM: dts: bcm2711: force CMA into first GB of
 memory
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Florian Fainelli <f.fainelli@gmail.com>, Stefan Wahren
 <wahrenst@gmx.net>,  Catalin Marinas <catalin.marinas@arm.com>
Date: Fri, 15 Nov 2019 10:02:32 +0100
In-Reply-To: <0bc15362-1579-b0c5-bd68-7fb5cc6b09a9@gmail.com>
References: <20191107095611.18429-1-nsaenzjulienne@suse.de>
 <20191107095611.18429-2-nsaenzjulienne@suse.de>
 <20191107112020.GA16965@arrakis.emea.arm.com>
 <4f82d3b5-fe5e-03a5-220e-f1431cb3a50c@gmail.com>
 <8c84654e-f91e-7865-0cf7-99b30820b7d0@gmx.net>
 <0bc15362-1579-b0c5-bd68-7fb5cc6b09a9@gmail.com>
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_010240_585010_5502A30C 
X-CRM114-Status: GOOD (  16.35  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6984062652721067654=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6984062652721067654==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-72XmPvCKktpU+1X9KyMC"


--=-72XmPvCKktpU+1X9KyMC
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2019-11-14 at 12:35 -0800, Florian Fainelli wrote:
> On 11/7/19 11:09 AM, Stefan Wahren wrote:
> > Am 07.11.19 um 18:59 schrieb Florian Fainelli:
> > > On 11/7/19 3:20 AM, Catalin Marinas wrote:
> > > > Hi Nicolas,
> > ...
> > > > Sorry, I just realised I can't merge this as it depends on a patch
> > > > that's only in -next: 7dbe8c62ceeb ("ARM: dts: Add minimal Raspberr=
y Pi
> > > > 4 support").
> > > >=20
> > > > I'll queue the second patch in the series to fix the regression
> > > > introduces by the ZONE_DMA patches and, AFAICT, the dts update can =
be
> > > > queued independently.
> > > I will take it directly, unless you have more stuff coming Stefan?
> > Please take. Thanks
>=20
> I picked up v2 because it had your explicit Acked-by tag, but amended in
> a similar way to what Nicolas did, except s/Raspberry Pi 4/BCM2711/:
>=20
>=20
https://github.com/Broadcom/stblinux/commit/d98a8dbdaec628f5c993cc711ba9ab9=
8fe909f0f
>=20
> neither of you will probably mind me having done that.

All good, thanks!


--=-72XmPvCKktpU+1X9KyMC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3OaakACgkQlfZmHno8
x/52eQgApJu9OgrNdo/IjzBONKI1NqoPLPyGLsMVn+ebzEVoYvlfJKe5PIm3gDZ6
9j6zy4BIXi3jYIXQEW3VMn5tINFqgsUmYXZGxjUqHr39BlzDs2zIq31+jaYJKLre
SiGGAspZluS6FXzfPfNZRZDXYmol+LPsX6BTqnI58MsH75IdRumfIn6DpJwR82D8
4mDgshkCwGkyivJ+EGXLBQNkAbBlQm11aVo1jMeuthS+V9GOTNu9JqTdVG8pJV3a
LF/YxRDGIsAMGbNsrFXoVh8Yvl3TR8d4Ok/kExH1GNshnp0t/VgXmnvuUno848k7
9wiCpY/dxKGwXkIzw3OanB5f7ZGrkw==
=RjXb
-----END PGP SIGNATURE-----

--=-72XmPvCKktpU+1X9KyMC--



--===============6984062652721067654==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6984062652721067654==--


