Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E08AE131F9C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 07:02:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uuZJ/bYocZJDFltGgWJzKw4OqaUl2CPkWvIgZqh7TcE=; b=My2mkgDR2Vq8FD
	dTWP4GFTyuQdYTR7xXD60RVrdKhZd7WwdBWIIP8bXb046tVXULcD/QNokHKMsQUA1k+hnUk7pPLCq
	RMCSeBS/QCWO8CeHb41bwvd4RJpxa3/+GHFgUj/cY6R4qqW7p7sBC/hyPZ5I0co+O9rgdA3OaFAHW
	jua5qktVvy00M88W6vu/euhNl5LhQCMGzgMzj3qGL+GE5d5Gd+5/7ZRkB1jKjltl8Wv8LHIA/twNI
	WGjDOs1vLb+A0AL8TPtvnm20UNbTCY2mXRxzu7MLLboP2bfjq22cKghETWmYuiM25zbBVIcRzjPef
	XopAi1SIe9eXWdTEHTpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iohwG-0004um-2y; Tue, 07 Jan 2020 06:02:00 +0000
Received: from mail-db8eur05on2063.outbound.protection.outlook.com
 ([40.107.20.63] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iohw8-0004tJ-Jo
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 06:01:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dD60L1mN9mh00sFQSUEFR+7j6a7yPk6dPqyhpkKN7jUX6EVyjkHK6+sWrsXYMY/By61hR1aPesNPAuFBqBdkT0iO8NDQ2uk8QyQ2Hvr3r8DobfMSjL2QKNAG1IiwCz8Xydd1AHpMGKxSfbxCSalXpYlls01mnOjo8NkZr7eBGCrdlZVRwtULZGhZE51CmkwFtiPh6VxCL/ZiYthDdhGmefAUnh9ejaf3KYGoUwGU4rSajudJ4CM8LmMIGKj/479o8UUYzZ6E9lhnvtAj+WwlbQy5wzFH72h7xZRT/ZCb2oNronyWi/I8tDc1pFf1C04pR8xDuoA0ZnkYQyRqTdJI0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Kyp1/lqcXZclX2G92WcN+9Dzkq53t9hr1zWzZnpHqTs=;
 b=dhFlaJShJNNwIqFrn3SIoqSmaIBMK8m0GXiPCCedzfg0Zxd/g4j6HnQZujhLrnG1Ba7kzhR8lpR2ZlEPG6oMGaskKhmIZ18Z9VB0Zo6IBVFyyDK2f5m5l+KC5Nm2E3AkwJmY+6+JaaO5VbIM7eRDSGJ6t1auTGCWzGUYHZwxwzJ7zQbxwaxc3bFPUBARtoe9HIzx9hWGxmpDrvp76N7JFRjYPYx743NDFvw5syh5R42bNc0Gu/ob21jJqvuk50EqlM9sY6dKlvgoJ6ZXKZnzSwSTyMqTQ6hHcRsa0foQbQe2VDBqyAQhDG2rVKBOFZpwJHOg4Jdjx0OO2Ku2x6Q2+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Kyp1/lqcXZclX2G92WcN+9Dzkq53t9hr1zWzZnpHqTs=;
 b=ko5IYfAnqfCgcobcy1xSZraYF2K9beNV3JklA6T0IQYHhVI3fUDQh2PDu8x1UeRfPMgcZNeL9uKolQTWz7licAuWPe2/7KSV5wWcVkE5b+PV+rMl+xcCrdP/Ftv4vH3ou5FKQWQM8YE3WgrK4iUdVfUusOUF46uCe4RA8BXIjWo=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3881.eurprd04.prod.outlook.com (52.134.73.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.15; Tue, 7 Jan 2020 06:01:49 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d968:56ad:4c0c:616f]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d968:56ad:4c0c:616f%7]) with mapi id 15.20.2602.016; Tue, 7 Jan 2020
 06:01:49 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Rob Herring <robh@kernel.org>
Subject: RE: [PATCH V3 1/3] dt-bindings: imx: Add pinctrl binding doc for
 i.MX8MP
Thread-Topic: [PATCH V3 1/3] dt-bindings: imx: Add pinctrl binding doc for
 i.MX8MP
Thread-Index: AQHVxHRpTfntiLe8yUKqATvuncqqT6feM/AAgACAI1A=
Date: Tue, 7 Jan 2020 06:01:48 +0000
Message-ID: <DB3PR0402MB39161890A510346EBA8EF881F53F0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1578302992-5723-1-git-send-email-Anson.Huang@nxp.com>
 <20200106221246.GA17055@bogus>
In-Reply-To: <20200106221246.GA17055@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.67]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 9e9cd291-2132-4892-362d-08d79337158d
x-ms-traffictypediagnostic: DB3PR0402MB3881:|DB3PR0402MB3881:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3881E5FDA6A9179102BD719FF53F0@DB3PR0402MB3881.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 027578BB13
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10001)(10009020)(4636009)(39860400002)(396003)(376002)(366004)(346002)(136003)(199004)(189003)(76116006)(7696005)(64756008)(66446008)(66556008)(6916009)(66946007)(66476007)(6506007)(186003)(2906002)(44832011)(4326008)(26005)(9686003)(55016002)(45080400002)(478600001)(52536014)(316002)(86362001)(33656002)(8936002)(71200400001)(81166006)(54906003)(81156014)(8676002)(7416002)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3881;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: N4k/xoIkOQ145bMrXqgywixefk5MgRSVad3q/l0tysSseTVuM1U1FTUOZ1dHCedJ12YoFohMd/HXDf1Bp9rn7iXKIqIetDoRrewGn+Jwl/85DbfUh4SQvFXd73B2d/OSgT5cihjhbbtLbx3OEMMzfPpDJkIvkEwC80Kpl/OMo/IMeBLamnWq9Uuw8Oi0cBTTyArCCgek8DBxlgTA+y8P/ag4HP9Nlj8fRG1/EZBQFdHrhCI/iUUlzY4NK+PemBMSU1eOBEuGLOZVgZ2Yf+bZ28osNEhQzEbii8SFkLrq/9cejvO/2RQ7MsyfesWhzy99E+vvUJ8opf1GuOjcWu65LWoDaV9oEUp210DOKxKcExOmkA/+W7K/2tDgCI5gZ0GnmLte9tz9BSxJQ1ZhaIAsFKVq6NoLdAVHLsEI+GmQA5SG6DRd/z4ZhgOmiPQ9EYJG21lxcOOsOFYNlkGBx5J4QrajGPU1Z213rPWfLSVeoNe3Z6OA/03Su3mNog37aSpVjqEHicr7TPBWJ1M43WWA09NH5BXqrvncFEYVA9NTUkU2nyCTt9rkm/3u80tct9cUhq6odqK3bvTCU5DRcnTK8A==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e9cd291-2132-4892-362d-08d79337158d
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2020 06:01:48.4807 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tdxO+C6aDCMu5w/lK0OKuX9YzK+rYIsytV1nIC2Szhci/pb6RXSPgID32nPMi3pw1O/2p4KqA6Bjc9nC5QUJEg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3881
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_220152_655129_ADAAF6BD 
X-CRM114-Status: GOOD (  22.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.63 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "stefan@agner.ch" <stefan@agner.ch>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, "will@kernel.org" <will@kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, "festevam@gmail.com" <festevam@gmail.com>,
 "marcin.juszkiewicz@linaro.org" <marcin.juszkiewicz@linaro.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "maxime@cerno.tech" <maxime@cerno.tech>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>, "shawnguo@kernel.org" <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Rob

> Subject: Re: [PATCH V3 1/3] dt-bindings: imx: Add pinctrl binding doc for
> i.MX8MP
> 
> On Mon, Jan 06, 2020 at 05:29:50PM +0800, Anson Huang wrote:
> > Add binding doc for i.MX8MP pinctrl driver.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
> > ---
> > Changes since V2:
> > 	- use DT schema instead of txt for binding doc.
> > ---
> >  .../bindings/pinctrl/fsl,imx8mp-pinctrl.yaml       |  65 ++
> >  arch/arm64/boot/dts/freescale/imx8mp-pinfunc.h     | 931
> +++++++++++++++++++++
> >  2 files changed, 996 insertions(+)
> >  create mode 100644
> > Documentation/devicetree/bindings/pinctrl/fsl,imx8mp-pinctrl.yaml
> >  create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-pinfunc.h
> >
> > diff --git
> > a/Documentation/devicetree/bindings/pinctrl/fsl,imx8mp-pinctrl.yaml
> > b/Documentation/devicetree/bindings/pinctrl/fsl,imx8mp-pinctrl.yaml
> > new file mode 100644
> > index 0000000..cdb6c21
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/pinctrl/fsl,imx8mp-pinctrl.yam
> > +++ l
> > @@ -0,0 +1,65 @@
> > +# SPDX-License-Identifier: GPL-2.0-or-later %YAML 1.2
> > +---
> > +$id:
> > +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevi
> > +cetree.org%2Fschemas%2Fpinctrl%2Ffsl%2Cimx8mp-
> pinctrl.yaml%23&amp;dat
> >
> +a=02%7C01%7Canson.huang%40nxp.com%7Cfacd4426e6e54bc5416b08d79
> 2f59319%
> >
> +7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C63713945576195750
> 5&amp;s
> >
> +data=0O3w1U6vs9xVq6B%2BhyT4Nz5HdKuk6XDymPUg7wQy0lM%3D&amp;
> reserved=0
> > +$schema:
> > +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevi
> > +cetree.org%2Fmeta-
> schemas%2Fcore.yaml%23&amp;data=02%7C01%7Canson.hua
> >
> +ng%40nxp.com%7Cfacd4426e6e54bc5416b08d792f59319%7C686ea1d3bc2b
> 4c6fa92
> >
> +cd99c5c301635%7C0%7C0%7C637139455761957505&amp;sdata=XUN%2BG
> zMOqpVNRj
> > +UM1CO6CXPOMT72DtdefLs%2Bs%2BGPaGI%3D&amp;reserved=0
> > +
> > +title: Freescale IMX8MP IOMUX Controller
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
> > +    const: fsl,imx8mp-iomuxc
> > +
> > +# Client device subnode's properties
> > +patternProperties:
> > +  '-grp$':
> > +    type: object
> > +    description:
> > +      Pinctrl node's client devices use subnodes for desired pin configuration.
> > +      Client device subnodes use below standard properties.
> > +
> > +    properties:
> > +      fsl,pins:
> > +        $ref: /schemas/types.yaml#/definitions/string
> 
> string or...
> 
> > +        description:
> > +          each entry consists of 6 integers and represents the mux
> > + and config
> 
> integers?

I think it should be uint32-array

> 
> > +          setting for one pin. The first 5 integers <mux_reg conf_reg input_reg
> > +          mux_val input_val> are specified using a PIN_FUNC_ID macro, which
> can
> > +          be found in <arch/arm64/boot/dts/freescale/imx8mp-pinfunc.h>.
> The last
> > +          integer CONFIG is the pad setting value like pull-up on this pin.
> Please
> > +          refer to i.MX8M Plus Reference Manual for detailed CONFIG settings.
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
> > +        compatible = "fsl,imx8mp-iomuxc";
> > +        reg = <0x30330000 0x10000>;
> > +
> > +        pinctrl_uart2: uart2grp {
> > +            fsl,pins = <
> > +                MX8MP_IOMUXC_UART2_RXD__UART2_DCE_RX	0x49
> > +                MX8MP_IOMUXC_UART2_TXD__UART2_DCE_TX	0x49
> 
> Run 'make dt_binding_check'. Doesn't build:
> 
> Error: Documentation/devicetree/bindings/pinctrl/fsl,imx8mp-
> pinctrl.example.dts:23.21-22 syntax error FATAL ERROR: Unable to parse
> input tree

I fix it by NOT using Macro Definition as below, but still have some build error which looks like
my environment issue, please help review V4, thanks.

             fsl,pins = <
                 0x228 0x488 0x5F0 0x0 0x6       0x49
                 0x228 0x488 0x000 0x0 0x0       0x49
             >;


  CHKDT   Documentation/devicetree/bindings/pinctrl/fsl,imx8mp-pinctrl.yaml
  SCHEMA  Documentation/devicetree/bindings/processed-schema.yaml
  DTC     Documentation/devicetree/bindings/pinctrl/fsl,imx8mp-pinctrl.example.dt.yaml
FATAL ERROR: Unknown output format "yaml"
scripts/Makefile.lib:310: recipe for target 'Documentation/devicetree/bindings/pinctrl/fsl,imx8mp-pinctrl.example.dt.yaml' failed
make[1]: *** [Documentation/devicetree/bindings/pinctrl/fsl,imx8mp-pinctrl.example.dt.yaml] Error 1
make[1]: *** Deleting file 'Documentation/devicetree/bindings/pinctrl/fsl,imx8mp-pinctrl.example.dt.yaml'
Makefile:1263: recipe for target 'dt_binding_check' failed
make: *** [dt_binding_check] Error 2


Thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
