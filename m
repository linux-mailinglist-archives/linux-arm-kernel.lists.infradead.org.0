Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26B8C11AC9C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 14:58:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eo7K6ZHhnGheSfOtsUuTsXBqnQkr5CjjsYQyGggu334=; b=gcBiFtZHduYMZrrpsfcx1XaPB
	Ae14XA3VeDNvGyV6lTkvaAtvBRNysky1klT/ffwmATfWmluLRRwTO3WisgV5hypvfgKuYP7HX9SeR
	dlbXWfXBKy/u/vyRRCGOmJO1UliIozr5Vhjvygqknvehv2yG6oOdDksk3IVWRd3PSnYzdJ+DHmupn
	E6To1vRYHfASede9E4rZs79zJvad5/o13SYkjf6iZ6ZMjCQSP6vFOgDw/gpFOOIleOQLsuXEYnNsh
	g4Vc0/K8+cGIIkMrDbQvfgel/JD25vvEgZ4QNmf1cNO7pEn9dK90N7OpbXGRQy+KWWXY4bsnWzXlH
	UdIkWjiJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if2VL-0005cJ-VC; Wed, 11 Dec 2019 13:58:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if2VD-0005bj-9W
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 13:58:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 25FC31FB;
 Wed, 11 Dec 2019 05:58:05 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 83FF83F67D;
 Wed, 11 Dec 2019 05:58:04 -0800 (PST)
Date: Wed, 11 Dec 2019 13:58:03 +0000
From: Mark Brown <broonie@kernel.org>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH v3 02/12] ELF: Add ELF program property parsing support
Message-ID: <20191211135803.GD3870@sirena.org.uk>
References: <1571419545-20401-1-git-send-email-Dave.Martin@arm.com>
 <1571419545-20401-3-git-send-email-Dave.Martin@arm.com>
 <201910291611.69822D5E04@keescook>
MIME-Version: 1.0
In-Reply-To: <201910291611.69822D5E04@keescook>
X-Cookie: NOBODY EXPECTS THE SPANISH INQUISITION!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_055807_376010_07513CF3 
X-CRM114-Status: GOOD (  11.91  )
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
 Catalin Marinas <catalin.marinas@arm.com>, Andrew Jones <drjones@redhat.com>,
 Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Eugene Syromiatnikov <esyr@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, "H.J. Lu" <hjl.tools@gmail.com>,
 Yu-cheng Yu <yu-cheng.yu@intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Florian Weimer <fweimer@redhat.com>, linux-kernel@vger.kernel.org,
 Sudakshina Das <sudi.das@arm.com>
Content-Type: multipart/mixed; boundary="===============5711769912752509715=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5711769912752509715==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3Gf/FFewwPeBMqCJ"
Content-Disposition: inline


--3Gf/FFewwPeBMqCJ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Oct 29, 2019 at 04:14:47PM -0700, Kees Cook wrote:
> On Fri, Oct 18, 2019 at 06:25:35PM +0100, Dave Martin wrote:

A bit of a delay, sorry - I've taken this series over from Dave and
wasn't on the CC so only just saw this.

> > +#ifndef ELF_COMPAT
> > +#define ELF_COMPAT 0
> > +#endif

> Why is "compat" interesting for the arch_ callback? Shouldn't just the
> unsigned long size be needed?

The set of properties handled or how they should be handled may vary
depending on the ABI.  For example arm64 supports BTI only for AArch64
but not for AArch32 so we should only handle the property for BTI for
AArch64 binaries.

--3Gf/FFewwPeBMqCJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl3w9eoACgkQJNaLcl1U
h9BmBgf+NNNCMclmwLDa2ZSVlL0/OBQcMH0ymsvXlLz6O8/LVbh/6UcTv2gnLRbZ
4/onE8sI1dHBBZCYuiHk3LVyQElzoci7ntsEO96/Ej4HGEGddSJcy841btZcJF+o
qJD7ZnkU9MR6mk+9QNiJ1Op5JbHinr42IhFw7jdgMDzjc3/BRzOCATyUibraciEN
bocm5+nKJVPYNXiWolMgRER+8JH8w7I52Agj6Ob0zjZOZi9SBuxFIXTMzVqrvnyX
iLIi/RIUpxLAdnb0ZRnyowuwgMFQdX38HKBxi6WLO2hcK4HUtytWbgez6KjRpnga
K5oQP5sxINKD2ERveqnVOuVM/CNbJA==
=RBvh
-----END PGP SIGNATURE-----

--3Gf/FFewwPeBMqCJ--


--===============5711769912752509715==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5711769912752509715==--

