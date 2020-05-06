Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3181C714D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 15:03:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=btvfg7toIxbe4IITa7wf6T5RT2TodeLe2Y3m5/pgVjk=; b=o/vhQvydr41pZxWDz5CS4SfwH
	U2ZQmTIJqY0rXmaKsXqRi/wEYKATlnFBcmuopsL/KWFR+sPtjm18/BzisvBVklfgIMRCguMtQ1nUe
	2RGM7yLTZGJeuAJWivUOzuOX8BVy5uIZ6sWdzftazuUbqmPVGVlSUETti3kdTfw104v+TFLH0WecD
	WlfDUfx1D5zrlgSI/iBAm7M2+g3F0tV2Fd/85s9IudY48iRWnMAB8He9q2Ro6k7DbQjFe1QE+/UPo
	IcdbZvU84x1pL5RTIw9hLs8AOfqMHB4pJOlSRWrxmSSS17qBva6PcUY9x3BNTaisdEnaVG/49XzCt
	lCOKIrCuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWJiE-0007aN-5i; Wed, 06 May 2020 13:03:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWJi6-0007Zl-0n
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 13:03:39 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B5E0E20663;
 Wed,  6 May 2020 13:03:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588770217;
 bh=F75hOouW7I1tCioLzm0kV/Ca1z1F3FHYQZ1RnilS1q4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LrEBELhXLAEH9XBLmCr2CNpjMFw3Fq51PIRnRmYZ5lUYkb4FA+d7c81WNRFXX5Zi2
 kjOaZI+36NMUgakhwNtwLECHJnwJlYVhKkOBy0D8O+dSoh/wgzrGYymcwKuYu9maVt
 4f9zPCgCKbcn6TBnkEH+DtNwuYn7fU/9WrZKwkNs=
Date: Wed, 6 May 2020 14:03:34 +0100
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2 02/10] arm64: asm: Override SYM_FUNC_START when
 building the kernel with BTI
Message-ID: <20200506130334.GD5299@sirena.org.uk>
References: <20200429211641.9279-3-broonie@kernel.org>
 <20200505145642.GA24239@willie-the-truck>
 <20200505151806.GG5377@sirena.org.uk>
 <20200505160852.GF24239@willie-the-truck>
 <20200505172100.GI5377@sirena.org.uk>
 <20200506071025.GA7021@willie-the-truck>
 <20200506104152.GA5299@sirena.org.uk>
 <20200506105006.GC8043@willie-the-truck>
 <20200506114353.GB5299@sirena.org.uk>
 <20200506122709.GE8043@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20200506122709.GE8043@willie-the-truck>
X-Cookie: Not recommended for children.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_060338_104401_84954821 
X-CRM114-Status: GOOD (  23.11  )
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
Content-Type: multipart/mixed; boundary="===============6091388225520209418=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6091388225520209418==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="PHCdUe6m4AxPMzOu"
Content-Disposition: inline


--PHCdUe6m4AxPMzOu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 06, 2020 at 01:27:10PM +0100, Will Deacon wrote:

> That said, without a way for the linker to force bti *without* generating
> the warning, I'm not sure how we could implement this sensibly. The warni=
ng
> also seems only to be generated if some objects have the BTI property and
> others don't; if all objects are missing it then it's quiet.

Oh, that's annoying - I'd expected the warning to be generated if any of
the inputs miss the BTI annotation.  Part of my goal with turning it on=20
was to provide some defensiveness against future breakage which could
potentially include messing something up with enabling BTI for the
inputs.  I'll tell the toolchain people about that too :/

> Maybe we could detect that the compiler doesn't generate the property
> section, and then avoid generating them in our assembly files? i.e.
> wrap '.macro emit_aarch64_feature_1_and' in a #ifdef CC_HAS_GNU_PROPERTY
> ... #endif block?

If we're going to do this detection it might be better to just disable
kernel BTI support entirely if the toolchain doesn't emit the notes,
treating the missing notes as a most likely overcautious warning flag
that there might be code generation bugs as well.  Either way it does
feel like a lot of work.

> > I do think that this will be a lot easier going forwards - hopefully the
> > problem with the toolchain not generating notes is not going to be an
> > issue by the time people are actively deploying BTI (people using GCC
> > are going to need a shiny new version anyway and I don't know how
> > widespread the clang versions that have issues are), and if people do
> > start running into it then it'll be possible to usefully search for the
> > error message online which should help a lot.

> I think we'll get reports of people running into this (I hit it with a
> defconfig build), so just looking for an idea of what we might do if/when
> that happens.

Bear in mind that to use BTI kernel support you need to be using either
clang or version 10 or later of GCC (which hasn't yet been released,
it's almost there) so it's not going to be triggering in the common case
where people are using released GCC versions.  The change in clang that
you're missing is:

   https://reviews.llvm.org/rGd53e61863d48a07ce285d5b0a36abc67583023bd

which is from December last year so rather recent meaning I do think
it's a valid concern for clang, I'm just not sure how widespread clang
usage is with people who don't also update their toolchains with a
fairly high frequency.

--PHCdUe6m4AxPMzOu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6ytaUACgkQJNaLcl1U
h9AtLgf/cLPUlN4KY/j6W4mKpSdzfDkT2ilQQ+4ynffu/tqQyb7EwkIStEE7Zewi
MT4w9AhYZ2ON/EwFz4nJ17ZqgqY0kwdWNaDkeF0TVDvHSPYart71dX15za3ul7+w
ML6j3NX5uQN7wVrRxc7NqMQw/WePRewIiFWxcI/A7IoT9kPMnS5WsspSomMFsaAM
saHWMKs/Pia2cH3vj5K8pp6UrNJx1Bm+28HY9GgC+9r5vSXzJHwqDN5He7/asDhl
u3gMH0ruK0RrrHDCUAM2eDuM5yYed/ykmo0TC4QV6jao0FHCpKHcGqZcHPdlGrx3
FRYh6ec5eTPC81OViNwB7mSzuzY6QA==
=HNK2
-----END PGP SIGNATURE-----

--PHCdUe6m4AxPMzOu--


--===============6091388225520209418==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6091388225520209418==--

