Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42D881219B3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 20:10:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+iu3ct5ZreYNYT6c+Gq+EG8iDZO6wRZ0W9/BinCns9Y=; b=pHculHVmiAmpz9
	QTXicvGd/ez4yfmbpajFm284KOF+4C2Ihw0DjjIVFFyDjwv+lAcvyD+6xREZ3PtlzwPTnztTtQShC
	dHg/5Il7aQijwmH89dwv/Y9/YuFM1EhfbhzSgBxPN6GNubWk1cXZdNCd+Se8egYhOMsNcG0ds+ffz
	K1nIMicrJZPX4MKMvb+AAcDPcbrfLR/+fKsMIeKgHtYebyzqH3JoJ7hFiCmmfai4VGRXmL4+RvK0Q
	I3LrAQ0DOduXZnrh73UITUWv7OISPOkCx/4G3UbtGFuYgw3i9dwTxa2bDeZPgBggYqRNOWYkIKcMG
	zeDL5R06NC2BAeHdnDaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igvl9-00011M-QK; Mon, 16 Dec 2019 19:10:23 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igvl1-00010f-4W
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 19:10:17 +0000
Received: by mail-qt1-x844.google.com with SMTP id e5so5357319qtm.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 11:10:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Uw9U7rblKVGuRst+OVJeS+hnJio304MdqULIkTyPuXA=;
 b=sFr/Mv4DBTCYaRnfl12PIOZSe3JPJLY87L9IdBCtKXouRLYpCoc67xxz5/6xwu4uI5
 XHx+efnEQIs5JBtfY4CNDP1bkQSOaC/oQPNm7RP7pGlOaPu/BxnWHB0tl2PEDF2mqgPM
 7ZWFWB9/DxusPCQm7QzPNDR13dOCEmDnUWTS1ZsZflHVfa6cBw3jF/1jQvvj0VFJJ848
 EdnF4DOhPkDSP4NVk8qmM1ldPBDhChTFcIsEg/JckUHWM3a7KlDlzisdid7V/9cfGE5J
 kUaKbKZvKpVF/IT0jyt4LN3g4UH+q/4qpw1cwKoI8MTiECYny6XojCFD/fH+oMYfTevf
 X2WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Uw9U7rblKVGuRst+OVJeS+hnJio304MdqULIkTyPuXA=;
 b=iIWF29J/uVNdsZPSs0VcnCBqwRZVrkfawJCIDiE12r/Nva6A0HJU0+yboELCP4jEgq
 trxSa1Nh6a9bBAbRhzxzIYldSwm3xi3/9q3WZH8DzacR4Kr2GaICdycFMgzhY1stESrv
 ZhYZVfjct6QW9+yxvhnq1pTfYEynMsEyKz6Ef9Rui6jtnNgQSJwtGU56SqF0ZHah7Dnp
 ugRJvpdCI5PQL8PZil26HU7lDvF13eD5ppRyDkQ2r7vL8PlF5pbBTCNGddwP1J+T7LAi
 HklPQTcra78+bAnw66qCnwhQEXkvZhqR3OZO2csT9vvBIU0cyswH3raBHsKV1wqLtg9T
 2JCA==
X-Gm-Message-State: APjAAAXp1jkg5zNcTVio4490YASox3kSFfcWBUMncv+G+9JA6U61TS5V
 kHufgViv1MskqxttaVGJO5fxHkOr52ySbjsB3k7Acw==
X-Google-Smtp-Source: APXvYqyhwdhD8SVt5G6Rr61HxNIfhkRMf/+yf6TiwVRSl8xiJY/x5WTcD8VdvPpANl2cfQ+cjpouMbfBl+2FjNsQtHg=
X-Received: by 2002:ac8:5257:: with SMTP id y23mr829308qtn.88.1576523408360;
 Mon, 16 Dec 2019 11:10:08 -0800 (PST)
MIME-Version: 1.0
References: <20191211230813.5144-1-mike.leach@linaro.org>
 <20191213114008.uyghh3rdbnaumcft@gilmour.lan>
 <CAJ9a7VjhbAxmJPc1TT2EfzEC6EPinf7Kq8qbv1ZQ-_S0qmfXow@mail.gmail.com>
 <20191214202631.2h7jzfafkdqew2js@gilmour.lan>
In-Reply-To: <20191214202631.2h7jzfafkdqew2js@gilmour.lan>
From: Mike Leach <mike.leach@linaro.org>
Date: Mon, 16 Dec 2019 19:09:57 +0000
Message-ID: <CAJ9a7Vh7cvHO-CO1D-xZgeRgNaFhqaJ+aYmMN94BQgeSxWbccA@mail.gmail.com>
Subject: Re: [PATCH v6 05/15] dt-bindings: arm: Adds CoreSight CTI hardware
 definitions.
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_111015_212630_289FEF44 
X-CRM114-Status: GOOD (  39.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "Suzuki K. Poulose" <suzuki.poulose@arm.com>,
 Coresight ML <coresight@lists.linaro.org>, Liviu Dudau <liviu.dudau@arm.com>,
 agross@kernel.org, Rob Herring <robh+dt@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Maxime

On Sat, 14 Dec 2019 at 20:26, Maxime Ripard <maxime@cerno.tech> wrote:
>
> On Fri, Dec 13, 2019 at 03:04:35PM +0000, Mike Leach wrote:
> > > > +    type: object
> > > > +    description:
> > > > +      A trigger connections child node which describes the trigger signals
> > > > +      between this CTI and another hardware device. This device may be a CPU,
> > > > +      CoreSight device, any other hardware device or simple external IO lines.
> > > > +      The connection may have both input and output triggers, or only one or the
> > > > +      other.
> > > > +
> > > > +    properties:
> > > > +
> > > > +      arm,trig-in-sigs:
> > > > +        allOf:
> > > > +          - $ref: /schemas/types.yaml#/definitions/uint32-array
> > > > +        minItems: 1
> > > > +        maxItems: 32
> > > > +        description:
> > > > +          List of CTI trigger in signal numbers in use by a trig-conns node.
> > > > +
> > > > +      arm,trig-in-types:
> > > > +        allOf:
> > > > +          - $ref: /schemas/types.yaml#/definitions/uint32-array
> > > > +        minItems: 1
> > > > +        maxItems: 32
> > > > +        description:
> > > > +          List of constants representing the types for the CTI trigger in
> > > > +          signals. Types in this array match to the corresponding signal in the
> > > > +          arm,trig-in-sigs array. If the -types array is smaller, or omitted
> > > > +          completely, then the types will default to GEN_IO.
> > > > +
> > > > +      arm,trig-out-sigs:
> > > > +        allOf:
> > > > +          - $ref: /schemas/types.yaml#/definitions/uint32-array
> > > > +        minItems: 1
> > > > +        maxItems: 32
> > > > +        description:
> > > > +          List of CTI trigger out signal numbers in use by a trig-conns node.
> > > > +
> > > > +      arm,trig-out-types:
> > > > +        allOf:
> > > > +          - $ref: /schemas/types.yaml#/definitions/uint32-array
> > > > +        minItems: 1
> > > > +        maxItems: 32
> > > > +        description:
> > > > +          List of constants representing the types for the CTI trigger out
> > > > +          signals. Types in this array match to the corresponding signal
> > > > +          in the arm,trig-out-sigs array. If the "-types" array is smaller,
> > > > +          or omitted completely, then the types will default to GEN_IO.
> > > > +
> > > > +      arm,trig-filters:
> > > > +        allOf:
> > > > +          - $ref: /schemas/types.yaml#/definitions/uint32-array
> > > > +        minItems: 1
> > > > +        maxItems: 32
> > > > +        description:
> > > > +          List of CTI trigger out signals that will be blocked from becoming
> > > > +          active, unless filtering is disabled on the driver.
> > > > +
> > > > +      arm,trig-conn-name:
> > > > +        allOf:
> > > > +          - $ref: /schemas/types.yaml#/definitions/string
> > > > +        description:
> > > > +          Defines a connection name that will be displayed, if the cpu or
> > > > +          arm,cs-dev-assoc properties are not being used in this connection.
> > > > +          Principle use for CTI that are connected to non-CoreSight devices, or
> > > > +          external IO.
> > > > +
> > > > +    anyOf:
> > > > +      - required:
> > > > +        - arm,trig-in-sigs
> > > > +      - required:
> > > > +        - arm,trig-out-sigs
> > > > +    oneOf:
> > > > +      - required:
> > > > +        - arm,trig-conn-name
> > > > +      - required:
> > > > +        - cpu
> > > > +      - required:
> > > > +        - arm,cs-dev-assoc
> > >
> > > This would mean that either arm,trig-conn-name, cpu xor
> > > arm,cs-dev-assoc is required in the trig_conn child nodes, but they
> > > don't seem to be defined at this level but in the parent node?
> > >
> >
> > cpu and rm,cs-dev-assoc can appear in the parent node if the
> > arm,coresight-cti-v8-arch compatible string is used - hence declared
> > at that level. See the examples for the v8 compatible layout.
> >
> > > > +
> > > > +required:
> > > > +  - compatible
> > > > +  - reg
> > > > +  - clocks
> > > > +  - clock-names
> > > > +
> > > > +examples:
> > > > +  # minimum CTI definition. DEVID register used to set number of triggers.
> > > > +  - |
> > > > +    cti@20020000 {
> > > > +      compatible = "arm,coresight-cti", "arm,primecell";
> > > > +      reg = <0x20020000 0x1000>;
> > > > +
> > > > +      clocks = <&soc_smc50mhz>;
> > > > +      clock-names = "apb_pclk";
> > > > +    };
> > > > +  #  v8 architecturally defined CTI - CPU + ETM connections generated by the
> > > > +  #  driver according to the v8 architecture specification.
> > > > +  - |
> > > > +    cti@859000 {
> > > > +      compatible = "arm,coresight-cti-v8-arch", "arm,coresight-cti",
> > > > +                   "arm,primecell";
> > > > +      reg = <0x859000 0x1000>;
> > > > +
> > > > +      clocks = <&soc_smc50mhz>;
> > > > +      clock-names = "apb_pclk";
> > > > +
> > > > +      cpu = <&CPU1>;
> > > > +      arm,cs-dev-assoc = <&etm1>;
> > >
> > > and it looks like arm,cs-dev-assoc and cpu can be combined?
> > >
> > Absolutely - a CTI can and is connected to both the CPU and an
> > optional ETM attached to the CPU in a v8 architecture system.
>
> That's not what
>
> > > > +    oneOf:
> > > > +      - required:
> > > > +        - arm,trig-conn-name
> > > > +      - required:
> > > > +        - cpu
> > > > +      - required:
> > > > +        - arm,cs-dev-assoc
>
> Is saying though. oneOf is a xor, you can have one of the three
> schemas that are valid, but not more than that.
>

This required schema only applies to the trig-conns@ child nodes. So
each trig-conns can have one only of the three attributes - as each
trig-conns node represents a single connection between the CTI and a
component, and defines the trigger signals that exist in that
connections.

At the cti@ level, if the compatible is the arm,coresight-cti-v8-arch
type, then both cpu and arm,cs-dev-assoc can appear at this level as
we only need to know the devices it is connected to - the individual
trigger signals in the connections are defined by the architecture and
do not need repeating here.

> > > > +    };
> > > > +  # Implementation defined CTI - CPU + ETM connections explicitly defined..
> > > > +  # Shows use of type constants from dt-bindings/arm/coresight-cti-dt.h
> > > > +  - |
> > > > +    #include <dt-bindings/arm/coresight-cti-dt.h>
> > > > +
> > > > +    cti@858000 {
> > > > +      compatible = "arm,coresight-cti", "arm,primecell";
> > > > +      reg = <0x858000 0x1000>;
> > > > +
> > > > +      clocks = <&soc_smc50mhz>;
> > > > +      clock-names = "apb_pclk";
> > > > +
> > > > +      arm,cti-ctm-id = <1>;
> > > > +
> > > > +      trig-conns@0 {
> > >
> > > So, what I think happened here is that your patternProperties doesn't
> > > match anything (underscore vs dash), and since you don't have
> > > additionalProperties set to false, it doesn't warn that there's
> > > properties that aren't defined in the binding. Meaning that none of
> > > the child nodes in the bindings are effectively validated.
> > >
> >
> > OK - fixing the name should fix this.
> > I can't use additionalProperties as this is prohibited for bindings
> > that use ref: (according to the example-schema.yaml)
>
> Ah right, I missed that one, sorry. In this case, you can use the
> keyword unevaluatedProperties instead. As its name suggests, it will
> report an error if there's a property that hasn't been validated by
> any schemas.
>
> Note that this is a keyword introduced by the latest schemas spec
> (draft 2019-09) which isn't supported by the DT tools yet. But putting
> it into your schema will at least allow to have that check when the
> tools will support it.
>
> > > > +            arm,trig-in-sigs = <4 5 6 7>;
> > > > +            arm,trig-in-types = <ETM_EXTOUT
> > > > +                                 ETM_EXTOUT
> > > > +                                 ETM_EXTOUT
> > > > +                                 ETM_EXTOUT>;
> > > > +            arm,trig-out-sigs = <4 5 6 7>;
> > > > +            arm,trig-out-types = <ETM_EXTIN
> > > > +                                  ETM_EXTIN
> > > > +                                  ETM_EXTIN
> > > > +                                  ETM_EXTIN>;
> > > > +            arm,cs-dev-assoc = <&etm0>;
> > > > +      };
> > >
> > > Nodes with unit-address must have a matching reg property. This will
> > > generate a dtc warning too.
> >
> > That's interesting - I don't get any dtc warnings when compiling or
> > when running make dt_binding_checl
>
> Linux disables a lot of DTC warnings. You can see all (I think?) the
> warnings by passing W=1 in the environment when you compile the device
> trees.
>
Thanks -  the W=12 starts outputting warnings for lack of reg in child nodes.
I'll build the requirement into the next version so it is explicitly
called out in the check.

> > Is this rule documented anywhere? I cannot see it in the 0.2 spec
> > version from devicetree.org or any of the examples / docs in the
> > kernel tree.
>
> The commit adding it to DTC is this one
> https://git.kernel.org/pub/scm/utils/dtc/dtc.git/commit/?id=852e9ecbe1976927057402f8a8f71ee8e8a49098

I was referring to the requirement for reg = <N> in node@<N> child
nodes - though I have now spotted this in the early part of the
0.3-rc2 spec - which appears to be the latest I have access to.

So I can add in the reg<> parameters and fix this up.

>
> It just seems that while valid, it's against best practices.
>
> Maxime

Thanks

Mike
--
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
