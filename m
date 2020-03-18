Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3DAA189BF2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 13:26:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BFeeX6E6PqFWxMN/Ucu08X/84veGLfRE2GHlZwMO/r0=; b=rjiJdAdx5uNtlRwHH7v9vNIvB
	LqJL192t5vyr7/p/VgOhEs8zo1x9UEZCHz2n6b+Bpf1n3W5dBNiUOEZCGp9Z/hvbYC/yAON0ejaBR
	4th/LynP3PsjOllByzD89EQuLOkkwEZVfLiFYu9hF0R+vMnhTluqbX5BLY4VX7OBFBGSfJh69HOAo
	MaBoq8v0IHTRngZ4vc6ZDMoBnqphryEnQC3fYayY69E0EfKVmITlhsDMWvvWE2AVUxkyPkr7xTSUn
	1tTUgqPHGyXQZt2cW/cWujI0XwiPbzDFqH/g+sIXxVD/AF9YOySE2zmJkSligu87EormGL1HmJqqw
	ZuthkZZOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEXmf-00077f-BK; Wed, 18 Mar 2020 12:26:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEXmV-000753-00
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 12:26:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8C6011FB;
 Wed, 18 Mar 2020 05:26:42 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0EA653F534;
 Wed, 18 Mar 2020 05:26:41 -0700 (PDT)
Date: Wed, 18 Mar 2020 12:26:40 +0000
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: arm64/for-kernelci build: 3 builds: 1 failed, 2 passed, 1 error
 (v5.6-rc6-67-gcf89e8c383a6)
Message-ID: <20200318122640.GD4553@sirena.org.uk>
References: <5e715a20.1c69fb81.d52f4.2251@mx.google.com>
 <20200318082830.GA31312@willie-the-truck>
 <20200318120614.GA94111@arrakis.emea.arm.com>
 <20200318121627.GC4553@sirena.org.uk>
 <20200318122304.GB94111@arrakis.emea.arm.com>
MIME-Version: 1.0
In-Reply-To: <20200318122304.GB94111@arrakis.emea.arm.com>
X-Cookie: Oh no, not again.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_052643_082227_751CB0CC 
X-CRM114-Status: UNSURE (   6.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 "kernelci.org bot" <bot@kernelci.org>, kernel-build-reports@lists.linaro.org
Content-Type: multipart/mixed; boundary="===============1103103746143984905=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1103103746143984905==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Hf61M2y+wYpnELGG"
Content-Disposition: inline


--Hf61M2y+wYpnELGG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Mar 18, 2020 at 12:23:04PM +0000, Catalin Marinas wrote:

> I'll let you pick one ;), I don't have a strong preference either way.

I don't really care either way either.

--Hf61M2y+wYpnELGG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5yE38ACgkQJNaLcl1U
h9AbRgf+OX+LAlKj07woTPheke2MngFn36Ad3CtLzbaGd8tMXpt3SWBk82FEaa+M
fG0cRrC91MNDJTnkWgBfGae+I5a82R+wpftLU1LIk0jJatrXCTHMKQzAbUNloZEy
QaRglLHLcLvjtx0FuXJS9p2QN7ntptED7AdRAHgHPkBLJgDuvF9Yt55SCbxQSBi2
L3bvYGaEjWfbbfVSEIQF3dKoMm09Mix+9oazmBSrlNmxNlJIxDxQCHIK9RkSy44E
q3Z1AU7mhKQXdL1Vtks4x0JK7XlVDGGQUBABtDo2EKBHGwa9hWogFR540Hk46Pbb
wavUw8Kh9+emETfpYOz7I7vDLOxu1g==
=nDoV
-----END PGP SIGNATURE-----

--Hf61M2y+wYpnELGG--


--===============1103103746143984905==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1103103746143984905==--

