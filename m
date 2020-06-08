Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F931F1738
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 13:09:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FaEL2g6Dz2PjrMRlTPqEZs+bDb9pxzGOvmnYYotM9bM=; b=N+HxxPppMHyniH8XqJOUUm8CC
	2LsPUSN/ZAEgdCl4tW8/2Ao5QWhm5+BK8VprbSofCPIzvaUiYZCrQ/Pvdt59lSt6SrlLWF8PV/m5q
	tTORo/p+HZe00jQMP51X29+y3CbjCi1y/TiOGD42bzO6NoD8uoSisP6uzFRYtPSFW8o3Ih6liBWkb
	1Taxn4g1++V6IhCvf6jADUKAEVlytaaMfDBNKEJaQmpf5zFZh/T8hNBtY31bU48VxENUxRXb5k2nl
	Pa2SKjkuP0Uoguk5aa0LpORft4uMhSQcYIULtHEwnNSJP5f/iYb9VF50fyaIz9gUpOdL47ptm/qDM
	kRILFHN2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiFeT-00066l-5P; Mon, 08 Jun 2020 11:09:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiFeK-00065i-Ke
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 11:09:05 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8108F2072F;
 Mon,  8 Jun 2020 11:09:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591614544;
 bh=tlSRmb5q1V8ixUHfk0JCYlWCA++DMlpetBtGK34WZMM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tmCf/nTdC/z7X4Eigg/A4eFMFPYzHHxJlR/ybl03AJ4ocioSU3BbGLtc8XxYp0oyQ
 o0FRaMsNA0rYuAzXwKKb2556Pu7U1XNnItjr3ajODYeFAmxrGMIwqYU7gxe5Ke5vGR
 OhSCn+GzbPIrRgjyBkNPVQQZj9jHKW7fnbN6cOcA=
Date: Mon, 8 Jun 2020 12:09:01 +0100
From: Mark Brown <broonie@kernel.org>
To: Li Zhijian <zhijianx.li@intel.com>
Subject: Re: [kbuild-all] Re: [PATCH 4/5] arm64: vdso: Add getcpu()
 implementation
Message-ID: <20200608110901.GA4593@sirena.org.uk>
References: <20200605131131.16491-5-broonie@kernel.org>
 <202006060044.bdshhJta%lkp@intel.com>
 <20200605163508.GJ5413@sirena.org.uk>
 <e1b2f86e-8eef-3266-8c87-93c6660576e8@intel.com>
MIME-Version: 1.0
In-Reply-To: <e1b2f86e-8eef-3266-8c87-93c6660576e8@intel.com>
X-Cookie: I'm rated PG-34!!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_040904_695403_1A62B833 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kbuild-all@lists.01.org, kernel test robot <lkp@intel.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Andrei Vagin <avagin@gmail.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7646768200977702552=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7646768200977702552==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="T4sUOijqQbZv57TR"
Content-Disposition: inline


--T4sUOijqQbZv57TR
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 08, 2020 at 03:46:57PM +0800, Li Zhijian wrote:
> On 6/6/20 12:35 AM, Mark Brown wrote:

> > > arch/arm64/kernel/vdso/vgettimeofday.c:9:5: warning: no previous prot=
otype for '__kernel_clock_gettime' [-Wmissing-prototypes]
> > > 9 | int __kernel_clock_gettime(clockid_t clock,
> > > |     ^~~~~~~~~~~~~~~~~~~~~~

> > I'm not seeing this here and what we're doing is in line with the
> > existing idiom as can be seen from the __kernel_clock_gettime() code
> > flagging the same thing.  Possibly an old/outdated toolchain?

> Actually, the origin mail contained 4 warnings,=A0 and only one is *new*,=
 as
> the mail mentioned that

> > All warnings (new ones prefixed by >>, old ones prefixed by <<):

> 0Day/LKP had marked the *new* ones prefixed by '>>'

My point here is that all the warnings, both old and new, look spurious
and the new warning comes from following the pattern that generates the
existing warnings.  I'm not seeing any of those warnings locally or in
other build services like KernelCI.

--T4sUOijqQbZv57TR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7eHEoACgkQJNaLcl1U
h9AkeAf/YMhJKsUFltYi88yNWkrz0trHwC1rM4qFBqgVggbS3Pj2zkJ7ot2w4Phc
GutWY5zcaX/PhjGOsL+FMvc/rk7GBcqTrxS/yGFT0YmLtSQcCZJEH/s4IvgujaXW
lSCYrEcUsDX3aP4cbDL1kBav7lfE1nRgBG6V/kVgg6rsEVNKSdydRXYxrU9mqq+U
IqlOpZGx+/Y9yJmeB/CWuzMVyF4XqifnPROAgJeryy8VCzAP7becHE9+xjOpB95e
BPon73xJjBTqJ7OOkbb92CyNdWlSaTMPMN8izu2OrRidhaNz0UevwSObKnqa5sFH
wfHQUOnxfUveHSRJhugUC8fqOvdFlA==
=he20
-----END PGP SIGNATURE-----

--T4sUOijqQbZv57TR--


--===============7646768200977702552==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7646768200977702552==--

