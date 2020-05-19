Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7BC91D9B84
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 17:43:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4fGnhwzF6IsiKr2oJoi7aI5tAHRGYxvomEkIHolnNSg=; b=Azy9FfV6nQyj4BTb0W+Ya/Pt0
	ZPncbLuExbavhV9rlhOZn1ua1POnaIH2CTs4uCvVvte27y3zU7osGvxCw17lcS/gAhWQxUEZYLL+I
	i8O1onbH1cLTyqMX+hoR43j/PaBtOReBZNNtmv5sDsqnfSfgvy9gQmSFMiLpQ4tiov5ov+Q3+/Hiy
	m0SK91Gx66nPTX34LCV8Ub3HNetGdCUP/5NbG9kZXP1NwSKNDtXpqGpd+J589ar1zv+sesGlHkn4q
	ENCbrjXYwn34yV9NR00tu3cALmjGbOBs5Bh6z2dtr5X/UFI0IhVbLwTh26As9dw5xRh3QrdLpqF1X
	bnmQpZmQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb4OQ-0003ea-FU; Tue, 19 May 2020 15:42:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb4OI-0003eD-UU
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 15:42:52 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E112A20657;
 Tue, 19 May 2020 15:42:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589902970;
 bh=C6XOOeSlbyqFALEg5CgmW2JpPg9IIhzYKE0TmVSql5o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mFv0m8wQwWVvhmO5xT02vbVip3M7XMIwyj48MLEmD37Zgn9mmmCzVysvzvHeZGCIC
 7XQXK6RNy1mkO3MS6jcupjofzHBOAbT5066ZQ0k1mf8xt3q9+FPlnnYuDMDZIT4I45
 OYsbMPdcr1oRNOt3UBDJmu1Jrp5zNugn6CgUGwY8=
Date: Tue, 19 May 2020 16:42:47 +0100
From: Mark Brown <broonie@kernel.org>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH 1/3] arm64: vdso: Don't prefix sigreturn trampoline with
 a BTI C instruction
Message-ID: <20200519154247.GN4611@sirena.org.uk>
References: <20200519121818.14511-1-will@kernel.org>
 <20200519121818.14511-2-will@kernel.org>
 <20200519123843.GJ4611@sirena.org.uk>
 <20200519132538.GE5031@arm.com>
 <20200519143500.GK4611@sirena.org.uk>
 <20200519145514.GH5031@arm.com>
MIME-Version: 1.0
In-Reply-To: <20200519145514.GH5031@arm.com>
X-Cookie: Do not write below this line.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_084251_000057_0C0A23E6 
X-CRM114-Status: GOOD (  13.29  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Tamas Zsoldos <tamas.zsoldos@arm.com>, Will Deacon <will@kernel.org>,
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org,
 Daniel Kiss <daniel.kiss@arm.com>
Content-Type: multipart/mixed; boundary="===============6781611482719744750=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6781611482719744750==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="TN8pJM9vJMHHFgJc"
Content-Disposition: inline


--TN8pJM9vJMHHFgJc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, May 19, 2020 at 03:55:15PM +0100, Dave Martin wrote:
> On Tue, May 19, 2020 at 03:35:00PM +0100, Mark Brown wrote:
> > On Tue, May 19, 2020 at 02:25:38PM +0100, Dave Martin wrote:

> > > Rather, the "ret lr" that jumps here is supposed to be authenticated via
> > > pointer auth in the caller.

> > In which case there was an issue anyway...

> What issue?

None, I was confused.

> > > If BTI {nothing} allows this while disallowing all BR/BLR then we could
> > > use that (I can't remember what BTI {nothing} is useful for, if anything).

> > > Otherwise, it's less clear what we should have here.

> > I can't remember anything that distinguishes it from an explicit NOP.

> I think it rejects everything other then fallthrough execution
> (BTYPE==0, which includes RET).  I might have misunderstood something

Right, but since BTI only generates an exception when BTYPE != 0 I'm
having trouble differentiating this from a NOP in practical terms.

> somewhere, but sort of feels like the right thing here.  I never put a
> lot of effort into trying to understand BTI {nothing} though.  It
> seemed a weird, possibly useless special case.

That was my read too.

--TN8pJM9vJMHHFgJc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7D/ncACgkQJNaLcl1U
h9CrAgf/VwXTVaC/dl8gmmJzrOpN0Ca1GDwpLd7fNquvwW3BUbCMEer4LgBgsIOR
WyVANEufY1Lj7K7yn0aj4SMCJ3XFJPSSmP0/1iIwYC5UWknuct0ch6c+bnml2wLN
8cuUyHjCzjLDZgDzjM8S0dbwKf8ePogqP9P7E5yJhsCMbibZ9YRridJw0f8ui0dv
ZmgCnkdPanL9ciPkaJtX5iytfcQQ/Nwhc2MGiqcFCHnjYCsiaWinOeeYjaeELrcd
idDcITr6pWMue3AzkxUG45x8QUj9wGpaqxKapiQ8oiBAy8bMvthsEao1ItnbmXwW
te0iMMsxALU65nVITpt3OUsydLO/Yg==
=9hQP
-----END PGP SIGNATURE-----

--TN8pJM9vJMHHFgJc--


--===============6781611482719744750==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6781611482719744750==--

