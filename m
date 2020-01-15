Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 942C513BE2A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 12:07:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0xXAstHCSxaN2Fj/ilgNP66RB5xRUeDhuS7j1zbeYnw=; b=jw4qdzDGHZkmxoypJxzxwDCot
	ZuZZJAiw42HQtxWajXi6faEcSCCp2rtir57r/bdJaFEdvnp7TW1Ua5qyrRWAr/wbF/LbJkZet1Ftg
	pyXMs5JOufmBA4AzRXlcDIowEQOFJsnuu63t9XgzU/cx8xMOUvcANwKGoB1L6qY/cLLy5OQhF666H
	eCdDDPyJRRn0ZKE/8331wvSNDsFuq0v9wFrCptJP86NOwe+fO9TVcwopbVJy7X/gzk2SugevX/vOo
	nOqw2oZO3HBjUdZGyKYmHmzI3hn68wPPBETLb/T1FikZSktu2uBjSw4k2i5vgt/tO8l/kURmGABQ+
	jo70dM+eA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irgWQ-0007az-5e; Wed, 15 Jan 2020 11:07:38 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irgWE-0007aC-44
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 11:07:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9z3LD0pDCQaTTaSWb2fcn83rz3eocg+R4qFhRJI4yoo=; b=mRoBJv4G+N5T7gmwinoS7J0IW
 CvLRwJe9hIzWbLUTOxK32NgYbSgARKm6yqPv9Bm2B8qdT3UNNsMSWVxQ/4aYPtqEW/uyIP1wp5B49
 0sloxalXIO4f6diW377R3aibVtzlllJwKUFSc/natrVVnXdhwPmkSfEd8XeDVckfC09jM=;
Received: from fw-tnat-cam3.arm.com ([217.140.106.51]
 helo=fitzroy.sirena.org.uk) by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1irgW9-0005Md-9k; Wed, 15 Jan 2020 11:07:21 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id CF59DD01965; Wed, 15 Jan 2020 11:07:20 +0000 (GMT)
Date: Wed, 15 Jan 2020 11:07:20 +0000
From: Mark Brown <broonie@kernel.org>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH v10 1/3] arm64: Implement archrandom.h for ARMv8.5-RNG
Message-ID: <20200115110720.GG3897@sirena.org.uk>
References: <20200110122341.8445-1-broonie@kernel.org>
 <20200110122341.8445-2-broonie@kernel.org>
 <20200114174432.GG2579@willie-the-truck>
 <CAKv+Gu9pVZZm_gvsKfrCG_cM=1TmAAH+sj06GzT+Ag9Ej7__fg@mail.gmail.com>
 <20200115091651.GB21692@willie-the-truck>
 <CAKv+Gu-NZBo2q4_Yh068UENun0mkLitN473D-w7KBFXVpfdKqA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAKv+Gu-NZBo2q4_Yh068UENun0mkLitN473D-w7KBFXVpfdKqA@mail.gmail.com>
X-Cookie: Programming is an unnatural act.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_030726_235202_F288D063 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============1595667912506357699=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1595667912506357699==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2nmUZS6EBFTGcnEV"
Content-Disposition: inline


--2nmUZS6EBFTGcnEV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jan 15, 2020 at 10:24:21AM +0100, Ard Biesheuvel wrote:
> On Wed, 15 Jan 2020 at 10:16, Will Deacon <will@kernel.org> wrote:

> > I see your argument, but I was just going on the side of consistency because
> > we're continuing to expose other features as HWCAPs when the capability is
> > just a proxy for the cpuid field. I was in favour of stopping the addition
> > of such HWCAPs years ago, but I couldn't convince Catalin ;)

> > The way I see it, we'll soon run out of HWCAP2 bits and then we'll have
> > our hand forced.

> I don't have a strong opinion either way.

Me either, or at least not enough to object to doing it - Will?
Catalin?

--2nmUZS6EBFTGcnEV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl4e8mQACgkQJNaLcl1U
h9D6yAf+Pw/Wax4GK276QhtRUBwcwALUzYRzgGh2QA420SndX5Qe6mvsu33tjyvr
TqR/36cKFrk6IEK37jRMnmwFS19sMYwIsbXVFuI2NFadH9vKkbrHeJt7hJnxZiE1
23j7dYKgoQby9+sznIJpEJKaywFRh/4g+jOW7K9SuHb84Tk7J+MCRlCtHPshvMSQ
kqRl254FphzvDf+M8iHrw+U/bYLRPCarFszmdW0jWXwLpYNWFmN1Tj2J91YNT2mW
qZHrvpjipi/FssNJm309WrRI2GxQNxfU90ZuDqqFwoxjVtao7hQQ/gWTjdFr+wWU
8cGWfjqhVFRkhP9/YkH4992RBpCu2Q==
=wTAl
-----END PGP SIGNATURE-----

--2nmUZS6EBFTGcnEV--


--===============1595667912506357699==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1595667912506357699==--

