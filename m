Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A9109596F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 10:28:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=m+IU0hjeOyIqam3/AOE+IjcKz6arpZHj3ZoPNjZn5zE=; b=shiNFHXKglcmIes2OYvOxFu3p
	4j3nt3NB2/QvXBXOBhy0qaFzxg14NooBciFWmQmeug4XQoshyG8t4Kb18DnZ0nSaN2ihqCYS1w43a
	gbW0jPZPDgtQYjvhAlfk8O7dUehUXl8Zo+AZBS033AfrGd+ht+7MXLQlKgrp0JHUz5D7L9nfNmo0n
	8tzRp9rf33UPu9P96eQq/CruNiWGcYztP+msT3FqIfT3ZlOi6kcBcKYeW9H4hQEwWBH/kdr1eEJvY
	ZLpsiDa2ss0DwQfL1Isx5+Sfe40z4T0LDQED8TNqyltQHdUe+T7P/1hg020uUqgfhAh4F51t+yhKv
	dEfrE9mCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzzV1-0005ft-Vw; Tue, 20 Aug 2019 08:28:16 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzzUm-0005e5-Ds
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 08:28:02 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 19956240009;
 Tue, 20 Aug 2019 08:27:51 +0000 (UTC)
Date: Tue, 20 Aug 2019 10:27:51 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH v4 04/10] mailbox: sunxi-msgbox: Add a new mailbox driver
Message-ID: <20190820082751.nfn76nlgl3ivphff@flea>
References: <20190820032311.6506-1-samuel@sholland.org>
 <20190820032311.6506-5-samuel@sholland.org>
MIME-Version: 1.0
In-Reply-To: <20190820032311.6506-5-samuel@sholland.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_012800_618789_FBD04219 
X-CRM114-Status: GOOD (  13.97  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Jassi Brar <jassisinghbrar@gmail.com>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Corentin Labbe <clabbe.montjoie@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0906529249840264638=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0906529249840264638==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="gkmhex6scyynmxz2"
Content-Disposition: inline


--gkmhex6scyynmxz2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Mon, Aug 19, 2019 at 10:23:05PM -0500, Samuel Holland wrote:
> Allwinner sun8i, sun9i, and sun50i SoCs contain a hardware message box
> used for communication between the ARM CPUs and the ARISC management
> coprocessor. The hardware contains 8 unidirectional 4-message FIFOs.
>
> Add a driver for it, so it can be used for SCPI or other communication
> protocols.
>
> Signed-off-by: Samuel Holland <samuel@sholland.org>
> ---
>  drivers/mailbox/Kconfig        |  10 +
>  drivers/mailbox/Makefile       |   2 +
>  drivers/mailbox/sunxi-msgbox.c | 323 +++++++++++++++++++++++++++++++++
>  3 files changed, 335 insertions(+)
>  create mode 100644 drivers/mailbox/sunxi-msgbox.c

It's pretty much the same remark than for the name of the binding
file, but sunxi in itself is pretty confusing, it covers a range of
SoCs going from armv5 to armv8, some with a single CPU and some with
more, and some with an OpenRISC core and some without.

It would be less confusing (albeit not perfect) to use sun6i there,
the family that IP was first introduced in.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--gkmhex6scyynmxz2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXVuvBwAKCRDj7w1vZxhR
xV7WAQCXdOhK3aygWsBU1Ob0okTJbPWhSiAl4T7XZhHH/36ZiQEA6pZ/KLw9KS1c
2kVKRLeNf7nMSDrNt/PPkrb11elNcgA=
=KJoz
-----END PGP SIGNATURE-----

--gkmhex6scyynmxz2--


--===============0906529249840264638==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0906529249840264638==--

