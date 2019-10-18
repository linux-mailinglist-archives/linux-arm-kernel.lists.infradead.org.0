Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB81DC49F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 14:23:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=R7lyAdIL+FWjo06r2SsSAzHOS2OFxEz4gVhjqRRUmjc=; b=gUIvLv8gj8GXWvNCnfssjKMBw
	RVtHo77em80ePMsm4u5L9Yw7nHIVGvSCnbPTHv04T6g9qirua8HTICabNHdzI2K41esM8cxytzDUY
	bZaMIat5Ra9QuPFxFbbWLQCSTaUf7NR1FRm0hfiuTy+i+uUgRZRG6DFYV7YgJSXeMY9MZ9NxzmEcn
	a+W5dOoLDPjVZUx5R2qJ4u75NHudelZF55+NVuB3acpAZjFbpOQFYUFn5PEb1htQAuUrcCqYjMSiM
	BgZzpLtTmpztBm/I//HD6q1ezIAAyTh1dDNlaBf683mYPCtu4aOiqfa13F01mTW4bUeh8Cl4MEYPu
	7w7L4LVPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLRHa-0000uR-Uj; Fri, 18 Oct 2019 12:23:02 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLRHN-0000to-9W
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 12:22:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=U3dJ0jvghwMGVqBxc3PnWpd0/84N0qDOR0AfqivgCs0=; b=okgp8TgAY9raSFQvFqd7sCPfJ
 /XJe9dvTf4EmVNZF1IANs85VJ8PcWWqB/ZZnWzPkmqpHUKz8+7EwoU1DSxGDZTU2+ovV7PmA62PTz
 D38ZX1QHxMdlT9Tp1Gulz9gL7NjwvaAbvROLWATtMUg1595KwxeDJWXVgMUjkOFB69/E8=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iLRHD-0003YC-Vw; Fri, 18 Oct 2019 12:22:40 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id BDB0D2741DEA; Fri, 18 Oct 2019 13:22:38 +0100 (BST)
Date: Fri, 18 Oct 2019 13:22:38 +0100
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v3 1/3] arm64: Factor out checks for KASLR in KPTI code
 into separate function
Message-ID: <20191018122238.GB4828@sirena.co.uk>
References: <20191016151421.27708-1-broonie@kernel.org>
 <20191016151421.27708-2-broonie@kernel.org>
 <20191018120102.GA55431@arrakis.emea.arm.com>
MIME-Version: 1.0
In-Reply-To: <20191018120102.GA55431@arrakis.emea.arm.com>
X-Cookie: Smear the road with a runner!!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_052249_351343_3161AC9B 
X-CRM114-Status: GOOD (  14.84  )
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
Cc: Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6965336626006658351=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6965336626006658351==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3lcZGd9BuhuYXNfi"
Content-Disposition: inline


--3lcZGd9BuhuYXNfi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Oct 18, 2019 at 01:01:02PM +0100, Catalin Marinas wrote:
> On Wed, Oct 16, 2019 at 04:14:19PM +0100, Mark Brown wrote:

> >  	if (arm64_kernel_unmapped_at_el0())
> >  		return true;

> > -	if (!IS_ENABLED(CONFIG_RANDOMIZE_BASE))
> > +	/*
> > +	 * Once we are far enough into boot for capabilities to be
> > +	 * ready we will have confirmed if we are using non-global
> > +	 * mappings so don't need to consider anything else here.
> > +	 */
> > +	if (static_branch_likely(&arm64_const_caps_ready))
> >  		return false;

> While that's a step in the right direction, I'd like to see
> {PTE,PMD}_MAYBE_NG move away from the current use of
> arm64_kernel_use_ng_mappings(). These macros are used during early
> during boot and we seem to rely on cpu_hwcaps not being populated yet
> (arm64_kernel_unmapped_at_el0() checking it via cpus_have_const_cap()).

> Could we have a global variable (boot or a pgtable attr type) which we
> populate during early boot and subsequently use in the PTE_MAYBE_NG
> macro?

I did look at that but figured that now E0PD is a system capability the
existing variables that the cpu capabilities stuff uses wound up being
set at pretty much the same times so we could just reuse them and avoid
having to worry about anything being out of sync or if the update to
flip to non-global mappings was being done in a concurrency safe manner.

--3lcZGd9BuhuYXNfi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2pro0ACgkQJNaLcl1U
h9DazAf+IQ9fJnZXcKCMbM3mcyVZkhW8dzuxiot6pSJUb9x/wwEqamYkAfYLYpUj
uGWSaX0s70qVP8SKZLP6ONBYffLbwKeg1Kj3148cYP2HXjecfidSLdWLE4KNG0wD
4TL5pi6VO4dcdTKXmLgluh8+RLUzX7hmqDAt02tIVeRMMNpPLGBXaC8YtiX70o4F
ZpmCYVQCbOMHJssBOXQEg1HW6JT4qOocTHmqTYfdxww/+pM1iJk55QiHNhE707XR
qfzVgBQTLbY2nBmo3NXRMr7goy83g/QRTwtwE4gC/TDvDc5+nM6TRMvA2twCMcOB
dW3drnRIHWrUrUnneLd7WpbPWE1rPw==
=zbrE
-----END PGP SIGNATURE-----

--3lcZGd9BuhuYXNfi--


--===============6965336626006658351==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6965336626006658351==--

