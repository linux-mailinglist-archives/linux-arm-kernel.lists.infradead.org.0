Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 401FE173B3C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 16:22:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AzHBDxjtAYDUSChqphDhtrOpCcUr6H6IQQAVs/EoCeU=; b=jstXAMzV52yXDfUmNsaf2G9g2
	GQmW+jr7h+KMjq+TD2vGxyDvzlLh6Q2rvmBjIp4zV/PqOFXVPmX4j7B+kFn5qBW4upvkfB0mKPh1Q
	P/eJamIWRP4td5WUsJ/1IY8AUF0qVWmsUta0vL/cxJuEAyS9rGAYMSpCS8srp9fry3RJ0+gbm2WDA
	IxmMUcLQ/XOJpRI8gONMNDCGiL3uZZeIzkk9pjjh4SWCYSPx4gbvEOeTO3oU3CXhc+qGC2h4k4gtC
	UfXEyneqsf/bVmxdXPKDL3v9hx6qN00jd5tkHarxHWFMH2oS4OVg3/T9+LaRAa7wPvD2S8f2N4vj3
	+cLIgseUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7hTF-0004Ua-B5; Fri, 28 Feb 2020 15:22:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7hT6-0004UA-FT
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 15:22:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C442831B;
 Fri, 28 Feb 2020 07:22:21 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 457573F73B;
 Fri, 28 Feb 2020 07:22:21 -0800 (PST)
Date: Fri, 28 Feb 2020 15:22:19 +0000
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH 12/18] arm64: kernel: Convert to modern annotations for
 assembly functions
Message-ID: <20200228152219.GA4956@sirena.org.uk>
References: <20200218195842.34156-1-broonie@kernel.org>
 <20200218195842.34156-13-broonie@kernel.org>
 <CAKv+Gu9Bt93hCaOUrgtfYWp+BU4gheVf2Y==PXVyMZcCssRLQg@mail.gmail.com>
 <20200228133718.GB4019108@arrakis.emea.arm.com>
MIME-Version: 1.0
In-Reply-To: <20200228133718.GB4019108@arrakis.emea.arm.com>
X-Cookie: There Is No Cabal.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_072224_560550_81F033EF 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Marc Zyngier <maz@kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 kvmarm <kvmarm@lists.cs.columbia.edu>, James Morse <james.morse@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Will Deacon <will@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============4264607521916933283=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4264607521916933283==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="1yeeQ81UyVL57Vl7"
Content-Disposition: inline


--1yeeQ81UyVL57Vl7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Feb 28, 2020 at 01:37:18PM +0000, Catalin Marinas wrote:
> On Fri, Feb 28, 2020 at 01:41:21PM +0100, Ard Biesheuvel wrote:

> > This hunk is going to conflict badly with the EFI tree. I will
> > incorporate this change for v5.7, so could you please just drop it
> > from this patch?

Will do for any reposts.

> I wonder whether it would be easier to merge all these patches at
> 5.7-rc1, once most of the major changes went in.

Only thing I can think that doing that might cause issue with is if
people are doing work that's not likely to make it in this cycle then
it'd be some extra rebasing or carrying of out of tree patches they'd
need to do (plus obviously this series might pick up new conflicts
itself).  It's not a completely automated process unfortunately,
especially with trying to fix up some of the problems with the existing
annotations changing the output.  But yeah, we could do that.

--1yeeQ81UyVL57Vl7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5ZMCgACgkQJNaLcl1U
h9Di0Qf/VWvMvqHepDi/x0ZXGJfY242zVkoLHcIp9UV0+4JT0IyKVRbIsBf/DfdM
CjvFlDIqp3m35lh9dEDlKUi+0Pynyd/SXEsIyGf4vl5OrWGVUZoTSiWsy00gWp5e
RFpAo4g4nxGRc4t86UeHZyu9D2+ezFOioFfmCWWmOZZOVKV+DBph+ct/pRqLogJ8
PyTeSZqJZYmOHQxxe68/jU/bIIhohgxh15poE4vYjVZZaD82+oNANqy0seFJ/rSu
7Lr3SduLDq7WeVMo/jYb4u3uOZVHvBCKwhktF1c3t602RBQhm+8pNKh33AFUOsRO
twDGT/8JVuS8HI1K0+7fIlfd4zPxHg==
=/8sV
-----END PGP SIGNATURE-----

--1yeeQ81UyVL57Vl7--


--===============4264607521916933283==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4264607521916933283==--

