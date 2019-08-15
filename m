Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B4BD8F2AD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 20:00:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=N7Cym6oT4WcfMjS/Ddl+y6tAXbXIDynBxprKkEiw46I=; b=MdPe/P/HcrKAfgJSsj28nOjSr
	EdUtPaqluwClRYq/IJ2IpunJr5z3twGM2PlRAoi3O0NdsJ3nujsk+N93PNWSgTl0t4quHvUv2punJ
	uh3RYzsNX2OoWvj7VLrrF04P+gzfsfkPrEDlcTlRYGmSWw3QhcNqtemD9IZkt18AcoJ3nlwhqQsft
	UlKyQ1/zvtyqD8HtXR4FpCz7kNTUtMaGmzw/hPHnXhL0jUGfgW32ZmQ7RD7iSmpeeWjUYheU7pu2V
	dr3pyyWPMXVBHpsnHBw6Vv9Nxu0yKwV1NFgKH2wJcsAHtMRJm7QRC9RzU6J06ja9ASTAxlzEl3ela
	tJ1pC8xyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyK3M-0006uj-22; Thu, 15 Aug 2019 18:00:48 +0000
Received: from mail-wr1-f97.google.com ([209.85.221.97])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyK38-0006uO-N2
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 18:00:37 +0000
Received: by mail-wr1-f97.google.com with SMTP id u16so3005256wrr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 11:00:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=dOW03hDizCMnThbn/XXWBsZ9Iq8qSOyWlxg6yVCsDOk=;
 b=G31smk03nidIBlQaUu/ma+SLy6lOSHG8gc++77JcrlkDUpUAJK9RJ66QbgoIQ53psI
 cIti+8l369Tei5jlcQvY/slUi/Oek99aRn40LBXKDYtKE4EigBnFZHYsmNajY58GmfaQ
 UPDhsDhgFjIVeugzriq8RaEIf2kIyON8tFCa22r4tikEK/S074XIJfqMjfM+BqcfN3rx
 g0SQWpJCh5BPJui1iDVbfoY/hD5RIMLls+N1KYrwrJzXDLauc+wSUfsXeComM+IPpr3L
 LVqAy5BsfY4W32ovMDCECL/N4cReS5K1V0WbJh28M4o0I20En9p0+4l3dsvW7EhCwg+K
 G0CA==
X-Gm-Message-State: APjAAAX+lVsc+Za36r+/PyrkRe4NkOw0GcfjqKsPvazZfDcXfkuM5c0K
 OY4dPsWziuX9Kr0H9AKUaxDxO8ZSdz7zSlJqaXCFjpdhwPgPag7otxJZjSNr3NPhHw==
X-Google-Smtp-Source: APXvYqzn1Xnfhww7rDRlfyc9XIUuQdsd4EXxUsdcTghwUPiqrJqsjbByPKWg3olJYZs5fbbpmTtMdVHVlcaX
X-Received: by 2002:adf:ed8d:: with SMTP id c13mr6675071wro.106.1565892032701; 
 Thu, 15 Aug 2019 11:00:32 -0700 (PDT)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk.
 [2a01:7e01::f03c:91ff:fed4:a3b6])
 by smtp-relay.gmail.com with ESMTPS id z7sm53987wrl.24.2019.08.15.11.00.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Aug 2019 11:00:32 -0700 (PDT)
X-Relaying-Domain: sirena.org.uk
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1hyK36-0005Dv-7N; Thu, 15 Aug 2019 18:00:32 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 18FE52742BC5; Thu, 15 Aug 2019 19:00:31 +0100 (BST)
Date: Thu, 15 Aug 2019 19:00:30 +0100
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2 2/2] arm64: Don't use KPTI where we have E0PD
Message-ID: <20190815180030.GF4841@sirena.co.uk>
References: <20190814183103.33707-1-broonie@kernel.org>
 <20190814183103.33707-3-broonie@kernel.org>
 <20190815163541.yngqvjmehpuf74ye@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20190815163541.yngqvjmehpuf74ye@willie-the-truck>
X-Cookie: MIT:
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_110034_754278_72150C42 
X-CRM114-Status: GOOD (  16.74  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.97 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: multipart/mixed; boundary="===============3673819326331743805=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3673819326331743805==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="OzxllxdKGCiKxUZM"
Content-Disposition: inline


--OzxllxdKGCiKxUZM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Aug 15, 2019 at 05:35:42PM +0100, Will Deacon wrote:

> I'm still unsure as to how this works with the kaslr check in
> kpti_install_ng_mappings(). Imagine you have a big.LITTLE system using
> kaslr where the boot CPU has E0PD but the secondary CPU doesn't, and
> requires kpti.

Yes, in fact that is my default big.LITTLE test case.

> In this case, I think we'll:

> 	1. Start off with global mappings installed by the boot CPU
> 	2. Detect KPTI as being required on the secondary CPU
> 	3. Avoid rewriting the page tables because kaslr_offset > 0

> At this point, we've got exposed global mappings on the secondary CPU.

Right, yes.  It'd be enormously helpful if KASLR were a bit more visible
in the boot logs or something since I yet again managed to do that bit
of my testing without KASLR actually taking effect :/

> Thinking about this further, I think we can simply move all of the
> 'kaslr_offset() > 0' checks used by the kpti code (i.e. in
> arm64_kernel_unmapped_at_el0(), kpti_install_ng_mappings() and
> unmap_kernel_at_el0()) into a helper function which does the check for
> E0PD as well. Perhaps 'kaslr_requires_kpti()' ?

> I think that should simplify your patch as well. What do you think?

Dunno about simplifying the patch particularly, looks very similar but
in any case it does appear to solve the problem - thanks.

--OzxllxdKGCiKxUZM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1Vnb4ACgkQJNaLcl1U
h9CucQf/WZI/mkZbYOD58xncr+tmXZThm74YzYLJEIb/G3WSC0s79Mmwo1QEm1xz
3rF+xJtFoBo4uh97ONtciyI6iOSI/CwiUoNsVumBoBh6SL7WMtit92ofmDilrNCW
G63Rjro7eEgAva17yea26bkpaGI5ZwsFlye79bvkNrajNeMdjCovg9Z4rN69NvEF
67o8nRox1PwLFrrP0EacMv38+nNuv7cH5sxQSg/P5H2byR//D/G++ZzoUoDlaJot
b+8UDwYicUIjPPoAe+W4+YmXeXFPwbhBJiuoAVcNJKeVNog/d4S0UYGGjydrVifs
J+cxDeSp1Mwgu0hh5dBVv51pge1WUw==
=kCXR
-----END PGP SIGNATURE-----

--OzxllxdKGCiKxUZM--


--===============3673819326331743805==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3673819326331743805==--

