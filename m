Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2649035C30
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 13:59:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OeLDy4WiNPYgJHY0PXx5vXp8Zbij93fD0OmKIo7J9mA=; b=jNH57CwHt78z6onuVt1I2S29c
	A7S1i4tNUsbSv+FOT19EjK2ealRrYornEoVWDdOH8jmxU3YYR9f5JIfEoRNKY5KMXen2eUgZ34I79
	7cd6hzKX+fBIVraHwiwMLXM7HR1G8Xqu62LUPZTvMVMpJZWcJuNGFuocePibfRHN9cdzhn9bEg2NW
	zcEwfdH2Co8Hxn8DGOb1YEuof/NAMaMXzKGLYU6PIOqW9RqBU2KJ4oG6PGkYNBs3felyU+BMLFozI
	fAjdLgUd5w99poYxz61gJFwExndZMqGyoXR55HZgvxdZT72417LAxI9F9bYUkaabdGKSP6SOum7/S
	HAhEcqCeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYUZq-0006fj-Hz; Wed, 05 Jun 2019 11:59:34 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYUZj-0006Zo-Go
 for linux-arm-kernel@bombadil.infradead.org; Wed, 05 Jun 2019 11:59:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=spLVPenCnWHfkQbfK0WvOBYvnf37S4cmeR07IoWr9is=; b=qjBFMRzPemc4IzHFbQedBgbLX
 pMoRlWYIz3gSYuyVQqmJwQSk+E915jDemh9NBGXjlDQ7NQll4G7DMSuzuv3Ab2nyUtOs63mTy7T+y
 3+rxRoVYRiLluIq8/gt2UTB3kOr46QIKj+vmRmep9ay0jDQJMk1i9DONhUweKPE/CFg6CRPn23J8/
 hkXYB/GOtCNet0829ePezGRU8XRZNUz/avTPRoe0Ug3zAOejFhMcSAn875NEz1DY4M5FCacmuZ4JY
 doXNCACpxl3NmnW03IKjXHEtNTD0AHVvBKxVYQJiLiR9dgYIRnfV/zgHtPO1BFYRGrVMzTbn0CDDv
 Hm/Jbf56A==;
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYUT6-0004ky-IX
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 11:52:38 +0000
X-Originating-IP: 90.88.144.139
Received: from localhost (aaubervilliers-681-1-24-139.w90-88.abo.wanadoo.fr
 [90.88.144.139]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id BEBC2240012;
 Wed,  5 Jun 2019 11:52:04 +0000 (UTC)
Date: Wed, 5 Jun 2019 13:52:03 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Luca Weiss <luca@z3ntu.xyz>
Subject: Re: [PATCH v2 2/2] arm64: dts: allwinner: a64: Add lradc node
Message-ID: <20190605115203.q6jhjygdh4pnoc3o@flea>
References: <20190604172154.25472-1-luca@z3ntu.xyz>
 <20190604172154.25472-2-luca@z3ntu.xyz>
MIME-Version: 1.0
In-Reply-To: <20190604172154.25472-2-luca@z3ntu.xyz>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_125236_641295_C1C35C34 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, ~martijnbraam/pmos-upstream@lists.sr.ht,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 open list <linux-kernel@vger.kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 "open list:SUN4I LOW RES ADC ATTACHED TABLET KEYS DRIVER"
 <linux-input@vger.kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============5438654977132618214=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5438654977132618214==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hcblokn3om2o3hbe"
Content-Disposition: inline


--hcblokn3om2o3hbe
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jun 04, 2019 at 07:21:54PM +0200, Luca Weiss wrote:
> Add a node describing the KEYADC on the A64.
>
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>

Applied both, thanks

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--hcblokn3om2o3hbe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXPes4wAKCRDj7w1vZxhR
xUBYAP99OcI6+26CnXPVcHAESO3xSvwOMwlcDUPBniupbrvjJwD/YxeoVWBL+sDc
HZ5G/ReZtD85o3gkvxJTkvCG1/M0Nwg=
=Ekf6
-----END PGP SIGNATURE-----

--hcblokn3om2o3hbe--


--===============5438654977132618214==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5438654977132618214==--

