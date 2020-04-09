Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 859661A3C78
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 00:39:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1MvjyIBC8UDRTJJu+BiwkCg06JLxb3vlYOwciy5rQY4=; b=A3eYyPU59KKLot
	RYUgEn8ZIJnI+5gfGfnFnPU+u26voNp0RCeTmFcpihfW01k4VsvfxBStCFmUojvWdBzNdq4LQeHlo
	oPHye0nCwaK9Mj34MBaKBfGFMRZJ1T5UnZchFpPZ+cWqvk01M7yYp3hCo0Ps84a/MGvn17nxfKoCe
	OcGbmxYU/cr8UA0BVjMvsU0XkO6AwWigZUqfOmlZZbNK7dWMQwmgTvZxuDtXSpRYZD/ljUyzhFlAO
	82KE9yA2bw2TtqosxEYEWb30XjK0gYqGL35umaX8c2wd0vuTNenF9DBt+XQE0bkvsU6wHCijZ5sEW
	0JQ1KI3z6Vu0iI8EOjJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMfpT-0000Bx-85; Thu, 09 Apr 2020 22:39:23 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMfpL-0000B3-Ku
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 22:39:17 +0000
X-Originating-IP: 86.202.105.35
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 78876FF803;
 Thu,  9 Apr 2020 22:39:07 +0000 (UTC)
Date: Fri, 10 Apr 2020 00:39:07 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Subject: Re: [PATCH 2/3] Input: rotary-encoder-counter: add DT bindings
Message-ID: <20200409223907.GW3628@piout.net>
References: <20200406155806.1295169-1-kamel.bouhara@bootlin.com>
 <20200406155806.1295169-3-kamel.bouhara@bootlin.com>
 <20200409222115.GT75430@dtor-ws>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200409222115.GT75430@dtor-ws>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_153915_954488_CDFD9EE5 
X-CRM114-Status: GOOD (  23.94  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Kamel Bouhara <kamel.bouhara@bootlin.com>, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dmitry,

On 09/04/2020 15:21:15-0700, Dmitry Torokhov wrote:
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
> > +
> > +properties:
> > +  compatible:
> > +    const: rotary-encoder-counter
> 
> I wonder if a separate driver is really needed. The original driver be
> taught to use counter device when available?
> 

By the original driver, do you mean drivers/input/misc/rotary_encoder.c
that is using gpios ?

> > +
> > +  counter:
> > +    description: Phandle for the counter device providing rotary position.
> > +
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
> Is it really property of the rotary encoder itself or property of the
> counter device?
> 

The mode the quadrature decoder has to be put in depends on both the
rotary encoder and the qdec.

> > +
> > +  steps:
> > +    description: Number of steps in a full turnaround of the encoder.
> > +      Only relevant for absolute axis. Defaults to 24 which is a typical
> > +      value for such devices.
> > +
> > +  relative-axis:
> > +    description: Register a relative axis rather than an absolute one.
> > +    type: boolean
> > +
> > +  rollover:
> > +    description: Automatic rollover when the rotary value becomes greater
> > +      than the specified steps or smaller than 0. For absolute axis only.
> > +    type: boolean
> > +
> > +  poll-interval:
> > +    description: Poll interval at which the position is read from the counter
> > +      device (default 500ms).
> 
> Is there a way found counters to signal an interrupt?
> 

For some counters, there are interrupts available, this is not trivial
with the counter that is the target of this work but this is on the TODO
list. Of course, this will also require adding a bit more to the
in-kernel counter API to allow registering a callback that would be
called when an interrupt happens.


-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
