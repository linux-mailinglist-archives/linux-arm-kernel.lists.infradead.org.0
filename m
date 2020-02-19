Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6426164317
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 12:13:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hj83VbBP1fBxPZrE7/95UFzcSw/tInAvCrwQ958Lpik=; b=E51JnSEdl9VFKIbnEoAnlZPPS
	WqOqqKIMLMO8mhpYTJ7qQ1pN1v8odcl4ZyeH13ZgWOBIZR9Yn5exjLp/Sof/oY3vJ/ZfzulV0Z0rK
	XaIWsT8r6IKXUgUzuIojA+g9Zi91ClORJzAwamglJKGceZLn2tYodBTiEKFV58LTmuL9i9H0rW3wi
	16N9Y1wTbTwBOVSyql/wlqhKksEeFV5Y8umjbP0G0/y87fU+43e4SGap768EA83D8OFZm6UG9OHN+
	McP+m4RlEImiQBVuV5Q8/gBHPltY6oyf43F3tJHJ2hnP3lu4kjW2aggL9Aama4HCQ7PjgwEtpFz55
	LdLDNq8PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4NHp-00045L-Om; Wed, 19 Feb 2020 11:13:01 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4NHg-00044z-RN; Wed, 19 Feb 2020 11:12:54 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 444DAB071;
 Wed, 19 Feb 2020 11:12:51 +0000 (UTC)
Message-ID: <ef452bde229efda053385e8dc198e79bb693d1a1.camel@suse.de>
Subject: Re: [PATCH v2] ARM: bcm2835_defconfig: add support for Raspberry Pi4
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Marek Szyprowski <m.szyprowski@samsung.com>, 
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Date: Wed, 19 Feb 2020 12:12:49 +0100
In-Reply-To: <20200217155506.5245-1-m.szyprowski@samsung.com>
References: <CGME20200217155513eucas1p2f97cb31428fd50181a4fe16682322d8f@eucas1p2.samsung.com>
 <20200217155506.5245-1-m.szyprowski@samsung.com>
User-Agent: Evolution 3.34.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_031253_034080_BD2F7041 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>
Content-Type: multipart/mixed; boundary="===============7713662127975747999=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7713662127975747999==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-imMygzlNXScDnCG/heyJ"


--=-imMygzlNXScDnCG/heyJ
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2020-02-17 at 16:55 +0100, Marek Szyprowski wrote:
> Add drivers needed to boot Raspberry Pi4 board.
>=20
> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
> ---

Patch applied.

Thanks!
Nicolas


--=-imMygzlNXScDnCG/heyJ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5NGDEACgkQlfZmHno8
x/4KYAf+NasWXeQRrxVGMq5QF8EPKm/U5EThi3qXZ9TTT3JG8Ueadngkf6KUYWuw
JzOSjsMOqvjd+Ra/1wdtohm0MOhzxl5LziVfINeM0Q1w9dTPF5L/dl1eKYQnonhG
116dcdSGLTz8crnHkXy1CvSCG4+iYcgM/PoQxRjqczNaV/8mUyPmdk3HShRLCJMp
pw7HuUwdsr8RzXwNo7kqo32MDXYbSl5LMyMvis0eIHjeo7bX976nrjZGpiqoPjeW
pUo6BHRkNLPIUFuMhYrkL+BBdSN2b32BrkBxXbv/D0TD4Uo2cxeaYR+TnB2JyRE/
zfQC4alNMfy8Jn9Bw8ogEHolUm7Auw==
=Gfgz
-----END PGP SIGNATURE-----

--=-imMygzlNXScDnCG/heyJ--



--===============7713662127975747999==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7713662127975747999==--


