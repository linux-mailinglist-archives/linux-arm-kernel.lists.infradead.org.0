Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83FDEF2DC5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 12:55:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cx2poDBylEd+IsfIQk8K00Y0P+uNvA5PcO2K74pw3j0=; b=X69kEKbt7EhyQhZ9RrLUVDGEt
	uf8MmLj8nj653UI5e9VBMwhrQRv5MMPZpUMPHZBO0MxZyphoCodHv+FGH2CGwQDBDqB65GlQHmcZk
	TCcxzg12JugrwrjeJVfQ9OYssbyw1R7X/Zoo9mN3YQLyWPKlVjRLIFuMmYvwfbj9QWXmsUoAQquel
	vOYF7b2zss1jQmi7iHsktEK/4dqY/C24WibgptNCTMmwZOwNmpxmjgKDN7jxMSoBZB1J/05FP/hnx
	1hjzauYVtzA3zTkd5yBSNW85tCRR8qlTmHsznjwY2laO23DMgfhsNOxvKD//qvTjrxDfNeqhgIsic
	dWlEBKZ7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSgO0-0001Ki-Qc; Thu, 07 Nov 2019 11:55:36 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSgNa-0000tO-FK
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 11:55:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bFYfMh3ofowwoVD7DHXVwSujDixuflnDqD6gtHXdr54=; b=f8hx5COPzcFQoi6rtEA4Jsw0E
 lQ2WGkBx6lolSmsmcZGiEFwiYQyOMuyxbBU34jpNEm78LXytE9C6XB5skQIfYfTPb0/iGKtRmcf4F
 IP4udolto9JPceJCxH8AIFFQUVyao440ozD33zwez+ct0kkcDXvgDWdyunEqzW8VSQlG0=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iSgNX-0004FK-PT; Thu, 07 Nov 2019 11:55:07 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id F25AC27431AF; Thu,  7 Nov 2019 11:55:06 +0000 (GMT)
Date: Thu, 7 Nov 2019 11:55:06 +0000
From: Mark Brown <broonie@kernel.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v7 1/4] arm64: Add initial support for E0PD
Message-ID: <20191107115506.GB6159@sirena.co.uk>
References: <20191106130052.10642-1-broonie@kernel.org>
 <20191106130052.10642-2-broonie@kernel.org>
 <04d20903-f7f0-18d4-b671-4c382a47c5e2@arm.com>
MIME-Version: 1.0
In-Reply-To: <04d20903-f7f0-18d4-b671-4c382a47c5e2@arm.com>
X-Cookie: I've read SEVEN MILLION books!!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_035510_591342_636F189C 
X-CRM114-Status: GOOD (  13.77  )
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
Content-Type: multipart/mixed; boundary="===============8543882923593705061=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8543882923593705061==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="R3G7APHDIzY6R/pk"
Content-Disposition: inline


--R3G7APHDIzY6R/pk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Nov 07, 2019 at 10:12:30AM +0000, Suzuki K Poulose wrote:

> > +static void cpu_enable_e0pd(struct arm64_cpu_capabilities const *cap)
> > +{
> > +	/*
> > +	 * The cpu_enable() callback gets called even on CPUs that
> > +	 * don't detect the feature so we need to verify if we can
> > +	 * enable.
> > +	 */
> > +	if (this_cpu_has_cap(ARM64_HAS_E0PD))
> > +		sysreg_clear_set(tcr_el1, 0, TCR_E0PD1);
> > +}

> Given that this is a SYSTEM_FEATURE now, we don't need the extra check.
> All CPUs are guaranteed to have the feature, otherwise they would be
> rejected early.

It's not strictly required but it does no harm, helps people who are
doing CPU local stuff see that this might be an issue if they just look
at other users rather than the header and it means that if someone
changes things (I'm actually been sitting on a patch for that but I want
to postpone any discussion about that until after at least the initial
three patches are merged).

--R3G7APHDIzY6R/pk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl3EBhoACgkQJNaLcl1U
h9Cbnwf+LZdn0AZp73EeTxWut4/UWnPvtUrRjggOfM2es2QTG0ZT18yC7YMaS3zZ
oKfBkgJmviE7zXWODHyu18Ij2FhJS9bYGj+2qQe0RT0gSAWcmUIfAo3iKOqnOSS9
7I41tIMmrLfZZQ/Mc+RjIQ+bxEPEHe0WLHo+vrczcT9dCPUbKQEteCgnOaHxr8Ya
C5vrhPa3HCEPC8psqG7QDMHe3whCAWaiMMM41j27H4WfsCBp2dAjpO+o8VYWyAiH
M2b5ogyonYmK+qg1k2zyfGE1B6KnlVK2h/uruzvWE/Eq5VPWJDXfZjcc4EyYMjPX
K99UkWkGfiCedjKzSIW6eN0aeFKYiQ==
=+9w4
-----END PGP SIGNATURE-----

--R3G7APHDIzY6R/pk--


--===============8543882923593705061==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8543882923593705061==--

