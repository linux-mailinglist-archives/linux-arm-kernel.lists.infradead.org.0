Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9288743687
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 15:28:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=79itz9XIg2OxwnZRvey76aiUPtDWIuoqc39l5L52wlQ=; b=N3Vh6iU2ioRMjdp7DiiOYCVro
	w2Xj7QvSPgqSt2EVKCpdKC3QE0YIHdCwzD2OZBCRfr8alVtWD4LiioQcd4LCKkbxz77NrHHKp/PJZ
	97I2+YYiZeAHuqsFy2LvjDu0MYE/lBdaf9i1bNI4LhUPFRGEV93J2Fqin1cJkZvPHkQ/p/pBkbJyW
	j3yfO6q03lLPGRO+WWv/3eEUnldVEl3DgbHYmEgyvwQO7pKhzuHZFINfs9nDY3kb+T5TpWM+a188y
	2ZGf3Y1cwhfUnwD+wvU7rZKy01dCFJ/1XqRqOTVUi4ovQkUUFj1dM5ychKhX/YXqDJBi1wjDk6FON
	RZEilGG+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbPmE-0005HL-Cd; Thu, 13 Jun 2019 13:28:26 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbPk7-0003OI-S4
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 13:26:20 +0000
Received: from localhost (aaubervilliers-681-1-40-246.w90-88.abo.wanadoo.fr
 [90.88.159.246]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id F29BB20000D;
 Thu, 13 Jun 2019 13:26:01 +0000 (UTC)
Date: Wed, 12 Jun 2019 17:38:18 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: i2c: sun6i-p2wi: Add YAML schemas
Message-ID: <20190612153818.q5xj5su33krlignu@flea>
References: <20190605122936.11972-1-maxime.ripard@bootlin.com>
 <CAL_JsqKC7uP0J14A8_CvPhbZkoSRNWSpS1ee+Q4sG013jY=JeQ@mail.gmail.com>
 <20190611090641.byr6mpywkfmbhrbk@flea>
 <CAL_JsqL3cua3u2gNTzHEdgFU0On5J9ziPZeFNiTpu5HS=SJoDA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAL_JsqL3cua3u2gNTzHEdgFU0On5J9ziPZeFNiTpu5HS=SJoDA@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_062616_465748_91EC0D6F 
X-CRM114-Status: GOOD (  17.30  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 0.8 DATE_IN_PAST_12_24     Date: is 12 to 24 hours before Received: date
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
 Wolfram Sang <wsa@the-dreams.de>,
 Gregory Clement <gregory.clement@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Linux I2C <linux-i2c@vger.kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============5426759145756999558=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5426759145756999558==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jqnskoivfbu5krfp"
Content-Disposition: inline


--jqnskoivfbu5krfp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Tue, Jun 11, 2019 at 08:50:37AM -0600, Rob Herring wrote:
> On Tue, Jun 11, 2019 at 3:06 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> >
> > Hi Rob,
> >
> > On Mon, Jun 10, 2019 at 03:34:18PM -0600, Rob Herring wrote:
> > > On Wed, Jun 5, 2019 at 6:29 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > +properties:
> > > > +  "#address-cells":
> > > > +    const: 1
> > > > +
> > > > +  "#size-cells":
> > > > +    const: 0
> > >
> > > These 2 are covered by i2c-controller.yaml, right?
> >
> > Indeed, I've removed them.
> >
> > > > +examples:
> > > > +  - |
> > > > +    p2wi@1f03400 {
> > >
> > > i2c@...
> > >
> > > That should fail on the schema (I need to get the schema checking of
> > > examples finished.)
> >
> > That would be great :) The compilation of the examples alone already
> > caught a good number of examples that weren't even compiling.
>
> I'm primarily waiting on a dtc change to be accepted[1]. Feel free to
> review/ack.

I guess it's too late now :)

> > Speaking of examples, one thing that would be great too would be to
> > allow the usage of our C headers. It's not supported at the moment,
> > and this often ends up with an example that is less readable than the
> > actual DT.
>
> It should be. You just have to add them. See
> Documentation/devicetree/bindings/timer/intel,ixp4xx-timer.yaml for
> example.

Hmmm, I'm pretty sure I tried this before. I'll try again.

> Maybe the common interrupt and gpio ones should be added by default.

I guess so, yeah. The GIC too is pretty common

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--jqnskoivfbu5krfp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXQEcaQAKCRDj7w1vZxhR
xWTgAP9WB+1aXtMSPMtLHzMJKOV6r1RNowdkygnwiE+cBDkvOAD7BDqmviqSzzZt
6saIUD3M+DBgvkUTsko4s0nJ4Wp+1AQ=
=GewT
-----END PGP SIGNATURE-----

--jqnskoivfbu5krfp--


--===============5426759145756999558==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5426759145756999558==--

