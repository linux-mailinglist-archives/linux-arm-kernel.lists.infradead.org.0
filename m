Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B265118464E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 12:56:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=h/gX4tW8BFYcOH41CPLOpDizZZGYJfZVFGMvaM6S1JM=; b=bxp0kOsjmvdZS5YRnEaPCaNy3
	MW3O2s2EezrVN8MZnIXvwgxf3BCfY/dGgKSnuWksz+ES78Ia0M3tr0lx1ocpfDEf55k40GziSDj0k
	2v780yWKTWIs+MWrOv+0SpHe4X/ccNVLvSRm9M48tNT06b3soNd33mFDExL8nEsKsXpkIXKaciqsW
	4rT9qDOQVunrt5OuAA4Z6wa5NVrR9yfScnVI3/TrARSj+rPATgz+sbT+jD8Sb67cN3QZoIj0vejch
	o1aUvzxDnN8s5WuMVkT0u9MBY5LeqeS1RNO0yFTwXRKDvqbMdKzrP9kdOWdYDVVVGKdelPErhyX2U
	+FZgZy/pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCivB-0007FW-6v; Fri, 13 Mar 2020 11:56:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCiv4-0007Er-48
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 11:56:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0D30EFEC;
 Fri, 13 Mar 2020 04:56:01 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 607D83F534;
 Fri, 13 Mar 2020 04:56:00 -0700 (PDT)
Date: Fri, 13 Mar 2020 11:55:58 +0000
From: Mark Brown <broonie@kernel.org>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH v9 02/13] ELF: Add ELF program property parsing support
Message-ID: <20200313115558.GC5528@sirena.org.uk>
References: <20200311192608.40095-1-broonie@kernel.org>
 <20200311192608.40095-3-broonie@kernel.org>
 <202003121658.39A47CE098@keescook>
MIME-Version: 1.0
In-Reply-To: <202003121658.39A47CE098@keescook>
X-Cookie: This page intentionally left blank.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_045602_211220_608BDB1E 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Andrew Jones <drjones@redhat.com>,
 Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Eugene Syromiatnikov <esyr@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, "H . J . Lu " <hjl.tools@gmail.com>,
 Yu-cheng Yu <yu-cheng.yu@intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Sudakshina Das <sudi.das@arm.com>
Content-Type: multipart/mixed; boundary="===============7233259076466283099=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7233259076466283099==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gr/z0/N6AeWAPJVB"
Content-Disposition: inline


--gr/z0/N6AeWAPJVB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Mar 12, 2020 at 04:59:21PM -0700, Kees Cook wrote:

> I think my review got lost along the way. Please consider this:

> Reviewed-by: Kees Cook <keescook@chromium.org>

Yes, sorry - I've added it locally (and the other two you sent just now).

--gr/z0/N6AeWAPJVB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5rdM0ACgkQJNaLcl1U
h9Ct3wf+MPz1HrOXhlGATJUUi/83pv08oTCCzRaHqlsusA4dPg41W77Sgpj37/Yr
9LGONneWZqrufnFxx7ZEMJpqwJU1ROce8kl59OqNPAvVm25jQSBFMoboDrWHPCXB
GbTThVC6FmnF/QboOwdYKGH5/PVXLyxlH5widr4tjataNyWfaxVfk9RUmm8zCZHI
EqNJbvFejd2e6+g32ZxnnqAl8/nWswnuorlm884nKrqdAN69dyJIcDb19NaP9ZDc
8WJd4HoiMr+vT1a/JnkZCB/LwJU3nBlbOFWm7CNuHntRErsTZ5vZJ9m6ORz9v0oY
wU2OLaDYGXBG21NDPFxxWbEEBW2zFg==
=f6yG
-----END PGP SIGNATURE-----

--gr/z0/N6AeWAPJVB--


--===============7233259076466283099==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7233259076466283099==--

