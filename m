Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C8A11AD4A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 19:06:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=F4LCHPU2Pup+rj6Evt5P106RFrxJva+ekSFS5oFUX6w=; b=fwLUax5rTY+3MzqFDbfThZyFj
	xhmkcq1HA22qjR04aAwEfBvGK7yr+yIWEaWRQKmiDqYcP5Fnjxiy0/UHwg43tv+0slWLdoP9eOwZZ
	UV8hiXQcDJ0MinDWU6X6Pp8OxR94EsppLu3oHA9MQANAsgb1Odse82TolLTLDIWnlVTvOAaW76FVP
	5cnMM6cgySOlXY3ga7axU7f7nCBQY8/X2N/6DKVhB31q1o5Elf9NNzZaFmvtwUHkZ4IgX+7P0h3Ta
	RwOLw7atVgfknKrC2Ji0AG7qgw4OLOzSp+w5aJLdpHV4Wo3qss6sa4GY45QW/c2z9CMu/OIH7yZaX
	Iz0LbWYNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPrvA-0008Tl-HQ; Sun, 12 May 2019 17:05:56 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPrv1-0008PD-Jl
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 17:05:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=u2q75OsSvN0gs9+vI+HKmu1j+P1UgVapAAD+9M7rxxI=; b=RuxoE3LAX9keebSda6rl0E4YX
 sdxnYM8dMd4Ld7j/AwvO/B+7D1m64BAgXVoOolJHM/VlPKUO6H0ZBzN61/Mke/pSijUeyaJHLkeOK
 IL8uhxAbGX1K/eFMLrbtvOGWovUjthTKAsJHoZFS1Bge0Ral8dhc1EGCs6utORIACiX0A=;
Received: from [81.145.206.43] (helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hPruu-00044c-8K; Sun, 12 May 2019 17:05:40 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id F412C440036; Sun, 12 May 2019 08:52:23 +0100 (BST)
Date: Sun, 12 May 2019 16:52:23 +0900
From: Mark Brown <broonie@kernel.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: Applied "dt-bindings: mfd: atmel-usart: add DMA bindings for
 USART in SPI mode" to the spi tree
Message-ID: <20190512075223.GF21483@sirena.org.uk>
References: <20190505180646.1442-2-radu_nicolae.pirea@upb.ro>
 <20190508090857.B7CB344003F@finisterre.sirena.org.uk>
 <20190508105105.GN3995@dell>
MIME-Version: 1.0
In-Reply-To: <20190508105105.GN3995@dell>
X-Cookie: HOST SYSTEM RESPONDING, PROBABLY UP...
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_100547_794874_96ECD914 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.1 DATE_IN_PAST_06_12     Date: is 6 to 12 hours before Received: date
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Richard Genoud <richard.genoud@gmail.com>,
 Radu Pirea <radu_nicolae.pirea@upb.ro>, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4413205073397469885=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4413205073397469885==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xkXJwpr35CY/Lc3I"
Content-Disposition: inline


--xkXJwpr35CY/Lc3I
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, May 08, 2019 at 11:51:05AM +0100, Lee Jones wrote:
> > Signed-off-by: Mark Brown <broonie@kernel.org>
> > ---
> >  .../devicetree/bindings/mfd/atmel-usart.txt   | 20 ++++++++++++++-----

> Interesting!

For some reason the bindings for the SPI function got put in the MFD
directory, dunno why.

--xkXJwpr35CY/Lc3I
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlzX0LcACgkQJNaLcl1U
h9DQCwf/WFhMZtcust0DuMCXriQ8faNSLBTBaf77XBUl0FDL66Uge3k6OO/5RP3h
8hEh7TTviJw3VCcryu1ee9kRNUVdBqdiSHEzb18Q2gDfGmmGrJWGzj59B/47NUjz
e5enUWORH2PLwGFNmZ81Ay2w2DUvN1UPDHKcCWX1/fbJBxBkzRYiCLjZAOMh9QE6
QEKjmRIJmVnvgNYeSoz5DNo+++PUKxZYX2IN0JN9oX7LtPdjN9UL4HegW+3xflrB
IVi2Am4CNMwDCNlMDHrkdClRKmEmAlDRU3kWxlUDLezIKbA3LAiFhQ9nuXyC+Q7e
Ncn36/FFn/CtfjbD1EWLwGhBGQGoGw==
=A/JO
-----END PGP SIGNATURE-----

--xkXJwpr35CY/Lc3I--


--===============4413205073397469885==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4413205073397469885==--

