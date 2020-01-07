Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBDB9132D32
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 18:37:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v/VKelWhXolwMaa/FIPZOK3KqF++Yc0rcE4c7JeGRYc=; b=jk8240V/kVq9J4
	/KuTDxfeHlRBPPS2i+urguJZMj474ZoxienTAL8ncCKtH1omCriP+9qtY3wgEKUbrz21rl+OJO+er
	UkPzOgigVjgBjDYrdGlSdQtkKBGkMYE8Lfbw9M+QirV46ZuzGtooRuODMKlQqdP1KQWq6VEeZSTR1
	omFyd+U8G08AxOKGT78kpCgCwnPj9tzaoa7VvYqBy/VabYN6O8LK22u8h6Io9l+r/jSr6LgwwQqUR
	hQpp4Ejhi1QwIUn0AWWp+0q2+xH7Lsc20dg7D0D8YMeOlXCxLc3zQ/e/goYKfxl0opVUv78HFuftP
	udTe4636djZsy9aZ9C0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iosnB-0002Kh-7H; Tue, 07 Jan 2020 17:37:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iosn3-0002K9-7D
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 17:37:15 +0000
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
 [209.85.222.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BD9A8222D9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  7 Jan 2020 17:37:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578418631;
 bh=9YwkN3/TYD+pZQlNUFMnC8SEoHVQy+nwapzrY5aACyQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=swpnCOV0YOWbkOiUft0N5vV9xZTWtd7O8SF2DfO9rKGP/b0kNUfJC2I7su/S4IPUB
 UZMQalZbyJC5xkL5Sg9jgiDwY7xh1V4CDI4nrOYSUfHF26V8JUbafEELJiCM4kAPX8
 PnOw0aU+xKb22Td4BQLgm/WWJlXPzMr1LQFWhv/g=
Received: by mail-qk1-f176.google.com with SMTP id t129so80668qke.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 09:37:11 -0800 (PST)
X-Gm-Message-State: APjAAAXXDvI2nKJTvSEnym4S0t5gS0pb0DeACGU7qNHw+eRd1RFmni+q
 rkN1Kyys2MUsWRfiY1LhuQFM7EiYmEMaQqJ6iQ==
X-Google-Smtp-Source: APXvYqyFJTeWpWhtiaHMroKjgU4tTSpkAz7PhfQg6ILBoBESj+ZI+F2LnPGXGybu7nuIw2oLOgQBnOSrrWajaDiiG+g=
X-Received: by 2002:a05:620a:1eb:: with SMTP id
 x11mr484716qkn.254.1578418630798; 
 Tue, 07 Jan 2020 09:37:10 -0800 (PST)
MIME-Version: 1.0
References: <20191230164138.28137-1-mike.leach@linaro.org>
 <20200103222359.GA7211@bogus>
 <CAJ9a7ViLioi64oARqM2-kR=0hq4xSvBvaZCAefm9YkuXUiXSeA@mail.gmail.com>
In-Reply-To: <CAJ9a7ViLioi64oARqM2-kR=0hq4xSvBvaZCAefm9YkuXUiXSeA@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 7 Jan 2020 11:36:59 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+xM5Ky-ss9EMO_eQFqRjkZk=+PPxMNvrUC6nXpoDRJOQ@mail.gmail.com>
Message-ID: <CAL_Jsq+xM5Ky-ss9EMO_eQFqRjkZk=+PPxMNvrUC6nXpoDRJOQ@mail.gmail.com>
Subject: Re: [PATCH v7 05/15] dt-bindings: arm: Adds CoreSight CTI hardware
 definitions.
To: Mike Leach <mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_093713_303293_313D4784 
X-CRM114-Status: GOOD (  41.80  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 "Suzuki K. Poulose" <suzuki.poulose@arm.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Coresight ML <coresight@lists.linaro.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Andy Gross <agross@kernel.org>, Maxime Ripard <maxime@cerno.tech>,
 Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 7, 2020 at 10:11 AM Mike Leach <mike.leach@linaro.org> wrote:
>
> Hi Rob,
>
> Thanks for the feedback.
>
> On Fri, 3 Jan 2020 at 22:24, Rob Herring <robh@kernel.org> wrote:
> >
> > On Mon, Dec 30, 2019 at 04:41:37PM +0000, Mike Leach wrote:
> > > Adds new coresight-cti.yaml file describing the bindings required to define
> > > CTI in the device trees.
> > >
> > > Adds an include file to dt-bindings/arm to define constants describing
> > > common signal functionality used in CoreSight and generic usage.
> >
> > What's going on with the message threading in this series?
> >
>
> Not entirely sure what is expected here.

TL;DR: what git-send-email defaults to.

Each message should set 'in-reply-to' to the 1st message.

> > > Signed-off-by: Mike Leach <mike.leach@linaro.org>
> > > Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> > > Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> > > ---
> > >  .../bindings/arm/coresight-cti.yaml           | 326 ++++++++++++++++++
> > >  .../devicetree/bindings/arm/coresight.txt     |   7 +
> > >  MAINTAINERS                                   |   2 +
> > >  include/dt-bindings/arm/coresight-cti-dt.h    |  37 ++
> > >  4 files changed, 372 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/arm/coresight-cti.yaml
> > >  create mode 100644 include/dt-bindings/arm/coresight-cti-dt.h
> > >
> > > diff --git a/Documentation/devicetree/bindings/arm/coresight-cti.yaml b/Documentation/devicetree/bindings/arm/coresight-cti.yaml
> > > new file mode 100644
> > > index 000000000000..e4d28cee5dfd
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/arm/coresight-cti.yaml
> > > @@ -0,0 +1,326 @@
> > > +# SPDX-License-Identifier: GPL-2.0-only or BSD-2-Clause
> > > +# Copyright 2019 Linaro Ltd.
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/arm/coresight-cti.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: ARM Coresight Cross Trigger Interface (CTI) device.
> > > +
> > > +description: |
> > > +  The CoreSight Embedded Cross Trigger (ECT) consists of CTI devices connected
> > > +  to one or more CoreSight components and/or a CPU, with CTIs interconnected in
> > > +  a star topology via the Cross Trigger Matrix (CTM), which is not programmable.
> > > +  The ECT components are not part of the trace generation data path and are thus
> > > +  not part of the CoreSight graph described in the general CoreSight bindings
> > > +  file coresight.txt.
> > > +
> > > +  The CTI component properties define the connections between the individual
> > > +  CTI and the components it is directly connected to, consisting of input and
> > > +  output hardware trigger signals. CTIs can have a maximum number of input and
> > > +  output hardware trigger signals (8 each for v1 CTI, 32 each for v2 CTI). The
> > > +  number is defined at design time, the maximum of each defined in the DEVID
> > > +  register.
> > > +
> > > +  CTIs are interconnected in a star topology via the CTM, using a number of
> > > +  programmable channels, usually 4, but again implementation defined and
> > > +  described in the DEVID register. The star topology is not required to be
> > > +  described in the bindings as the actual connections are software
> > > +  programmable.
> > > +
> > > +  In general the connections between CTI and components via the trigger signals
> > > +  are implementation defined, except when the CTI is connected to an ARM v8
> > > +  architecture core and optional ETM.
> > > +
> > > +  In this case the ARM v8 architecture defines the required signal connections
> > > +  between CTI and the CPU core and ETM if present. In the case of a v8
> > > +  architecturally connected CTI an additional compatible string is used to
> > > +  indicate this feature (arm,coresight-cti-v8-arch).
> > > +
> > > +  When CTI trigger connection information is unavailable then a minimal driver
> > > +  binding can be declared with no explicit trigger signals. This will result
> > > +  the driver detecting the maximum available triggers and channels from the
> > > +  DEVID register and make them all available for use as a single default
> > > +  connection. Any user / client application will require additional information
> > > +  on the connections between the CTI and other components for correct operation.
> > > +  This information might be found by enabling the Integration Test registers in
> > > +  the driver (set CONFIG_CORESIGHT_CTI_INTEGRATION_TEST in Kernel
> > > +  configuration). These registers may be used to explore the trigger connections
> > > +  between CTI and other CoreSight components.
> > > +
> > > +  Certain triggers between CoreSight devices and the CTI have specific types
> > > +  and usages. These can be defined along with the signal indexes with the
> > > +  constants defined in <dt-bindings/arm/coresight-cti-dt.h>
> > > +
> > > +  For example a CTI connected to a core will usually have a DBGREQ signal. This
> > > +  is defined in the binding as type PE_EDBGREQ. These types will appear in an
> > > +  optional array alongside the signal indexes. Omitting types will default all
> > > +  signals to GEN_IO.
> > > +
> > > +  Note that some hardware trigger signals can be connected to non-CoreSight
> > > +  components (e.g. UART etc) depending on hardware implementation.
> > > +
> > > +maintainers:
> > > +  - Mike Leach <mike.leach@linaro.org>
> > > +
> > > +allOf:
> > > +  - $ref: /schemas/arm/primecell.yaml#
> > > +
> > > +# Need a custom select here or 'arm,primecell' will match on lots of nodes
> > > +select:
> > > +  properties:
> > > +    compatible:
> > > +      contains:
> > > +        enum:
> > > +          - arm,coresight-cti
> > > +  required:
> > > +    - compatible
> > > +
> > > +properties:
> > > +  $nodename:
> > > +    pattern: "^cti(@[0-9a-f]+)$"
> > > +  compatible:
> > > +    oneOf:
> > > +      - items:
> > > +        - const: arm,coresight-cti
> > > +        - const: arm,primecell
> > > +      - items:
> > > +        - const: arm,coresight-cti-v8-arch
> > > +        - const: arm,coresight-cti
> > > +        - const: arm,primecell
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  cpu:
> > > +    $ref: /schemas/types.yaml#/definitions/phandle
> > > +    description:
> > > +      Handle to cpu this device is associated with. This must appear in the
> > > +      base cti node if compatible string arm,coresight-cti-v8-arch is used,
> > > +      or may appear in a trig-conns child node when appropriate.
> > > +
> > > +  arm,cti-ctm-id:
> > > +    $ref: /schemas/types.yaml#/definitions/uint32
> > > +    description:
> > > +      Defines the CTM this CTI is connected to, in large systems with multiple
> > > +      separate CTI/CTM nets. Typically multi-socket systems where the CTM is
> > > +      propagated between sockets.
> > > +
> > > +  arm,cs-dev-assoc:
> > > +    $ref: /schemas/types.yaml#/definitions/phandle
> > > +    description:
> > > +      defines a phandle reference to an associated CoreSight trace device.
> > > +      When the associated trace device is enabled, then the respective CTI
> > > +      will be enabled. Use in a trig-conns node, or in CTI base node when
> > > +      compatible string arm,coresight-cti-v8-arch used. If the associated
> > > +      device has not been registered then the node name will be stored as
> > > +      the connection name for later resolution. If the associated device is
> > > +      not a CoreSight device or not registered then the node name will remain
> > > +      the connection name and automatic enabling will not occur.
> > > +
> > > +patternProperties:
> > > +  '^trig-conns@([0-9]+)$':
> > > +    type: object
> > > +    description:
> > > +      A trigger connections child node which describes the trigger signals
> > > +      between this CTI and another hardware device. This device may be a CPU,
> > > +      CoreSight device, any other hardware device or simple external IO lines.
> > > +      The connection may have both input and output triggers, or only one or the
> > > +      other.
> > > +
> > > +    properties:
> > > +
> > > +      arm,trig-in-sigs:
> > > +        allOf:
> > > +          - $ref: /schemas/types.yaml#/definitions/uint32-array
> > > +        minItems: 1
> > > +        maxItems: 32
> > > +        description:
> > > +          List of CTI trigger in signal numbers in use by a trig-conns node.
> > > +
> > > +      arm,trig-in-types:
> > > +        allOf:
> > > +          - $ref: /schemas/types.yaml#/definitions/uint32-array
> > > +        minItems: 1
> > > +        maxItems: 32
> > > +        description:
> > > +          List of constants representing the types for the CTI trigger in
> > > +          signals. Types in this array match to the corresponding signal in the
> > > +          arm,trig-in-sigs array. If the -types array is smaller, or omitted
> > > +          completely, then the types will default to GEN_IO.
> > > +
> > > +      arm,trig-out-sigs:
> > > +        allOf:
> > > +          - $ref: /schemas/types.yaml#/definitions/uint32-array
> > > +        minItems: 1
> > > +        maxItems: 32
> > > +        description:
> > > +          List of CTI trigger out signal numbers in use by a trig-conns node.
> > > +
> > > +      arm,trig-out-types:
> > > +        allOf:
> > > +          - $ref: /schemas/types.yaml#/definitions/uint32-array
> > > +        minItems: 1
> > > +        maxItems: 32
> > > +        description:
> > > +          List of constants representing the types for the CTI trigger out
> > > +          signals. Types in this array match to the corresponding signal
> > > +          in the arm,trig-out-sigs array. If the "-types" array is smaller,
> > > +          or omitted completely, then the types will default to GEN_IO.
> > > +
> > > +      arm,trig-filters:
> > > +        allOf:
> > > +          - $ref: /schemas/types.yaml#/definitions/uint32-array
> > > +        minItems: 1
> > > +        maxItems: 32
> > > +        description:
> > > +          List of CTI trigger out signals that will be blocked from becoming
> > > +          active, unless filtering is disabled on the driver.
> > > +
> > > +      arm,trig-conn-name:
> > > +        allOf:
> > > +          - $ref: /schemas/types.yaml#/definitions/string
> > > +        description:
> > > +          Defines a connection name that will be displayed, if the cpu or
> > > +          arm,cs-dev-assoc properties are not being used in this connection.
> > > +          Principle use for CTI that are connected to non-CoreSight devices, or
> > > +          external IO.
> > > +
> > > +    anyOf:
> > > +      - required:
> > > +        - arm,trig-in-sigs
> > > +      - required:
> > > +        - arm,trig-out-sigs
> > > +    oneOf:
> > > +      - required:
> > > +        - arm,trig-conn-name
> > > +      - required:
> > > +        - cpu
> > > +      - required:
> > > +        - arm,cs-dev-assoc
> > > +    required:
> > > +      - reg
> >
> > You need 'reg' defined as a property too along with any constraints.
> >
>
> OK - will do.
>
> > You also need #size-cells and #address-cells in the parent. And are they
> > required?
> >
>
> Size cells/ address cells can be defined and limited to appropriate values.
>
> However they are only required if the binding defines optional child
> nodes per the patternProperties:  '^trig-conns@([0-9]+)$': pattern.
> I have not been able to find a form a .yaml that can encode this requirement.
> if ( element matches "trig-conns")
> then required (#size-cells, #address-cells.)

I think there's not yet a way until something like this is accepted:

https://github.com/json-schema-org/json-schema-spec/issues/117

You could express it if you knew there's always at least
'trig-conns@0' or some other unit-address. But if you don't know what
unit-addresses you'll have, then you can't.

>
> What I do find is that if a trig-conns element has been defined, then
> the binding will not compile correctly without #size-cells and
> #address-cells.

Right, dtc checks this already, so not too important that the schema be able to.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
