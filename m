Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA32D6D438
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 20:53:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jBrBHXMUcSr7Rc0slN1ewqnR4ttjx3t/xVv6OR24UwI=; b=FzwOGtjl95U4bTVttPtDJ4aX4
	2OBdIv0mvqrlgnYGQFnravgjb21TunRCdUlrCrDAWAiVQB8LuMI82hdF9D3p48HWgb2x0ErZnYOKy
	e9ODNM1Tp8PiJl8OalT2n6Pkt4KHjDeD/XEvL31Xj9mEtaeqK0vpDsqidHiPJI/QsvcbOcycpWx9S
	M7y1qq+87ByKeplV5Qdn5jJIejZeKjhV8KnY2+XfYqNt34Tjlbri9Cc/quXQMoMlDpc8h/fJMCAdD
	ugRkwVDC0P2gAmdcVOZ7h6RpqWRjjrurpId9mT6ErGdep3bUKRMAPUmuFGtzjt29hI57rhvre+V+Q
	L4VrGHthA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoBWd-0006Wn-By; Thu, 18 Jul 2019 18:53:07 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoBWT-0006WB-4I; Thu, 18 Jul 2019 18:52:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=v4vCvGRGvUHn6CC4va2L0tFZHJtNopsWhOoDhb3bUuc=; b=X1xbwNx/BKxxT35ppmYKyYzmb
 NmvAYVpOXJyGz0LSRB0UtyjQM8dtFuAeUuM0s9z4BOH3KlJWcdnR7WedF5lxLoi2xh7Z880ez0ofg
 FsZdxphCtQZfbKYP4WrUHbFCebdMoSxd/i+bcK4aklJkZQwKVKbCaKlgFlk9c/iz40vtg=;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hoBWB-0005od-Vq; Thu, 18 Jul 2019 18:52:40 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 20FE22741738; Thu, 18 Jul 2019 19:52:39 +0100 (BST)
Date: Thu, 18 Jul 2019 19:52:38 +0100
From: Mark Brown <broonie@kernel.org>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH RFC 15/18] spi: bcm2835: enable shared interrupt support
Message-ID: <20190718185238.GH5761@sirena.org.uk>
References: <1563398164-2679-1-git-send-email-wahrenst@gmx.net>
 <1563398164-2679-2-git-send-email-wahrenst@gmx.net>
 <20190718124205.GC5761@sirena.org.uk>
 <b23c7a5a-a432-5af6-a7dc-0a7dfbe57712@gmx.net>
MIME-Version: 1.0
In-Reply-To: <b23c7a5a-a432-5af6-a7dc-0a7dfbe57712@gmx.net>
X-Cookie: Oh, wow!  Look at the moon!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_115257_182511_555AB1CA 
X-CRM114-Status: GOOD (  18.61  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: multipart/mixed; boundary="===============7804270549648038227=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7804270549648038227==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="KR/qxknboQ7+Tpez"
Content-Disposition: inline


--KR/qxknboQ7+Tpez
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jul 18, 2019 at 07:53:43PM +0200, Stefan Wahren wrote:
> Am 18.07.19 um 14:42 schrieb Mark Brown:
> > On Wed, Jul 17, 2019 at 11:16:01PM +0200, Stefan Wahren wrote:

> >> +	/* check if we got interrupt enabled */
> >> +	if (!(bcm2835_rd(bs, BCM2835_SPI_CS) & BCM2835_SPI_CS_INTR))
> >> +		return IRQ_NONE;

> > Is that checking if the interrupt is enabled or if it is asserted?

> the BCM2835 doesn't provide a SPI register, which shows that the
> interrupt has been asserted.

> So i think, Martin tried to adapt the workaround from spi-bcm2835-aux
> which has the same problem.

OK, I don't know what that workaround was or exactly what this is
checking but if it's just checking if the interrupt was enabled then
there's going to be cases where this gets called while interrupts are
enabled but due to another device asserting the interrupt.  If the
driver can cope with that and this is just an optimization then fine but
if it's relying on this there's an issue.

--KR/qxknboQ7+Tpez
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl0wv/YACgkQJNaLcl1U
h9D8ugf/Yqa+EMN+dWqnAv+bqeF9ydPnXTxlwHr0IBS4W6gCC6WlCL4eq0oQ/h2S
oOWRu8bSy6KZqh+MuL0dmI6CywFhc8498IDv8GnUsgJc1C7yzMn6paJu2yShluzk
bY39YeACqjyrRmGq5gPynzzvvk46YWSapkdg0yjSUb+u6oO4PHTsz5H2xpCzU56S
rY2fMljx7AUhfKWe0olLV/uwHeXIut40kh1WKrOw/e3Hij3ltXeHryQD1Rg96j4+
jKV9t+MqtL5rG22Qz5sGwGAeq1gmJhZrHmmV9fgGZaIItFmxxf7MuMI7lkuoyZx3
zKE4Dj7fj6mKKpb5jJxG0s6vDS0Q1w==
=dhAE
-----END PGP SIGNATURE-----

--KR/qxknboQ7+Tpez--


--===============7804270549648038227==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7804270549648038227==--

