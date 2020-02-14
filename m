Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1155C15DA3F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 16:04:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=25bQ/JlSopfaOlpZeMuFobnajLZFnimd8FvywyIJuTI=; b=RnTPMcr9FQv3ntmhQTbdKyHVN
	EzwgMwGhDKoFKY8x9Hx2YnJPaf4ZZcu+eEimEnntAybHzTd7bR67tYlCvyr75UisErYOIrdLn1uOM
	e4Hn3SX29Lfiefzh9bUhNZjcNABUZ4diwYPvVT3iWsqwspxM+ytKRzBC69Spu8RSGSemBSOBAvpEM
	p7Pt6+LQa1B55/oSiuLy7CQPp6VZTAjKFqt185zS0WS31MI1rNPMworQ2fz+RmcX0KK5o2rCKgyuf
	PMk++8Q+YMN03Cy48+d4vWXYyIPWScf8KrJBN+k4tdiUNqWPsoekTkK4tD6ixtCyqjtQPJCCxhybM
	0DrHhlW7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2cWM-0008Jc-JA; Fri, 14 Feb 2020 15:04:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2cWD-0008J6-RG
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 15:04:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B4156328;
 Fri, 14 Feb 2020 07:04:36 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 363BC3F6CF;
 Fri, 14 Feb 2020 07:04:36 -0800 (PST)
Date: Fri, 14 Feb 2020 15:04:34 +0000
From: Mark Brown <broonie@kernel.org>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH] arm64: kvm: Annotate assembly using modern annoations
Message-ID: <20200214150434.GO4827@sirena.org.uk>
References: <20200213153820.32049-1-broonie@kernel.org>
 <b25323d02c76441ee12c206f07907383@kernel.org>
 <20200214114027.GA4827@sirena.org.uk>
 <e8e8da7f1e02e9c2f8e67968697bdf85@kernel.org>
MIME-Version: 1.0
In-Reply-To: <e8e8da7f1e02e9c2f8e67968697bdf85@kernel.org>
X-Cookie: Shipping not included.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_070437_922668_28744427 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7411450995719932313=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7411450995719932313==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="LwbuP8dfxhLLLUfV"
Content-Disposition: inline


--LwbuP8dfxhLLLUfV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Feb 14, 2020 at 02:19:18PM +0000, Marc Zyngier wrote:

> > > >  	.align	11
> > > > -ENTRY(__bp_harden_hyp_vecs_start)
> > > > +SYM_CODE_START_NOALIGN(__bp_harden_hyp_vecs)
> > > > +SYM_INNER_LABEL(__bp_harden_hyp_vecs_start, SYM_L_GLOBAL)

> > > Why isn't SYM_CODE_START_NOALIGN enough? And what is the rational for

> > The _start and _end labels that were there before are explicitly
> > referenced by code, removing them would break the build.

> But if we're going to clean things up, I'd rather we actually do that.
> The only time __bp_harden_hyp_vecs_end is used is when computing the
> size of the vectors, and that'd better be BP_HARDEN_EL2_SLOTS * 2kB
> (which can be statically asserted at compile time).

I just realized that the same structure is also being used for
__smccc_workaround_1_smc which doesn't have such an obviously fixed
size - am I missing something with that one?  I'll take a look at it
anyway.

--LwbuP8dfxhLLLUfV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5GtwEACgkQJNaLcl1U
h9C6/gf/dZ6CtQcwHYEN6oFASyB51OXGzJdcZkv/VIX98G/ByskCFG7dgYE4gsG6
hyT6EQu0CcXoTfCAz4FqNsryk1KYMDx71IAc5qrJlXu9iRyYDYB9awTGRsuU2On5
v8Xvha0NBJlHNC17Dk/NfbM1j/urZON4L5qUExVNdxSENwn+oPulMswqC5embVAh
nDaRYqmNJlqAL6RAJ14TLc6+jMOUU3QHcl77ZVsh24zxBNLrSw9wunUmSGG3utGo
3yfMzcOFRWZTOrL31/kWHd1CsKgglwwMf+kt/sKHfdAFvMcNfHToSZVh2k+sobE8
mjF9n7OPM3TwxJAnhonkX1OX6lYC6g==
=e5Z9
-----END PGP SIGNATURE-----

--LwbuP8dfxhLLLUfV--


--===============7411450995719932313==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7411450995719932313==--

