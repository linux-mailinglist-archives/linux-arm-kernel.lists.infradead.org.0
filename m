Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB05EB0C2C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 12:03:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=On6vz63WExYZXQ/Gt8jEoPj+S1pJDoQGyg/+Ja9l6nQ=; b=MX+GZeHR04WfduMObwEHPc2Zq
	qrKjAusiR63nu0cEFWRd6Hr/YWGYAE8mj75fGZ4jKokHMmVXnOeXQ4XRin6Ahv6wRMCZT8+WIjuhP
	xBkABFNTid8m7pEs9AYSpjUAiSg6bXjDDrzKmc6theiM0/oGkHE/qhojBOEbmO9Euq79aINvFlFuZ
	DUDhb/LEAp9gcBVaLIr9R8axrHMNV2kZgpLnV9pYJUephDRMeVtMw7OQsvjodX1iuXrxZkNTsv6p9
	0QaucU3tErZK7fAjcgRryXu89je4BqRxK8Ct7+lSij5hYBuprp/xqAbQlwZm7mfThuzKGB3wSVisv
	7PPjS9A2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8Lwl-0001ah-DP; Thu, 12 Sep 2019 10:03:27 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8LwY-0001aN-LF
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 10:03:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fKTvRv6acI6xTKbQcP4YowzP1qiooahYb40b5oOq4F8=; b=LVfeEOZxnZs9uLcyFI5eOvY0Y
 sHTEK9YhOvAX4uoCWNT+ZXbnxfhjIhq2IKF2WPB/K+pwwTogjzyHr3njGvltSjsEbrN61/dsd2zi4
 HckiBBMdLRqYpztgOJOcJ7f7J8msc14CMj0ZugjpX/Bei6tDG7lgmfhnL7/OXspPSXlWk=;
Received: from 195-23-252-136.net.novis.pt ([195.23.252.136]
 helo=fitzroy.sirena.org.uk) by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1i8LwT-0006Tr-73; Thu, 12 Sep 2019 10:03:09 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 7DAE7D00AB0; Thu, 12 Sep 2019 11:03:08 +0100 (BST)
Date: Thu, 12 Sep 2019 11:03:08 +0100
From: Mark Brown <broonie@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 0/4] Cleanup arm64 driver dependencies
Message-ID: <20190912100308.GJ2036@sirena.org.uk>
References: <cover.1568239378.git.amit.kucheria@linaro.org>
 <CAK8P3a2zGJx7SCA4LUHPGTybN8GU16Ah3H0FbaOEwR3H7uGCnA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAK8P3a2zGJx7SCA4LUHPGTybN8GU16Ah3H0FbaOEwR3H7uGCnA@mail.gmail.com>
X-Cookie: Be careful!  UGLY strikes 9 out of 10!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_030314_718785_5023490A 
X-CRM114-Status: GOOD (  10.36  )
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
 Linus Walleij <linus.walleij@linaro.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Amit Kucheria <amit.kucheria@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-pci <linux-pci@vger.kernel.org>, arm-soc <arm@kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Sebastian Reichel <sre@kernel.org>, Will Deacon <will@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============9197936505371577905=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============9197936505371577905==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2+N3zU4ZlskbnZaJ"
Content-Disposition: inline


--2+N3zU4ZlskbnZaJ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Sep 12, 2019 at 11:29:00AM +0200, Arnd Bergmann wrote:

> Generally speaking, the way that works best is

> config SUBSYS_DRIVER_FOO
>        tristate "SUBSYS support for FOO platform"
>        depends on ARCH_FOO || COMPILE_TEST
>        depends on SUBSYS
>        default "m" if ARCH_FOO

> This means it's enabled as a loadable module by default (use
> default "y" instead where necessary) as long as the platform
> is enabled, but an x86 allmodconfig build also includes it
> because of COMPILE_TEST, while any configuration without
> ARCH_FOO that is not compile-testing cannot enable it.

Indeed, though we shouldn't be adding any default m/y to things
that don't already default on.

--2+N3zU4ZlskbnZaJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl16F9sACgkQJNaLcl1U
h9Ci2Af7B7FanodOlLyNC/81WlZgesS4wjgnyaCyQT3+zuq2s1GhWqi5hjCHjEoj
ETYClFdHppnDJyaZOc5r5Qsfc70PFx9yOhfW+CCj+HSKr5t+vdCBUDgvt3g96iOD
7ysX9c0wyFOkUrz925HBBAiQ0itApHDy/4T8RvruV/N3AfDWO/PWIEbycIXIoFez
9v3E3yq5VgiiGY6zrOY8eWXWDGCkGvyxNef+b5QfezQ9KN64Z4MxaQ1gIVv5e/3Y
8D2CLhuuyEhs17nVO8SdkWi9n2XTFO0WrKgw+clKE42DwYTQvaeT82ZDO7QKF67t
UTzhdPw57kbA4tBu966JVyebsrMBMw==
=+Vyp
-----END PGP SIGNATURE-----

--2+N3zU4ZlskbnZaJ--


--===============9197936505371577905==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============9197936505371577905==--

