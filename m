Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF4036CE35
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 14:42:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PPJxC8MAUsoqCFeHvxGQeedueIGtH4JHM2Vh+SVKA/I=; b=DBAJsR2lCOAEAa/jUDTBrmDwT
	+ApBmIAcyF0qXd1JdjMGYzBcgdVnYeO3j31Xt2g1SHN6ZqbyZVgulD6uDQiJBMOtU+ZXbY0huV44n
	9HepfaQWeQIS+E8E5z0GwGVTN3QVHud3CGVqhuhwUxnL7wO+BJtRzMi3zOdXECgyPbYmaUB0iL2Cs
	GzG/ZBzrZ2a+IMyQZNLWNvnZ5PTSPcCdlxFPMEi2x+WEIOHZCzCearidDLIeqb0+7RfLUpMs1/Wzb
	Ist9yi12u0lTbGOYfFgY1OTSGFMWeP656TAKzip4Z3V+0WIlTsR4XDuPO2/U6y709XVydwH4oMtRK
	v9s2OXbdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho5k0-0003jb-O6; Thu, 18 Jul 2019 12:42:32 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho5jn-0003h9-VO; Thu, 18 Jul 2019 12:42:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=97iz0EUWZlHvSR1KETE+17fDoRRlcFuBfeynygFKsIs=; b=Qt1RPRvlW1Muxc9mj4Ir1W7+z
 Dk9zkwmBN4pzOrhri+Re1M12iUcpufQ0/8BC6msVCQtog9iUmesIzbeUDwddgxukWXDXHnHfVq4LM
 ewqJmIMfdBm7/LP5nNTgCPcAVfogIORirRaqqtAphlI2Mu89pT2xT8GBpd9X7mBVdhz1g=;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1ho5ja-00054y-94; Thu, 18 Jul 2019 12:42:06 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 9D68B2742C11; Thu, 18 Jul 2019 13:42:05 +0100 (BST)
Date: Thu, 18 Jul 2019 13:42:05 +0100
From: Mark Brown <broonie@kernel.org>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH RFC 15/18] spi: bcm2835: enable shared interrupt support
Message-ID: <20190718124205.GC5761@sirena.org.uk>
References: <1563398164-2679-1-git-send-email-wahrenst@gmx.net>
 <1563398164-2679-2-git-send-email-wahrenst@gmx.net>
MIME-Version: 1.0
In-Reply-To: <1563398164-2679-2-git-send-email-wahrenst@gmx.net>
X-Cookie: Oh, wow!  Look at the moon!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_054220_017781_7DE0133B 
X-CRM114-Status: GOOD (  12.61  )
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
Content-Type: multipart/mixed; boundary="===============0261155177399359522=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0261155177399359522==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4jXrM3lyYWu4nBt5"
Content-Disposition: inline


--4jXrM3lyYWu4nBt5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jul 17, 2019 at 11:16:01PM +0200, Stefan Wahren wrote:

> +	/* check if we got interrupt enabled */
> +	if (!(bcm2835_rd(bs, BCM2835_SPI_CS) & BCM2835_SPI_CS_INTR))
> +		return IRQ_NONE;
> +

Is that checking if the interrupt is enabled or if it is asserted?

--4jXrM3lyYWu4nBt5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl0waRwACgkQJNaLcl1U
h9DXWgf/UdhMSHRqy96YYYrw7w/DUF7Ux7xxSTDm4Zgeeq9bP+Vr2GWqaJ22rQ1M
Th8kef/qXTuTcl1rLBsfHUwlyDpd64UeqruM1k1C32tb1+ndLdrFCJtU4zWk6rYv
aTyrWZY1BizwCauMhgma4vFhUHgSPA/SuiR/QCuHvxbW1P3XNdbu7lsPq73rlgm6
6I+V3bd9tR5O94zCsahPQVpcypuYfcrTe0K3Tt5Be1XgwUXOuIDuf2T9ozwYFqLV
zQ99ahOK9exTNsr5fhUUSt9d6NIMCLdxh0kQmRVwZXWO+hpze0+l6CIZLsS29dFb
QVJy+x+gGQcWY4pMb/8J4DTc/t/2Fg==
=MKGY
-----END PGP SIGNATURE-----

--4jXrM3lyYWu4nBt5--


--===============0261155177399359522==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0261155177399359522==--

