Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C92830DE5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 14:13:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pi1rG33TueuXl+8+B9kWATd+ycASKxlmpOl6IKB0/J0=; b=ab2hAYvDBmZn+A
	KouVQcq2zE5z74P/zPdD4P58kit7Fow1XAECgsza32YOSM4KYWt0pIpyjppYKVt6oJpjeUPT2FdvX
	ckx/+hLZ4h+OeBl0jv5/+HhcrZPAMYhZNKeooMcApDaTRrpZIv0txEu+qQN0XpxIIVY6OPzmc3IbZ
	4KoiidnuYhIONxuSs9wPmBMtc2qoEyI0E5UrcoJOZVekuFbR20gzM6x1AMUf6j8bwTe+FHW3oh1mK
	K3C2ETP8zNJhpbgykx4ZGjYMUlSIfeTSFxmjWyejcJ6vKGdWG2Xml+mOSBWXEv6CAHbBKIIh8p30h
	qh4hJVwwV4x5gFbFQ/1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWgPN-0006nX-6z; Fri, 31 May 2019 12:13:17 +0000
Received: from mail-eopbgr70043.outbound.protection.outlook.com ([40.107.7.43]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWgPF-0006mb-3j
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 12:13:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tSVZFnz5EofKxjDO51pqdERUDg0mztW6Np+chrnU8WI=;
 b=MUGHXYMeybuB/bqGoe8dDT/hRUdtc4H9wcJd+RrhmiHVpvQL48i/MSZeNj9k3FRESkK0FxzmdEB2ZXaPIAOFbbRHQaT1ET1MRw2I2c9QuUJHVKM/5Aj1OqhdJ0ZEt0Gk6xOAaF1Ub8mrwUa8XqY9BK+n6kkCUm84uuGuMfH6mV8=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3836.eurprd04.prod.outlook.com (52.134.71.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.17; Fri, 31 May 2019 12:13:02 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec%5]) with mapi id 15.20.1943.018; Fri, 31 May 2019
 12:13:02 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Fabio Estevam <festevam@gmail.com>
Subject: RE: [PATCH 2/3] arm64: dts: freescale: Add i.MX8MN dtsi support
Thread-Topic: [PATCH 2/3] arm64: dts: freescale: Add i.MX8MN dtsi support
Thread-Index: AQHVFsxub3h/I8/ZmEeLiTXReak9WqaFHYKAgAAIYOA=
Date: Fri, 31 May 2019 12:13:02 +0000
Message-ID: <DB3PR0402MB3916139B49D9EF7E44E33911F5190@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190530094706.865-1-Anson.Huang@nxp.com>
 <20190530094706.865-2-Anson.Huang@nxp.com>
 <CAOMZO5D1B1tKs8eu_a8hXs193+TukHAYHiCEyk5g63p1S-cnbg@mail.gmail.com>
In-Reply-To: <CAOMZO5D1B1tKs8eu_a8hXs193+TukHAYHiCEyk5g63p1S-cnbg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 56a1de6b-3714-4bd0-b86c-08d6e5c15431
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3836; 
x-ms-traffictypediagnostic: DB3PR0402MB3836:
x-microsoft-antispam-prvs: <DB3PR0402MB3836F93AA410562FFF848736F5190@DB3PR0402MB3836.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 00540983E2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(136003)(366004)(39860400002)(396003)(346002)(189003)(199004)(13464003)(8936002)(44832011)(71190400001)(486006)(305945005)(81156014)(66066001)(229853002)(478600001)(9686003)(86362001)(55016002)(71200400001)(7736002)(52536014)(6436002)(53936002)(2906002)(8676002)(5660300002)(33656002)(7416002)(316002)(6916009)(476003)(73956011)(26005)(256004)(76116006)(99286004)(1411001)(25786009)(54906003)(3846002)(6116002)(4326008)(102836004)(53546011)(66446008)(74316002)(6506007)(6246003)(66476007)(7696005)(76176011)(66946007)(68736007)(11346002)(81166006)(66556008)(446003)(186003)(64756008)(14454004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3836;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: yDyvQeX3GAMW6i/RpXz/NW1iOLdvQjaiom/2hfnmF+HUeT71ur7qrLNlRoJiDD0TagvUtpKN5Vjr5w2+2gHEDEc3BveUjyz+48SEreDLXEg35d7x3UzUKimaPCt+EmyeJz6MhSRFmLelNrHXmxYGmcE9D9P+8MdcKLhzqyciX/zPNBcMj2PPdA6oyT6+Wbw9865TTLDml40/71UTUvOe183SV6doNmVYtuxiAAHvhn59TYHtNleU16fus3gHrXecHLl1uqvb0DeohRyJklRwmkmutea+XmqROSIFOXK4rlmV5WWROiEQG7D55DV+EtCjG9nIy072ZRdMCdiEg8CHCgCEkv7Ad9dwzb6KVcyxJuCTnUCMnSu7a9qzFTkXAV967NhnMf9nsnq42sad6ztCd2U5SEPk9f590iMwzCc6at8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 56a1de6b-3714-4bd0-b86c-08d6e5c15431
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 May 2019 12:13:02.2258 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3836
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_051309_244114_029409EF 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.43 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, "open list:OPEN FIRMWARE AND
 FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Andrey Smirnov <andrew.smirnov@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Bruno Thomsen <bruno.thomsen@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Leo Li <leoyang.li@nxp.com>,
 Vabhav Sharma <vabhav.sharma@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Bhaskar Upadhaya <bhaskar.upadhaya@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Pramod Kumar <pramod.kumar_1@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Pankaj Bansal <pankaj.bansal@nxp.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM
 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Fabio

> -----Original Message-----
> From: Fabio Estevam <festevam@gmail.com>
> Sent: Friday, May 31, 2019 7:40 PM
> To: Anson Huang <anson.huang@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>; Mark Rutland
> <mark.rutland@arm.com>; Shawn Guo <shawnguo@kernel.org>; Sascha
> Hauer <s.hauer@pengutronix.de>; Sascha Hauer <kernel@pengutronix.de>;
> Andrey Smirnov <andrew.smirnov@gmail.com>; Manivannan Sadhasivam
> <manivannan.sadhasivam@linaro.org>; Bruno Thomsen
> <bruno.thomsen@gmail.com>; Aisheng Dong <aisheng.dong@nxp.com>;
> Jacky Bai <ping.bai@nxp.com>; Leo Li <leoyang.li@nxp.com>; Lucas Stach
> <l.stach@pengutronix.de>; Pankaj Bansal <pankaj.bansal@nxp.com>;
> Bhaskar Upadhaya <bhaskar.upadhaya@nxp.com>; Pramod Kumar
> <pramod.kumar_1@nxp.com>; Vabhav Sharma <vabhav.sharma@nxp.com>;
> Leonard Crestez <leonard.crestez@nxp.com>; open list:OPEN FIRMWARE
> AND FLATTENED DEVICE TREE BINDINGS <devicetree@vger.kernel.org>;
> linux-kernel <linux-kernel@vger.kernel.org>; moderated list:ARM/FREESCALE
> IMX / MXC ARM ARCHITECTURE <linux-arm-kernel@lists.infradead.org>; dl-
> linux-imx <linux-imx@nxp.com>
> Subject: Re: [PATCH 2/3] arm64: dts: freescale: Add i.MX8MN dtsi support
> 
> On Thu, May 30, 2019 at 6:45 AM <Anson.Huang@nxp.com> wrote:
> 
> > +                       gpio1: gpio@30200000 {
> > +                               compatible = "fsl,imx8mn-gpio", "fsl,imx35-gpio";
> > +                               reg = <0x30200000 0x10000>;
> > +                               interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>,
> > +                                            <GIC_SPI 65
> > + IRQ_TYPE_LEVEL_HIGH>;
> 
> No GPIO clocks entries?

Just noticed this, the internal bring-up branch's clock driver does NOT have it,
I will add them in V2, thanks for pointing out this. 

> 
> > +                       usbphynop1: usbphynop1 {
> > +                               compatible = "usb-nop-xceiv";
> > +                               clocks = <&clk IMX8MN_CLK_USB_PHY_REF>;
> > +                               assigned-clocks = <&clk IMX8MN_CLK_USB_PHY_REF>;
> > +                               assigned-clock-parents = <&clk
> IMX8MN_SYS_PLL1_100M>;
> > +                               clock-names = "main_clk";
> > +                       };
> 
>  usbphynop1 does not have any registers associated, so it should be placed
> outside the soc.
> 
> Building with W=1 should warn you about that.
> 

OK, I will move them to outside of soc.

> > +                       usbphynop2: usbphynop2 {
> > +                               compatible = "usb-nop-xceiv";
> > +                               clocks = <&clk IMX8MN_CLK_USB_PHY_REF>;
> > +                               assigned-clocks = <&clk IMX8MN_CLK_USB_PHY_REF>;
> > +                               assigned-clock-parents = <&clk
> IMX8MN_SYS_PLL1_100M>;
> > +                               clock-names = "main_clk";
> > +                       };
> > +
> 
> Ditto

OK, I will move them to outside of soc.

Thanks,
Anson.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
