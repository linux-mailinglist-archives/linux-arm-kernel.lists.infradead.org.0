Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1920F89871
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 10:08:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HOLl53ZqLBfb+9E+pOaYeKb8+IR0z5iVrdXq6/xdxig=; b=NSvwoeAt7amVMH2/adoGHWW6u
	AAm0xYAaOBUejqYqDAQjNCQa4EZqtd996Iy2Kk41EHsJtAoWUG1RFABG54K+YEblH29NFiSG3KYLu
	dqMjlP6r40rOtfzNan5E9H+beA+VJ+n8Nf6xZVmSqkkKH1SidBk6sUuf+QPukfY4ZySD/Av4CKlFk
	DdxzAiTNdKokeBTt1qqBi17AxgQ0+RlxFoWjk0DpIICJeFXGFWvmZNaNRNYfoBrBGs5NEVZMpe1Ot
	8naB6XFUyNBMJy1UaroXGGYI/QO3UgovaOVjLzE6a22Q7yFCFpWU3LD+vtb/CuZpPfN5jpW6uIEjZ
	hVqAitPkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx5ND-0002E6-4K; Mon, 12 Aug 2019 08:08:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx5Mz-0002DZ-Tm
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 08:07:59 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 62E70206C2;
 Mon, 12 Aug 2019 08:07:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565597276;
 bh=rfwD66AedIpA/3YE2dWFn8YCpnEehefOryrXd0y6bio=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TH581SWmFX5Vu6WBmaibZ4b8HqpSesdZ9B8gRjIiM+ftqFvUWyIG4J9oD/o8xDBaZ
 4EOPkWYiJUWIBlolpVAenfFXazLeuyXQ4Owqj3+RBAyWEqHZvQyniCnt3m88lmuzbd
 tnmIHtFxQyKlmk+kt7gW0A7xtcnNrGAQZcF73pBo=
Date: Mon, 12 Aug 2019 10:07:54 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH v5 0/6] Support for Allwinner V3/S3L and Sochip S3
Message-ID: <20190812080754.n7dgogopm3ytd6h5@flea>
References: <20190728031227.49140-1-icenowy@aosc.io>
MIME-Version: 1.0
In-Reply-To: <20190728031227.49140-1-icenowy@aosc.io>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_010757_984452_A2391F3F 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2194499274270635388=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2194499274270635388==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="he4xln2tfu7hadbz"
Content-Disposition: inline


--he4xln2tfu7hadbz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Jul 28, 2019 at 11:12:21AM +0800, Icenowy Zheng wrote:
> This patchset tries to add support for Allwinner V3/S3L and Sochip S3.
>
> Allwinner V3/V3s/S3L and Sochip S3 share the same die, but with
> different package. V3 is BGA w/o co-packaged DDR, V3s is QFP w/ DDR2,
> S3L is BGA w/ DDR2 and S3 is BGA w/ DDR3. (S3 and S3L is compatible
> for pinout, but because of different DDR, DDR voltage is different
> between the two variants). Because of the pin count of V3s is
> restricted due to the package, some pins are not bound on V3s, but
> they're bound on V3/S3/S3L.
>
> Currently the kernel is only prepared for the features available on V3s.
> This patchset adds the features missing on V3s for using them on
> V3/S3/S3L, and add bindings for V3/S3/S3L. It also adds a S3 SoM by
> Sipeed, called Lichee Zero Plus.
>
> Icenowy Zheng (6):
>   pinctrl: sunxi: v3s: introduce support for V3
>   clk: sunxi-ng: v3s: add missing clock slices for MMC2 module clocks
>   clk: sunxi-ng: v3s: add Allwinner V3 support
>   ARM: sunxi: dts: s3/s3l/v3: add DTSI files for S3/S3L/V3 SoCs
>   dt-bindings: arm: sunxi: add binding for Lichee Zero Plus core board
>   ARM: dts: sun8i: s3: add devicetree for Lichee zero plus w/ S3

Applied the patches 2 to 6, thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--he4xln2tfu7hadbz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXVEeWgAKCRDj7w1vZxhR
xc1HAQC4pz8qSqTprqKaHx4vMzq28Cpy8SSZNQyYzojW9ba9VQEAuyb7C8zQZ1Qn
xIEmEbly3ZpRq6N6RP/EFwfX+rg2HgM=
=3RxS
-----END PGP SIGNATURE-----

--he4xln2tfu7hadbz--


--===============2194499274270635388==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2194499274270635388==--

