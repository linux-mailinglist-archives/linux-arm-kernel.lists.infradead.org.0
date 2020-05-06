Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C38FF1C6F8E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 13:44:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sDwtuUVJuGFv88wpRT0tkAaePYBLeIGZIYaMG3+AGjE=; b=OB9nQFKwtEYqqZWJSQNp6rupY
	lTrbFDFL2+Iq6fe5OFtoADI6R801IUVkONVrzlIRCxwrqewQHZILq8xO6fA6YyZuSoa9DDEfsTCj0
	siochrQe/vNsdbBbkwrAU2mJSZfndFvAj0t5z98tLYOG2BAU1TDEmhW3daD8NUwovvDkLO5y3YdTb
	hrXAvOmK8nGATpF8pVFVHEoKmT6Lv+88ykuaKs7OyaFudMMARkcTQF4ssLPMWAfqfvoGwGrNIaYmk
	/Vg565qlZ2Qzslh60E3TPmdj9A91oaWAr5cwWwYlXXq0dDK1yhLjgD4xpvEQNuOesEMl6yhoAyoeV
	qZ6clgJuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWIT7-0006Ay-8X; Wed, 06 May 2020 11:44:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWISy-0006Af-Ou
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 11:43:58 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 98B48206DB;
 Wed,  6 May 2020 11:43:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588765436;
 bh=1skQ4XYuqS1/aYDY6iLvnZiFpb782FBoiJ/T3E175co=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xgKKSKyJorfIUoDxtGs2gPf6FBKT87sHHuiTv6r6jnTnLMr+hireWrhafaib6kxfC
 iDsp/7JRVAH5ECoeZSNef/ezCSIaj/XIwTufw24TYrr3CF9rv5fLKB+s51NPE/tL7a
 A900cHGzJyziifnvvyJVvurSmZxHMaM1vmtXLGfA=
Date: Wed, 6 May 2020 12:43:53 +0100
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2 02/10] arm64: asm: Override SYM_FUNC_START when
 building the kernel with BTI
Message-ID: <20200506114353.GB5299@sirena.org.uk>
References: <20200429211641.9279-1-broonie@kernel.org>
 <20200429211641.9279-3-broonie@kernel.org>
 <20200505145642.GA24239@willie-the-truck>
 <20200505151806.GG5377@sirena.org.uk>
 <20200505160852.GF24239@willie-the-truck>
 <20200505172100.GI5377@sirena.org.uk>
 <20200506071025.GA7021@willie-the-truck>
 <20200506104152.GA5299@sirena.org.uk>
 <20200506105006.GC8043@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20200506105006.GC8043@willie-the-truck>
X-Cookie: Not recommended for children.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_044356_844671_FD16BD5F 
X-CRM114-Status: GOOD (  21.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Kees Cook <keescook@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5735495895604350019=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5735495895604350019==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3lcZGd9BuhuYXNfi"
Content-Disposition: inline


--3lcZGd9BuhuYXNfi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, May 06, 2020 at 11:50:06AM +0100, Will Deacon wrote:
> On Wed, May 06, 2020 at 11:41:52AM +0100, Mark Brown wrote:

> > Well, the theory behind the warning is that if the compiler is emitting
> > code suitable for the features described in the note then it should
> > always emit the appropriate annotations so the warning is more intended
> > to be telling the user that the code is trying to link in code that's
> > not built properly and will most likely fail at runtime.  In the current

> Hmm, I suppose, although it's a bit belt-and-braces given that we've got
> the right options in KBUILD_CFLAGS. What about:

We know we're doing fine but the warning is being emitted by the linker
rather than something in the kernel tree and it doesn't know what the
users are or that they invoked their compilers correctly.

> 	"Your compiler is not emitting '.note.gnu.property' sections: forcing
> 	 support for BTI in the linker, but check your CFLAGS and consider
> 	 upgrading your toolchain."

> I'd usually not be too bothered, but having run into this yesterday and
> not understood the problem, I'd like to save somebody else from puzzling
> over this if we can!

That's a bit C specific - CFLAGS isn't going to apply to other
languages and binutils could be linking pretty much anything.  TBH I'd
expect one of the common cases would be assembler given the pain
involved in generating notes.  Possibly "build configuration and
toolchain" instead but that's also pretty vague so might not help much
with people being confused?  Either way any diagnostic change would be a
binutils change, I've flagged this up to the toolchain people
internally.

I do think that this will be a lot easier going forwards - hopefully the
problem with the toolchain not generating notes is not going to be an
issue by the time people are actively deploying BTI (people using GCC
are going to need a shiny new version anyway and I don't know how
widespread the clang versions that have issues are), and if people do
start running into it then it'll be possible to usefully search for the
error message online which should help a lot.

--3lcZGd9BuhuYXNfi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6yovgACgkQJNaLcl1U
h9DJoggAg33QgiT0etUauSqj8+9XSQnXdOnMydLjiWNbO5gxsAEbLjTkyAy5OpNy
R9S+gq6WDhWJQaDJQnmy5xCQLg6UcCoFHL7/Z7VgB7Oyp2ypWDHvqhhLFQbHi1r8
7PMNBNs0xoz4xg1CVGIpWcN6fS8Tfp7/CHjLWJtYKeXLnWWxmT/FhZ6QNiatEgf+
+OLXhUI2ojtNF66/Z2CtKMmcUzOSy9wA8WwyyetGigkZ0an5HdeSNaZc/fu41Jcn
dAVWFHvWp8weH2H5D5Iu/SCi/iVZll2t6Z5u1ru1BIYkwtpXJ6ul8VBxFGqeodys
WCYwdp92CFdGKfT4/MufZBKmUu9WHQ==
=Zks6
-----END PGP SIGNATURE-----

--3lcZGd9BuhuYXNfi--


--===============5735495895604350019==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5735495895604350019==--

