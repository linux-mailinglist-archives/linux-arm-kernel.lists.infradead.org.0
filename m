Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D612E1BC76C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 20:04:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wrHCzHjE+2GCBOgviMMC+GJlg9+OzTVzfAwKCZq4Mck=; b=ivyl/h0KbP+Oc6amIB+dwJVwo
	DF8oRIJKOhTZSTVd32Rs/GTpAgSJ8KU+1BAmSDVzkrRa85++HwZsp8OhPe/y2XrngUhXrkizgUkox
	FIKpgtA0ISFSXejpYEkMyBFG3vSXd72EvwNsU1JXTMDRMGPwqs4RGDSQZ9NIRgIWH1eTzMztLhmTd
	j6iJUrkCTg52FDCd7uuSvZGPa/I/o6xdJlfJj9vg4a8fh7XkymHZZch4uk80C4gYDUygg4a4Ta5cs
	KbkAHCjVXsaosu/1cBXoWtZBtGPn21cpVZsVg05stHscoy/ob8hYQviVQZ/rO3DPKzzL4Oup2VHJV
	/Pij7tahQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTUaT-0007Wl-ON; Tue, 28 Apr 2020 18:04:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTUaK-0007WK-QD
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 18:03:57 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 67453206A1;
 Tue, 28 Apr 2020 18:03:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588097036;
 bh=Cs+kIiosUe791V7Z5t03iJ9kPgSd432o6JZePUdLsUk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Mj4Kibe0SeTW+5PkgBRQxo2v5NNV/siY7n3m2TUmtZfkLvGF9xGxB91klXOWmXWHg
 9ICOIR3igwxYZ1dhYTO/CWpXjOXCz3r69qyueK5YgF5xDrfEBqPmW3ZCI3G4dpDR4/
 s8/TdlNHydSciWfIPyZT2Iphvn/pKaE0EgB//Mb4=
Date: Tue, 28 Apr 2020 19:03:53 +0100
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH 04/10] arm64: Set GP bit in kernel page tables to enable
 BTI for the kernel
Message-ID: <20200428180353.GN5677@sirena.org.uk>
References: <20200415130750.18645-1-broonie@kernel.org>
 <20200415130750.18645-5-broonie@kernel.org>
 <20200428172432.GB18257@gaia>
MIME-Version: 1.0
In-Reply-To: <20200428172432.GB18257@gaia>
X-Cookie: Eschew obfuscation.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_110356_871120_0C7C4838 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Will Deacon <will@kernel.org>, Kees Cook <keescook@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5627030312383529008=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5627030312383529008==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="p1Od3smaOkJqivj4"
Content-Disposition: inline


--p1Od3smaOkJqivj4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Apr 28, 2020 at 06:24:32PM +0100, Catalin Marinas wrote:
> On Wed, Apr 15, 2020 at 02:07:43PM +0100, Mark Brown wrote:

> > +#define PAGE_KERNEL_EXEC_GP	__pgprot((PROT_NORMAL & ~PTE_PXN) | PTE_GP)
> >  #define PAGE_KERNEL_EXEC_CONT	__pgprot((PROT_NORMAL & ~PTE_PXN) | PTE_CONT)

> Are the PAGE_*_GP defines used anywhere in this series?

Not any more, I'll drop them.

> > +#ifdef CONFIG_ARM64_BTI_KERNEL
> > +		.type = ARM64_CPUCAP_STRICT_BOOT_CPU_FEATURE,
> > +#else
> >  		.type = ARM64_CPUCAP_SYSTEM_FEATURE,
> > +#endif

> As with PtrAuth, I'm tempted to have a single config for both user and
> kernel. Not a strong opinion though, just looking for some consistency.

Yeah, it's not ideal.  My concern with this was that at the time I sent
the patches out GCC had a sufficiently severe code generation issue that
it was unsustainable to use for building the kernel.  That seemed
excessively restrictive so I made it a separate option.  This will be
fixed in GCC 10 all being well (one of the things I need to do before
reposting this is to verify that the current fix addresses everything I
was seeing and update the dependencies) so it's less of a concern
although still a bit annoying.

--p1Od3smaOkJqivj4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6ocAgACgkQJNaLcl1U
h9DEEwf/UaS8sYjOTv43fN70yoBROa93BBnVc3TG376JdSWHIa+2QJwsxwOHmwRa
JTJoZGi1KI8fPAhWeK0aaMJ3wJ6or00EH4oYKgXzxizgIFMwJCKOWgNED8y6iScQ
QdVkv7AkjECVyFE1CZjyY0w9U1aoZ0YIdcdqgp+uC5elOt8tw6DouDd1uJ9E6tER
MAp6/npnACoPyJbt2OJBAgD61pfN9tbgIxd4J+JKhR3fPar/B1ZVkX9nGnkQMxou
V/aU5O+fpEl3o2gdOAbuEIaZDdYv+Q8FBd+iuL9lyMcUBv7xV2I5I8pY7EM9kMfq
Vaei/2vWQd5Uko6UTPrKcCh7ul85CQ==
=SHOs
-----END PGP SIGNATURE-----

--p1Od3smaOkJqivj4--


--===============5627030312383529008==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5627030312383529008==--

