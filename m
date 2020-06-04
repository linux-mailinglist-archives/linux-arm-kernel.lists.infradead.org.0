Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 423A91EE479
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 14:32:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uHK+xuMY1hJE+NiBUEAj/sttjahwftCVLAz1OYOMukQ=; b=S1BYzGKbTZszaAMKgXVq/4jfC
	jxtuLA76QtsIWT852NFHAvCicMUebqA/DXyLZ2MmfHf287XTNpGI5G0Ram2wNNmHyyzgVhBtAGWYu
	yc53ySIdPpHf+tmBApumNucYgbNB0yxNgvmR8KpD4c9c278KajcmtzYn/zGYwsZCC+jUrWkvIT6Br
	EKKfwsJPZIwQFFdi2s2KDRP/eKinCehu+ZGfouB9lw/PBtXD4w7HMSa9RKsIHTbGKOAe0Y9oLvtUf
	iDgTuTGOjsg2YJQRMA7c6pugUEgA3dzQe9+PL46FPtnyFe02Jdlxf432wsiF1NZevSFlAVQ222daF
	rliPMkNXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgp2r-0003W1-C5; Thu, 04 Jun 2020 12:32:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgp2k-0003Vc-NE; Thu, 04 Jun 2020 12:32:24 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CC694206C3;
 Thu,  4 Jun 2020 12:32:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591273942;
 bh=xWvRXmDlWSNdWVDBwDzr3j3iEGNG5BOdPZkKa/+g8wQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=m7bbgp1vHatyxhUVtAxPu9EoLuN7WVqTP2JjvTmEzE0mV5+lJsvUC4hBACN+XF2Ry
 Kyngo8Xbi1YaXMjyWu+jBNrdyhzdtYcupKufGhWaO2XK7ctZDCRR/bbf65IP8D6cXI
 +FO9zESvm9SMdgNoRVUcCyutLJQj+Hx72HxTyCQA=
Date: Thu, 4 Jun 2020 13:32:20 +0100
From: Mark Brown <broonie@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH 3/3] spi: bcm2835: Enable shared interrupt support
Message-ID: <20200604123220.GD6644@sirena.org.uk>
References: <20200604034655.15930-1-f.fainelli@gmail.com>
 <20200604034655.15930-4-f.fainelli@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200604034655.15930-4-f.fainelli@gmail.com>
X-Cookie: VMS version 2.0 ==>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_053222_796344_E1E6570E 
X-CRM114-Status: GOOD (  17.45  )
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
 <devicetree@vger.kernel.org>, Scott Branden <sbranden@broadcom.com>,
 lukas@wunner.de, Ray Jui <rjui@broadcom.com>, linux-kernel@vger.kernel.org,
 "open list:SPI SUBSYSTEM" <linux-spi@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Martin Sperl <kernel@martin.sperl.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: multipart/mixed; boundary="===============7316442234593458040=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7316442234593458040==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="n/aVsWSeQ4JHkrmm"
Content-Disposition: inline


--n/aVsWSeQ4JHkrmm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jun 03, 2020 at 08:46:55PM -0700, Florian Fainelli wrote:
> The SPI controller found in the BCM2711 and BCM7211 SoCs is instantiated
> 5 times, with all instances sharing the same interrupt line. We
> specifically match the two compatible strings here to determine whether
> it is necessary to request the interrupt with the IRQF_SHARED flag and
> to use an appropriate interrupt handler capable of returning IRQ_NONE.

> For the BCM2835 case which is deemed performance critical, there is no
> overhead since a dedicated handler that does not assume sharing is used.

This feels hacky - it's essentially using the compatible string to set a
boolean flag which isn't really about the IP but rather the platform
integration.  It might cause problems if we do end up having to quirk
this version of the IP for some other reason.  I'm also looking at the
code and wondering if the overhead of checking to see if the interrupt
is flagged is really that severe, it's just a check to see if a bit is
set in a register which we already read so should be a couple of
instructions (which disassembly seems to confirm).  It *is* overhead so
there's some value in it, I'm just surprised that it's such a hot path
especially with a reasonably deep FIFO like this device has.

I guess ideally genirq would provide a way to figure out if an interrupt
is actually shared in the present system, and better yet we'd have a way
for drivers to say they aren't using the interrupt ATM, but that might
be more effort than it's really worth.  If this is needed and there's no
better way of figuring out if the interrupt is really shared then I'd
suggest a boolean flag rather than a compatible string, it's still a
hack but it's less likely to store up trouble for the future.

--n/aVsWSeQ4JHkrmm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7Y6dMACgkQJNaLcl1U
h9B7+wf9EOoVWdQtyWRHYDMiu4CbKwoDecBQAiwkL1NNap2tZFZU13Shxm6HyUp9
MyFJEmzQ8SEk2fDsXPI3oyhRHoNa18WnQkKeYoksHZOW1k2rIsNy1VFcLncQnZ1q
QWZX729ld8uBLy6Yhch8253bO7kmE9eqF3epeRJv7QWgaDrEpynYjIFbVeUOLfTV
pDkxR/SUr32j/oEkNQp7xVpNsmTgpWQ4WbR74qeKVsZEJjF/KoiPSLXcPgXXpUHR
j84dYhNyzykqbirfWmnDCHXoa35wYw2U0sQmNJCNdzRhqb1lAjoQGUP48BKR+PNm
WWM2KQ5SihLXu+2wiULmjdYHTCsSUA==
=pDpx
-----END PGP SIGNATURE-----

--n/aVsWSeQ4JHkrmm--


--===============7316442234593458040==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7316442234593458040==--

