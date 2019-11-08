Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97925F4DDC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 15:10:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=od/gEnHMnUe0ZvWgyevgglb3pyo+5dfl1/h1znZXBq0=; b=nP44GaouK9DGJ6DA9DlvqshWm
	eG86ORSNuLNebdV0rBr6bN7IDOBARHjnFQPljtbeUeWrAxWme2XC/5TNtk2uojrWB8QHRrCIKhIul
	5vBXhqj/y/kCjxX4MDswzPETFzNqNurDr38S5TVCIkQuXV/v4aeInZDFTIXhayIEgf5C641gUu533
	kOmZYHjboaxyqbL1jFTpYkK3gDzKgkRmyov5pyNYcCDzR+meUAsNVXSd9s+7k50fuDz63yU6KjvlZ
	6840fS2gJOlZVdaUw9oNiUE3JtdrW68dgVTIe7zEw1lYaVhjPV6aJfVf6qka6b2EUI8qtVXuQK740
	e9s1+OFDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT4yS-0002UB-Ho; Fri, 08 Nov 2019 14:10:52 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT4xz-0002Au-8g
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 14:10:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=f97nowMmychRzWygjoJQDP8naSOqvsf0Mr9GDG6Kls8=; b=eJS2arT6GHKm0GTkuvyxyoog5
 lKULXFb/OTnSaWfcl6W5zdkC9tEtg7d3czToM419+2LY9lxO1QznkQL2FR+UwMxlOQWtn1y6wV4I3
 /KtRUEEhAGNhso1OpC9kGk0Bvkt3X/dT4cIb1NbI3B4hEjYEmA0gELWIyo0Spl1UQZ1vs=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iT4xu-0007OX-SG; Fri, 08 Nov 2019 14:10:18 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id E8D162741450; Fri,  8 Nov 2019 14:10:17 +0000 (GMT)
Date: Fri, 8 Nov 2019 14:10:17 +0000
From: Mark Brown <broonie@kernel.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v7 3/4] arm64: Don't use KPTI where we have E0PD
Message-ID: <20191108141017.GE5532@sirena.co.uk>
References: <20191106130052.10642-1-broonie@kernel.org>
 <20191106130052.10642-4-broonie@kernel.org>
 <05bafb8a-9019-701c-f744-a8d014771b87@arm.com>
 <20191107143750.GG6159@sirena.co.uk>
 <091c5d4c-0292-0dde-043f-f5f9f0fac3af@arm.com>
MIME-Version: 1.0
In-Reply-To: <091c5d4c-0292-0dde-043f-f5f9f0fac3af@arm.com>
X-Cookie: Life is like a simile.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_061023_357511_091A297C 
X-CRM114-Status: GOOD (  13.18  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8623752468033317585=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8623752468033317585==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="brEuL7wsLY8+TuWz"
Content-Disposition: inline


--brEuL7wsLY8+TuWz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Nov 07, 2019 at 03:03:49PM +0000, Suzuki K Poulose wrote:
> On 07/11/2019 14:37, Mark Brown wrote:

> > > Given that this gets run on all individual CPUs, via unmap_kernel_at_el0()
> > > and the decision of choosing KPTI is affected by the lack of the E0PD feature
> > > when it is helpful, having CPU local check is fine. Also this gives us the
> > > advantage of choosing an nG mapping when the boot CPU indicates the need.

> > Well, it's mainly the fact that this runs really early on in boot before
> > the cpufeature code has fully initialized so as with the existing code
> > immediately below for identifying TX1 we can't rely on the cpufeature
> > code being done.

> Yes, I acknowledge that. I was writing it down to clear why this was
> fine and why it has its own advantage. This may not be obvious for
> someone who reads it later. So having this in a comment helps to
> avoid staring at it.

Yes...  my point was more about idiom and urgency, especially given that
this code is moved later in the patch series.

--brEuL7wsLY8+TuWz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl3Fd0kACgkQJNaLcl1U
h9CpPQf+O9PsKY8hcd0K128x31FKNY7YYRfDnDWQNGZaeqlcCOPv8JXYNs/n5Wiy
QMc/UhAs/3MSCAAKB9Xo/ALbM9ih5Ie1QphM+4A6kaNqsFmckdNV55DbTwsde3JC
KODIX9r6oATwVIKYoyTFleSZK5u2TaURVyf7K1AgXznU9AT3orf57C8pvM2MwU4y
HQxiu8Fk89DR3aMTrZ6bl4tzFICYPvo1QIAOnV+OjNp5JhGCiuBu3kBooOAjrucU
9/AWQHeWUO43Elipp4JA+oZRfqpJtM76yAgtibxsPWuWnjX6WSnE+knxyySrdbtc
uxGX/uMACAjiK5mo5oyqvCRcGkKhaw==
=jRjK
-----END PGP SIGNATURE-----

--brEuL7wsLY8+TuWz--


--===============8623752468033317585==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8623752468033317585==--

