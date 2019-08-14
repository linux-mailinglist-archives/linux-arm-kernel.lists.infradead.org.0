Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 758918DDF7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 21:36:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=97+Nqg9vFfqR83Lkbjq9FKzgjNUBQuRGMrNYT7FSLeQ=; b=XlK5cDIDaQflqW23e0f9GTGJF
	UJ7BX7TjbLox2/Do9Nyg7iAak2u1FTNfoC9WglKElVFrWVDsHGMX58OH+vp8Rp9V+kSMmUgUXX+S8
	jdMuYm2KVfkHoA0kW9bvDXxB++nMPTTigTVLj8doFXequTV2as9SMbU2Iw/25K+yn3zYLmaYvZnl1
	M/1Mw6X6uhlsn5FSmBEoq38dw6sqR45LjMfyd0Qun1mCVmMYDuqYFqsfjkCWT8J8B7CzCY1VqATyC
	EHn7kzt9HB1o5efrtGyLWS3GZlZRIaXCbAXQfU81Uaoi7Oridb1QgVZA9lLs4l5uefPc+Bgwn30Y5
	rcVzEczOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxz4g-0004Mh-0m; Wed, 14 Aug 2019 19:36:46 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxz4Q-0004Lp-M3; Wed, 14 Aug 2019 19:36:32 +0000
Received: from localhost (p54B33326.dip0.t-ipconnect.de [84.179.51.38])
 by pokefinder.org (Postfix) with ESMTPSA id 49BA02C311C;
 Wed, 14 Aug 2019 21:36:29 +0200 (CEST)
Date: Wed, 14 Aug 2019 21:36:28 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH V2 08/13] i2c: bcm2835: Avoid clk stretch quirk for BCM2711
Message-ID: <20190814193628.GA9756@kunai>
References: <1565713248-4906-1-git-send-email-wahrenst@gmx.net>
 <1565713248-4906-9-git-send-email-wahrenst@gmx.net>
MIME-Version: 1.0
In-Reply-To: <1565713248-4906-9-git-send-email-wahrenst@gmx.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_123630_869434_4C931145 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Stephen Boyd <sboyd@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Michael Turquette <mturquette@baylibre.com>, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-i2c@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2035514635061752623=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2035514635061752623==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mP3DRpeJDSE+ciuQ"
Content-Disposition: inline


--mP3DRpeJDSE+ciuQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


>  static const struct of_device_id bcm2835_i2c_of_match[] = {
> -	{ .compatible = "brcm,bcm2835-i2c" },
> +	{ .compatible = "brcm,bcm2711-i2c", .data = (void *)NO_STRETCH_BUG },
> +	{ .compatible = "brcm,bcm2835-i2c", .data = (void *)STRETCH_BUG },

What about simply putting a pointer to the quirks data (or NULL) as
match_data? Then the code should be:

adap->quirks = (cast)of_device_get_match_data(&pdev->dev);


--mP3DRpeJDSE+ciuQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl1UYrgACgkQFA3kzBSg
KbZicw/8D/a+41Fd2Vuyx+MJvKd29Kzaki6F06fwRq1DQJHiDcdT2eo/uY/EOfQu
efWgwaXvbFL54rj9z9u7MnV3xiImwyBDVQcJxetbTiZm5Jo97aX0cxH0CgeoF28+
q/sW/LZrLjWkfkPFQfDeV59OjvZJzc08AE/MAxiKj7dESO04mseoSCOYgRfcVLYS
mxbciN02zVQoVjpjzO+hgMCH44dkxIVJc2Xlf7NaotrVIzNYxBPzr3D2IjGqL125
WwHQUohUIxATEeTvipI6sob6/J5DGhoOCQL19fgBM7zAZas6V1kvu0lXGGhPXiCI
3d8ncudBanDh8Foqok0Fk0nC8jrtAfr273XRtMBlyQinD6BbAHGUeUBF437r82Tk
OSHL4lCCPUpT/sIthYcrRZGo5c1MKzWuVmdAE7pv2fYgM0GfozIfrHVZgsg30vNl
m/JIbmBjhE9rdhKcCCZMRkuOA0Q85ow5Jdj7z0xoXEn1ZGJdrJnuGjWyclsF85wP
wWMJD3vU8kllp+TobcsNPUUBzV51UuaQjHR7Is3/tM3ObCnJPlxKQ8ZiSfFJwAVs
oOKTpUihBtF5vOyxZlpXWumZhS08zGNrkz4nx8M27vP/TlcrNqV6gyM4QuHBt1TE
fcLZNAzsbxJHjquINMgTchfVqB3tqlIAuwK5nCs31kKojAWmxN8=
=K5pw
-----END PGP SIGNATURE-----

--mP3DRpeJDSE+ciuQ--


--===============2035514635061752623==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2035514635061752623==--

