Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 742FAE093D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 18:39:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NCHrjcNsGMIz4Bb1XJYQasKqv1KpirvDuCYXsvC3n9I=; b=pRdqxwcSNGr1NaLKjJ8MgNkzd
	ch/Rx32huuRLE9c+xSmytpWjt2R61Bwv/vM7oGQB6L3Ga58XSWOfTUcRSsmWA3ZmHmFb5+1KlrEtV
	Nw1FfBUyHCRwd8gHhZGfDnJg9odVUUQyzvyrIDfqDgqbfyo1bLxzeuFNU1ExEF7f28cNL6YWJMwNi
	kKJUNho6B4hJnCWIJl+TJ1a6OicnmpNiqeZ7ZHfLVpOvgS5BqL+qcvesyEedPiJzqE17FJRbcrlWm
	/6PweIuLwrO9qraRhaRjf+n2C6KcNZIr6BJPzjQ1siieuYNpo+kF435wSyihkZWasklVkszFnr1Tt
	Q+YlS2iOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMxBj-0007MJ-Qf; Tue, 22 Oct 2019 16:39:15 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMxB5-0006xJ-0E
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 16:38:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Bsylmx/HNBO7oRMVXVNwiEyRC4cckwd84bjAM8mOb0k=; b=tvMimewQkFDL1nlGaO6PkBOA9
 Uz7PsgZsauauop8auYsA+ghDMICgo2GT8QSnMV8A8V9+ieTunlHA+7J23r62K6HvzUsmO3lkD7Fzq
 b8iU+yUyOvY2SUgQlWyNhKtR45P6HZSX0S9MMuW/jKwjP/Ct7+R6gr8L85x3g5wwLrv7A=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iMxB2-000742-Ce; Tue, 22 Oct 2019 16:38:32 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id DC3042743259; Tue, 22 Oct 2019 17:38:31 +0100 (BST)
Date: Tue, 22 Oct 2019 17:38:31 +0100
From: Mark Brown <broonie@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 23/46] ARM: pxa: z2: use gpio lookup for audio device
Message-ID: <20191022163831.GT5554@sirena.co.uk>
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-23-arnd@arndb.de>
MIME-Version: 1.0
In-Reply-To: <20191018154201.1276638-23-arnd@arndb.de>
X-Cookie: Whip it, whip it good!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_093835_064388_A0102286 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: alsa-devel@alsa-project.org, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Daniel Mack <daniel@zonque.org>, Robert Jarzmik <robert.jarzmik@free.fr>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5651769440348889017=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5651769440348889017==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="EmW68jKGQIhj8inv"
Content-Disposition: inline


--EmW68jKGQIhj8inv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Oct 18, 2019 at 05:41:38PM +0200, Arnd Bergmann wrote:
> The audio device is allocated by the audio driver, and it uses a gpio
> number from the mach/z2.h header file.

Acked-by: Mark Brown <broonie@kernel.org>

--EmW68jKGQIhj8inv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2vMIcACgkQJNaLcl1U
h9AZ6wf+NeOxr9MNvwixJZADUIwYW+QadpN3eAfqqY58BvEqVnkDjruFpIZbmXSC
VEjT32396OacS57CequHpHFX0DpuykmnBIetGlt/lPUczLOUOwtyyHXwM9wOhGr1
cBB14AbepdJGFcFpyZtM340gSCawyWqZUbp6p0TH63HoYzcO3CL4kIB8dJWOhC+j
2bYM8XBRhlBqqVv052oG7xP6IwZS99me4hkg3nnCcAFc5lR3nfg7QUaKN1O+Nh8g
UdVkFvIhdkOS3r31q6AmAnDKPYAhN432virDNtx7ySFB0T3meatGmMRT+c1aHTRN
9t3W9zkNbk+Ec0xQcDT8f9dJkriSSg==
=AnlZ
-----END PGP SIGNATURE-----

--EmW68jKGQIhj8inv--


--===============5651769440348889017==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5651769440348889017==--

