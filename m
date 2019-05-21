Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20DB0259C5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 23:16:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=D2TSA+EAgj7Jyo7Ynyj0ex6KoypPF40U7nELXtDySPQ=; b=bEwFpvLTbAWZ/yHisg63vbwad
	tJ/+Co/pEWADipq/v8PXj0VqKNWI4VfcHwn2eoVISw4dRzp3ScJlB4mBhc2XPW/8bJD9EQXOTHTY6
	i+PlPNYb6wzB9HR8IMGJLUMKWO2td/heeipPSMRYguJNlRNqsu0IdXtTlxZ3YmmNPq0vwOEn/OsaP
	rjKSduk3jvvatRFcMGZVudeZrGqx+XG8vDI5IL5L1nPCzSnTePGPDz63nyVFG3xAsSBYsbzo52inM
	2mz3sDvWU/sTC3u5d2kBTRmYmOsR7ICfv5IRdQXLM5Tm+Mb7LEQgGTbebUSjAZl9qtEGShrdZJBf/
	PtskCxdxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTC74-0006Fd-5Z; Tue, 21 May 2019 21:15:58 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTC6w-0006EK-LK; Tue, 21 May 2019 21:15:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bFiSTaT4Q2eSspIIAHqbLl4xHrhY1SulOd0XMMPdQZU=; b=W61N9hJVbVfk3mtqrw/yTJxGy
 YGHlgispoUAXZLDDXJptKco7gnR0larMM4fzZ7yGaCvwu4AG0KgmdAMqPM4j8KbMKCszLROv260Fl
 Ys/rRapYAaoCqZvUCyWKifrXMlauPCybBuJD6VEWXcmaNNDK1LjwjCulNlbZwk85ZzVm0=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=debutante.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpa (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hTC6u-0002Fx-N8; Tue, 21 May 2019 21:15:48 +0000
Received: by debutante.sirena.org.uk (Postfix, from userid 1000)
 id 339121126D13; Tue, 21 May 2019 22:15:48 +0100 (BST)
Date: Tue, 21 May 2019 22:15:48 +0100
From: Mark Brown <broonie@kernel.org>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH] spi: spi-meson-spifc: update with SPDX Licence identifier
Message-ID: <20190521211548.GE1580@sirena.org.uk>
References: <20190520140452.30167-1-narmstrong@baylibre.com>
MIME-Version: 1.0
In-Reply-To: <20190520140452.30167-1-narmstrong@baylibre.com>
X-Cookie: Klatu barada nikto.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_141550_848705_642EBC75 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-spi@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============1569068008384590498=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1569068008384590498==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="GxcwvYAGnODwn7V8"
Content-Disposition: inline


--GxcwvYAGnODwn7V8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, May 20, 2019 at 04:04:52PM +0200, Neil Armstrong wrote:
> index 616566e793c6..20413def4cfb 100644
> --- a/drivers/spi/spi-meson-spifc.c
> +++ b/drivers/spi/spi-meson-spifc.c
> @@ -1,14 +1,8 @@
> +// SPDX-License-Identifier: GPL-2.0+
>  /*
>   * Driver for Amlogic Meson SPI flash controller (SPIFC)
>   *

Please make the entire comment a C++ comment so things look neater and
more intentional.

--GxcwvYAGnODwn7V8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlzkaoMACgkQJNaLcl1U
h9BHUAf9GB3ropLIXJhU8dEhK1T6AsQ2s+d1xMhXjSzVIZRgTMg/hYap+PnSYoEP
4ZBpi/9WeXKntdAxw7zRiFnoq9rYtGagtTJR0ja010dVBz2erwlPoYWSUUHeKRKx
4OKncRLCGY5KUtk48ywFrUdUkvJQeKGfR9PAvy0QgdSUs6lofeHJctCbbmNfWKhy
QbJQY7mcz261N6xlEpto4++2w9I+njwJjbajPoFSkB9M18FDPga0wk8t//GWPX3D
HzaurmQoSdPY+z9PaXOcsr4b3RUnLNwXdURHPXua83txGVR4GEikgbN3jFhWbjdm
6vmDIfWwXQGI83JVypiThIgS7LV1JQ==
=AoI8
-----END PGP SIGNATURE-----

--GxcwvYAGnODwn7V8--


--===============1569068008384590498==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1569068008384590498==--

