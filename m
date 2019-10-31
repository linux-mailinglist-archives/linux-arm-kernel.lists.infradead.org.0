Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1DD4EAD92
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 11:36:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ab/7rliVcbjlPwhvx82wG2M5gxp38i68CSiQ6dKD7Rg=; b=OeeXCMBLUej10/L7GHakzJqzy
	1BQQgnVtP/97Si/9FX2LJ5JGgocovOEjFTyOUSz4obsFIbC8JppEFc8kkziImRn0BdQQjE1J4OTfe
	rXfG1A6v6ZnGTJMJnlt/nF8UdZEIWiM+sEIf/jEWhAIMBQ9yCMl8J/bW66noineOAkgDMagMYYN7q
	dnGfZKF5PL1fXPzympT4wBZ1yP1eRsnQ3EOoUXgXFcmJukrde9nFFD2j0pm0nwt1z7PJ9oGX2StXy
	cs8dXvZKygKpXdbvebFc25Q0C67tFbiCL4qvJAM4lmU5OIGHjG6stUBgV9x5BPOqZ3kh37r0xrcTv
	cDivuqIYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ7oG-0001L1-9o; Thu, 31 Oct 2019 10:36:08 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ7nu-00017F-FK
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 10:35:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ek7XM560qV+StynVczYlFQiXViPBna3iW5nPGbWlqSw=; b=SeTIR9ax/GwPIXgfwPfKsSVmK
 cSp6HBSDF69CF4rrrNV2mjsEW9fbNGB5Pe221Us0APB5bACGtBkuIPYTqsWh9ZxWgJcoCZMrRP+x0
 eVATurdv5d/wI0FP+Gbm0bQOcVMgSVvBgQNGgLjUntGi6PwerajOz+yl6LVIS9fNVWdRM=;
Received: from [91.217.168.176] (helo=fitzroy.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1iQ7nr-0007Uj-O9; Thu, 31 Oct 2019 10:35:43 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 4255BD020AA; Thu, 31 Oct 2019 10:35:43 +0000 (GMT)
Date: Thu, 31 Oct 2019 11:35:43 +0100
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v4 4/4] arm64: Use a variable to store non-global
 mappings decision
Message-ID: <20191031103543.GP4568@sirena.org.uk>
References: <20191024214207.20588-1-broonie@kernel.org>
 <20191024214207.20588-5-broonie@kernel.org>
 <20191030121307.GB10294@arrakis.emea.arm.com>
 <20191030124153.GB7218@sirena.co.uk>
 <20191030141732.GA13309@arrakis.emea.arm.com>
 <20191031081807.GO4568@sirena.org.uk>
 <20191031101819.GA39590@arrakis.emea.arm.com>
MIME-Version: 1.0
In-Reply-To: <20191031101819.GA39590@arrakis.emea.arm.com>
X-Cookie: Keep out of the sunlight.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_033546_527143_CACBC4E2 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.7 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [91.217.168.176 listed in zen.spamhaus.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3865984627951265777=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3865984627951265777==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="96dIhm/ZjrNld+BP"
Content-Disposition: inline


--96dIhm/ZjrNld+BP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Oct 31, 2019 at 10:18:19AM +0000, Catalin Marinas wrote:

> Anyway, if you send patches to Will or me for upstream, please rebase
> (and test) on top of the vanilla kernel, otherwise we may not be able to
> apply them. You can (should) do a merge with -next and flag any
> conflicts or run-time issues.

Right, that's mostly what I'm doing - I pull stuff out when I'm
preparing to send it, the -next tracking is just for ongoing
work while I'm developing things.  I had been using your tree
rather than mainline as the base because it's what most
maintainers want, they're expecting people to test with what
they've already got applied and send things they can apply
directly.

--96dIhm/ZjrNld+BP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl26uPwACgkQJNaLcl1U
h9AvdQf8DskTQXUt0Nk63YpVtch2awcUM018arVxXUmTR1PgUkMHGpjGJGvismxq
+xkTQ19jJ/rCdMBGc6rdC4nXyBrmYI1phA847dowpwXakTNoCBuUTuqpE3bzfSzl
27zZmzxeD1fCZhx5Q/QhFvPJRyQ0HOsvqQHMG7S3H5t64y2oK7u/2/uYeNVpftz5
dem8BIfnKoZ3bdarvEpkzKi594ZIdTFdAGczdgJHbFFP9B+Qj0RkUBVyMbbM+j2E
dM6KjZwk6G4CwygR++Icr63+9i74VYZ0xkaMFux6+0og5xottGt+27G8mrWmbYmQ
fIm6pWwdLnOK8ZLAgf1TqRqMkTR+8g==
=AUdE
-----END PGP SIGNATURE-----

--96dIhm/ZjrNld+BP--


--===============3865984627951265777==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3865984627951265777==--

