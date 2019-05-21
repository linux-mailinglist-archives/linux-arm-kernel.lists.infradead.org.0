Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1516A24FC6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 15:10:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XgUxh6AnLJAOXvjkHyxeiQfFUd7HeKoYtkwEb9GP5ag=; b=ezTpw4WpKsr+Ue0T4aUjh8StT
	vh3CQSt/Ex++P7fcq1nPCQLfgLIMCNy9g6gZd4AqHkqZAlh96SjhVG0975C+YXWA4khvpLNRozo3J
	AlvCpiff93TMjoyOuoNkfvyBxVi/K+tKxnfUAUkcL5/LCqojzAUYsB9dp1aPgDiNvXDzQYq+5tyVz
	dMoyd8epS6sUwNHv5k9jhmwUD7UyWo5xTXNwVinaoAyRVzxH9U8OIua00Otl2vpQnBc2LFtohiE6D
	kBHMt8gFCdXZJKrcvvZq/cGfg0y9Q0kTkybVvlpEqVc3L9/WKy40UmY2/P6zC+uxEBfiT/lAiQ6mp
	ypNq8sIjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT4Ww-00071W-8A; Tue, 21 May 2019 13:10:10 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT4Wl-0006pm-K9
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 13:10:01 +0000
X-Originating-IP: 90.88.22.185
Received: from localhost (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr
 [90.88.22.185]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 2E4871C000A;
 Tue, 21 May 2019 13:09:55 +0000 (UTC)
Date: Tue, 21 May 2019 15:09:55 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: luca@z3ntu.xyz
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Add lradc node
Message-ID: <20190521130955.3omqwpx3i7njsb3t@flea>
References: <20190518170929.24789-1-luca@z3ntu.xyz>
 <20190520110742.ykgxwaabzzwovgpl@flea>
 <9B2B83DF-2C91-4DDA-B707-664A792A8BCF@z3ntu.xyz>
MIME-Version: 1.0
In-Reply-To: <9B2B83DF-2C91-4DDA-B707-664A792A8BCF@z3ntu.xyz>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_060959_814721_066F26D4 
X-CRM114-Status: GOOD (  21.32  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============0539812120323702616=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0539812120323702616==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="o4dueejzfmmapbjw"
Content-Disposition: inline


--o4dueejzfmmapbjw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, May 21, 2019 at 08:43:45AM +0200, luca@z3ntu.xyz wrote:
> On May 20, 2019 1:07:42 PM GMT+02:00, Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> >On Sat, May 18, 2019 at 07:09:30PM +0200, Luca Weiss wrote:
> >> Add a node describing the KEYADC on the A64.
> >>
> >> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> >> ---
> >>  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 7 +++++++
> >>  1 file changed, 7 insertions(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> >b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> >> index 7734f70e1057..dc1bf8c1afb5 100644
> >> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> >> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> >> @@ -704,6 +704,13 @@
> >>  			status = "disabled";
> >>  		};
> >>
> >> +		lradc: lradc@1c21800 {
> >> +			compatible = "allwinner,sun4i-a10-lradc-keys";
> >> +			reg = <0x01c21800 0x100>;
> >> +			interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
> >> +			status = "disabled";
> >> +		};
> >> +
> >
> >The controller is pretty different on the A64 compared to the A10. The
> >A10 has two channels for example, while the A64 has only one.
> >
> >It looks like the one in the A83t though, so you can use that
> >compatible instead.
>
> Looking at the patch for the A83t, the only difference is that it
> uses a 3/4 instead of a 2/3 voltage divider, nothing is changed with
> the channels.

I guess you can reuse the A83t compatible here then, and a more
specific a64 compatible in case we ever need to fix this.

> But I'm also not sure which one (or a different one)
> is used from looking at the "A64 User Manual".

I'm sorry, what are you referring to with "one" in that sentence?

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--o4dueejzfmmapbjw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOP4owAKCRDj7w1vZxhR
xZkvAQCd5wzD/xjw3laO9nxjD2QxKl1qIHQW5BZeiCHbM1DA5wD/VtDKwN19wKfS
efcYJj1jUOQM495DpaIysQG3XvYg3AA=
=08Dd
-----END PGP SIGNATURE-----

--o4dueejzfmmapbjw--


--===============0539812120323702616==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0539812120323702616==--

