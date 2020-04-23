Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3AD41B5A4E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 13:18:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=y7LrmkrESLC4/Nbcs/Q8ZhqgLaHtLWEGtNUL8aLf6dc=; b=pQgw9S6lAqnK4ZTT/0S+tZSX9
	GB5HSnSqr9WgH1puzzyCmZeOPPcaBUkS17PUqbgPDqi7GzMYGXGl+3QeQk2PDlyzYZzyrCLmdom1C
	TCoF/10LjEum00HVgISX5ImRAnDT3acLs1SznzCApjqpnHkA3w0RjNqP5d5W0MUpzY0gt9WKzM7yM
	/+GWzRi8Se2/jFpqR+6c+1O7yvzxLrq+sCjHqRemffPoXJ4l0Fkmf1yEnU8scUYbmzBJ3BaF5ZqQ3
	WhI0Zp+mPj3Zo9CLeR5ZdsWV866Fcgsncdw4KkzHViFZPXcOAsAGi7IrCQ8YgnoxX217Bwa9YuU6E
	P/vq3KqRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRZrz-0000jb-Vz; Thu, 23 Apr 2020 11:18:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRZrq-0000iY-NL
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 11:18:07 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CC7C42071C;
 Thu, 23 Apr 2020 11:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587640686;
 bh=CJNoxUHgvPPi6Qz7NFobk1lVAPAIYHcYUb9EZMXpEDM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GJCLBypKIbMdCv9trAb+I5k8OsD4fiQDXU6P5swdLzc3OXz+KZh52sGY0IBsQmZDl
 Zvp5rXoeiBeVugDynp8aCksN9cDMZGjGbBC6IBqfSU6djcbF/ZVvxT5Wo/Kzq5v81F
 jiqFm0EGjrdCwq8CnID2TyHz7Pwr8R1suZddVsfc=
Date: Thu, 23 Apr 2020 12:18:03 +0100
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH 0/3] arm64: Open code .arch_extension
Message-ID: <20200423111803.GG4808@sirena.org.uk>
References: <20200325114110.23491-1-broonie@kernel.org>
 <CAMj1kXH=g5N4ZtnZeX5N8hf9cnWVam4Htnov6qAmQwD58Wp73Q@mail.gmail.com>
 <20200325115038.GD4346@sirena.org.uk> <20200422180027.GH3585@gaia>
MIME-Version: 1.0
In-Reply-To: <20200422180027.GH3585@gaia>
X-Cookie: This unit... must... survive.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_041806_778370_99A6002E 
X-CRM114-Status: GOOD (  17.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Eric Biggers <ebiggers@google.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============2231390729745644593=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2231390729745644593==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yQbNiKLmgenwUfTN"
Content-Disposition: inline


--yQbNiKLmgenwUfTN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Apr 22, 2020 at 07:00:28PM +0100, Catalin Marinas wrote:
> On Wed, Mar 25, 2020 at 11:50:38AM +0000, Mark Brown wrote:

> > Since BTI is a mandatory feature of v8.5 there is no BTI arch_extension,
> > you can only enable it by moving the base architecture to v8.5.  You'd
> > need to use .arch and that feels likely to find us sharp edges to run
> > into.

> For MTE, .arch armv8-a+memtag won't work since this is only available
> with armv8.5-a. My preference would be to have the highest arch version
> supported by the kernel in the assembler.h file, i.e. ".arch armv8.5-a"
> followed by .arch_extension in each .S file, as needed.

I think we decided that .arch_extension was too new to be used for
things like the crypto stuff where we still support older toolchains?

> Forcing .S files to armv8.5 would not cause any problems with
> the base armv8.0 that the kernel image support since it shouldn't change
> the opcodes gas generates. The .S files would use alternatives anyway
> (or simply have code not called).

We do loose the checking that the assembler does that nobody used a
newer feature by mistake but yeah, shouldn't affect the output.

> The inline asm is slightly more problematic, especially with the clang
> builtin assembler which goes in a single pass. But we could do something
> similar to what we did with the LSE atomics and raising the base of the
> inline asm to armv8.5 (or 8.6 etc., whatever we need in the future).

FWIW I did something different to this for BTI so I wasn't using the
instructions directly so I was going to abandon this series.

--yQbNiKLmgenwUfTN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6heWoACgkQJNaLcl1U
h9CcYQf/YAY5cG0Z+KJA/4mDzsfJIXzFJiQYAT2tuyJHZjf/3CTPE3It3sTDp4i1
yxquKeKVGvnDrZobr9Mlb8GA92dM7ALcN8GEYLMqYWn4YFH5YGTrO2ThNMwGtFW2
yWun9x3SKPg8HWXOTmuumLyUXtnV7dcr21zQa+jgY6x4xyumKXs2xUXe85geF3Kl
CHWbPxMxwIHcw1R+hfAhqY18gBA9RRZ5Cdb9Dronv+EXpj7gpCi3kqjAuGqtzx6f
tocf6Rd8paJ1PRftJEBb/7Vy00mWBRQGgxiVLSNdxGWe15SYgswYrsuafKEOh3Qx
BRw4/z8CFxIpdOgEPm0vi4cFX8+VIg==
=kbYd
-----END PGP SIGNATURE-----

--yQbNiKLmgenwUfTN--


--===============2231390729745644593==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2231390729745644593==--

