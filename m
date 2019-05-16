Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB1ED2014D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 10:27:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FSOANcFkcPjdfj5p8Q8kfOBGg3Qy6LQz69bI3DYjfjw=; b=uhpjP6e6QJzwMYqMoz90eUGgI
	2MfJJeH9qP74ZgxF5tDNvi8tbmLwqedsQGsGEHMUT8+0R6m92zMGlEBWVbCYoCFrENuEvHhIutELh
	1Yw6BroiA+52XMKbDGzi/+sQUXmvWRQBeqmq4Y3XRP0c42o4JptCYJ8iBFCjhUMUbXbMQmu6y4Bjd
	7fHzeuib7YpryzL+PFfRFWkq9W9pBaXi+iiy/RJgJoK749h9gcZdxuz15D8AiCUJck68NKWhNF8Hb
	QUaKwAwIgMAi+bk8UvljDy0Gb/jcvcyA1d1wXhlB0zo3JBuZWDRzgr8v13woHqCMpbkK1Gl0ozsaI
	N8RESpmKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRBk2-0007QH-J7; Thu, 16 May 2019 08:27:54 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRBju-0007Pk-Sb
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 08:27:49 +0000
X-Originating-IP: 80.215.246.107
Received: from localhost (unknown [80.215.246.107])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 992E924000A;
 Thu, 16 May 2019 08:27:23 +0000 (UTC)
Date: Thu, 16 May 2019 10:27:22 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2 1/4] dt-bindings: spi: Add YAML schemas for the
 generic SPI options
Message-ID: <20190516082722.wcv2kmg4b5lqhszi@flea>
References: <1acc9ff7f59064b74cc319b7812479bcd842a897.1557386749.git-series.maxime.ripard@bootlin.com>
 <CAL_JsqLRWSWk7cV=pYi1fbYsLJFUxE1fMo6Bm2FC99oPtS-88w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAL_JsqLRWSWk7cV=pYi1fbYsLJFUxE1fMo6Bm2FC99oPtS-88w@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_012747_190682_2C6135C0 
X-CRM114-Status: GOOD (  17.18  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-spi <linux-spi@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============2519322183430374619=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2519322183430374619==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="l2jinyemzygueieg"
Content-Disposition: inline


--l2jinyemzygueieg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Fri, May 10, 2019 at 11:05:48AM -0500, Rob Herring wrote:
> > +description: |
> > +  SPI busses can be described with a node for the SPI controller device
> > +  and a set of child nodes for each SPI slave on the bus. The system SPI
> > +  controller may be described for use in SPI master mode or in SPI slave mode,
> > +  but not for both at the same time.
> > +
> > +properties:
> > +  $nodename:
> > +    pattern: "^spi(@.*)$"
>
> Doing some testing with spi-gpio schema I'm writing, this needs to be
> "^spi(@.*)*$" so that just 'spi' is allowed.

I guess "^spi(@.*)+$" would be enough then?

> However, that's not enough for handling multiple instances of
> spi-gpio. So maybe we need "^spi(@.*|-[0-9a-f])*$" to allow spi-1,
> spi-2, etc. Really, we need to decide the larger issue of how we
> handle multiple instances when there's no address space.

That works for me, I'll change it.

> Also, this schema will be applied to any matching node name as it is
> used for automatic selection if compatible schema is not present. If
> we want to prevent that and only apply it when explicitly included,
> then we need to add a 'select: false'. Without it, we get more
> coverage, but it could slow things down and we'll get double printing
> of errors.

I guess we can change that later if it becomes too slow and / or
confusing?

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--l2jinyemzygueieg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXN0e6gAKCRDj7w1vZxhR
xZD0AQDElc8nw58kmcEtzisrHDw0kwYpGMDedspqGUAaatx23gEA+etEsJlvv+2n
byABh15Bk0eVWPg8bNsQLSXD9sx2FQ4=
=Xl7S
-----END PGP SIGNATURE-----

--l2jinyemzygueieg--


--===============2519322183430374619==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2519322183430374619==--

