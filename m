Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B7B17F4BC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 11:14:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Qdw6RxtDYvPC+mVEWwG09/s/8O8a5O5pxBPjD7f2TZY=; b=CUjk69L5kKNME/po1uAF5Jlr0
	C1q4/tdQufQTtDo+K+YPw/sJq0rCyga+fJlO4/Ubgv2FhyQILhfec7sNYvuEoP1xj8iMGzuJ+Uhos
	TtaO05rmmIBFj9iojQPDSyxevN/Gs6li1r5tx7MIJGY6nzIG4x07zTTqB/80HSEYuwM86Ujxw661l
	D/Gl+cW7WiwDYB76btjt7a7dgWTFlR3iRQ81hdWfPicpfVuw7QEdXxqazcDxW1BaU3BNA6f/UUksh
	3nd6sOtxL6OK6Sf8r3/gRZ+bkm0Z/tdAxwSI5UQ+je+YKGPY797yJsDLogDbBnK6kfUhkCsEE20iK
	WDHjM6/ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBbuS-0003v6-Ex; Tue, 10 Mar 2020 10:14:48 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBbsF-0002Lu-1L; Tue, 10 Mar 2020 10:12:33 +0000
Received: from localhost (p54B33196.dip0.t-ipconnect.de [84.179.49.150])
 by pokefinder.org (Postfix) with ESMTPSA id 321342C1EB6;
 Tue, 10 Mar 2020 11:12:30 +0100 (CET)
Date: Tue, 10 Mar 2020 11:12:29 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 03/89] i2c: brcmstb: Support BCM2711 HDMI BSC controllers
Message-ID: <20200310101229.GM1987@ninjato>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
 <1ed75ec6dc9310afd768c0bbfd8e73268e8cdfa9.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
In-Reply-To: <1ed75ec6dc9310afd768c0bbfd8e73268e8cdfa9.1582533919.git-series.maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_031231_410319_18466218 
X-CRM114-Status: GOOD (  12.75  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Kamal Dasu <kdasu.kdev@gmail.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-i2c@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8789109997464328513=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8789109997464328513==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bPrm2PuLP7ysUh6c"
Content-Disposition: inline


--bPrm2PuLP7ysUh6c
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 24, 2020 at 10:06:05AM +0100, Maxime Ripard wrote:
> The HDMI blocks in the BCM2771 have an i2c controller to retrieve the
> EDID. This block is split into two parts, the BSC and the AUTO_I2C,
> lying in two separate register areas.
>=20
> The AUTO_I2C block has a mailbox-like interface and will take away the
> BSC control from the CPU if enabled. However, the BSC is the actually
> the same controller than the one supported by the brcmstb driver, and
> the AUTO_I2C doesn't really bring any immediate benefit.
>=20
> Let's use the BSC then, but let's also tie the AUTO_I2C registers with a
> separate compatible so that we can enable AUTO_I2C if needed in the
> future.
>=20
> The AUTO_I2C is enabled by default at boot though, so we first need to
> release the BSC from the AUTO_I2C control.
>=20
> Cc: Kamal Dasu <kdasu.kdev@gmail.com>
> Cc: Florian Fainelli <f.fainelli@gmail.com>
> Cc: Wolfram Sang <wsa@the-dreams.de>
> Cc: bcm-kernel-feedback-list@broadcom.com
> Cc: linux-i2c@vger.kernel.org
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Fixed the acked-by and applied to for-next, thanks!

FYI, cppcheck rightfully warned about this in the driver:

drivers/i2c/busses/i2c-brcmstb.c:319:7: warning: Condition 'CMD_RD' is alwa=
ys true [knownConditionTrueFalse]
 if ((CMD_RD || CMD_WR) &&
      ^
drivers/i2c/busses/i2c-brcmstb.c:319:17: warning: Condition 'CMD_WR' is alw=
ays false [knownConditionTrueFalse]
 if ((CMD_RD || CMD_WR) &&
                ^
drivers/i2c/busses/i2c-brcmstb.c:464:0: warning: Variable 'len' is assigned=
 a value that is never used. [unreadVariable]
 int len =3D 0;

Not related to this patch, but maybe one of you is interested...


--bPrm2PuLP7ysUh6c
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl5naAkACgkQFA3kzBSg
Kba2JQ/9HdPkWxyj7kgAVp3iCcUbIkAtwDpmrhGYLSr9AUHb+mlfe6sB92mog9+X
P3ETy/m7Gs6cwIBqlhmQuR4E0S89dDTnC1zFk+sAyQvOp1deyoTW+P3xteUyiR9W
9Y72Z2nhdTS1LouythkJled4kCfJ1PF3lst9/o1umYF5Q68akoWIGRq20MMBz80K
eEXbI5+ZfvbIfzsuD220A3v3IH+KNI9rGx8Yj7ze+B/iwmTVQd7NnEkRQdD2eAxW
yfQK9TTn+fhJWUOEJ5PvYmkYd2zfEjQQdOIdqi93nqE4w9dZ43P1YcrlPQBGqv0c
TRXyls9o1HK2iw7ISd0tZgQBAytHuaxzST+RFHjCI8tvhU48AzplJLcc1BcXixI8
9tAcRvbud+1WeOLk43q6jA+mIuV19/E88iJt2oqGMoUWOxnalSgg9vvkYS5MumZY
XenAGha5oYmvszOd9tU/cDkktv+RdMNVzpOBa2gG8uiOyaEZfGLp1vaCBra7TJLw
BZg8EzpWi6iea304u43d8P9NLfuIlNmZFTcZ7sO7UPpy9fuwaeHXRPwmIj8DmGrW
o/TNxAnkSIOhRE/f/JnhOHHJ+BM9kuSydjAr0NHi0nnBUNTQw5J9YsPWGUSUEKHP
IatOEa4v1/N5hUB+jP9YLWGUiBYU3bpuHEF70XNtg6jQVYyCj6c=
=Dx35
-----END PGP SIGNATURE-----

--bPrm2PuLP7ysUh6c--


--===============8789109997464328513==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8789109997464328513==--

