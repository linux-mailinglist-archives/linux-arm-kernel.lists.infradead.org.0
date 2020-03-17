Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDC8F188A70
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 17:37:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UR3OcRDZaJu3E1f3g3Bw9bmKpBqbbb+kQhyjeJnqam4=; b=ipgurmIq6gQj+X0I3HJ0Hq/0K
	gQURPepYhORB+YRZfsEYieR2ya/3Wosip4R1SQfJrXeIAhLy7zWv1nNIkbhnz5PrhcBxCGmeTpdDU
	SsA62E94Hq/NFlo0S3pAQzxFwypb0jAvPUJkBJHmfUktllybdlBRi7V1g1rQYO+VdFsoiekhRFrMU
	um2Q4bUILwuWZ1z5vD09JLn0CdbhaLmqISB6WUcSMl2pkhDkyZMLZWoosWcV6LIl4c7f1dT/xRoYh
	8qyGxhH0ubH+a6aNA4WWGrSp66x7Z47lvlQ+lKQrPEdvDWK9MJ9GBuEBuAdNJLpZ9JtZymTLu+zsN
	fHbg//HIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEFD2-0003nq-Md; Tue, 17 Mar 2020 16:36:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEFCr-0003ji-SH
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 16:36:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F221030E;
 Tue, 17 Mar 2020 09:36:40 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7559A3F52E;
 Tue, 17 Mar 2020 09:36:40 -0700 (PDT)
Date: Tue, 17 Mar 2020 16:36:38 +0000
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [RFC PATCH] arm64: fix the missing ktpi= cmdline check in
 arm64_kernel_unmapped_at_el0()
Message-ID: <20200317163638.GI3971@sirena.org.uk>
References: <20200317114708.109283-1-yaohongbo@huawei.com>
 <20200317121050.GH8831@lakrids.cambridge.arm.com>
 <20200317124323.GA16200@willie-the-truck>
 <20200317135719.GH3971@sirena.org.uk>
 <20200317151813.GA16579@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20200317151813.GA16579@willie-the-truck>
X-Cookie: There's only one everything.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_093642_020442_C8B2B6D3 
X-CRM114-Status: GOOD (  21.02  )
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
Content-Type: multipart/mixed; boundary="===============6406865635260190494=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6406865635260190494==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tctmm6wHVGT/P6vA"
Content-Disposition: inline


--tctmm6wHVGT/P6vA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Mar 17, 2020 at 03:18:14PM +0000, Will Deacon wrote:
> On Tue, Mar 17, 2020 at 01:57:19PM +0000, Mark Brown wrote:
> > On Tue, Mar 17, 2020 at 12:43:24PM +0000, Will Deacon wrote:
> > > On Tue, Mar 17, 2020 at 12:10:51PM +0000, Mark Rutland wrote:
> > > > On Tue, Mar 17, 2020 at 07:47:08PM +0800, Hongbo Yao wrote:

> > > > > -	return arm64_use_ng_mappings;
> > > > > +	return arm64_use_ng_mappings &&
> > > > > +		cpus_have_const_cap(ARM64_UNMAP_KERNEL_AT_EL0);

> > > This probably isn't the right fix, since this will mean that early mappings
> > > will be global and we'll have to go through the painful page-table rewrite
> > > logic when the cap gets enabled for KASLR-enabled kernels.

> > Aren't we looking for a rewrite from non-global to global here (disable
> > KPTI where we would otherwise have it), which we don't currently have
> > code for?

> What I mean is that cpus_have_const_cap() will be false initially, so we'll
> put down global mappings early on because PTE_MAYBE_NG will be 0, which
> means that we'll have to invoke the rewriting code if we then realise we
> want non-global mappings after the caps are finalised.

Ah, I see - a different case to the one originally reported but also an
issue.

> > That is probably a good idea but I think that runs too late to affect
> > the early mappings, they're done based on kaslr_requires_kpti() well
> > before we start secondaries.  My first pass not having paged everything
> > back in yet is that there needs to be command line parsing in
> > kaslr_requires_kpti() but as things stand the command line isn't
> > actually ready then...

> Yeah, and I think you probably run into chicken and egg problems mapping

The whole area is just a mess.

> the thing. With the change above, it's true that /some/ mappings will
> still be nG if you pass kpti=off, but I was hoping that didn't really matter
> :)

> What was the behaviour prior to your patch? If it used to work without
> any nG mappings, then I suppose we should try to restore that behaviour.

I'd need to go back and retest to confirm but it looks like always had
the issue that we'd install some nG mappings early even with KPTI
disabled on the command line so your change is just restoring the
previous behaviour and we're no worse than we were before.

--tctmm6wHVGT/P6vA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5w/JYACgkQJNaLcl1U
h9Dl1wf9GX3p/adfELLXBzUuhsdtD5YuF5wPbqLNWia/xE1GxwQwLTICvYRzF5UH
oQ4z9xdwIxtBDXMcOre3yio7NphtC3i0zLTE0TBK5yj2xidtONZkV2hFh/gMFkO1
AJ798O5jj5gL/oaHIYEA/iuKHi9wj2qA7iXiBIpq8v5z9MkDHz1CFAXYrLKAdcaU
0mEhWJrh5xTycRkTY55/+Hegou21QfcXvqcEQq+p2zxJ+dLpt+kQ9C2SsK7/sxkj
buyhcuLV7tUtaW5IrwfyypOpwBR57PTpecCkYGEmPgY51BpHtR9Gp1LBNsC7LbbP
+Ct5O9PmEr9d6wur0BxoHlrKlz+MeQ==
=vYFK
-----END PGP SIGNATURE-----

--tctmm6wHVGT/P6vA--


--===============6406865635260190494==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6406865635260190494==--

