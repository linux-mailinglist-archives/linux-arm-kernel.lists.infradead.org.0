Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF451A0C77
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 13:04:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7WE/Qbf1YC6ew7sRx94qTmy6HuaWjljfaYcBeft6NJo=; b=FQXcDc3Xr9ZHL+
	TSl1/Ks2w1d3lgxwss3l+qNKAaqY6X0VReO8kzdileU95lOowaK+httdTaiEaswLl1s6noIkLY3oo
	4UfWNcvj+7pl87a4hxoMshGTzq/man2rigDzJ/cFdF4zSAHkwA+EU3hiD1AqZX6RgPDquQ0u3LDbs
	CxgA/e07U1mQHw5RTWf1MFvKS++q7DbjOob1YeFRKd/mjDsEb3C+0P9TlFVzYqQ/g9ljgie7dC86U
	jG9RCT8NOwrFuPX14qTNR6w1d0xOXZCVNLDy4h8RJ2eGmpqMAxODukO8SKIQyhntAhy5flZHqkJ73
	kzWJx4iT1lbj/hIfME7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLm1N-00056U-0M; Tue, 07 Apr 2020 11:03:57 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLm1F-00055Y-FJ
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 11:03:51 +0000
X-Originating-IP: 78.193.40.249
Received: from kb-xps (unknown [78.193.40.249])
 (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id D5839FF819;
 Tue,  7 Apr 2020 11:03:40 +0000 (UTC)
Date: Tue, 7 Apr 2020 13:03:39 +0200
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 2/3] Input: rotary-encoder-counter: add DT bindings
Message-ID: <20200407110339.GA1489441@kb-xps>
References: <20200406155806.1295169-1-kamel.bouhara@bootlin.com>
 <20200406155806.1295169-3-kamel.bouhara@bootlin.com>
 <20200407094159.xtbhtsxorvs2g22c@gilmour.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200407094159.xtbhtsxorvs2g22c@gilmour.lan>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_040349_784325_A82FA73E 
X-CRM114-Status: GOOD (  33.65  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
 Alexandre Belloni <alexandre.belloni@bootlin.com>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 07, 2020 at 11:41:59AM +0200, Maxime Ripard wrote:
> Hi Kamel,
>

Hi Maxime,

> The prefix for device tree bindings is usually dt-bindings:
> $framework: $title
>
> So a title like "dt-bindings: input: Add a counter-based rotary
> encoder binding" would be better.
>

OK, to be fixed then.

> On Mon, Apr 06, 2020 at 05:58:05PM +0200, Kamel Bouhara wrote:
> > Add dt binding for the counter variant of the rotary encoder driver.
> >
> > Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> > ---
> >  .../input/rotary-encoder-counter.yaml         | 67 +++++++++++++++++++
> >  1 file changed, 67 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/input/rotary-encoder-counter.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/input/rotary-encoder-counter.yaml b/Documentation/devicetree/bindings/input/rotary-encoder-counter.yaml
> > new file mode 100644
> > index 000000000000..a59f7c1faf0c
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/input/rotary-encoder-counter.yaml
> > @@ -0,0 +1,67 @@
> > +# SPDX-License-Identifier: GPL-2.0
>
> Bindings are usually used by other OS's, so you should consider
> putting it under a more permissive license, usually that would be GPL2
> and the BSD-2-Clause
>

Well to be honest I just looked into an existing binding and I guess
the wrong one :).

> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/input/rotary-encoder-counter.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Rotary Encoder Counter
> > +
> > +maintainers:
> > +  - Kamel Bouhara <kamel.bouhara@bootlin.com>
> > +
> > +description:
> > +  Registers a Rotary encoder connected through a counter device.
>
> You shouldn't really describe the action here, but more what the
> binding is about. The registration will not depend on the presence of
> the node following that binding, but rather on whether or not the OS
> that uses it has support for it.
>

Then shall it be better with just :
"A rotary encoder device using a generic counter interface." ?

> > +properties:
> > +  compatible:
> > +    const: rotary-encoder-counter
> > +
> > +  counter:
> > +    description: Phandle for the counter device providing rotary position.
>
> This should have a type
>
> > +  linux-axis:
> > +    description: The input subsystem axis to map to this rotary encoder.
> > +    type: boolean
> > +
> > +  qdec-mode:
> > +    description: |
> > +      Quadrature decoder function to set in the counter device.
> > +      3: x1-PHA
> > +      4: x1-PHB
> > +      5: x2-PHA
> > +      6: x2-PHB
> > +      7: x4-PHA and PHB
>
> That range (even though it's a bit odd) should be expressed through an
> enum so that you can check that the values are actually within that
> range.
>

Indeed, that make sens to check it from the binding.

Will fix it in v2.

> > +  steps:
> > +    description: Number of steps in a full turnaround of the encoder.
>
> Muli-line strings should have either quotes around them, or a | or >
> like you did for the description. | will keep the \n, > will make that
> a single string.
>
> This should also have a type
>
> > +      Only relevant for absolute axis.
>
> This should be expressed through a if / then clause, or a dependencies one
>
> >                                         Defaults to 24 which is a typical
> > +      value for such devices.
>
> This should be expressed through a default property.
>

The devil is in the details and yet quite lot of them to fix.

Thanks.

> > +  relative-axis:
> > +    description: Register a relative axis rather than an absolute one.
> > +    type: boolean
> > +
> > +  rollover:
> > +    description: Automatic rollover when the rotary value becomes greater
> > +      than the specified steps or smaller than 0. For absolute axis only.
> > +    type: boolean
>
> Same story than steps for the dependency. Also, what is is the
> behaviour when this property isn't set?
>

OK, if rollover isn't set then the count is unbounded, of course this
shall be described here.

> > +  poll-interval:
> > +    description: Poll interval at which the position is read from the counter
> > +      device (default 500ms).
>
> It should have a type too, and a default property
>
> > +
> > +required:
> > +  - compatible
> > +  - counter
> > +  - qdec-mode
> > +
> > +examples:
> > +  - |
> > +    rotary@0 {
> > +        compatible = "rotary-encoder-counter";
>
> A unit-address (the part after @) only makes sense for a node if
> there's a matching reg property in the node. This will trigger a DTC
> warning, so you should remove the @0
>

Ok I'll fix it then.

Thanks again.

> Maxime



--
Kamel Bouhara, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
