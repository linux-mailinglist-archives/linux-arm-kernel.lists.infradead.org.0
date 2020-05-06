Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DC991C6E9F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 12:42:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MAaKfwFu1lGS1YO5EmMRNMwvf6kxzuqM+BJX2ZfWqdM=; b=rpRaJT7HKdDYhwGKvZgCHN1wQ
	o7WA4A0cLhSUOOYa6vrvFUw1ErNPL79LOCUe7uFUIdf6tXiShoydZfiPkKHm94egmy1Vj9Fr9pdgL
	EFhb3zDjFj1ZX12DSAGKBuFQDUZK0IoPh9uS5XXzrOaord07QgBrmcGnJS+f9aPksEbuuVBvQFScF
	EPrvcPrw+vzTKPYzVu6ntHcw5848+uGR85YqGTJ20fUQUhYO6qqXXv0gZ2QT7KRqZ6MVxQXSkmGqI
	n4FXTi8qIfnVXUtZn0bfEQr3U0ktqtzO1ivbiBVo0Cm3+k8pU4GpObcYGfD49rJiV3uUU+SFQWXI6
	LTnE3uctA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWHV5-0002Zq-I6; Wed, 06 May 2020 10:42:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWHUy-0002ZS-5B
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 10:41:57 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 09ECA20663;
 Wed,  6 May 2020 10:41:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588761715;
 bh=GQ7A3oFz3G9dpWz2S6fIpJ9wfOFfT2w/DbbpB9ZmmGc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WKtsK31m9Z7fOx9og+iui9hBJTcbHgUzT6GVh1meDGtsbA5iMMwNqfxUWQlehXOpj
 F5hoHli1xpHxyO31NWw9WvSOPaCPyIMzKjoqbJllSKkSyMK9mg/2UWIQ2hEQ9SzPhD
 fw5w42JSdMI+VCR09NYAZJ2i9k0MhfidVNk2N2HE=
Date: Wed, 6 May 2020 11:41:52 +0100
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2 02/10] arm64: asm: Override SYM_FUNC_START when
 building the kernel with BTI
Message-ID: <20200506104152.GA5299@sirena.org.uk>
References: <20200429211641.9279-1-broonie@kernel.org>
 <20200429211641.9279-3-broonie@kernel.org>
 <20200505145642.GA24239@willie-the-truck>
 <20200505151806.GG5377@sirena.org.uk>
 <20200505160852.GF24239@willie-the-truck>
 <20200505172100.GI5377@sirena.org.uk>
 <20200506071025.GA7021@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20200506071025.GA7021@willie-the-truck>
X-Cookie: Not recommended for children.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_034156_221142_DAFBC5C7 
X-CRM114-Status: GOOD (  20.00  )
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
Content-Type: multipart/mixed; boundary="===============7468154434344857815=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7468154434344857815==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ikeVEW9yuYc//A+q"
Content-Disposition: inline


--ikeVEW9yuYc//A+q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, May 06, 2020 at 08:10:26AM +0100, Will Deacon wrote:
> On Tue, May 05, 2020 at 06:21:00PM +0100, Mark Brown wrote:

> > > > > aarch64-none-linux-gnu-ld: arch/arm64/kernel/vdso/vgettimeofday.o: warning: BTI turned on by -z force-bti when all inputs do not have BTI in NOTE section.

> > so if this is a clang issue it looks like they fixed it in the clang-10
> > branch.  I'm not sure it's worth trying to detect and handle this or
> > not, I don't know how widely deployed toolchains that don't emit the
> > property are and there's a fairly clear solution.  What do you think?

> The linker fixes this up when it warns, right? If so, I think the current

The linker is fixing this up, yes.

> behaviour is fine *but* we might want to improve the diagnostic a bit not
> to worry/confuse people. e.g. something like:

>   "Your compiler is not emitting '.note.gnu.property' sections: forcing
>    support for BTI in the linker, but consider upgrading your toolchain."

Well, the theory behind the warning is that if the compiler is emitting
code suitable for the features described in the note then it should
always emit the appropriate annotations so the warning is more intended
to be telling the user that the code is trying to link in code that's
not built properly and will most likely fail at runtime.  In the current
situation that's an issue with the toolchain not emitting the
annotations but the common case expectation is that the issue will be
that there are object files that weren't built appropriately.

--ikeVEW9yuYc//A+q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6ylG0ACgkQJNaLcl1U
h9BuVQf/ZAa8KkyCwdCPNTQ2nWXSjjOojgETfyyK13hZoEcvQ4Hb+c3ncygpBppp
oAcOpExSuZFxs/uiMD3GdQ/1YLNg983MB8Ic3+Kn86km9AfE3odNy6UQu80EaKUU
NnYkxLqmYMB9cIp6jVcsQ3UERNGcngSorrEM11tyNwb9ZMYHJoHcKSSqYuez+9ll
wssYfNbFwrz06+yZtS7oOAuU3rDpTsXqpDJCujypVWpnB+24LVrS/RNOH3kKc75o
IvJcXntaAF5N4G/toV4gUBdFaHMaJhRj25TZGUVd6iV3iyGkQv7zqvrU1E/9MA5k
LwK1HxTHCBhbU0QzFBcAR/ojj5R/2A==
=ofcA
-----END PGP SIGNATURE-----

--ikeVEW9yuYc//A+q--


--===============7468154434344857815==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7468154434344857815==--

