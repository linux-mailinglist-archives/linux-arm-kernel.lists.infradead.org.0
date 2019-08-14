Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE338CBD3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 08:17:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kMiGjp1vGrq1tht5uma64YVFqsN5p/uBEvyYc0E+eDE=; b=EJ/NplwIcmFuVWuEfEQjPjeom
	r4QUWfO4aecmJNdDpbFgDxtTrwUYWWKCA1VX7FkfpTOcK4GOwFJOnl5MKZ8JLE7Bl+VlOqNiBCsEw
	wuxZOH/tquyqu2aZc3UI1oCRVW1R8ei+F8KxpO26gTpCxorYiZYi0OtytseLf0aonWtsuT4nOlX6H
	nlkWSv+ruMki0k1m6pxIBq4MHvDGcZYBozPVxCaBQRmkKb9AEggVYuaAZ2xlkZFYe5WVRhoxBd11D
	RFt2YuSHrNbjI8q/74vilc8lmtOD4TeqaSA+oI/BzYjzPs11otZFLb0Lt67rZL7DK8UIEqlQKopDH
	fk4t4YEBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxmbI-0007MW-Qp; Wed, 14 Aug 2019 06:17:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxmb2-0007M5-PI
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 06:17:22 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4CCBF208C2;
 Wed, 14 Aug 2019 06:17:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565763439;
 bh=h2Zmuq1LzTEeDVfRxuk635BAG8HwjEFsXKfbcLtx4qA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KjIf6IYYK3XD0qhY4dWTgaz08i4vPb0oCS7yDb8DUiQXXCKW4u27PtNeMAmi6DS0Q
 /1FvUfCfsn/mKzfRCXWUxzuwMnT06sCQUHrRnDNWWqtqQ0qPkLewBL4ZGTicqJxdUA
 oOmBqSgqlTYbHiwF95rB3yxemzEn/TQ7B7jzHmlA=
Date: Wed, 14 Aug 2019 08:17:17 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH] ARM: dts: sunxi: Add mdio bus sub-node to GMAC
Message-ID: <20190814061717.54uuat3cypxjucfq@flea>
References: <20190814042208.9646-1-wens@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20190814042208.9646-1-wens@kernel.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_231720_844072_45F7783D 
X-CRM114-Status: GOOD (  15.41  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7519343598737469395=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7519343598737469395==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ca47qifq3uyu2lgr"
Content-Disposition: inline


--ca47qifq3uyu2lgr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Aug 14, 2019 at 12:22:08PM +0800, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
>
> The DWMAC binding never supported having the Ethernet PHY node as a
> direct child to the controller, nor did it support the "phy" property
> as a way to specify which Ethernet PHY to use. What seemed to work
> was simply the implementation ignoring the "phy" property and instead
> probing all addresses on the MDIO bus and using the first available
> one.
>
> The recent switch from "phy" to "phy-handle" breaks the assumptions
> of the implementation, and does not match what the binding requires.
> The binding requires that if an MDIO bus is described, it shall be
> a sub-node with the "snps,dwmac-mdio" compatible string.
>
> Add a device node for the MDIO bus, and move the Ethernet PHY node
> under it. Also fix up the #address-cells and #size-cells properties
> where needed.
>
> Fixes: de332de26d19 ("ARM: dts: sunxi: Switch from phy to phy-handle")
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>

Applied, thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--ca47qifq3uyu2lgr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXVOnbQAKCRDj7w1vZxhR
xdDUAQCnpVdT3KpOHMNy0ph4E404oIUBtZ6WuuLwZ9M2kNjwgQEAlByupn0xScxl
omeoaNbOWFWe22TFHJ0najT2LdaC2Q0=
=LPlq
-----END PGP SIGNATURE-----

--ca47qifq3uyu2lgr--


--===============7519343598737469395==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7519343598737469395==--

