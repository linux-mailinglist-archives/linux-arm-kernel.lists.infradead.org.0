Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7532C29A3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 00:34:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XdoF3lF9Zu5H1pEXwtOKuoICPwW1b7lnndDd2w7qlZg=; b=cwhvmqy6j3I4Dx/jbTjlFtHHy
	ElMpbZ/BK6BGrYfeHfHNuHjc6oOfazPdzuXJl2DjvHjj/1k1Kxl7MFwu0wHijmXcJKXENU7zRsc+F
	fZetIo/aWjMXamiUbHgCNoKArmMqkLlDyiINiohCSVEodKgeojV1hFRO7TmgLV6Iv6u1cBzGOc67z
	fk2g6SI5T7eyeWgOWrZIzEB2ibqA5XDawZxinCNsAx2mKCd/PPuaCHckIEDZ5kYksfPLojH2lnZt8
	qV2cj7VPMhZiHdKvWVazJiwe4xG+gWPfk0G/YiZEGFArxYcL2WlgL9+SzxoS6EU5GYJhFeDYVs5LV
	5TcKxkoYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF4FC-00014A-5y; Mon, 30 Sep 2019 22:34:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF4F0-00013X-TP
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 22:34:04 +0000
Received: from earth.universe (unknown [185.62.205.105])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4E52920842;
 Mon, 30 Sep 2019 22:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569882839;
 bh=ISUtgowUUlOBG9tC6LlpHlkEKmAkDDDE4cTTZB+2Z68=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=R/vGfivyxO0EQOoZJilucBMK+Ggb7FG/PEMeT7JlM4a1pePlH6Q4U1Tp4eKJyh0I+
 Gpz/JjFFm/BLnAYTl8V1jk7rcEkdYpKHlbobFjSecMN9eclILTSBPJZpui5Uh5cVrA
 Mk5/0gEOFKk0tyLzmTl7O5ihrL92nbm8ly6JQ6fA=
Received: by earth.universe (Postfix, from userid 1000)
 id BC02A3C0CA1; Tue,  1 Oct 2019 00:33:56 +0200 (CEST)
Date: Tue, 1 Oct 2019 00:33:56 +0200
From: Sebastian Reichel <sre@kernel.org>
To: Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH] Bluetooth: hci_ll: set operational frequency earlier
Message-ID: <20190930223356.z6tiv4v5yrqtzu2t@earth.universe>
References: <CAHCN7xLOCC00UC4PB3vHa6Q7yyhXVEaWgx2X9D9L2dDubd_5fA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHCN7xLOCC00UC4PB3vHa6Q7yyhXVEaWgx2X9D9L2dDubd_5fA@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_153402_987381_C99CA42D 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:BLUETOOTH DRIVERS" <linux-bluetooth@vger.kernel.org>,
 Philipp Puschmann <philipp.puschmann@emlix.com>,
 Linux-OMAP <linux-omap@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============2906506813605606971=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2906506813605606971==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="niqozkc3jiirtp7i"
Content-Disposition: inline


--niqozkc3jiirtp7i
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Sep 30, 2019 at 03:10:18PM -0500, Adam Ford wrote:
> Is anyone else having issues with the hci_ll after a2e02f38eff8
> ("Bluetooth: hci_ll: set operational frequency earlier") was applied?
>=20
> I have an i.MX6Q with a WL1837MOD attached to UART2. After this patch
> I git a bunch of timeouts when initializing the device using the 5.3
> and 5.3.1 kernel.   I know a bunch of omap and imx users have done
> some various tests over the years, so I thought I'd ask.
>=20
> [  195.911836] Bluetooth: hci0: command 0xff36 tx timeout
> [  206.071837] Bluetooth: hci0: command 0x1001 tx timeout
> [  214.231862] Bluetooth: hci0: Reading TI version information failed (-1=
10)
> [  214.238712] Bluetooth: hci0: download firmware failed, retrying...
> [  216.391834] Bluetooth: hci0: command 0xff36 tx timeout
> [  226.551843] Bluetooth: hci0: command 0x1001 tx timeout
> [  234.711856] Bluetooth: hci0: Reading TI version information failed (-1=
10)
> [  234.718705] Bluetooth: hci0: download firmware failed, retrying...
> [  236.871832] Bluetooth: hci0: command 0xff36 tx timeout
> [  247.031837] Bluetooth: hci0: command 0x1001 tx timeout
> [  255.191852] Bluetooth: hci0: Reading TI version information failed (-1=
10)
> [  255.198706] Bluetooth: hci0: download firmware failed, retrying...
>
> Can't init device hci0: Connection timed out (110)

I can see the same messages on OMAP4+WL1285 based Motorola Droid 4
(with the same commands resulting in a timeout).

> Revering this patch fixes the issue,

Ack.

> and subsequent patch proposals form Philipp haven't seemed
> to fix the issues for me on 5.3.

I did not do any further tests, just noticed this while working
on another patchset.

-- Sebastian

--niqozkc3jiirtp7i
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAl2SgtEACgkQ2O7X88g7
+po4/g/+IGM3j5jfpYzr+RYoNYjBkQPYgwWojq8LpIwfihDVFs6NCfjt3f1G0aJ+
zDczVpLC/Pnj6ltnfliLUAuyhOM94+unB/yOCKtKIwSWMX+wgofyITm6rSxlAM0n
SoqgY5TkNXUBv0wMoJse+6wqOBsMZ/mJg6vpP7L2IjP5s668MgoD4wPADi4mJ0p7
9L68Of5PodwjXMnTQG8FiMezaetSiLGNtFBFBnRY8R499AhldpDf/uDSafaFNNyg
U+K4fBYhFFcYECQI3UvFD6vhytH49dSzOByCNjLsf0je7g92qbm1bZV0FomTuFrJ
ni5px6yFV+svNgo+w+n+jFrDpzutkU91jp/TGJpGDHb2QaztQ8gGHb/R68ZkFPko
y9r4f3y6N6d44oJnxpEPerDw0jKyfNQ3HbLZNqHTWQPOLqVy9V3S4WGF9AZ5fgWG
Jd0tkAh2mjryNjwKv6z0JnNA6PBMSyle0C1wdwxExL2QNqmNKf6C16ada2N32anb
QqYKj/UcA86Qad0rDwdY8KLj784/7+1yUgO+LUtv3ZYv9lUgbHcb1EB+/5jaNOvv
X17dW2bTu+RXYefM3Uq/DI2wxSg6umFfjCmou/yJiqa7O8yfkmzGlmywNBESCRfZ
TcUjqJROSUaYKi6JZwsuaBsMqgeMlfsk97HgBkVF8RxiDTtNEiQ=
=P+sU
-----END PGP SIGNATURE-----

--niqozkc3jiirtp7i--


--===============2906506813605606971==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2906506813605606971==--

