Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A94191993
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 19:59:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QNMuTH9YoF/UGBNItxOpLEwUX4jQnhIjbOsDWBa395I=; b=P1HOQcI5ZxHvw7HHDMtPvUEA3
	tRU51WYzdCQjrZgwe+VKXFWoWp4Tr5UBRi0s7riwyq8OnOWzunjmEcchpm+1JQtXeNBtALqwl5iun
	cLcBflaFn/NQOAp4bDV38T7q+uHQMGrTfnb9WWx8lIt8Kl88uzypxvye6+F1FL70NI9sp4HFLtvTk
	h9L+UZblYOvRhdps6/zF9vzLtdCbpkFwJenNwKTdbDR2mN6JhtM9dvMxParM1V6pmnOhB4iTd6FNc
	av5zSTdPTZBNFcb7Tg0aUf/zIT5KYG3WnPh3cjv/2ZOHQj310rZHT9gFXWZLKxoonESrA350r+wKk
	bFVlrs1iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGolP-0004c4-3A; Tue, 24 Mar 2020 18:58:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGolG-0004bE-BV
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 18:58:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 649C331B;
 Tue, 24 Mar 2020 11:58:49 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DB5023F71F;
 Tue, 24 Mar 2020 11:58:48 -0700 (PDT)
Date: Tue, 24 Mar 2020 18:58:47 +0000
From: Mark Brown <broonie@kernel.org>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH 1/2] arm64: lib: Use .arch_extension
Message-ID: <20200324185847.GJ7039@sirena.org.uk>
References: <20200323191807.3864-1-broonie@kernel.org>
 <CAKv+Gu_UW6KV4My9GSDCHmvqm44Krg+B4efjK_ta2MQ+A2cJNg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAKv+Gu_UW6KV4My9GSDCHmvqm44Krg+B4efjK_ta2MQ+A2cJNg@mail.gmail.com>
X-Cookie: I feel ... JUGULAR ...
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_115850_439326_EBDF4AC6 
X-CRM114-Status: GOOD (  15.39  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Eric Biggers <ebiggers@google.com>
Content-Type: multipart/mixed; boundary="===============7214042870613902324=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7214042870613902324==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5me2qT3T17SWzdxI"
Content-Disposition: inline


--5me2qT3T17SWzdxI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 24, 2020 at 07:19:17PM +0100, Ard Biesheuvel wrote:
> On Mon, 23 Mar 2020 at 20:18, Mark Brown <broonie@kernel.org> wrote:

> > order to generate BTI landing pads.  We did this due to a lack of
> > support for the .arch_extension gas feature in older versions of the
> > clang built in assembler but since current versions of clang now have
> > support for .arch_extension we can use that.

> This is not 100% accurate. Support for .arch_extension was added to
> GAS/aarch64 much later, so we should at least double check that it
> works on the oldest binutils that we do support.

Ah, OK - the information I figured out from history was misleading
sorry. =20

We've already got quite a lot of usages of .arch_extension in the kernel
for arm and a couple for arm64 (one in TF and another for LSE).  It
looks like the feature was added in binutils 2.26 which is newer than
the current advertised minimum binutils version of 2.21 but dates from
2016 (the code was added in 2014 and looks like it might've appeared in
downstream releases earlier) so is pretty old in arm64 terms.  If that's
not OK I've got an open coded version for BTI that does this with macros
but it's obviously not as nice.

I do wish the binutils docs included information on when features were
added, it'd make life easier :/

--5me2qT3T17SWzdxI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl56WGYACgkQJNaLcl1U
h9CMIAf/eD4IfOb7vDMsyY/fzFZ+EsgS4Bz0DpXI1bm5283/AMD0kZdXfbWCRsSL
nCHWLA418iO+7dr8xJ3W+NYEc0HZOI/MkdByZFStqJPXjJCXJ1FmRyfeGvP83715
xwj9cr+ciY7gK1SraQJyTAwq6Bq4FFYH1BZzpIkOT2czv9fgwC2dVt8G31bJLGjb
b1v1Zbn6Bh3E/COgiD34JLkwH+aawRpkzbJdzYJfMbETKsB4x/AVCCjcOt8ZVrZ2
DO0sdRDrYqohgG5l/T+DDvul6zFSvxnJPbraDWzNlGd355iiGqiTpShkuwUI7NGu
6rbwZfvqN6VBFEeTwW2zsYl7GPv9EA==
=XrKB
-----END PGP SIGNATURE-----

--5me2qT3T17SWzdxI--


--===============7214042870613902324==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7214042870613902324==--

