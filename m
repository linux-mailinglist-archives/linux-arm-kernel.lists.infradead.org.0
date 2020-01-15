Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE40A13C4FA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 15:09:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uPrfzDq6BRgQdYuovptZgoa2rEDXSJm4+Xh45YpIUqE=; b=HSyozwCDyt/wFEMO8x/0Q/CRt
	fbVpjaGd9e1hM+U2bprKJ9pLfrf0ThFTdbx6Y/nAUjQpWOCwyry04em8pJqxmCyGK+VCSkJSV2NG8
	OzVqGta76yNzVMRx3Ag3MFWpBJWyFR7jK3iHhJZNghh5rlXkQYGdp0ouvhjN0ynq44TxEiuQLTQwv
	ftYTAg5NW+JMNeSLoJwPXthM2cIh3sQ60NOs1ONY5nOAMmKN+eR7MwEpe33jtM9ODLqbG6jMbYrUh
	ZXJYvOWpTsRVLlDaomlW1W2pgzn+BduFrmE5/JJ2YIGzuxujWGS4a8ZSVWxw/NLvHlGN1OxuC9orD
	RBH/HFiXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irjM6-0007FC-7s; Wed, 15 Jan 2020 14:09:10 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irjLr-0007BN-Vc
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 14:09:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tvoOm9SC39gbHNsQ3X/YfZ4y2QkJdagzVDfgqU/mXOI=; b=NZYyV2aFUgZ5OtL//X6PXLLbF
 No+mXVFXj/OMf/rou0wLobMtvrXAOa7ATGRmu1O4C7FXPH5mjC2EisVLzDXQsqz6QIF9aVe/cItgU
 ZKMFcJ8csH0j5reoZRLcMWTB9KdFIDjhHtYShTVMjn+blZqaFW9no61T2CLSCXKGnQJsU=;
Received: from fw-tnat-cam5.arm.com ([217.140.106.53]
 helo=fitzroy.sirena.org.uk) by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1irjLn-0005t5-QV; Wed, 15 Jan 2020 14:08:51 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 79C3CD01965; Wed, 15 Jan 2020 14:08:51 +0000 (GMT)
Date: Wed, 15 Jan 2020 14:08:51 +0000
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v9 1/4] arm64: Add initial support for E0PD
Message-ID: <20200115140851.GJ3897@sirena.org.uk>
References: <20191111185243.42638-1-broonie@kernel.org>
 <20191111185243.42638-2-broonie@kernel.org>
 <20200115135426.GB27473@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20200115135426.GB27473@willie-the-truck>
X-Cookie: Programming is an unnatural act.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_060856_021637_0EC54499 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: multipart/mixed; boundary="===============6583851216712373752=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6583851216712373752==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mjUDp/cLGeqUhYyE"
Content-Disposition: inline


--mjUDp/cLGeqUhYyE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jan 15, 2020 at 01:54:27PM +0000, Will Deacon wrote:
> On Mon, Nov 11, 2019 at 06:52:40PM +0000, Mark Brown wrote:

> > +	   E0PD (part of the ARMv8.5 extensions) allows us to ensure
> > +	   that EL0 accesses made via TTBR1 always fault in constant time,
> > +	   providing benefits to KPTI with lower overhead and without
> > +	   disrupting legitimate access to kernel memory such as SPE.

> This doesn't quite make sense to me, since E0PD doesn't really benefit
> KPTI. Mind if I fold in the diff below?

> -	   providing benefits to KPTI with lower overhead and without
> -	   disrupting legitimate access to kernel memory such as SPE.
> +	   providing similar benefits to KASLR as those provided by KPTI, but
> +	   with lower overhead and without disrupting legitimate access to
> +	   kernel memory such as SPE.

Yes, there was supposed to be a "similar" in there, must've got
dropped at some point during review I think.

Reviwed-by: Mark Brown <broonie@kernel.org>

--mjUDp/cLGeqUhYyE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl4fHPIACgkQJNaLcl1U
h9BswQf7BK3O7DkS9agBg3lUyhCuxYVp5vUSwTTWMmhT8dpcd5xwMTUyH0BhoLgB
txpJ6kpb/6lb3mCq4MZPPaybkmJ5lyyp4QkriKVLUbZ7LWImi+IcPXsTkeAWSPvi
e5KS+YGNJdC+0zi/A8KCyMK+qYatjR3+7u+JoNxjbYK9wvts6DE+jhZao/19ch1N
lOs9A3+vRMsItztN8G0LLUZuyUC91BiQYtRkj4j0e8VJaDxHz0UBMYtWHJQ226iH
KxNGdHuBiJ8PjgeT7y7CRNcRiv/EJfTnR0mAGyDQ0hiyRQOL/pgbgnzIRAWN4adM
y5Buy+fWrg4JbQ9SehrxpsQMOLTvLw==
=lOKt
-----END PGP SIGNATURE-----

--mjUDp/cLGeqUhYyE--


--===============6583851216712373752==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6583851216712373752==--

