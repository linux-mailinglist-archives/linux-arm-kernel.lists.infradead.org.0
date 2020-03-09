Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0584E17E627
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 18:55:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Tx73UdqLmUvy9rzk5Po9eIQAQKZz/raCxUIpvz0D8Uw=; b=m69GHDM14YO6PPOkwS8/uia2X
	vb8U0cvFSnjluAlOXCGuWwuSOiUF3/qhJSjThbsH4v4RpUDXDJvv11BzpJvBECztfp0UG/qwxlaiZ
	bwQGjJqxGMlQvK9JXxWXn9dOi4YCOIDUJFuLo3Ipx25pa+imyc11d+bU/pa3pP3dmJurBLLxN6lJL
	XXJeVqYnGEYq8Rh3AE4bp6xcwOdCbH9HAEREsWC76u8ZZknvpXvfohPS6yiywCRrBDpmWiLdF4CJI
	yucZAMGjKObIxvk78pLRDc5tGWufPqiYBjnctM61NdoM5O6AZxsfanmjIPpaZaQQRyjmTDQ8tk6Cq
	/BSIZJcjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBMcf-0001an-JT; Mon, 09 Mar 2020 17:55:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBMcW-0001aV-Qg
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 17:55:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 101541FB;
 Mon,  9 Mar 2020 10:55:16 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 877C23F67D;
 Mon,  9 Mar 2020 10:55:15 -0700 (PDT)
Date: Mon, 9 Mar 2020 17:55:14 +0000
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH 12/18] arm64: kernel: Convert to modern annotations for
 assembly functions
Message-ID: <20200309175514.GL4101@sirena.org.uk>
References: <20200218195842.34156-1-broonie@kernel.org>
 <20200218195842.34156-13-broonie@kernel.org>
 <CAKv+Gu9Bt93hCaOUrgtfYWp+BU4gheVf2Y==PXVyMZcCssRLQg@mail.gmail.com>
 <20200228133718.GB4019108@arrakis.emea.arm.com>
 <20200228152219.GA4956@sirena.org.uk>
 <20200309175203.GE4124965@arrakis.emea.arm.com>
MIME-Version: 1.0
In-Reply-To: <20200309175203.GE4124965@arrakis.emea.arm.com>
X-Cookie: Above all things, reverence yourself.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_105518_254018_EC121591 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Marc Zyngier <maz@kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 kvmarm <kvmarm@lists.cs.columbia.edu>, James Morse <james.morse@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Will Deacon <will@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============1459045100254932150=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1459045100254932150==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bFUYW7mPOLJ+Jd2A"
Content-Disposition: inline


--bFUYW7mPOLJ+Jd2A
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Mar 09, 2020 at 05:52:03PM +0000, Catalin Marinas wrote:

> I queued this series for 5.7, apart from patch 12. I'll try to fix any
> conflicts with whatever patches I'm adding but may drop some of them if
> they conflict badly with code in -next (not likely). We'll revisit at
> -rc1 to see what's left.

Thanks.

--bFUYW7mPOLJ+Jd2A
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5mgwEACgkQJNaLcl1U
h9C/Gwf+I7COBLhEJB5O4BpJwqHs8Eu6fm4Xs3yxlGbeuJsbvREuUQ6Nla07nK/y
3LjxWqI38XL2N7Ruw7KfHzAfvZa0yZIkERdKFnP3Ycy6tRNp8miugtgK4qrPyO9I
8wuH7ulbNMafqQVx4LQqQbLpRck31y4qUQk76JMjWFpqT23Hu/wCr+UpOKWc/Vke
eDb4XriX32xLsHDeh5W5FJL6vFkxYfgyhi9Tmw4C5EXTE+8Kn5FLls5as9GBUwEZ
jm4VHcWUntxBCjWaesLvxDPUazFabAJIjLVGwtqXKZO0/7yLzxf7fE0AKdG3PQc8
s5lYxilRm61ZWeaHvnDGcfoS0/wX7A==
=/gTP
-----END PGP SIGNATURE-----

--bFUYW7mPOLJ+Jd2A--


--===============1459045100254932150==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1459045100254932150==--

