Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FEC5D171A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 19:52:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=x3Jo1DiXEG/Fsi346q4SPXZ50LbbT0Bj8/8EtkGaFec=; b=G0hv19Zt4gt/7VoMqsBnon9Jc
	riw28xZvnEpvNCbnRH46UBJN5vm87v9rEI1Oa/BtkRHzv3L1kZi2ieIRglYZ3B+r9IQO9NJVuSxCI
	mjfD9YhsjgPBMM4zINXNARDJVC/QAangYgejUwKk16R1RN3sRsQjO1QfkbqLLVI+KIyJjECILzYMY
	NXIgrWgz2OEnse2yTsq+OCkJ4bFt+oZryL++tDIZCUQXvOE7Yi9+FHV3AcL1qvqdT42iwsXbQ45NK
	q+KvdS9w1luAKqmb9Bg/4yFdW0seP+G1MBCrFAyQeGNQq56EsM5iioHZoFJ8sGE0Ad0wPVIs/T13R
	f58p+BdgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIG8M-0000ZN-Uf; Wed, 09 Oct 2019 17:52:22 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIG89-0000YD-Ms
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 17:52:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=O6B1D1emCFTGBKvvaDeffda7qVt7QJWxOBMAzjGSfjE=; b=Sf9dTA9O4mIwLwMObG9CKmaUW
 +s+qHVtZYnygsRHT1i7+lnktsP5YoyHIkLsn0hzN4OIO2MhHQVKyds7ub4maAcnM/04bnNvk6u6Po
 DmUO4MnLfimanZIyA2agIIGypKE/rGmIPr4lWTAn6z1h1Ux8Bsi1C7bAnbpDOmyxNWnK0=;
Received: from 188.31.199.195.threembb.co.uk ([188.31.199.195]
 helo=fitzroy.sirena.org.uk) by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1iIG86-0005OV-Nw; Wed, 09 Oct 2019 17:52:06 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 2C615D03ED3; Wed,  9 Oct 2019 18:52:05 +0100 (BST)
Date: Wed, 9 Oct 2019 18:52:05 +0100
From: Mark Brown <broonie@kernel.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v2 2/2] arm64: Don't use KPTI where we have E0PD
Message-ID: <20191009175205.GN2036@sirena.org.uk>
References: <20190814183103.33707-1-broonie@kernel.org>
 <20190814183103.33707-3-broonie@kernel.org>
 <20190815163541.yngqvjmehpuf74ye@willie-the-truck>
 <20190816102424.GA28874@arrakis.emea.arm.com>
 <20190816121005.GB4039@sirena.co.uk>
 <6834da7b-553c-2ad3-9b05-25ca982252e9@arm.com>
MIME-Version: 1.0
In-Reply-To: <6834da7b-553c-2ad3-9b05-25ca982252e9@arm.com>
X-Cookie: Be careful!  UGLY strikes 9 out of 10!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_105209_761057_872EA315 
X-CRM114-Status: GOOD (  14.90  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: multipart/mixed; boundary="===============4143220033653310848=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4143220033653310848==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="s/WT9nMb2Y5oFLLC"
Content-Disposition: inline


--s/WT9nMb2Y5oFLLC
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Sep 24, 2019 at 10:13:18AM +0100, Suzuki K Poulose wrote:
> On 16/08/2019 13:10, Mark Brown wrote:

> > We definitely need some variable I think, and I think you're right that
> > making the decision on the boot CPU would simplify things a lot.  The

> relocating the kernel. So, we may be able to perform "raw cpuid check" on
> the boot CPU with MMU turned on, before we re-write the pagetables for KASLR
> displacement and nG if that is needed (by maybe updating SWWAPPER_MMU_FLAGS) for
> the boot CPU and store this information somewhere. Thus we may be able to
> avoid another re-write of the pagetables after we have booted the secondaries.

The boot CPU is straightforward, there is only an issue on the
secondaries where IIRC the rewrite code needs some updates as we
get left with non-global mappings lying around.

> Discussing this with Catalin, he suggests to use a variable for the status
> of "nG" flag for PTE/PMD_MAYBE_NG, to avoid calling the helper function
> all the time. By using the per-CPU check we can make sure the flag is uptodate.

That was the discussion about the variable above.  We need one
for non-optimization reasons anyway since we can't rely on
checking the state on the current CPU.

> Also, we can continue to fail the hotplugged CPUs if we detect that the
> pagetables are Global and the new CPU requires nG (for heterogeneous
> systems).

There's no continuing to reject those CPUs unfortunately, we
don't reject anything currently.  Any such systems would
experience a regression when moving to a kernel where E0PD is
enabled which doesn't seem ideal.

--s/WT9nMb2Y5oFLLC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2eHkQACgkQJNaLcl1U
h9CTkwf/cHqcorDdNFicvVzxww42HDOXi/zULA7DxwnLWPtA86Ya+2gUXILqtPYD
71dPloWVAllzCakzU6+QIyZwFb0JC0RtvcVzTKoJjMkUFPxGVbYXoexztS1vyJq7
tpPL1uuUAj7adK3g6TJAJ5FmGdV4aWHcspiLrCYOQJIifEEn5+3rWYoCu54HAy6Z
a3HHgYGK1D5+5xz+fRE2FnEzUlns7KNrlLOburH2/1PjZp+9PcMFpqhnItoDOJjs
znsueWCrxZRln5UkAqyjLMED06tIYlBaZNM2TYv6HFWAhXmP35+Q9GM6Izz1CzPt
/NeAjsL3byAdTdm4YGYJNFBEBDoRnw==
=eLIf
-----END PGP SIGNATURE-----

--s/WT9nMb2Y5oFLLC--


--===============4143220033653310848==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4143220033653310848==--

