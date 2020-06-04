Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BD321EE64A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 16:05:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=C6CBTObquv2SHxPvqlmauJtoIAcOmYa1/cArFJfq2LM=; b=JnYMYuz4Psifq4NuXvi2sajGp
	46K+8uz5MpUGNA7lsgBL2L35kZqBA2PoOFstToV8vhzh0B5d+CCsxAvRmIKhMFMD76lAafj2rziB8
	ohL4YA20dUpA4rX03+YLfZJpqRqujhiGvRU0RkpA3c8x4yp7yhmhUgGpChpAoCo1RR4NhbRdC4Obk
	3H2nk96KEjncpAoAULxaAnoAEkcHK8PE5Nn3Jk1b2lXYh9LKXgxMunc/ParcuFVr9bnJEDSIEdeMS
	jRcZrS87T0Et+FAvdnxhztUjM8ZYrZ7JjNW4NtE+VRgPkX3YidSbJiOnBtwjCYuK1DM44EWaRsusz
	T7pylhNlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgqUk-0003ez-Ud; Thu, 04 Jun 2020 14:05:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgqUc-0003e3-9r; Thu, 04 Jun 2020 14:05:15 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 791F820738;
 Thu,  4 Jun 2020 14:05:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591279514;
 bh=Epk5WMtzALPNz+dltu72WrLGhF9VGMjphVrnc6COsEA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sf7Hy+B1x7rYiLFDGpZcfyrckIXZn5Y1kIlUFPDPjdiiOSqQtrTMcxXb0oGyI9iLn
 8jCUl4YlcOzZKOCauoNq2XeYV6TUrG/h8/TnYezlbVFMIHtNSI9OXb0L7C8W5p2kFL
 tL+4fGnqSSpZVdGYrCnig3VUHI1yScvIB2HDtq+4=
Date: Thu, 4 Jun 2020 15:05:11 +0100
From: Mark Brown <broonie@kernel.org>
To: Lukas Wunner <lukas@wunner.de>
Subject: Re: [PATCH 2/3] ARM: dts: bcm2711: Update SPI nodes compatible strings
Message-ID: <20200604140511.GF6644@sirena.org.uk>
References: <20200604034655.15930-1-f.fainelli@gmail.com>
 <20200604034655.15930-3-f.fainelli@gmail.com>
 <20200604042038.jzolu6k7q3d6bsvq@wunner.de>
 <20200604111325.GC6644@sirena.org.uk>
 <20200604112112.b3k4wrftckndscu6@wunner.de>
MIME-Version: 1.0
In-Reply-To: <20200604112112.b3k4wrftckndscu6@wunner.de>
X-Cookie: VMS version 2.0 ==>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_070514_402940_33E8FE27 
X-CRM114-Status: GOOD (  14.11  )
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
Content-Type: multipart/mixed; boundary="===============7614385480979420896=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7614385480979420896==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Zi0sgQQBxRFxMTsj"
Content-Disposition: inline


--Zi0sgQQBxRFxMTsj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jun 04, 2020 at 01:21:12PM +0200, Lukas Wunner wrote:
> On Thu, Jun 04, 2020 at 12:13:25PM +0100, Mark Brown wrote:

> > Regardless of what's going on with the interrupts the compatible string
> > should reflect the IP version so unless for some reason someone taped
> > out two different versions of the IP it seems odd that the compatible
> > strings would vary within a given SoC.

> Hm.  I guess it may be possible to search the DT for other devices
> sharing the same interrupt line and thereby determine whether
> IRQF_SHARED is necessary.  The helper to perform this search could
> live in drivers/of/irq.c as I imagine it might be useful in general.

That's another option, yeah - it'd be DT specific but it seems neater
than a property and much more tractable than trying to dance around
doing this in genirq (where we'd end up with callbacks when the second
device registers or something else horrible).

--Zi0sgQQBxRFxMTsj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7Y/5YACgkQJNaLcl1U
h9DPAwf/UjD04C156SRCI5cTBUUAOg/X61gumN+fuyVQkAPs8CeP4cmV4HjtuXG2
9LOnl4/Bdq17EjTvWg6+HAQvBa7i0pwE8ppy8gqcGiNqq+dn5+n9ZpcLvDea0tLX
h2jq4LUfR3X3OgnTILP69XeLpk/ePNcpFTRij3YMnGqoa8VnlXiqP45YLEgVp0LK
RHlYDfzgBy1NxyxckRk+emfSKseAHtWQjUz4P2zvyKUXl/tqW+Lwc/fGlfE3QfFu
Eo1q4X4V2DuX83TzbvM8VXdJ/Lu0V05gyeYoEcQU+7j8MGno+JpLRX9C2J6uXwG+
edz4Gd9KdV/56AJOMrKWO0i8BPznbQ==
=DHOU
-----END PGP SIGNATURE-----

--Zi0sgQQBxRFxMTsj--


--===============7614385480979420896==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7614385480979420896==--

