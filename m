Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2955615D6F4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 12:52:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=siLVIZYsAGv0R4PUqZRfVkSHtc8uiYbhPh50LY9le4w=; b=oh0aWE/ji3W34orIinwECpG5I
	YrPmRW5XOX+8fc9q0lazZ775zl+/7hTliz8wYbDH6S8b6xiPJ+XNCA1VGdinIdO8hhgwllObFjaoq
	TXMANH69gH2pMyqkQtKYpF/ABCZrgatH2zl8fhiOLPiu15QzeGD+CF47r1x7BUshVJZaNk39f5bkE
	+w+VTkHmbOpUBOnpeRUDDtTaLdExEKd7vcGcofneCrsyH+cSAJHVwG7QyAWrWZH2OfWepOj8KC3X8
	W/PqWHT0EcBp4nbkxFlpi3H2jOqCbUSCpM9jJVqT/PfBLid5tA/i+qQiF0pXldyPABGcELSr1y4tw
	zZk7AvymQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2ZWN-0000eT-54; Fri, 14 Feb 2020 11:52:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2ZWF-0000e1-9F
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 11:52:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9E7F61FB;
 Fri, 14 Feb 2020 03:52:25 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 226523F68F;
 Fri, 14 Feb 2020 03:52:24 -0800 (PST)
Date: Fri, 14 Feb 2020 11:52:23 +0000
From: Mark Brown <broonie@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 2/3] PCI: brcmstb: Add regulator support
Message-ID: <20200214115223.GD4827@sirena.org.uk>
References: <20200213025930.27943-1-jaedon.shin@gmail.com>
 <20200213025930.27943-3-jaedon.shin@gmail.com>
 <CACRpkdZ9A_SJzxQ__f0oani+A97N3yLT3=oJ8z3vNJ5Ucyo8vA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CACRpkdZ9A_SJzxQ__f0oani+A97N3yLT3=oJ8z3vNJ5Ucyo8vA@mail.gmail.com>
X-Cookie: Shipping not included.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_035227_368059_21EA9A23 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 linux-pci <linux-pci@vger.kernel.org>, Jaedon Shin <jaedon.shin@gmail.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Gregory Fong <gregory.0xf0@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: multipart/mixed; boundary="===============4105403637359655157=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4105403637359655157==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="n/aVsWSeQ4JHkrmm"
Content-Disposition: inline


--n/aVsWSeQ4JHkrmm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Feb 14, 2020 at 11:06:51AM +0100, Linus Walleij wrote:

> So what this does is just grab any regulators, no matter what they are
> named, and enable them? The swiss army knife used is the raw
> of_* parsing functions.

> I don't think that is very good practice.

This is a really bad idea, yes.

--n/aVsWSeQ4JHkrmm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5GifYACgkQJNaLcl1U
h9B2eAf6AlfgcXVwjWMVaMTivIUygM0+voTVyprPV7jZikrhNh9WfCEYT2rCwl7V
x3IS1o4VC/DoWKAmIDRDoBWQtV/PAjcpZNNQKvoDgnDn2J7tw2E0z5Lv804vYYie
6t3PpH2Ej3keot9zw1ejqSXscYcDGSI9m20WQ24//GN02odOQoPJPxQy3mPCKo9o
WpjM3JuJUtxuLn5Yc5BLFRp2ExVTf1mHW7nq1ZqJnji8si5w5VEVG0G6f4xX7HDk
DyZl0KMSE/26bbZJbGLtllifM1zyjR/alO2uFht6OPmCgAV0vJGY89PPpsIhUngb
GfyDJRsCr9Q2PiyhC0U1hAliTG9V2A==
=vGa9
-----END PGP SIGNATURE-----

--n/aVsWSeQ4JHkrmm--


--===============4105403637359655157==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4105403637359655157==--

