Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48503734D8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 19:16:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ULA3k0JJkrjRLzILI3RfxsQJ/+FxOCWPA7ge3MsZI1k=; b=I40fqBS5O52NVNybscN1WaQA3
	jN1MzeJ+NBKsliESQyjXAqnTmHCbuoR8LvAkbNROCs8xoZsAV+aJam2ZDHZsRuLWlcacRCavOSvda
	JDWdWheP/gs0eWoRvlyXUZIq3bKryHqM3Y3jsUJH5wfYjMMAjZJhiP109u0Tcou0KvZslcwli16y4
	+Z6jpgOevlZNWcgVouP/D7eVLIsAYQ+PJSLFSJ5NZ/LC0wOVFbJbwpTJpHsUDPbfbIEmaqSX3tNKM
	fRmHmbwW5Tg626ch5lbqsFz29MNqwzB2wgRPQYQVSP6RoRPl4AqInCmgX2WJK7HC/qydGCK5mJLhQ
	pvAeHjaEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqKsJ-0000r8-8D; Wed, 24 Jul 2019 17:16:23 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqKrd-0008V0-MB; Wed, 24 Jul 2019 17:15:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TzXHUjTTbk+BjMuhY4cV38Izc9snjobAy92tPxSUUT0=; b=cHWXouJRm4GoOyPvpPbZGdTjl
 9R0ZT7lK8MTVtd4e2G5wSsu1nUoRhhjZRvV6pOQE6QqVps9lQ7TsntaRLhEZ2SJjRFZ6FoKjTtBm2
 21H3l1izCI0TL5r9H5Y3Xv7TsAPPV0E5KFRPrs8CviXbJynzMLyFXHKIwgpU4dcUTVnlE=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hqKrT-0008GF-Lc; Wed, 24 Jul 2019 17:15:31 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id D58182742B5D; Wed, 24 Jul 2019 18:15:30 +0100 (BST)
Date: Wed, 24 Jul 2019 18:15:30 +0100
From: Mark Brown <broonie@kernel.org>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH RFC 15/18] spi: bcm2835: enable shared interrupt support
Message-ID: <20190724171530.GF4524@sirena.org.uk>
References: <1563398164-2679-1-git-send-email-wahrenst@gmx.net>
 <1563398164-2679-2-git-send-email-wahrenst@gmx.net>
 <20190718124205.GC5761@sirena.org.uk>
 <b23c7a5a-a432-5af6-a7dc-0a7dfbe57712@gmx.net>
 <fdbdbc92-e6fc-4e88-ea8f-bb0bc3224b90@gmail.com>
 <28dd33bc-c1b5-b976-ad19-ebf681df8647@gmx.net>
MIME-Version: 1.0
In-Reply-To: <28dd33bc-c1b5-b976-ad19-ebf681df8647@gmx.net>
X-Cookie: Matrimony is the root of all evil.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_101541_812002_0F925AB7 
X-CRM114-Status: GOOD (  19.65  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Stephen Boyd <sboyd@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org, Martin Sperl <kernel@martin.sperl.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8472746012970147352=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8472746012970147352==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="E7i4zwmWs5DOuDSH"
Content-Disposition: inline


--E7i4zwmWs5DOuDSH
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jul 18, 2019 at 08:21:36PM +0200, Stefan Wahren wrote:
> Am 18.07.19 um 20:05 schrieb Florian Fainelli:
> > On 7/18/19 10:53 AM, Stefan Wahren wrote:

> > Martin's patch is more efficient in terms of amount of register
> > accesses, but I am bit worried (based on the register description) that
> > the INTR bit is only asserted with the read FIFO crossing a certain
> > condition and that a TX only transfer may not be captured by that condition.

It looks like the driver sets the bit for TX only transfers so that's
probably fine but I might be missing something.

> > Maybe we can just check spi_controller::idling to determine if that
> > specific instance generated an interrupt?

> sorry, i'm not that SPI expert. I suggest to drop this non-essential
> patch from the series and discuss this separate.

I'm not opposed to the patch, I'm just concerned based on the
combination of the description and the code that it might not be doing
what's expected.  If it's mostly just an optimization that provides a
fast path in the case the interrupt is shared rather than a correctness
thing then it's fine.  A comment in the commit message or the code about
this being an optimization would be a good idea though.

--E7i4zwmWs5DOuDSH
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl04kjIACgkQJNaLcl1U
h9CHrwf/aVBtjOP8dRmPIFKgHsLZHydbWQgT3E0vAiM4S6BVugGONHaaZldQL4qO
1zR5xD3RdbwHznYgLp9KJ3T3aTjaSHJDyAjwf4oyiLPLroMqWX0cyRYikCJWCMZ/
1eI6QKpRKgcRm0G2N8jOXoqN1GcRTzLIEeQLy2sNbvB1uZAudGYmaO9Nf9TPruR4
D9hBNK9uN4Sg3HrBt0QO/J9UbuW3f8qRdMuCX4GujmYlzwzlaT5mjnMDI/ASKQ+r
+lg9OO/jEpj1RFPEA1SB2O7ZWRJfVGEJXDA2t+xG7RUtTlVF3s4hEvi/UJfy0nyJ
BJdDPDJpcIqFFPUUK0tuqOWBK53y7w==
=WhZc
-----END PGP SIGNATURE-----

--E7i4zwmWs5DOuDSH--


--===============8472746012970147352==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8472746012970147352==--

