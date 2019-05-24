Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54FF12908B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 07:52:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ekY5hw4AZmoJR+xyaXW9TnU9+WKTZ3L6A1XyABAImBI=; b=FMheNLLS+pLboT
	HD7Bg3CyHuBo97ULXbTDEaueI28FUmgYMcq+shYf8p5SC86bb2O78OQ0eIef2Qy5bJA+c8KsUtJPS
	+fTNGk1+EbTM5Uk4S7U7z4f1XnaGrOhysDgPLJ+tmA2wqC8i0USg/w+gLn3gO023+UCPwXParIeCK
	7vyL4UyMydEKTQrk03QUrFp6mCBB2ACafVPmpT/fTUtJ9US1lelw4TYRYHG9suGnSnTc/miBrvO/Z
	W1OHMaMTXecbiSzQIFu5y1HqDX95qYS87pHDvgTYOSnLsLkMwt3nJbYAnuTSIMmyfYS1Wi704moSD
	cGQUiVJlEEYkpVQsYrTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU38D-0004uh-5Z; Fri, 24 May 2019 05:52:41 +0000
Received: from mail-eopbgr00059.outbound.protection.outlook.com ([40.107.0.59]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU380-0004mN-Pu
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 05:52:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eKwEL0hsIp12CnwV2oHYus+JsvYqct60cA6cWG8I7AY=;
 b=ZR073CzpG6/dmkwaQ1/vCkOOLBPW/0S+1H84bIjQ65jR5+4MRw7DHI9d1/uEsSlgBcnfYE/XcxLVlSqUIYJloas+sFBYaR6oeiEvAPWJmjMc4aRmZuqq19jmZ9YrIk+Bn0iQKqFWAvlVhDNncCJozAGjdb+AA6/CDvVP0DzTFj0=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3721.eurprd04.prod.outlook.com (52.134.67.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.16; Fri, 24 May 2019 05:52:21 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec%5]) with mapi id 15.20.1922.017; Fri, 24 May 2019
 05:52:21 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH 3/3] arm64: dts: imx8mq: add clock for SNVS RTC node
Thread-Topic: [PATCH 3/3] arm64: dts: imx8mq: add clock for SNVS RTC node
Thread-Index: AQHVCrrcUP74CkLHLE+NNE1EMv+PBqZ38P8AgAHi6yA=
Date: Fri, 24 May 2019 05:52:21 +0000
Message-ID: <DB3PR0402MB391655657A8BE5E812F01C8FF5020@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1557882259-3353-1-git-send-email-Anson.Huang@nxp.com>
 <1557882259-3353-3-git-send-email-Anson.Huang@nxp.com>
 <20190523010243.GD16359@dragon>
In-Reply-To: <20190523010243.GD16359@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: baa9a513-5da4-45ac-0c7f-08d6e00bfced
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3721; 
x-ms-traffictypediagnostic: DB3PR0402MB3721:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <DB3PR0402MB3721E06CBBF74329AE5F7860F5020@DB3PR0402MB3721.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:483;
x-forefront-prvs: 0047BC5ADE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(396003)(346002)(39860400002)(366004)(136003)(13464003)(199004)(189003)(6436002)(76116006)(8676002)(6306002)(44832011)(73956011)(55016002)(68736007)(486006)(7736002)(9686003)(305945005)(7416002)(476003)(33656002)(74316002)(25786009)(81166006)(81156014)(2906002)(8936002)(14454004)(66476007)(446003)(66446008)(64756008)(66556008)(256004)(52536014)(54906003)(71190400001)(71200400001)(66066001)(66946007)(316002)(26005)(4326008)(53546011)(478600001)(6506007)(86362001)(102836004)(966005)(3846002)(6916009)(99286004)(229853002)(11346002)(7696005)(53936002)(6116002)(5660300002)(6246003)(186003)(76176011)(32563001)(299355004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3721;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 1Hl5vOWHTPitA7aKByeNvRap739atBwDilrfWyJzQluuznZoYCmY96DgI+fep+9ZVkW5OWAIS7yyiBBWqV72t3qBBAFGQsud/oYNDJVUxm6VyMBW/MHUbx2FauREX9N5DJ/QTOVTA+Gkurwx9NTRNI6rvQQERWHtMmnuIXFfLBBz/qPF+1sr4CbRWVsnlFTgKDwXYSUVTw6ocbaxxzFTlTYrN7nd+4DzC6xOYZG0RgA5bCKfKm9zS/rt9Jvm/2ceRcZ9NY5LIzQsSnUXYKX9IpcP2GRsotFv5tBsd9J/BiJSItmK6YHqYC0SKCyp7jDhVzmSd+k8NppAf0GQeEbkI/MkWCdbBJsBSgIOHryjyquy927FjK97gzM2R7Dhs6seNefyTUtJYRQqQmO7X4C2B1kNZwiGfdhjrzb4kB2Gqdc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: baa9a513-5da4-45ac-0c7f-08d6e00bfced
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 May 2019 05:52:21.0900 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3721
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_225228_958402_37AD3559 
X-CRM114-Status: GOOD (  17.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.59 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "agx@sigxcpu.org" <agx@sigxcpu.org>, Abel Vesa <abel.vesa@nxp.com>,
 "ccaione@baylibre.com" <ccaione@baylibre.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "angus@akkea.ca" <angus@akkea.ca>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Shawn

> -----Original Message-----
> From: Shawn Guo [mailto:shawnguo@kernel.org]
> Sent: Thursday, May 23, 2019 9:03 AM
> To: Anson Huang <anson.huang@nxp.com>
> Cc: robh+dt@kernel.org; mark.rutland@arm.com; s.hauer@pengutronix.de;
> kernel@pengutronix.de; festevam@gmail.com; mturquette@baylibre.com;
> sboyd@kernel.org; l.stach@pengutronix.de; Abel Vesa
> <abel.vesa@nxp.com>; andrew.smirnov@gmail.com; ccaione@baylibre.com;
> angus@akkea.ca; agx@sigxcpu.org; devicetree@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org; linux-
> clk@vger.kernel.org; dl-linux-imx <linux-imx@nxp.com>
> Subject: Re: [PATCH 3/3] arm64: dts: imx8mq: add clock for SNVS RTC node
> 
> On Wed, May 15, 2019 at 01:09:36AM +0000, Anson Huang wrote:
> > i.MX8MQ has clock gate for SNVS module, add clock info to SNVS RTC
> > node for clock management.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> 
> This one still has problem with encoding and thus cannot be applied.
> Here is what I get, and there is '=20' in the patch content.

We switch to another server which has no such issue, I resent the patch,
Please pick up this one, sorry for the inconvenience.

https://patchwork.kernel.org/patch/10959097/

thanks,
Anson.

> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> b/arch/arm64/boot/dt= s/freescale/imx8mq.dtsi index e5f3133..b706de8
> 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> @@ -438,6 +438,8 @@
>                                         offset =3D <0x34>;
>                                         interrupts =3D <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>,
>                                                 <GIC_SPI 20 IRQ_TYPE_LEVEL_HIGH>;
> +                                       clocks =3D <&clk IMX8MQ_CLK_SNVS_ROOT>;
> +                                       clock-names =3D "snvs-rtc";
>                                 };
>                         };
> =20
> --=20
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
