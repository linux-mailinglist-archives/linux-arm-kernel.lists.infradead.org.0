Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 120D059D30
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 15:46:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=V9lzUMJK0XdViyCZYXdGv7LOA+aU4aHhc3blhklfME8=; b=DIzYJkAMncuCxBETlrFGzGVKT
	X/WUpepkU7CVUCu6202wX/yLUPFilDPbqVbV9y5vINcM8hCnDQaVmQXNLGGsaZ9lquTFGVeprfZlW
	IWHTBi3+eQr5IYhNsXhKi4hPdzNurql8VvvWSuM9B//OIDOVW2/sZgSqPL+mQlrF2CTo5vyiQO5E5
	81tNd68J31XSBokEafYPdF+d/tCIPtr8JWGDbIuFb7JCJvWsFIVNRmBwnkl+DqOFdYp3xdxaITQ4Y
	35bbrk8OaZ4ohPh6cC4aATXZlxiRvmO4RUwi7aLLrgjY6xARS8ON2vI7AKmIFHfTy3TIJz3v1C6ZY
	6+nx9lZwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgrCj-0002iA-7z; Fri, 28 Jun 2019 13:46:17 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgrCV-0002hg-Rc
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 13:46:05 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 2633B240009;
 Fri, 28 Jun 2019 13:45:54 +0000 (UTC)
Date: Fri, 28 Jun 2019 15:45:53 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v4 03/13] dt-bindings: net: Add a YAML schemas for the
 generic MDIO options
Message-ID: <20190628134553.l445r5idtejwlryl@flea>
References: <cover.e80da8845680a45c2e07d5f17280fdba84555b8a.1561649505.git-series.maxime.ripard@bootlin.com>
 <e99ff7377a0d3d140cf62200fd9d62c108dac24e.1561649505.git-series.maxime.ripard@bootlin.com>
 <CAL_JsqKQoj6x-8cMxp2PFQLcu93aitGO2wALDYaH2h72cPSyfg@mail.gmail.com>
 <20190627155708.myxychzngc3trxhc@flea>
 <CAL_JsqLhUP62vP=RY8Bn_0X92hFphbk_gLqi4K48us56Gxw7tA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAL_JsqLhUP62vP=RY8Bn_0X92hFphbk_gLqi4K48us56Gxw7tA@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_064604_053492_6E65BDA7 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
 Florian Fainelli <f.fainelli@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Andrew Lunn <andrew@lunn.ch>,
 Antoine =?utf-8?Q?T=C3=A9nart?= <antoine.tenart@bootlin.com>,
 netdev <netdev@vger.kernel.org>, linux-stm32@st-md-mailman.stormreply.com,
 Chen-Yu Tsai <wens@csie.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "David S . Miller" <davem@davemloft.net>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: multipart/mixed; boundary="===============0548987555919034393=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0548987555919034393==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zjmpquddmsmyw3nm"
Content-Disposition: inline


--zjmpquddmsmyw3nm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jun 27, 2019 at 10:06:57AM -0600, Rob Herring wrote:
> On Thu, Jun 27, 2019 at 9:57 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > +
> > > > +        reset-gpios = <&gpio2 5 1>;
> > > > +        reset-delay-us = <2>;
> > > > +
> > > > +        ethphy0: ethernet-phy@1 {
> > > > +            reg = <1>;
> > >
> > > Need a child node schema to validate the unit-address and reg property.
> >
> > This should be already covered by the ethernet-phy.yaml schemas
> > earlier in this series.
>
> Partially, yes.
>
> > Were you expecting something else?
>
> That would not prevent having a child node such as 'foo {};'  or
> 'foo@bad {};'. It would also not check valid nodes named something
> other than 'ethernet-phy'.

Right, but listing the nodes won't either, since we can't enable
additionalProperties in that schema. So any node that wouldn't match
ethernet-phy@.* wouldn't be validated, but wouldn't generate a warning
either.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--zjmpquddmsmyw3nm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXRYaEQAKCRDj7w1vZxhR
xcfbAP0StcNKYljUjaKh+7kNRQmW2KY7UHR2qG+yIslRuaKsBwEA9WACBZA+N2PQ
q0Mqev0oV23zbWU9jcIrJV2ljPCzGwE=
=Klyx
-----END PGP SIGNATURE-----

--zjmpquddmsmyw3nm--


--===============0548987555919034393==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0548987555919034393==--

