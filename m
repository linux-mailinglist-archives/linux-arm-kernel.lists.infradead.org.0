Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 441BE1C02F8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 18:46:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bWmLBRvtlcHTHhrL7JBMPzdCuHOmrhU76yWLlv2PMc8=; b=mc5ds55weJYnws3HN7ozBS6Sp
	UsEHvAg840UFFZt2eAN8vVhlUXFeMZFnaU57dOVFLQ8zBfXXNl5yrt43SZJi7+y54DH7YDn0RMfYZ
	zlvFcMfGeNJz6DD4beXv6fK/qZQUfial65Jz+urcF/PLvel5Wj+PN8c/vh9C7qpH4ZHcaXdyCWPRn
	mmbJ1QsYLMTqQN2fHaeBnO2EvrCp5scZOIo3i6X5EK0jOSw6NynI2c6uk4OqI051OoP821UZWt1eb
	Pgk5DgPBuVH6CVkj6rY/rubgBVFGRxt2O440OfpaWkHAUHMOWebFCRHNIkk/yjE2iz2Zn/Hso3UO1
	SucF2mtWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUCJy-0002db-R8; Thu, 30 Apr 2020 16:45:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUCJj-0002bb-7p
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 16:45:44 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 11ECC2070B;
 Thu, 30 Apr 2020 16:45:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588265142;
 bh=UUkfeKBzGCgK6h1FM/c9NEdb/kQA7jfSSh8tYnz014s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NjyIwPqESsip8A9XPgzUPaPNSbfp/ASjhyC0VI+sGoZ2GBdUP6D9Ii53HOSNO4avr
 zJp8ZpbWJLaKFJz2ZoIlojvaMzHQGkk0fFAT8speMGw6S/0kPa1zI90lMRxIMS46py
 AwRgVvNIPnLCIbLP/YPqIQAW29w4kBuw4qrG3ves=
Date: Thu, 30 Apr 2020 17:45:39 +0100
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2 2/3] arm64: insn: Add constants for PAC and BTI
 instruction decode
Message-ID: <20200430164539.GF4633@sirena.org.uk>
References: <20200428172433.48830-1-broonie@kernel.org>
 <20200428172433.48830-3-broonie@kernel.org>
 <20200430160729.GB25258@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20200430160729.GB25258@willie-the-truck>
X-Cookie: Sign here without admitting guilt.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_094543_303393_FB2B7DF3 
X-CRM114-Status: GOOD (  10.90  )
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
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1294808772926289787=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1294808772926289787==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Zs/RYxT/hKAHzkfQ"
Content-Disposition: inline


--Zs/RYxT/hKAHzkfQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Apr 30, 2020 at 05:07:30PM +0100, Will Deacon wrote:
> On Tue, Apr 28, 2020 at 06:24:32PM +0100, Mark Brown wrote:

> > +	AARCH64_INSN_HINT_PACIA_1716 = 0x08 << 5,
> > +	AARCH64_INSN_HINT_PACIB_1716 = 0x0A << 5,
> > +	AARCH64_INSN_HINT_AUTIA_1716 = 0x0B << 5,
> > +	AARCH64_INSN_HINT_AUTIB_1716 = 0x0C << 5,

> These still look wrong to me.

Ack, I think I must've glazed over after checking PACIA which is right
or missed stuff when cut'n'pasting to verify.

> > +	AARCH64_INSN_HINT_PACIAZ     = 0x18 << 5,
> > +	AARCH64_INSN_HINT_PACIASP    = 0x19 << 5,
> > +	AARCH64_INSN_HINT_PACIBZ     = 0x1A << 5,
> > +	AARCH64_INSN_HINT_PACIBSP    = 0x1B << 5,
> > +	AARCH64_INSN_HINT_AUTIAZ     = 0x1C << 5,
> > +	AARCH64_INSN_HINT_AUTIASP    = 0x1D << 5,

> This one is typo'd in the Arm ARM as AUTHASP. Seems nobody can get this
> stuff right!

It seems to have been fixed in the current revision - or at least
AUTIASP is there and text search isn't finding any instances of
AUTHASP.

> > +	AARCH64_INSN_HINT_BTI   = 0x20 << 5,
> > +	AARCH64_INSN_HINT_BTIC  = 0x22 << 5,
> > +	AARCH64_INSN_HINT_BTIJ  = 0x24 << 5,
> > +	AARCH64_INSN_HINT_BTIJC = 0x2C << 5,

> This looks wrong as well.

_JC is wrong, yes.

--Zs/RYxT/hKAHzkfQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6rALMACgkQJNaLcl1U
h9BYewf/QGrznzvji9Vlj/TXDSyLTO3+Trevzusjq7p3lBuV19NfqrnLczIua2Y1
gU+O8vTcLoYhe+DS/Sez525UGpUkT/lT91d87g9Ht5uss/vDMnzYE4FOgu3uWwty
drULe2bo4tNWYASEEFPPfLCwi4rITCWb1Y5yGSe2z8TEt81bvbKc7PT0DMp1O7pA
+cwI+IP0JQoO94EBUX1dGgeQ7vCroIVdHCRTEOVIKUVrS6+sLpIc19kzcUu3Fsg6
jjHRPb0kvKu8c53nJIriGT4X7S2wJ7C6YvV29iGXv+/owMCK5uuvu8pw2uPRISp2
FeW7zB2Rx4OjmKxO+3cpmwi7uGaL/g==
=eoA2
-----END PGP SIGNATURE-----

--Zs/RYxT/hKAHzkfQ--


--===============1294808772926289787==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1294808772926289787==--

