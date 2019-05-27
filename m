Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F12792BAA8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 21:22:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4BQhRHP2sUNKfyz60phsSvMEkZwMb2YrH11S7yIGV3U=; b=U6b6CJ2778d9kI4UZiE45P9SK
	3RPiZl/N3eL9q3org10obiBHaTkBV9kL3pgrJdFvo8ufMUkRH+XyxM/AYRvdvDEdZycDj8gPthv86
	7/Cm+p2dge5KY8+aOUhYkLjCwM6fN6dwxl75THtztVsxl42nnIyIUi4QZ9F8W+H0/2WkDcMeH+Du+
	Jfgp7u5LLTvIrOA+4YPZO9HYwb88z/jMVMxpHD1OdO4+9U56NkVdGvUrTyk0UYM1CdHOAvgJpU9RP
	x3eMLHOX+YzWVf+FCRU/MvNSjPG0WnfdVK+efLKmgFQ7hBNFkyR06+L2hJ7LynQz0yUkTZTlgm4JI
	WNAXM317Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVLC9-0002c7-1n; Mon, 27 May 2019 19:22:05 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVLC2-0002bn-24
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 19:21:59 +0000
Received: from localhost (p5486CF59.dip0.t-ipconnect.de [84.134.207.89])
 by pokefinder.org (Postfix) with ESMTPSA id 2F9372C04C2;
 Mon, 27 May 2019 21:21:57 +0200 (CEST)
Date: Mon, 27 May 2019 21:21:56 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH] i2c: Allow selecting BCM2835 I2C controllers on
 ARCH_BRCMSTB
Message-ID: <20190527192156.GF8808@kunai>
References: <20190509210438.28223-1-f.fainelli@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190509210438.28223-1-f.fainelli@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_122158_248982_7FC59339 
X-CRM114-Status: UNSURE (   7.67  )
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Vignesh R <vigneshr@ti.com>, Ajay Gupta <ajayg@nvidia.com>,
 Kamal Dasu <kdasu.kdev@gmail.com>, Eddie James <eajames@linux.vnet.ibm.com>,
 open list <linux-kernel@vger.kernel.org>, Elie Morisse <syniurge@gmail.com>,
 Jarkko Nikula <jarkko.nikula@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org,
 Karthikeyan Ramasubramanian <kramasub@codeaurora.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Juergen Fitschen <jfi@ssv-embedded.de>, Jean Delvare <jdelvare@suse.de>,
 "open list:I2C SUBSYSTEM HOST DRIVERS" <linux-i2c@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============3102794461211573588=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3102794461211573588==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dWYAkE0V1FpFQHQ3"
Content-Disposition: inline


--dWYAkE0V1FpFQHQ3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 09, 2019 at 02:04:36PM -0700, Florian Fainelli wrote:
> From: Kamal Dasu <kdasu.kdev@gmail.com>
>=20
> ARCH_BRCMSTB platforms have the BCM2835 I2C controllers, allow
> selecting the i2c-bcm2835 driver on such platforms.
>=20
> Signed-off-by: Kamal Dasu <kdasu.kdev@gmail.com>
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>

Applied to for-next, thanks!


--dWYAkE0V1FpFQHQ3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAlzsONQACgkQFA3kzBSg
KbYiRQ//Rt13LD4OiH6Oi2ARvnFvTNUEFodH7gJfdfIQqEGg6uTRfRJMdh9pPFgN
SbhXmxB0Jy9J65kG06L1OZoPmsykZOvlxdcdXU8/OOUALe7Uz/P9UW4stPAb+PE6
Qpa7i50R/Sl8xaDxNFXw2pjHdOU/dO4zFkw+pGaGXB8YxxtiVp2ZBebBD3dtsgGv
PEDxTmcFwC2xv7eLBVXE+rEbpAu8QB5EwijobxMUdGjl7x0z3T0Adb2HRY0FviQH
TxX06BfENtqiZAiLKSLsGj4jxdb1YrrCVeleBZMu0nFpgrZmemVMrysfSPbm9EAB
GHcAG6QYx82EDuosRui3BcJ7ZKu5tDp9nlv04p8MCikem5PG0oNQYHSrt46ghvVb
ahSaT3qMC7VuzkRrJapraLKtjVaMfM4b8B/zyLOV1B9ZTMhO82o9R+XEUWRO0rXl
TpTF/Lk0hwj0ZtgQMB+uL2SqdwaxjRm/ZBbRyEalURESBJ28DjuBBd70S7Na5107
pDqZvCyC0dv3y8g/t1QL5Z5BAh+GvqtbXBLJJsSWftJl3/MscpeZiRk8xEENjPX5
rzeDtYUHab+XxCwG/rEiJXQNt3B7S5lAzQPASpzhootAjFxKy+qlroORnZ1tmy1S
fnzI/jTN4KIGJSWSV4RjW2dFeo+L4q2g5bglwqDJ6e+fI6DHils=
=wyGP
-----END PGP SIGNATURE-----

--dWYAkE0V1FpFQHQ3--


--===============3102794461211573588==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3102794461211573588==--

