Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA9219279E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 13:02:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wP6krjnzOY/8GxLitz7sQOqyz1nGqsV1zGEj/S2P/bY=; b=WCvhFU4F49dih/tBqzpwsuPn5
	LBymsk9dtOg2VI4Ksdqx09gN1g17s5c6WNwHFysJ1ylcFHX4+aGzymDAS0w9vKorR8MbpoS9m8UH1
	S5FIoOulLUVllUPqR9Vhfo2aaeiZ6TYNJZVxkkZyj1MkkKc+8l3Gkxxfo7aYXS6crAUDk66qitIuN
	QO1gxyxFQMQFzISP1utxs5EAmDAOoyqhdMpQF1jOlz3Wrqa+XZNWj2Yt6FpvwiD3ANv8yEw5cpSXk
	7aTO0WyQK2IyjhYvcrQto1KGyOuyej/M7NxtoZ2hOphNBunIQFB/djqMYQAt8ttEoM6NJja0FtnR4
	ZxvgOEM5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH4je-0001wI-VB; Wed, 25 Mar 2020 12:02:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH4jR-0001vz-L1
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 12:02:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2395731B;
 Wed, 25 Mar 2020 05:02:01 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 981C93F71F;
 Wed, 25 Mar 2020 05:02:00 -0700 (PDT)
Date: Wed, 25 Mar 2020 12:01:59 +0000
From: Mark Brown <broonie@kernel.org>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH 0/3] arm64: Open code .arch_extension
Message-ID: <20200325120159.GE4346@sirena.org.uk>
References: <20200325114110.23491-1-broonie@kernel.org>
 <CAMj1kXH=g5N4ZtnZeX5N8hf9cnWVam4Htnov6qAmQwD58Wp73Q@mail.gmail.com>
 <20200325115038.GD4346@sirena.org.uk>
 <CAMj1kXEogCrLS1o9sQyiXsKZhykfc2kuOssCeME8HyhSnMEFvA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMj1kXEogCrLS1o9sQyiXsKZhykfc2kuOssCeME8HyhSnMEFvA@mail.gmail.com>
X-Cookie: Many are called, few volunteer.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_050201_736862_AB4BBAC0 
X-CRM114-Status: GOOD (  14.19  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Eric Biggers <ebiggers@google.com>
Content-Type: multipart/mixed; boundary="===============1723404528716284884=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1723404528716284884==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5oH/S/bF6lOfqCQb"
Content-Disposition: inline


--5oH/S/bF6lOfqCQb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Mar 25, 2020 at 12:54:10PM +0100, Ard Biesheuvel wrote:
> On Wed, 25 Mar 2020 at 12:50, Mark Brown <broonie@kernel.org> wrote:

> > Since BTI is a mandatory feature of v8.5 there is no BTI arch_extension,
> > you can only enable it by moving the base architecture to v8.5.  You'd
> > need to use .arch and that feels likely to find us sharp edges to run
> > into.

> I think we should talk to the toolchain folks about this. Even if
> .arch_extension today does not support the 'bti' argument, it *is*
> most definitely an architecture extension, even it it is mandatory in
> v8.5 (given that v8.5 is itself an architecture extension).

I agree entirely, the current behaviour is surprising and doesn't really
map onto how the architecture is described - my first thought was
similar to yours.  It won't help us right now but it would help for
future architecture extensions and for other projects.

--5oH/S/bF6lOfqCQb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl57SDYACgkQJNaLcl1U
h9C9Awf/W+fMgLWF5FZHyxhrynQzezNK9R7qjS3beGwi2LFpIzvm6hjlsqoXdSe9
zj6u/m9I6rp778cHUVSBlTb4ruG4A+UaZ2oXxqAQbC4isC104eC038jn8Kn2yYJu
j6Qx96WXCnB8HAWE26GbtQi1wk/cVvIH7Mrw2ePeajg120JXOrjjSgUV7RzepZW9
HsS/pDNXmic5MO+2jHUdW6dibApwCznce6gyvr1a9WG8m6RWmCWZERNdIlthJ9R+
eZYE6qNC2/ne24trLWgEm7MgIXRVY+c1SBCl8hpaC+RbGjhQiBOqen/GTMq+QwrH
GtwP4oGzpMlMrYacu/PF1ZmFH0AR/Q==
=Woxe
-----END PGP SIGNATURE-----

--5oH/S/bF6lOfqCQb--


--===============1723404528716284884==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1723404528716284884==--

