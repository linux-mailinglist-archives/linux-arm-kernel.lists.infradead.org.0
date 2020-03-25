Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A94F719299E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 14:28:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UqFn7DieknS3QjBe88axPcTtpodtO+G35KlPQumsv8Q=; b=SUCTeQyU9jlldkEDrk5W01q7T
	sdZVJUC4fN7Sbqy9sCQO8sDaWvA5QyktbXpBGOsV0mqeH+D85lvYhxDr1lkFfnLFRy/rAGs7mqttq
	/9hf3w7Zs/Rnsf3jpGVz8TTcxrDDLYkR7GY++0qpI6fYchG8HzXr2Rpo8aWTdzTwBELp3TcnkMPyp
	/FEBiDtiPRMUA8wtYvrr+yvZxDXoxnqDFkpUfkdsmLcGe/lQdKjLuw8cpMhQA2MwaLzy2X3fszSA+
	WTVNenHWTLbk6Ort+0+/dn46bLsmwJSUjI6afxqTHBZz4TK3OPuOsH3GXsCI+54sgM2/DibPTyDq1
	W5Cf6MOnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH64f-00050N-Rv; Wed, 25 Mar 2020 13:28:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH64S-0004zg-0h
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 13:27:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2112231B;
 Wed, 25 Mar 2020 06:27:46 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 970693F71F;
 Wed, 25 Mar 2020 06:27:45 -0700 (PDT)
Date: Wed, 25 Mar 2020 13:27:44 +0000
From: Mark Brown <broonie@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 0/3] arm64: Open code .arch_extension
Message-ID: <20200325132744.GF4346@sirena.org.uk>
References: <20200325114110.23491-1-broonie@kernel.org>
 <20200325123157.GA12236@lakrids.cambridge.arm.com>
MIME-Version: 1.0
In-Reply-To: <20200325123157.GA12236@lakrids.cambridge.arm.com>
X-Cookie: Many are called, few volunteer.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_062748_106466_FC7EF8C2 
X-CRM114-Status: GOOD (  12.48  )
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
Cc: Eric Biggers <ebiggers@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-crypto@vger.kernel.org,
 Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5973359548464934351=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5973359548464934351==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dgjlcl3Tl+kb3YDk"
Content-Disposition: inline


--dgjlcl3Tl+kb3YDk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 25, 2020 at 12:31:59PM +0000, Mark Rutland wrote:

> Is there anything akin to push/pop versions of .arch directitves that we
> can use around the BTI instructions specifically?

Not that I can see.

> ... or could we encode the BTI instructions with a .inst, and wrap those
> in macros so that GAS won't complain (like we do for mrs_s and friends)?

That should work, I think it's a taste thing which is better.  For me
it was a combination of there being a small number of files that were
affected, the fact that even within that small set there was divergence
in how they were doing this and the fact that neither solution is a
thing of great beauty. =20

> ... does asking GCC to use BTI for C code make the default arch v8.5 for
> inline asm, or does it do something special to allow BTI instructions in
> specific locations?

This is only an issue for freestanding assembly files as far as I can
see.

--dgjlcl3Tl+kb3YDk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl57XE8ACgkQJNaLcl1U
h9CH+Qf/cVtVIeViDEeMMgOcmLIGjPf9g50RGv3RqWsX87KPK/LskAvSqQnlk0Ey
z3yiBytux5zOpw6Dh4qjX/neqRYHkzT8zmlSoaBMHk+bVhOOxlcFW3Wl8s5Ij+AP
T78PYxA8mFdSXQ645R/gANtXpri9EhjS9FEh5eDFayCI+6CyZDPxsjytVpHzVCgV
sFUndZ4gSBQGzvYqw3m88g2pbqRkXBWEd1Y48AwuBNnXPDOeyh4OOq663loBomdF
qCMv2lBTOZ0c6gt6Tdnq4Dljqixzp2BWPEs4OFsiOxzBrmGGX53Qsk5vrLgxFJJX
ghlf2ejrD4j1r8/K5xu2kuhH02XkJg==
=gSyn
-----END PGP SIGNATURE-----

--dgjlcl3Tl+kb3YDk--


--===============5973359548464934351==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5973359548464934351==--

