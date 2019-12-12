Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FE6511D20C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 17:16:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=40bF8pxvx7a6MKoHf9vR3R9xAFROlCijqrc9ZtGYkU0=; b=EjFEdE5dUeu61QBJ2Jz8gJZhp
	q5N5Q5XADYg8QlIHAkd1GwBqAA9qkz1ue9FHJuaJe+yWHCDe2pUyJIpylqI+WnJq4s2DFtxs8cHpp
	SBGkPWIfeicAOrMQkShRJcq0kqNxvLLLgNmWp3jlfKb+wq9T2nQIjh7khyZ4NrHweKZjroF35mhC+
	Ygi/RFTCw0+spwiCD2o+lqqxAQsVsFOCCLlMjp4fR99BbqiVSPOeV2EAzwKf1QSjC5HczNoK+e51h
	KRv3qf+VxGZpNOcer1l+N7rQnPvEou0tYZ7wNh4m4bbidqwBfQ5AKNmVjeox7bCSda7++7oiDJSe5
	QoQvB2OYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifR90-0000C1-7K; Thu, 12 Dec 2019 16:16:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifR8q-0000BN-Sr
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 16:16:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2269C30E;
 Thu, 12 Dec 2019 08:16:40 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9560D3F6CF;
 Thu, 12 Dec 2019 08:16:39 -0800 (PST)
Date: Thu, 12 Dec 2019 16:16:38 +0000
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v4 03/12] mm: Reserve asm-generic prot flag 0x10 for arch
 use
Message-ID: <20191212161638.GG4310@sirena.org.uk>
References: <20191211154206.46260-1-broonie@kernel.org>
 <20191211154206.46260-4-broonie@kernel.org>
 <20191212104831.GD18258@arrakis.emea.arm.com>
MIME-Version: 1.0
In-Reply-To: <20191212104831.GD18258@arrakis.emea.arm.com>
X-Cookie: We have DIFFERENT amounts of HAIR --
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_081640_974797_CE6F9B26 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: multipart/mixed; boundary="===============5743707711694812673=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5743707711694812673==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yZnyZsPjQYjG7xG7"
Content-Disposition: inline


--yZnyZsPjQYjG7xG7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Dec 12, 2019 at 10:48:32AM +0000, Catalin Marinas wrote:
> On Wed, Dec 11, 2019 at 03:41:57PM +0000, Mark Brown wrote:

> >  #define PROT_GROWSDOWN	0x01000000	/* mprotect flag: extend change to start of growsdown vma */
> >  #define PROT_GROWSUP	0x02000000	/* mprotect flag: extend change to end of growsup vma */

> Since the BTI will likely be merged before the MTE series, please
> consider reserving 0x20 as well. The updated patch, acked by Arnd:

Sure.

--yZnyZsPjQYjG7xG7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl3yZ+UACgkQJNaLcl1U
h9AFgwf+JLQkNkowzE4VQZiMYNn6XUbklliB0rpWOXleb0MSu8ObNB1vPPCslwod
9rFNhVqYJjlcLT+QTOfTC1CybCvKF5/d/DqmqDydGwlZUe64Nig33rAbo2WsvRy7
Q6uZ6+zrz2pfhpOX3Hy8dt7nvxHd1mpwso9njbPcVS1LG29ib7y7cx/q8op4NcS0
t2ZNDzL5VLxNzCP0iGZJz4uvCHw8J16Ox8h0kxG9wWnGH0pKTLtV+LXU+7m9IIdi
ed8GP3QUtVZJ2iAE1mLBfeaheR2zEcBEHlNTyCrXlLBJt8B2pGFHa2tPfYFsLUbm
OehiEmVIVSCFQ5vfxOP+HPspmGnmLw==
=/Udg
-----END PGP SIGNATURE-----

--yZnyZsPjQYjG7xG7--


--===============5743707711694812673==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5743707711694812673==--

