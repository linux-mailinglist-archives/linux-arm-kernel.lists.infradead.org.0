Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 037CB11F3EF
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Dec 2019 21:27:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=i22F/Hx2oF7f4oTbNjdXNuTCn6VGkR7wbbtJinRdcG4=; b=QTwS/9OHR+oyCKmYa41OVdeOs
	0qGsbbnadPHcF7PmbuLx9+OgBUBCis2RyvmTamUBYEQKgWjWbx/g1Xwe/vgROeLMOqIRixaO0WTOV
	jD6JSL/X/aFgflbDk3ZnNOdKSMZm6Fd1jcwTEjAX5d58hYzLs+YONhsh96rJw4PjvF0R5vxH+/HS5
	R67cqZgNxMKfLkgOl2ZmCsjwC0b3jqz73JiDqlytFxTF5XHMMj5Mc6J3CWLrHchlSoxkV0Ehkbrz7
	ZDFDlKSIxKIxOnRMh3Dap8975B9Z/MLoe7jxhDKr9Uw9WauNIXBzcTSUVGNs8RxHK5vcRAbgvet2s
	cvCNKkzCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igE04-00046E-VS; Sat, 14 Dec 2019 20:26:52 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igDzu-00045n-Rh
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Dec 2019 20:26:45 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id D5B0F745A;
 Sat, 14 Dec 2019 15:26:35 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Sat, 14 Dec 2019 15:26:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=uYrjfCFJ67br7yYo29FhuPKtRd+
 gIA/bx7G6B+Ofjp4=; b=f9OaxV0Icy30Ifz2/JxrtxjwtveQoxY+bcX9ie/SuVF
 E58q+V+BhdyRx6p6c6ip+SOADFzmAKwQgwVdmPYBkVEB3Lv0Klifa3DBkF6oZJQk
 K0mcOwb4nDclrMy5NN4TFsCK6JODHnfjnt1S4Wfrk1IVEaJtYJ9CelCe6zy1vqaM
 xnxhDCawexok3+RP8mW6R0tBS0n16CGfc0elBiAiuejdrVnVNfGvgTSnHnx/uIXD
 5K2ObHDTExezzfJQdQt2YalL8tNle/6CseOOqkUW5LtcmOVGh3d4Mx0fiPq+gNVS
 IrF87NlTFSd2JQiHNWh/EGjlkEBRRF02+SmGqyx4SFw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=uYrjfC
 FJ67br7yYo29FhuPKtRd+gIA/bx7G6B+Ofjp4=; b=g6Cy0vsuV4H90r8xTgutLp
 sWLNrdvuI0lI5YZGiAR8GWj3oYPWY6NxsMcp1H/YipsrYGEMY+/Uk9Rj5TYzYHGt
 N6oZ402oak3ACVXX/DNAZpn+8wK7ywMWt1nMSoP080BJna+DhRVRcEfdLw8rjqC8
 aWxclFkneHC5ii3H7gL8Po1SJRTVpyC/3a5IoN4hX92LHfDQqkBK1bDBp3/S1rvT
 SQbx8EqfZcRv68+Sas7XgpZj65yqclFeP9+2Lwax8QN45+xWqU+iIfa2ql+Lls2X
 iKKdrJI09BHkeHLgcwgVrysYwuv7qB+chOWxA1RCEpeTKQtsz15ScVCFO+6gOgbg
 ==
X-ME-Sender: <xms:eUX1XdGiBiwhqwUU2LvyBTu8nk9CW_NIDt_pvLI7LudtqAiuDjU5Bw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvddtuddgudefjecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucffohhmrg
 hinhepuggvvhhitggvthhrvggvrdhorhhgpdhkvghrnhgvlhdrohhrghenucfkphepledt
 rdekledrieekrdejieenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvg
 hrnhhordhtvggthhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:eUX1Xdd7MZMcWgaFOqhkDZuRwOq4p4byEFQe5Kvm_6VWLpBo-gfvvQ>
 <xmx:eUX1XegoYhKghAxY0gN4fkbX9aX4RAML5XWWb-iWx8hR6B6Xzy-qJw>
 <xmx:eUX1XSXJ_eByEM7aQVcVWgKUoqVNgXwwdatH5ibq8W9Tsy7O4aR5Ow>
 <xmx:e0X1XSMm_TpdPbDjNJITz9madkBE9em3EsI84XkGwDggOhYb1cdLng>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 82B7280060;
 Sat, 14 Dec 2019 15:26:33 -0500 (EST)
Date: Sat, 14 Dec 2019 21:26:31 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH v6 05/15] dt-bindings: arm: Adds CoreSight CTI hardware
 definitions.
Message-ID: <20191214202631.2h7jzfafkdqew2js@gilmour.lan>
References: <20191211230813.5144-1-mike.leach@linaro.org>
 <20191213114008.uyghh3rdbnaumcft@gilmour.lan>
 <CAJ9a7VjhbAxmJPc1TT2EfzEC6EPinf7Kq8qbv1ZQ-_S0qmfXow@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJ9a7VjhbAxmJPc1TT2EfzEC6EPinf7Kq8qbv1ZQ-_S0qmfXow@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_122643_270077_2DFF7498 
X-CRM114-Status: GOOD (  31.61  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Content-Type: multipart/mixed; boundary="===============7739485275495707034=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7739485275495707034==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2xzkujznywlgfnbw"
Content-Disposition: inline


--2xzkujznywlgfnbw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Dec 13, 2019 at 03:04:35PM +0000, Mike Leach wrote:
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
> >
> > This would mean that either arm,trig-conn-name, cpu xor
> > arm,cs-dev-assoc is required in the trig_conn child nodes, but they
> > don't seem to be defined at this level but in the parent node?
> >
>
> cpu and rm,cs-dev-assoc can appear in the parent node if the
> arm,coresight-cti-v8-arch compatible string is used - hence declared
> at that level. See the examples for the v8 compatible layout.
>
> > > +
> > > +required:
> > > +  - compatible
> > > +  - reg
> > > +  - clocks
> > > +  - clock-names
> > > +
> > > +examples:
> > > +  # minimum CTI definition. DEVID register used to set number of triggers.
> > > +  - |
> > > +    cti@20020000 {
> > > +      compatible = "arm,coresight-cti", "arm,primecell";
> > > +      reg = <0x20020000 0x1000>;
> > > +
> > > +      clocks = <&soc_smc50mhz>;
> > > +      clock-names = "apb_pclk";
> > > +    };
> > > +  #  v8 architecturally defined CTI - CPU + ETM connections generated by the
> > > +  #  driver according to the v8 architecture specification.
> > > +  - |
> > > +    cti@859000 {
> > > +      compatible = "arm,coresight-cti-v8-arch", "arm,coresight-cti",
> > > +                   "arm,primecell";
> > > +      reg = <0x859000 0x1000>;
> > > +
> > > +      clocks = <&soc_smc50mhz>;
> > > +      clock-names = "apb_pclk";
> > > +
> > > +      cpu = <&CPU1>;
> > > +      arm,cs-dev-assoc = <&etm1>;
> >
> > and it looks like arm,cs-dev-assoc and cpu can be combined?
> >
> Absolutely - a CTI can and is connected to both the CPU and an
> optional ETM attached to the CPU in a v8 architecture system.

That's not what

> > > +    oneOf:
> > > +      - required:
> > > +        - arm,trig-conn-name
> > > +      - required:
> > > +        - cpu
> > > +      - required:
> > > +        - arm,cs-dev-assoc

Is saying though. oneOf is a xor, you can have one of the three
schemas that are valid, but not more than that.

> > > +    };
> > > +  # Implementation defined CTI - CPU + ETM connections explicitly defined..
> > > +  # Shows use of type constants from dt-bindings/arm/coresight-cti-dt.h
> > > +  - |
> > > +    #include <dt-bindings/arm/coresight-cti-dt.h>
> > > +
> > > +    cti@858000 {
> > > +      compatible = "arm,coresight-cti", "arm,primecell";
> > > +      reg = <0x858000 0x1000>;
> > > +
> > > +      clocks = <&soc_smc50mhz>;
> > > +      clock-names = "apb_pclk";
> > > +
> > > +      arm,cti-ctm-id = <1>;
> > > +
> > > +      trig-conns@0 {
> >
> > So, what I think happened here is that your patternProperties doesn't
> > match anything (underscore vs dash), and since you don't have
> > additionalProperties set to false, it doesn't warn that there's
> > properties that aren't defined in the binding. Meaning that none of
> > the child nodes in the bindings are effectively validated.
> >
>
> OK - fixing the name should fix this.
> I can't use additionalProperties as this is prohibited for bindings
> that use ref: (according to the example-schema.yaml)

Ah right, I missed that one, sorry. In this case, you can use the
keyword unevaluatedProperties instead. As its name suggests, it will
report an error if there's a property that hasn't been validated by
any schemas.

Note that this is a keyword introduced by the latest schemas spec
(draft 2019-09) which isn't supported by the DT tools yet. But putting
it into your schema will at least allow to have that check when the
tools will support it.

> > > +            arm,trig-in-sigs = <4 5 6 7>;
> > > +            arm,trig-in-types = <ETM_EXTOUT
> > > +                                 ETM_EXTOUT
> > > +                                 ETM_EXTOUT
> > > +                                 ETM_EXTOUT>;
> > > +            arm,trig-out-sigs = <4 5 6 7>;
> > > +            arm,trig-out-types = <ETM_EXTIN
> > > +                                  ETM_EXTIN
> > > +                                  ETM_EXTIN
> > > +                                  ETM_EXTIN>;
> > > +            arm,cs-dev-assoc = <&etm0>;
> > > +      };
> >
> > Nodes with unit-address must have a matching reg property. This will
> > generate a dtc warning too.
>
> That's interesting - I don't get any dtc warnings when compiling or
> when running make dt_binding_checl

Linux disables a lot of DTC warnings. You can see all (I think?) the
warnings by passing W=1 in the environment when you compile the device
trees.

> Is this rule documented anywhere? I cannot see it in the 0.2 spec
> version from devicetree.org or any of the examples / docs in the
> kernel tree.

The commit adding it to DTC is this one
https://git.kernel.org/pub/scm/utils/dtc/dtc.git/commit/?id=852e9ecbe1976927057402f8a8f71ee8e8a49098

It just seems that while valid, it's against best practices.

Maxime

--2xzkujznywlgfnbw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXfVFdwAKCRDj7w1vZxhR
xRB4AP9z5XyGYrkRbgecfkN5II98D7T66E/XOSp85WCgcm87kgD+NycQp43j6Oo5
q3A/ZVKwUcVqrWgFY0p+hrKBBITf+gY=
=OgdY
-----END PGP SIGNATURE-----

--2xzkujznywlgfnbw--


--===============7739485275495707034==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7739485275495707034==--

