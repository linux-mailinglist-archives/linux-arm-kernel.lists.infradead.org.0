Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE851BCF75
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 00:09:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QyUKr/kAXTNI7+tXWAIn58Qxj2YNt3HEfvKUdJ6aJSM=; b=jYYuRa0KgtwG7IixZ1AUJgs65
	oDcV2GmbtgGwAre6nTyQ4l/actPiE1VEXUXoIPAYKHdB4eoygkvGkVpjwBf6BbeVtoHT3IGQI2Sy1
	DGSdNBoz/1PBzKc7xZM3GhLoea8w6jgBIiDra9MABhy08grEwQTtKlCTan1g7EahVm5uP5058OAw8
	VOa5pNhe8z+gLodfcllZuuouUa+iq0Mka2RjF68U/qkHHX2sKBs2zL2j03KdzNK+GhUAsBa4NX7Vn
	UNOgJVFsVbQxqWxN5NhmY49+JsGYwj816dhjn0zbSpQyC4lUzrDtqo5GNpGE840KedIe8/XvnVX+2
	I1SHD/rMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTYPn-0003tn-QR; Tue, 28 Apr 2020 22:09:19 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTYPd-0003sA-RC
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 22:09:11 +0000
Received: from localhost (p5486CA03.dip0.t-ipconnect.de [84.134.202.3])
 by pokefinder.org (Postfix) with ESMTPSA id 52F2A2C0710;
 Wed, 29 Apr 2020 00:09:04 +0200 (CEST)
Date: Wed, 29 Apr 2020 00:09:04 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Subject: Re: [PATCH RFT] i2c: brcmstb: properly check NACK condition
Message-ID: <20200428220904.GB7698@kunai>
References: <20200426081211.10876-1-wsa+renesas@sang-engineering.com>
MIME-Version: 1.0
In-Reply-To: <20200426081211.10876-1-wsa+renesas@sang-engineering.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_150910_028084_2D2F18C9 
X-CRM114-Status: UNSURE (   7.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Kamal Dasu <kdasu.kdev@gmail.com>,
 linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8415913520035857657=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8415913520035857657==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hHWLQfXTYDoKhP50"
Content-Disposition: inline


--hHWLQfXTYDoKhP50
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Apr 26, 2020 at 10:12:10AM +0200, Wolfram Sang wrote:
> From: Wolfram Sang <wsa@the-dreams.de>
>=20
> cppcheck rightfully complains about:
>=20
> drivers/i2c/busses/i2c-brcmstb.c:319:7: warning: Condition 'CMD_RD' is al=
ways true [knownConditionTrueFalse]
> drivers/i2c/busses/i2c-brcmstb.c:319:17: warning: Condition 'CMD_WR' is a=
lways false [knownConditionTrueFalse]
>  if ((CMD_RD || CMD_WR) &&
>=20
> Compare the values to the 'cmd' variable.
>=20
> Fixes: dd1aa2524bc5 ("i2c: brcmstb: Add Broadcom settop SoC i2c controlle=
r driver")
> Signed-off-by: Wolfram Sang <wsa@the-dreams.de>

Applied to for-current, thanks!


--hHWLQfXTYDoKhP50
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl6oqX8ACgkQFA3kzBSg
KbYq7Q/7Br16/++9ebjOhm70GQ8PM9ZFe3yeQh+WXJPb+pwCvOvnwRnFg+dn6Kg3
RPpLJF1PDwS+HJsLrKZGqRyLhtuWY2N2WTbN04SoQaxC71+T7Nv/R63U0m9FpaKM
U0PmwmOZ2KL8+1/HmzhlCdD8tnbI8udU3FbPEjdgo4DM7fWy2kAy8Ar1AlLfECJr
sIBSpKw5+0pYAJA1MaFMHMbXZpl01qPEsEpMVgbalXifBxZs/+nZJmRSGQny8Euv
IxcdCovHhLGfSewgOGB/jQRZo4GzcyZr+2jnyA3wsiDvCip+z/RUzgpPHPjvVJ8i
qo65Ep++nU2yTgxS+QCb+iPsEYm0B+cD7xnd+Up/XPi6OZseCKjwLBSbruR7v5JF
m38GSUvBQxapp6FBL2L8E5K8X3jLDAeSdwQ6vH86fardMbh1plXXiR9SRhVLJXpw
FKo7QWMHEnTTqZ8xmGv2KFcTR8ZCFgDFAMx8nZ2UBCEbT4GSD8AD1spd4wWpJCob
rLbXuvKbmniIrYYoHDFfTL7NhP5y1akeka/h97KF7n9NwSV81KsnmXysOoT3EPBn
R49VS65VjGdieBHrJI9BBfU0hLtcKDYsI0KUA/cyINqz403XSThLtGA5RJM3fHPJ
3mCvMgj+wiLa8kS8p4VUCAzi6Zj1a5VvQEDgV7QpgUgOUBf5Kis=
=GdAJ
-----END PGP SIGNATURE-----

--hHWLQfXTYDoKhP50--


--===============8415913520035857657==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8415913520035857657==--

