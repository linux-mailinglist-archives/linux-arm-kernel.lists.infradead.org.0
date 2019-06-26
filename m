Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 435F856E55
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 18:06:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XvIC8/eQW6UoWbTXyRe2KM/gWd4IAAxLSGCcjbnEUR0=; b=oUPYZQcZLmUj+roXVnjnFKWmj
	amQqNUAQ0da/S96Cpsg9t+8RY9rFCRxvwA6W7CqIwAwHUPulZgNHk3WgDkW8frzdPofSmajb67HYq
	ANyhRvUZoC7QmVh4rnRe+hRmq2vEPmkmUgcaXQPBAj4b5y3Hb+Hr2C+UuM8/GIJrB13J4MBWjhhj8
	Pc6PcErO/L5tjUfHZMM+RByAKpsipdYRAWAnufOJr9LSHtrK27Z1bwLKepXS/VhXYdijAqt6CaoeC
	SvBtOAEzGTKy5g0O3euf8AAEOEzRFLAt58vKomdzecF8FkGgByhG7kTQChoBSkbkwD6jn3E76LX1x
	uiO6ZT9BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgARR-0001jb-Qq; Wed, 26 Jun 2019 16:06:37 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgARG-0001ix-UR
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 16:06:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ObBll3o8jBZS2dIG2Cco4jHSqfd2Q/hNM+srOG9AS3M=; b=thoT/O1sexjZusF5z9OsSHm6B
 aI4KIIMBS8+xlJDdJwA1npXG+fZyPHI4p4d2UwhMb607KF9MlYDCpXvhBSOC46i2+RkPpD0oQ/8kp
 g26acCAOK8XGnSFRq6c4qnQSqliee0iu1oy80ioReOV3LtGpHSzaphmzxskVewwovSZ78=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hgARD-0008Ak-8w; Wed, 26 Jun 2019 16:06:23 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id 86D05440046; Wed, 26 Jun 2019 17:06:22 +0100 (BST)
Date: Wed, 26 Jun 2019 17:06:22 +0100
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: Add support for E0PD
Message-ID: <20190626160622.GA5379@sirena.org.uk>
References: <20190626144535.27680-1-broonie@kernel.org>
 <20190626150403.dekq5l5rpmgzknfr@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20190626150403.dekq5l5rpmgzknfr@willie-the-truck>
X-Cookie: You need not be present to win.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_090627_149357_3864FDBB 
X-CRM114-Status: GOOD (  19.68  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7209286159686963391=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7209286159686963391==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="y0ulUmNC+osPPQO6"
Content-Disposition: inline


--y0ulUmNC+osPPQO6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 26, 2019 at 04:04:04PM +0100, Will Deacon wrote:

> I think you're missing one small thing here: all v8.5 CPUs will have
> hardware mitigations for meltdown as advertised in the ID registers.
> However, we still force KPTI on for those CPUs if KASLR is enabled to avo=
id
> it being trivially bypassed by looking at fault timings. As you point out,
> there are two issues with that: (1) the performance impact of KPTI and (2)
> the incompatibility with statistical profiling. It is these issues which
> E0PD attempts to address, so whilst I'm ok with enabling it unconditional=
ly
> as you propose, we should go one step further and avoid enabling KPTI on
> CPUs with E0PD even if KASLR is enabled.

I agree, I'm currently working on a patch which will disable KPTI by
default if we've enabled E0PD - it's a bit of a faff due to how early we
decide if we're going to use KPTI so it probably needs to be a separate
patch anyway.  I figured it was worth sending this separately as a
system that has both E0PD and KPTI will be no worse off and a system
that does not enable KPTI but suppports E0PD will be better off so it's
a net win. =20

> We probably also need to consider the unfortunate situations where E0PD
> is not supported by all of the CPUs in the system.

Yes, I've marked it as ARM64_CPUCAP_SYSTEM_FEATURE so it should be safe
unless all the CPUs that don't support it are late CPUs (in which case
it'd stop them booting) but it's not ideal as it means we won't use it
at on mixed systems.  I did debate marking it as _WEAK so that we'd
enable it on the CPUs that can use it but I worried that that'd be
potentially misleading with regard to the level of hardening if the
kernel said it was turning on E0PD.

As with the interaction with KPTI I figured that the doing the simple
thing leaves systems generally no worse off and leaves some systems
better off.

--y0ulUmNC+osPPQO6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl0Tl/0ACgkQJNaLcl1U
h9C3Igf/b2EY9w6HmhLQt+UURagEPGZu02QY/z2OMxrg/wBeeocxfmyg22VW01VK
8f9AEkwH1l+4tcTm+uLxzRwpHOg4na3lqxamEn3ys6ECbELip0sIss1BziPb49fq
8oKEzKyecRTsQuqGJgTvJxxbUzH8WrnaGi5HBxo1t5tytkiqRY2UwFUh8GsIqzNc
FGfOMepm3SZfBvGV9EfHlT38SsrQd/MLlEb6k0UuqCBej8iiULFKmPxAlNwGFl4Y
X5HLio3lcDLEnbwHGxzqaNiKSuSosKESFPBxx0P5fZlq1D9/L3dNmVo9LO4jfxB4
iHsRo10lPFXgoYhnKJmi8Tw5/ER2tQ==
=F9Li
-----END PGP SIGNATURE-----

--y0ulUmNC+osPPQO6--


--===============7209286159686963391==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7209286159686963391==--

