Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11C3724AA2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 10:42:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iG/HSMg9SCNhnxoFHLXJA9dK68GBE08PGLQWDk41SkM=; b=Bbwmbb09tmiQt4
	05qNWTwxu3lUZWQbC94y7vy5U0uBmVv5A2vIJccib5RVr4shiXhUBRGlfZ5GkOpIKaHGfTljD/mg9
	YY9dRXtxMoURadgI1tRAy4kVkDtEnlL1ajA1w8g1EaAX/iVauhfzIM34wJCPxeWVKUzzYJXV73sWw
	XFFRP7f3PKiNIot46GsKSBzE+lfAuJvfZyxadwfQe6SxjslS8lCpl/7yIbdGpc2gsxw6obWwmYZ7E
	BmLhuHRxk2UtWF0qM80KI2eNosHzzMk80zl4Wwl7IgdFG58ZfwwuAVgeNc8S7gGEwqC1Py8mU8ZSA
	pTO7cLuiKQmwshgidYNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT0M7-0006RB-Su; Tue, 21 May 2019 08:42:43 +0000
Received: from mail-eopbgr150075.outbound.protection.outlook.com
 ([40.107.15.75] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT0M0-0006QL-Qk
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 08:42:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LTwn26hGk98qhFNKDhuqmtRcWqbka96B26HnzTZdOIo=;
 b=gdjrHy4H3hIAefLoi/Ia6QoSNPIdnAjQtvAXKlTSf8qoRnG9pxtbcRUucEIfNARw3BY63xh2RGnW6VePYsc5wFI8eIg81hH5onkLtLAm6FTw7Eqooh4L+VGC+W6EKwahLPZ2IM2Munrr2ouMy0bUSJTLJ//5jGgdEqRffXqtlZo=
Received: from AM0PR04MB5314.eurprd04.prod.outlook.com (20.177.41.157) by
 AM0PR04MB5409.eurprd04.prod.outlook.com (20.178.116.92) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.18; Tue, 21 May 2019 08:42:32 +0000
Received: from AM0PR04MB5314.eurprd04.prod.outlook.com
 ([fe80::f0fd:f85a:5df:8dd0]) by AM0PR04MB5314.eurprd04.prod.outlook.com
 ([fe80::f0fd:f85a:5df:8dd0%5]) with mapi id 15.20.1900.020; Tue, 21 May 2019
 08:42:31 +0000
From: Peter Chen <peter.chen@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH v2 6/8] ARM: dts: imx7ulp: add imx7ulp USBOTG1 support
Thread-Topic: [PATCH v2 6/8] ARM: dts: imx7ulp: add imx7ulp USBOTG1 support
Thread-Index: AQHVCigBwvPXZQ0UVkuAwmjsg1TEmaZzp+eAgAGl6NA=
Date: Tue, 21 May 2019 08:42:31 +0000
Message-ID: <AM0PR04MB53140D914E608A9BA2CB30858B070@AM0PR04MB5314.eurprd04.prod.outlook.com>
References: <20190514073529.29505-1-peter.chen@nxp.com>
 <20190514073529.29505-7-peter.chen@nxp.com> <20190520073157.GW15856@dragon>
In-Reply-To: <20190520073157.GW15856@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peter.chen@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: edd3fda7-4874-497e-fc87-08d6ddc843c0
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5409; 
x-ms-traffictypediagnostic: AM0PR04MB5409:
x-microsoft-antispam-prvs: <AM0PR04MB5409520D87D99FE36402900A8B070@AM0PR04MB5409.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 0044C17179
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(346002)(376002)(136003)(396003)(39860400002)(366004)(189003)(199004)(6506007)(54906003)(316002)(71200400001)(8676002)(33656002)(81166006)(81156014)(71190400001)(14454004)(7696005)(76176011)(73956011)(66946007)(6116002)(3846002)(76116006)(5660300002)(66476007)(66556008)(64756008)(66446008)(68736007)(6916009)(8936002)(186003)(25786009)(26005)(6436002)(2906002)(74316002)(256004)(9686003)(14444005)(11346002)(55016002)(52536014)(66066001)(102836004)(229853002)(476003)(305945005)(486006)(99286004)(446003)(86362001)(4326008)(44832011)(7736002)(478600001)(53936002)(6246003)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5409;
 H:AM0PR04MB5314.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: h0MOTsQ3ZcKrMCMGiPE/NqeeppooVODBcwMXx7sxmFOryGJJL05dOaEdedrd4wUdeVGS9ZmlbESBM5e0TvQSLPeDL7VixVSPiifVK9nLiOCcbkV3+OAkUns339hlQtHLqSbBkXY2YRmQP2qI5LPHLsM5WDFxUzHgHysFhsH4ouDJS4F1HbDCR5W9UMP/R5pgY4siWtz/AVVgE5d+9x9XQbY2CBKi2yPAyU6smzTWLnKCeWkW4T688OwDFVvOEubd4L/Yqz61A4I8RoTfTeso9K2t1ua1NGYzu9N4rrIsmUhUJ28C/Qe2mTN6I6Faeze+JDXqD/qVWOis+1dPH0SNvQuL8O1tdw7JpdTwuKTXUGQcvzRMGh7tl8qftikxdk8XMFM5Jv+HF1Lb3vbrq7EG9HHoXqoNKjSAQqJRQRGeGQQ=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: edd3fda7-4874-497e-fc87-08d6ddc843c0
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2019 08:42:31.9062 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5409
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_014236_868836_BE5FA68E 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, "balbi@kernel.org" <balbi@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

 
> >  1 file changed, 31 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/imx7ulp.dtsi
> > b/arch/arm/boot/dts/imx7ulp.dtsi index fca6e50f37c8..60c9ea116d0a
> > 100644
> > --- a/arch/arm/boot/dts/imx7ulp.dtsi
> > +++ b/arch/arm/boot/dts/imx7ulp.dtsi
> > @@ -30,6 +30,7 @@
> >  		serial1 = &lpuart5;
> >  		serial2 = &lpuart6;
> >  		serial3 = &lpuart7;
> > +		usbphy0 = &usbphy1;
> >  	};
> >
> >  	cpus {
> > @@ -133,6 +134,36 @@
> >  			clock-names = "ipg", "per";
> >  		};
> >
> > +		usbotg1: usb@40330000 {
> > +			compatible = "fsl,imx7ulp-usb", "fsl,imx6ul-usb",
> > +				"fsl,imx27-usb";
> > +			reg = <0x40330000 0x200>;
> > +			interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
> > +			clocks = <&pcc2 IMX7ULP_CLK_USB0>;
> > +			phys = <&usbphy1>;
> > +			fsl,usbmisc = <&usbmisc1 0>;
> > +			ahb-burst-config = <0x0>;
> > +			tx-burst-size-dword = <0x8>;
> > +			rx-burst-size-dword = <0x8>;
> > +			status = "disabled";
> > +		};
> > +
> > +		usbmisc1: usbmisc@40330200 {
> > +			#index-cells = <1>;
> 
> Nit: we usually start with 'compatible', so can we move it behind?
> 

Thanks, will change.

Peter


> Shawn
> 
> > +			compatible = "fsl,imx7ulp-usbmisc", "fsl,imx7d-usbmisc",
> > +				"fsl,imx6q-usbmisc";
> > +			reg = <0x40330200 0x200>;
> > +		};
> > +
> > +		usbphy1: usbphy@0x40350000 {
> > +			compatible = "fsl,imx7ulp-usbphy",
> > +				"fsl,imx6ul-usbphy", "fsl,imx23-usbphy";
> > +			reg = <0x40350000 0x1000>;
> > +			interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
> > +			clocks = <&pcc2 IMX7ULP_CLK_USB_PHY>;
> > +			#phy-cells = <0>;
> > +		};
> > +
> >  		usdhc0: mmc@40370000 {
> >  			compatible = "fsl,imx7ulp-usdhc", "fsl,imx6sx-usdhc";
> >  			reg = <0x40370000 0x10000>;
> > --
> > 2.14.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
