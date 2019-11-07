Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F1E1F31A5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 15:38:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cpyxl8iHviBIN0KlO45Md4lL7XowSVLdhvTeKqrEkn0=; b=PRdUUGWtMpSYEHpNfuiDaA4OW
	aATaj9uWjXFd8fW4u3r25ELWed5HqlCVzcrdmquIfzE2BxH/aVuT3izxQw4LFRNvxsUWcUKLb+Jym
	4+91nfzWzzUbBdaSqEzMFeXgcl8Cyt6F2Az3+/4UFwmsfPDx4wD0FalcJ3JYpNR9cgosP/NLusEZi
	Hwrrmm2lKQHJBPO+ATRsqSC85MYx/R1WYhwROAUoip9qyvopKqXVm9zH2Nj36ayOuIzvTQ1s/S5HR
	yNr0Esvlwvm+lUKP5SqBiVwD4mx/5nWg1VhAP/cWq5Pu1Ydh+RNjZzCLR1JS3u7GfnddX0G0Y4IpG
	1H/Jg3Pww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSivF-0003Vd-2y; Thu, 07 Nov 2019 14:38:05 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSiv4-0003UR-Kl
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 14:37:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=90A1Nl1HqW+aYoOCkEpiSusdIGVs2b63jY5sUl1wr60=; b=lATfX5sFf0YGq9otGkL1fiALG
 rimH8652mn1RQYHeHKfFYXJgnX28zrV4J4Et9cIeaQDHEAh9klaosv/4Zh5V1uTeRqwoUBmBGkObx
 8/1zrHibLkJvnKy3VKhDa8VC8koXIunKNY/uyexAHSD/Rv+8pvMBtZkQm9DvjoyHcznmE=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iSiv1-0004Uu-MV; Thu, 07 Nov 2019 14:37:51 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id EE44327431AF; Thu,  7 Nov 2019 14:37:50 +0000 (GMT)
Date: Thu, 7 Nov 2019 14:37:50 +0000
From: Mark Brown <broonie@kernel.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v7 3/4] arm64: Don't use KPTI where we have E0PD
Message-ID: <20191107143750.GG6159@sirena.co.uk>
References: <20191106130052.10642-1-broonie@kernel.org>
 <20191106130052.10642-4-broonie@kernel.org>
 <05bafb8a-9019-701c-f744-a8d014771b87@arm.com>
MIME-Version: 1.0
In-Reply-To: <05bafb8a-9019-701c-f744-a8d014771b87@arm.com>
X-Cookie: I've read SEVEN MILLION books!!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_063754_717430_D5CEDE90 
X-CRM114-Status: GOOD (  13.42  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3747782202707157333=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3747782202707157333==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bFsKbPszpzYNtEU6"
Content-Disposition: inline


--bFsKbPszpzYNtEU6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Nov 07, 2019 at 12:01:10PM +0000, Suzuki K Poulose wrote:
> On 06/11/2019 13:00, Mark Brown wrote:

> > +     /*
> > +      * E0PD does a similar job to KPTI so can be used instead
> > +      * where available.
> > +      */
> > +     if (IS_ENABLED(CONFIG_ARM64_E0PD)) {
> > +             ftr = read_sysreg_s(SYS_ID_AA64MMFR2_EL1);

> I am trying to write down the rationale of checking this per-CPU.

> Given that this gets run on all individual CPUs, via unmap_kernel_at_el0()
> and the decision of choosing KPTI is affected by the lack of the E0PD feature
> when it is helpful, having CPU local check is fine. Also this gives us the
> advantage of choosing an nG mapping when the boot CPU indicates the need.

Well, it's mainly the fact that this runs really early on in boot before
the cpufeature code has fully initialized so as with the existing code
immediately below for identifying TX1 we can't rely on the cpufeature
code being done.

> > +		if ((ftr >> ID_AA64MMFR2_E0PD_SHIFT) & 0xf)

> nit: You may use the existing helper :
> 	cpuid_feature_extract_unsigned_field(ftr, ID_AA64MMFR2_E0PD_SHIFT)

It's probably worth you going over the existing code and cleaning up
existing users, I copied this idiom from somewhere else.

I will note that we're on version 7 and nothing here has changed for
quite some time.

--bFsKbPszpzYNtEU6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl3ELD4ACgkQJNaLcl1U
h9D5xwf6AqYHDlnQnmKuOchRWpyLKjhR83wCV/2oNhnr8yxPuk3FeZWVA4kZgblj
SbW9Xw/wdK+YL1pwqxI5N+T2UwDx/nVyUDHrq9hUJ7iPUvyXSgDkp8tKqff1G3KB
xTdBKTsbDQExRVSHO8LbZ5VJDr8yj8bCdVRX8uV+XpEldMXaSVyoDopS0WDmaOv3
Hmaj/kQkOy9VaJgRm2Z/bx81kb7Wyjg5pw8AVeruMR9wFKBLI959HxPVh0hA++B7
Q+5E3twblGyRcyK0xH7HpCU0CXHI3FYp6eZ8SGvTzrktoXWxsxqFWRL/8gT3g1df
QklgxBEJud+XkQJaJLploGsnOuC/2g==
=akMZ
-----END PGP SIGNATURE-----

--bFsKbPszpzYNtEU6--


--===============3747782202707157333==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3747782202707157333==--

