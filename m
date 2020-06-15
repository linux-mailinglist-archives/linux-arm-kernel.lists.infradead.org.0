Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 120EC1F9E79
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 19:31:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=v9mYdTy1wKUWRbLeBi5decG/Gi/SzU8UMRaZzwHWzl4=; b=ZfesvVkpnSjchvEirH7ZqjV85
	z6Cp6vVrInjbGofdJK8RBzfrD0N3CgWA4od6zRk/l3gRptdiFLNklObgabmzfGaM6X2+5RstfroqI
	tRK/6IuRr1u2XOyn0PE6NKkKlnDJ6TtFMKPBnIg8RRMds+PDcvORwQEV9vaGiWRO8sl9+gzlFXd1G
	Jh3h4igJUOvPb76vQjQ/W22v0GDZsXiM6Tj1QNgoH201nAG69OEangQZpYuxlTSA+mLBw18WKLBkx
	5VOfic0Pt4LWX+zMdwZywiZMj6VTPnOjKIalYb2ElWbQaIewbkjlaBQ/4uoHT8pZh1ZzEw4o7x4mU
	DDd/wSfiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkswj-0007kA-8K; Mon, 15 Jun 2020 17:30:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkswY-0007ji-K4; Mon, 15 Jun 2020 17:30:47 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A5E67207DA;
 Mon, 15 Jun 2020 17:30:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592242246;
 bh=zjfjIr28wp7lz1LzhG/6HN/tE1zYdIy5YMG1lFm5t3o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kbiOeSJ5hsV6hDsh+iuN2Phq6hYAF5UJ44P9QG4f+TFAQCtZ64BlSAiZYOQpulXiK
 67EgWWNfvy/lMMgh8iWjub0lDsZ+oJADxAMCsvwN6/9PXWGWHMOCffBDH1fAQ2ccWu
 cq3OE58P8henl7vX0sG5AOeHjm9kUWZlb5TbeQWU=
Date: Mon, 15 Jun 2020 18:30:43 +0100
From: Mark Brown <broonie@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH v2] spi: bcm2835: Enable shared interrupt support
Message-ID: <20200615173043.GB4447@sirena.org.uk>
References: <142d48ae-2725-1368-3e11-658449662371@arm.com>
 <20200605132037.GF5413@sirena.org.uk>
 <2e371a32-fb52-03a2-82e4-5733d9f139cc@arm.com>
 <06342e88-e130-ad7a-9f97-94f09156f868@arm.com>
 <d3fe8b56-83ef-8ef0-bb05-11c7cb2419f8@gmail.com>
 <a6f158e3-af51-01d9-331c-4bc8b6847abb@arm.com>
 <20200608112840.GC4593@sirena.org.uk>
 <bb9dbf11-9e33-df60-f5ae-f7fdfe8458b4@gmail.com>
 <20200615170031.GA4447@sirena.org.uk>
 <692bc94e-d574-e07a-d834-c0d569e87bba@gmail.com>
MIME-Version: 1.0
In-Reply-To: <692bc94e-d574-e07a-d834-c0d569e87bba@gmail.com>
X-Cookie: Offer may end without notice.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_103046_682931_5D36FD49 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 "open list:SPI SUBSYSTEM" <linux-spi@vger.kernel.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, lukas@wunner.de,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Martin Sperl <kernel@martin.sperl.org>,
 Robin Murphy <robin.murphy@arm.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============2784184953256438552=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2784184953256438552==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="t8N2qprAjL+0GVly"
Content-Disposition: inline


--t8N2qprAjL+0GVly
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jun 15, 2020 at 10:04:46AM -0700, Florian Fainelli wrote:

> OK, how about I send you an increment patch (would a fixup be okay?)
> that adds __always_inline since we know from this thread that some
> compilers may mis-optimize the function inlining?

That's fine for me.

--t8N2qprAjL+0GVly
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7nsEIACgkQJNaLcl1U
h9DSkAf+I43C4D+5MeXey+DqEhoeIq/jqtEbSPUS6Liq/5dDiTCy2KeFvsYZ5v46
Cvvn7ou6wPLdnXrPMiMdEl38cJzJfNAv7d3ydsMBlvAGRo6+3noBPoAU9k/gWDAd
ZE9v3hNFw65ZI4XUK0+SsSOrXGIW9405DEUkKvstmqE8VHyvlSwtAyztcjBJubAj
M14yKL96sow3/AUJ06Tay2iZK6k6n8VgDTy+/3AmXhX9hrw3jrE2VWYJCan9lhkZ
64cvvmhjLHeuSa3XVtVk/+qE59QwOk9fkdIOcIgWsjL21/udkyHSNJsaWLdk5dy1
1TdbguW5djIMdY6+QrNrDDQKtVU27A==
=gAli
-----END PGP SIGNATURE-----

--t8N2qprAjL+0GVly--


--===============2784184953256438552==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2784184953256438552==--

