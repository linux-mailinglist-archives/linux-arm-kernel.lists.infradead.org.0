Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4C39159E60
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 01:50:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qgVTLUF9yYPUqs/nn5oNtkPxebbjP+AEGC9a0JHj0aI=; b=Zk/uBnBM9ca068
	qk6x3+E10T4RL3FSTyj6rifgOnXrgMAbl2YTOvrq1MHr+RQSvpUOKqlQGAH7r0TQhrj6qD+9xwqYT
	mvYnN56f8H6cwYuA2vYhbVCSPjxIkR2veUVCoyarJtGanuPv5o/WLkHQh3mxIrQ8Aqv30Uu28AIF+
	XdFKY2fvtc4H7uis6cU5McUcHnB4MAR9TtPOeyAYgvL8+ZPukBu6ppPzURetHMCKJLMHpZiHfFBp1
	+N+pknAcKsV2cmc6CB2QnOJb/x0ASCI+xZ4iqceA9RHaIZBxMq2qhNw4Yt+QC/GBmCcP118m5BNPu
	PYbGSMAFCqWs5uVd5SIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1gEL-0001j6-Ht; Wed, 12 Feb 2020 00:50:17 +0000
Received: from mail-db8eur05on2042.outbound.protection.outlook.com
 ([40.107.20.42] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1gDD-0000mC-QX
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 00:49:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=igc8hbDFOswRSSGDthh82lHvUE85xcNnOkFdJbXHKMX8Iy/2cUhNzmgSxmcvKXXGylCbzgXsSlAFqPBeQptYLTp8nLY30ldZVo6tYtcqzm635XWuuDtO6qy/ZAKlOM0uB1YeQQvhcDu8N1EvTEwbauM5du13FLuOkQ6y+d2ALoDwgV1LciscfM9Q2dzXgW5HvCBsmwTdtq44snv2+4iutAiqcU9WaxSo//He1VNvZGBiEKnxNVsF66+xurRKc2i/JFuyV0XRRbnThxDyNEU9prJmnMewmlTkTCV5+SWvKg0QZvM1gUtJzxd1/PrQcR/vRWFtmmObOL+YKJjShEqdpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kpXDdrLdaM6cI2MUjZZXNm7SOHlS0WAwNed1ZJJloMw=;
 b=Wh0oQfUNlabZmywT3JL40H3IuRnN1YyKg3oypvFlLoVlnDfby3JPkoH2BH8IHmzNXyUN6Y+IZN7iVpQGKXzMwop1nHBEYnDKg6wjDGY5+IkCZyxBw7CPyMLtAzI8KXahQc9kLNQaAOmCDYrDC1I5iDfXUIb5HODZhH4zTmaVmXynEIa6iP1FUGdpZxi/ZhrJbQCC91N7cnqEkISuHqU2yB2K/QzaceOIA0pNAb8Vz0jvcxz4MfNPd03naAE3r7SqL5JvnakawUIjn92jthyWdRhtg06A+tUpgWgeI0oBT3Wzm8KLvVClC08ZaFRV4IA/ltzQq8X69kHJTRKlKn6Jng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kpXDdrLdaM6cI2MUjZZXNm7SOHlS0WAwNed1ZJJloMw=;
 b=FZJeAwo6j4l+c6ImQvUyLTJFbrKAJvrIP2Re4FCAMcB91KCHXyM6BNpqs5BcEJs0gBmWqzqdgyTmr0uRVLC9ezc11ubV9RrLI1h2Etuq/zVd2rGez6nHbbaGe5stnfi/CVUisL8spvPjUln2NyO2DKXRKXJpSmz6teqJbSztf7w=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.25; Wed, 12 Feb 2020 00:49:00 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96%5]) with mapi id 15.20.2707.030; Wed, 12 Feb 2020
 00:49:00 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Rob Herring <robh@kernel.org>
Subject: RE: [PATCH V3 1/3] dt-bindings: pinctrl: Convert i.MX8MQ to
 json-schema
Thread-Topic: [PATCH V3 1/3] dt-bindings: pinctrl: Convert i.MX8MQ to
 json-schema
Thread-Index: AQHVy0QBqb7dMjHEe0ep62v7pdO1zaf1wF6AgCBCgBCAALm8AIAAKK1A
Date: Wed, 12 Feb 2020 00:49:00 +0000
Message-ID: <DB3PR0402MB39168515FBA285DD5A566FB8F51B0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1579051845-30378-1-git-send-email-Anson.Huang@nxp.com>
 <20200121223807.GA24850@bogus>
 <DB3PR0402MB3916ED6C3FCA9BCA224A5936F5180@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <CAL_JsqKqQdRZC08-BGJqTjzJZ8aWA41LHMbv0QyyVePVm0co7A@mail.gmail.com>
In-Reply-To: <CAL_JsqKqQdRZC08-BGJqTjzJZ8aWA41LHMbv0QyyVePVm0co7A@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [110.85.133.115]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: dbf6e83d-a850-45c6-f16c-08d7af55596c
x-ms-traffictypediagnostic: DB3PR0402MB3916:|DB3PR0402MB3916:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3916647C069156CFE33DD807F51B0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0311124FA9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10001)(10009020)(4636009)(366004)(39860400002)(396003)(136003)(346002)(376002)(189003)(199004)(316002)(478600001)(53546011)(7416002)(6916009)(86362001)(45080400002)(6506007)(7696005)(26005)(52536014)(186003)(44832011)(33656002)(5660300002)(66476007)(66946007)(76116006)(64756008)(66556008)(66446008)(81166006)(54906003)(8676002)(81156014)(71200400001)(8936002)(4326008)(55016002)(2906002)(9686003)(473944003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3916;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Jr7khc5myxoD43MIAvv0b+p4T13yHuwq0WrbpzU1WwbZxVFIHZ4TY1dv4RsDvBa9FkYIDSR3ujCF09hcdNnLAPfKEBNBhwiHY2jp434Gv/8Bmb9ue6S1YddRmSPUasIiZn1jDDa8RO4deNhBbVen3KZKwdC2hQRqaHLA52XOyJfEPyP7M8+3AMKDUEnicK3c9F5oPMzQSBoV9Rvp6w0SvBJpI65To7P0RmKHxUM3G7Lp2y/DKbTAbUEnOrthQg0Udk3d9bMX02SFAGrpYciJCVqDU3o+WnyoYZ5pVPFHkhRUeyFg35rCe72o7PRRQaAubYd0n7m9O0c1oYXGJ3bX4BRNuoeluEhZKtJZ3T0Id/Ckd6/CZSxooUE2AkBjsCmdEUQjvPiRiP93VI3ITS4f9zEkyEr4FJh4HWQ0v/XPQkjcSFodVzK5ZgBhSzpva+bkcDbGHTvf6MoJ9CRIh10a/E48dVtvnFo5KOOXMGB6NDmpcMrrXC40XidHbFboFEGgiIUO26t9gjfXsSjFYOnLE6X2FkOitJIH3xa1obdmkAhOG191BnEsgpKs23ghApYZ01pZtfSkTxIw+J8AdjkNJzZNgvVwP/E9+qyhxXc7Z3UG2rhRFuZL56750MfgF2YUAMaRj3QBi06YMtIUzYJluA==
x-ms-exchange-antispam-messagedata: w5VBFm7WJ1ttoB/ggJI5PxOcyLWX+78WRQg0lRprdkdY6GozoK5o+ADYJp2WAmyv5xWF4KGHYUwBv0Zx4rNmugYlw5xRF6KcbchbeoKPkw4UnTY8SiUisrLsZa+07mOUXnJWTcHhcgB310xzWdNJ7A==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dbf6e83d-a850-45c6-f16c-08d7af55596c
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Feb 2020 00:49:00.0579 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8W9uC+ERnRbdTYgRe2Bs3E1P9F3MvStvkGCXkSA66/XmVPPS5bpWUZEW6zhVea27Em+cKtMtneAUraI/Wh48Tw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3916
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_164908_009846_DEB8C914 
X-CRM114-Status: GOOD (  27.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.42 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.42 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Rob

> Subject: Re: [PATCH V3 1/3] dt-bindings: pinctrl: Convert i.MX8MQ to json-
> schema
> 
> On Tue, Feb 11, 2020 at 5:20 AM Anson Huang <anson.huang@nxp.com>
> wrote:
> >
> > Hi, Rob
> >
> > > Subject: Re: [PATCH V3 1/3] dt-bindings: pinctrl: Convert i.MX8MQ to
> > > json- schema
> > >
> > > On Wed, Jan 15, 2020 at 09:30:43AM +0800, Anson Huang wrote:
> > > > Convert the i.MX8MQ pinctrl binding to DT schema format using
> > > > json-schema
> > > >
> > > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > > ---
> > > > Changes since V2:
> > > >     - the lisence should be GPL-2.0.
> > > > ---
> > > >  .../bindings/pinctrl/fsl,imx8mq-pinctrl.txt        | 36 -----------
> > > >  .../bindings/pinctrl/fsl,imx8mq-pinctrl.yaml       | 69
> > > ++++++++++++++++++++++
> > > >  2 files changed, 69 insertions(+), 36 deletions(-)  delete mode
> > > > 100644
> > > > Documentation/devicetree/bindings/pinctrl/fsl,imx8mq-pinctrl.txt
> > > >  create mode 100644
> > > > Documentation/devicetree/bindings/pinctrl/fsl,imx8mq-pinctrl.yaml
> > > >
> > > > diff --git
> > > > a/Documentation/devicetree/bindings/pinctrl/fsl,imx8mq-pinctrl.txt
> > > > b/Documentation/devicetree/bindings/pinctrl/fsl,imx8mq-pinctrl.txt
> > > > deleted file mode 100644
> > > > index 66de750..0000000
> > > > ---
> > > > a/Documentation/devicetree/bindings/pinctrl/fsl,imx8mq-pinctrl.txt
> > > > +++ /dev/null
> > > > @@ -1,36 +0,0 @@
> > > > -* Freescale IMX8MQ IOMUX Controller
> > > > -
> > > > -Please refer to fsl,imx-pinctrl.txt and pinctrl-bindings.txt in
> > > > this directory -for common binding part and usage.
> > > > -
> > > > -Required properties:
> > > > -- compatible: "fsl,imx8mq-iomuxc"
> > > > -- reg: should contain the base physical address and size of the
> > > > iomuxc
> > > > -  registers.
> > > > -
> > > > -Required properties in sub-nodes:
> > > > -- fsl,pins: each entry consists of 6 integers and represents the
> > > > mux and config
> > > > -  setting for one pin.  The first 5 integers <mux_reg conf_reg
> > > > input_reg mux_val
> > > > -  input_val> are specified using a PIN_FUNC_ID macro, which can
> > > > be found in
> > > > -  imx8mq-pinfunc.h under device tree source folder.  The last
> > > > integer CONFIG is
> > > > -  the pad setting value like pull-up on this pin.  Please refer
> > > > to i.MX8M Quad
> > > > -  Reference Manual for detailed CONFIG settings.
> > > > -
> > > > -Examples:
> > > > -
> > > > -&uart1 {
> > > > -       pinctrl-names = "default";
> > > > -       pinctrl-0 = <&pinctrl_uart1>;
> > > > -};
> > > > -
> > > > -iomuxc: pinctrl@30330000 {
> > > > -        compatible = "fsl,imx8mq-iomuxc";
> > > > -        reg = <0x0 0x30330000 0x0 0x10000>;
> > > > -
> > > > -        pinctrl_uart1: uart1grp {
> > > > -                fsl,pins = <
> > > > -                        MX8MQ_IOMUXC_UART1_RXD_UART1_DCE_RX
> 0x49
> > > > -                        MX8MQ_IOMUXC_UART1_TXD_UART1_DCE_TX
> 0x49
> > > > -                >;
> > > > -        };
> > > > -};
> > > > diff --git
> > > > a/Documentation/devicetree/bindings/pinctrl/fsl,imx8mq-pinctrl.yam
> > > > l
> > > > b/Documentation/devicetree/bindings/pinctrl/fsl,imx8mq-pinctrl.yam
> > > > l
> > > > new file mode 100644
> > > > index 0000000..e010808
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/pinctrl/fsl,imx8mq-pinctrl
> > > > +++ .yam
> > > > +++ l
> > > > @@ -0,0 +1,69 @@
> > > > +# SPDX-License-Identifier: GPL-2.0 %YAML 1.2
> > > > +---
> > > > +$id:
> > > > +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2F
> > > > +devi
> > > > +cetree.org%2Fschemas%2Fpinctrl%2Ffsl%2Cimx8mq-
> > > pinctrl.yaml%23&amp;dat
> > > >
> > >
> +a=02%7C01%7CAnson.Huang%40nxp.com%7C8471ec5c0f6848eafe0e08d79
> > > ec297db%
> > > >
> > >
> +7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C63715243091635696
> > > 3&amp;s
> > > >
> > >
> +data=3SEytaczKAQzAlgI3XJANKuxRjuZj0NzI8eemFoPMeU%3D&amp;reserve
> > > d=0
> > > > +$schema:
> > > > +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2F
> > > > +devi
> > > > +cetree.org%2Fmeta-
> > > schemas%2Fcore.yaml%23&amp;data=02%7C01%7CAnson.Hua
> > > >
> > >
> +ng%40nxp.com%7C8471ec5c0f6848eafe0e08d79ec297db%7C686ea1d3bc2b
> > > 4c6fa92
> > > >
> > >
> +cd99c5c301635%7C0%7C0%7C637152430916356963&amp;sdata=V4ul%2Fq
> > > CNNkKXmX
> > > > +270HNbhYci4aTwOvTCTpD3NqQAUoQ%3D&amp;reserved=0
> > > > +
> > > > +title: Freescale IMX8MQ IOMUX Controller
> > > > +
> > > > +maintainers:
> > > > +  - Anson Huang <Anson.Huang@nxp.com>
> > > > +
> > > > +description:
> > > > +  Please refer to fsl,imx-pinctrl.txt and pinctrl-bindings.txt in
> > > > +this directory
> > > > +  for common binding part and usage.
> > > > +
> > > > +properties:
> > > > +  compatible:
> > > > +    const: fsl,imx8mq-iomuxc
> > > > +
> > > > +  reg:
> > > > +    maxItems: 1
> > > > +
> > > > +# Client device subnode's properties
> > > > +patternProperties:
> > > > +  'grp$':
> > > > +    type: object
> > > > +    description:
> > > > +      Pinctrl node's client devices use subnodes for desired pin
> configuration.
> > > > +      Client device subnodes use below standard properties.
> > > > +
> > > > +    properties:
> > > > +      fsl,pins:
> > > > +        allOf:
> > > > +          - $ref: /schemas/types.yaml#/definitions/uint32-array
> > > > +        description:
> > > > +          each entry consists of 6 integers and represents the mux and
> config
> > > > +          setting for one pin. The first 5 integers <mux_reg conf_reg
> input_reg
> > > > +          mux_val input_val> are specified using a PIN_FUNC_ID
> > > > + macro, which
> > > can
> > > > +          be found in <arch/arm64/boot/dts/freescale/imx8mq-
> pinfunc.h>.
> > > The last
> > > > +          integer CONFIG is the pad setting value like pull-up on this pin.
> > > Please
> > > > +          refer to i.MX8M Quad Reference Manual for detailed
> > > > + CONFIG
> > > settings.
> > >
> > > Based on the description, I think this should be an uint32-matrix
> > > type instead with a schema like this:
> > >
> > > items:
> > >   items:
> > >     - description: mux_reg
> > >     - description: conf_reg
> > >     - description: input_reg
> > >     - description: mux_val
> > >     - description: input_val
> > >     - description: pad setting
> > >
> > > (With better descriptions preferrably)
> >
> > I will use something like below:
> >
> > +          - $ref: /schemas/types.yaml#/definitions/uint32-matrix
> > +          - items:
> > +              items:
> > +                - description: |
> > +                    "mux_reg" indicates the offset of mux register.
> > +                - description: |
> > +                    "conf_reg" indicates the offset of pad configuration register.
> > +                - description: |
> > +                    "input_reg" indicates the offset of select input register.
> > +                - description: |
> > +                    "mux_val" indicates the mux value to be applied.
> > +                - description: |
> > +                    "input_val" gives the select input value to be applied.
> > +                - description: |
> > +                    "pad_setting" gives the pad configuration value to be applied.
> >
> >
> > >
> > > The dts files should then be bracketed accordingly.
> >
> > Sorry, what do you mean of "dts files should then be bracketed
> accordingly"?
> > Do you mean dts file needs to be updated? I saw below example already
> > has "<>" for This matrix:
> >
> > +            fsl,pins = <
> > +                0x234 0x49C 0x4F4 0x0 0x0      0x49
> > +                0x238 0x4A0 0x4F4 0x0 0x0      0x49
> > +            >;
> >
> > Can you please advise and provide a simple example, I think we should
> > avoid changes In dts file.
> 
> Like this:
> 
> fsl,pins = <0x234 0x49C 0x4F4 0x0 0x0      0x49>,
>            <0x238 0x4A0 0x4F4 0x0 0x0      0x49>;
> 
> The changes are unavoidable (though not something you're expected to fix
> immediately). We simply can't just accept any bracketing in dts files *and*
> have schema to validate them.

So I can put the example you posted above although it is NOT aligned with
those in current dts file? And I will find a time to update the dts file accordingly,
is that OK? If yes, I will send out a new version for dt-bindings.

Thanks,
Anson

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
