Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 517943C6FB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 11:07:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Um367cfLw62FgURdw1PSWcJU5ViA80YejTSEd5FNP2A=; b=XP0W+xY0vkRpI1W5w8EasEymx
	eeMjbHJEGajFP8Yaqamir8K5mPlxsg2T+DYQDZ6cKPmbjO0uuEUHm6cdXNkVw7EW2I/wuSKrDmh4w
	b/x5RfWID+5DXJvBSPhvGrOajUP6ZqD+FydHObMBLSduXBvnV3f1sT6RqwSr+5cJm6E9fN9YXDsdb
	Qc/mrcA394j2zywGkw9e+ukLfa+rEBtmDzhhfOIisQWXf6eMK/jBzKgo9oaQh2A1WJGjKhBhSg6PD
	f9W0e9CIMsEP9NFvI0CYT5PrbRgElwi5EsYLXjC449tZBXnsBwV9sfaOIzRjKOFIh1vzH9lVCyyVE
	BmfhD7WNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hack8-0000ii-5e; Tue, 11 Jun 2019 09:07:00 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hacjt-0000iC-Qi
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 09:06:47 +0000
X-Originating-IP: 90.88.159.246
Received: from localhost (aaubervilliers-681-1-40-246.w90-88.abo.wanadoo.fr
 [90.88.159.246]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 1D896C0028;
 Tue, 11 Jun 2019 09:06:41 +0000 (UTC)
Date: Tue, 11 Jun 2019 11:06:41 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: i2c: sun6i-p2wi: Add YAML schemas
Message-ID: <20190611090641.byr6mpywkfmbhrbk@flea>
References: <20190605122936.11972-1-maxime.ripard@bootlin.com>
 <CAL_JsqKC7uP0J14A8_CvPhbZkoSRNWSpS1ee+Q4sG013jY=JeQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAL_JsqKC7uP0J14A8_CvPhbZkoSRNWSpS1ee+Q4sG013jY=JeQ@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_020646_024828_FA9B4423 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
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
 Wolfram Sang <wsa@the-dreams.de>,
 Gregory Clement <gregory.clement@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Linux I2C <linux-i2c@vger.kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============2657846540150869915=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2657846540150869915==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tp4lyww3y3wdgyv5"
Content-Disposition: inline


--tp4lyww3y3wdgyv5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Rob,

On Mon, Jun 10, 2019 at 03:34:18PM -0600, Rob Herring wrote:
> On Wed, Jun 5, 2019 at 6:29 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > +properties:
> > +  "#address-cells":
> > +    const: 1
> > +
> > +  "#size-cells":
> > +    const: 0
>
> These 2 are covered by i2c-controller.yaml, right?

Indeed, I've removed them.

> > +examples:
> > +  - |
> > +    p2wi@1f03400 {
>
> i2c@...
>
> That should fail on the schema (I need to get the schema checking of
> examples finished.)

That would be great :) The compilation of the examples alone already
caught a good number of examples that weren't even compiling.

Speaking of examples, one thing that would be great too would be to
allow the usage of our C headers. It's not supported at the moment,
and this often ends up with an example that is less readable than the
actual DT.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--tp4lyww3y3wdgyv5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXP9vIQAKCRDj7w1vZxhR
xeGlAP4rbegd1UDuKXUKFF3WhWS1KZK+o17bmmgQWsh+mRKxCwEAp601hbl4LHuW
G1FzOaVHASk0Y180ji5wRzDpQS2E2gw=
=1utz
-----END PGP SIGNATURE-----

--tp4lyww3y3wdgyv5--


--===============2657846540150869915==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2657846540150869915==--

