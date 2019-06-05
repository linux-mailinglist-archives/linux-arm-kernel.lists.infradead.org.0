Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C1BC3576D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 09:07:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P9Drpx0GpeFQhv7KeWtIbevHkJRiYKJYONwT03TkJsU=; b=hV5/DqIOeEYcGd
	Ttul9f15pr4THh3CRY21JpAk6ka+yp0N3/XKti4Gn0mwtS2IfR803ljRCw/JDL2oJMs6fLhIRJJAb
	9itAJeryXd89i4Rq/kfpfzEYwS/tf2akyYW0+gURA49BuPVAIN5rUG/RPNUBLBKFXBaiyEkpj4cry
	jCmTszkDblNkqBmK04hiD7yhhoORRXMVVgZ/BLXL/X0WCNMUydqWmXsJfN2nYAFshnYCttiUkcpMZ
	GAm/RlYY8l3lSMSBlWyY9ijUzlg8gFz9okdc8uB4clMBVGvInkRiXySUDdJiVXdlLsG4Txcyn2vuu
	BCZxJrCB2GxFNqPxIVdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYQ1P-0001R6-5I; Wed, 05 Jun 2019 07:07:43 +0000
Received: from mail-eopbgr50060.outbound.protection.outlook.com ([40.107.5.60]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYQ1H-0001QT-EB
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 07:07:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zLAAt3BL+sGQp4G4btulciJGZrB7AfgtnguDDX6EvfU=;
 b=jF70+Es9DCcFZRI6sgfNHduCGIWgAHMXSlHiZ1EYssKN/kVYBJTqxNqQL9WwcR5mCiRLzkIBLaRki9XEqu+1mlEF7KyvMnOa0CRyJefRIezyxKfTd54U2LBxQherU7lGB4VY8NgBGbI2d2chdxzIlNPC7kBJQwoQGWKUw8q9aHI=
Received: from VI1PR04MB5327.eurprd04.prod.outlook.com (20.177.52.16) by
 VI1PR04MB4846.eurprd04.prod.outlook.com (20.177.49.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.22; Wed, 5 Jun 2019 07:07:30 +0000
Received: from VI1PR04MB5327.eurprd04.prod.outlook.com
 ([fe80::9891:c973:a697:3c7b]) by VI1PR04MB5327.eurprd04.prod.outlook.com
 ([fe80::9891:c973:a697:3c7b%3]) with mapi id 15.20.1965.011; Wed, 5 Jun 2019
 07:07:30 +0000
From: Peter Chen <peter.chen@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH v3 6/8] ARM: dts: imx7ulp: add imx7ulp USBOTG1 support
Thread-Topic: [PATCH v3 6/8] ARM: dts: imx7ulp: add imx7ulp USBOTG1 support
Thread-Index: AQHVFDjwJwcxVExAwkGmD5zag5gWjKaMpnEAgAALr+A=
Date: Wed, 5 Jun 2019 07:07:30 +0000
Message-ID: <VI1PR04MB53274359CFCA91AE6A3681678B160@VI1PR04MB5327.eurprd04.prod.outlook.com>
References: <20190527030616.44397-1-peter.chen@nxp.com>
 <20190527030616.44397-7-peter.chen@nxp.com> <20190605062517.GF29853@dragon>
In-Reply-To: <20190605062517.GF29853@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peter.chen@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9bd2feaa-8643-4a11-da47-08d6e984799a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB4846; 
x-ms-traffictypediagnostic: VI1PR04MB4846:
x-microsoft-antispam-prvs: <VI1PR04MB484652FCA720ACD74FA66AA78B160@VI1PR04MB4846.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 00594E8DBA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(346002)(366004)(136003)(39860400002)(376002)(199004)(189003)(53936002)(14444005)(256004)(55016002)(6436002)(9686003)(7736002)(66066001)(74316002)(99286004)(229853002)(71190400001)(71200400001)(44832011)(25786009)(5660300002)(6116002)(486006)(6246003)(476003)(6916009)(3846002)(11346002)(446003)(4326008)(86362001)(52536014)(33656002)(73956011)(6506007)(66476007)(66946007)(66556008)(66446008)(64756008)(76116006)(76176011)(7696005)(54906003)(316002)(102836004)(2906002)(8936002)(305945005)(68736007)(8676002)(81156014)(81166006)(478600001)(26005)(186003)(14454004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4846;
 H:VI1PR04MB5327.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: J6ZfiYXQEemDHuK223RWhdo6tBRF4MsNwEVinmU3LKjVDR+hY+qJoWPJ73M6zqvxWBEHSWNI+R3tRhw6MVAZDfxJJAtL8PS0bNgqHFAAxD2Ps76Wrs8tcultTp8Nap1SaoSdoYWYSCNWq9+GK5baEsAP20RQJvKkaKZwIH7n9kEputOwpUQz4JNBbXeDOKhSQTAQpl28yAnYcIc/+1Srx+xhgG22ia9F+sOogjUvdLTmgG43zH8/E51QwymS/rmYaP4HLmDYnm5M6HvhE5g9I1oI59FGkill3mbLPo60fmXDAEL2+w6YsdL1WuTTpPdntvPw/TxPBENbFQSl/fN0qI413dDq9aFQ+qHgJllmuemcvewHhGfTUGZ1V8v5jWbF/ZUYsnzYs8B3YGrDjsLo1EyCn62xbIl54feN41w36ls=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9bd2feaa-8643-4a11-da47-08d6e984799a
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2019 07:07:30.3660 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: peter.chen@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4846
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_000735_482609_7E0EAF01 
X-CRM114-Status: GOOD (  13.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.60 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "chunfeng.yun@mediatek.com" <chunfeng.yun@mediatek.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

 
> > Signed-off-by: Peter Chen <peter.chen@nxp.com>
> > ---
> >  arch/arm/boot/dts/imx7ulp.dtsi | 31 +++++++++++++++++++++++++++++++
> >  1 file changed, 31 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/imx7ulp.dtsi
> > b/arch/arm/boot/dts/imx7ulp.dtsi index fca6e50f37c8..37b058119505
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
> 
> If "fsl,imx6ul-usb" is the one that imx7ulp device is compatible with and will match in
> driver, "fsl,imx27-usb" can just be dropped.  Same comment on usbmisc and
> usbphy below.
> 

Ok, will change, thanks.

Peter

> Shawn
> 
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
> > +			compatible = "fsl,imx7ulp-usbmisc", "fsl,imx7d-usbmisc",
> > +				"fsl,imx6q-usbmisc";
> > +			#index-cells = <1>;
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
