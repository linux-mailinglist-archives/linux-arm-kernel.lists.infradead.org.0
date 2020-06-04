Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 832731EE309
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 13:13:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WL1Ie9UC7aTRvnax4xqaEQpctg4BCJkfpoZG6JGC654=; b=IsdNf74mlxXJXOXh6aHAu82Zs
	AvKK4OjGDKZiOclZQPjHCU9aIY8efQnJBcd/ybhqmxfjSkZ98ZkWTmilaWSROcYUt4fixByJvOJ1j
	RXi6kvSR0I4rpmKdeuJn0U3EXsnB5BfzP4oOOaM381pHouyUsDqZ5YOAhuPnKU02LBv4Knez6gqBG
	qCFQKFoA72tO4U7icBSM14x7J0F6uIyheAtIleikJYCMYGA5s0LmtEKtzNUWpMZov/F2scBR74kMl
	wiXPJeV8fan73bN5LtDPfRTfFAcZ62yDb7sQyP4SWkLZGqKdUMoTl13SPOE6asEVnzvTqa5oG5C7X
	iRhgPa+mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgnoV-0004dF-OB; Thu, 04 Jun 2020 11:13:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgnoO-0004ch-Ly; Thu, 04 Jun 2020 11:13:30 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3429A206A2;
 Thu,  4 Jun 2020 11:13:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591269207;
 bh=Nbi1Vwcd5pL6Yj4orLCRo0b8veuEtH1O87IQWqOBnuw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QgWPc37BTO8K8KgGK1UajZ4b1MCZp4/zWB7ShZWgSgr3nnMQE0L8sIsE/S0nbnzO9
 lrtYt89a2iu+JABD68eS4UqgsyTh/wUvkBWpj0b++mqrOOKdpoabFEnSaaEV4A8b0+
 t0TNMpIQtA+hTVfAFtQJ+iUK8E4prnVk+GlFKm1o=
Date: Thu, 4 Jun 2020 12:13:25 +0100
From: Mark Brown <broonie@kernel.org>
To: Lukas Wunner <lukas@wunner.de>
Subject: Re: [PATCH 2/3] ARM: dts: bcm2711: Update SPI nodes compatible strings
Message-ID: <20200604111325.GC6644@sirena.org.uk>
References: <20200604034655.15930-1-f.fainelli@gmail.com>
 <20200604034655.15930-3-f.fainelli@gmail.com>
 <20200604042038.jzolu6k7q3d6bsvq@wunner.de>
MIME-Version: 1.0
In-Reply-To: <20200604042038.jzolu6k7q3d6bsvq@wunner.de>
X-Cookie: VMS version 2.0 ==>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_041328_738871_232EDBE2 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 linux-kernel@vger.kernel.org,
 "open list:SPI SUBSYSTEM" <linux-spi@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Martin Sperl <kernel@martin.sperl.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: multipart/mixed; boundary="===============6271593182977902453=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6271593182977902453==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="H8ygTp4AXg6deix2"
Content-Disposition: inline


--H8ygTp4AXg6deix2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jun 04, 2020 at 06:20:38AM +0200, Lukas Wunner wrote:
> On Wed, Jun 03, 2020 at 08:46:54PM -0700, Florian Fainelli wrote:
> > The BCM2711 SoC features 5 SPI controllers which all share the same
> > interrupt line, the SPI driver needs to support interrupt sharing,
> > therefore use the chip specific compatible string to help with that.

> You're saying above that the 5 controllers all share the interrupt
> but below you're only changing the compatible string of 4 controllers.

> So I assume spi0 still has its own interrupt and only the additional
> 4 controllers present on the BCM2711/BCM7211 share their interrupt?

Regardless of what's going on with the interrupts the compatible string
should reflect the IP version so unless for some reason someone taped
out two different versions of the IP it seems odd that the compatible
strings would vary within a given SoC.

--H8ygTp4AXg6deix2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7Y11QACgkQJNaLcl1U
h9BJoQf9E2n8uWIZEAGBfspqHbovoYPVluN+kh7+8y5BKxaA1Wz41xV3hGzU3Wzl
gEH2zebNk9eIG8IUALFCgrMLhlRBwBVV5D4LB5dVMvuwNWDeJOUs3cgBVuI8cd83
+avoXuMxBVRfhlC6JnUGrqHFPwpdBrcmfOK51jkDqZfoLdlm/ICsnWQBJPsfYTE1
iunoxY5P1vldrejYbghjoIn5OgtfDDV52cH68De5WX9srhWs8pwI+ZyXNmwuHt7d
FStC87OY8PDFPkpoF3wpmfF2BQPpzbn/b//Hyco7fg+NUJ+hMFNynSn+tcp5fgYB
R1ryNcVXhixXytOvVz7v7fBb8AtCxw==
=gHMp
-----END PGP SIGNATURE-----

--H8ygTp4AXg6deix2--


--===============6271593182977902453==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6271593182977902453==--

