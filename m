Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B307A6EEC1
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jul 2019 11:44:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uREIstVniJJteQCJ+oU6uHzFbLvzAbVxNv0s6i3/6R8=; b=FGuzzrS40gz0tAkEbwf2ihl7+
	num4v3HTDbxVeALgv9A87VfXc+rLhBQaxfCMTsWOg3obUl/HlySMt1S7XLCIAoIEgkBOjlaHKTcrp
	TGxGR2pImjYwyeBrkpDjbpt8uzA3iXIENi7JToyGXGnYiyGELBeTA3LukCiQa/PEZn8mRDe7TiOz4
	byni5mulg4GmrAr/XRXW/uhp0OvHJ0uikaRoIzZdugDcWVkgPEHMN6KvmPdlcJxNAiANXomuh6QLF
	CJrkHrVTz+X0GsL3AI1SoUJd4X3bK6LWod6wdDV/4wkTQADkZLlX8fvczHle8nRzH4DXpyXS26uri
	EHj0/T4xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1holun-00028C-L7; Sat, 20 Jul 2019 09:44:29 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1holuU-00027S-FK
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jul 2019 09:44:12 +0000
Received: from localhost (91-163-65-175.subs.proxad.net [91.163.65.175])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id E1E72200002;
 Sat, 20 Jul 2019 09:44:01 +0000 (UTC)
Date: Sat, 20 Jul 2019 11:44:01 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH v4 3/8] dt-bindings: clk: sunxi-ccu: add compatible
 string for V3 CCU
Message-ID: <20190720094401.rdx5breuvjb4gvp6@flea>
References: <20190713034634.44585-1-icenowy@aosc.io>
 <20190713034634.44585-4-icenowy@aosc.io>
MIME-Version: 1.0
In-Reply-To: <20190713034634.44585-4-icenowy@aosc.io>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190720_024410_666466_C1284259 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2755265937066369930=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2755265937066369930==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="osywhxx3mepoorol"
Content-Disposition: inline


--osywhxx3mepoorol
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Jul 13, 2019 at 11:46:29AM +0800, Icenowy Zheng wrote:
> Despite Allwinner V3 and V3s shares the same die, one peripheral (I2S)
> is only available on V3, and thus the clocks is not declared for V3s
> CCU.
>
> Add a V3 CCU compatible string to the binding to prepare for a CCU
> driver that provide I2S clock on V3, but not on V3s.
>
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> Reviewed-by: Rob Herring <robh@kernel.org>

Queued for 5.4, thanks

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--osywhxx3mepoorol
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXTLiYAAKCRDj7w1vZxhR
xT8iAP9PgNA6a4FclZagDfDG0HI7h+CTux3t0n9LdDM5AFTVJgEA5Y+LmaQTX59Y
bLQb+rAdZTWg+rFyUkgxaqPisf1yWww=
=RXY8
-----END PGP SIGNATURE-----

--osywhxx3mepoorol--


--===============2755265937066369930==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2755265937066369930==--

