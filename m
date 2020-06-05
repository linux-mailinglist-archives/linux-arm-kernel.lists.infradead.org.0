Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CCE51EF558
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 12:29:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1H9pxkyqpDlxLLPjjuT5kLGlMIJWoT2CN2BSlCODMjk=; b=K1PNXOwk+1etQOmcSQL8Kkbng
	dvJHThvi7b4pNZ7krrysiM1zsekRHY5X/fqxxfOD63ZWWdW2VB1wFAPgkliGqHq3zH3sB8bswhMw9
	V8edjTXKip3RbDke+41uCs1FlISnmQvge0YdUsMQlMuUAmJ0XHmHTu7LhWqxtVLFOHKK2SNsNYcE6
	KZote3cEm3G0MucWX3oMnPrN4QN780pmadnKoorOQvj++86fi5ZaUxX9FgAm6jZ9Bdwil3lOlCLEi
	yJ40HJf83X1mNCutCBX9+A3NS0oeiOrtrdVZ+NoZMz8ic6b/LX/Ysf0XJ5P2vUUpXdvFAKx3l+3u5
	zTPamfKOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh9b2-0005Rk-1t; Fri, 05 Jun 2020 10:29:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh9at-0005RC-Jz; Fri, 05 Jun 2020 10:29:00 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 37ABC2074B;
 Fri,  5 Jun 2020 10:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591352938;
 bh=yVCgfIlqCzi+uxjyo1zLQ98C29QSMhFXMCE8J+smxzk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UM8OrjMXAVHbcSwvCYTfQDj36kyTpdwaC9wenIPr85WsEQYQcCDaaxBmNEXNkxKgx
 dzmVHYOYm06xJNMWYZaCgfbeJkZ+cZc8ulSvs4+sQTHYK+Hd+2G7odslRiKHcXPBbT
 6OmM2mF0tvQgFrf0GpONLnjjojvObsNAG0LOl3Bw=
Date: Fri, 5 Jun 2020 11:28:56 +0100
From: Mark Brown <broonie@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH 3/3] spi: bcm2835: Enable shared interrupt support
Message-ID: <20200605102856.GB5413@sirena.org.uk>
References: <20200604034655.15930-1-f.fainelli@gmail.com>
 <20200604034655.15930-4-f.fainelli@gmail.com>
 <20200604123220.GD6644@sirena.org.uk>
 <21772111-fa1f-7a50-aa92-e44b09cff4eb@gmail.com>
MIME-Version: 1.0
In-Reply-To: <21772111-fa1f-7a50-aa92-e44b09cff4eb@gmail.com>
X-Cookie: Air is water with holes in it.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_032859_695779_50939C2F 
X-CRM114-Status: GOOD (  18.91  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Scott Branden <sbranden@broadcom.com>,
 lukas@wunner.de, Ray Jui <rjui@broadcom.com>, linux-kernel@vger.kernel.org,
 "open list:SPI SUBSYSTEM" <linux-spi@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Martin Sperl <kernel@martin.sperl.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: multipart/mixed; boundary="===============8732519104207478905=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8732519104207478905==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="0eh6TmSyL6TZE2Uz"
Content-Disposition: inline


--0eh6TmSyL6TZE2Uz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jun 04, 2020 at 09:05:46AM -0700, Florian Fainelli wrote:
> On 6/4/2020 5:32 AM, Mark Brown wrote:

> > This feels hacky - it's essentially using the compatible string to set a
> > boolean flag which isn't really about the IP but rather the platform
> > integration.  It might cause problems if we do end up having to quirk
> > this version of the IP for some other reason.

> I am not sure why it would be a problem, when you describe a piece of
> hardware with Device Tree, even with the IP block being strictly the
> same, its very integration into a new SoC (with details like shared
> interrupt lines) do warrant a different compatible string. Maybe this is
> more of a philosophical question.

The big concern here is trying to support things going forwards - if it
turns out that any quirks are required by this version of the IP then it
gets very confusing and hard to keep DTs stable if you've already
quirked something that clearly isn't the IP version with the compatible
string.  Conversely if we start putting flags into the binding for every
feature that might be changed in a given IP that gets complex as we
can't ever learn new things about an existing IP version without
updating all the DTs which is also bad.

> Instead of counting the number of SPI devices we culd request the
> interrupt first with flags = IRQF_PROBE_SHARED, if this works, good we
> have a single SPI master enabled, if it returns -EBUSY, try again with
> flags = IRQF_SHARED and set-up the bcm2835_spi_sh_interrupt interrupt
> handler to manage the sharing.

Like you said in a followup patch that doesn't work as the first device
to probe will think the interrupt isn't shared.  You'd need a callback
to change to shared mode from genirq which feels...  inelegant.

--0eh6TmSyL6TZE2Uz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7aHmcACgkQJNaLcl1U
h9Cibwf/c8EkXuOornxa8rgJTVll6CNfZJosZy2JB/9uRxBsBkr+C0AmOA5gLJ0G
/blupLSwZR6QOO5HP8QR29piU1V1gXX3/zQcDnz7HtTDrD3q+SSJADKu9rMvXrMW
/FeddfnOo2o2P62qopKisrQS3tK6sRQxm/hlqCCa8lHWfDZ10Iuow00sUAnI1x9h
4OG1erLcr9L5tJtAWvyvbtL75yHNJl7Dbsvwz0I0+NFMLu9etTbQ4OXtwIiab6Xu
LlkhofTCHh9B3yD/Fh8RmRZNJUwcXUmjwMBbIAdITglUNtDMiJaZtxUrn25V4PiJ
UKlz+CR4Hi2Me0h1JgY79Xnam2hf9w==
=Pvqk
-----END PGP SIGNATURE-----

--0eh6TmSyL6TZE2Uz--


--===============8732519104207478905==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8732519104207478905==--

