Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5608A8DA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 23:01:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vg/HPa0Y9lmYc7mf8eIBFpNmTk/t7VdPEQQwkyqQOhU=; b=M3+Kd3sdlpdv6Z
	3W+vHlkRgx3L4UGd1bQxonRt8rMC6KlpSdK8a7cWsSal/VyiFvFVrF3wi/pPhbMYgFaZTw8pFw2AY
	o2M6dZcqRbbsqaU/TDlE2e2Y0XxIDB8t9Xp5rJBBnMWqY66Ve17FG+2ZNDaF8GNxTrmVzhFoWOPGm
	jILjGBtwjsq6aq/gOjADd06xY1ICyK3rvgenfzzhW0B8lJ6MPWABXXIBmQD3ruCn+xkAT1mic/u5A
	mOIrWU/XUSDo58dgsXuV735E6unMzPeuLwAZ6BGoTqnImc1gDLUekeBLdtjkUYcBpuQdOLLPwicvj
	rgwIvE9tjyuWxEqX0sMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxHRf-0000p1-Rx; Mon, 12 Aug 2019 21:01:36 +0000
Received: from mail-eopbgr50050.outbound.protection.outlook.com ([40.107.5.50]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxHRP-0000jK-MS
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 21:01:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M30wn+hK7jXJZFqjIRImPd9p9GNMlah3AGmR36ckMKC4IL+toTMFzjlNQCoTPMz1txEUsmAR7kD3LuL2cfdT9WpkJU+wSOJrdXICzx+8wbVwLmxIFWsBt6C2bbD1RNwc94P8JsXEzmg1QQnvf2y7Rakoa0/Ok/X0DkL5jfkeLG8SERcW/ah6G8bkPYaC6CaGsqfGxkQb8aBs7Du1no9Q+XhycQHkJsLIcGl82+3qz326cANvFjcgM4DILp5dDOHQ1VS1tbBK8kO6siGWybKN3wA3/VflKMJSfV9V+GHDmU7PmsI5yeozj3Z/S0XuiIh1c2C49G67yO0q6uecrrLghQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m5Zc1plXoUEoUZrAqh7n3UA7BB1zA7OiTRTmEIjv9ec=;
 b=Ene0UDGoQSGvsj3MZWRz6snKDDIm0IAPD/4Dudn11crhXeQiW1UAOq3/g7rIzcYZV5E3Nlfv1PsxW30cbXbARPciyO7Wk7IizT02EOshpFHq8DjzFPbkUbjwl4oU/NbQp+Mta360VQmxhHQl+oBBi3MvZXiOyTwFmlltyQY3ESJiE7ZIsJmpZfmiQj93N9N83rf1HNCpBYyGkuzxx8Fw2tcE/ta3bJe02DESeeyBGsIciMhMG03dMd27vK0PFyq8YLzGYz9ljew61xEAxCscIe0jW5BKNi+ADknypNhL2JYy/wW9Elk0zEvPVkoECs1bvmIdZQgspM7MHOTYjBfpIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m5Zc1plXoUEoUZrAqh7n3UA7BB1zA7OiTRTmEIjv9ec=;
 b=g/j7NXhTQWDlxCtZgyVVOYwbvsjD6C6x9r+Lay2JTTtr9VMzzrzgK/a9EWV2ysKZeCbnuxS+rI/pog42LYErCfe11JlHNyCEnXG8PghPPOzP41VWKqoXivj18zN84HzR2tM+OriWAeGs4tzcPEQdtWIgaH0lsUiCOf9d3JbCYVc=
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com (20.179.235.152) by
 VE1PR04MB6365.eurprd04.prod.outlook.com (10.255.118.78) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.15; Mon, 12 Aug 2019 21:01:16 +0000
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::3d61:6e52:a83c:7c59]) by VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::3d61:6e52:a83c:7c59%6]) with mapi id 15.20.2136.018; Mon, 12 Aug 2019
 21:01:16 +0000
From: Leo Li <leoyang.li@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Hui Song <hui.song_1@nxp.com>
Subject: RE: [PATCH] arm64: dts: ls1028a: fix gpio nodes
Thread-Topic: [PATCH] arm64: dts: ls1028a: fix gpio nodes
Thread-Index: AQHVS1xblpcZ3Pq6W0S1i4g4uemWo6b3ki+AgAB5MaA=
Date: Mon, 12 Aug 2019 21:01:16 +0000
Message-ID: <VE1PR04MB6687FD06F5E8DADE55F495D38FD30@VE1PR04MB6687.eurprd04.prod.outlook.com>
References: <20190805065700.7601-1-hui.song_1@nxp.com>
 <20190812134716.GF27041@X250>
In-Reply-To: <20190812134716.GF27041@X250>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leoyang.li@nxp.com; 
x-originating-ip: [64.157.242.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 292d8597-4316-4697-e572-08d71f6837cd
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VE1PR04MB6365; 
x-ms-traffictypediagnostic: VE1PR04MB6365:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB6365742E0F7A89332BC4D3298FD30@VE1PR04MB6365.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:935;
x-forefront-prvs: 012792EC17
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(136003)(346002)(39860400002)(396003)(189003)(199004)(13464003)(33656002)(81156014)(55016002)(86362001)(71190400001)(7696005)(6506007)(7736002)(9686003)(53936002)(6436002)(186003)(102836004)(52536014)(74316002)(476003)(53546011)(486006)(6246003)(8676002)(76176011)(25786009)(316002)(229853002)(110136005)(26005)(5660300002)(305945005)(4326008)(99286004)(446003)(6636002)(11346002)(54906003)(3846002)(6116002)(64756008)(71200400001)(66446008)(14454004)(14444005)(66066001)(66946007)(478600001)(76116006)(8936002)(66476007)(256004)(66556008)(81166006)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6365;
 H:VE1PR04MB6687.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: QKiiM4qg/gxSOO7lXh04gyDz1WuUoz+3JT9Tkn3P0oZUrwWY+fYen+hnfheCu10n8+yjroxqjgyW2Gc/IL9ixnBsiA6j64cQ1d0P4jJ6Q3RFvgxxb9eflBsBEyM+P1S97XZZNsy8Tah8gSr/Ht+I3x2I0XUjFIqyEYJPLxxFkgZCMhgt4D6ZQERQB6Jp/dkc2gGq45TQJM8Mqj/siRqTrDhhvdHnXOk9Ip3XfYLpo4e1j78l7oUKkNvQcLHRVXdjTJpsepuO/fqzUZDkEG5pn3IfjJLwVInDg0wkgNgqqSuVFhtCCwD1Qf4kT/NmNwHtx0VQOsKLi3T/A//OY3pYNeVrnrYjwNfQiZP/3TqhxmWxbqWxoWkS6GCzYfafOcW0ot7BoSwilyEMOoP2wBlYa/pjy+4wlcfsuoY1ONomTYc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 292d8597-4316-4697-e572-08d71f6837cd
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2019 21:01:16.8605 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: leoyang.li@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6365
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_140119_755024_DF04006D 
X-CRM114-Status: GOOD (  15.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.50 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Shawn Guo <shawnguo@kernel.org>
> Sent: Monday, August 12, 2019 8:47 AM
> To: Hui Song <hui.song_1@nxp.com>; Leo Li <leoyang.li@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>; Mark Rutland
> <mark.rutland@arm.com>; Linus Walleij <linus.walleij@linaro.org>; Bartosz
> Golaszewski <bgolaszewski@baylibre.com>; linux-arm-
> kernel@lists.infradead.org; devicetree@vger.kernel.org; linux-
> kernel@vger.kernel.org; linux-gpio@vger.kernel.org
> Subject: Re: [PATCH] arm64: dts: ls1028a: fix gpio nodes
> 
> On Mon, Aug 05, 2019 at 02:57:00PM +0800, Hui Song wrote:
> > From: Song Hui <hui.song_1@nxp.com>
> >
> > Update the nodes to include little-endian property to be consistent
> > with the hardware.
> >
> > Signed-off-by: Song Hui <hui.song_1@nxp.com>
> 
> @Leo, looks good?

Acked-by: Li Yang <leoyang.li@nxp.com>

> 
> Shawn
> 
> > ---
> >  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 9 ++++++---
> >  1 file changed, 6 insertions(+), 3 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> > b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> > index aef5b06..7ccbbfc 100644
> > --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> > @@ -277,33 +277,36 @@
> >  		};
> >
> >  		gpio1: gpio@2300000 {
> > -			compatible = "fsl,qoriq-gpio";
> > +			compatible = "fsl,ls1028a-gpio","fsl,qoriq-gpio";
> >  			reg = <0x0 0x2300000 0x0 0x10000>;
> >  			interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
> >  			gpio-controller;
> >  			#gpio-cells = <2>;
> >  			interrupt-controller;
> >  			#interrupt-cells = <2>;
> > +			little-endian;
> >  		};
> >
> >  		gpio2: gpio@2310000 {
> > -			compatible = "fsl,qoriq-gpio";
> > +			compatible = "fsl,ls1028a-gpio","fsl,qoriq-gpio";
> >  			reg = <0x0 0x2310000 0x0 0x10000>;
> >  			interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
> >  			gpio-controller;
> >  			#gpio-cells = <2>;
> >  			interrupt-controller;
> >  			#interrupt-cells = <2>;
> > +			little-endian;
> >  		};
> >
> >  		gpio3: gpio@2320000 {
> > -			compatible = "fsl,qoriq-gpio";
> > +			compatible = "fsl,ls1028a-gpio","fsl,qoriq-gpio";
> >  			reg = <0x0 0x2320000 0x0 0x10000>;
> >  			interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
> >  			gpio-controller;
> >  			#gpio-cells = <2>;
> >  			interrupt-controller;
> >  			#interrupt-cells = <2>;
> > +			little-endian;
> >  		};
> >
> >  		usb0: usb@3100000 {
> > --
> > 2.9.5
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
