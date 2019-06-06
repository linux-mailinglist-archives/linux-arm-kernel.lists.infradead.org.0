Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 695B436A16
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 04:38:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mIt1BD0L0mB0FuYbLLokJPsaHkbqSquD/XM8k1oVy/s=; b=L7WXaV0sNZdRMN
	RVZY4I7ZyFddsdWg6zFJtqSIGtbUVxtIr0CB1U1ME6ZYfERCrKx6YCJsppeit/oqu8BWvsSHTpi3v
	/DEVkspvjAhIn3LuEBh8ec36iR4708vq2DT0bRcusZf2+GXVBEK6OgH2O2LLjTLbTIzbtsYBiSJOQ
	dal6G0Re5//JQk1f/FJQ+MyHYOWq3jvgvBSB6Rw9OlQphESEHBnZ6E0mTrSn+AtSDNEZgopfOcOnf
	Kbkw+p9Q3LZbWpvxlNZmwfBUS8r/xKP0zoFNJAgrD07w70Ly03RuuT+KUIP0iaxg7vQNimxlt73FP
	B9zMbcxf8N/jNOFJpijw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYiIl-0001Of-0o; Thu, 06 Jun 2019 02:38:51 +0000
Received: from mail-eopbgr130077.outbound.protection.outlook.com
 ([40.107.13.77] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYiIc-0001OF-TU
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 02:38:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jEfw2XP7woddP8jkb5yiTWjUQEYtKYxoGszP/xMn0K8=;
 b=Um58YizCLjZ0MjMCRTAakRCeE0UnE9DDxUlG+G6Rxcd9tmbDD2ezaLqeEBJm2zGel0Ww3tOcdrT677/X8YEj6q81La1p2kD2XYm6BjRq0GZlWTDfdna8J4Thq6blkqkYYJLakx4W/bfKcdbLfupbbC+X4UNUeB7GFWmoDImKfPg=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3691.eurprd04.prod.outlook.com (52.134.66.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.14; Thu, 6 Jun 2019 02:38:38 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec%5]) with mapi id 15.20.1965.011; Thu, 6 Jun 2019
 02:38:38 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH] arm64: dts: imx8mm: Move gic node into soc node
Thread-Topic: [PATCH] arm64: dts: imx8mm: Move gic node into soc node
Thread-Index: AQHVGa55LUfZhzUgv0u2mUng1o8nvaaN6NYAgAAFcuA=
Date: Thu, 6 Jun 2019 02:38:38 +0000
Message-ID: <DB3PR0402MB3916D9019F65E901DC4E6BDAF5170@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190603015020.41410-1-Anson.Huang@nxp.com>
 <20190606021803.GW29853@dragon>
In-Reply-To: <20190606021803.GW29853@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8caeaf81-823d-465f-6d90-08d6ea2814b8
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3691; 
x-ms-traffictypediagnostic: DB3PR0402MB3691:
x-microsoft-antispam-prvs: <DB3PR0402MB3691523F8874F4B694BBD1CCF5170@DB3PR0402MB3691.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 00603B7EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(136003)(376002)(396003)(366004)(39860400002)(189003)(199004)(13464003)(53546011)(6506007)(102836004)(4326008)(76176011)(25786009)(33656002)(316002)(5660300002)(52536014)(74316002)(71200400001)(71190400001)(6246003)(6436002)(54906003)(73956011)(76116006)(55016002)(66946007)(7736002)(6916009)(81156014)(446003)(11346002)(476003)(305945005)(2906002)(229853002)(478600001)(86362001)(486006)(44832011)(26005)(186003)(6116002)(3846002)(7416002)(99286004)(256004)(68736007)(53936002)(14444005)(66066001)(7696005)(8676002)(81166006)(8936002)(66556008)(9686003)(64756008)(66446008)(66476007)(14454004)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3691;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: LucmTFVOC3Hkcc0lWN2hloCjeZIUJGNfzNF35pWZ1/QD0mcoQ3wAt/bMuyYxmkrzCx7seWhIWXTmq0Nm9hq9YrfspFJFOW7OHmUksX0ULN4AOO4ruUu/nIpSyQUZ9kUb2qNuIr+LvHuYU6H1GESlVesuQjXBHo0snoFTOFsBYB0AcbnGIRv2n6X+x/BLW1hVP1U3pz1qx5usBBBFBwG6INW3LhyK9rq3BEL83FXqhGX0B/7romfPwFBPkr97zqHLavPWnRzljAwR9PKjQ+oyCN2fyZ0hZcDodqgeDNNW6wVQYGszFETsR75Ty65m2Hwezafj4139Vj8eKnEuX8WgNJVlojNT5jETksaRZ47u4p1VCzybM6aKJRGM73vmIJvEq7W5vXeXbgqKXRzGBo3D5RM1+Mo5QKWzYORKD2yKQUo=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8caeaf81-823d-465f-6d90-08d6ea2814b8
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2019 02:38:38.5107 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3691
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_193842_955228_8B607A6E 
X-CRM114-Status: GOOD (  19.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.77 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Aisheng Dong <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Shawn

> -----Original Message-----
> From: Shawn Guo <shawnguo@kernel.org>
> Sent: Thursday, June 6, 2019 10:18 AM
> To: Anson Huang <anson.huang@nxp.com>
> Cc: robh+dt@kernel.org; mark.rutland@arm.com; s.hauer@pengutronix.de;
> kernel@pengutronix.de; festevam@gmail.com; Leonard Crestez
> <leonard.crestez@nxp.com>; Aisheng Dong <aisheng.dong@nxp.com>;
> viresh.kumar@linaro.org; Jacky Bai <ping.bai@nxp.com>;
> devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> kernel@vger.kernel.org; dl-linux-imx <linux-imx@nxp.com>
> Subject: Re: [PATCH] arm64: dts: imx8mm: Move gic node into soc node
> 
> On Mon, Jun 03, 2019 at 09:50:20AM +0800, Anson.Huang@nxp.com wrote:
> > From: Anson Huang <Anson.Huang@nxp.com>
> >
> > GIC is inside of SoC from architecture perspective, it should be
> > located inside of soc node in DT.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> 
> It doesn't apply to my imx/dt64 branch.  Please generate it against that
> branch for my for-next.

OK, just resent the patch based on the correct branch.

Thanks,
Anson.

> 
> Shawn
> 
> > ---
> >  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 18 +++++++++---------
> >  1 file changed, 9 insertions(+), 9 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > index dc99f45..429312e 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > @@ -169,15 +169,6 @@
> >  		clock-output-names = "clk_ext4";
> >  	};
> >
> > -	gic: interrupt-controller@38800000 {
> > -		compatible = "arm,gic-v3";
> > -		reg = <0x0 0x38800000 0 0x10000>, /* GIC Dist */
> > -		      <0x0 0x38880000 0 0xC0000>; /* GICR (RD_base +
> SGI_base) */
> > -		#interrupt-cells = <3>;
> > -		interrupt-controller;
> > -		interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
> > -	};
> > -
> >  	psci {
> >  		compatible = "arm,psci-1.0";
> >  		method = "smc";
> > @@ -739,6 +730,15 @@
> >  			dma-names = "rx-tx";
> >  			status = "disabled";
> >  		};
> > +
> > +		gic: interrupt-controller@38800000 {
> > +			compatible = "arm,gic-v3";
> > +			reg = <0x38800000 0x10000>, /* GIC Dist */
> > +			      <0x38880000 0xc0000>; /* GICR (RD_base +
> SGI_base) */
> > +			#interrupt-cells = <3>;
> > +			interrupt-controller;
> > +			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
> > +		};
> >  	};
> >
> >  	usbphynop1: usbphynop1 {
> > --
> > 2.7.4
> >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
