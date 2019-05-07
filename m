Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A252B1576B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 03:49:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UNfiwzQQSsP3VMgaIfexa+BB7E0GBfFNgKduK/2zn1g=; b=K8H0mlof4W35/q
	qQwiKV0E51rl/I+WtDizZ+UMxiFkM9qrIP0I+CU68Hxytw6Amku4+nyQn6Yth3vZvvgpuYOOUN0XQ
	0QV/BMgLp1jIhhyp4Z/XgsUsPCv5MYmddnY2dzYaPr0PYtlNaLehORU1b9Cm0rv+sOve3Wxlpat/N
	+k7L1c6bbGFw2Vp4grVtgcGsHf9fU6yr/EVHqUw4Xh9Mz4fDVhP4COJ2I2kW7JCG/HAZWZ/Omw8Xv
	fvYrd0MI1n3WtzRRYmTUp5wvrTVGpjKXSusp+9G2jZP5IgDPdjbLfc1vnB4JPfcHNDK00y2gkukFx
	Nm5swa9BoFsGsI2nn4eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNpEW-0006Im-DR; Tue, 07 May 2019 01:49:28 +0000
Received: from mail-eopbgr60064.outbound.protection.outlook.com ([40.107.6.64]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNpEO-0006IC-Ug
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 01:49:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U7PafUwTy2rYSbdhDGMfJR1Cas7vpq1YzxgjnJUPwyQ=;
 b=BMJ+TdIt+bgBevIh8yFphv5LQpuaFN9UqkwghgIimV0N1h7ysyW82BP3tLJ9bN9sVLQ1KrfOYa6YOES/TUd8i2o2cmlApjoGaC2L8CodCxbiyej32q77LnpLIoQt0lWXRwliw/PBcmRDn4dswRmP/BrlC47duHgnRQ5rfxj+Jdc=
Received: from VI1PR04MB5327.eurprd04.prod.outlook.com (20.177.52.16) by
 VI1PR04MB5245.eurprd04.prod.outlook.com (20.177.51.210) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.10; Tue, 7 May 2019 01:49:15 +0000
Received: from VI1PR04MB5327.eurprd04.prod.outlook.com
 ([fe80::4923:8ad8:62c1:3e61]) by VI1PR04MB5327.eurprd04.prod.outlook.com
 ([fe80::4923:8ad8:62c1:3e61%5]) with mapi id 15.20.1856.012; Tue, 7 May 2019
 01:49:15 +0000
From: Peter Chen <peter.chen@nxp.com>
To: Rob Herring <robh+dt@kernel.org>
Subject: RE: [PATCH 6/7] ARM: dts: imx7ulp: add imx7ulp USBOTG1 support
Thread-Topic: [PATCH 6/7] ARM: dts: imx7ulp: add imx7ulp USBOTG1 support
Thread-Index: AQHU/W1IxN9UeWE440ehfCRd3nlpnqZWnzGAgAVFkCCAAmGngIAAoKTQ
Date: Tue, 7 May 2019 01:49:15 +0000
Message-ID: <VI1PR04MB5327BED3397BFDB39800250C8B310@VI1PR04MB5327.eurprd04.prod.outlook.com>
References: <20190428024847.5046-1-peter.chen@nxp.com>
 <20190428024847.5046-7-peter.chen@nxp.com>
 <CAL_JsqLPK8kuYTT7ekZbAzywp2kr9xKA0_X3BAqVn5hShbPM+w@mail.gmail.com>
 <VI1PR04MB5327641FD0A21BB4C93A85A58B370@VI1PR04MB5327.eurprd04.prod.outlook.com>
 <CAL_Jsq+OywH+_caxtrBJF=nMVxFeHsuL8jbLq=a6VBXWiZ0ktA@mail.gmail.com>
In-Reply-To: <CAL_Jsq+OywH+_caxtrBJF=nMVxFeHsuL8jbLq=a6VBXWiZ0ktA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peter.chen@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7b43dad2-9ed6-42ff-fd41-08d6d28e3661
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB5245; 
x-ms-traffictypediagnostic: VI1PR04MB5245:
x-microsoft-antispam-prvs: <VI1PR04MB5245FF9CE525AFCC21C0E8778B310@VI1PR04MB5245.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0030839EEE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(366004)(396003)(376002)(136003)(39860400002)(199004)(189003)(316002)(81156014)(54906003)(8936002)(478600001)(53936002)(7696005)(33656002)(6116002)(3846002)(68736007)(81166006)(5660300002)(25786009)(14454004)(229853002)(305945005)(6246003)(7736002)(52536014)(6436002)(86362001)(99286004)(486006)(66066001)(11346002)(9686003)(26005)(55016002)(76116006)(66446008)(66946007)(66556008)(64756008)(66476007)(73956011)(186003)(2906002)(476003)(6506007)(74316002)(4326008)(102836004)(256004)(44832011)(76176011)(71190400001)(71200400001)(446003)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5245;
 H:VI1PR04MB5327.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 7bI4a0PdtQ1feER6MlFFX1zFtcA02OjGVRW3u9VTisH1A9xC4q8tDCVAuN40ty74hKUv5GjzK3FgRRzq302zCKYkxhvl44CRL669I7BX7lPbglCPLz02hBFRDd/GHmevFfdx1F7LKL2ODY9oW4FkMXDghR5APOOf8mBXBVhUpfzSRJrlZVnvFLZmJ2IAsNoszfmjcLQ6idrMJj5srYJni428V108hlyXhi9Km+f81GTgZ5+ULzGWYxfliXtYp2HhaF0OHOeutYXx3SqQni045iWcE+9iU7St75EoQOPtMq0l5GAEzFi0fiYYTqZ6L2ChRHgyUmPicLqWJrTzqRK3wJjgV772Tm80FCgj9I3W3wZyy7k3hhtN2/o2SH7Lul4eDjX7Utr04Meo5mtVAHT+Z7sZjw/H9LwiChYU/cJg3O0=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b43dad2-9ed6-42ff-fd41-08d6d28e3661
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2019 01:49:15.7563 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5245
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_184920_990575_BD6395BC 
X-CRM114-Status: GOOD (  18.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.64 listed in list.dnswl.org]
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, "balbi@kernel.org" <balbi@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

 
> > > > ++++++++++++++++++++++++++++++
> > > >  1 file changed, 30 insertions(+)
> > > >
> > > > diff --git a/arch/arm/boot/dts/imx7ulp.dtsi
> > > > b/arch/arm/boot/dts/imx7ulp.dtsi index fca6e50f37c8..e2944f98eac6
> > > > 100644
> > > > --- a/arch/arm/boot/dts/imx7ulp.dtsi
> > > > +++ b/arch/arm/boot/dts/imx7ulp.dtsi
> > > > @@ -30,6 +30,7 @@
> > > >                 serial1 = &lpuart5;
> > > >                 serial2 = &lpuart6;
> > > >                 serial3 = &lpuart7;
> > > > +               usbphy0 = &usbphy1;
> > >
> > > Drop this. You shouldn't need an alias.
> > >
> >
> > It is a derived USB PHY and used on most of i.mx chipidea USB controllers.
> > At the source code, we use aligned id to know the controller number.
> >
> >         ret = of_alias_get_id(np, "usbphy");
> >         if (ret < 0)
> >                 dev_dbg(&pdev->dev, "failed to get alias id, errno %d\n", ret);
> >         mxs_phy->port_id = ret;
> 
> fsl,anatop property should probably have cell to specify this.
> 

imx7ulp doesn't have anatop part, the analog for imx7ulp is different with imx6.

> >
> > > >         };
> > > >
> > > >         cpus {
> > > > @@ -133,6 +134,35 @@
> > > >                         clock-names = "ipg", "per";
> > > >                 };
> > > >
> > > > +               usbotg1: usb@40330000 {
> > > > +                       compatible = "fsl,imx7ulp-usb", "fsl,imx6ul-usb",
> > > > +                               "fsl,imx27-usb";
> > > > +                       reg = <0x40330000 0x200>;
> > > > +                       interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
> > > > +                       clocks = <&pcc2 IMX7ULP_CLK_USB0>;
> > > > +                       fsl,usbphy = <&usbphy1>;
> > >
> > > Don't use this for new users. Use the phy binding instead.
> > >
> >
> > It is not a new user, the USB PHY used at imx7ulp is the same with imx6's.
> 
> New SoC is a new user. The chipidea core already supports using 'phys'
> so you should be able to just use the common code.
> 

Thanks, will use below, and change the imx glue layer code which "fsl,usbphy" phandle is mandatory now.

phys = <&usbphy1>; /* for usbotg1 */
and
#phy-cells = <0>;  /* for usbphy1 */

Peter
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
