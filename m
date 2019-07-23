Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B9E371D84
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 19:18:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6/9xMUvD88uRxJQ1HOW37yyQQxUPZrRmEQP41/zh0Xk=; b=dphFWHzGXSis4IRcx5BpSPeue
	NbhbZ5ZwqMYy3M7IMICDlKj8bp8Bfqrbjg24FpF91rfpo8NQctjX5+kGoisy4fgghAu+Z7TbJ7/Dp
	ltFCLnqxnZOipLuVqZp5UVBHD1ILIGrEuPwcUMZdN0EpSIpzo8PNgGSRlpaqkuWdhVD6mNDNGT7h8
	f98fDY4roomTmbYp2Wb1az2dkOE/UzRLvtVXHCvZuYZE93dnc8cAImLWxCFkgBzp9r9qiynqnnrDl
	OZjIWCIYtiE4k/foe3FzGtF1XQxUfaTdE/j8X6q4id85MFowLvGb62NkStxMzsOyTXlSkNzX9PiuV
	xxjVjJ8vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpyQu-0004Vl-Gd; Tue, 23 Jul 2019 17:18:36 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpyQg-0004Uk-OG
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 17:18:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kyS8UoyEXLK9klPXBrfSLR6RZyvQr6RpHt8wwJVmpgY=; b=JGH3UWfecknIwyubS3CMgNY+H
 rOiIidkBoW8oXQVuwRgcQ2pbCW0HW1VxN+eYgIhD2DlICwqpFT/QJdl3Je2O4tV5YcJtPQoew4mvd
 +hw80g23eqcI4A7htRPFBHkm366xAwQH8/IHplNychyonnV7dE5opYL6iKISs1TGDqo38=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hpyQb-0004L3-W4; Tue, 23 Jul 2019 17:18:18 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 255272742B59; Tue, 23 Jul 2019 18:18:17 +0100 (BST)
Date: Tue, 23 Jul 2019 18:18:17 +0100
From: Mark Brown <broonie@kernel.org>
To: =?utf-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>
Subject: Re: [PATCH 1/5] ASoC: atmel: enable SSC_PCM_DMA in Kconfig
Message-ID: <20190723171817.GP5365@sirena.org.uk>
References: <cover.1563819483.git.mirq-linux@rere.qmqm.pl>
 <ee65cc7b889b2a8d1139d1d25977842c956d1cf4.1563819483.git.mirq-linux@rere.qmqm.pl>
MIME-Version: 1.0
In-Reply-To: <ee65cc7b889b2a8d1139d1d25977842c956d1cf4.1563819483.git.mirq-linux@rere.qmqm.pl>
X-Cookie: Avoid contact with eyes.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_101822_795502_8C58054C 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alsa-devel@alsa-project.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Takashi Iwai <tiwai@suse.com>,
 Jaroslav Kysela <perex@perex.cz>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8286793214168287420=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8286793214168287420==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bvgsfYmVhxWy/2TA"
Content-Disposition: inline


--bvgsfYmVhxWy/2TA
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 22, 2019 at 08:27:20PM +0200, Micha=C5=82 Miros=C5=82aw wrote:

>  config SND_ATMEL_SOC_SSC_DMA
> -	tristate
> +	tristate "SoC PCM DAI support for AT91 SSC controller using DMA"

This breaks the build for me:

ld: sound/soc/atmel/atmel_ssc_dai.o: in function `atmel_ssc_set_audio':
atmel_ssc_dai.c:(.text+0xbd9): undefined reference to `ssc_request'
ld: sound/soc/atmel/atmel_ssc_dai.o: in function `atmel_ssc_put_audio':
atmel_ssc_dai.c:(.text+0xc74): undefined reference to `ssc_free'

It's not selecting the SSC comon code.  It also looks like it'd be
sensible to add a dependency on the platform (or at least architecture),
with a || COMPILE_TEST to help with build coverage.

--bvgsfYmVhxWy/2TA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl03QVgACgkQJNaLcl1U
h9DBZQf+JgxSye18m4nNkKnsgjUuG28GzeGRZgauDTClvkb/W5198CjJg1y7Xxbd
gEMn+eyBP2iwXez0dYeRw0mye4Zbl9VJfhCwN31JslTIlXwpNZxSH1TF/tgYnoXn
hkM3zfs7b5OdVmZKVY5Y7+27JkL105jf5yf7V6oj+8s+hVSmuwZZqodwy0LF+NsM
A0CDfSaTFQuM5NV6FmA4xoqju935Eo7pWauKRhJr4zsSCk5R+R5SbHzNtcBO24Kk
Rcbb+/BoLFdhySnAf1+FhvsNNNiHSTC8PM6sCmDU2sTI8NXj9F6BbP7DFq+NoqsG
qEFuuCbXXLuFYmtHWHII3zEkqcAPHg==
=pVk3
-----END PGP SIGNATURE-----

--bvgsfYmVhxWy/2TA--


--===============8286793214168287420==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8286793214168287420==--

