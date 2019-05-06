Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB5A146CF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 10:51:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wC11y8+xeb/z0j7WlPbjuuJGNB46pPqSSa4eobmuUro=; b=WXQFyYLlyGTO2Y
	FxuMi6hW6wQXnxobvazb54V/NRZLHyxMZEBwoskAhO+FVwJzc5QLjoQ8c40vwJquSL1auCfBmFpeq
	XHTkvuBqnwTx8fJtL0yU/i30OIYVzH4YU9hMrJTD8p3D/bhRFxLVJSS0A18FUZ5P9DqS7KhleztaS
	+jbHiXxpV48DAONHNBaswzRrI6HW/4h55Rf4DkI2hZhmGJ7DaebIfksygQ/NPGQvfc5WFg4B8yNm1
	FpeFp6NIc4IlFZ8fg0kZBe1wZvecA9YENxT77XCI00ftiZGTpv47qM9Tfai9aqEWsYpN8nA6l8qEo
	DNHclwl0dtHj3OUyUdSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNZKz-0000Pd-8D; Mon, 06 May 2019 08:51:05 +0000
Received: from mail-eopbgr30071.outbound.protection.outlook.com ([40.107.3.71]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNZKq-0000OU-BK
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 08:50:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1oXaDylPAYgguXuOpuuI80qOsq24+BXni+j1MWNwDJc=;
 b=UXxdMK8ozvW7Svsn1v8xLgirgJ/mPkvfETAGRiYI0/NFT3FTm/3OfHm6cOOWU1X7Tgv6VfxXjxX1jjFOeUDJgVfssD2oIBcKPPkveY3H78hXVaBc1vRuT1acFdQgD9hqN52dV9Q3b5kwUUTfGvdt8y98qSUiAd7v8dOZEmK1S7Q=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5940.eurprd04.prod.outlook.com (20.178.114.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Mon, 6 May 2019 08:50:52 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378%6]) with mapi id 15.20.1856.012; Mon, 6 May 2019
 08:50:52 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, "srinivas.kandagatla@linaro.org"
 <srinivas.kandagatla@linaro.org>
Subject: RE: [PATCH 1/4] dt-bindings: fsl: scu: add ocotp binding
Thread-Topic: [PATCH 1/4] dt-bindings: fsl: scu: add ocotp binding
Thread-Index: AQHVA0ZjnXjmGbRNIUCIpXt7yxOkeqZduNCggAARL5A=
Date: Mon, 6 May 2019 08:50:51 +0000
Message-ID: <AM0PR04MB44815E080F8639F597BD085E88300@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <20190505134130.28071-1-peng.fan@nxp.com>
 <AM0PR04MB4211BC6C3321648BEB67927480300@AM0PR04MB4211.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB4211BC6C3321648BEB67927480300@AM0PR04MB4211.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b0b814e2-5ca4-4192-bc7d-08d6d1fff1b3
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5940; 
x-ms-traffictypediagnostic: AM0PR04MB5940:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <AM0PR04MB594017966AC9D6AAE349A62188300@AM0PR04MB5940.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0029F17A3F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(346002)(366004)(376002)(396003)(136003)(189003)(199004)(66446008)(6436002)(229853002)(66066001)(74316002)(66476007)(64756008)(66556008)(8676002)(2501003)(4326008)(186003)(7416002)(99286004)(52536014)(73956011)(55016002)(66946007)(6116002)(3846002)(9686003)(6306002)(76116006)(25786009)(14444005)(256004)(305945005)(71200400001)(71190400001)(5660300002)(6246003)(14454004)(53936002)(54906003)(11346002)(110136005)(316002)(86362001)(476003)(8936002)(446003)(68736007)(966005)(2201001)(7736002)(33656002)(2906002)(44832011)(478600001)(76176011)(81166006)(81156014)(7696005)(102836004)(26005)(6506007)(486006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5940;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ZQs1Fs+/YM6l0s8sGNnqBshaH4l1mE8y8/MRsLxtnb6ZofpeDeX4PS+iPthzJh7AHy+dRPlMxNOYsm6SXdBoFaPiU1NciZ3CrN6TeDNM2XQtzALaH+0c/jRMRbLOw/4mKa6EXnEdLe0zFakGBNmqvk00gbACBAK4BNIa4smynNW7OKtnP1AP+taoe8fyPiLRc+KwbvKfIGa4ArMMEjDvRTYygcHr/V+es7+N/SrmNBDLH14pXQuhNW4mrcjgpRjAG8GNC32SSCaCQaS5imC4ek35j/yCI13lRIUGzSQejM6GJkWd7+AVDQl35D3PXXplYkiPUrPyf3leJ6RGi3p3ibbcDjEigfy++6E/5OfJr7nSnXZKBJVmG0O0OYuLIj3tUZEB2+GVrz1mMCYpxfozx8c6efIqCNWBGrWcIctGjQg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0b814e2-5ca4-4192-bc7d-08d6d1fff1b3
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2019 08:50:51.9698 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5940
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_015056_389942_2450CBF4 
X-CRM114-Status: GOOD (  21.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.71 listed in list.dnswl.org]
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
X-Mailman-Version: 2.1.21
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Anson Huang <anson.huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Aisheng,

> Subject: RE: [PATCH 1/4] dt-bindings: fsl: scu: add ocotp binding
> 
> > From: Peng Fan
> > Sent: Sunday, May 5, 2019 9:28 PM
> >
> > NXP i.MX8QXP is an ARMv8 SoC with a Cortex-M4 core inside as system
> > controller(SCU), the ocotp controller is being controlled by the SCU,
> > so Linux need use RPC to SCU for ocotp handling. This patch adds
> > binding doc for i.MX8 SCU OCOTP driver.
> >
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: Mark Rutland <mark.rutland@arm.com>
> > Cc: Aisheng Dong <aisheng.dong@nxp.com>
> > Cc: Shawn Guo <shawnguo@kernel.org>
> > Cc: Ulf Hansson <ulf.hansson@linaro.org>
> > Cc: Stephen Boyd <sboyd@kernel.org>
> > Cc: Anson Huang <anson.huang@nxp.com>
> > Cc: devicetree@vger.kernel.org
> > ---
> >  Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt | 13
> > +++++++++++++
> >  1 file changed, 13 insertions(+)
> >
> > diff --git
> > a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > index 5d7dbabbb784..9cb7d52bdf26 100644
> > --- a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > +++ b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > @@ -100,6 +100,13 @@ ID in its "clocks" phandle cell.
> >  See the full list of clock IDs from:
> >  include/dt-bindings/clock/imx8qxp-clock.h
> >
> > +OCOTP bindings based on SCU Message Protocol
> > +------------------------------------------------------------
> > +Required properties:
> > +- compatible:		Should be "fsl,imx8qxp-ocotp"
> > +- #address-cells:	Must be 1. Contains byte index
> > +- #size-cells:		Must be 1. Contains byte length
> > +
> 
> Please put this unimportant one to the last.

ok. I just followed alphabetical order as OCOTP, Pinctrl, RTC sequence.
Will move it to last in V2.

> And it's better to mention the optional child nodes for data cells as Above
> #address-cells and #size-cells are used for it.
> Just like:
> Documentation/devicetree/bindings/nvmem/imx-ocotp.txt
> 
> >  Pinctrl bindings based on SCU Message Protocol
> >  ------------------------------------------------------------
> >
> > @@ -177,6 +184,12 @@ firmware {
> >  			...
> >  		};
> >
> > +		ocotp: imx8qx-ocotp {
> > +			#address-cells = <1>;
> > +			#size-cells = <1>;
> 
> Not sure if it's a free choice, but AFAIK we usually write #address-cells and
> #size-cells under compatible string according to the example in DT spec and
> doc.

Fix in V2.

Thanks,
Peng

> https://elinux.org/Device_Tree_Usage
> https://github.com/devicetree-org/devicetree-specification/releases/tag/v0.
> 2
> 
> Maybe Rob can comment to avoid confusing.
> 
> Otherwise, this patch seems good to me.
> 
> Regards
> Dong Aisheng
> 
> > +			compatible = "fsl,imx8qxp-ocotp";
> > +		};
> > +
> >  		pd: imx8qx-pd {
> >  			compatible = "fsl,imx8qxp-scu-pd", "fsl,scu-pd";
> >  			#power-domain-cells = <1>;
> > --
> > 2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
