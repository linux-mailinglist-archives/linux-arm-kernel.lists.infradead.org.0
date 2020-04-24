Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF5C1B7E80
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 21:04:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yC/zTw+9hafwLGP0QA5yQS8/IyIGCDe6Bpq7MmNAcrc=; b=gJwemNg61TEBcbpwWSLpx34vP
	ingsoFXW/70YkVR5pHQxGuPkZPIApXlo7GgTZMr/wVZ6J4boi3xXeERQEfW4uXha1GFjdh6BT5H+G
	aWSOJ384TX2qijVCcOUupTmyXS0TVUcRU2FeQk3MIHk6TTZD8hPmp4Pp7WIvZ9kfFMzWAYIOiYOEr
	uDwUhi//yGKn0sfrUnllV5hSgYGVaEFSL+KyAcUXGe1y1CsjP0TrA9DygxOIZ024U1dG2oEbM6jTS
	6eO02xR9mmEu9ky7eERNFMrp30gNWtAIjUIKKEUtPR8cD4hFiljR2IHCkIkQMJM+eMcfEFmOPtmX2
	XPpNbVhgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS3co-0003jQ-9y; Fri, 24 Apr 2020 19:04:34 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS3cf-0003iB-7U; Fri, 24 Apr 2020 19:04:26 +0000
Received: from localhost (p5486CE62.dip0.t-ipconnect.de [84.134.206.98])
 by pokefinder.org (Postfix) with ESMTPSA id E69B42C2019;
 Fri, 24 Apr 2020 21:04:23 +0200 (CEST)
Date: Fri, 24 Apr 2020 21:04:22 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH v2 01/91] i2c: brcmstb: Allow to compile it on BCM2835
Message-ID: <20200424190422.GA5220@kunai>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
 <c8c666eb5c82dcb73621930b3fedf5814792bf1a.1587742492.git-series.maxime@cerno.tech>
 <20200424161353.GA4487@kunai>
 <bedfe073-6ff4-69ee-fe39-d5802cc3ecfd@gmail.com>
MIME-Version: 1.0
In-Reply-To: <bedfe073-6ff4-69ee-fe39-d5802cc3ecfd@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_120425_422403_024648E3 
X-CRM114-Status: GOOD (  11.52  )
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
Cc: linux-arm-kernel@lists.infradead.org, Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Kamal Dasu <kdasu.kdev@gmail.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-i2c@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, bcm-kernel-feedback-list@broadcom.com,
 Maxime Ripard <maxime@cerno.tech>, Phil Elwell <phil@raspberrypi.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8059910613310047534=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8059910613310047534==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rwEMma7ioTxnRzrJ"
Content-Disposition: inline


--rwEMma7ioTxnRzrJ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 24, 2020 at 10:07:25AM -0700, Florian Fainelli wrote:
>=20
>=20
> On 4/24/2020 9:13 AM, Wolfram Sang wrote:
> >=20
> >>  config I2C_BRCMSTB
> >>  	tristate "BRCM Settop/DSL I2C controller"
> >> -	depends on ARCH_BRCMSTB || BMIPS_GENERIC || ARCH_BCM_63XX || \
> >> -		   COMPILE_TEST
> >> +	depends on ARCH_BCM2835 || ARCH_BRCMSTB || BMIPS_GENERIC || \
> >> +		   ARCH_BCM_63XX || COMPILE_TEST
> >=20
> > Isn't there something like ARCH_BROADCOM which we could use here instead
> > of adding each and every SoC?
>=20
> If you are worried about this list growing bigger, I do not think this
> is going to happen beyond this changeset (famous last words).

Okay, thanks for the heads up.

I wonder, then, if the description after 'tristate' is still accurate?

But that withstanding, I am fine with this patch:

Acked-by: Wolfram Sang <wsa@the-dreams.de>

Let me know if I shall take this via I2C.


--rwEMma7ioTxnRzrJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl6jODIACgkQFA3kzBSg
KbYN+Q//SQP+Vpeh1qTzUNAUeo0heLgu/UyeswoGy/XX0fkPi1VnjHdErSP3hI5i
qDLv1Xsz6XsjjlNPIIjMyisPgLT1blkvBicJnfNcjh+6ztSQaO1TqUscpgxxxG6f
n4Dk+CRwVEgmbYI3B/CAxxLSV+ulKl4l6/QSHoDXEdlNcpnQVYqB9noyJh9DJenG
MUb3zxOoJSDvuNVftZg1Pc07yexfFgRvix0JYC41z9A/bD3yrw/apd4omkuzpojG
dqEg+xeqCCg6kC4TozKlcqi7Zq4n+pjO0M5crP9U1jllCxgo0pMDbdF7QSXnWuiC
GVToAKqKWMZbnm4h05ZrGt7IujJExmpRIj6tr6TySvyMpGM3h3EGGjebLFhvRJ2q
AdRodX9+cAnIQl9HP+eXFHuvp/VzPY8RPgSK3XjAogMNgIQqTTa8L4a6rfNOz83F
yI0nf2ftcX+7ukUGmtWzL7XT9njqBNhNgTUOXMQ7ccFTe9bpxQxcukYYM/3asi14
DrcWVHQ6VRbjHvn52lRqfw0rKMaCLGSPgsSd9wXA9OiHCexTDjP7LMdzLKW+QgJq
1CCCwRvvct6pMvLsHnEhCdwC11ZIHnVOagtvt6p9YrOJOjBSBak3+/IpXaVQ/eSY
F5UsPOi0nuo0ZLmBLnn/uU4/yK4ciPgZRdX/pe9iRlkSY0V5STo=
=kdd5
-----END PGP SIGNATURE-----

--rwEMma7ioTxnRzrJ--


--===============8059910613310047534==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8059910613310047534==--

