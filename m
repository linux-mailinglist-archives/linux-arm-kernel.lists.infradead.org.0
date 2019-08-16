Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4740490120
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 14:10:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VTN6mUzbQnflNRDDx5CTkJlTpcoP2sYiDOI5Ooi0gy8=; b=Vvom2XtQ6P86C/uSvKMl5iO4w
	qIUG2ky6fahwlrIiuiG2EIxbI7tOoeOaH54BTKA7hG0n9sB2lSKc9cwaKCalfn3/IQd8rQ3KQ1oua
	ixCcwapfElRrUMhKXeQLM0T2i3ka9nZ1UCA5tEkB1tYMpVcbQwSGE/4PAYZC2J+GEKnioNkgwczj+
	brtVL5IAC+/pfUB01nrp57C2KDENY3mvIU50Znx3t2FralINwda1IEDxTrKoFNYKK4iVInGZK0CCO
	e3KLonCbZHKTF5sWVi4Mb0zC1EMtBew592ZjFLwxpjQUn4xRkzctEdlrcFHkWhO+8rddoMN/SXOLz
	ymhMqMKvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyb3m-0008NQ-0G; Fri, 16 Aug 2019 12:10:22 +0000
Received: from mail-ed1-f98.google.com ([209.85.208.98])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyb3Z-0008JY-8C
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 12:10:10 +0000
Received: by mail-ed1-f98.google.com with SMTP id x19so4902239eda.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 16 Aug 2019 05:10:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1syVzZac1JO0Pj1c4ueewJfi1pXg1wzk97P4cVfyLTY=;
 b=TItMjq6zNIVggxv6/xUug1LyZ7AeZwqI4GJWVDyOZH6iljXmGZn9RypiEE0pYncghr
 S3hmrIurBKQDKKwiZCe6l96uAm2vVLoVhVTRT5AR4ymJgJPTyfstQ1YhCJ4gU843AhHj
 q6vh9JaDQ5Sv5RyKSIJ58cmJL5FxYc9c7UFWq3YKenAbT3UNYl387XfzVxPFEHbwKxSr
 8HC/yQ+e7IcOtDtK4SHonCgdTue1Gu+PslkkhqRy8IgPrl049UPeqJoa4NywQBpi2aFP
 A6A1SnvOuas3MKHElquKWOVckMyn8crehfWqQK61TvqIrDB1C/0pZBbd7tt7D8Oh5VqH
 1x3g==
X-Gm-Message-State: APjAAAUYDFlHWyST/U+KIdT8/S377q7Q/4+mYi/ixOD7pj9qyPGAMMZF
 pd0PxFiJX5VP2PeiBbZu2EbNNAqgIEmpQqPjj944Aq5YiPRhF/40B8RH8XlKQGmwvQ==
X-Google-Smtp-Source: APXvYqyWHY0w5ChUYmHLs7pZi3HTKdDchux+C6+Oze0//MHgspFQaXP4POkQSn8NHVwx5MJbNo5K3GRUDUoZ
X-Received: by 2002:a17:906:5e45:: with SMTP id
 b5mr8905861eju.59.1565957407316; 
 Fri, 16 Aug 2019 05:10:07 -0700 (PDT)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk.
 [2a01:7e01::f03c:91ff:fed4:a3b6])
 by smtp-relay.gmail.com with ESMTPS id v11sm99778eds.33.2019.08.16.05.10.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Aug 2019 05:10:07 -0700 (PDT)
X-Relaying-Domain: sirena.org.uk
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1hyb3W-0003Gb-Op; Fri, 16 Aug 2019 12:10:06 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id E07AB27430D6; Fri, 16 Aug 2019 13:10:05 +0100 (BST)
Date: Fri, 16 Aug 2019 13:10:05 +0100
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v2 2/2] arm64: Don't use KPTI where we have E0PD
Message-ID: <20190816121005.GB4039@sirena.co.uk>
References: <20190814183103.33707-1-broonie@kernel.org>
 <20190814183103.33707-3-broonie@kernel.org>
 <20190815163541.yngqvjmehpuf74ye@willie-the-truck>
 <20190816102424.GA28874@arrakis.emea.arm.com>
MIME-Version: 1.0
In-Reply-To: <20190816102424.GA28874@arrakis.emea.arm.com>
X-Cookie: My life is a patio of fun!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_051009_295842_4721AE83 
X-CRM114-Status: GOOD (  24.62  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.98 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.98 listed in wl.mailspike.net]
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
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: multipart/mixed; boundary="===============4793192273041174465=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4793192273041174465==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="JP+T4n/bALQSJXh8"
Content-Disposition: inline


--JP+T4n/bALQSJXh8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 16, 2019 at 11:24:24AM +0100, Catalin Marinas wrote:
> On Thu, Aug 15, 2019 at 05:35:42PM +0100, Will Deacon wrote:

> > > +	if (IS_ENABLED(CONFIG_ARM64_E0PD)) {
> > > +		ftr =3D read_sysreg_s(SYS_ID_AA64MMFR2_EL1);
> > > +		if ((ftr >> ID_AA64MMFR2_E0PD_SHIFT) & 0xf)
> > > +			return false;
> > > +	}

> What I don't particularly like here is that on big.LITTLE this hunk may
> have a different behaviour depending on which CPU you run it on. In
> general, such CPUID access should only be done in a non-preemptible
> context.

> We probably get away with this during early boot (before CPU caps have
> been set up) when arm64_kernel_unmapped_at_el0() is false since we only
> have a single CPU running. Later on at run-time, we either have
> arm64_kernel_unmapped_at_el0() true, meaning that some CPU is missing
> E0PD with kaslr_offset() > 0, or the kernel is mapped at EL0 with all
> CPUs having E0PD. But I find it hard to reason about.

Yes, all this stuff is unfortunately hard to reason about since there's
several environment changes during boot which have a material effect and
also multiple different things that might trigger KPTI.  IIRC my thinking
here was that if we turned on KPTI we're turning it on for all CPUs so=20
by the time we could be prempted we'd be returning true from the earlier
check for arm64_kernel_unmapped_at_el0() but it's possible I missed some
case there.  I was trying to avoid disturbing the existing code too much
unless I had a strong reason to on the basis that I might be missing
something about the way it was done.

> Could we move the above hunk in this block:

> 	} else if (!static_branch_likely(&arm64_const_caps_ready)) {
> 		...
> 	}

> and reshuffle the rest of the function to only rely on
> arm64_kernel_unmapped_at_el0() when the caps are ready (at run-time)?

I've added the check, will look at the reshuffle.

> > Thinking about this further, I think we can simply move all of the
> > 'kaslr_offset() > 0' checks used by the kpti code (i.e. in
> > arm64_kernel_unmapped_at_el0(), kpti_install_ng_mappings() and
> > unmap_kernel_at_el0()) into a helper function which does the check for
> > E0PD as well. Perhaps 'kaslr_requires_kpti()' ?

> I agree, this needs some refactoring as we have this decision in three
> separate places.

> Trying to put my thoughts together. At run-time, with capabilities fully
> enabled, we want:

>   arm64_kernel_use_ng_mappings() =3D=3D arm64_kernel_unmapped_at_el0()

>   KPTI is equivalent to arm64_kernel_unmapped_at_el0()

Yes, this bit is simple - once we're up and running everything is clear.

> I think kaslr_requires_kpti() should access the raw CPUID registers (for
> E0PD, TX1 bug) and be called only by unmap_kernel_at_el0() and
> arm64_kernel_use_ng_mappings(), the latter if !arm64_const_caps_ready.
> The boot CPU should store kaslr_requires_kpti() value somewhere and
> kpti_install_ng_mappings() should check this variable before deciding to
> skip the page table rewrite.

We definitely need some variable I think, and I think you're right that
making the decision on the boot CPU would simplify things a lot.  The
systems with very large memories that are most affected by the cost of
moving from global to non-global mappings are most likely symmetric
anyway so only looking at the boot CPU should be fine for that.

--JP+T4n/bALQSJXh8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1WnR0ACgkQJNaLcl1U
h9DEVwf/dC35oFSAPwv20CXG+xzgCum74vOTiZcZE7EQ2KxkDwUiMaPb9XS5bm/m
crUMi8nARM28kIE89IK4z3WC52xdNO4Kbj6Gk770cOywLyn7Wfto7wbLTeeVngmm
qLwb3yUPVKs59d1+UCWEz1fOKSmTrPzvOOiS+XCPJjwFNN4RUSuxrwtV5pajjCfw
rM/9POfA2timl7HDUzoXTklUSav6X3DhfDEmSzs7Bje0Le3gV1oend3JrCzGKZeD
mxbLPKXsj0Jfk7U/CX4/BuwwhV1cwHaNg+DLL9hr6ZL4SvJf3N1uwDzYi20wxI8a
zHzvwKaJ6BQ00LMLTJQXPWhXqzvpXg==
=4lnR
-----END PGP SIGNATURE-----

--JP+T4n/bALQSJXh8--


--===============4793192273041174465==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4793192273041174465==--

