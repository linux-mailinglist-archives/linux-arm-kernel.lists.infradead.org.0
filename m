Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8747917185A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 14:13:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jJ55aABCnQEOnpUxqdJ5EVS+fC7HSgptx+EdgZtspbg=; b=oNCpUp4Bwrndbw6bmtomAyb0f
	1c4vxy2vK9NX4y6FVF3SaujMcpcbfjCB3ID7BHm+Qr/uQlveh8uyutBCvK1u2ItGXv588VHOmhhxv
	x3pNmhjNz7C5GLqH09zx+CBxFYWbPTSmDeB0QnyKV/LnFCrNuDbW9ND/L9xlW5Rx0kgXnRm4541RV
	eBXSq0siFA6/W1/R1sr6JALlXo3KzPPLd2VDL/6eF1ADOfB2W3v9yZSLFDa0V7DZaXMd0mTr89PQh
	7mpnLknKM8D1b/HRpupsDzBVcdvyXAhcKa5CJjSBs2xNMNUCphgbVb/E8DSd8zAcZHUg+772aQ2fh
	DiOM2gklQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Iyg-0004Wh-8e; Thu, 27 Feb 2020 13:13:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7IyP-0004UJ-9Y
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 13:13:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 10EA030E;
 Thu, 27 Feb 2020 05:13:03 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7B1603F703;
 Thu, 27 Feb 2020 05:13:02 -0800 (PST)
Date: Thu, 27 Feb 2020 13:13:00 +0000
From: Mark Brown <broonie@kernel.org>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH v7 00/11] arm64: Branch Target Identification support
Message-ID: <20200227131300.GB4062@sirena.org.uk>
References: <20200226155714.43937-1-broonie@kernel.org>
 <202002261343.3B2ECE90@keescook>
MIME-Version: 1.0
In-Reply-To: <202002261343.3B2ECE90@keescook>
X-Cookie: Edwin Meese made me wear CORDOVANS!!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_051305_371748_0B5A1B93 
X-CRM114-Status: UNSURE (   8.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Andrew Jones <drjones@redhat.com>,
 Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Eugene Syromiatnikov <esyr@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 "H . J . Lu " <hjl.tools@gmail.com>, Yu-cheng Yu <yu-cheng.yu@intel.com>,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Sudakshina Das <sudi.das@arm.com>
Content-Type: multipart/mixed; boundary="===============2755694224651719277=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2755694224651719277==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rJwd6BRFiFCcLxzm"
Content-Disposition: inline


--rJwd6BRFiFCcLxzm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Feb 26, 2020 at 01:44:59PM -0800, Kees Cook wrote:

> Looks good. I sent a few more Reviewed-bys where I could. Who is
> expected to pick this up? Catalin? Will?

Thanks, I'm expecting it'll go through the arm64 tree.

--rJwd6BRFiFCcLxzm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5XwFwACgkQJNaLcl1U
h9BVcAf+IT0x9Rm5Qvg7iutzvlk4f961QXDY77LCMmKkuIyjzf2qoM3UKYdN5A+s
XCh02Tc8GwVaSWaipJplvGn2y3aPrb1oLBU8yp2zkFHk3UuDdkrIhwTqmg9EH6qO
HMxhgu7d6bKkjgpIMZe78MrbRRJUCej3S9SHehfJjGHStqjcyN65h4a7GJZUkHkB
8UMKB9ln6VV8BZHBWEZZa875jAojja3k2OzUTrtBmbq7WsuQIsIqjVblRGOIZXNQ
6ok8vsW83J6iRtR6J46oSoIJqkXjfYucnbP7ulIOQDtUMvpS0O/C982bW0mtMvLB
Qy9hBI9hA/mdTTxfXA8PF2WvD3HTHQ==
=r3OK
-----END PGP SIGNATURE-----

--rJwd6BRFiFCcLxzm--


--===============2755694224651719277==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2755694224651719277==--

