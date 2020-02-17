Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC2991617DD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 17:27:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=m7v6lWWeaiHCJ1rvKLOTyLhy4mltGj0L2ILdcG/OMkk=; b=Gx6yWw5sYu7zr4yM70Az4Fdh/
	JlDS58FoCPwyEe2oE9gMZeK6PFYmf+g9o5UmbcZyvrl+4dKIMv55eq/kCskbD9y2HemQBrEN1YgQi
	PMys8aOKw+im0myDJpc3iip0QdonGMCmdrTn2Td0pPXJOkFmemkxI6HIZInTb7D91RbDstSIi44eR
	a0xyS0kEIpTRUgCwx/eueJ2FTg7IFKvM0Mf/iQP413Jqko25sFenjuTF8rk69LGVvnvWhDpn7SaYe
	EIrt8Jn9X1DOOGddxC4u9neC4UvCTApvXGIlRDaH6VoXIS+nhhETBbv19ZSIzgvy29BgLMNCX5shV
	l2hXA/Hcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3jEq-0006He-8F; Mon, 17 Feb 2020 16:27:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3jEV-0006B3-5W
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 16:26:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3729C30E;
 Mon, 17 Feb 2020 08:26:54 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AD9143F68F;
 Mon, 17 Feb 2020 08:26:53 -0800 (PST)
Date: Mon, 17 Feb 2020 16:26:52 +0000
From: Mark Brown <broonie@kernel.org>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [RFC PATCH 00/34] sun8i-codec fixes and new features
Message-ID: <20200217162652.GO9304@sirena.org.uk>
References: <20200217064250.15516-1-samuel@sholland.org>
MIME-Version: 1.0
In-Reply-To: <20200217064250.15516-1-samuel@sholland.org>
X-Cookie: There was a phone call for you.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_082655_341155_534105BF 
X-CRM114-Status: GOOD (  16.56  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 =?iso-8859-1?Q?Myl=E8ne?= Josserand <mylene.josserand@free-electrons.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1978961402329158723=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1978961402329158723==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jozmn01XJZjDjM3N"
Content-Disposition: inline


--jozmn01XJZjDjM3N
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Feb 17, 2020 at 12:42:16AM -0600, Samuel Holland wrote:

> There are several trivial fixes in here, and there are several commits
> that just add new features without changing any existing behavior, but
> there is enough changing that I thought it would be best to send the
> whole thing as an RFC. I'm more than happy to reorganize this into one
> or several patchsets in future revisions. It doesn't have to all go in
> at once.

This could definitely use being both split up and reordered, it's a 34
patch series as things stand which is just far too big and I don't
understand the ordering within the series - there's a mix of fixes,
cleanups and new features which should come in that order but don't.
This makes it difficult to get a handle on what's going on because what
the series is doing jumps about a lot.  There's also a lot of overuse of
fixes tags and stable tags which also makes things less clear.  I'd
suggest first sending all the clear fixes as a separate series with the
cleanups and new functionality separate.

With regard to the ABI breaks they *may* be OK for mainline if we're
confident that there's not going to be anyone broken by them but we
should be looking to maintain compatibility if we can even if that's the
case.

--jozmn01XJZjDjM3N
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5KvssACgkQJNaLcl1U
h9AFkAf+PTXKlVW0kwCz5ifw7rANYaEVuHbffAG8xTZ4xnAb6OOQp6nrRyjbeCh+
CVeQiWco9iMv0s3ViZrPNRu0cAY0q5yT9/3PtcSUnf9kdZU0j2NGgVcd8M1r36nG
rqo32+9t3pM7PVuMFxprSYIWowjL4imVnijbUr4HKqMfgcSv11/A8/vrgeFDVw7s
iaICzpZ7eEo7wz23UocFb3ZTLamvSqlUen7jJj8l2KlMZute7NlbH9WOZVV7KHoE
i/eafDrmflwnVDqYffboBROuzLF3fBWbcvyBHsqt9ox5N4YIv9+IBp9u1JORKCPX
tAZBXTMe3EN10DSbE3X0iXvk+gwzRw==
=106H
-----END PGP SIGNATURE-----

--jozmn01XJZjDjM3N--


--===============1978961402329158723==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1978961402329158723==--

