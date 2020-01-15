Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7FD913B73C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 02:50:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d3bJF5eYp1sVBsQWPD0kRUVV3Ucs7iTZ54mNdzbwr4g=; b=A4TyLZrf3086t2
	AX2qNuHaCQkEborG+pr1FRCAgt+wcVd9gpOHk5CkHI1FNp8wZczFdF4riHow7xWijRcdHFU3APzkK
	wx2kdeXVgy6dYVMDXGDnfO8erVP7i+ZpnqSLzbspa6v5aCejWqPexn403NoUWQHrlkjBYZMkoSehb
	l7mmfg7R/A7GSA90ZbM6VRIsZ58rPaxilb3W8T4rYu2iLAD8z+lvwVeSNP8XPY/5guXrxXYcmBd1Y
	VEgsC0xePx6HiNuMOqYzVfUe9szgzv4PH+GEvwxLzvDMqgveJGgvayMQfjbbK9GHgdmfNUEX994G1
	3JORCAPV+A05+5Yu9JaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irXpB-0007Z2-AI; Wed, 15 Jan 2020 01:50:25 +0000
Received: from mail-am6eur05on2056.outbound.protection.outlook.com
 ([40.107.22.56] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irXox-0007YN-Ot
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 01:50:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I8IijXI4Z9StWUo8gherT5j+9BlQmrmRUcfriau1RFwcayOAdKcRGkyLrcO9FkYDx76XVGOvHcebBTBE7f57KzkAOjtUhmWcgJhD9q5f0LRBqXT8/cl+JtTLtrt8nshGdRp3ON5vfjH3lRwfmhsUAWg08zFqFZpq/KGOTFiLNDuFOUMA8Tr3j0BN2OAxo2t63J+DT8W0/vga1ul29L06PG64S+O8Yiqu28vPSIp+l27mcDjOwVCxXCriocCvp3KhJ6ySGTOyDKYpH5eWGClxFWSYBnxY2e16X6QnThAKHNSNRCxcIG5SvAySItozIXB7qyLCwmQ8izRmev4xfj4KTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XCa7AyxcZ0YlOsjWM9ajEqCJJrUDeANL6DV4Nrk3owc=;
 b=ba+A6KuWNWxkGxICRvUb5SIs2MimMcLew4KV654SAC3ng4TAF7u/ku/7xC+os6+f8gmvdZJ+B1U3BvTLUvnDDwlFIdNGksKJFuuB1LZMI57bWTauav3oOBelPgL/3N3uD1h7aI0+EV40IlHqi70F6UCdUy+48w4LAoOeRovRakTh7mH3IEQbEzeUwWcXbJhp7owVvthq9+nCvtfnVZh4AiHrKk2HCnYPF0RuhiieC/UlWFkEi+oAiX0q5R4ZR6aJXhmNAdinl/tikZ4/wnfDi6BX4ixK24IgJEleyXYbUcZA3nEb2vdOpFZfVPbZocm6PAD+PbmiKqtjey6Tz2Labg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XCa7AyxcZ0YlOsjWM9ajEqCJJrUDeANL6DV4Nrk3owc=;
 b=eBYisEFLs+h8pQhFBZtzmFNUosy6hrek8ynPU2Z0MmRvtgI6vK33LAqRKJDH2QM4/T1CIFRkMTDBpDB+lU2FjBGAukRp4qJsFrQvDp70al6ZofRVt2X0Ok8q4v21kOktbCBwFmBL7uNI8IKgVr/ohp6u+2VVfuMMYDMPD5QgWQU=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3884.eurprd04.prod.outlook.com (52.134.71.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Wed, 15 Jan 2020 01:35:20 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96%5]) with mapi id 15.20.2644.015; Wed, 15 Jan 2020
 01:35:20 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Rob Herring <robh@kernel.org>
Subject: RE: [PATCH V2 2/3] dt-bindings: pinctrl: Convert i.MX8MM to
 json-schema
Thread-Topic: [PATCH V2 2/3] dt-bindings: pinctrl: Convert i.MX8MM to
 json-schema
Thread-Index: AQHVx2u+gNLjqXfLGU2kCc4rAZx8Aafq4e4AgAAXFpA=
Date: Wed, 15 Jan 2020 01:35:20 +0000
Message-ID: <DB3PR0402MB3916419154FCE3FA21DAA5DDF5370@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1578629120-25793-1-git-send-email-Anson.Huang@nxp.com>
 <1578629120-25793-2-git-send-email-Anson.Huang@nxp.com>
 <20200115001152.GA12156@bogus>
In-Reply-To: <20200115001152.GA12156@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 5eacba55-79a1-487b-89ec-08d7995b2ed4
x-ms-traffictypediagnostic: DB3PR0402MB3884:|DB3PR0402MB3884:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB38848C89DC01EB6B1433D926F5370@DB3PR0402MB3884.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 02830F0362
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(346002)(366004)(39860400002)(396003)(189003)(199004)(76116006)(9686003)(86362001)(55016002)(4326008)(66946007)(66476007)(66556008)(64756008)(66446008)(2906002)(6916009)(478600001)(44832011)(71200400001)(8676002)(81156014)(8936002)(81166006)(316002)(7416002)(54906003)(7696005)(186003)(6506007)(5660300002)(33656002)(26005)(52536014)(473944003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3884;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gmvHxOED3SYdjXePOMY+jIOudN2Wie2wABRcmU1uyLPqHgAf3UFNrSyNheM0nzf0+mwOhJ+akL0s18RQ/zmmtxxV+U3PYKve+a5FEnTuIZHe7oUeU5zVL/JK+BRxQ33zfeRXkXI1ECtgWZYKsQ3G0fx2Pl3gHyORm7j4u4rwo6E+/k+SZc6BjG/i/62Jnbeh9AwRUgDlFqtwSlpkME3ZDdwNtkyKAEjA53/PKX1JTFVnWsqQf/zFrIpXWiX04mbu24ymQOpd+m8p5yj4ewBAIPUZIl+N3kk4MogsB4DwaKF4qmbc3PAMmqcPmMLbxnAxOdWKb7ue4i9LnEgNDUoRVQsdItT3pyt8dngmj+tbU4v6N3vIYG2nvoKga3UtTcGr6s3fJm6XdTFFJBEsPCNUqaL0LfK2kIvCD9PqQTWyamzgxT9dOqn79SruI5HrfIpqC+QuX7exVuYWIR6WCyLDxX2QuypLvmgHBlKDG2pf0Kx9C3YbwmjUg1poombdYquE
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5eacba55-79a1-487b-89ec-08d7995b2ed4
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2020 01:35:20.0890 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UWTgigOREiZkff2iVy/j9kSitmH88vvSYPHsc6sJkwwxFrCHWdsrRfoR79pG5lg5wQXJFy9VED56nM7K7jpScA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3884
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_175011_816437_87AA9B98 
X-CRM114-Status: GOOD (  22.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.56 listed in list.dnswl.org]
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

> Subject: Re: [PATCH V2 2/3] dt-bindings: pinctrl: Convert i.MX8MM to json-
> schema
> 
> On Fri, Jan 10, 2020 at 12:05:19PM +0800, Anson Huang wrote:
> > Convert the i.MX8MM pinctrl binding to DT schema format using
> > json-schema
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> > Changes since V1:
> >         - use "grp$" instead of "-grp$";
> >         - use space instead of tab for "ref$";
> > 	- add missed "reg" property;
> >         - remove the "maxItem" for "fsl,pins" to avoid build warning, as the
> item number is changable.
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
> > index 0000000..a3c4275
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/pinctrl/fsl,imx8mm-pinctrl.yam
> > +++ l
> > @@ -0,0 +1,69 @@
> > +# SPDX-License-Identifier: GPL-2.0-or-later
> 
> Sorry, one other thing.
> 
> You're good with GPLv9? Plus this is a license change. Do you have rights to
> do so as some of this comes from the old binding doc? If you do, then make

Yes, it should be GPL-2.0, will fix it in V3.

Thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
