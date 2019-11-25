Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 438381092E8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 18:35:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sIhQ+nRTmR2X/KZtNzzewlUj2wsKahAyLDFeu/Vds2o=; b=dMigxQOjsq22sREeDG5sqyaA3
	65WW3G+ahjk3MrBPwhI4auIpnbwatZNe86fuRNiHoUhWQah7hnR7gn75CpRdKYtJ9oTsxHsbJbV7b
	CzVL/gYrtPgKd/tGI3DrhuCi5hB3Hp+EoPcCJl8PwuFRWrI/2I6pQoDHqX1q4eWrIKmO48F4ZZBW2
	yWOKJQ+lCzZ4/NNxZXmyjFvsS+ANXCwOAcFf/4CUwtsziwpyinl7Xd+foPDVPiExi6E9jA1uMvQRj
	OkXyGrgaCSVdA5Szn6nB+7xq3WgQPA6R/e8g5cx93T9z7CXqWaNRCNSojOerHjyKAnJ3YedjHd3sI
	pP79PdDDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZIGx-0008HG-5m; Mon, 25 Nov 2019 17:35:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZIGn-0008GV-9I
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 17:35:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D6BD331B;
 Mon, 25 Nov 2019 09:35:26 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5276C3F68E;
 Mon, 25 Nov 2019 09:35:26 -0800 (PST)
Date: Mon, 25 Nov 2019 17:35:24 +0000
From: Mark Brown <broonie@kernel.org>
To: Amit Daniel Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCH v2 13/14] arm64: compile the kernel with ptrauth return
 address signing
Message-ID: <20191125173524.GE4535@sirena.org.uk>
References: <1574166746-27197-1-git-send-email-amit.kachhap@arm.com>
 <1574166746-27197-14-git-send-email-amit.kachhap@arm.com>
MIME-Version: 1.0
In-Reply-To: <1574166746-27197-14-git-send-email-amit.kachhap@arm.com>
X-Cookie: -- Owen Meredith
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_093529_370474_D69BC8F4 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7337298945014180957=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7337298945014180957==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zjcmjzIkjQU2rmur"
Content-Disposition: inline


--zjcmjzIkjQU2rmur
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Nov 19, 2019 at 06:02:25PM +0530, Amit Daniel Kachhap wrote:

> +config CC_HAS_BRANCH_PROT_PAC_RET
> +	# GCC 9 or later
> +	def_bool $(cc-option,-mbranch-protection=pac-ret+leaf)

This breaks the build for me with CC=clang-9:

  CC      arch/arm64/kernel/vdso/vgettimeofday.o
/tmp/vgettimeofday-1a520b.s: Assembler messages:
/tmp/vgettimeofday-1a520b.s:25: Error: selected processor does not support `paciasp'
/tmp/vgettimeofday-1a520b.s:26: Error: unknown pseudo-op: `.cfi_negate_ra_state'
/tmp/vgettimeofday-1a520b.s:120: Error: selected processor does not support `autiasp'

(and various other errors with the assembler not understanding stuff).
This happens because clang is using the system assembler (that from
Debian stable in my case, 2.31.1) and it requires additional options to
enable newer instructions.  We need to pass -mcpu=all or similar to the
assembler (eg, with -Wa,-mcpu=all in CC).  This'd be fine if the
cc-option check detected the assembler issues but sadly it doesn't get
that far.

--zjcmjzIkjQU2rmur
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl3cENwACgkQJNaLcl1U
h9CNUgf/byjjBpq/JiphtnW2CoI54lvCKdWxJtsKWcLTM9OhoVVbwJakobeX0jWn
HmeZYFqKoR8YdJo842YpBaiYIyUHFl6SlCYZa25tJa6kDTbesqhda0obT60Ya7ni
24kL+x0N7BHYoiphglTURqMP8ya86r5YQ7oy3mr9iWX9Ae8cWGD2LwbWn6jbh6Pn
5K/lf66gQmfUukbtJKOQni8vUAI/EpDkFe30xbyQCIz9gpEL6uisSv5yeZ9uwdaP
29pt7UhwgsdZnfRqIt+hCAPoLsWyaERbGaNNKc7xa+LDTzeJ3JNvYcGs5qfgdMDI
dTaQMWlEQuAK151IwblENgxyg5no1A==
=Q0EV
-----END PGP SIGNATURE-----

--zjcmjzIkjQU2rmur--


--===============7337298945014180957==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7337298945014180957==--

