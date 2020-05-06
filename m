Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 951831C7517
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 17:39:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=R1IlNiHBrw7fGjzZZ6kHgG2fUJUFD+4RHx0vbiVh61M=; b=MHTtC/zULrxTvMtD2ZOTP2CIB
	mtA0ZTMo30BGW7bkVZO2xE+iDzuFZdBhvQJlXTO5ItJdrWyz3V3ZZ6L7/S3weap/pIIQX5A+TtbjX
	AyEfssP3HWA3XIis9B2ytbm/oQK2yM4gj6NXxhYz+YCFGw5TrKHUssr5AwCSIoCqDx1aAqM3+KB/A
	XqqiSI9c626WKKTxycYOyGDh+rV2Gah9TVbj0sgsQKH64LdRlssNFm5QSHcZf+KZO78C58ltgyfxY
	Neg2V7+04AtL0ll3Wbfje3i3Q7KxIHa2to9ZhocOlQ74zqw/9Bjp1Aw0apRx2PuXBMVFKtpIXUT+K
	aieO6j8UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWM8k-0002Qr-Gr; Wed, 06 May 2020 15:39:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWM8b-0002QL-E8
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 15:39:10 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 78E0E20643;
 Wed,  6 May 2020 15:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588779549;
 bh=WgPijPHHydvvVDdXFszamSMx98PO6J2ih0Dh2t0TZGw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EJ9faVRz/3IBDeZfHxctVP9kuHlElCdfyqjRFcRxBAg3NeXdE2MuX79G9+MWQbFYV
 0cfYIfWRguX4+PJVOcgMsdKKZ68jVx6D+rspQHC88JVWSlgCTQ7IzSjZOHEPesRlBm
 SJZvuwnqWprGY7MXTUsIWJ8fN0LTfHFPQGrHuaUY=
Date: Wed, 6 May 2020 16:39:06 +0100
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2 07/10] arm64: asm: Provide a mechanism for generating
 ELF note for BTI
Message-ID: <20200506153906.GF5299@sirena.org.uk>
References: <20200429211641.9279-1-broonie@kernel.org>
 <20200429211641.9279-8-broonie@kernel.org>
 <20200505145858.GB24239@willie-the-truck>
 <20200505170629.GH5377@sirena.org.uk>
 <20200506112632.GD8043@willie-the-truck>
 <20200506123855.GC5299@sirena.org.uk>
 <20200506134433.GA12453@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20200506134433.GA12453@willie-the-truck>
X-Cookie: Not recommended for children.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_083909_497691_230C5D3D 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, dave.martin@arm.com,
 linux-arm-kernel@lists.infradead.org, Kees Cook <keescook@chromium.org>
Content-Type: multipart/mixed; boundary="===============7237991575718989099=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7237991575718989099==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Bqc0IY4JZZt50bUr"
Content-Disposition: inline


--Bqc0IY4JZZt50bUr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, May 06, 2020 at 02:44:34PM +0100, Will Deacon wrote:
> On Wed, May 06, 2020 at 01:38:55PM +0100, Mark Brown wrote:

> > Right, I was just expecting to have the ifdefs selecting the flags to
> > emit in the middle of the asm macro definiton rather than separately - I
> > didn't see a huge win in defining a macro with the only user being
> > another macro.  I can do something along those lines though.

> With my suggestion, we still only have the 'emit_aarch64_feature_1_and'
> macro, it just provides a way to override the properties if we need that
> later on. All I'm proposing is adding the optional feat parameter, which
> defaults to all of the properties we know about.

> > That will result in us emitting the note with no flags set which
> > *should* be totally fine but is a bit unusual and feels like tempting
> > fate.

> Nah, that's just the dummy .macro definition.

I see - I had been reading the idea as being to have the macro outside
the #ifdef for BTI so that it's usable separately from that and that
you'd just not updated the ifdefs while sketching it out.  I think I've
got a sensible way of achieving that without too much pain though so it
should be fine anyway.

--Bqc0IY4JZZt50bUr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6y2hkACgkQJNaLcl1U
h9BNqQf6AgpnT56fh19ePfZHOzchO1Zo38T8JTOqmRM8/WySkWcv1wVbSqD8o9EK
qGb7QfUbb6/RoDfS+ohs6SiZAA///ElpoyePZkAoussHPteDjU4HDcbuhJZTiikc
JAwd97zS9Tq9wFha52f20nongAIahJRet8zqyg1rWjKkgxRm4tkP9m7lqmuxV5ka
/QrQbDQNdCJzJNdo+EnH+AGsQtPTij/RgDq4X3CF71A1aSbmFoGF08eGXPLs9omm
1gLpc35qm0PS2n9XNNsXHHVb1d+el/LXW/zOtqbMDDBUqXuw74MbHq9mIYj8+gUl
YE+oQl3jvCdWSSsl+onXjE0SJGMVaw==
=dovQ
-----END PGP SIGNATURE-----

--Bqc0IY4JZZt50bUr--


--===============7237991575718989099==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7237991575718989099==--

