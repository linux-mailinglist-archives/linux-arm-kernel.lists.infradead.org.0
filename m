Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F028CF7A0D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 18:35:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qfHlFCpScVuzWlaHTaKMURzRVbjEtwsHJjbEtKH+/Js=; b=RAy2pJItxDmg2E+XWkmxrMVdy
	S+6o0VbYb6SuAxTRfTEX4RIfoKoXXG5mjjxWgVvyiwoQS5e3g3kBzpDw5KJM6YikxsGmE9pVj+Psc
	ylA4Jm72Ee5KY6wT8UJbh5Tz5f5Yn8ZEabxjYtlto82/LXtGm0kIvwhpkhB1aYFWqa9Ai7n5ov6ws
	npGq/z1axJ0C8GbcvC8eYv0gLRDRySdl4Z3wAJMwDGO9utW6EpCmsobKBR2aYZJHW33wuwYQ+ti+A
	sKCGkoTfhXxU9vXCFMxNg6+Jc9ao6wP5FNgdb53xAEB2O1H6OhuJSDGuy4foiQusmbZJjV+CQP4AI
	RJJ5IJWZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUDbI-0003tn-GZ; Mon, 11 Nov 2019 17:35:40 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUDb6-0003sk-33
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 17:35:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GlQJdcse6wO1nHPeRjgm0snqCR0okS99BVp/xqVRpiY=; b=cdX7Ac0A4CqBU+v0mannGiJ+H
 7NsaQS9+uir92uYkkB2874BsR+aoLOS0G0Av6p1tZe4W+lFJhem2xVt+Lj7usmPOdpn6ViBd91xBS
 21p6jNdqGN99ptsq1QEeq0lFisnnopjqZMSE39ycEV0GfVkcrGIbLxTTp+3XMVg6ilK+8=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iUDb3-00056s-Hq; Mon, 11 Nov 2019 17:35:25 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id AC7BF27429EB; Mon, 11 Nov 2019 17:35:24 +0000 (GMT)
Date: Mon, 11 Nov 2019 17:35:24 +0000
From: Mark Brown <broonie@kernel.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v8 1/4] arm64: Add initial support for E0PD
Message-ID: <20191111173524.GC4264@sirena.co.uk>
References: <20191108170116.32105-1-broonie@kernel.org>
 <20191108170116.32105-2-broonie@kernel.org>
 <97449111-a649-8e78-7f33-afbfae293eaf@arm.com>
MIME-Version: 1.0
In-Reply-To: <97449111-a649-8e78-7f33-afbfae293eaf@arm.com>
X-Cookie: A lie in time saves nine.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_093528_134444_AEC1A023 
X-CRM114-Status: GOOD (  12.11  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6740045904983630893=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6740045904983630893==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="CblX+4bnyfN0pR09"
Content-Disposition: inline


--CblX+4bnyfN0pR09
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Nov 11, 2019 at 02:22:33PM +0000, Suzuki K Poulose wrote:
> On 08/11/2019 17:01, Mark Brown wrote:

> > +	/*
> > +	 * The cpu_enable() callback gets called even on CPUs that
> > +	 * don't detect the feature so we need to verify if we can
> > +	 * enable.
> > +	 */
> > +	if (this_cpu_has_cap(ARM64_HAS_E0PD))
> > +		sysreg_clear_set(tcr_el1, 0, TCR_E0PD1);

> As mentioned in the previous version, this could set a superfluous model
> for people to do the same check for future SYSTEM_FEATURE type capabilities.
> I leave it to the maintainers.

To also reiterate the check doesn't hurt anything and avoids the
potential for future breakage if the capability gets changed (which
would be good to do).

--CblX+4bnyfN0pR09
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl3Jm9sACgkQJNaLcl1U
h9DmJwf/fxqH/Vhl/65JZWWFB8QNEN96T8bT3WzNYb1Mq1razoIDsXSLA8a8r+rM
dpy80CFxr/obLK5EHcp0xoNK6QXxexThGbeW5ohk33u9NHTnywcPNUCGWncX5YLO
QYpgs9u7m2p102yQt1xtnRC57MOpQoYLt1QtBXMUv7Mkh9skexfb3lFglz5GFGmc
Ip5Sq6P7qahIAAagxpxsfAnIbP9m0v5Lcb0qqQtOWA5ti7Fz78p6YMzEPjzJfqr5
+Sqnh6g3DXuv469+aBxLULNA+uLfMVQ6ZzaUxRfgwvzEh5RnMHJky5mn5ECmIoZs
yxtddNbwGlh8yqYqpF0DaM63eur66g==
=O4WX
-----END PGP SIGNATURE-----

--CblX+4bnyfN0pR09--


--===============6740045904983630893==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6740045904983630893==--

