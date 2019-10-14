Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 960DBD6087
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 12:47:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xW2xi6DjRInnThD1URABScnUVjpEC4cTnViKFydecw0=; b=k+nG5o5bR+a+B1EOsQmpIAaMc
	0HvcShM1H4TeX+twSDjon1JECrruoEbK4gfdBVtOTcOYdvdmIrcSfkpxNGiPVkwWgNQiHERquL1yS
	wtZ8ZDtBttT94ynYJcY0v86Csloj4a9UNqZxVFqZNrrmrxLXLyKtLckMpwq4wqZ9LL5HAEfv3Nz1z
	LmlBoN/6nRzs4bRaAo8niCieJPsbHSYo6wKx2pRV0GjBn/20XdG/db0I0k/rhHYWlaSHQ+fUR2LpE
	tOYuIWk4A8At7lV8qGl7G6r1i34H55MB6MS/H74SywNjfq1fOuVCkSBenYl6nF5LxYCJueaQ8IOUa
	BimHCLPZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJxtH-0004y9-QG; Mon, 14 Oct 2019 10:47:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJxse-0004UW-JE
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 10:47:14 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 33B63207FF;
 Mon, 14 Oct 2019 10:47:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571050031;
 bh=vpT/FdAQ44SBsZqxdUofQB31bkhK8wj8sizQkj6Rfqo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=F0VN86+4Hapr2bz8SmKNW0OAHIY5s6XTT+UUe+ks4FaZJU8axqfv6lRn4n2yxnJjN
 bQxyixquGe2nnkcmufn+A+wO7T++zcOQaj0v01N1kW1XAfCoNz/6RDCmT2E2wAY3yX
 KAkSdaQeLsqLdUEQknpou+rGkikvp6Ew36LzuQHs=
Date: Mon, 14 Oct 2019 12:47:08 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Corentin Labbe <clabbe.montjoie@gmail.com>
Subject: Re: [PATCH v4 00/11] crypto: add sun8i-ce driver for Allwinner
 crypto engine
Message-ID: <20191014104708.cur6zbabmozhwu5o@gilmour>
References: <20191012184852.28329-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20191012184852.28329-1-clabbe.montjoie@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_034712_669236_70E10BFE 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 herbert@gondor.apana.org.au, catalin.marinas@arm.com,
 linux-sunxi@googlegroups.com, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, wens@csie.org, robh+dt@kernel.org,
 linux-crypto@vger.kernel.org, will@kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6872954146111276001=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6872954146111276001==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jcraal7cz45esj3i"
Content-Disposition: inline


--jcraal7cz45esj3i
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Sat, Oct 12, 2019 at 08:48:41PM +0200, Corentin Labbe wrote:
> Hello
>
> This patch serie adds support for the Allwinner crypto engine.
> The Crypto Engine is the third generation of Allwinner cryptogaphic offloader.
> The first generation is the Security System already handled by the
> sun4i-ss driver.
> The second is named also Security System and is present on A80 and A83T
> SoCs, originaly this driver supported it also, but supporting both IP bringing
> too much complexity and another driver (sun8i-ss) will came for it.
>
> For the moment, the driver support only DES3/AES in ECB/CBC mode.
> Patchs for CTR/CTS/XTS, RSA and RNGs will came later.
>
> This serie is tested with CRYPTO_MANAGER_EXTRA_TESTS
> and tested on:
> sun50i-a64-bananapi-m64
> sun50i-a64-pine64-plus
> sun50i-h5-libretech-all-h3-cc
> sun50i-h6-pine-h64
> sun8i-h2-plus-libretech-all-h3-cc
> sun8i-h2-plus-orangepi-r1
> sun8i-h2-plus-orangepi-zero
> sun8i-h3-libretech-all-h3-cc
> sun8i-h3-orangepi-pc
> sun8i-r40-bananapi-m2-ultra

for the drivers/crypto part
Acked-by: Maxime Ripard <mripard@kernel.org>

I'll merge the dt and defconfig bits when Herbert will be ok with the
changes.

Maxime

--jcraal7cz45esj3i
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXaRSLAAKCRDj7w1vZxhR
xbAiAQCXNw9TZ+NI9M/ffhLEMVuGBoKDSMxJpeuryNZeejUpbAEAotBuhlogZFYt
6gcqR7k6JoRm4LKGytJt02QqNsKkQAI=
=JdiC
-----END PGP SIGNATURE-----

--jcraal7cz45esj3i--


--===============6872954146111276001==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6872954146111276001==--

