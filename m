Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 021CD978D5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 14:08:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=m8MZlBwjOe/HSGE/vrZ/AqAS+B7lDLhiCfS0q8RcwTs=; b=BicnAISHQ9OAMqXGjiu2Ei4fu
	MEMIDFx1UCPhZlHWcWze0oFyb1KOV1OMGOUDKVXScpAxUzIivpB8ozX8HS4WGgvh+CGwY9+Kh6oYj
	sFiq9ZZg8I6f21jNWfc8vyjEh184tcvX5ExlE5y6gtSKOTJM5Lv6KH0Rv9fh3m5O+9NMnnKz+e7JU
	m5jU92VCgNNyg3R7rqNOPLe3FwBPfaRae/AkkvT5Vhi4E6v4RiV71PrVkI5G6x4tk44Hv7u+ge5lK
	i3QSOpciH26+iZ5zmhO5hD/BgJHXOpwiJ/eZrZLhMr0o9TQn3mlBl0HRwsJF7kWHofagQfY1N5gXg
	7zoLZdK0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0PPO-0005hl-Sy; Wed, 21 Aug 2019 12:08:11 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0PPA-0005hO-3Q
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 12:07:58 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id BE9C9E0004;
 Wed, 21 Aug 2019 12:07:43 +0000 (UTC)
Date: Wed, 21 Aug 2019 14:07:43 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH v4 03/10] dt-bindings: mailbox: Add a sunxi message box
 binding
Message-ID: <20190821120743.hihurpkjancgacs6@flea>
References: <20190820032311.6506-1-samuel@sholland.org>
 <20190820032311.6506-4-samuel@sholland.org>
 <20190820071456.if5lyb4t3em77svl@flea>
 <8947f4d1-3bb4-11b8-b114-5016339514b8@sholland.org>
MIME-Version: 1.0
In-Reply-To: <8947f4d1-3bb4-11b8-b114-5016339514b8@sholland.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_050756_293489_EEBE9B27 
X-CRM114-Status: GOOD (  15.21  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
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
 linux-sunxi@googlegroups.com, Rob Herring <robh@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Jassi Brar <jassisinghbrar@gmail.com>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Corentin Labbe <clabbe.montjoie@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7527854315908055668=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7527854315908055668==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="yj7riia4gph2tfyk"
Content-Disposition: inline


--yj7riia4gph2tfyk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Aug 20, 2019 at 08:04:26AM -0500, Samuel Holland wrote:
> On 8/20/19 2:14 AM, Maxime Ripard wrote:
> > Hi,
> >
> > On Mon, Aug 19, 2019 at 10:23:04PM -0500, Samuel Holland wrote:
> >> This mailbox hardware is present in Allwinner sun8i, sun9i, and sun50i
> >> SoCs. Add a device tree binding for it.
> >>
> >> Reviewed-by: Rob Herring <robh@kernel.org>
> >> Signed-off-by: Samuel Holland <samuel@sholland.org>
> >> ---
> >>  .../mailbox/allwinner,sunxi-msgbox.yaml       | 79 +++++++++++++++++++
> >>  1 file changed, 79 insertions(+)
> >>  create mode 100644 Documentation/devicetree/bindings/mailbox/allwinner,sunxi-msgbox.yaml
> >
> > So we merged a bunch of schemas already, with the convention that the
> > name was the first compatible to use that binding.
> >
> > That would be allwinner,sun6i-a31-msgbox.yaml in that case
>
> Okay, I'll rename the binding and driver (and Kconfig symbol?).

Yep, thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--yj7riia4gph2tfyk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXV00DwAKCRDj7w1vZxhR
xR3QAP4uQpZfAOxXPnBEZQVDzwkMpjeJHL0oHyLSa2q695BzKQEA+XYUt7uuVPcp
6l8M8wf6Q1kamKS9IXXV4732b0h59Ao=
=rNyV
-----END PGP SIGNATURE-----

--yj7riia4gph2tfyk--


--===============7527854315908055668==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7527854315908055668==--

