Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D967D132AC9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 17:11:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kaGjBvWITQt91IfvxURDqokdOJ1ocICeKl+6WaRBOPE=; b=DjKNWZ3aTwkNE1
	jolYuV3/DevL5nDLERbBbjziGhu3Wtk5AGlaYV576qOIP0LfgAae7ALCrGMmdfPGqYydZxJkY2QG3
	IKUztS5Ly98OVEXPk2zW2tKUUTJPJ4rwc6TaJkBjpq2IhceS0OFjdrjMt38c1QqEgnnPoPRHz8ps8
	e8/k6eTNu38IM2ogcVOWki18CSge+HcwQNLN5EUwotoV4EjgZMATaauVCAOedFBJGmFihau91cGRd
	Ayi0Rhoonpb3nif9VakMGYcTIZPo6hNV+umuGFu9H6/HF0nyntBlc2v3X91zvGDW+JE5yqQRahN4C
	i7PmEdMtz6wQfx+0DnHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iorSB-0003Nn-Bz; Tue, 07 Jan 2020 16:11:35 +0000
Received: from mail-qv1-xf43.google.com ([2607:f8b0:4864:20::f43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iorS3-0003ND-CZ
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 16:11:29 +0000
Received: by mail-qv1-xf43.google.com with SMTP id n8so55515qvg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 08:11:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9iHDp/IoA33Qqf8hH53ThtaevJGMMIDFJpqoSccVc7w=;
 b=AZhfGDDhg9Bq+QVHH0R62kUactCgUteglH/sdtUQOcxkW8+STcoFoBNzDQzE65DxBN
 THXbyOShAAqP7yUsEdKyuFkAiklsRtZugoS8MGqgUp4v8OvdgAC3LqqftVJEgXc8yHlU
 Pm16qLIWp59y6acwbOQsTPh9v28/W9h9gAFEuo/8Gl06MFkEpB3v6+6XTdZ7cHNWycBJ
 9OpDJuZJ8Yerqw7VqBYCoWq25/BgBT2SwAsd3Hegc4MYF4Ad6wjxkmBnkxXp1v/gy+Io
 zKEWrlaoZiFysVfvCjoApFkpy4FVyASdDJTuj55yvMyPCH8ISk5t2RlKEf2GhMPkw6cP
 8ceQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9iHDp/IoA33Qqf8hH53ThtaevJGMMIDFJpqoSccVc7w=;
 b=UOxQS9TjzKADgSWupbsfY05LxYb+jSwIOj/oNViDuOPiIy8rAV4F4ab031x1Dm5KRh
 hJmNo0k2O3w2XPo+AXG0yNHGnSbYRhZpdT9UWXsNBz2eHs527R9Km6JUFe2klJ1FZsUq
 89mEgrC1Zi9mXvNGEepJJngLNvv7KvBcKWwQlPgbdAk6Z2RdET8lXQUoWga1VPkgmC1r
 KwMt1jWvffdp6C70S+G3qWEtcy4gICuXQ87uSfJZemYoLimixb7V6SkNB5/nOq5/We3q
 pd9DBioFbbz7r97kG6xBm6++nPs+kd8xLXGX3Dp7MCv0iA3JEVEZUsDhvcRxVkgjkEIW
 9C8w==
X-Gm-Message-State: APjAAAXMTU89v/M7u8JFIu69CeyVEwN/AFYgUFnOBkOUrMu/amW7PXPh
 rTni6/TVL9hytQ+JFJ08y1dXpQLdHDtItGBUe16vsA==
X-Google-Smtp-Source: APXvYqzupYXLHoy5ObehA5nPD8wjHKBrBebIUvmCcGRCNVlFm7XHhliBOiD4tTaqiJc71WVi0w8pBmdNabr7It4rHQ0=
X-Received: by 2002:a05:6214:965:: with SMTP id
 do5mr143933qvb.202.1578413484847; 
 Tue, 07 Jan 2020 08:11:24 -0800 (PST)
MIME-Version: 1.0
References: <20191230164138.28137-1-mike.leach@linaro.org>
 <20200103222359.GA7211@bogus>
In-Reply-To: <20200103222359.GA7211@bogus>
From: Mike Leach <mike.leach@linaro.org>
Date: Tue, 7 Jan 2020 16:11:14 +0000
Message-ID: <CAJ9a7ViLioi64oARqM2-kR=0hq4xSvBvaZCAefm9YkuXUiXSeA@mail.gmail.com>
Subject: Re: [PATCH v7 05/15] dt-bindings: arm: Adds CoreSight CTI hardware
 definitions.
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_081127_434227_B29F21CE 
X-CRM114-Status: GOOD (  36.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "Suzuki K. Poulose" <suzuki.poulose@arm.com>, linux-arm-msm@vger.kernel.org,
 Coresight ML <coresight@lists.linaro.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Andy Gross <agross@kernel.org>, Maxime Ripard <maxime@cerno.tech>,
 Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

Thanks for the feedback.

On Fri, 3 Jan 2020 at 22:24, Rob Herring <robh@kernel.org> wrote:
>
> On Mon, Dec 30, 2019 at 04:41:37PM +0000, Mike Leach wrote:
> > Adds new coresight-cti.yaml file describing the bindings required to define
> > CTI in the device trees.
> >
> > Adds an include file to dt-bindings/arm to define constants describing
> > common signal functionality used in CoreSight and generic usage.
>
> What's going on with the message threading in this series?
>

Not entirely sure what is expected here.

> >
> > Signed-off-by: Mike Leach <mike.leach@linaro.org>
> > Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> > Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> > ---
> >  .../bindings/arm/coresight-cti.yaml           | 326 ++++++++++++++++++
> >  .../devicetree/bindings/arm/coresight.txt     |   7 +
> >  MAINTAINERS                                   |   2 +
> >  include/dt-bindings/arm/coresight-cti-dt.h    |  37 ++
> >  4 files changed, 372 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/arm/coresight-cti.yaml
> >  create mode 100644 include/dt-bindings/arm/coresight-cti-dt.h
> >
> > diff --git a/Documentation/devicetree/bindings/arm/coresight-cti.yaml b/Documentation/devicetree/bindings/arm/coresight-cti.yaml
> > new file mode 100644
> > index 000000000000..e4d28cee5dfd
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/arm/coresight-cti.yaml
> > @@ -0,0 +1,326 @@
> > +# SPDX-License-Identifier: GPL-2.0-only or BSD-2-Clause
> > +# Copyright 2019 Linaro Ltd.
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/arm/coresight-cti.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: ARM Coresight Cross Trigger Interface (CTI) device.
> > +
> > +description: |
> > +  The CoreSight Embedded Cross Trigger (ECT) consists of CTI devices connected
> > +  to one or more CoreSight components and/or a CPU, with CTIs interconnected in
> > +  a star topology via the Cross Trigger Matrix (CTM), which is not programmable.
> > +  The ECT components are not part of the trace generation data path and are thus
> > +  not part of the CoreSight graph described in the general CoreSight bindings
> > +  file coresight.txt.
> > +
> > +  The CTI component properties define the connections between the individual
> > +  CTI and the components it is directly connected to, consisting of input and
> > +  output hardware trigger signals. CTIs can have a maximum number of input and
> > +  output hardware trigger signals (8 each for v1 CTI, 32 each for v2 CTI). The
> > +  number is defined at design time, the maximum of each defined in the DEVID
> > +  register.
> > +
> > +  CTIs are interconnected in a star topology via the CTM, using a number of
> > +  programmable channels, usually 4, but again implementation defined and
> > +  described in the DEVID register. The star topology is not required to be
> > +  described in the bindings as the actual connections are software
> > +  programmable.
> > +
> > +  In general the connections between CTI and components via the trigger signals
> > +  are implementation defined, except when the CTI is connected to an ARM v8
> > +  architecture core and optional ETM.
> > +
> > +  In this case the ARM v8 architecture defines the required signal connections
> > +  between CTI and the CPU core and ETM if present. In the case of a v8
> > +  architecturally connected CTI an additional compatible string is used to
> > +  indicate this feature (arm,coresight-cti-v8-arch).
> > +
> > +  When CTI trigger connection information is unavailable then a minimal driver
> > +  binding can be declared with no explicit trigger signals. This will result
> > +  the driver detecting the maximum available triggers and channels from the
> > +  DEVID register and make them all available for use as a single default
> > +  connection. Any user / client application will require additional information
> > +  on the connections between the CTI and other components for correct operation.
> > +  This information might be found by enabling the Integration Test registers in
> > +  the driver (set CONFIG_CORESIGHT_CTI_INTEGRATION_TEST in Kernel
> > +  configuration). These registers may be used to explore the trigger connections
> > +  between CTI and other CoreSight components.
> > +
> > +  Certain triggers between CoreSight devices and the CTI have specific types
> > +  and usages. These can be defined along with the signal indexes with the
> > +  constants defined in <dt-bindings/arm/coresight-cti-dt.h>
> > +
> > +  For example a CTI connected to a core will usually have a DBGREQ signal. This
> > +  is defined in the binding as type PE_EDBGREQ. These types will appear in an
> > +  optional array alongside the signal indexes. Omitting types will default all
> > +  signals to GEN_IO.
> > +
> > +  Note that some hardware trigger signals can be connected to non-CoreSight
> > +  components (e.g. UART etc) depending on hardware implementation.
> > +
> > +maintainers:
> > +  - Mike Leach <mike.leach@linaro.org>
> > +
> > +allOf:
> > +  - $ref: /schemas/arm/primecell.yaml#
> > +
> > +# Need a custom select here or 'arm,primecell' will match on lots of nodes
> > +select:
> > +  properties:
> > +    compatible:
> > +      contains:
> > +        enum:
> > +          - arm,coresight-cti
> > +  required:
> > +    - compatible
> > +
> > +properties:
> > +  $nodename:
> > +    pattern: "^cti(@[0-9a-f]+)$"
> > +  compatible:
> > +    oneOf:
> > +      - items:
> > +        - const: arm,coresight-cti
> > +        - const: arm,primecell
> > +      - items:
> > +        - const: arm,coresight-cti-v8-arch
> > +        - const: arm,coresight-cti
> > +        - const: arm,primecell
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  cpu:
> > +    $ref: /schemas/types.yaml#/definitions/phandle
> > +    description:
> > +      Handle to cpu this device is associated with. This must appear in the
> > +      base cti node if compatible string arm,coresight-cti-v8-arch is used,
> > +      or may appear in a trig-conns child node when appropriate.
> > +
> > +  arm,cti-ctm-id:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description:
> > +      Defines the CTM this CTI is connected to, in large systems with multiple
> > +      separate CTI/CTM nets. Typically multi-socket systems where the CTM is
> > +      propagated between sockets.
> > +
> > +  arm,cs-dev-assoc:
> > +    $ref: /schemas/types.yaml#/definitions/phandle
> > +    description:
> > +      defines a phandle reference to an associated CoreSight trace device.
> > +      When the associated trace device is enabled, then the respective CTI
> > +      will be enabled. Use in a trig-conns node, or in CTI base node when
> > +      compatible string arm,coresight-cti-v8-arch used. If the associated
> > +      device has not been registered then the node name will be stored as
> > +      the connection name for later resolution. If the associated device is
> > +      not a CoreSight device or not registered then the node name will remain
> > +      the connection name and automatic enabling will not occur.
> > +
> > +patternProperties:
> > +  '^trig-conns@([0-9]+)$':
> > +    type: object
> > +    description:
> > +      A trigger connections child node which describes the trigger signals
> > +      between this CTI and another hardware device. This device may be a CPU,
> > +      CoreSight device, any other hardware device or simple external IO lines.
> > +      The connection may have both input and output triggers, or only one or the
> > +      other.
> > +
> > +    properties:
> > +
> > +      arm,trig-in-sigs:
> > +        allOf:
> > +          - $ref: /schemas/types.yaml#/definitions/uint32-array
> > +        minItems: 1
> > +        maxItems: 32
> > +        description:
> > +          List of CTI trigger in signal numbers in use by a trig-conns node.
> > +
> > +      arm,trig-in-types:
> > +        allOf:
> > +          - $ref: /schemas/types.yaml#/definitions/uint32-array
> > +        minItems: 1
> > +        maxItems: 32
> > +        description:
> > +          List of constants representing the types for the CTI trigger in
> > +          signals. Types in this array match to the corresponding signal in the
> > +          arm,trig-in-sigs array. If the -types array is smaller, or omitted
> > +          completely, then the types will default to GEN_IO.
> > +
> > +      arm,trig-out-sigs:
> > +        allOf:
> > +          - $ref: /schemas/types.yaml#/definitions/uint32-array
> > +        minItems: 1
> > +        maxItems: 32
> > +        description:
> > +          List of CTI trigger out signal numbers in use by a trig-conns node.
> > +
> > +      arm,trig-out-types:
> > +        allOf:
> > +          - $ref: /schemas/types.yaml#/definitions/uint32-array
> > +        minItems: 1
> > +        maxItems: 32
> > +        description:
> > +          List of constants representing the types for the CTI trigger out
> > +          signals. Types in this array match to the corresponding signal
> > +          in the arm,trig-out-sigs array. If the "-types" array is smaller,
> > +          or omitted completely, then the types will default to GEN_IO.
> > +
> > +      arm,trig-filters:
> > +        allOf:
> > +          - $ref: /schemas/types.yaml#/definitions/uint32-array
> > +        minItems: 1
> > +        maxItems: 32
> > +        description:
> > +          List of CTI trigger out signals that will be blocked from becoming
> > +          active, unless filtering is disabled on the driver.
> > +
> > +      arm,trig-conn-name:
> > +        allOf:
> > +          - $ref: /schemas/types.yaml#/definitions/string
> > +        description:
> > +          Defines a connection name that will be displayed, if the cpu or
> > +          arm,cs-dev-assoc properties are not being used in this connection.
> > +          Principle use for CTI that are connected to non-CoreSight devices, or
> > +          external IO.
> > +
> > +    anyOf:
> > +      - required:
> > +        - arm,trig-in-sigs
> > +      - required:
> > +        - arm,trig-out-sigs
> > +    oneOf:
> > +      - required:
> > +        - arm,trig-conn-name
> > +      - required:
> > +        - cpu
> > +      - required:
> > +        - arm,cs-dev-assoc
> > +    required:
> > +      - reg
>
> You need 'reg' defined as a property too along with any constraints.
>

OK - will do.

> You also need #size-cells and #address-cells in the parent. And are they
> required?
>

Size cells/ address cells can be defined and limited to appropriate values.

However they are only required if the binding defines optional child
nodes per the patternProperties:  '^trig-conns@([0-9]+)$': pattern.
I have not been able to find a form a .yaml that can encode this requirement.
if ( element matches "trig-conns")
then required (#size-cells, #address-cells.)

What I do find is that if a trig-conns element has been defined, then
the binding will not compile correctly without #size-cells and
#address-cells.


Regards

Mike




> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - clocks
> > +  - clock-names
> > +
> > +if:
> > +  properties:
> > +    compatible:
> > +      contains:
> > +        const: arm,coresight-cti-v8-arch
> > +
> > +then:
> > +  required:
> > +    - cpu
> > +
> > +examples:
> > +  # minimum CTI definition. DEVID register used to set number of triggers.
> > +  - |
> > +    cti@20020000 {
> > +      compatible = "arm,coresight-cti", "arm,primecell";
> > +      reg = <0x20020000 0x1000>;
> > +
> > +      clocks = <&soc_smc50mhz>;
> > +      clock-names = "apb_pclk";
> > +    };
> > +  #  v8 architecturally defined CTI - CPU + ETM connections generated by the
> > +  #  driver according to the v8 architecture specification.
> > +  - |
> > +    cti@859000 {
> > +      compatible = "arm,coresight-cti-v8-arch", "arm,coresight-cti",
> > +                   "arm,primecell";
> > +      reg = <0x859000 0x1000>;
> > +
> > +      clocks = <&soc_smc50mhz>;
> > +      clock-names = "apb_pclk";
> > +
> > +      cpu = <&CPU1>;
> > +      arm,cs-dev-assoc = <&etm1>;
> > +    };
> > +  # Implementation defined CTI - CPU + ETM connections explicitly defined..
> > +  # Shows use of type constants from dt-bindings/arm/coresight-cti-dt.h
> > +  - |
> > +    #include <dt-bindings/arm/coresight-cti-dt.h>
> > +
> > +    cti@858000 {
> > +      compatible = "arm,coresight-cti", "arm,primecell";
> > +      reg = <0x858000 0x1000>;
> > +
> > +      clocks = <&soc_smc50mhz>;
> > +      clock-names = "apb_pclk";
> > +
> > +      arm,cti-ctm-id = <1>;
> > +
> > +      #address-cells = <1>;
> > +      #size-cells = <0>;
> > +
> > +      trig-conns@0 {
> > +            reg = <0>;
> > +            arm,trig-in-sigs = <4 5 6 7>;
> > +            arm,trig-in-types = <ETM_EXTOUT
> > +                                 ETM_EXTOUT
> > +                                 ETM_EXTOUT
> > +                                 ETM_EXTOUT>;
> > +            arm,trig-out-sigs = <4 5 6 7>;
> > +            arm,trig-out-types = <ETM_EXTIN
> > +                                  ETM_EXTIN
> > +                                  ETM_EXTIN
> > +                                  ETM_EXTIN>;
> > +            arm,cs-dev-assoc = <&etm0>;
> > +      };
> > +
> > +      trig-conns@1 {
> > +            reg = <1>;
> > +            cpu = <&CPU0>;
> > +            arm,trig-in-sigs = <0 1>;
> > +            arm,trig-in-types = <PE_DBGTRIGGER
> > +                                 PE_PMUIRQ>;
> > +            arm,trig-out-sigs=<0 1 2 >;
> > +            arm,trig-out-types = <PE_EDBGREQ
> > +                                  PE_DBGRESTART
> > +                                  PE_CTIIRQ>;
> > +
> > +            arm,trig-filters = <0>;
> > +      };
> > +    };
> > +  # Implementation defined CTI - non CoreSight component connections.
> > +  - |
> > +    cti@20110000 {
> > +      compatible = "arm,coresight-cti", "arm,primecell";
> > +      reg = <0 0x20110000 0 0x1000>;
> > +
> > +      clocks = <&soc_smc50mhz>;
> > +      clock-names = "apb_pclk";
> > +
> > +      #address-cells = <1>;
> > +      #size-cells = <0>;
> > +
> > +      trig-conns@0 {
> > +        reg = <0>;
> > +        arm,trig-in-sigs=<0>;
> > +        arm,trig-in-types=<GEN_INTREQ>;
> > +        arm,trig-out-sigs=<0>;
> > +        arm,trig-out-types=<GEN_HALTREQ>;
> > +        arm,trig-conn-name = "sys_profiler";
> > +      };
> > +
> > +      trig-conns@1 {
> > +        reg = <1>;
> > +        arm,trig-out-sigs=<2 3>;
> > +        arm,trig-out-types=<GEN_HALTREQ GEN_RESTARTREQ>;
> > +        arm,trig-conn-name = "watchdog";
> > +      };
> > +
> > +      trig-conns@2 {
> > +        reg = <2>;
> > +        arm,trig-in-sigs=<1 6>;
> > +        arm,trig-in-types=<GEN_HALTREQ GEN_RESTARTREQ>;
> > +        arm,trig-conn-name = "g_counter";
> > +      };
> > +    };
> > +
> > +...
> > diff --git a/Documentation/devicetree/bindings/arm/coresight.txt b/Documentation/devicetree/bindings/arm/coresight.txt
> > index d02c42d21f2f..846f6daae71b 100644
> > --- a/Documentation/devicetree/bindings/arm/coresight.txt
> > +++ b/Documentation/devicetree/bindings/arm/coresight.txt
> > @@ -45,6 +45,10 @@ its hardware characteristcs.
> >               - Coresight Address Translation Unit (CATU)
> >                       "arm,coresight-catu", "arm,primecell";
> >
> > +             - Coresight Cross Trigger Interface (CTI):
> > +                     "arm,coresight-cti", "arm,primecell";
> > +                     See coresight-cti.yaml for full CTI definitions.
> > +
> >       * reg: physical base address and length of the register
> >         set(s) of the component.
> >
> > @@ -72,6 +76,9 @@ its hardware characteristcs.
> >       * reg-names: the only acceptable values are "stm-base" and
> >         "stm-stimulus-base", each corresponding to the areas defined in "reg".
> >
> > +* Required properties for Coresight Cross Trigger Interface (CTI)
> > +     See coresight-cti.yaml for full CTI definitions.
> > +
> >  * Required properties for devices that don't show up on the AMBA bus, such as
> >    non-configurable replicators and non-configurable funnels:
> >
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index bd5847e802de..77f5d28fa84b 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -1645,9 +1645,11 @@ R:     Suzuki K Poulose <suzuki.poulose@arm.com>
> >  L:   linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
> >  S:   Maintained
> >  F:   drivers/hwtracing/coresight/*
> > +F:   include/dt-bindings/arm/coresight-cti-dt.h
> >  F:   Documentation/trace/coresight/*
> >  F:   Documentation/devicetree/bindings/arm/coresight.txt
> >  F:   Documentation/devicetree/bindings/arm/coresight-cpu-debug.txt
> > +F:   Documentation/devicetree/bindings/arm/coresight-cti.yaml
> >  F:   Documentation/ABI/testing/sysfs-bus-coresight-devices-*
> >  F:   tools/perf/arch/arm/util/pmu.c
> >  F:   tools/perf/arch/arm/util/auxtrace.c
> > diff --git a/include/dt-bindings/arm/coresight-cti-dt.h b/include/dt-bindings/arm/coresight-cti-dt.h
> > new file mode 100644
> > index 000000000000..61e7bdf8ea6e
> > --- /dev/null
> > +++ b/include/dt-bindings/arm/coresight-cti-dt.h
> > @@ -0,0 +1,37 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/*
> > + * This header provides constants for the defined trigger signal
> > + * types on CoreSight CTI.
> > + */
> > +
> > +#ifndef _DT_BINDINGS_ARM_CORESIGHT_CTI_DT_H
> > +#define _DT_BINDINGS_ARM_CORESIGHT_CTI_DT_H
> > +
> > +#define GEN_IO               0
> > +#define GEN_INTREQ   1
> > +#define GEN_INTACK   2
> > +#define GEN_HALTREQ  3
> > +#define GEN_RESTARTREQ       4
> > +#define PE_EDBGREQ   5
> > +#define PE_DBGRESTART        6
> > +#define PE_CTIIRQ    7
> > +#define PE_PMUIRQ    8
> > +#define PE_DBGTRIGGER        9
> > +#define ETM_EXTOUT   10
> > +#define ETM_EXTIN    11
> > +#define SNK_FULL     12
> > +#define SNK_ACQCOMP  13
> > +#define SNK_FLUSHCOMP        14
> > +#define SNK_FLUSHIN  15
> > +#define SNK_TRIGIN   16
> > +#define STM_ASYNCOUT 17
> > +#define STM_TOUT_SPTE        18
> > +#define STM_TOUT_SW  19
> > +#define STM_TOUT_HETE        20
> > +#define STM_HWEVENT  21
> > +#define ELA_TSTART   22
> > +#define ELA_TSTOP    23
> > +#define ELA_DBGREQ   24
> > +#define CTI_TRIG_MAX 25
> > +
> > +#endif /*_DT_BINDINGS_ARM_CORESIGHT_CTI_DT_H */
> > --
> > 2.17.1
> >



--
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
