Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86E3D47784
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 03:14:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HaeOi4PMuG0ctQMCfz7hvuZo58FTV65tUMsdSFLxBdc=; b=a34LVE5Gf2/i37
	MaDweFvb0Mawb1dbm5zG8oTTGLFIek91a+5TX6ftRFLchzBbxgQcHUkmgTIn1XXNuiLz0SBkOvCwp
	NjP+n7Rh46aKzOAjibaz7TnOMzZFqnk/tedsyfNKYn8RGeJqXx8PmW+dyA7dtYf+PnbPqQhtrcBOw
	MOi+a2r9NOohhbiDwko+G9UnooCbr1pdEF0EBUR2j4JqCf79dlx3PLCDyvUqR5TkVOrqEzUm+WlLc
	RUvijjg1CRUgwbNDqQd5mxNzMeFxyHWO3HcJ4dl38J1zXbsAO+R2avUQtTlqf8pGsi1IKKHfIobYW
	F9Is9VUt0/OioArsqJBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcgDt-0007bP-9G; Mon, 17 Jun 2019 01:14:13 +0000
Received: from mail-eopbgr140071.outbound.protection.outlook.com
 ([40.107.14.71] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcgDh-0007aa-UF
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 01:14:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tKu/5AO3LYlUOafsJvWox9oW2htgTMMYAxeUYPHktgY=;
 b=l7MxlT8wQCPgXiFdoFIimqzOfW/zxIBy4m73oD7o/OhqoE4Nnl8/qqXfTtLfuTcTKxF9flnnh67oU2n65hhhAvdF10hR+BH/aPbHZm6cOsNnD+rVZ/JtkWJJxmoeyilmF1n1wUmxknH/fTFBTWuxKN+a7FX+vet5n1MTBbE1xhU=
Received: from VI1PR04MB5327.eurprd04.prod.outlook.com (20.177.52.16) by
 VI1PR04MB4736.eurprd04.prod.outlook.com (20.177.48.205) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.13; Mon, 17 Jun 2019 01:13:53 +0000
Received: from VI1PR04MB5327.eurprd04.prod.outlook.com
 ([fe80::c1bf:7842:6630:b87a]) by VI1PR04MB5327.eurprd04.prod.outlook.com
 ([fe80::c1bf:7842:6630:b87a%7]) with mapi id 15.20.1987.014; Mon, 17 Jun 2019
 01:13:53 +0000
From: Peter Chen <peter.chen@nxp.com>
To: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>, "balbi@kernel.org"
 <balbi@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>
Subject: RE: [PATCH v4 6/8] ARM: dts: imx7ulp: add imx7ulp USBOTG1 support
Thread-Topic: [PATCH v4 6/8] ARM: dts: imx7ulp: add imx7ulp USBOTG1 support
Thread-Index: AQHVIpRSNr6mYKZVAEKkjfl1njA6J6acbVKAgAKdzIA=
Date: Mon, 17 Jun 2019 01:13:52 +0000
Message-ID: <VI1PR04MB5327B9EF844F9C7505D337298BEB0@VI1PR04MB5327.eurprd04.prod.outlook.com>
References: <20190614093544.11730-1-peter.chen@nxp.com>
 <20190614093544.11730-7-peter.chen@nxp.com>
 <0dbf01f9-7c5c-ce0b-4feb-378c9147f15a@cogentembedded.com>
In-Reply-To: <0dbf01f9-7c5c-ce0b-4feb-378c9147f15a@cogentembedded.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peter.chen@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2ccf280b-8dc0-4c49-0bfc-08d6f2c11011
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB4736; 
x-ms-traffictypediagnostic: VI1PR04MB4736:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <VI1PR04MB4736E098631B8C1C481902C88BEB0@VI1PR04MB4736.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0071BFA85B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(366004)(346002)(376002)(396003)(189003)(199004)(9686003)(966005)(86362001)(186003)(256004)(26005)(14454004)(305945005)(33656002)(99286004)(2201001)(8676002)(229853002)(7736002)(74316002)(66066001)(4744005)(52536014)(478600001)(71200400001)(71190400001)(81156014)(81166006)(5660300002)(2501003)(8936002)(76176011)(6506007)(476003)(66446008)(64756008)(66556008)(66476007)(4326008)(7696005)(2906002)(68736007)(44832011)(486006)(446003)(11346002)(3846002)(6116002)(73956011)(6306002)(110136005)(54906003)(6246003)(76116006)(66946007)(6436002)(316002)(55016002)(25786009)(53936002)(102836004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4736;
 H:VI1PR04MB5327.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: x+LAx2e/ycMS1MKCzNVnmLvs2Fa2XocWmf36F4pbK1Y9747xTRdei3QWfNQfbKjmAjo2961iCDJ6Gv2BipJzLtgB3+C9tlY5khrlkAVwp9eMVSFuM9qfNCJ57HBuNPkNCNqoYopSZ949OYJKBJeSfPbzhU5+1UOEnLSq7Ipw3+SXgJcufMYdMjrP25v7S82+h2mgv6FDJ1V71mm6vnwPryPc9Sp+Y72C29r+3/F1OM9xieS6r7IEGUxh00/Wpx5advpvxfWH5hOjQnIFkvJm9LBTA5e5w6oS6xavjp/75rUfo0FozVdRRpHRi12Dw/8StAv2SWwtQWLmJHD4lQgWWXsGjhISxDTPOpxvqnPWu/83XzQXLVxiOLhK4RaiZ1kfnfehtLAIzhGGMh4hN12NZYVmwW39oKMJu58yMrTjG2c=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ccf280b-8dc0-4c49-0bfc-08d6f2c11011
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2019 01:13:53.0477 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: peter.chen@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4736
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_181402_172013_41E90701 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.71 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

 
> >
> > Signed-off-by: Peter Chen <peter.chen@nxp.com>
> > ---
> >   arch/arm/boot/dts/imx7ulp.dtsi | 28 ++++++++++++++++++++++++++++
> >   1 file changed, 28 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/imx7ulp.dtsi
> > b/arch/arm/boot/dts/imx7ulp.dtsi index fca6e50f37c8..5115e47715c3
> > 100644
> > --- a/arch/arm/boot/dts/imx7ulp.dtsi
> > +++ b/arch/arm/boot/dts/imx7ulp.dtsi
> > @@ -30,6 +30,7 @@
> >   		serial1 = &lpuart5;
> >   		serial2 = &lpuart6;
> >   		serial3 = &lpuart7;
> > +		usbphy0 = &usbphy1;
> 
>     Is that really needed?
> 

Yes, since the driver code uses aligned id, and the controller number is from 0 at the code.
I commented it here: [1]

> [...]
> > @@ -133,6 +134,33 @@
> [...]
> > +		usbphy1: usbphy@0x40350000 {
> 
>     Name it "usb-phy@40350000" please.
> 

Would you please list binding doc for your suggestion?

Thanks,
Peter

[1] https://patchwork.kernel.org/patch/10920599/
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
