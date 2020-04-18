Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DEB51AF32D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 20:25:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w2qB8LNriIrpbkvU/4LxTcOEq5Rf2vF3eywqU+XWIxA=; b=ecMB9SmRgCedML
	lPKKG8At0GYlO3PuO9lBVGPRduAirU5p66t6Ng9hUxM2A8wrlBSp6DmxdpvwXwLHZlXSq9HxpHGIl
	5EaqKTBs3h6L3KSpZjQwyjCiYSBImuxRDYAdiJ5ciHUnMLaF5oNwnMbYGS0XYTcJEd5JiMzWQJKan
	yKkLKZRt5ge0NR84rZ1rKtBhDKYRoS42rKNrN0e/lWUMd2tVX/Jt/lu9o//uzVZKbz2SVtNXYQOlP
	dih08jC2mbKm/ie2Ig2p0qRDNk9o9ffIG1Ko3adxQ6UvyYBplp/zSemK4EfNMzxSdkR7A/7HegYiJ
	n3hQLFOy1XlK0YHVnXag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPs9C-0004HR-74; Sat, 18 Apr 2020 18:24:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPs92-0004H6-WE
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 18:24:50 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BD51221BE5;
 Sat, 18 Apr 2020 18:24:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587234288;
 bh=Eiw2FcEguTRJkOBXYe2RiFR5T2mMDxr5J0RGwGhG6fc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=oIG38DGXDITaJxY5mhXfozPYjDp5qVgzxBz2FaEUDhDUIDtJ8/LXkYtm0DCH2A5hi
 oAqP0Lp7VtDQ92aeu9gmRxu7OyTQ6xhEWpeP1bBkthsCRnau6P7qayITlHJtAYNSF4
 IVvwF00aGUuThd3pXs7B1gION9uSlHW8WhJ9oBAk=
Date: Sat, 18 Apr 2020 19:24:43 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: William Breathitt Gray <vilhelm.gray@gmail.com>
Subject: Re: [PATCH v3 2/3] dt-bindings: counter: microchip-tcb-capture counter
Message-ID: <20200418192443.47322236@archlinux>
In-Reply-To: <20200417135820.GB94725@icarus>
References: <20200415130455.2222019-1-kamel.bouhara@bootlin.com>
 <20200415130455.2222019-3-kamel.bouhara@bootlin.com>
 <20200417135820.GB94725@icarus>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_112449_082063_83BABB5F 
X-CRM114-Status: GOOD (  20.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Kamel Bouhara <kamel.bouhara@bootlin.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org, Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 17 Apr 2020 09:58:20 -0400
William Breathitt Gray <vilhelm.gray@gmail.com> wrote:

> On Wed, Apr 15, 2020 at 03:04:54PM +0200, Kamel Bouhara wrote:
> > Describe the devicetree binding for the Microchip TCB module.
> > Each counter blocks exposes three independent counters.
> > 
> > However, when configured in quadrature decoder, both channel <0> and <1>
> > are required for speed/position and rotation capture (yet only the
> > position is captured).
> > 
> > Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>  
> 
> Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
Will let this sit a bit longer to let the DT maintainers have an opportunity
to take a look.

Thanks,

Jonathan

> 
> > ---
> > Changes from v3:
> >  - Updated the brand name: s/atmel/microchip/.
> > 
> > Changes from v2:
> >  - Fixed errors reported by dt_binding_check
> > 
> >  .../counter/microchip-tcb-capture.yaml        | 33 +++++++++++++++++++
> >  1 file changed, 33 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/counter/microchip-tcb-capture.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/counter/microchip-tcb-capture.yaml b/Documentation/devicetree/bindings/counter/microchip-tcb-capture.yaml
> > new file mode 100644
> > index 000000000000..183e9ee4c049
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/counter/microchip-tcb-capture.yaml
> > @@ -0,0 +1,33 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/counter/microchip-tcb-capture.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Microchip TCB Counter
> > +
> > +maintainers:
> > +  - Kamel Bouhara <kamel.bouhara@bootlin.com>
> > +
> > +properties:
> > +  compatible:
> > +    const: "microchip,tcb-capture"
> > +
> > +  reg:
> > +    description: TCB capture channel to register as counter device.
> > +      Each channel is independent therefore only one channel is
> > +      registered by default execpt for the QDEC mode where both TCB0's
> > +      channels <0> and  <1> are required.
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    tcb0: timer@f800c000 {
> > +        compatible = "microchip,tcb-capture";
> > +        reg = <0>, <1>;
> > +    };
> > -- 
> > 2.25.0
> >   


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
