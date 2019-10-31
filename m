Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E014FEAB79
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 09:18:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bIBjIONO1RQjCWlA8Pm4LHJFYV4smiXUBkiWQgKR7Ms=; b=C60bWwlc0ijEeQUs02pfhKMeL
	D9zRr67K8UMSJLLU1Vh6qSBXvks9blpyX8l+0Tc9W90a3xopdqfCcU+7srkwu+P6YzWnXKJL2ynIj
	fym8TSC7KqsIfh492F6AFtzStJxocO0SPnhI2I8wygYmcHxIwR9Yge24DKXRIiDwevlAs6ipKxue6
	TzJV0a3xK/IkjCjdeHYvRaS5WopNGVFXT87cHWZq6ACqEcKEYAFUoAHNtLCjBjwYIwy/FZTQAZ6r8
	pnvrgC8lkiEE7Y5VjArzMds/NGYDPLhcyvE2zyMGg08lN0GqB49BQwdbV6jEuXanBgimQUfcatnC3
	13OpR+sjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ5ew-00014O-Q6; Thu, 31 Oct 2019 08:18:22 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ5el-00013k-Tu
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 08:18:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6U8q9Lz1beZbqn9hlbZOiw4A3CYgTcu3t4bU7tW4Gi4=; b=gf/Y/MXxIwDXoSarFztQ/vVwu
 Zwj07W+yF8qhPA7FyeeeQJ8QB/SGzR3CChOPmCHozAk5uFr8IQ3AUsITk9lSEUAMXwb15FGHQxgiU
 UPrkxlAgqqMRyXeBzoDl/Uffc2fgRxWh5phi2vqvQfqGNN2RNsfG3q9Zj+c0EYxZK08aE=;
Received: from [91.217.168.176] (helo=fitzroy.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1iQ5eh-0007Ai-HO; Thu, 31 Oct 2019 08:18:07 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 0D32ED020AA; Thu, 31 Oct 2019 08:18:07 +0000 (GMT)
Date: Thu, 31 Oct 2019 09:18:07 +0100
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v4 4/4] arm64: Use a variable to store non-global
 mappings decision
Message-ID: <20191031081807.GO4568@sirena.org.uk>
References: <20191024214207.20588-1-broonie@kernel.org>
 <20191024214207.20588-5-broonie@kernel.org>
 <20191030121307.GB10294@arrakis.emea.arm.com>
 <20191030124153.GB7218@sirena.co.uk>
 <20191030141732.GA13309@arrakis.emea.arm.com>
MIME-Version: 1.0
In-Reply-To: <20191030141732.GA13309@arrakis.emea.arm.com>
X-Cookie: Keep out of the sunlight.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_011811_966295_AB9E0F1D 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: 3.7 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [91.217.168.176 listed in zen.spamhaus.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6464078233668267758=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6464078233668267758==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="1HuzLmPZrG5RH6bG"
Content-Disposition: inline


--1HuzLmPZrG5RH6bG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Oct 30, 2019 at 02:17:32PM +0000, Catalin Marinas wrote:
> On Wed, Oct 30, 2019 at 12:41:53PM +0000, Mark Brown wrote:
> > BTW it'd be rather helpful to get patch 1 applied due to the constant
> > conflicts in cpufeature.h, it's safe by itself.

> Since we moved to using topic for-next/* branches, usually based on
> -rc3, I'd rather see patch series on top of the vanilla kernel. We can
> handle the trivial conflicts.

> Of course, if there is functional dependency, we can discuss which
> branch to base it on but I'd avoid for-next/core as a base as that's
> rather volatile.

For my working branch I usually track -next since I've been
burned repeatedly in the past by interactions with other work
that's going on, both code conflicts and unfortunate runtime
interactions.

--1HuzLmPZrG5RH6bG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl26mLwACgkQJNaLcl1U
h9ClIgf/SgFgM5mTaszyGVgiVY36bCSBti/SGwcn5ZHHk/X1Pbu9jZOF6u2EaouA
lkWKkS50k0IxwxdDjV8iU5QvseCnABOnIebXnY7Cn+HNtPiTA8pjtLp4vMjgagk3
UiseOZf8Lk2wzSjKoHCR8Tm1zb2R9+fI5Ad/E8ElHD0g3My6D6Sxt4aojVB7l233
m5XXJbz/EEo0xBBgf1+ceXcPOp5zxTac3Lr5Hd46S2rzgcFKazTpvJGw25NVJV4z
9taSejdCYVzF9Kg6X3k3JqTVB8iLdE/YtT4oAxO73d81V8z5nd0V2Bmgtn4CkStv
fH/90FeDY+JTYuOnBb580xB+3pKhVw==
=UWPY
-----END PGP SIGNATURE-----

--1HuzLmPZrG5RH6bG--


--===============6464078233668267758==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6464078233668267758==--

