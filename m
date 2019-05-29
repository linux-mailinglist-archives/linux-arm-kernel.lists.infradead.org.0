Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14AD22D6A4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 09:43:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/bXviWKi/MuuFpj8sHaZjxdovJcIQpx5DOvMnJGjKcg=; b=TNZhLc7qxWU68++xJO4TUbxPV
	5M3V8XVYgFSyBiXTLbu4LyLGIav99t71OXnfdEMdoSlZQM5fVWTJ8jO3n4wbOE7rmfx62Y2bUVc9u
	xSjDfYG5td952HXKD+IaEzYNZZ1yIgPdov/vWX3d0pEDsWMRzoGYsyap5V+Z15qiLpDPWNyP06jjV
	xo1kvOxRoCvPkIziyvnLDBeDqlGc7MXrzr2Sppr4fJrGEbh8WOWxuvtL66dyv9kaZyUtvZeBSunY1
	85phux1NNgwgqE8ETXpmBNad0JSZqz+AzD+H87O+tlSJ8gX/m73tGEH9qCozwwBa/chRiTSG0WNAz
	SNOUzUW2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVtEz-0005Qt-Cl; Wed, 29 May 2019 07:43:17 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVtEs-0005Qe-NU
 for linux-arm-kernel@bombadil.infradead.org; Wed, 29 May 2019 07:43:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2YN0hDJvFD/scvpJsSFSt5VeXLpOzqq5bCNgKQuDX8M=; b=TqTi91J0qQbaVwd/AP6l65YxW
 cyWyMBSlNt2lhFNqUJ8ZgV2VtU8XkUE+wIip0d0s5ibtoxYiUNTT5xw17BPNzp3MChpZ7J3Z1OJQv
 DwR8nIRpcd68nZH/S4cQcYbSTLte95vkizKiFI0qDU99eCElIcaVy6Z20AYo+NdyE/p30VGN2pp2I
 B2/wcmeZLEXRaLJEETtoOneypHoN7AjuImtVSNQf6MtVqRH1hg9f7jWbtKsdReWgwzran384FP1eY
 g1MVgPQZdaMWr6bda5qgBDN7FpITkj/SSL1JcYR7tz524kR1hN4ZlwMojvPfgY7WC+0a/WomhZHuc
 M0xlWbkzA==;
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVtEo-0003rd-SC
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 07:43:09 +0000
X-Originating-IP: 90.88.147.134
Received: from localhost (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr
 [90.88.147.134]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 5F77DFF816;
 Wed, 29 May 2019 07:42:29 +0000 (UTC)
Date: Wed, 29 May 2019 09:42:28 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: mmc: Add YAML schemas for the
 generic MMC options
Message-ID: <20190529074228.viocdc77pdkoqdfi@flea>
References: <c6b8789d71ce1970be77387c066a262dca0a0dec.1558340089.git-series.maxime.ripard@bootlin.com>
 <CAPDyKFrs6f4_Xr=ATay_wDYNPa+-jdZvP4XSB55B-EFMAETN1Q@mail.gmail.com>
 <20190528172649.6mkdkscnu5d2rybi@flea>
 <CAPDyKFrTroAOjEyT9GxQALC4UsiDg8739F9Qc216bDC=wgk2mg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAPDyKFrTroAOjEyT9GxQALC4UsiDg8739F9Qc216bDC=wgk2mg@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_084306_964436_4F413380 
X-CRM114-Status: GOOD (  31.35  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Rob Herring <robh@kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============3171636377577200890=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3171636377577200890==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="gthk2wzch2cu56ho"
Content-Disposition: inline


--gthk2wzch2cu56ho
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi!

On Tue, May 28, 2019 at 09:32:31PM +0200, Ulf Hansson wrote:
> On Tue, 28 May 2019 at 19:26, Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > On Tue, May 28, 2019 at 10:40:16AM +0200, Ulf Hansson wrote:
> > > > +patternProperties:
> > > > +  "^.*@[0-9]+$":
> > > > +    properties:
> > > > +      reg:
> > > > +        items:
> > > > +          - minimum: 0
> > > > +            maximum: 7
> > > > +            description:
> > > > +              Must contain the SDIO function number of the function this
> > > > +              subnode describes. A value of 0 denotes the memory SD
> > > > +              function, values from 1 to 7 denote the SDIO functions.
> > > > +
> > > > +      broken-hpi:
> > > > +        $ref: /schemas/types.yaml#/definitions/flag
> > > > +        description:
> > > > +          Use this to indicate that the mmc-card has a broken hpi
> > > > +          implementation, and that hpi should not be used.
> > > > +
> > > > +    required:
> > > > +      - reg
> > > > +
> > >
> > > [...]
> > >
> > > > -Use of Function subnodes
> > > > -------------------------
> > > > -
> > > > -On embedded systems the cards connected to a host may need additional
> > > > -properties. These can be specified in subnodes to the host controller node.
> > > > -The subnodes are identified by the standard 'reg' property.
> > > > -Which information exactly can be specified depends on the bindings for the
> > > > -SDIO function driver for the subnode, as specified by the compatible string.
> > > > -
> > > > -Required host node properties when using function subnodes:
> > > > -- #address-cells: should be one. The cell is the slot id.
> > > > -- #size-cells: should be zero.
> > > > -
> > > > -Required function subnode properties:
> > > > -- reg: Must contain the SDIO function number of the function this subnode
> > > > -       describes. A value of 0 denotes the memory SD function, values from
> > > > -       1 to 7 denote the SDIO functions.
> > > > -
> > > > -Optional function subnode properties:
> > > > -- compatible: name of SDIO function following generic names recommended practice
> > > > -
> > >
> > > I think most of the information of how we use sub(child) nodes
> > > disappeared in this conversion - or at least gets harder to
> > > understand. Could we perhaps keep some of this?
> >
> > Sure, what would you like to keep in particular?
>
> Most of it, so we can understand what can be described in sub-nodes.

I've pushed a new version that keeps everything, I guess.

> Additionally, we should also include what is stated in
> Documentation/devicetree/bindings/mmc/mmc-card.txt, as that also
> refers to how subnodes should be used, when it has the "mmc-card"
> compatible.
>
> Or maybe we should simply move all things related to subnodes into a
> separate .yaml?

Yeah, this should be a separate YAML schema.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--gthk2wzch2cu56ho
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXO435AAKCRDj7w1vZxhR
xRtjAQDZQ5WUDQGL6pNsOq4VZzVT0hbSS3HIWiYEd8Sna/NefAEA9Zc7OLaRbPzq
Zm91I4RXRQSyPVpZMbAE7oZ9dRlNdgY=
=e29h
-----END PGP SIGNATURE-----

--gthk2wzch2cu56ho--


--===============3171636377577200890==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3171636377577200890==--

