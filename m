Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF5691B8DFC
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 10:36:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=G4x51B9xVyifxB5/hkfghJJ3cgzR5gmtj9jAac+SuSk=; b=IzmQkiEUfc/och4sczsgOYAAp
	c6oLvA6GW7ne7/3D1j63RbO3uWhdsPnBz3dtBK3z64mng2oO0Z1UUJgTSLMnD7d8aU/kw3iKkZAep
	CguFyQzJ6oryqz83i0aza18flmh9H7RqViEdyTPTFsaE0D9i6Nkva5dzkxnAlAoRCg2hVQ3HzzrXM
	3quc0d6TLZRdLYx54pV5ttmFgu2q1hyFID4sJd6WHZ9gG/kDwZQRrUNX+iVN2VZKAy+hsSHHoqXNp
	yqXkUomqS/VAvgQ0DjavtMWoCIg6K+9TE5ziGXwz+4qZGqGXr3FKImY5u96AsCeNKDHn5jFgn2fMW
	rkfDG6ixg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jScmT-0000mt-LD; Sun, 26 Apr 2020 08:36:53 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jScmH-0000lz-Lx
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 08:36:42 +0000
Received: from localhost (p54B33954.dip0.t-ipconnect.de [84.179.57.84])
 by pokefinder.org (Postfix) with ESMTPSA id 053682C01E8;
 Sun, 26 Apr 2020 10:36:40 +0200 (CEST)
Date: Sun, 26 Apr 2020 10:36:40 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
Subject: Re: [PATCH v1 1/1] i2c: iproc: add support for SMBUS quick cmd
Message-ID: <20200426083640.GL1262@kunai>
References: <20200322182322.32743-1-rayagonda.kokatanur@broadcom.com>
MIME-Version: 1.0
In-Reply-To: <20200322182322.32743-1-rayagonda.kokatanur@broadcom.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_013641_867466_784FAE8B 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Lori Hikichi <lori.hikichi@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 linux-kernel@vger.kernel.org,
 Shreesha Rajashekar <shreesha.rajashekar@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-i2c@vger.kernel.org,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1884538485912254544=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1884538485912254544==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Mit9XoPEfICDqq/V"
Content-Disposition: inline


--Mit9XoPEfICDqq/V
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Mar 22, 2020 at 11:53:22PM +0530, Rayagonda Kokatanur wrote:
> Add support for SMBUS quick command.
>=20
> SMBUS quick command passes single bit of information to the
> slave (target) device. Can be used to turn slave device on or off.
>=20
> By default i2c_detect tool uses the smbus quick cmd to try and
> detect devices. Without this support it will not detect some slaves.
>=20
> Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>

Applied to for-next, thanks!


--Mit9XoPEfICDqq/V
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl6lSBgACgkQFA3kzBSg
KbYYOA/6AyrhSngSgj8qaJ4zJiG8bqKNM4s9VVcCvPx3Sjk/eBpJDsSRMqNcfSC6
v8QB725LmkMCWMVEmJNAkK5Al2T9PlXI65y9SyDmTPnPIK0orB57pMVFCMseagdO
xesQaZ88fH7jv/tdNAVvveM5OelxSnUQzBJXTXWdlNJhq9XcjInooCD6BhZD1w1x
Dmjh8F1agNuIsENeqDh1s8SraKIa2JJMehmJ99l3GtIr+z/MbSp6khJ7VSoXWOco
D65Oke8Y5r24qYIAQGxMpva4yWxsFvIZDKift2sogXVoVx9nEkwhkd0BtCPge6z/
tYF+WRy+4FU53zE5VLlRztRmXZd/RPGRkBk0dSFyPllfMH6dynVIPE+V3qWM+ZEw
R5/yvAr0JuvVrHOZJCqYyXV8jNTK9/8mcgj7UEk4Ywv2Iz79g3WnR7H/6fBMCNsW
0v5Xj14KMX359Zn3Msa2JbKR+q79JAXMcc5bFLPxMZ9MJP6GjmWyxPi2GyFx8jhB
MrCrnPrh96iOcg7IxoG4BfIvRg6ZMdyGU3WwzwpwRqcAl7TIYK2FJPqMPgdB+0+J
k1S/dW/u5JTd4AO4rTsGIOIvNuVDHJGNdOrWy84W0spnghOZKRq1IPZtlakL7kD3
2/9Hzd6UBjjtW8M3UPteVeUYmOAFCzMq+T2Q9H8e+djgAMETcwQ=
=YxWx
-----END PGP SIGNATURE-----

--Mit9XoPEfICDqq/V--


--===============1884538485912254544==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1884538485912254544==--

