Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44CCA1929B1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 14:31:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jt0E8a7Mr7VcxCfKl/li7wlDTMJ7rOGb22+onVAwpV0=; b=lvXNaq6VSvVqWt2p852xx0anN
	RCxc+3OqT/CxqH9M1PhKoi5M4GSTeFdYUYWxJ4btiyC/0DRbkr4laBZP8ko4A1K8GKM0QAkinQZxu
	y7CIFYp1KcjqIK8YT5fjeUhJDMTXNQ9e8H12s0ictSJMvVb85tH9OuWh9hWJXgZl9IOJsHi5Pl96V
	LIqHDzJcm7zE28DtqOFkajBIXDV/juVnM6WAG9dz9pdiYtHHPiptIhHpMJ9KzdbQbH6vnxNGbjR2V
	6wUH/BBt8aD/Gx+hC5IqXUsSnZ5ODn/7MoEqZ1BHtqFmtF2MYN0ko8xchAcmKRuj4NHhJ3Edr1Gwh
	7poT11qjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH67g-0007J8-OA; Wed, 25 Mar 2020 13:31:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH67W-0007IZ-6A
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 13:30:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B18CE31B;
 Wed, 25 Mar 2020 06:30:57 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3488F3F71F;
 Wed, 25 Mar 2020 06:30:57 -0700 (PDT)
Date: Wed, 25 Mar 2020 13:30:55 +0000
From: Mark Brown <broonie@kernel.org>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH 0/3] arm64: Open code .arch_extension
Message-ID: <20200325133055.GG4346@sirena.org.uk>
References: <20200325114110.23491-1-broonie@kernel.org>
 <20200325123157.GA12236@lakrids.cambridge.arm.com>
 <CAMj1kXH1OC0hqnP5hWUVMK8Z5CrWp+XFfxAyufXY4bKwN2U2xw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMj1kXH1OC0hqnP5hWUVMK8Z5CrWp+XFfxAyufXY4bKwN2U2xw@mail.gmail.com>
X-Cookie: Many are called, few volunteer.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_063058_273782_C57AB653 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Eric Biggers <ebiggers@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-crypto@vger.kernel.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5863290171204204174=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5863290171204204174==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="9Iq5ULCa7nGtWwZS"
Content-Disposition: inline


--9Iq5ULCa7nGtWwZS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Mar 25, 2020 at 02:26:49PM +0100, Ard Biesheuvel wrote:

> I think using macros wrapping .inst directives is the most hassle free
> way to achieve this, assuming there is no need to encode registers or
> immediates (which makes it slightly messy - refer to
> arch/arm64/crypto/sm3-ce-core.S for an example)

There isn't - you just have to encode the four target classes, of which
we only use one.

--9Iq5ULCa7nGtWwZS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl57XQ4ACgkQJNaLcl1U
h9AgRgf+PuOD/PfRQNTSNziC+ioXPuc2pH15lOCN5KAAdbm0bKP1ojqjalUzKzw8
hufMtyLux3sKdnbiWcw3wyNMUr5rZb6GCzo5HWTDG68a/elnrYnK4rQCqaOph6QI
SlVFLqPerEXDNGtC3pCY7nypVj2yoDNuhKAVChEFFnkYN8g1BZJP8M4etku0Ke/R
kwcUXl2M29a57GK221OCue2SJgK3/d/pQ71uHFjMrYoVCgGTDHh5sHsn+Yfe5nyR
7vr2kv3Qodjg2JAhIWnZFqPTjzojDdmjtV4zVVbG9PtTcVn1w44uugiDbhemypts
QJxTe1Fzp7trhU7VLifFmPeo5XxXwg==
=6wKN
-----END PGP SIGNATURE-----

--9Iq5ULCa7nGtWwZS--


--===============5863290171204204174==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5863290171204204174==--

