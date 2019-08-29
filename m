Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0261AA283B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 22:42:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1Yp2CulWDimgQmxXiz3Bx1KMSQB85FdFgs+UQMfMHKM=; b=NT5eDezzy3NRYwxo98EyE6T4W
	d+tJ+LShgBnBoLjJM7QtmUJsgze1Cwv0bFxQAslnjL64k71SIdfGqoBL12wSH/YFWyXlU64YgiX3e
	OOAgrkpWhypbFoUjXBOhVp+0Hfdf4nwk/0Du/LiwSO3Gu6XhQlgRx2L87e/FZSva695o/ENqqwNYA
	k6f0Rw0jC3vYC7z9/pHq07LNWbvCOeuK1L9bv/UWBWgxchNiPt1iNucq+drZSA2qfUPWpiFLIxf4P
	hY6BN05DB8rKQRChkY0tFxEH9WG0hrFnPjkSbDuUkkONPwCbeXjASnkz/PWVyAT7f/khemgnUyDSC
	/Rfm7dviQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3RFC-00047q-9j; Thu, 29 Aug 2019 20:42:10 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3RF1-00047S-Hf
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 20:42:00 +0000
Received: from localhost (p54B33070.dip0.t-ipconnect.de [84.179.48.112])
 by pokefinder.org (Postfix) with ESMTPSA id C83F22C001C;
 Thu, 29 Aug 2019 22:41:58 +0200 (CEST)
Date: Thu, 29 Aug 2019 22:41:58 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Ray Jui <ray.jui@broadcom.com>
Subject: Re: [PATCH v1 1/1] i2c: iproc: Add i2c repeated start capability
Message-ID: <20190829204158.GV3740@ninjato>
References: <1565150941-27297-1-git-send-email-rayagonda.kokatanur@broadcom.com>
 <a2b0ccc1-63d5-177d-2b54-d79c65057907@broadcom.com>
MIME-Version: 1.0
In-Reply-To: <a2b0ccc1-63d5-177d-2b54-d79c65057907@broadcom.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_134159_735094_FE126E14 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Lori Hikichi <lori.hikichi@broadcom.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Shivaraj Shetty <sshetty1@broadcom.com>,
 Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>,
 linux-kernel@vger.kernel.org, Icarus Chau <icarus.chau@broadcom.com>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5837218413217287186=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5837218413217287186==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="o3Y+93sjbn8Tp8J9"
Content-Disposition: inline


--o3Y+93sjbn8Tp8J9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> Given that my name is also on the Signed-off-by since I helped to rewrite
> part of the patch, I'm not going to add my Reviewed-by tag here.
>=20
> Please help to review.

Outstanding iproc patches are next in my queue.


--o3Y+93sjbn8Tp8J9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl1oOJYACgkQFA3kzBSg
KbbbyBAAjquRkJJZCHvzp6ow/QsO6YcL0zRxe7eofXkwatruJwf6SEPIuUOoqc7s
OCrfJ+EhvBm3O4BV2GT0uNHGfCTVpBhPYaNzO66eFK4ZUg3ekuvh+qyAMZtMnjl+
YW4BNxwhHtBfwXBsuJum1xoU0Z7+gyoGrShOKYutdrrEWZGa0Fi7CcwOtonTz1Ag
6aEv8Yg8V56bpIOeNij6YeVi0aRSzFehUbdHMK6LzhY8bEcVPx8es7rKiKLYP5QX
zRc+axs98l/CaS4lp+ZIfm/hnSY0NhyJvNWucb2o7pYHK0j5GpclyR3mvGhiVEpT
TOMCLuXzjMl2x2BPcj19V4RnmbuQj6VlRr2aic895xqfaq47IjP59pzdzdW/2MWR
5fkmZu01ioFDKkNcvpHS6ugFsHyu21Bx85f48VJPaAGCAD9Ib25xF2yXkIXnvgJ7
MupHsMQNg4/6UX8+FsR0YYLeJ+SoIVaPFunEj1r/fy+u1Dx8x+We1pDp0T6wPVYm
+Ph5VgIb3r2m/ZXCjf9Obn8mGYGnKO9+urh4E4h2nwS7pNTH+BYp6dvokK1vDjYe
HITJ8jc7GHep6D4OpnJqQWn34Qio4kAZPOSur6pNgHEaig+shY/8gw1sL+4ae21E
afLD0ZgRF8BSFx5A8QMi17YGWvwN/hRK8rACO+c0x502U+7Upgw=
=oQ7R
-----END PGP SIGNATURE-----

--o3Y+93sjbn8Tp8J9--


--===============5837218413217287186==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5837218413217287186==--

