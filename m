Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B9F712AB70
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 10:54:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4chB0w5bOHEgjR6glQd/lT1mwZ99iw/wB0Ts8jpw0Rg=; b=IYfbaCj93oLfPmGntoQy3NPpN
	c4FFgEnKz1+b0dVNSDIKbnKSkPb4u/MsERj71RZ7UlV5A01W/lv/hLwS0qk0acDkbspxzM8/2kuaL
	zfKUBz1eL0FoZt/B+b80Eg99PixYiRNPzfQME+3SP3CPQpTPwR3NhZJG9sxWqc62AzPOrDeZum9jn
	WayMScgb+uZoTYfwNtBZoUbDK9ZHVEZIKHH4Yk+jf+o7OUydQsSuRbfYkjguVqozi/xxzMCWnSnUP
	RPKhrzbXMVZJ7Nt7NbQrcngaznitWcGtV3fhFxEveLF/MQB2sLkY7xf7gEaMqqXoQuw2FrBeiv9wx
	9oGPuQQww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikPqA-0004ec-U0; Thu, 26 Dec 2019 09:53:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikPpy-0004dm-OK
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Dec 2019 09:53:48 +0000
Received: from localhost (lfbn-lyo-1-633-204.w90-119.abo.wanadoo.fr
 [90.119.206.204])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8DD252080D;
 Thu, 26 Dec 2019 09:53:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577354026;
 bh=dGwRFsRQln5B894HkC1AQaBbrX1OHeeRML8iSWjpZgE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Dgn/DuDz+L/BUxnVLvQlzq2ES7WPkunjwb+MU50mPr9kHx/cQ5bm4vXbrRoiSR2mg
 enWr6QOIn1W/J+HOPP7oQWFtVLVgF26bgngE+q4/zfrSD5sVSTkuQpoGAKCWFYAzpO
 5cKA0Hxrb2SEob+emBTjwVQNxaUIrYWwBnKrzJWc=
Date: Thu, 26 Dec 2019 10:55:07 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH] ARM: dts: sunxi: Add Libre Computer ALL-H3-IT H5 board
Message-ID: <20191226095507.olorn47y7xmddgin@hendrix.home>
References: <20191224061555.18358-1-wens@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20191224061555.18358-1-wens@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_015346_808691_B2CAC69E 
X-CRM114-Status: GOOD (  15.94  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4484193161988800671=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4484193161988800671==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="lweqfbwsvdz4r4jl"
Content-Disposition: inline


--lweqfbwsvdz4r4jl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Dec 24, 2019 at 02:15:55PM +0800, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
>
> The Libre Computer ALL-H3-IT board is a small single board computer that
> is roughly the same size as the Raspberry Pi Zero, or around 20% smaller
> than a credit card.
>
> The board features:
>
>   - H2, H3, or H5 SoC from Allwinner
>   - 2 DDR3 DRAM chips
>   - Realtek RTL8821CU based WiFi module
>   - 128 Mbit SPI-NOR flash
>   - micro-SD card slot
>   - micro HDMI video output
>   - FPC connector for camera sensor module
>   - generic Raspberri-Pi style 40 pin GPIO header
>   - additional pin headers for extra USB host ports, ananlog audio and
>     IR receiver
>
> Only H5 variant test samples were made available, but the vendor does
> have plans to include at least an H3 variant. Thus the device tree is
> split much like the ALL-H3-CC, with a common dtsi file for the board
> design, and separate dts files including the common board file and the
> SoC dtsi file. The other variants will be added as they are made
> available.
>
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>

Applied, thanks!
Maxime

--lweqfbwsvdz4r4jl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXgSDewAKCRDj7w1vZxhR
xdlUAP4/EcPmWRKjD8xeYE9H+HSdokqIYjvzND2KP2yG9ujTsgEAkKWq6a5Igzyn
/wXdS4/5tQyqvruVUJaIsmeNwKAxTAY=
=RYso
-----END PGP SIGNATURE-----

--lweqfbwsvdz4r4jl--


--===============4484193161988800671==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4484193161988800671==--

