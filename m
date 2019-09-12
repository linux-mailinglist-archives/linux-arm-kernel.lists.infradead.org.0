Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24DE2B0BD5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 11:47:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qeofyyQQS/+EQjra57+HVtkNfCDhvIySugpvOfIQHKQ=; b=CPsZrKaxpzcb5jr1+RPnE6a4Q
	ob7XnKNPwQOqecrhWyykqPXDv05MTL6goLEXl8tvJsqBn3Jcch44h6mAJEgG/rY5Es+EQj0BKOS3M
	gnmLUOFDPcifuQI7oE5hX/4cgsDpF+MzJmpo93cab3ONn2+J7P5N+g8a1zY+TO/3vl6TIEZKcn4JW
	YXJ2jeAV7ABOzP0KiEwL1kBtWUxwhl/PO/SKzndzHqTEjXLL7qObjo9Pv7qCNxs4UBfHVpDhPh1NI
	Z0MMD0VYDdw0gnTcZkgXtGYjWAIVRJ7HecMGe9Zn8qR5Ew91YNRmUuQGFjsrRegC6Wx+sXDQ4uSzs
	7DoAqu9Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8LhB-0004Uj-G8; Thu, 12 Sep 2019 09:47:21 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Lgw-0004UQ-TU
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 09:47:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Nd0o0f4/7BjLAconWp05z7n4at/FQXG4cF5ZBRu8Iz8=; b=FZECb2efh+R1EzviX/GYgZl2a
 lPck10VYa9Dj7/IVHkMV6O21mBR2fETXaolP9KAiwHpIF6QqnHL6ru/4UvyDVhzNJXf1Zqt5EExpA
 MzLsu1BM5dm+CI7+qFVmEDHujNsHNNRxWoRyH0xvvB8deJ6KUmyUZ/Lv3HU65DJOKqkQo=;
Received: from 195-23-252-136.net.novis.pt ([195.23.252.136]
 helo=fitzroy.sirena.org.uk) by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1i8Lgs-0006SK-MV; Thu, 12 Sep 2019 09:47:02 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id D4417D00AB0; Thu, 12 Sep 2019 10:46:51 +0100 (BST)
Date: Thu, 12 Sep 2019 10:46:51 +0100
From: Mark Brown <broonie@kernel.org>
To: Amit Kucheria <amit.kucheria@linaro.org>
Subject: Re: [PATCH 0/4] Cleanup arm64 driver dependencies
Message-ID: <20190912094651.GH2036@sirena.org.uk>
References: <cover.1568239378.git.amit.kucheria@linaro.org>
MIME-Version: 1.0
In-Reply-To: <cover.1568239378.git.amit.kucheria@linaro.org>
X-Cookie: Be careful!  UGLY strikes 9 out of 10!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_024706_959531_2BFA532F 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Stephen Boyd <sboyd@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-pm@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, arm@kernel.org,
 linux-gpio@vger.kernel.org, Sebastian Reichel <sre@kernel.org>,
 Will Deacon <will@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4493029842760113448=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4493029842760113448==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2eauhx3HRLXw1WRo"
Content-Disposition: inline


--2eauhx3HRLXw1WRo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Sep 12, 2019 at 03:48:44AM +0530, Amit Kucheria wrote:

> I was using initcall_debugging on a QCOM platform and ran across a bunch of
> driver initcalls that are enabled even if their SoC support is disabled.

What exactly is the problem you're trying to fix here?  For the
drivers I looked at these were bog standard register the driver
with the subsystem type initcalls on optional drivers so not
doing anything particularly disruptive or anything like that.
For any given system that's going to be an issue for the
overwhelming majority of drivers on the tree, including those
that aren't associated with any particular architecture.

--2eauhx3HRLXw1WRo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl16FAsACgkQJNaLcl1U
h9DVVgf6Aty/MAqUrwPqV8+kec9c5CmVjUbla+Dxmxbc4XJOZLGCsCRCoPINUSy7
IHCZ2hFHKKPnv5Jt7YQ0iwEiEQ4i93A1zc8OPGuiJ+R7I1MBAmtzS8OkLN+hTK2Y
jtp8IcYRXPWPFSio2smmqIE0CoAlCVfxMYwgQp5a96Ra3qOnQm5x4LC5M278KJLP
HrorLSGCRanptsaI5xCgfG0hUjMzJI8F4/Cd1LBt082FOXSaGMptsRmBKco2ea/4
AWJ9eTsf+TYSSy1qJwFqd7GXKNRY03RU+PFhs76MNmVZdowkRKVFM8y+nGBNbPmp
It+dwnrew9x+7L0s0apty/0gLRnzyA==
=ZOLi
-----END PGP SIGNATURE-----

--2eauhx3HRLXw1WRo--


--===============4493029842760113448==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4493029842760113448==--

