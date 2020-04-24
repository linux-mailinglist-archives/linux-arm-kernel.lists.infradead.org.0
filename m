Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 060AE1B7B42
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 18:14:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NwPUnssQNC3VGBrOUaTcCRf48NVFHTx5kYvFnDkIqLc=; b=PvbdLs/ctFjjGgrsj776AbbjK
	68t/gHd5x4+ON6hldTnpOYjolmDXNExOu2QBTLYaaMuAz3FhD4UVAwjzgjwvHaCw7QUH9qj3+1Sz7
	BEUuEKCK6ENbK54Je7ovxn0389QygsTRjycRkAICGgDI4LPCH/4uPOpXTKdxC7A7pSK2bSDScmNTI
	RXrl7V7NWAt5qS7iQCRrV+oj09pnzk+KY5Sx/hmcSUEi+eNJN52GW/BxzT6veKi4sSqxmFQJB2Ktn
	6KDXUt049m1Y3TkdVkDLrWAxELQwBFwP1m9wGAZ7CMZ938LpLNmT60myVHEHkXwrYGtJNjiyZOdEX
	kftSYaP0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0xt-0005Th-5Z; Fri, 24 Apr 2020 16:14:09 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0xh-0005Rj-AH; Fri, 24 Apr 2020 16:14:01 +0000
Received: from localhost (p5486CE62.dip0.t-ipconnect.de [84.134.206.98])
 by pokefinder.org (Postfix) with ESMTPSA id BEDB82C1FE8;
 Fri, 24 Apr 2020 18:13:53 +0200 (CEST)
Date: Fri, 24 Apr 2020 18:13:53 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH v2 01/91] i2c: brcmstb: Allow to compile it on BCM2835
Message-ID: <20200424161353.GA4487@kunai>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
 <c8c666eb5c82dcb73621930b3fedf5814792bf1a.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
In-Reply-To: <c8c666eb5c82dcb73621930b3fedf5814792bf1a.1587742492.git-series.maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_091357_517352_6043A122 
X-CRM114-Status: UNSURE (   6.40  )
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Kamal Dasu <kdasu.kdev@gmail.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-i2c@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1000266313786625965=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1000266313786625965==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="u3/rZRmxL6MmkK24"
Content-Disposition: inline


--u3/rZRmxL6MmkK24
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


>  config I2C_BRCMSTB
>  	tristate "BRCM Settop/DSL I2C controller"
> -	depends on ARCH_BRCMSTB || BMIPS_GENERIC || ARCH_BCM_63XX || \
> -		   COMPILE_TEST
> +	depends on ARCH_BCM2835 || ARCH_BRCMSTB || BMIPS_GENERIC || \
> +		   ARCH_BCM_63XX || COMPILE_TEST

Isn't there something like ARCH_BROADCOM which we could use here instead
of adding each and every SoC?


--u3/rZRmxL6MmkK24
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl6jED0ACgkQFA3kzBSg
KbZtQw//Uc4PYUUonN3o9vdnsuv4ID4p7OzoESWkaIHHkfPe4JBvfqW2iWFD0aKc
eebtlPWs93veah4FV2HAJWbAci4wTdPquffZkSFppnOKwYxMXPH7dqprhnJ1ie1y
wE3GmAuijco4Tx4Vcxu2OWZU4C2D4BobfOl7CxFMdpfye6XljwCJ/PFABnPWAxoM
23ur9k86e/Xk6jTnKAvZFSI2PFRGMbV28UQ1iLY0M7FhNA2E32DVg6U5lOaQrtt+
RE/xVQCI0/hEWBimID2K7Dy365BZRJfofHAniCCHmxwsnlwma7uifChHWtP6Apip
p+KUO9CbEU+pqapwH1FbUoL7yTYpKF1q0eTuIRmIbsdXqvFvU0GVJRzl8s20FvJq
V0aaj+B4qfW2tWqn2t4er200m6XWwZ/eFzJCxNv8cdq1Z/aCD3mDNb405o86Ztvn
lM/Bt23upIjuV2imatRrqJgg6qpcBhPQlMJWMjuc372f/wp0Wi35JDiRzPMGJnGp
wPVloECrn8NSBKRSnhvS5c5wa8IuU9EWk3meTLI0tYBInOEBXurgH791capAyrab
KCqmhD6sjqSTUyru93mzHZPwvu5xMvOdPWPukBATQVwwVBM0+emqn68UHeh80R40
yByqFbiHrJLUIZ+3vpfyykuKJWcclQBTjXx+DNbz0xmhEIQRIxE=
=czLk
-----END PGP SIGNATURE-----

--u3/rZRmxL6MmkK24--


--===============1000266313786625965==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1000266313786625965==--

