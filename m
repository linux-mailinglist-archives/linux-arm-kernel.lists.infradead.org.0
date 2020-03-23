Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D0D518F5AA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 14:24:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vsT+WB9EpO5Tq7Y9fUaH57cu9kuEGDygcBNDCiFkvUI=; b=R5Q63MAYPw0Ae3TR49vunqKSo
	BHKayMjPJ8XS1fCmJ/AxM/rTMOtbN8O1hlgERRjK5zPaTBC891/hJoExOK5ojDydJJzFJ5h3DTHQr
	h3/8h8dgjWx9xXJCK5a3cTwbMYsnYc1NXviB317JIHpXC8ijhFMuNFd+T1zYg86jAS5DoMG0huH4G
	PWgdSJC7yylXaDBE1k3EmTEOLnnJ077foWMcBimDoUe76wY4Y83uiSXJjBnDlHi3Df5DBFgzJedPl
	5DR0XNjDuITAfSbmvFcQvKBkZmBY9X0Hw/CVTTaXFsYOfsoZsK5eAIrN1wYH4jQguHq/SMyd0RtEU
	j87TefS3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGN43-0005s6-Nw; Mon, 23 Mar 2020 13:24:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGN3v-0005rf-Ib
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 13:24:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BD6651FB;
 Mon, 23 Mar 2020 06:24:14 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 403A23F52E;
 Mon, 23 Mar 2020 06:24:14 -0700 (PDT)
Date: Mon, 23 Mar 2020 13:24:12 +0000
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v10 00/13] arm64: Branch Target Identification support
Message-ID: <20200323132412.GD4948@sirena.org.uk>
References: <20200316165055.31179-1-broonie@kernel.org>
 <20200320173945.GC27072@arm.com> <20200323122143.GB4892@mbp>
MIME-Version: 1.0
In-Reply-To: <20200323122143.GB4892@mbp>
X-Cookie: Stay on the trail.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_062415_697251_98732B5B 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Paul Elliott <paul.elliott@arm.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrew Jones <drjones@redhat.com>, Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Eugene Syromiatnikov <esyr@redhat.com>, Peter Zijlstra <peterz@infradead.org>,
 "H . J . Lu " <hjl.tools@gmail.com>, Yu-cheng Yu <yu-cheng.yu@intel.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 nd@arm.com, linux-arm-kernel@lists.infradead.org,
 Florian Weimer <fweimer@redhat.com>, linux-kernel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Sudakshina Das <sudi.das@arm.com>
Content-Type: multipart/mixed; boundary="===============3285272953365370192=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3285272953365370192==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="n2Pv11Ogg/Ox8ay5"
Content-Disposition: inline


--n2Pv11Ogg/Ox8ay5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Mar 23, 2020 at 12:21:44PM +0000, Catalin Marinas wrote:
> On Fri, Mar 20, 2020 at 05:39:46PM +0000, Szabolcs Nagy wrote:

> +int arch_elf_adjust_prot(int prot, const struct arch_elf_state *state,
> +                        bool has_interp, bool is_interp)
> +{
> +       if (is_interp != has_interp)
> +               return prot;
> +
> +       if (!(state->flags & ARM64_ELF_BTI))
> +               return prot;
> +
> +       if (prot & PROT_EXEC)
> +               prot |= PROT_BTI;
> +
> +       return prot;
> +}

> At a quick look, for dynamic binaries we have has_interp == true and
> is_interp == false. I don't know why but, either way, the above code
> needs a comment with some justification.

I don't really know for certain either, I inherited this code as is with
the understanding that this was all agreed with the toolchain and libc
people - the actual discussion that lead to the decisions being made
happened before I was involved.  My understanding is that the idea was
that the dynamic linker would be responsible for mapping everything in
dynamic applications other than itself but other than consistency I
don't know why.  I guess it defers more decision making to userspace but
I'm having a hard time thinking of sensible cases where one might wish
to make a decision other than enabling PROT_BTI.

I'd be perfectly happy to drop the check if that makes more sense to
people, otherwise I can send a patch adding a comment explaining the
situation.

--n2Pv11Ogg/Ox8ay5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl54uHwACgkQJNaLcl1U
h9DAYQf+PC+yaMtvYW9mN4nKAz7ncHVrReSbAGM8vzqPWdFAlq9YUOWrM19ZtwX3
Reos273yUIeierbiwvJMNq+eDPFo9bF3mqTxkQr5uA4+RDAqXedTNeS637lX1tG3
/uzSb0uqwvff1A9+IZsavz2GuhK8WNmybN7xbOPD1SLHZd4ouEiMlBoE3Ze+nMqm
gClUEz9TTAmK6m9sL7rchJgnSFoG5OU4F/6sWpCoip4mFa5QnBAkeWh6RssDImFg
hIm9njv6a9aeNHTw1YnM1heqRe86GkmGk3LsgGrHETzDNFOwlBNek95tXIVl7W7I
f99IlRUisKUN9wu9VYAtNzRSGiDGLQ==
=70MP
-----END PGP SIGNATURE-----

--n2Pv11Ogg/Ox8ay5--


--===============3285272953365370192==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3285272953365370192==--

