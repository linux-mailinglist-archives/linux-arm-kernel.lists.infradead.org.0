Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 084F71EF5CE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 12:52:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=s6HnqHJuRWH2DnKJdGlFv3gThMVcpzolgs0ypzp3eL4=; b=cgJNVqByS8V+xOTbhMTyKZ6Dp
	W0n51tRTxpUnpRDfzrc9azrczT2a6F5YQ6rJyotXL0+g73557MwIrRhsnRYp4PDGUtsau1LnhU46e
	P1m327nzqvGUe8WNR6entw4UDhJTPnDxJUQ9La1r+Erh4Af2qR0YnIJJC6JDaNIZog6qBILrwCupl
	qkRbe+HLC4C/J8dNBHAIG1l6ZF75qo8cKI/KxpYqP81q0pabxW04aog/lZ5rg8uJIc75P0lHiQ5jR
	JfAXxpme3ljL4EK1ebP4GGxQeI5uQF77ORk6q3dr8ZnpivGT0Z+aOqevVi89fRskBgAsRZp42XSzq
	bu46YWTsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh9y0-0006SH-To; Fri, 05 Jun 2020 10:52:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh9xs-0006RN-Ry; Fri, 05 Jun 2020 10:52:45 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0EC742067B;
 Fri,  5 Jun 2020 10:52:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591354364;
 bh=XeO7tDwju/KKDj9cqR21WNubY9Btw3JqGz5Uwz9OKbw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qe1KvqeoJ3GrXMBQtdvkR44KDnjq5QKYn/VkETjh2pBcVx3ZDQGOGTARRoku3uwLi
 6LBFG2SquriXQ72zOOFCUuEAKpxBeOHmb6PimnlerU7in2u8Ye3UqEa+6FtQY+N9st
 TeEXUeHueqXJCRLpRNCxWK0yCG0yKubP6sMjgSzU=
Date: Fri, 5 Jun 2020 11:52:42 +0100
From: Mark Brown <broonie@kernel.org>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v2] spi: bcm2835: Enable shared interrupt support
Message-ID: <20200605105242.GD5413@sirena.org.uk>
References: <20200604212819.715-1-f.fainelli@gmail.com>
 <f728f55fe6266718b5041b6f3b1864a673991129.camel@suse.de>
MIME-Version: 1.0
In-Reply-To: <f728f55fe6266718b5041b6f3b1864a673991129.camel@suse.de>
X-Cookie: Air is water with holes in it.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_035244_928100_579CADE9 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 "open list:SPI SUBSYSTEM" <linux-spi@vger.kernel.org>, lukas@wunner.de,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Martin Sperl <kernel@martin.sperl.org>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============1248120252462732191=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1248120252462732191==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="MAH+hnPXVZWQ5cD/"
Content-Disposition: inline


--MAH+hnPXVZWQ5cD/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jun 05, 2020 at 10:46:57AM +0200, Nicolas Saenz Julienne wrote:

> > -static irqreturn_t bcm2835_spi_interrupt(int irq, void *dev_id)
> > +static inline irqreturn_t bcm2835_spi_interrupt_common(struct spi_controller
> > *ctlr,
> > +						       u32 cs)

> Keep in mind the new 100 character limit.

That's more about stopping people doing awful contortions to shut
checkpatch up than saying that it's a particularly good idea to lengthen
lines.

--MAH+hnPXVZWQ5cD/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7aI/kACgkQJNaLcl1U
h9BVmQf/W9KSnmOIyYg8dG9v7/Nw5sW+8xZrwv7u3lUTml6tEdkKhOHIetp1TWoR
QSQkErpuKwkAquozYTfN67RuBNaHMOQLYKCLlqXiX7ZLXdZrLJOczzClOy71/Cn4
bTPXoYID265sBbycA3+v/fXd9ZtjXs8a2hhnl3XJLTpVJCgGcfz8guY9gxfLvxIN
gYwHRQO6m7/QvpCZSW8TjeFJfbsYbgLTv8QVSD49zG9y7PkZsdZ5BH4Qq8JU/Qw8
KBJIlMPBi30TKFmIz5ZF0jyEDizUKoI1GLESuBkugr7Vy2xvOGBsgh3XT+YnBJWY
xtaHN3xC6DFvqASDSztVTnCOsNSmvg==
=wEcm
-----END PGP SIGNATURE-----

--MAH+hnPXVZWQ5cD/--


--===============1248120252462732191==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1248120252462732191==--

