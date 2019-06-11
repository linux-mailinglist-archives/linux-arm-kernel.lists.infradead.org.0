Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F49D3C7AF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 11:53:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MebqkWS9Hey/CrpaGFZOQlI72X3cmjMo7S2ZMUMr8d4=; b=jlcnBNSpbYZYwoUyiqKxpNCM6
	c5GkwuCGPzuulxOaAd/vNNdQ7e7bQjQO5A7HuIKb9yJg7C3w4VwncjLYOK87h0trKH8f3cRVfpVTZ
	7b6bag/D75g4/i2a+wZZE0FcmQDu0zHXi/eiq5ojis7z3NUF6M52DtouORKYEZm5BYQXJMv7fClxn
	InN2cbDcht/roWeiguSE2R0SGVPN9IqlKjHPwCKP9K2stIhDFijqL/fO4cAJ4pkksKF5FvwNxtYio
	Sn36rA8LPqwWJ4NOMqhnu5pxPA1SR1cAS6i/BNFvQL6kIW4AiOIy0SucBRtNy3BjS1GwGPWFjlFLo
	0DLawW2QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hadTR-0002QW-H9; Tue, 11 Jun 2019 09:53:49 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hadTD-0002Pc-5y
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 09:53:37 +0000
X-Originating-IP: 90.88.159.246
Received: from localhost (aaubervilliers-681-1-40-246.w90-88.abo.wanadoo.fr
 [90.88.159.246]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id C88DFC000B;
 Tue, 11 Jun 2019 09:53:17 +0000 (UTC)
Date: Tue, 11 Jun 2019 11:53:17 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH v2 06/11] dt-bindings: net: sun4i-mdio: Convert the
 binding to a schemas
Message-ID: <20190611095317.l55zjuomxqfvpqlo@flea>
References: <91618c7e9a5497462afa74c6d8a947f709f54331.1560158667.git-series.maxime.ripard@bootlin.com>
 <664da05aaf9a7029494d72d7c536baa192672fbe.1560158667.git-series.maxime.ripard@bootlin.com>
 <20190610143730.GH28724@lunn.ch>
MIME-Version: 1.0
In-Reply-To: <20190610143730.GH28724@lunn.ch>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_025335_377238_B2E61843 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Antoine =?utf-8?Q?T=C3=A9nart?= <antoine.tenart@bootlin.com>,
 netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: multipart/mixed; boundary="===============3870004529938180784=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3870004529938180784==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="nt34jhbgjztm3vnl"
Content-Disposition: inline


--nt34jhbgjztm3vnl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Andrew,

On Mon, Jun 10, 2019 at 04:37:30PM +0200, Andrew Lunn wrote:
> On Mon, Jun 10, 2019 at 11:25:45AM +0200, Maxime Ripard wrote:
> > Switch our Allwinner A10 MDIO controller binding to a YAML schema to enable
> > the DT validation.
> >
> > Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> Should there be a generic part to cover what is listed in:
>
> Documentation/devicetree/bindings/net/mdio.txt

Thanks for pointing that out, I'll convert it as well.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--nt34jhbgjztm3vnl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXP96DQAKCRDj7w1vZxhR
xemGAQDeKHYJUTJ7pEQdZKX1WZEmIhNHWPhuhjM7yYBI+DFawgEA5Hrj2kSgRSzG
FFEkc4IqWkvbt0d584kNLqDInxO1VAY=
=DaeR
-----END PGP SIGNATURE-----

--nt34jhbgjztm3vnl--


--===============3870004529938180784==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3870004529938180784==--

