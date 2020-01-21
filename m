Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD40A143C93
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 13:10:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8JlQ4Vce0R5dJbcJYa1xKUyoc/f5bmQUBoF7n9nT/Mg=; b=tF6ceYGgLJJZcCk6VM3DG7hpR
	VLEjU1CwdofLvbizowy37Y1+CayxtIyOrNTVvmsiOHEgZHUdfZKmhvXhWA7otllQteKmBDff81ONR
	LvnNG1/qvZB2H/S6kYvYwwiFtzxJ1isv55WjZnlwgXqhPq+1G2+N8uw6cgpVW70+RjJJZrlK3kt5e
	6MjvArqvjUXXhz2jGLtFr9G18NxH/0HRWKGgSJXQ8guYuBaOgru32qP0Sn36vyQcReNuDLEUj3Jt7
	ZMZBVR7ewnfaFwM/EjXExzIWoDfq4vaoAPeVFKUQVowZKL1izIAKVxpD1Fu37M9eVbBt88WVjPvrl
	8wZI2k3xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itsMc-0001Rj-BT; Tue, 21 Jan 2020 12:10:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itsMP-0001P4-4N
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 12:10:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9D3D130E;
 Tue, 21 Jan 2020 04:10:18 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1A80B3F6C4;
 Tue, 21 Jan 2020 04:10:17 -0800 (PST)
Date: Tue, 21 Jan 2020 12:10:16 +0000
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v12 0/2] ARMv8.5-RNG support
Message-ID: <20200121121016.GA4656@sirena.org.uk>
References: <20200120134621.43531-1-broonie@kernel.org>
 <20200121115713.GA12014@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20200121115713.GA12014@willie-the-truck>
X-Cookie: You too can wear a nose mitten.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_041021_217750_FA91EDD3 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: multipart/mixed; boundary="===============8552988051238169869=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8552988051238169869==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="d6Gm4EdcadzBjdND"
Content-Disposition: inline


--d6Gm4EdcadzBjdND
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jan 21, 2020 at 11:57:13AM +0000, Will Deacon wrote:
> On Mon, Jan 20, 2020 at 01:46:19PM +0000, Mark Brown wrote:

> > This series is based on Richard Henderson's previous v7, it addresses
> > review comments from that version by dropping the boot time RNG

> Hmm, the HWCAP also seems to have disappeared in this version :/

Oh, sorry :(  I was travelling last week and apparently messed up moving
this from my laptop back to my desktop before sending this out.  Let's
try again...

--d6Gm4EdcadzBjdND
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl4m6icACgkQJNaLcl1U
h9CjMwf/e9c6zbeXWj0MFx5/ow0v6F8woy+VEd7jgwkIZDB1Bf5taerqIejji1tb
YXPukOqRdmnxGJSLSJcUX76L4bSyJDzFIJnRAhiAtolt07gvoos3VTA6FMo6eIZi
PdU1t7HQgOAYv6dTh4dz8iIiTaktvdLBVtHRAff28nx8Dv7mGQbiqwBN9tA1WmhQ
Ei30Mds7fG9NsVcI5VoOuL7YSiO3ObbDwMI94Y2vLM1cxZRm7E5gy96wflRQ1FY9
BSyYBbgAiY6kLoPX+tqeGJf7KAKcWupjXvtW2is6ZLutr8/zMB/l6fc7FFoHDRLK
i09myM7TUMIpK5rGeZ5KneZukyF+eQ==
=uGnf
-----END PGP SIGNATURE-----

--d6Gm4EdcadzBjdND--


--===============8552988051238169869==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8552988051238169869==--

