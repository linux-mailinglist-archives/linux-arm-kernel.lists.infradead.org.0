Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6255429286
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 10:11:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gwz4DBSUacX4vlPqTiadzxLPclhwOx5PWS1XQyfFaDE=; b=bvfG2xWRolCKpx+3GwP0+1QKo
	qFpBe3GFvUDDRYOsogPVJEfpcTaPj3Gj7qegSR519UWlKe3jXd12lvJIZ8yErYMLcJQroboz20s1h
	zhXnCcxWO7YT30SP0Ghh3H75Ssi6GX+i8T2HaHcc315sJ2N+oA6RZMzhq4Hbq9sO9Nx+1kAF8nWo0
	/Fzfq9OO6Q236CS4iJ7Co6UBF69LLeacXKknFZzHeVMWujxzYRHyFWrMgzUWdC3kREOwTTMQdhfK+
	duTpmurgVT40aoaXkoOGSpzjP4PxCcNE1P0efvy97d1uZ9FgA106nt8D30j3HUQXsCzKZkklMOidp
	k+HwYXKAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU5Il-00081m-JN; Fri, 24 May 2019 08:11:43 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU5If-00081T-Vp
 for linux-arm-kernel@bombadil.infradead.org; Fri, 24 May 2019 08:11:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zlLeKiovPop+kHi4verhD5Tne6OSVE40TkA+5qhACB4=; b=YOvsxpfvyNC2ZmUCAOUj5i9fO
 EPtwKOznC5EpmBgducDehOKkp02Vf2/Ox4FujbkCLrXeHsEi1SVEK4bhpD+CMDTlZENwq85a5eUMY
 LSibjAyXRfjyvmMGI3J5M6zn37j31qjCSragxNRCtfa84n79T/m84y07Hponw4fGEaI3C/NTDqAdi
 M5hudXTRLnuyC7huclCBnecONQRD0YJNcuW9c5O5Hh8UYdl4OSBAvGrzKR/DUyVvDibxdOnzzO1vI
 b06aYOgUA4jqWW5BWnHw5YV2x8MbpvWP86Iydle3ssj7tGGl9ATJMmPI/4k34r40SUiffGcjJRqiz
 /rdEN4wHA==;
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU5Ia-0002kr-V5
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 08:11:35 +0000
X-Originating-IP: 90.88.147.134
Received: from localhost (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr
 [90.88.147.134]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 2CBD3FF80B;
 Fri, 24 May 2019 08:10:50 +0000 (UTC)
Date: Fri, 24 May 2019 10:10:49 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH 2/8] dt-bindings: net: Add a YAML schemas for the generic
 PHY options
Message-ID: <20190524081049.6obsqdeywmx4io4k@flea>
References: <74d98cc3c744d53710c841381efd41cf5f15e656.1558605170.git-series.maxime.ripard@bootlin.com>
 <aa5ec90854429c2d9e2c565604243e1b10cfd94b.1558605170.git-series.maxime.ripard@bootlin.com>
 <e39b7a35-3235-6040-b3c1-648897fabc70@gmail.com>
MIME-Version: 1.0
In-Reply-To: <e39b7a35-3235-6040-b3c1-648897fabc70@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_091133_120868_0156D7A4 
X-CRM114-Status: GOOD (  16.07  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Alexandre Torgue <alexandre.torgue@st.com>,
 Antoine =?utf-8?Q?T=C3=A9nart?= <antoine.tenart@bootlin.com>,
 netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1594221829129737975=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1594221829129737975==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="nhmqncggqckfikyo"
Content-Disposition: inline


--nhmqncggqckfikyo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Florian,

On Thu, May 23, 2019 at 11:16:55AM -0700, Florian Fainelli wrote:
> On 5/23/19 2:56 AM, Maxime Ripard wrote:
> > The networking PHYs have a number of available device tree properties that
> > can be used in their device tree node. Add a YAML schemas for those.
> >
> > Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> > ---
> >  Documentation/devicetree/bindings/net/ethernet-phy.yaml | 148 +++++++++-
> >  Documentation/devicetree/bindings/net/phy.txt           |  80 +-----
> >  2 files changed, 149 insertions(+), 79 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/net/ethernet-phy.yaml
>
> Updating the PHY Library section of the MAINTAINERS file to include that
> binding document (not sure why it was not there) would be nice.

Sure, I'll do it, thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--nhmqncggqckfikyo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOenCQAKCRDj7w1vZxhR
xUgbAP9wwE5sdteTuWzmvFDeY+ZJM3sYeePKoRl395ve/Qr3oAD9F9BoZLzYs5Ni
OuDix3LenJQC4xZN88XtLfwtItIvAgA=
=k8+g
-----END PGP SIGNATURE-----

--nhmqncggqckfikyo--


--===============1594221829129737975==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1594221829129737975==--

