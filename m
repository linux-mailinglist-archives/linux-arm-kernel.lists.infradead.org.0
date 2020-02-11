Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44356158D6F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 12:20:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ozriQHVt7q1YyjEAkxlckuraaYYBVyf3yuC1sFSS+T0=; b=d2HsZmGUPXAXhm
	Iyraz9PXrtKnemkNCW916OH3kQZB99UewOqe7Dds92ugs4slr008X0ePdzkOnPxAzrue6gQ4M+eUI
	DGOn65DzkJMJAfBqnONcrW1G9TGSFjyvi7bzdsACsgc8lLBrWWFLUFs+ELPbAocWxjFTpIh1ocREu
	O+00QsTVq/2v8JH0RmUf9mbuzm1slz0d5yBf7K0EHDiH2jccYI2eShNF4ne/mIOv/AQxiQfgrWKvo
	fNUmFQ+9AvFyffhvJ1t/+s25n5kEvUmITRpDKY00CetDhdtEMepsghDzwdr1/jbKsQALMGd6pzZ2G
	fy6Rc8MOy12fWprlfGvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1TaS-00039T-8A; Tue, 11 Feb 2020 11:20:16 +0000
Received: from mail-eopbgr70084.outbound.protection.outlook.com ([40.107.7.84]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1TaF-0002Sm-Ld
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 11:20:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L003uP/i4JgN9fd9iiGCpPKMRWhzpyyNi8K1HuJ6p4FweOe2oGIRkuuIdK5Rsm7PuiXhSsTQwu4gPtpQASYLuyjtfDrzbnXXzX+nruyatp1lTir5JqmgxQOibdZtB9vmedKqeYXNNtvU5CRQMsTVpxP8z2e9gzvCGKdgeay1YJqGap61wO+pMDxPEHsqnSImsr4mxKEmD/UXlbKM9om88ed4oeOlTUT+4J804hjoDcutRfuKg+60CiPg3V6kA0yWEjwVBhZh0E98cmYVu3wYUideWzGfggaiiawouUqy9+HUSILY0210pWMjGhjsy0l2yIwH6H9cYwRDclJ31a3kMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w8ozEKb8UyDmZo/XcWm5mA0o5h4lpmjzBOPgzdwHQYc=;
 b=QRcg5a7NkTh2g591UWD53v/U9ECl0Q6rvGxe92UUks0ZLohKT1zdz0QqEnO9YZuMT7LS9PD91ltDtrIoPrf2vio+cFfoj0SswDXbxht0DxP6iMCqS4y4ywDN1Gs9ZdBNfl5vAtQh+BUMESREz5oRTmj/yzD1WK/+KKUxEoNrd1juu+Jcz3+KT81RWUrnDuVNmXh9VJoUGepOSBFQlQeu8YB7JAiri2by1eMAoqxmGWPYynlUvFV3HQM7NVdDKop0BhnNAuRlvSRMBW+Dy4UFcdSgpk0Qh8PzFzb0CmdHLDbTADefoBkCeZLKxMFbsXU2g58dUO6qTfwk6Qvg4SJZ8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w8ozEKb8UyDmZo/XcWm5mA0o5h4lpmjzBOPgzdwHQYc=;
 b=eQIwnywMnYrjZGRZvZHpJs7UZH203LZJV5qJM5P5Dom916SomeJSSQC4hh4NM8wqcsswJjlUAbdPOW+aKp8hOZjPXeCJumhPXVJMlkYgkhbm3kn6FbRZMqX79VhGBgBqLLXFh9pS+W/NUcQzuXRdrvfENvllPFoSrZD2ArdpQbU=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3739.eurprd04.prod.outlook.com (52.134.67.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.23; Tue, 11 Feb 2020 11:19:58 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96%5]) with mapi id 15.20.2707.030; Tue, 11 Feb 2020
 11:19:58 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Rob Herring <robh@kernel.org>
Subject: RE: [PATCH V3 1/3] dt-bindings: pinctrl: Convert i.MX8MQ to
 json-schema
Thread-Topic: [PATCH V3 1/3] dt-bindings: pinctrl: Convert i.MX8MQ to
 json-schema
Thread-Index: AQHVy0QBqb7dMjHEe0ep62v7pdO1zaf1wF6AgCBCgBA=
Date: Tue, 11 Feb 2020 11:19:57 +0000
Message-ID: <DB3PR0402MB3916ED6C3FCA9BCA224A5936F5180@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1579051845-30378-1-git-send-email-Anson.Huang@nxp.com>
 <20200121223807.GA24850@bogus>
In-Reply-To: <20200121223807.GA24850@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [110.85.133.115]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 7222be99-ac0a-4dcb-d07c-08d7aee453ef
x-ms-traffictypediagnostic: DB3PR0402MB3739:|DB3PR0402MB3739:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3739D1CDDC1CF23146E67F09F5180@DB3PR0402MB3739.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0310C78181
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10001)(10009020)(4636009)(366004)(136003)(39860400002)(376002)(346002)(396003)(189003)(199004)(316002)(44832011)(81166006)(64756008)(2906002)(81156014)(66446008)(66476007)(7696005)(66556008)(66946007)(71200400001)(52536014)(478600001)(55016002)(33656002)(86362001)(9686003)(7416002)(76116006)(45080400002)(5660300002)(8936002)(186003)(6506007)(6916009)(8676002)(4326008)(54906003)(26005)(473944003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3739;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aXakA9qxemum+6sLyJfE1VCMH9EDeFWRs3ZbrzGInF0XYzCGDOg7gDHi+21wHJOIQOE6CXCck2Z70gNo+wBYc+rT9Vxf4dDwLkYToJU4PCr54OC1g+D8TsQaJFMo06gY9rfMxLapK3snSayr9zuGU/E/UzrZ3g2A+/3KOE/L47OOh9JWCaGaBDPoSPm88ZOmZl00YXHolZN5A6QmEggaC5HxsLL1M+sjKok0t6l81HyGR8viWS0ms5ixUMhZi9C482aF49r71oXBfsmkw+YN14JnuhndlQXa1d94xa/k66me6hGgduhYG4V2PO3TNWATV22anMsU7O+SV3X3fU2Da0p5p1gvJy7jZL58eu/dl6TgKwlzDDzKOWMVJLGBgN+n35PN68VZ4NphXKaFUqjDsRtJBJ458Qhw4WVRk4v6HBfJizi30irUsQrc6mAccaHmyEG6XTjR1dd7TO1AxtZHzGPPKYtHvyYdOYWhQ1GVpgrJmTiXPOimQNPt3mTqs7rxzsv0VcVMinRxd6JXQ0AcWFgupogiLCxKZF8dXtzY3VJmpbVz9zj45osmfyG8F8f64NFvP2ED0ZG8KIDm1yNWClGkZWv/LOw2TyfmQt/65v4jb/8BsaRTnx2Rxp8TH27YS7SXLRNMHTmhwlI/VSdK1JhCyXsmZGtfJA9T/MCjAdTaKwoIGfR/LjdUnl4Sbh0A
x-ms-exchange-antispam-messagedata: Pq9MEVpV1FO6h+biOnXdkrOdKLHU8JC3tfkD2bAnVYVIXq2TFvTNtmWcY/JAftFlHTBqvIiX5Jp3uJzYQZkNT7QYHlXU+nBPP8lAPaDpnI6F7O66eXQGA0hOxZXCyHQXKRtYkAdtnC7QAOC4YNzFSg==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7222be99-ac0a-4dcb-d07c-08d7aee453ef
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Feb 2020 11:19:57.8877 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0MAfOTenxxWtisSq5gpHMa5suc5/HC/H20mqcFojqfNzLKxytQZx8O7ReTrtZ3rOaeCcFjjKCJq+c9izka8EqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3739
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_032004_069062_B491019B 
X-CRM114-Status: GOOD (  26.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.84 listed in list.dnswl.org]
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
> On Wed, Jan 15, 2020 at 09:30:43AM +0800, Anson Huang wrote:
> > Convert the i.MX8MQ pinctrl binding to DT schema format using
> > json-schema
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> > Changes since V2:
> > 	- the lisence should be GPL-2.0.
> > ---
> >  .../bindings/pinctrl/fsl,imx8mq-pinctrl.txt        | 36 -----------
> >  .../bindings/pinctrl/fsl,imx8mq-pinctrl.yaml       | 69
> ++++++++++++++++++++++
> >  2 files changed, 69 insertions(+), 36 deletions(-)  delete mode
> > 100644
> > Documentation/devicetree/bindings/pinctrl/fsl,imx8mq-pinctrl.txt
> >  create mode 100644
> > Documentation/devicetree/bindings/pinctrl/fsl,imx8mq-pinctrl.yaml
> >
> > diff --git
> > a/Documentation/devicetree/bindings/pinctrl/fsl,imx8mq-pinctrl.txt
> > b/Documentation/devicetree/bindings/pinctrl/fsl,imx8mq-pinctrl.txt
> > deleted file mode 100644
> > index 66de750..0000000
> > --- a/Documentation/devicetree/bindings/pinctrl/fsl,imx8mq-pinctrl.txt
> > +++ /dev/null
> > @@ -1,36 +0,0 @@
> > -* Freescale IMX8MQ IOMUX Controller
> > -
> > -Please refer to fsl,imx-pinctrl.txt and pinctrl-bindings.txt in this
> > directory -for common binding part and usage.
> > -
> > -Required properties:
> > -- compatible: "fsl,imx8mq-iomuxc"
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
> > -  imx8mq-pinfunc.h under device tree source folder.  The last integer
> > CONFIG is
> > -  the pad setting value like pull-up on this pin.  Please refer to
> > i.MX8M Quad
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
> > -        compatible = "fsl,imx8mq-iomuxc";
> > -        reg = <0x0 0x30330000 0x0 0x10000>;
> > -
> > -        pinctrl_uart1: uart1grp {
> > -                fsl,pins = <
> > -                        MX8MQ_IOMUXC_UART1_RXD_UART1_DCE_RX             0x49
> > -                        MX8MQ_IOMUXC_UART1_TXD_UART1_DCE_TX             0x49
> > -                >;
> > -        };
> > -};
> > diff --git
> > a/Documentation/devicetree/bindings/pinctrl/fsl,imx8mq-pinctrl.yaml
> > b/Documentation/devicetree/bindings/pinctrl/fsl,imx8mq-pinctrl.yaml
> > new file mode 100644
> > index 0000000..e010808
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/pinctrl/fsl,imx8mq-pinctrl.yam
> > +++ l
> > @@ -0,0 +1,69 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id:
> > +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevi
> > +cetree.org%2Fschemas%2Fpinctrl%2Ffsl%2Cimx8mq-
> pinctrl.yaml%23&amp;dat
> >
> +a=02%7C01%7CAnson.Huang%40nxp.com%7C8471ec5c0f6848eafe0e08d79
> ec297db%
> >
> +7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C63715243091635696
> 3&amp;s
> >
> +data=3SEytaczKAQzAlgI3XJANKuxRjuZj0NzI8eemFoPMeU%3D&amp;reserve
> d=0
> > +$schema:
> > +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevi
> > +cetree.org%2Fmeta-
> schemas%2Fcore.yaml%23&amp;data=02%7C01%7CAnson.Hua
> >
> +ng%40nxp.com%7C8471ec5c0f6848eafe0e08d79ec297db%7C686ea1d3bc2b
> 4c6fa92
> >
> +cd99c5c301635%7C0%7C0%7C637152430916356963&amp;sdata=V4ul%2Fq
> CNNkKXmX
> > +270HNbhYci4aTwOvTCTpD3NqQAUoQ%3D&amp;reserved=0
> > +
> > +title: Freescale IMX8MQ IOMUX Controller
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
> > +    const: fsl,imx8mq-iomuxc
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
> > +          be found in <arch/arm64/boot/dts/freescale/imx8mq-pinfunc.h>.
> The last
> > +          integer CONFIG is the pad setting value like pull-up on this pin.
> Please
> > +          refer to i.MX8M Quad Reference Manual for detailed CONFIG
> settings.
> 
> Based on the description, I think this should be an uint32-matrix type instead
> with a schema like this:
> 
> items:
>   items:
>     - description: mux_reg
>     - description: conf_reg
>     - description: input_reg
>     - description: mux_val
>     - description: input_val
>     - description: pad setting
> 
> (With better descriptions preferrably)

I will use something like below:

+          - $ref: /schemas/types.yaml#/definitions/uint32-matrix
+          - items:
+              items:
+                - description: |
+                    "mux_reg" indicates the offset of mux register.
+                - description: |
+                    "conf_reg" indicates the offset of pad configuration register.
+                - description: |
+                    "input_reg" indicates the offset of select input register.
+                - description: |
+                    "mux_val" indicates the mux value to be applied.
+                - description: |
+                    "input_val" gives the select input value to be applied.
+                - description: |
+                    "pad_setting" gives the pad configuration value to be applied.


> 
> The dts files should then be bracketed accordingly.

Sorry, what do you mean of "dts files should then be bracketed accordingly"?
Do you mean dts file needs to be updated? I saw below example already has "<>" for
This matrix:

+            fsl,pins = <
+                0x234 0x49C 0x4F4 0x0 0x0	0x49
+                0x238 0x4A0 0x4F4 0x0 0x0	0x49
+            >;

Can you please advise and provide a simple example, I think we should avoid changes
In dts file.

Thanks,
Anson

> 
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
> > +        compatible = "fsl,imx8mq-iomuxc";
> > +        reg = <0x30330000 0x10000>;
> > +
> > +        pinctrl_uart1: uart1grp {
> > +            fsl,pins = <
> > +                0x234 0x49C 0x4F4 0x0 0x0	0x49
> > +                0x238 0x4A0 0x4F4 0x0 0x0	0x49
> > +            >;
> > +        };
> > +    };
> > +
> > +...
> > --
> > 2.7.4
> >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
