Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A949413CE9
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 May 2019 05:13:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2nEf0Hjjsq4afgKKr+HezYi6c2fM9xxArH/aVfNxLSc=; b=tCyG69Goo2wdQr
	+tZoSQcBrVDcLhxi3l1Q6XjoJWQ1pbt3uxpXOPcVXmUcHxtgGR4QBdvyvbpm/T/+2ZoxMTW3WNhWH
	nSDncoRC3LtY+2LlHZ6jhsI2pcxN+k1tkvcXLxbcceM+YbRuNX2RR59DLA1psSx3hsAnh7Qkdl3He
	+oDHjWsRKZEtz6HMrtrQLpWDfgREq7LnzXXpo2O6RtN2n/Evkj4RfqVa6rCYZ3HUQPRIP20+r0Fr/
	P8USltasWUe1v5TUK0NDiywWa9WC7SY2NfqRmutTL2KBCrp8fK0rsik1KBMtSDNMJ85CNJG/vvFr4
	qK1M2S4m5aFbVBr7cwNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hN7b4-0000ZG-RK; Sun, 05 May 2019 03:13:50 +0000
Received: from mail-eopbgr70074.outbound.protection.outlook.com ([40.107.7.74]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hN7ap-0000Yg-HG
 for linux-arm-kernel@lists.infradead.org; Sun, 05 May 2019 03:13:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SLm75CjcxtPHC0057FuuGs5+ELOdx8i9imGQLffERPM=;
 b=Sy86OLZj/agLo05W6LfqH8bXfmDaXYXeRzxyAfJWghx6xNn1M6mbr9CFnKIQJsVgwXp4L1A8ZnScfpZOk5i7tCH69ENkjc2VAsFbi0bEDWjcep6bLVPN2DAF5A7gXaHcELgn5CD2YxWNwtS+Vevg7apsHJMCWwLsD5f2J8alc9w=
Received: from VI1PR04MB5327.eurprd04.prod.outlook.com (20.177.52.16) by
 VI1PR04MB5037.eurprd04.prod.outlook.com (20.177.50.94) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Sun, 5 May 2019 03:13:20 +0000
Received: from VI1PR04MB5327.eurprd04.prod.outlook.com
 ([fe80::4923:8ad8:62c1:3e61]) by VI1PR04MB5327.eurprd04.prod.outlook.com
 ([fe80::4923:8ad8:62c1:3e61%5]) with mapi id 15.20.1856.012; Sun, 5 May 2019
 03:13:20 +0000
From: Peter Chen <peter.chen@nxp.com>
To: Rob Herring <robh+dt@kernel.org>
Subject: RE: [PATCH 6/7] ARM: dts: imx7ulp: add imx7ulp USBOTG1 support
Thread-Topic: [PATCH 6/7] ARM: dts: imx7ulp: add imx7ulp USBOTG1 support
Thread-Index: AQHU/W1IxN9UeWE440ehfCRd3nlpnqZWnzGAgAVFkCA=
Date: Sun, 5 May 2019 03:13:20 +0000
Message-ID: <VI1PR04MB5327641FD0A21BB4C93A85A58B370@VI1PR04MB5327.eurprd04.prod.outlook.com>
References: <20190428024847.5046-1-peter.chen@nxp.com>
 <20190428024847.5046-7-peter.chen@nxp.com>
 <CAL_JsqLPK8kuYTT7ekZbAzywp2kr9xKA0_X3BAqVn5hShbPM+w@mail.gmail.com>
In-Reply-To: <CAL_JsqLPK8kuYTT7ekZbAzywp2kr9xKA0_X3BAqVn5hShbPM+w@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peter.chen@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2ced1b11-a6aa-4a21-e99a-08d6d107a076
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB5037; 
x-ms-traffictypediagnostic: VI1PR04MB5037:
x-microsoft-antispam-prvs: <VI1PR04MB50376D48D7EC3748FE3C4A828B370@VI1PR04MB5037.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 00286C0CA6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(136003)(346002)(366004)(376002)(39860400002)(189003)(199004)(68736007)(33656002)(7736002)(6436002)(54906003)(6506007)(55016002)(99286004)(3846002)(5660300002)(6116002)(7696005)(76176011)(9686003)(44832011)(26005)(186003)(305945005)(8936002)(478600001)(446003)(25786009)(4326008)(486006)(74316002)(14454004)(11346002)(476003)(256004)(86362001)(14444005)(316002)(229853002)(71190400001)(71200400001)(53936002)(81166006)(52536014)(81156014)(8676002)(66066001)(6246003)(102836004)(66446008)(76116006)(64756008)(66556008)(66476007)(66946007)(73956011)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5037;
 H:VI1PR04MB5327.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: djhTRspOdFO+Vsh+OphOWWGL0N1TU4gfoAgksyxeh+k8ExSCiWcC4gEieV25+8E5HfdYIrEtOxaPWnNyOt/9BrEzsFzGqU6DBHB3SbpKMZo4UOiVYGOGuJX/0LOmwvbuiH3IPdw3wbjVm7yfdmm0R/UA/oxzII55ikDPiCAt0sHpn2I5CVQFoKjKNY5XtTNahrpjKKgXf+FOUHedlov5wQ8kHyevzwTtdwQZJktfs6O4IzM8OldTXxmvUPqu7eYdonZqI9Dyxx59jHcT8XtfSuDzAY98Ihld6PjzIGJyGtNxAnXJqVEPBsZq+RFOJcaJC7HDBmNL+GERnvkAVFPXIWrFkNE7fRrd6YBrL6jB2NSHBI//JzAN/7teM3W9/Un+xBWZ3FY5MozdZh/EToqUTG+hjLSLroCuzKgbmBqA1/w=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ced1b11-a6aa-4a21-e99a-08d6d107a076
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2019 03:13:20.4025 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5037
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_201335_572485_3D9C6150 
X-CRM114-Status: GOOD (  14.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

 
> > ---
> >  arch/arm/boot/dts/imx7ulp.dtsi | 30 ++++++++++++++++++++++++++++++
> >  1 file changed, 30 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/imx7ulp.dtsi
> > b/arch/arm/boot/dts/imx7ulp.dtsi index fca6e50f37c8..e2944f98eac6
> > 100644
> > --- a/arch/arm/boot/dts/imx7ulp.dtsi
> > +++ b/arch/arm/boot/dts/imx7ulp.dtsi
> > @@ -30,6 +30,7 @@
> >                 serial1 = &lpuart5;
> >                 serial2 = &lpuart6;
> >                 serial3 = &lpuart7;
> > +               usbphy0 = &usbphy1;
> 
> Drop this. You shouldn't need an alias.
> 

It is a derived USB PHY and used on most of i.mx chipidea USB controllers.
At the source code, we use aligned id to know the controller number.

        ret = of_alias_get_id(np, "usbphy");
        if (ret < 0)
                dev_dbg(&pdev->dev, "failed to get alias id, errno %d\n", ret);
        mxs_phy->port_id = ret;

> >         };
> >
> >         cpus {
> > @@ -133,6 +134,35 @@
> >                         clock-names = "ipg", "per";
> >                 };
> >
> > +               usbotg1: usb@40330000 {
> > +                       compatible = "fsl,imx7ulp-usb", "fsl,imx6ul-usb",
> > +                               "fsl,imx27-usb";
> > +                       reg = <0x40330000 0x200>;
> > +                       interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
> > +                       clocks = <&pcc2 IMX7ULP_CLK_USB0>;
> > +                       fsl,usbphy = <&usbphy1>;
> 
> Don't use this for new users. Use the phy binding instead.
> 

It is not a new user, the USB PHY used at imx7ulp is the same with imx6's.

Thanks.

Peter

> > +                       fsl,usbmisc = <&usbmisc1 0>;
> > +                       ahb-burst-config = <0x0>;
> > +                       tx-burst-size-dword = <0x8>;
> > +                       rx-burst-size-dword = <0x8>;
> > +                       status = "disabled";
> > +               };
> > +
> > +               usbmisc1: usbmisc@40330200 {
> > +                       #index-cells = <1>;
> > +                       compatible = "fsl,imx7ulp-usbmisc", "fsl,imx7d-usbmisc",
> > +                               "fsl,imx6q-usbmisc";
> > +                       reg = <0x40330200 0x200>;
> > +               };
> > +
> > +               usbphy1: usbphy@0x40350000 {
> > +                       compatible = "fsl,imx7ulp-usbphy",
> > +                               "fsl,imx6ul-usbphy", "fsl,imx23-usbphy";
> > +                       reg = <0x40350000 0x1000>;
> > +                       interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
> > +                       clocks = <&pcc2 IMX7ULP_CLK_USB_PHY>;
> > +               };
> > +
> >                 usdhc0: mmc@40370000 {
> >                         compatible = "fsl,imx7ulp-usdhc", "fsl,imx6sx-usdhc";
> >                         reg = <0x40370000 0x10000>;
> > --
> > 2.14.1
> >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
