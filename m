Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C228B9E96E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 15:32:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=H1pbbK3GrNaBxKmquJSJKW2CSzli+ym7AVxaKNJgBwA=; b=VOaPYdaB5sZVeME7YqfX5s/OJ
	DKqoPxbJx8jPLakCD6o6SRREk+mIozU2/m58uHjHjMzjxF6r0PCVckzrZD1Kt/5K7wOTJC0ismMGB
	RxMR37ft/O8gjbWEh7oa9mrxuBzXVg933I2xzij6zQv2cxzqncMfI1Iw4vmG+r39fHSHMPhQBJJaM
	PDANWdxBKrhSQhWNRFe59xec73nFq3UTgXcfjA4KC+ODkWpbrGOErwWDuv1bnYL1Q59BqaYzgF2/v
	4tDenuY47qIPa/GDPzB+D//aLDGNP7im5IKUTS9u77AmRA1AdvR0NWtLHjiTMf6uPgCpCH/7ajJSl
	jrTjb0RPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2baR-0004uZ-2b; Tue, 27 Aug 2019 13:32:39 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2baE-0004u5-K9
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 13:32:28 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id B3E201C0010;
 Tue, 27 Aug 2019 13:32:11 +0000 (UTC)
Date: Tue, 27 Aug 2019 15:32:11 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Alejandro =?utf-8?B?R29uesOhbGV6?= <alejandro.gonzalez.correo@gmail.com>
Subject: Re: [PATCH] mmc: sunxi: fix unusuable eMMC on some H6 boards by
 disabling DDR
Message-ID: <20190827133211.g5n4uasyz2yvjpjr@flea>
References: <20190825150558.15173-1-alejandro.gonzalez.correo@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190825150558.15173-1-alejandro.gonzalez.correo@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_063226_814204_D7A9192E 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: ulf.hansson@linaro.org, gregkh@linuxfoundation.org,
 linus.walleij@linaro.org, linux-sunxi@googlegroups.com,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, wens@csie.org,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2978962378698570227=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2978962378698570227==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="lkjtz2d6pscj5wie"
Content-Disposition: inline


--lkjtz2d6pscj5wie
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Aug 25, 2019 at 05:05:58PM +0200, Alejandro Gonz=E1lez wrote:
> Some Allwinner H6 boards have timing problems when dealing with
> DDR-capable eMMC cards. These boards include the Pine H64 and Tanix TX6.
>
> These timing problems result in out of sync communication between the
> driver and the eMMC, which renders the memory unsuable for every
> operation but some basic commmands, like reading the status register.
>
> The cause of these timing problems is not yet well known, but they go
> away by disabling DDR mode operation in the driver. Like on some H5
> boards, it might be that the traces are not precise enough to support
> these speeds. However, Jernej Skrabec compared the BSP driver with this
> driver, and found that the BSP driver configures pinctrl to operate at
> 1.8 V when entering DDR mode (although 3.3 V operation is supported), whi=
le
> the mainline kernel lacks any mechanism to switch voltages dynamically.
> Finally, other possible cause might be some timing parameter that is
> different on the H6 with respect to other SoCs.

This should be a comment in the driver where this is disabled.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--lkjtz2d6pscj5wie
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXWUw2wAKCRDj7w1vZxhR
xYt3AP4+3qKwy0ckh4dZ7jCoxIsKTjo6Lg7T9mmsX0KTdpD3uAD/UnDk8+qHwDox
MZfS8s6gYu/gIOndKMAIAGQBPJh+bgU=
=Cii8
-----END PGP SIGNATURE-----

--lkjtz2d6pscj5wie--


--===============2978962378698570227==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2978962378698570227==--

