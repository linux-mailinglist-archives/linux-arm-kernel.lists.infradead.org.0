Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9260696B5C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 23:23:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dciKZvQRhmeUBjcSS23A/goUyt5kpYQSAOf/Nn8d9MA=; b=KvmTyexivN8bdu
	8viPc2E3qm0JZ/nRbi62Cirxn8jYIDgjKusLdFSO9ejkNp3KzTAjNGYqy8eqX10Mrul5bZFHoCg7m
	AgNvCqi3cAkuNqj9ODSt37vAFjS+TnygCHM2j69mgxqkkIKqx4GDKOyLoM1zsNKGMqto//kawKNMy
	W10e+IGstGkZkhH34bRvLqQbMvEv1fQEC35GNE6jfmugDO3qSLNgu2VIxTVAs4DR9UsvSf0y2xtVg
	jkYNFc8bhdHWbdY89YgyYiqSat/iSHcoP9Mw5zHNl/ZDwXyfN37GiIxr/MBy/DonmhtCySdqpA1oI
	9b+zVyQRI/w9ikge0HRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Bb7-0004iN-UJ; Tue, 20 Aug 2019 21:23:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Baz-0004hy-NI
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 21:23:15 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1i0Bap-0003EB-OR; Tue, 20 Aug 2019 23:23:03 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1i0Bap-0001UJ-3l; Tue, 20 Aug 2019 23:23:03 +0200
Date: Tue, 20 Aug 2019 23:23:03 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH RFC] dt-bindings: regulator: define a mux regulator
Message-ID: <20190820212303.dhdo7g7kvisgeb3h@pengutronix.de>
References: <20190820152511.15307-1-u.kleine-koenig@pengutronix.de>
 <CAL_JsqLg19883syn66P6zUkLPpQ8FYpeFj2QYvSp1UsWOhVKyQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqLg19883syn66P6zUkLPpQ8FYpeFj2QYvSp1UsWOhVKyQ@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_142313_760626_7B1C7101 
X-CRM114-Status: GOOD (  28.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Liam Girdwood <lgirdwood@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Rob,

On Tue, Aug 20, 2019 at 11:39:27AM -0500, Rob Herring wrote:
> On Tue, Aug 20, 2019 at 10:25 AM Uwe Kleine-K=F6nig
> <u.kleine-koenig@pengutronix.de> wrote:
> >
> > A mux regulator is used to provide current on one of several outputs. It
> > might look as follows:
> >
> >       ,------------.
> >     --<OUT0     A0 <--
> >     --<OUT1     A1 <--
> >     --<OUT2     A2 <--
> >     --<OUT3        |
> >     --<OUT4     EN <--
> >     --<OUT5        |
> >     --<OUT6     IN <--
> >     --<OUT7        |
> >       `------------'
> >
> > Depending on which address is encoded on the three address inputs A0, A1
> > and A2 the current provided on IN is provided on one of the eight
> > outputs.
> >
> > What is new here is that the binding makes use of a #regulator-cells
> > property. This uses the approach known from other bindings (e.g. gpio)
> > to allow referencing all eight outputs with phandle arguments. This
> > requires an extention in of_get_regulator to use a new variant of
> > of_parse_phandle_with_args that has a cell_count_default parameter that
> > is used in absence of a $cell_name property. Even if we'd choose to
> > update all regulator-bindings to add #regulator-cells =3D <0>; we still
> > needed something to implement compatibility to the currently defined
> > bindings.
> >
> > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> > ---
> > Hello,
> >
> > the obvious alternative is to add (here) eight subnodes to represent the
> > eight outputs. This is IMHO less pretty, but wouldn't need to introduce
> > #regulator-cells.
> =

> I'm okay with #regulator-cells approach.

OK, then I will look into that in more detail; unless the regulator guys
don't agree with this approach of course.

> > Apart from reg =3D <..> and a phandle there is (I think) nothing that
> > needs to be specified in the subnodes because all properties of an
> > output (apart from the address) apply to all outputs.
> >
> > What do you think?
> >
> > Best regards
> > Uwe
> >
> >  .../bindings/regulator/mux-regulator.yaml     | 52 +++++++++++++++++++
> >  1 file changed, 52 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/regulator/mux-reg=
ulator.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/regulator/mux-regulator.=
yaml b/Documentation/devicetree/bindings/regulator/mux-regulator.yaml
> > new file mode 100644
> > index 000000000000..f06dbb969090
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/regulator/mux-regulator.yaml
> > @@ -0,0 +1,52 @@
> > +# SPDX-License-Identifier: GPL-2.0
> =

> (GPL-2.0-only OR BSD-2-Clause) is preferred.

OK.

> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/regulator/mux-regulator.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: MUX regulators
> > +
> > +properties:
> > +  compatible:
> > +    const: XXX,adb708
> =

> ? I assume you will split this into a common and specific schemas. I
> suppose there could be differing ways to control the mux just like all
> other muxes.

Not sure if a specific schema is necessary. I wrote XXX because I was
offline while I authored the binding and so couldn't determine the right
vendor to use.

> > +  enable-gpios:
> > +    maxItems: 1
> > +
> > +  address-gpios:
> > +    description: Array of typically three GPIO pins used to select the
> > +      regulator's output. The least significant address GPIO must be l=
isted
> > +      first. The others follow in order of significance.
> > +    minItems: 1
> > +
> > +  "#regulator-cells":
> =

> How is this not required?

It should. For the RFC patch I didn't took the time to iron all the
details. My main concern was/is how the binding should look like and if
an #regulator-cells with a default would be acceptable.
 =

Best regards and thanks for your feedback,
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
