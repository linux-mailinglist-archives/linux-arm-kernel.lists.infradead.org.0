Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E96CDF5D5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 21:18:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8mqeUvU6fcs0b9jI0caMdr1TBESP5hKofYl8jBGIO4Y=; b=ZfGXfYHW3l3dEStsJI7p8MiQu
	GtxPp7i/ySry1N79X4tk3lrmWeBzyb8c+3HCxtbiPJTyu+bWCii/WEfoTomoQtLWo2jJE2vrLYiA5
	vslPm3S4DAzp5DhVcw9Z7ZRBNgKtdKkwwdBLVUjgYl8qW/d+Rd3dcfj5r3y2T06aSRSNkjnBuCdnu
	ig3LUo6MECfFGZy5sCpyMCK6F/fKZA0E1jvM+wDVbvPhxjh9LceCx5CtSniGW1ANHXLNP6/8JvbHb
	ic/kX/qyb3b+RgU++5ShxrSyOIRNfrkD6u5cLFzFNbeDJNATR0sSuy96sHeFq5u+2MwwuGJEdlBJA
	G2I3ubawQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMdCW-00009U-0Q; Mon, 21 Oct 2019 19:18:44 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMdCH-000076-8b
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 19:18:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fevudOnh+qzvyYwh4cgGYP8coU0hdIEQmL6Wxn7ZTEg=; b=N76+hKEGeIU1JCoaLW7rvByeS
 YLsvc+Hj24W7EQuukOz/azQ6lKzgjauLi2Rg3LswQe4mWjBPLWiCi6MUJX/wNKyC9GBUZeq0lla1C
 pW7tiBPz87HWQcNYfCx7/OiSV2X16AZf9avJkOfy0gBP5Atm/EerUikGLypIRU7O3Y9Wk=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iMdC7-0004iU-3E; Mon, 21 Oct 2019 19:18:19 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 3E0E6274301C; Mon, 21 Oct 2019 20:18:18 +0100 (BST)
Date: Mon, 21 Oct 2019 20:18:18 +0100
From: Mark Brown <broonie@kernel.org>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH v2 04/12] arm64: docs: cpu-feature-registers: Document
 ID_AA64PFR1_EL1
Message-ID: <20191021191818.GH4691@sirena.co.uk>
References: <1570733080-21015-1-git-send-email-Dave.Martin@arm.com>
 <1570733080-21015-5-git-send-email-Dave.Martin@arm.com>
 <87zhi7l8qz.fsf@linaro.org> <20191011145148.GK27757@arm.com>
MIME-Version: 1.0
In-Reply-To: <20191011145148.GK27757@arm.com>
X-Cookie: Why are you so hard to ignore?
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_121829_311719_DE8DB752 
X-CRM114-Status: GOOD (  17.15  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Andrew Jones <drjones@redhat.com>, Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-arch@vger.kernel.org,
 Suzuki Poulose <suzuki.poulose@arm.com>,
 Eugene Syromiatnikov <esyr@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 "H.J. Lu" <hjl.tools@gmail.com>, Yu-cheng Yu <yu-cheng.yu@intel.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Alex =?iso-8859-1?Q?Benn=E9e?= <alex.bennee@linaro.org>,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 linux-kernel@vger.kernel.org, Sudakshina Das <sudi.das@arm.com>
Content-Type: multipart/mixed; boundary="===============9113245835728921570=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============9113245835728921570==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3ecMC0kzqsE2ddMN"
Content-Disposition: inline


--3ecMC0kzqsE2ddMN
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 11, 2019 at 03:51:49PM +0100, Dave Martin wrote:
> On Fri, Oct 11, 2019 at 02:19:48PM +0100, Alex Benn=E9e wrote:

> > > -  4) ID_AA64ISAR1_EL1 - Instruction set attribute register 1
> > > +  5) ID_AA64ISAR1_EL1 - Instruction set attribute register 1

> > If I'm not mistaken .rst has support for auto-enumeration if the #
> > character is used. That might reduce the pain of re-numbering in future.

> Ack, though it would be good to go one better and generate this document
> from the cpufeature.c tables (or from some common source).  The numbers
> are relatively easy to maintain -- remembering to update the document
> at all seems the bigger maintenance headache right now.

I agree, it'd be better if the table were autogenerated.  Having tried
doing the modification to # it does mean that the document looks a bit
weird when viewing it as a text file in the kernel source which TBH is
how I suspect a lot of people will view it so given the infrequency with
which new registers are added I'm not sure it's worth it.

> I think this particular patch is superseded by similar fixes from other
> people, just not in torvalds/master yet.

Nor in -next for the minute :/

--3ecMC0kzqsE2ddMN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2uBHkACgkQJNaLcl1U
h9CU9wf9F4phS5RToa697wMpl5IT66Ka+2pom9TzQtuEDZYe1rqKq7cqKCbnaY0Y
x2dqlS9LHXFtoqM27/GnP1X4IdK8YJl3lczLRHJnAeswjpgk3txBSslzq8EWZvnU
TWwB3eDgHxSAEu5GAaVK90KjSR/hgDGUvgleTcBgdU5XJu2iE9BmzFCre9u9XVVO
CFMXc12UFptoL/1rTnmUFv53ID8h5fkGMjlhsGjNR7wPXEzfGL2V7v7hBF6kua1O
fga+W6QX0cZQ4vq27s9waSqGa89+rll2gDdQeACnJLjeicaXJcdWuAj/ehE7FfSc
woSKnKCeyeeDQb96nUkXRP4IxbyhfQ==
=9lxj
-----END PGP SIGNATURE-----

--3ecMC0kzqsE2ddMN--


--===============9113245835728921570==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============9113245835728921570==--

