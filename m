Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD921392F9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 15:01:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kuk43yIXtu6MKVIJQjVakvJp9ZYNAegxNxptV+p2w2M=; b=OEfY4N/58bbv7mVvmJKeRu4CO
	+DktC3BnnkYEa+gvJ1a9+E1fC334iIP7fAcnyUACQMwI0AUloI+vsQN4yA+D/OLzFOAonL+b9ccmG
	RgRuSRqQq4j9cRPVFxXD12MjmnjOLE5Zc21/ulk5hGgvP5mKkYRpB1B3B5oN/u+RHTCv7DPhl9Bru
	zQua+lh0P05JC3aaCP9u7rtfQsEG+EYSuRkOzXfXwMs01WkCtxQX3mx3asiopB8Xo5xzeEvV09rFR
	TD/BpCeVnFqzc0E2SusJshvTTR/ENO8AWv19IMWFYoP45kihHOKAkA6S31T/7j8KF+l1u0UdPf0bW
	n/DabSUSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir0HO-0005GR-JM; Mon, 13 Jan 2020 14:01:18 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir0HE-0005FA-Ky
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 14:01:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MBncayY8JFbtWZipBvPDMpyU9p9lUG4BGjNxMb/pcj4=; b=L8AzG+iRGAic/smvC6OcGFDiI
 wf4bKJgdZRGQY0F0T1pYeEmOyUHR0QsUFTyTn4T0MZXTqNHgTXuCpQzeaOl5f3X/oKB55S80PtuWq
 idAwjgI4bRtlFV0S8Usye1ny16RDeXmKz2NFF1Q2sTC9LT74MHp+y+npRu/duB3bba5X4=;
Received: from fw-tnat-cam7.arm.com ([217.140.106.55]
 helo=fitzroy.sirena.org.uk) by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1ir0Gy-0002c0-UE; Mon, 13 Jan 2020 14:00:52 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 16F67D01965; Mon, 13 Jan 2020 14:00:52 +0000 (GMT)
Date: Mon, 13 Jan 2020 14:00:51 +0000
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v4 04/12] arm64: Basic Branch Target Identification support
Message-ID: <20200113140051.GI3897@sirena.org.uk>
References: <20191211154206.46260-1-broonie@kernel.org>
 <20191211154206.46260-5-broonie@kernel.org>
 <20200110182800.GI8786@arrakis.emea.arm.com>
MIME-Version: 1.0
In-Reply-To: <20200110182800.GI8786@arrakis.emea.arm.com>
X-Cookie: Programming is an unnatural act.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_060108_695208_F9059030 
X-CRM114-Status: GOOD (  15.77  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Andrew Jones <drjones@redhat.com>, Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Eugene Syromiatnikov <esyr@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, "H.J. Lu" <hjl.tools@gmail.com>,
 Yu-cheng Yu <yu-cheng.yu@intel.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Florian Weimer <fweimer@redhat.com>, linux-kernel@vger.kernel.org,
 Sudakshina Das <sudi.das@arm.com>
Content-Type: multipart/mixed; boundary="===============8660508429306946478=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8660508429306946478==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="h22Fi9ANawrtbNPX"
Content-Disposition: inline


--h22Fi9ANawrtbNPX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 10, 2020 at 06:28:00PM +0000, Catalin Marinas wrote:
> On Wed, Dec 11, 2019 at 03:41:58PM +0000, Mark Brown wrote:

> >  /* Additional SPSR bits not exposed in the UABI */
> > +#define PSR_BTYPE_SHIFT		10
> > +
> >  #define PSR_IL_BIT		(1 << 20)
> > =20
> > +/* Convenience names for the values of PSTATE.BTYPE */
> > +#define PSR_BTYPE_NONE		(0b00 << PSR_BTYPE_SHIFT)
> > +#define PSR_BTYPE_JC		(0b01 << PSR_BTYPE_SHIFT)
> > +#define PSR_BTYPE_C		(0b10 << PSR_BTYPE_SHIFT)
> > +#define PSR_BTYPE_J		(0b11 << PSR_BTYPE_SHIFT)

> Would these be better placed in the uapi/ptrace.h?

Seems reasonable, they might be useful to virt stuff and they're
part of the architecture so it's not like we might change them.

> > +	/*
> > +	 * BTI note:
> > +	 * The architecture does not guarantee that SPSR.BTYPE is zero
> > +	 * on taking an SVC, so we could return to userspace with a
> > +	 * non-zero BTYPE after the syscall.

> On page 2580 of the ARM ARM there is a statement that "any instruction
> other than BR, ..." sets BTYPE to 0. Wouldn't SVC fall into the same
> category?

I think what Dave was referring to there is that (unless I'm
misreading things) that section of the ARM says that BTYPE is set
at the end of the execution of the instruction but since SVC is
specified as generating an exception that means that when we
enter the kernel the instruction won't have ended yet and we
still have the BTYPE from the previous instruction.

> Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>

Thanks.

--h22Fi9ANawrtbNPX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl4ceBAACgkQJNaLcl1U
h9DLSQf6Apx/rsxXW/+0SHiXPGDJpdzgdlaKg/WkwvZD5tKjvP5SnU3YQ8L96jEk
YLvo3VX4o6G174B4i7eQvKINZJOQXPzcgYtwV8LjZIxfg7qSygSFOlfxqXPxYoh1
M3UeD4sFYwQcvvuisyxxehY7F2Qpy7r2AGPcEz/lIgJBK/afVqze34aedkAc8USs
RiEH1OneNIi0iiKiqrJTEjTNNH4eXokXteOoWKCQONDeMkBQUyGSJB09LKZibH/+
n1bqPuST5v4Qtag8JcHi9/z/xytJf6oO1QLWnXTqpUR3IUem+LucwksP8+xXIlXC
vchzbBePuEZheDLobl52IOjKdmX2Vg==
=X4rD
-----END PGP SIGNATURE-----

--h22Fi9ANawrtbNPX--


--===============8660508429306946478==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8660508429306946478==--

