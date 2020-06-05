Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B8191EFE17
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 18:35:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LZANfsUJxV1yaGIp/j3ZBkKR1ETi3gEL0rD1atxZ9Jg=; b=Gb7bLUE8QORV7SxrMHWfY/kpe
	gdGxgK2Mqf3NHNmT7UI8cCY8Zn+i5zq+9274/9++x0ycQsrQ+FzqFO9HAFg/GP4um7MLOwPO0r+J+
	161sOO2Kt1IyKo97KMOAou7qTUXLHRv6WK/W1/dlRyxONIWncOZJfj/LzPus2p5Vv8/mlxHOHuVGB
	uUXlAiA0mqVElzdUG+mltGN727HUYGrtF10CFMPO+JtKkIp2s01VkLYfnexh8Zu5mK5kBjt7bVv6I
	lKpDyV0b2kKpHbvapR9WFMChPozoBLYD2xvTXC+WbBuOV7G3aXMzOgG/ff9T53Ah5ptN1TkiLf22j
	F8rQuwHyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhFJR-0003xp-JJ; Fri, 05 Jun 2020 16:35:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhFJH-0003VZ-IK
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 16:35:13 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9AE2C206DC;
 Fri,  5 Jun 2020 16:35:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591374911;
 bh=kM4iThZZkoWnxRZFpcftD2lTItoksYEao0vMTBVlZc0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ges/qOJKLQqxZW1+VBw/ahPy6i6hjhHxge242RThVESEouvoLQBlkxIPuNTVQBp/8
 n8o8wzIj4VyVTfA+15sBLIJtLCkor9zbA6pOgDHRxiWdqdsoyh8WbB4OzkkYA98/kl
 jvk00+71RAvZkcbP+MMLLxjCpb03iZV6wti5K6Vc=
Date: Fri, 5 Jun 2020 17:35:08 +0100
From: Mark Brown <broonie@kernel.org>
To: kernel test robot <lkp@intel.com>
Subject: Re: [PATCH 4/5] arm64: vdso: Add getcpu() implementation
Message-ID: <20200605163508.GJ5413@sirena.org.uk>
References: <20200605131131.16491-5-broonie@kernel.org>
 <202006060044.bdshhJta%lkp@intel.com>
MIME-Version: 1.0
In-Reply-To: <202006060044.bdshhJta%lkp@intel.com>
X-Cookie: Air is water with holes in it.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_093511_632795_B656EAD1 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kbuild-all@lists.01.org, Catalin Marinas <catalin.marinas@arm.com>,
 Andrei Vagin <avagin@gmail.com>, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7472253151793512012=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7472253151793512012==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="F4+N/OgRSdC8YnqX"
Content-Disposition: inline


--F4+N/OgRSdC8YnqX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Jun 06, 2020 at 12:11:08AM +0800, kernel test robot wrote:

> >> arch/arm64/kernel/vdso/vgetcpu.c:33:5: warning: no previous prototype for '__kernel_getcpu' [-Wmissing-prototypes]
> 33 | int __kernel_getcpu(unsigned int *cpu, unsigned int *node,
> |     ^~~~~~~~~~~~~~~
> --
> >> arch/arm64/kernel/vdso/vgetcpu.c:33:5: warning: no previous prototype for '__kernel_getcpu' [-Wmissing-prototypes]
> 33 | int __kernel_getcpu(unsigned int *cpu, unsigned int *node,
> |     ^~~~~~~~~~~~~~~
> arch/arm64/kernel/vdso/vgettimeofday.c:9:5: warning: no previous prototype for '__kernel_clock_gettime' [-Wmissing-prototypes]
> 9 | int __kernel_clock_gettime(clockid_t clock,
> |     ^~~~~~~~~~~~~~~~~~~~~~

I'm not seeing this here and what we're doing is in line with the
existing idiom as can be seen from the __kernel_clock_gettime() code
flagging the same thing.  Possibly an old/outdated toolchain?

--F4+N/OgRSdC8YnqX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7adDsACgkQJNaLcl1U
h9ALHAf+NZBEQ4Ury867EeDsXhqD4gJ2wobqzUMoRqcWZUGlvb8Xp0rFMzFogcIM
4drKncnKsQd1TbzQsxAcvfQM5aweplbX/hXlJMEqBFEAgnf0ENTWPNO62TGcduRS
Tq50YVnqCK82jmqM1fU6KKvuNTP16vr0psdfcAZQLj+TWiln8sQaI1TE4HL5ncVx
39D8YxnqMqg2H7lqT4z6OazyYwJXFqD67Tgd+3jIzo36c0bBdMphDWz43iJhJULO
bz05uSWdPXD++FFiySvklNV4PtwoXEzN1G2R5jBJs4MshBdkFsQSCdOxFxD+Ky7J
VRjjrppp0zJjL62ujnrpjZ+ENebQng==
=pRax
-----END PGP SIGNATURE-----

--F4+N/OgRSdC8YnqX--


--===============7472253151793512012==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7472253151793512012==--

