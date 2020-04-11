Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 947321A4F6F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Apr 2020 12:44:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=odMtawOyNsbppkNqaQa3qNCYudODeCtJJ1hyVFp1eGQ=; b=h8nuM25sllQxNu
	GqlO/954twvw0P50X9hmentZqhNVYztIWxqCE8x3rm3SA+E08VnMQ+pn/nGFmXXPylNMtzlQxYGiW
	HtguCaDCRT9WwQfNfF4No369yfHATB5elsBt6/WGanl1RzWE7RGPWF5luYh3XYkOwFmBx7sw28jTT
	89B74LdESLMzf3paSyVCNaxdL1RoFepcxjQqRSt/hR5Yd1IOr/zL6os2b6Q9tCyKQ8KlUeLeaDwDc
	/n7cUYSprLYIqXvpyNqV6ELXk0pNkmFxOcEgDmifDDatZo1FFLVlA+Wvm7Pr1/z+wS9zcCcCkDqJA
	qvvEz2uYScBHogqW1GTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNDcN-00055c-QF; Sat, 11 Apr 2020 10:44:07 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNDcD-00054x-Qn
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Apr 2020 10:43:59 +0000
Received: from kb-xps (unknown [78.193.40.249])
 (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id AD555200008;
 Sat, 11 Apr 2020 10:43:54 +0000 (UTC)
Date: Sat, 11 Apr 2020 12:43:53 +0200
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Subject: Re: [PATCH 2/3] Input: rotary-encoder-counter: add DT bindings
Message-ID: <20200411104353.GB161090@kb-xps>
References: <20200406155806.1295169-1-kamel.bouhara@bootlin.com>
 <20200406155806.1295169-3-kamel.bouhara@bootlin.com>
 <20200409222115.GT75430@dtor-ws> <20200409223907.GW3628@piout.net>
 <20200409234623.GU75430@dtor-ws>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200409234623.GU75430@dtor-ws>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_034358_138965_6F7D9853 
X-CRM114-Status: GOOD (  30.61  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
 Alexandre Belloni <alexandre.belloni@bootlin.com>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, William Breathitt Gray <vilhelm.gray@gmail.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 09, 2020 at 04:46:23PM -0700, Dmitry Torokhov wrote:
> On Fri, Apr 10, 2020 at 12:39:07AM +0200, Alexandre Belloni wrote:
> > Hi Dmitry,
> >
> > On 09/04/2020 15:21:15-0700, Dmitry Torokhov wrote:
> > > On Mon, Apr 06, 2020 at 05:58:05PM +0200, Kamel Bouhara wrote:
> > > > Add dt binding for the counter variant of the rotary encoder driver.
> > > >
> > > > Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> > > > ---
> > > >  .../input/rotary-encoder-counter.yaml         | 67 +++++++++++++++++++
> > > >  1 file changed, 67 insertions(+)
> > > >  create mode 100644 Documentation/devicetree/bindings/input/rotary-encoder-counter.yaml
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/input/rotary-encoder-counter.yaml b/Documentation/devicetree/bindings/input/rotary-encoder-counter.yaml
> > > > new file mode 100644
> > > > index 000000000000..a59f7c1faf0c
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/input/rotary-encoder-counter.yaml
> > > > @@ -0,0 +1,67 @@
> > > > +# SPDX-License-Identifier: GPL-2.0
> > > > +%YAML 1.2
> > > > +---
> > > > +$id: http://devicetree.org/schemas/input/rotary-encoder-counter.yaml#
> > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > +
> > > > +title: Rotary Encoder Counter
> > > > +
> > > > +maintainers:
> > > > +  - Kamel Bouhara <kamel.bouhara@bootlin.com>
> > > > +
> > > > +description:
> > > > +  Registers a Rotary encoder connected through a counter device.
> > > > +
> > > > +properties:
> > > > +  compatible:
> > > > +    const: rotary-encoder-counter
> > >
> > > I wonder if a separate driver is really needed. The original driver be
> > > taught to use counter device when available?
> > >
> >
> > By the original driver, do you mean drivers/input/misc/rotary_encoder.c
> > that is using gpios ?
>
> Yes.
>

Well, it could be the case if the counter device could provide such a
way to signal interrupts.

> >
> > > > +
> > > > +  counter:
> > > > +    description: Phandle for the counter device providing rotary position.
> > > > +
> > > > +  linux-axis:
> > > > +    description: The input subsystem axis to map to this rotary encoder.
> > > > +    type: boolean
> > > > +
> > > > +  qdec-mode:
> > > > +    description: |
> > > > +      Quadrature decoder function to set in the counter device.
> > > > +      3: x1-PHA
> > > > +      4: x1-PHB
> > > > +      5: x2-PHA
> > > > +      6: x2-PHB
> > > > +      7: x4-PHA and PHB
> > >
> > > Is it really property of the rotary encoder itself or property of the
> > > counter device?
> > >
> >
> > The mode the quadrature decoder has to be put in depends on both the
> > rotary encoder and the qdec.
>
> OK.
>
> >
> > > > +
> > > > +  steps:
> > > > +    description: Number of steps in a full turnaround of the encoder.
> > > > +      Only relevant for absolute axis. Defaults to 24 which is a typical
> > > > +      value for such devices.
> > > > +
> > > > +  relative-axis:
> > > > +    description: Register a relative axis rather than an absolute one.
> > > > +    type: boolean
> > > > +
> > > > +  rollover:
> > > > +    description: Automatic rollover when the rotary value becomes greater
> > > > +      than the specified steps or smaller than 0. For absolute axis only.
> > > > +    type: boolean
> > > > +
> > > > +  poll-interval:
> > > > +    description: Poll interval at which the position is read from the counter
> > > > +      device (default 500ms).
> > >
> > > Is there a way found counters to signal an interrupt?
> > >
> >
> > For some counters, there are interrupts available, this is not trivial
> > with the counter that is the target of this work but this is on the TODO
> > list. Of course, this will also require adding a bit more to the
> > in-kernel counter API to allow registering a callback that would be
> > called when an interrupt happens.
>
> Should it be a callback, or can counter create an irqchip so that users
> do not need to know how exactly it is wired up?
>

Maybe for some of them yes but for others the polling is still required.

> Thanks.
>
> --
> Dmitry

--
Kamel Bouhara, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
