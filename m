Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC7F1D955B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 17:19:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VtfN/Qv9sSUrNW8VwgmPhjq5WXvpUSExxxjw9jZ806o=; b=Iwt6w64K9PFQLMlE4Nc+Oq20G
	vynB1UWc9yyxoibASCk+qg8u7NFphPFnYM4xtB7vEmbRkwqBn00rMmJhC/TCLl4dGKef7rh+wzEEr
	q+Y5nemll6iYYy4GpHyQ5RUv+p5tINgi6Gr7C3GWkq9jV5xueRloAE90dbWhlwdIBoGRwBi1vgyUU
	Z8sZmW9lh4xPt5ZJwQ+CJ9n20LqyStJS2mmCCt4Pm2Fp7o1nK0/nDOBMBn2LslOWkq3+t0HLjm5vn
	+uCySNal/bpsf3x422mqNuevDEMYKORv3GS35QEUfjd4IixkZgq97gB08kmp2xLntQY6fXXOH/2qh
	Fg2ipX8YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKl59-0004V0-JM; Wed, 16 Oct 2019 15:19:23 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKl50-0004UN-Ka
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 15:19:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iYKvWTfeePQwvY7Ij2g4rgTN9zWhvL0V++s47UJr5rU=; b=JAyAwprYWcvqlnrkNjK40cBc0
 kUNGsnTQdEH5DSGRWJzThDBnmnKus61i0VkxFy9Z+6DNpPZta0gV9pxO3AFBMkoRyFjV6/zEcvFmF
 6t8DYNb4Cl0JhDMePy04z9IVBpBx/OfHobayYm8fQFvpAEaRnbAsVWUEUR0YlrYyZYwmQ=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iKl4x-0005hP-Ep; Wed, 16 Oct 2019 15:19:11 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id DB6102741FD5; Wed, 16 Oct 2019 16:19:10 +0100 (BST)
Date: Wed, 16 Oct 2019 16:19:10 +0100
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: Re: [PATCH v3 1/3] arm64: Factor out checks for KASLR in KPTI code
 into separate function
Message-ID: <20191016151910.GE4881@sirena.co.uk>
References: <20191016151421.27708-1-broonie@kernel.org>
 <20191016151421.27708-2-broonie@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20191016151421.27708-2-broonie@kernel.org>
X-Cookie: Serenity through viciousness.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_081914_686331_B0FEEADE 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5565312346921337506=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5565312346921337506==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cYtjc4pxslFTELvY"
Content-Disposition: inline


--cYtjc4pxslFTELvY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Oct 16, 2019 at 04:14:19PM +0100, Mark Brown wrote:
> In preparation for E0PD support factor out the checks for interaction
> between KASLR and KPTI done in boot context into a new function
> kaslr_requires_kpti(), in the process clarifying the distinction between
> what we do in boot context and what we do at runtime.

Sorry, whatever I did with git send-email appears to have eaten my cover
letter on this series - the text was:

This series adds support for E0PD. We enable E0PD unconditionally where
present on systems where all the CPUs in the system support E0PD and
change to not enabling KPTI by default on systems where we have enabled
E0PD.

v3: Make E0PD a system wide feature.

--cYtjc4pxslFTELvY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2nNO0ACgkQJNaLcl1U
h9CkqAf9EjmLyMyUsCtM9lCaEbYp6BGaygMbS28yWbz0PCLeHTIUXac3SexvAU9o
m8e11FS4sATVsnv9WUxMY594YlTB2H5HiKMXlpoIsZdTwDPaVrgVePjO7BYt+/R5
R3ivVUUIPz6yPtkUqxUU5MLVOJnCuLKn4TNVjq1kHI5YaB8TJJjvuBK2gSAgRYVF
jtwk7c6DgWRUN3XSqPt1xyPNJaYk2VIDDP3y621Bp5bk9l05+hcc1eEQn0c1ZRyL
CnLaFs7SSMnhPBatGFlspWDUVAtiSMoX7yThq54JQZo0byiTq52KaEMjt51n5nHv
Idu4XIaqKfvT3KH9T/0NmS5bMZguVw==
=Kbxj
-----END PGP SIGNATURE-----

--cYtjc4pxslFTELvY--


--===============5565312346921337506==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5565312346921337506==--

