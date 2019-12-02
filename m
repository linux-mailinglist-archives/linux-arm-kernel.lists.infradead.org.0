Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33F6810EFE2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 20:13:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0uu1GEOkJWvssyO2yERuqN4/9xI1SPrRDai/iKMxnWI=; b=gLeS7gkOGJbrEDEVw8HOj9OZt
	6WrZ695QtEK0RzIEOY1QQIAoqGHJ/ig8+ud1LWwlg6XFZ6CJ2UhMYN5x+gmNIJL6DRtt9/imeZVu3
	NCbwRxUo+W5fxPCwyTBEpFHJHAm6bOGEBcYLPvFfU68bkFkwahgbRPApbRIrFJ8bty2+JaZWiVCEE
	PjlFLDWkOGEftXsrxzXOLoHXlCksSg5j9n+Ya/TfoCClSVQyUYif2Q93Q4B5F3/ksU69/iPMCMXvY
	Cc0ox5L335MFqyjANmW3PTW2ZeG78323+fuCa3uBeM+/7zGs37HQcwEFkVHghHyPvT79DlLaeX6eg
	YzeXkPmkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibr8o-0007OG-QZ; Mon, 02 Dec 2019 19:13:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibr8j-0007Nx-6W
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 19:13:46 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6D9D420848;
 Mon,  2 Dec 2019 19:13:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575314024;
 bh=xPa0X6R5T4e6CEa2s0SLF/tQNyowSG/AuLe3v9UhiTU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OFfA4XXSIukBhUqFK/VHx0x3IEaSdakYD9V9S4aW89Q9zq5PeKYQWEONDx6t7Ze21
 QBkk/jmZyCAKUK/lRxI6bex7+avShuMTRHoOJMBy4RO2DJIv//sUdG0ohk2zXOXLBG
 Sm3vNETJvv8pNx6Ctq25FodpLb7DUWdyauDV8N2c=
Date: Mon, 2 Dec 2019 20:13:42 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Stefan Mavrodiev <stefan@olimex.com>
Subject: Re: [PATCH v2 1/3] arm64: dts: allwinner: a64: olinuxino: Fix eMMC
 supply regulator
Message-ID: <20191202191342.7ttegde7jewn4xra@gilmour.lan>
References: <20191129113941.20170-1-stefan@olimex.com>
 <20191129113941.20170-2-stefan@olimex.com>
MIME-Version: 1.0
In-Reply-To: <20191129113941.20170-2-stefan@olimex.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_111345_255180_DBC970F2 
X-CRM114-Status: GOOD (  10.97  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-sunxi@googlegroups.com,
 open list <linux-kernel@vger.kernel.org>, stable@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============1439751728183357974=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1439751728183357974==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="q764rlr5yjz4gv75"
Content-Disposition: inline


--q764rlr5yjz4gv75
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Nov 29, 2019 at 01:39:39PM +0200, Stefan Mavrodiev wrote:
> A64-OLinuXino-eMMC uses 1.8V for eMMC supply. This is done via a triple
> jumper, which sets VCC-PL to either 1.8V or 3.3V. This setting is different
> for boards with and without eMMC.
>
> This is not a big issue for DDR52 mode, however the eMMC will not work in
> HS200/HS400, since these modes explicitly requires 1.8V.
>
> Fixes: 94f68f3a4b2a ("arm64: dts: allwinner: a64: Add A64 OlinuXino board (with eMMC)")
> Cc: stable@vger.kernel.org # v5.4
> Signed-off-by: Stefan Mavrodiev <stefan@olimex.com>

Applied, thanks!
Maxime

--q764rlr5yjz4gv75
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXeViZgAKCRDj7w1vZxhR
xVnqAQCN+/fEAa8RYdLvkoYtRzpPTIeiTCvNTyfWakMZS9YKvQEAnFfgnu6qHLWp
6DXcmrsNxdL1AzYEYmpIY1KhpG4BdgQ=
=ZRr1
-----END PGP SIGNATURE-----

--q764rlr5yjz4gv75--


--===============1439751728183357974==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1439751728183357974==--

