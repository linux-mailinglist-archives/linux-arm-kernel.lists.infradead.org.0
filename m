Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6BB1B3A97
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 14:48:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=98e0C2rh+H8aOsdpy3STFWo/dV0t6acpPB2BXym83cE=; b=t3s5d/RdHPrKEJe6taIa9F/nw
	9UlOHm/D8HzQLY9WcAFTjTF5YULngLbG2Z/vqud9ydave8rjrxjyBRVX0Xgj2I2bCst/s5/kEHNoW
	ZdFLznp0mGiZD7Wc6GxDc5rDQNIozIGhJsEbs85nIE30ODlSQAZhGxz6ZryRcyQZpkGcmWGcOXgMW
	TP+Msq2zi+LVU0OrpSjMYzVYVGBZ7AbF4wToRmSBoVeVBwB2MstbUMyD6HtmVOLCjkgRrxJJJVuPj
	El9cSDoYTF8fe6AxpfdLiA6+H/ex2zI1MniyBxRroo9uZS3mwM0yBcNAJrValIXKDPA1G6mcDR+5/
	RTJHnJkZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9qQF-0000yy-83; Mon, 16 Sep 2019 12:48:03 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9qPT-0000lR-OE
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 12:47:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PvgI9jxttidIQAqCnbr63HWN/jzz3vy++g+rE4hD1zE=; b=OopqNWipio58W2Q9s6YRw/qHL
 qSGMr/bowmM1Kt+NRdzTWZhe8ca4uEzmb9ZqNs4PVUAbNRhC0KcFF6HD30n4WbjlW7PT23Ws327Jh
 tWYRdxUqAo1r+Ud/T+tVc1R9JmLWub/xicbzV6yaVG4jdj4Gooi+u0vvNe0medAM1dNQ8=;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1i9qPN-0004DK-GZ; Mon, 16 Sep 2019 12:47:09 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 4DFED2741A0D; Mon, 16 Sep 2019 13:47:08 +0100 (BST)
Date: Mon, 16 Sep 2019 13:47:08 +0100
From: Mark Brown <broonie@kernel.org>
To: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
Subject: Re: [RFC PATCH 03/15] spi: make `cs_change_delay` the first user of
 the `spi_delay` logic
Message-ID: <20190916124707.GD4352@sirena.co.uk>
References: <20190913114550.956-1-alexandru.ardelean@analog.com>
 <20190913114550.956-4-alexandru.ardelean@analog.com>
 <20190916122505.GC4352@sirena.co.uk>
 <ae469c65828443524f9ff0409f1c7a81bf64cf6b.camel@analog.com>
MIME-Version: 1.0
In-Reply-To: <ae469c65828443524f9ff0409f1c7a81bf64cf6b.camel@analog.com>
X-Cookie: Man and wife make one fool.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_054717_289645_5587E686 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "baolin.wang@linaro.org" <baolin.wang@linaro.org>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "zhang.lyra@gmail.com" <zhang.lyra@gmail.com>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 "orsonzhai@gmail.com" <orsonzhai@gmail.com>,
 "jic23@kernel.org" <jic23@kernel.org>
Content-Type: multipart/mixed; boundary="===============1069500691312726939=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1069500691312726939==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cd1j4nHwcOEAktEG"
Content-Disposition: inline


--cd1j4nHwcOEAktEG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Sep 16, 2019 at 12:37:12PM +0000, Ardelean, Alexandru wrote:

> > This breaks the build as there is a user of this interface.

> Ack.
> Jonathan pointed this out.
> There's a V3 that changes both this and it's user (in IIO).

That v3 seems to be a small subset of this series?

--cd1j4nHwcOEAktEG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1/hEsACgkQJNaLcl1U
h9BGGQf+KEkdqu8sl97blIC9u02sAznBDKI8WBw8hq8w1EI3irkrZZsjLo+22UTB
cUIp8bzIXq5GQ/ZbRPTG/jQOKc44E8gajZBxhWc9bFF2oNQQUy/9H5JoIgeUQspk
Nd6lo3EyKLFHLHHc2zLeYt0HK70RKJHO09MRciWmJBDWoanZC0x7wohRuvJvoNy5
nbtGX9+mdgIqsp17Z4RrDvr4hr1d8vPOHSl54jA0L8y+M+qo4Zcn9WvJ9WXybVZL
yik9wnQApavBdBrubRMqnUri/p6fvp6yGGYKJlNssskGyKB8RoNFqNWSA2YAshPi
WxdlbuP6o9Qq/Twrv5sM9fj02xApyw==
=zm0D
-----END PGP SIGNATURE-----

--cd1j4nHwcOEAktEG--


--===============1069500691312726939==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1069500691312726939==--

