Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6995124A17
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 10:19:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rUZJHeCdbNO9LSuDwteD9YotXaiHvvLKyLddGEtEJn8=; b=u4DAoaMqzi1R4Qsv/DNxuhV6U
	I8kqgc2HcWwOUb9fTm35ThNU61jKyu29Pmgj8xJej19f3Cqtbi9q+RekTy++R4p+mLYnJPbDDzhs3
	94HWjpwfmL2rGGFPw4unbpVovQ+R5uZq9pHUTK270Z7p0KCHvbSAmEgT1eiMTb+280y/XQC5YZnHJ
	9hfe2SPw+9SDFwO8OsjohJGjFlP2xeuYL97TPjvnalm0pUJDUhzXK/BoZ79qxP5qz6zybpB0D0gLI
	cYcSbCv4WzhcbjJEE6MFAQTQygcK32ozcswxevuAmbCPkqGHbzS21HI3yDjP7A6t22EW0GEsxWHiC
	3FKYDGSIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSzzj-0007eB-D8; Tue, 21 May 2019 08:19:35 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSzzb-0007ct-5y
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 08:19:28 +0000
X-Originating-IP: 90.88.22.185
Received: from localhost (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr
 [90.88.22.185]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 4C0FC1BF206;
 Tue, 21 May 2019 08:19:06 +0000 (UTC)
Date: Tue, 21 May 2019 10:19:05 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: Device Tree nodes ending with -supply
Message-ID: <20190521081905.hrxpob2llmtgdtj4@flea>
References: <20190520155127.cdc6dofoqckwsrrb@flea>
 <CAL_JsqJhBji40AnA=ND116N0+DkvzhX=Rt-wa=DX3Fd3uQRdAw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAL_JsqJhBji40AnA=ND116N0+DkvzhX=Rt-wa=DX3Fd3uQRdAw@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_011927_374762_7D257F8B 
X-CRM114-Status: GOOD (  15.09  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============3453493537946951459=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3453493537946951459==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cq65ay2ooptglc76"
Content-Disposition: inline


--cq65ay2ooptglc76
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, May 20, 2019 at 02:46:11PM -0500, Rob Herring wrote:
> On Mon, May 20, 2019 at 10:51 AM Maxime Ripard
> <maxime.ripard@bootlin.com> wrote:
> >
> > Hi Rob,
> >
> > I've noticed that you recently added support to validate the *-supply
> > properties in the dt-schema tools.
> >
> > However, we have a family of PMIC that are exposing a bunch of power
> > supplies (battery, AC, USB, etc) to know what is currently powering
> > the board.
> >
> > All these various supplies are exposed as children nodes of the PMIC
> > itself, and they are named *-power-supply. For an example, you can
> > look at:
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm/boot/dts/axp209.dtsi#n56
> >
> > Now, those are obviously not properties, and yet the current dt-schema
> > schemas are trying to validate them.
> >
> > I'm not really sure how to fix that. Changing the node names seems
> > like an obvious solution, but they seem to be what they should be. Can
> > we reduce the scope of the validation to only match properties (ie
> > arrays?) and not the nodes (objects?)
>
> While I'd prefer to avoid that node name, I fixed it with the fancy
> new if/then schema:
>
>   ".*-supply$":
>     if:
>       not: { type: object }
>     then:
>       $ref: "types.yaml#/definitions/phandle"
>
> I'll push it out shortly.

Great, thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--cq65ay2ooptglc76
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOO0eQAKCRDj7w1vZxhR
xbWdAP9q2hlGIuZ0B/clAsr/IpvrVeYNlafIx72qJ/oQ2YzlKgD9H0Z8PN9oqzMf
HNLygFFaTCGOeyQxtNv5wftT1fWTaAA=
=Rowu
-----END PGP SIGNATURE-----

--cq65ay2ooptglc76--


--===============3453493537946951459==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3453493537946951459==--

