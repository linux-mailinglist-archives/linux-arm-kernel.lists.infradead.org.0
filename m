Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D33BDA33B1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 11:21:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3zE1UZ037qLmS2fr0RWCefRFFu6K/vev6ESQEwpUfTY=; b=H/0PIuysRR/3M1B2UbUPN5OTc
	JfpOZQmDZFBthPIyfbVCqSDN4qdrEiJUHLzhkvNHE5yrhFbQeuM2/Bk034pblodIwG0Kw581B5Ry/
	V5LedA1Q6Esbcv5wChEuHoaa4fWDajvd9/rmkI2gWc1fYrVrH8ume/Rb5Y+aGnqVcOqfaOkEB8GqS
	W7dLfZR+0VelL/H+6h6GytNI6mgY4r9n1BUDdzk96eZ0z3z8vcGPfEtwaM4aMdyei63rcVAMDBQsk
	VLudT1tRhTA69l1wbhwZxunlZZAPlxXrroNbGKgTMadkV3bM82iIuradEw0PMY1NizwLHPUtrXVNf
	4wRt0VhnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3d5x-0001sM-3a; Fri, 30 Aug 2019 09:21:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3d5i-0001o7-76
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 09:21:11 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 301FB23426;
 Fri, 30 Aug 2019 09:21:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567156867;
 bh=3GufUtVPDW9HriFeClZCJbc5zRagccTM02azG30ED2s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bGyZtmRs0b4Fxnur3ZChQTe3ktJskBmByqsK+yxfB7FdIL+Uh06hPDvKO2tBvxUs2
 vLV9cE1Ubcz2f8fnnb2TSe3PgjfSXD+6sU67fjRkl13gI1sm+JyGlBeKHDPGcq2ROY
 YXJsOb4xjBWPyFkTwemYMp+Iq9qfKXZ+68kxV7x8=
Date: Fri, 30 Aug 2019 11:21:04 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Marcel Holtmann <marcel@holtmann.org>
Subject: Re: [RESEND PATCH 0/5] Add bluetooth support for Orange Pi 3
Message-ID: <20190830092104.odipmbflounqpffo@flea>
References: <20190823103139.17687-1-megous@megous.com>
 <5524D5E9-FA82-4244-A91F-78CF1C3FB3FB@holtmann.org>
MIME-Version: 1.0
In-Reply-To: <5524D5E9-FA82-4244-A91F-78CF1C3FB3FB@holtmann.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_022110_280951_45D2E3CD 
X-CRM114-Status: GOOD (  20.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: megous@megous.com, Mark Rutland <mark.rutland@arm.com>,
 Johan Hedberg <johan.hedberg@gmail.com>, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0491303262769269533=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0491303262769269533==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zvsfua4pdi5vswnn"
Content-Disposition: inline


--zvsfua4pdi5vswnn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Marcel,

On Fri, Aug 30, 2019 at 09:53:16AM +0200, Marcel Holtmann wrote:
> > (Resend to add missing lists, sorry for the noise.)
> >
> > This series implements bluetooth support for Xunlong Orange Pi 3 board.
> >
> > The board uses AP6256 WiFi/BT 5.0 chip.
> >
> > Summary of changes:
> >
> > - add more delay to let initialize the chip
> > - let the kernel detect firmware file path
> > - add new compatible and update dt-bindings
> > - update Orange Pi 3 / H6 DTS
> >
> > Please take a look.
> >
> > thank you and regards,
> >  Ondrej Jirman
> >
> > Ondrej Jirman (5):
> >  dt-bindings: net: Add compatible for BCM4345C5 bluetooth device
> >  bluetooth: bcm: Add support for loading firmware for BCM4345C5
> >  bluetooth: hci_bcm: Give more time to come out of reset
> >  arm64: dts: allwinner: h6: Add pin configs for uart1
> >  arm64: dts: allwinner: orange-pi-3: Enable UART1 / Bluetooth
> >
> > .../bindings/net/broadcom-bluetooth.txt       |  1 +
> > .../dts/allwinner/sun50i-h6-orangepi-3.dts    | 19 +++++++++++++++++++
> > arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi  | 10 ++++++++++
> > drivers/bluetooth/btbcm.c                     |  3 +++
> > drivers/bluetooth/hci_bcm.c                   |  3 ++-
> > 5 files changed, 35 insertions(+), 1 deletion(-)
>
> all 5 patches have been applied to bluetooth-next tree.

The DTS patches (last 2) should go through the arm-soc tree, can you
drop them?

Thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--zvsfua4pdi5vswnn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXWjqgAAKCRDj7w1vZxhR
xV8CAP417aV0QNmWtbn2xiBjkD9flY36PSlMOjyVjsX2zxv2GgEAyCygOXXu4S1z
X+AQg5RIlPCGhi8UpGGBfw2i1qEr5gQ=
=bUKu
-----END PGP SIGNATURE-----

--zvsfua4pdi5vswnn--


--===============0491303262769269533==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0491303262769269533==--

