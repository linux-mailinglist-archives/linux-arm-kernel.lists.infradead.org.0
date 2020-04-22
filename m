Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99C471B490B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 17:44:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2QgswC8lqzyfy7DPBZTy+9FTa7e/KemkBZFtlggbm28=; b=E/jIQ1vq2EYer6aWYQj1pRKcU
	lFMrgJwiXpI3pxnpmQZPDLpKlOBbMa7gSI6AeLg+gt1hN9AjcNhWGtNYwNg9cgPiwyNMasAggtFht
	qkoaa/cOac9iKqaLYmFvicJrzK97txZ2exhTWZkGQ07+NPHmZSwn/L3uR+FTqHR9H5vEAbeZ6QGly
	lYmMmk66UizaAmD/PVzrBBRzoJeXTACk2d8DJr7LMwBFYcWPOcf9aypvwhGrX1iBFUXRweJO4OBXG
	z8S6O1o2Bfp7cRZaIOhnI4a6hshwONGQ7GzulsKSP2c/Q1N4XuwgV+ZBv3qm68jdWNoRdceIK+DYK
	obQpA0oiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRHYS-00024Z-CV; Wed, 22 Apr 2020 15:44:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRHYG-00023p-1T
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 15:44:41 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BE9092076E;
 Wed, 22 Apr 2020 15:44:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587570279;
 bh=j6NY4BFiEsKARRJ64QkWadZPG9mu5NACrc/yxCpqHFA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fZz9j/PMKPB+EDM7VJ1dl6F54xCJj27F8j+vV30/KLVPdzLEl4TljSqnjzfPVJYgg
 xBKTUGK/X0OJ6DaWuvmD3NQF0FrzJLO8CebiN0XcA7Z7OR6MA17nTV3JlWSceLSLQ8
 nfnUFNMpzKnf7pAw6/PIX6sx2ipj8OzUmZtOEM+w=
Date: Wed, 22 Apr 2020 16:44:36 +0100
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: Re: [PATCH v10 00/13] arm64: Branch Target Identification support
Message-ID: <20200422154436.GJ4898@sirena.org.uk>
References: <20200316165055.31179-1-broonie@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20200316165055.31179-1-broonie@kernel.org>
X-Cookie: A stitch in time saves nine.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_084440_112385_1E617737 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Andrew Jones <drjones@redhat.com>, Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-arch@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, Eugene Syromiatnikov <esyr@redhat.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, "H . J . Lu " <hjl.tools@gmail.com>,
 Yu-cheng Yu <yu-cheng.yu@intel.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Sudakshina Das <sudi.das@arm.com>
Content-Type: multipart/mixed; boundary="===============1110904434828864416=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1110904434828864416==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="I/5syFLg1Ed7r+1G"
Content-Disposition: inline


--I/5syFLg1Ed7r+1G
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Mar 16, 2020 at 04:50:42PM +0000, Mark Brown wrote:
> This patch series implements support for ARMv8.5-A Branch Target
> Identification (BTI), which is a control flow integrity protection
> feature introduced as part of the ARMv8.5-A extensions.

I've not resent this since the branch is still sitting in the arm64 tree
but it's also not in -next at the minute - is there anything you're
waiting for from my end here?

--I/5syFLg1Ed7r+1G
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6gZmMACgkQJNaLcl1U
h9AYVQf/ajN/x5F2wiYIKFjzo2+jXBlUnF9FczZVVrXFDW2YeidwJw/eKCefOPQY
5HHDihIrHZBRdOrdnQ7UE8UIfQZMI8oOguL84O4O6IwCnwTZpEOuNhYHjCS1qMUI
nAHZjSGlSnKBp4MwttY/LRRomyGW74ukfnOU91v91LR6Aakw31PUIQZ8EDOT84jC
0hMnIjzmaA9LzLQRrMMQqSLi5FdLg4ps9NEb4zVklz94U/mzf4l+GzZczg6eJI1S
JUz9EwBdrJIwPCRdBoHCQbrVCuiCbvDjhobVK0tKRycjOFvWXh0nDWRWFwfZiD68
dpJmkHE2POaVhBEWnwhUJ57489SMCA==
=z9OW
-----END PGP SIGNATURE-----

--I/5syFLg1Ed7r+1G--


--===============1110904434828864416==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1110904434828864416==--

