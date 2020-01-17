Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB8B1410BF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 19:24:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QLzcrfHr1VzrxREOzleZ7OHFkfMVbx1+tFXItb9Y5Ks=; b=IXQIgtWb0teXTRT6J9Rei/gIE
	T5gCOkGS8pqytkGanrfWFzUm5PXpBwD67fY55B+Yk/OCkESbjhH244MCUl37xgj8OIcBCsdZLD5/t
	cMJmM6e/yPxMa8jPI5KnOhXB0+tLi0a/gECoQhvCVnT3H8SjNd/o1iDsXcySNTMpI0XA5bWcIaeVU
	VuFrMcEy5hs9GKU9UJw+/Q7n+badkjTofqClfUahUAdCkB9O3UQ3SiLHTFzmQQ53BTzvoO1s1QTsb
	cDCdo4RxAlGGLKwTrglu3nns3n9Fom+4jzdmMvEu3ZOXX5tsV6fzDvPzqCrItr2qwas3zb/UcY8uU
	x5tEFxuVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isWIT-0006zw-EJ; Fri, 17 Jan 2020 18:24:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isWI7-0006qj-8j
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 18:24:20 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7C404206D5;
 Fri, 17 Jan 2020 18:24:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579285458;
 bh=Unt+nafP7Qqep3NX+AoYqjNBQr2Z3oLcX0vA4oFHUas=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2cdPrlAA3Lqqp2RL/BJ7338PEXZWeq/hEckJ/ruf6Wnmq8ndU08a1aMRKS1VDYmT2
 kOuP3zy3s0A8VFqjypssRBFkv7agDt2wxflpVirVaMwjy5zDHwrWyCPMuKq2z6d76m
 WTIg5mQbT1QicvoRXz7TASuX0EC8/v7KdX3wArxM=
Date: Fri, 17 Jan 2020 19:24:16 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH v3 0/3] arm64: dts: sun50i: H6: Enable SPI controller
Message-ID: <20200117182416.5y57aa6nwulztcot@gilmour.lan>
References: <20200116231148.1490-1-andre.przywara@arm.com>
MIME-Version: 1.0
In-Reply-To: <20200116231148.1490-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_102419_368253_E4EA6645 
X-CRM114-Status: GOOD (  16.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 linux-spi@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, Icenowy Zheng <icenowy@aosc.xyz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4746198812946620712=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4746198812946620712==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zxgtfc54oobnuhf2"
Content-Disposition: inline


--zxgtfc54oobnuhf2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jan 16, 2020 at 11:11:45PM +0000, Andre Przywara wrote:
> Even though the SPI controller in the Allwinner H6 SoC is more advanced
> than in the previous generations (it supports 3-wire and 4-wire mode),
> the register set stays backwards-compatible. So we can use the existing
> driver to use the "normal" SPI mode, for instance to access the SPI
> flash soldered on the Pine H64 board.
>
> These two patches allow this by adding the SPI controller nodes to the
> DT. The compatible strings include an H6 specific name, so that any
> future 4-wire enhancements for instance would be automatically usable
> once the driver learns this new trick. For now we use the H3 fallback
> name to bind the current driver.
>
> This time I tested this actual branch  (on top of sunxi/dt-for-5.6),
> on a Pine H64, both the internal SPI flash as well with SPI flash
> connected to the other SPI controller available on the GPIO headers.
>
> As the SPI0-CS0 pin clashes with the eMMC CMD pin, we keep this
> node disabled by default, to avoid losing the eMMC if it probes last.
> People (or U-Boot) can enable it if needed.

Queued all three for 5.7, thanks!
Maxime

--zxgtfc54oobnuhf2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXiH70AAKCRDj7w1vZxhR
xTmeAP49nHNJa9zeo1OlCPzyy2qZK3R+gWNkj4KPdU33ab/+rQEA85fkrRDtIImN
woli9GP6PWrVOowW3vnovD0xbmYbDgc=
=/XyN
-----END PGP SIGNATURE-----

--zxgtfc54oobnuhf2--


--===============4746198812946620712==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4746198812946620712==--

