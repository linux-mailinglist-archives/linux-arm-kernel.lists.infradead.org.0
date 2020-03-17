Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53A01188687
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 14:57:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LhHr0Uz0vp3MB9pMWu3GY78CB9Po1iEMf6egmYUvZYI=; b=e3+lUX/7Ot+2Rw0SmZn22349V
	oHDo0ReHmf06dfpoObi9RJJxPOwl5bHZh71rsun1FxIRVoYVhPWx7isosL/ltyjv38ggxoElS8XxV
	8NNK6VbOXlXNG9BPgN8PyYWTES49IYbdI3QzXU8R/Ar6Fol20ciIv7evyjAd2h9RBVUsd5hwew9X9
	I/1lbyoBO3CHhnmV49pkahqpVAq5hzsWcoHHngiHTDbowh0mRyMc2d+bWc9U4w7owYEN8StbqrA0a
	c7AkTs0Qu/iXULt8LMZWwuw7s5SrOG1ZwfQfoJi4fsRbaMwkyaCef0hEttJkwnV+mIL0Qfeb+vj/0
	Fmio4Wazw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jECiq-0000Mx-Gy; Tue, 17 Mar 2020 13:57:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jECig-0000MJ-Uc
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 13:57:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7BBBDFEC;
 Tue, 17 Mar 2020 06:57:21 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F172C3F534;
 Tue, 17 Mar 2020 06:57:20 -0700 (PDT)
Date: Tue, 17 Mar 2020 13:57:19 +0000
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [RFC PATCH] arm64: fix the missing ktpi= cmdline check in
 arm64_kernel_unmapped_at_el0()
Message-ID: <20200317135719.GH3971@sirena.org.uk>
References: <20200317114708.109283-1-yaohongbo@huawei.com>
 <20200317121050.GH8831@lakrids.cambridge.arm.com>
 <20200317124323.GA16200@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20200317124323.GA16200@willie-the-truck>
X-Cookie: There's only one everything.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_065723_034159_9436A721 
X-CRM114-Status: GOOD (  18.70  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, catalin.marinas@arm.com,
 Hongbo Yao <yaohongbo@huawei.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5315360072501678130=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5315360072501678130==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="CEUtFxTsmBsHRLs3"
Content-Disposition: inline


--CEUtFxTsmBsHRLs3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Mar 17, 2020 at 12:43:24PM +0000, Will Deacon wrote:
> On Tue, Mar 17, 2020 at 12:10:51PM +0000, Mark Rutland wrote:
> > On Tue, Mar 17, 2020 at 07:47:08PM +0800, Hongbo Yao wrote:

> > > Kpti cannot be disabled from the kernel cmdline after the commit
> > > 09e3c22a("arm64: Use a variable to store non-global mappings decision").

> > > Bring back the missing check of kpti= command-line option to fix the
> > > case where the SPE driver complains the missing "kpti-off" even it has
> > > already been set.

> > > -	return arm64_use_ng_mappings;
> > > +	return arm64_use_ng_mappings &&
> > > +		cpus_have_const_cap(ARM64_UNMAP_KERNEL_AT_EL0);
> > >  }

> This probably isn't the right fix, since this will mean that early mappings
> will be global and we'll have to go through the painful page-table rewrite
> logic when the cap gets enabled for KASLR-enabled kernels.

Aren't we looking for a rewrite from non-global to global here (disable
KPTI where we would otherwise have it), which we don't currently have
code for?

> Maybe a better bodge is something like:

> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index 0b6715625cf6..ad10f55b7bb9 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -1085,6 +1085,8 @@ static bool unmap_kernel_at_el0(const struct arm64_cpu_capabilities *entry,
>  		if (!__kpti_forced) {
>  			str = "KASLR";
>  			__kpti_forced = 1;
> +		} else if (__kpti_forced < 0) {
> +			arm64_use_ng_mappings = false;
>  		}
>  	}

That is probably a good idea but I think that runs too late to affect
the early mappings, they're done based on kaslr_requires_kpti() well
before we start secondaries.  My first pass not having paged everything
back in yet is that there needs to be command line parsing in
kaslr_requires_kpti() but as things stand the command line isn't
actually ready then...

--CEUtFxTsmBsHRLs3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5w1z4ACgkQJNaLcl1U
h9DHPQf/Yk+8QriE8OOokiXkCDmOzV62HaR9JUB4YrP/wXt51ciPUarL47VDjxX0
BVZornO01cOyFwLJ9ZPhFc+XXYoaO7hhRXI+9eervR0LYo9pEvTzGyAXPpKyyldo
lNUHzr5zABlfNy9XMAPHWUu2audTlT5ECyLd5jzKYvQH6fIQ3GMr7niaEauktkue
mJYqjjnCXMZdCfIPB1djyXTWIwHWA1d4SC1IuxSfEG1Z+3pmWB6O2xcuLXPzDpiC
C9pZ8fPwDbG1fqOKCMT4RkoAgceWg2jhE2ATlpEawsOyF8Xy9pnlXcV4el33+rMP
iNg5UVCxpnbw8Z2WQXOD4er3dk5BHw==
=o53u
-----END PGP SIGNATURE-----

--CEUtFxTsmBsHRLs3--


--===============5315360072501678130==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5315360072501678130==--

