Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFCF8C9F75
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 15:30:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kCy5sSad9BDNNUdGDmVg7nye2aMAT2cgKCh91HYdcpA=; b=QpYTgv8VcZRXQJLT53QM9BqUj
	w0iUkRoMySmY0X2ee3IKWTDlzph55P4jS4/jzAJ3B5L7El1j4sOjg5TmcW2wgBwVvnScw326bX5vK
	rtURHtEf3aj5vV7Kocg3ookmBoVFjIDBkPO2m1Itbz4zcUNKc4xVNxPHj8jFMoLfQ29EDvAKJcPOa
	kwybD3/Mc+X8L3DvTgr706ZveaiY3f9Z5OFq6bfHBqJVSxdsaKJAGTVx/m3dt5sAmRQPG0dosiAC0
	4TXkqsUqFA5vWeKLLhrSfd+PsXxMjqn7aVBYvV16rE1vI4vpxRplWsQzTQg7saMg3qIldJ2HzRWR+
	ZuNEu3YPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG1Bq-0004jq-8i; Thu, 03 Oct 2019 13:30:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG1Bi-0004jP-E3
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 13:30:35 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 87D85207FF;
 Thu,  3 Oct 2019 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570109434;
 bh=/PbXIGt0UaMtnHakh0maKsJfjC9hWocWlO7+FUASxAs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2QzvAZ+ZKgdOJ80qmd9SOJ5LSwKyk4G/pw5n8Gp/a2xELivFH5ULWHtb4eAgV9ans
 E48i9e22CPdnXQuE2n7GWOtdKqOw4VSGKA0OvZ19/QyJ2q0J6pwyokSdaw/GXyAOMy
 RBSZCDf5+Mji9yipjs10suznOE6Etm80OulAKWYY=
Date: Thu, 3 Oct 2019 15:30:31 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH v11 4/7] dt-bindings: sun6i-dsi: Add VCC-DSI supply
 property
Message-ID: <20191003133031.gowixvfbdaif4sdf@gilmour>
References: <20191003064527.15128-1-jagan@amarulasolutions.com>
 <20191003064527.15128-5-jagan@amarulasolutions.com>
 <20191003114733.56mlar666l76uoyb@gilmour>
 <0086CD40-F161-4B33-8D76-8DCA20E7DB07@aosc.io>
MIME-Version: 1.0
In-Reply-To: <0086CD40-F161-4B33-8D76-8DCA20E7DB07@aosc.io>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_063034_512791_C08602C5 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, michael@amarulasolutions.com,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 Jagan Teki <jagan@amarulasolutions.com>, Daniel Vetter <daniel@ffwll.ch>,
 Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1967705508600893101=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1967705508600893101==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xl6ox63chtxqzxbp"
Content-Disposition: inline


--xl6ox63chtxqzxbp
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 03, 2019 at 09:04:03PM +0800, Icenowy Zheng wrote:
> =E4=BA=8E 2019=E5=B9=B410=E6=9C=883=E6=97=A5 GMT+08:00 =E4=B8=8B=E5=8D=88=
7:47:33, Maxime Ripard <mripard@kernel.org> =E5=86=99=E5=88=B0:
> >On Thu, Oct 03, 2019 at 12:15:24PM +0530, Jagan Teki wrote:
> >> Allwinner MIPI DSI controllers are supplied with SoC DSI
> >> power rails via VCC-DSI pin.
> >>
> >> Some board still work without supplying this but give more
> >> faith on datasheet and hardware schematics and document this
> >> supply property in required property list.
> >>
> >> Reviewed-by: Rob Herring <robh@kernel.org>
> >> Tested-by: Merlijn Wajer <merlijn@wizzup.org>
> >> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> >> ---
> >>  .../bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml         | 3
> >+++
> >>  1 file changed, 3 insertions(+)
> >>
> >> diff --git
> >a/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi=
=2Eyaml
> >b/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi=
=2Eyaml
> >> index 47950fced28d..9d4c25b104f6 100644
> >> ---
> >a/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi=
=2Eyaml
> >> +++
> >b/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi=
=2Eyaml
> >> @@ -36,6 +36,9 @@ properties:
> >>    resets:
> >>      maxItems: 1
> >>
> >> +  vcc-dsi-supply:
> >> +    description: VCC-DSI power supply of the DSI encoder
> >> +
> >
> >The driver treats it as mandatory, so I've added it to the binding, as
> >suggested by the commit log.
>
> No. The regulator_get function will return dummy regulator, rather than
> fail, if the regulator is not specified.

Yes. And this deals nicely with the backward compatibility case. The
regulator is there on all the SoCs, so there's no reason to leave it
out.

Maxime

--xl6ox63chtxqzxbp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXZX39wAKCRDj7w1vZxhR
xfdtAP9iY02ClBdX7PytSYTVv7u9rk5qFxNbRhfligYsza6diwEA+bXtRpDjiCDy
YsfwN2Wm3Vvp2K/WtdvzfKezGk0WpAo=
=iYP9
-----END PGP SIGNATURE-----

--xl6ox63chtxqzxbp--


--===============1967705508600893101==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1967705508600893101==--

