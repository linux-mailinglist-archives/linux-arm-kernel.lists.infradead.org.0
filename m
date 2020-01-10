Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D4E1371D2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 16:53:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6y4X+RNr79CdhLK3qLwxoqe0q72nIwJGt4LS7zAL/3o=; b=gfMCuyPEWC/WHFEtDGkm7dY7P
	yHuiwXo7qBErCB/1IkkYVdXJ70zS1Mz1aC4XxQUuPfJvxYLeW3o9C8fBbSxi0iasO7+eCBmLFAcsI
	OG0HzrJBRQNdmySr99Fj8X8bLAFJxf7oPlyLzkXfdKsgmE5Fo3E1exCV66z+/uxtXBBZpWwgQWxyV
	zq2KqAXwV9xWSDnL/1oZ6ANv0i7YzC8cSqdRTNRNiJgbhU4hUUXcSbD+p4ToPPgnPCZwe/IIgF/sX
	PpoQg3aKFmakTTlUaJCFt98hazCG7RVqRiuVpHFztW3oxtEhXy2uvphXyMmrb1jyplq785Hz9S4rD
	+vQ2zCsKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipwbP-0007qg-J3; Fri, 10 Jan 2020 15:53:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipwbI-0007qI-HK
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 15:53:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 285CC30E;
 Fri, 10 Jan 2020 07:53:28 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A78FF3F6C4;
 Fri, 10 Jan 2020 07:53:27 -0800 (PST)
Date: Fri, 10 Jan 2020 15:53:26 +0000
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] arm64: kernel: Correct annotation of end of el0_sync
Message-ID: <20200110155322.GD5889@sirena.org.uk>
References: <20200110155004.3577-1-broonie@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20200110155004.3577-1-broonie@kernel.org>
X-Cookie: A little pain never hurt anyone.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_075328_615906_CF849726 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0571547146828911195=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0571547146828911195==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="osDK9TLjxFScVI/L"
Content-Disposition: inline


--osDK9TLjxFScVI/L
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jan 10, 2020 at 03:50:04PM +0000, Mark Brown wrote:
> Commit 582f95835a8fc812c (arm64: entry: convert el0_sync to C) caused the
> ENDPROC() annotating the end of el0_sync to be placed after the code for
> el0_sync_compat. This replaced the previous annotation where it was
> located after all the cases that are now converted to C, including after
> the currently unannotated el0_irq_compat and el0_error_compat. Move the
> annotation to the end of the function and add separate annotations for the
> _compat ones.

Sorry, just realized that a variant of this is in the series that Mark
posted earlier this week - please ignore this.

--osDK9TLjxFScVI/L
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl4YnfEACgkQJNaLcl1U
h9AAegf/XkWpAVeOMejQ9M5l67cK6WL08Qv252b12CT7oNwxU1hfXzmQOYjXz+lt
stgLMSvtDRjRFT5AIls2Zxpk5oKm/xrJwuHBn41ltEYfJ2vFNUFeH7z3ypWvoMhp
iduNXXQSs8wGd67GtK8xl+5SiN7lVotW7msHSeWQfbCWgFaLApESGZiYt4uDJ3aF
B1s+0SJoS+q1r765+VEU15z98Q9PEd+M+rY44OT+/S5T1CtdQIEpzZlbBpRfOUcJ
OIVW+cli5ZuemXZqLyaok7fH3id8xMU3d6QiOvmGe1wS/Rm9/kTr/bQgy8GWKmV9
YRvaoau68WHxzC3wDcUio3D9fKs8Hw==
=DtSm
-----END PGP SIGNATURE-----

--osDK9TLjxFScVI/L--


--===============0571547146828911195==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0571547146828911195==--

