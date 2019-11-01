Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB36EC086
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 10:34:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DTGLaJdj4dAzSDLD8a6N4zmslhhx4jY3QDfcKcS9dnY=; b=MAhyr9TTXIhSi6qedDuCQP30u
	zBHjUfXNFhzCV7lVWOZFaiR2JvAul+Pb1k8PY04P9V3g8FpEHTiX0ZAAHX9mhf3KwIcC/EKchs1I+
	Z5y41SdOZxqWMjieOODTCj8w9fqHzxgR4eMqmxSB4AMUiTfFm6tkuKYVUG6gTtQxKNlmU4RHrai1Z
	K/pZQ5EIu2XKjj97z0oO8spdmVkciL2MunzVGFUp7sZ8bD+s8JiFLszsCbj+hbKeZ/H80kg3y8l02
	xrdyrVT4pVy6eS9YxJ3IRgJ+gdgsHZ3cnegO0YzrHg5IMAefRD1LFJoB8Aqn+YIbeH5DFic8LLf+j
	Ss3QT2jRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQTJw-0002vq-V8; Fri, 01 Nov 2019 09:34:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQTJp-0002v0-Ha
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 09:34:10 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EF46321734;
 Fri,  1 Nov 2019 09:34:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572600848;
 bh=0jCij/Fv8ugOCVAh4PqFfAXdu/PxgN5AcduaY+7TskQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=r20eSui4efPABmYo7hpS0vYVKlcPj8rC24asoji9XM5GANsx40FkR/8T+L4QEfS+c
 ySou75re54nj88ZPjkzC5BKc0ECclHEmHcEdLWXOPQDeTNeNHdWNgC86bZmua5pwxJ
 tCGk8Y9PWOTFmXYWYqjI017VLS81unr9CPgr6FHs=
Date: Fri, 1 Nov 2019 09:58:57 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Herbert Xu <herbert@gondor.apana.org.au>
Subject: Re: [PATCH v3 0/4] crypto: add sun8i-ss driver for Allwinner
 Security System
Message-ID: <20191101085857.bukatiog3zxugjng@hendrix>
References: <20191025185128.24068-1-clabbe.montjoie@gmail.com>
 <20191101061154.abwwbcqzm6lg7uvi@gondor.apana.org.au>
MIME-Version: 1.0
In-Reply-To: <20191101061154.abwwbcqzm6lg7uvi@gondor.apana.org.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_023409_632130_CACD0BCB 
X-CRM114-Status: GOOD (  18.04  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, wens@csie.org,
 robh+dt@kernel.org, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, p.zabel@pengutronix.de, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7062614736909925970=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7062614736909925970==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="phjdavwqd433by7q"
Content-Disposition: inline


--phjdavwqd433by7q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Nov 01, 2019 at 02:11:54PM +0800, Herbert Xu wrote:
> On Fri, Oct 25, 2019 at 08:51:24PM +0200, Corentin Labbe wrote:
> > Hello
> >
> > This patch serie adds support for the second version of Allwinner Security System.
> > The first generation of the Security System is already handled by the sun4i-ss driver.
> > Due to major change, the first driver cannot handle the second one.
> > This new Security System is present on A80 and A83T SoCs.
> >
> > For the moment, the driver support only DES3/AES in ECB/CBC mode.
> > Patchs for CTR/CTS, RSA and RNGs will came later.
> >
> > This serie is tested with CRYPTO_MANAGER_EXTRA_TESTS
> > and tested on:
> > sun8i-a83t-bananapi-m3
> > sun9i-a80-cubieboard4
> >
> > This serie is based on top of the "crypto: add sun8i-ce driver for
> > Allwinner crypto engine" serie.
> >
> > Regards
> >
> > Changes since v2:
> > - Made the reset mandatory
> > - Removed reset-names
> >
> > Changes since v1:
> > - fixed uninitialized err in sun8i_ss_allocate_chanlist
> > - Added missing commit description on DT Documentation patch
> >
> > Corentin Labbe (4):
> >   crypto: Add Allwinner sun8i-ss cryptographic offloader
> >   dt-bindings: crypto: Add DT bindings documentation for sun8i-ss
> >     Security System
> >   ARM: dts: sun8i: a83t: Add Security System node
> >   ARM: dts: sun9i: a80: Add Security System node
> >
> >  .../bindings/crypto/allwinner,sun8i-ss.yaml   |  61 ++
> >  arch/arm/boot/dts/sun8i-a83t.dtsi             |   9 +
> >  arch/arm/boot/dts/sun9i-a80.dtsi              |   9 +
> >  drivers/crypto/allwinner/Kconfig              |  28 +
> >  drivers/crypto/allwinner/Makefile             |   1 +
> >  drivers/crypto/allwinner/sun8i-ss/Makefile    |   2 +
> >  .../allwinner/sun8i-ss/sun8i-ss-cipher.c      | 438 ++++++++++++
> >  .../crypto/allwinner/sun8i-ss/sun8i-ss-core.c | 642 ++++++++++++++++++
> >  drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h  | 218 ++++++
> >  9 files changed, 1408 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/crypto/allwinner,sun8i-ss.yaml
> >  create mode 100644 drivers/crypto/allwinner/sun8i-ss/Makefile
> >  create mode 100644 drivers/crypto/allwinner/sun8i-ss/sun8i-ss-cipher.c
> >  create mode 100644 drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c
> >  create mode 100644 drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h
>
> Patches 1,2 applied.  Thanks.

Applied 3 and 4, thanks!
Maxime

--phjdavwqd433by7q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXbvz0QAKCRDj7w1vZxhR
xVjTAQCdeiXvBM+rscw9plENTZiXAjVbmkADgjas85s2VUzpVQEA04vUS0idMiY/
RxN28qg8bHvQsTZGYtLIbTxPsSpgCQI=
=vYi/
-----END PGP SIGNATURE-----

--phjdavwqd433by7q--


--===============7062614736909925970==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7062614736909925970==--

