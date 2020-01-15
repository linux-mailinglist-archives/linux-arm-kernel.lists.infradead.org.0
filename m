Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C93213BAC9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 09:17:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AQefX5O2P0lWn3OXlya6zL/O7mvISYsHKHDDLf5KU2k=; b=EF1vDPx7nIGnOf
	vGlLVRSdVl1tT78xIFVJkvaJfuBqwH8OL6VFO2xRbkwE4h7cQquoUl3v6Y9NQ8chznlyVHEomBliu
	qgZILA6LQcjXchpO14dettLGuRKO1U4dWuVZ4CDMmEhUDIL+iBXi4CwMgAk/+HVU9b43j8tOvCmbk
	S2JZOdHyVO6BRy9SgZb3F3ZsS9qYANjQWxNMcag/vfZ7mIfVz1UXnUMQcfWiuwE/0xPit6HrL2upI
	rObQ7AY+2gSUUewpWQYnTNe7RPZWmYBk4CAdj8yAPjjRHuu7TGtjR2Hc/KWmkYkDbtP6M3RUPqwmW
	AAFENMM7lgSJ2CuaJ4pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irdrz-0000zc-3h; Wed, 15 Jan 2020 08:17:43 +0000
Received: from mail-db8eur05on2071.outbound.protection.outlook.com
 ([40.107.20.71] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irdrm-0000z2-UI
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 08:17:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BXDw7wAt7dcL/pWVltXflO1MzDEAHmDbIV4sa+ooy0IrhwTIYH6M2Bq4lyjLRA4mXlx3/C5SRaPN+IfzTdUKlocru94E9ldnkqd2rup6ejHhW6w7/cPUWSzWQiC3oZim00FBFqWCjoWQ30Ob6OjP/pI6EOTvRyIu82ejH77ZMhMWL4KD0sqRShlj39v3TndClJduPVarMwaiE+vx6aRN12oWXZ5CHIHURxYy/bpTuuznh4veMPXMYyD8dJiGWf+EUABr+s0mjOhNBUlfzkxzgL3wuv1A2kpy1TahBK086f0EZm12dLWvfIXgib+c7cuPWIwFJzH7RV+8ZfUpXmit9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=neKEftfRzlC0yKWe7x7KCSXGuBZ0yPcqU1zxETGmCwo=;
 b=V7cjx2/UY4U+WItGqZAFy9G7r6mb37tBlU8bcazRA6+95GEE/d2LJ0jqCH5NhDZZ5mcAV2A9DxvctDLesNSIphhZAvqz+rtDY+wxLmBWZQQBXbw61jZUaBIYh6CUTNHgF62lNf37SCZyPSUBny7rEcNq/l+lg/8IAQgT0JPlRtJFYM3IXu/JwyExowlJeUHD6SWVPSRxw/eZCGe0QSvtwoT3sxfCSD653V76fA9LmDeRf+szFynneWVJcnTWA9ImgoKcOj+Ab/52vYcAKSLPG6XbGUjX+z10HtmYXE5TZzFVwXns0uS4GYH/XfC4WYYtd1W5qV8los9FZrRR4x6Mtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=neKEftfRzlC0yKWe7x7KCSXGuBZ0yPcqU1zxETGmCwo=;
 b=lzLnfcAB0hbu1xB4ljO7HF/Gfr6/44DQ3F2+GnNt9IX5eEuMFamWNzSRsGDXbcLiFqX7yT1EbABrHEiBat+ynZM1gIegYAqhArC30MYn8AYGwQFt/yxRFssE6XYHWG5ksD/1v82HoUwV4HGvcp2F+ib75a0YiY8Wc41j8JWsQyc=
Received: from AM6PR0402MB3911.eurprd04.prod.outlook.com (52.133.30.10) by
 AM6PR0402MB3398.eurprd04.prod.outlook.com (52.133.19.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.19; Wed, 15 Jan 2020 08:17:28 +0000
Received: from AM6PR0402MB3911.eurprd04.prod.outlook.com
 ([fe80::460:8acd:2cea:5c07]) by AM6PR0402MB3911.eurprd04.prod.outlook.com
 ([fe80::460:8acd:2cea:5c07%7]) with mapi id 15.20.2644.015; Wed, 15 Jan 2020
 08:17:28 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: RE: [PATCH V3 2/3] dt-bindings: pinctrl: Convert i.MX8MM to
 json-schema
Thread-Topic: [PATCH V3 2/3] dt-bindings: pinctrl: Convert i.MX8MM to
 json-schema
Thread-Index: AQHVy0QBdeXjXUsE8EGtOdCk3RtGU6frUUqAgAAPbaA=
Date: Wed, 15 Jan 2020 08:17:28 +0000
Message-ID: <AM6PR0402MB391182C3F952FE74B58718A4F5370@AM6PR0402MB3911.eurprd04.prod.outlook.com>
References: <1579051845-30378-1-git-send-email-Anson.Huang@nxp.com>
 <1579051845-30378-2-git-send-email-Anson.Huang@nxp.com>
 <20200115071757.bmblie3skdswuj2r@pengutronix.de>
In-Reply-To: <20200115071757.bmblie3skdswuj2r@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [183.192.18.119]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 2c02f898-d025-4741-11b7-08d799935c5c
x-ms-traffictypediagnostic: AM6PR0402MB3398:|AM6PR0402MB3398:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR0402MB3398667E051139997F71A97CF5370@AM6PR0402MB3398.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 02830F0362
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10001)(10009020)(4636009)(136003)(376002)(396003)(346002)(366004)(39860400002)(189003)(199004)(8676002)(81166006)(71200400001)(76116006)(45080400002)(5660300002)(66556008)(66446008)(81156014)(66476007)(66946007)(7696005)(8936002)(64756008)(2906002)(54906003)(186003)(478600001)(33656002)(6916009)(44832011)(26005)(9686003)(6506007)(55016002)(7416002)(52536014)(53546011)(4326008)(86362001)(316002)(473944003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR0402MB3398;
 H:AM6PR0402MB3911.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AQ1GOI1NnFuIWuUQKo4mlfLJr+FsP4WLEGJI0PGsx6x7dt+qnIZ2+pCI8gyqz5EU6HN99hS6/cb813QrH4yasfFr7hCj/7PpmCYY8DiOGFSTcgc3qJwSVgF9kbjwd+Xj3DtWsU/FKljaKiOU3jdmfxGd1BultkM2ssftRcjfdgnceaJQz3FpxZ8p0qlLRppl/CxCn5rqXFW1sN8WYv01dhbZ4gLx3YMqIJOqtoaA/Q0jVnhWE3LJ8sRUjdtYbKFbNC97eNcGDie+ZnwyVPqZFO37HFgd4i6Uu9O+lKS5l+PN2Zy+7RypHVsAkgK6iimsjkELoE6VAE/WH1vXcqp4s7UpF4UJpRzCSrlwRdhh2M8/uU9BaMutAfl2o2eySGBpgrz8elwFCMF/XNBWmNlo2DXc7+OcHHp1/MtLK6nwJRXpaRY+wW7QTeDahiPkK6rUEOQhMyIMdBRmj7hChHddsFL6L/gNRP3JuCyYqVJnxGaSYmamwNMwNrKGJLnLUP/kvcSQDjkCuIc8DfZTkD7go69Y5U6eMP3VH1E9Vx0GlEkDHogMqoVu57qnptHjQyDzoiKy/XJMC0sUg1girD/Cjq4XT4n/LfDV6nnYthFu/f+RemqsVtEEN88obwLPvlgbToG4oQBuD4pV4H5gbxVGTQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c02f898-d025-4741-11b7-08d799935c5c
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2020 08:17:28.3175 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aE0YGP2lKo7VfgJy9QsYZD+KXjEnnhhBokJtm7Gbz9R3pZggU3plU97OmP7knt+cbSbX/KhQWQy25a/8YH0sUQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3398
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_001731_101951_6A0C8C63 
X-CRM114-Status: GOOD (  24.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.71 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stefan@agner.ch" <stefan@agner.ch>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Marco

> Subject: Re: [PATCH V3 2/3] dt-bindings: pinctrl: Convert i.MX8MM to json-
> schema
> 
> Hi Anson,
> 
> On 20-01-15 09:30, Anson Huang wrote:
> > Convert the i.MX8MM pinctrl binding to DT schema format using
> > json-schema
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> > Change since V2:
> > 	- the lisence should be GPL-2.0
> > ---
> >  .../bindings/pinctrl/fsl,imx8mm-pinctrl.txt        | 36 -----------
> >  .../bindings/pinctrl/fsl,imx8mm-pinctrl.yaml       | 69
> ++++++++++++++++++++++
> >  2 files changed, 69 insertions(+), 36 deletions(-)  delete mode
> > 100644
> > Documentation/devicetree/bindings/pinctrl/fsl,imx8mm-pinctrl.txt
> >  create mode 100644
> > Documentation/devicetree/bindings/pinctrl/fsl,imx8mm-pinctrl.yaml
> >
> > diff --git
> > a/Documentation/devicetree/bindings/pinctrl/fsl,imx8mm-pinctrl.txt
> > b/Documentation/devicetree/bindings/pinctrl/fsl,imx8mm-pinctrl.txt
> > deleted file mode 100644
> > index e4e01c0..0000000
> > --- a/Documentation/devicetree/bindings/pinctrl/fsl,imx8mm-pinctrl.txt
> > +++ /dev/null
> > @@ -1,36 +0,0 @@
> > -* Freescale IMX8MM IOMUX Controller
> > -
> > -Please refer to fsl,imx-pinctrl.txt and pinctrl-bindings.txt in this
> > directory -for common binding part and usage.
> > -
> > -Required properties:
> > -- compatible: "fsl,imx8mm-iomuxc"
> > -- reg: should contain the base physical address and size of the
> > iomuxc
> > -  registers.
> > -
> > -Required properties in sub-nodes:
> > -- fsl,pins: each entry consists of 6 integers and represents the mux
> > and config
> > -  setting for one pin.  The first 5 integers <mux_reg conf_reg
> > input_reg mux_val
> > -  input_val> are specified using a PIN_FUNC_ID macro, which can be
> > found in
> > -  <arch/arm64/boot/dts/freescale/imx8mm-pinfunc.h>. The last integer
> > CONFIG is
> > -  the pad setting value like pull-up on this pin.  Please refer to
> > i.MX8M Mini
> > -  Reference Manual for detailed CONFIG settings.
> > -
> > -Examples:
> > -
> > -&uart1 {
> > -       pinctrl-names = "default";
> > -       pinctrl-0 = <&pinctrl_uart1>;
> > -};
> > -
> > -iomuxc: pinctrl@30330000 {
> > -        compatible = "fsl,imx8mm-iomuxc";
> > -        reg = <0x0 0x30330000 0x0 0x10000>;
> > -
> > -        pinctrl_uart1: uart1grp {
> > -                fsl,pins = <
> > -                        MX8MM_IOMUXC_UART1_RXD_UART1_DCE_RX             0x140
> > -                        MX8MM_IOMUXC_UART1_TXD_UART1_DCE_TX             0x140
> > -                >;
> > -        };
> > -};
> > diff --git
> > a/Documentation/devicetree/bindings/pinctrl/fsl,imx8mm-pinctrl.yaml
> > b/Documentation/devicetree/bindings/pinctrl/fsl,imx8mm-pinctrl.yaml
> > new file mode 100644
> > index 0000000..8b2de93
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/pinctrl/fsl,imx8mm-pinctrl.yam
> > +++ l
> > @@ -0,0 +1,69 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id:
> > +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevi
> > +cetree.org%2Fschemas%2Fpinctrl%2Ffsl%2Cimx8mm-
> pinctrl.yaml%23&amp;dat
> >
> +a=02%7C01%7Canson.huang%40nxp.com%7C5940bd35fa2b432ccd9008d79
> 98b1366%
> >
> +7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C63714669491458312
> 4&amp;s
> >
> +data=JqPAVaqc%2BvdH9UDy2EkYEVf9s1IrDzvgLBoyeJgYnnA%3D&amp;rese
> rved=0
> > +$schema:
> > +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevi
> > +cetree.org%2Fmeta-
> schemas%2Fcore.yaml%23&amp;data=02%7C01%7Canson.hua
> >
> +ng%40nxp.com%7C5940bd35fa2b432ccd9008d7998b1366%7C686ea1d3bc2
> b4c6fa92
> >
> +cd99c5c301635%7C0%7C0%7C637146694914583124&amp;sdata=6oJNpbgK
> %2FhINLR
> > +j%2B6kV8RnwPkfcdugxU3aHLZXLzTto%3D&amp;reserved=0
> > +
> > +title: Freescale IMX8MM IOMUX Controller
> > +
> > +maintainers:
> > +  - Anson Huang <Anson.Huang@nxp.com>
> > +
> > +description:
> > +  Please refer to fsl,imx-pinctrl.txt and pinctrl-bindings.txt in
> > +this directory
> > +  for common binding part and usage.
> > +
> > +properties:
> > +  compatible:
> > +    const: fsl,imx8mm-iomuxc
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +# Client device subnode's properties
> > +patternProperties:
> > +  'grp$':
> > +    type: object
> > +    description:
> > +      Pinctrl node's client devices use subnodes for desired pin configuration.
> > +      Client device subnodes use below standard properties.
> > +
> > +    properties:
> > +      fsl,pins:
> > +        allOf:
> > +          - $ref: /schemas/types.yaml#/definitions/uint32-array
> > +        description:
> > +          each entry consists of 6 integers and represents the mux and config
> > +          setting for one pin. The first 5 integers <mux_reg conf_reg input_reg
> > +          mux_val input_val> are specified using a PIN_FUNC_ID macro, which
> can
> > +          be found in <arch/arm64/boot/dts/freescale/imx8mm-pinfunc.h>.
> The last
> > +          integer CONFIG is the pad setting value like pull-up on this pin.
> Please
> > +          refer to i.MX8M Mini Reference Manual for detailed CONFIG settings.
> > +
> > +    required:
> > +      - fsl,pins
> > +
> > +    additionalProperties: false
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  # Pinmux controller node
> > +  - |
> > +    iomuxc: pinctrl@30330000 {
> > +        compatible = "fsl,imx8mm-iomuxc";
> > +        reg = <0x30330000 0x10000>;
> > +
> > +        pinctrl_uart2: uart2grp {
> > +            fsl,pins = <
> > +                0x23C 0x4A4 0x4FC 0x0 0x0	0x140
> 
> Why we can't use the pinctrl defines like
> MX8MM_IOMUXC_UART1_RXD_UART1_DCE_RX anymore?

The reason why I put the value NOT macro define here is the header file is put
in arch/arm64/boot/dts/freescale/ folder rather than include/dt-binding/pinctrl/,
so when using macro define, need to include the header file using absolute path 
arch/arm64/boot/dts/freescale/, I think it is NOT that good, so I put the value here directly.

Anson.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
