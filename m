Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1262F0444
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 18:45:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5nZuTb60Gf2QFjJkejBgvg8uWk0OsdUfegWSeILkT5k=; b=dh2lBoXgmc2YzhILz4i3Dh77X
	l9wT1JCQ2EAhhGNvBqePSVth5OeTgpUwNHglTJnqeo7EOVr3oLTAe60DKzgxN5jJOg1a1DKtb5c9a
	DGyHdA34Chw0BB3gWBrEJZ7RyySajf6DNXbtnhkK3uU5wmkVYuRkcskk/9TWYNPTeqqwZ534low9K
	ZBfFWMQ9C8ktt7g2wUXOZ1hAYPki+HU67ijTI8FMbhvgr+bm5RTxvRswUBZqeakSD//t/RuCh8Hw2
	ruyzy7rKskJ4bKCkQ3vnD1R0a70GO/TBvpZtTTyE4lOG9RBj4M+nkLW+J1xW6lyFz240sLq+GiUDY
	R1lKmX1qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS2t0-0008IQ-RD; Tue, 05 Nov 2019 17:44:58 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS2sr-0008Ha-Qk
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 17:44:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=olNjguwSeZOlAMio+fbDK9OqNAVdTuRGYF4d5jr6w0I=; b=lNZDGZCsPn5jkLKsCRSsbNZc5
 Cjua+qwCzIrs5TZbahHtEq2uNHOd7JNlDh9UNMsagy4DqIXosVkSBITmwANV6a8ThdES825Erx1sO
 yeFRx5iyTBTgadfrCJmaM0ZyXDN9p63zgA8VXh69GAAngeuv5PNRdWquEfr6nwQWzB2nI=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iS2so-0007FK-3D; Tue, 05 Nov 2019 17:44:46 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 2ABE9274301E; Tue,  5 Nov 2019 17:44:45 +0000 (GMT)
Date: Tue, 5 Nov 2019 17:44:45 +0000
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v5 4/4] arm64: Use a variable to store non-global
 mappings decision
Message-ID: <20191105174445.GD4500@sirena.co.uk>
References: <20191104191524.10596-1-broonie@kernel.org>
 <20191104191524.10596-5-broonie@kernel.org>
 <20191105173005.GE22987@arrakis.emea.arm.com>
MIME-Version: 1.0
In-Reply-To: <20191105173005.GE22987@arrakis.emea.arm.com>
X-Cookie: Genius is pain.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_094449_889390_8A5579B7 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: multipart/mixed; boundary="===============4951128416230956143=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4951128416230956143==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="/unnNtmY43mpUSKx"
Content-Disposition: inline


--/unnNtmY43mpUSKx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Nov 05, 2019 at 05:30:06PM +0000, Catalin Marinas wrote:
> On Mon, Nov 04, 2019 at 07:15:24PM +0000, Mark Brown wrote:

> > +	/*
> > +	 * If know now we are going to need KPTI then use non-global
> > +	 * mappings from the start, avoiding the cost of rewriting
> > +	 * everything later.
> > +	 */
> > +	arm64_use_ng_mappings = kaslr_requires_kpti();
> >  }

> I think we need this even earlier in paging_init() before we start
> creating the kernel mappings.

OK, I'll move it.  I didn't see any global mappings getting created with
the current code but better safe than sorry.

--/unnNtmY43mpUSKx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl3BtQwACgkQJNaLcl1U
h9AHlQgAgU+g8NdNkBmSCcNRFYNt9KOOZ5qs11DH+cQFCAa3U8kgQUtYxHJzzi9m
bMf/HI3+HE2r7sQ1KE8UqbR/+ILptkhpzC42UOdp166T9yLr3IK6A+wwI6GTTgvu
lXjOGmJQxB3jZr1nuHUuAlLpIqh60fs2jWqz6lNizooIBJabFLrbLBN9rh9JDtrg
d3DmTKtHa4o1isZTqHZQw15MLdOXJms6mqj5nk8LwPgHpqf1Zz1p96GNSuCPxDv9
ppRIc8FDxULOzrHvU1pq0wePTocof729MW2qEbWk0pTeSgjazWGi4lMGQ7D29/zp
PIJTJe9bRvJ1CtYHDXKzJUtkyC29EA==
=4Z0/
-----END PGP SIGNATURE-----

--/unnNtmY43mpUSKx--


--===============4951128416230956143==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4951128416230956143==--

