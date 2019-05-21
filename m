Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6070249D3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 10:09:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IVkXNecRvyx3qVYjRuric0Wubywvm4tO4mFVeQD8Cio=; b=t1CekKI+9qlEGD
	KEFWh8/G2ll+GALD13foqlDV53hDzXg0OyrepAn/PwRqF8U6bwx/JRW9ADMIrmriLT9swhKGQFNk3
	IiL6ckNU5SdwlZEyNW3OEg1WMG/rlszXwKmM3qZT132L8ODjRC9VX5L9aNKQm5jRYbka2y2yOuPEZ
	FihcS8HkHYioVGcRKA4CPK7d6Wvrm0RjHP++pDBjWGnC25+r8v5RV0GZptX+bMGo3Lj7zSOHvrlIP
	iRzj8mfv9npjAacR6iKXF+VppOoloB9I6tqDMQlXeCqgi1MxyCAh/f0Vip7GCHV+kqhJjJcl+Ltnv
	EZ0lpT3RvLBycCNmF52Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSzq4-0001Tv-SO; Tue, 21 May 2019 08:09:36 +0000
Received: from mail-eopbgr20083.outbound.protection.outlook.com ([40.107.2.83]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSzpw-0001TV-Ni
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 08:09:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DfRVySqbmJywbAD2MzEMSSYmTNe8oT41Id7MVJ84npE=;
 b=A6pFOh46J0THMIzpVLjrxizWX/y4Ws/quWRohY1hDiWbK0mVyMDaJ21zEmEaAXt1RATvSjRdbbrrIsXVcGkePTWDl1SKgapqrec4cT3ccbwZmQ57Ux71C6u6m1IS6z7Cw1/O7Rh8Hz45TMpVvrpNmpVWZtkVaOsPAui/tpThzCw=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3755.eurprd04.prod.outlook.com (52.134.71.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.17; Tue, 21 May 2019 08:09:24 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::5835:e874:bd94:fec%5]) with mapi id 15.20.1900.020; Tue, 21 May 2019
 08:09:24 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH] arm64: dts: imx8mq: Add gpio alias
Thread-Topic: [PATCH] arm64: dts: imx8mq: Add gpio alias
Thread-Index: AQHVCgXcX4QYJXCP60mxd4H1AV7MJKZ1RDsAgAAAijA=
Date: Tue, 21 May 2019 08:09:24 +0000
Message-ID: <DB3PR0402MB3916375ABA4F49AD69899C0FF5070@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1557804533-18194-1-git-send-email-Anson.Huang@nxp.com>
 <20190521080647.GB15856@dragon>
In-Reply-To: <20190521080647.GB15856@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 774c6fd9-c807-4643-f95a-08d6ddc3a331
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3755; 
x-ms-traffictypediagnostic: DB3PR0402MB3755:
x-microsoft-antispam-prvs: <DB3PR0402MB37554530BF6602D4738A0413F5070@DB3PR0402MB3755.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1850;
x-forefront-prvs: 0044C17179
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(396003)(136003)(346002)(366004)(39860400002)(189003)(199004)(13464003)(6246003)(478600001)(446003)(6916009)(44832011)(11346002)(7736002)(186003)(2906002)(102836004)(86362001)(68736007)(66066001)(305945005)(25786009)(81166006)(14454004)(4326008)(6506007)(76116006)(53546011)(53936002)(229853002)(7416002)(8936002)(66476007)(66556008)(64756008)(66446008)(73956011)(66946007)(5660300002)(256004)(52536014)(9686003)(99286004)(54906003)(6436002)(476003)(76176011)(71190400001)(71200400001)(8676002)(3846002)(33656002)(6116002)(316002)(7696005)(81156014)(26005)(74316002)(55016002)(486006)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3755;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ALIXtnMHPZVTcrNQVFAjS4/viemT7ont72Tb8aTjpm/i5Q106/Vn0opzMCjjftAjX4vbtAx+gquyK4mIOa63qA5aSERh8Q6mT90T4XpNOgsw90QAGBmPPqNL6pmyMJCvEg6uepCZkISqOTcXnF0F+v6LbkcpBme03L3RmVnHvsGg8ray2BiLKOvffEEK9pPM9tyTVbRk9oTZzD9CStRfo9fGfdkN+ZWVIKAoUwu+jzJwFrCU/ZStiunp1TQgDR7E9PCqjJbMyQFkexoNKm5iw/CpD8zrbbaDGRhcgt7KRI2rdcx7IoeLtqYpQyeetwJjwYYlvjBtgIpvpWXnC5Wv6qTN/GrLVhoemvJjclQlHshcPYhe+bZItKQwCvArj1QbNKdiCb5VuMTCZScOGEr+TI21Anr72K0WPOUYEIPPUcU=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 774c6fd9-c807-4643-f95a-08d6ddc3a331
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2019 08:09:24.5036 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3755
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_010928_778634_108C16DF 
X-CRM114-Status: GOOD (  16.71  )
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.83 listed in list.dnswl.org]
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.2.83 listed in wl.mailspike.net]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, "ccaione@baylibre.com" <ccaione@baylibre.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "angus@akkea.ca" <angus@akkea.ca>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Shawn

> -----Original Message-----
> From: Shawn Guo [mailto:shawnguo@kernel.org]
> Sent: Tuesday, May 21, 2019 4:07 PM
> To: Anson Huang <anson.huang@nxp.com>
> Cc: robh+dt@kernel.org; mark.rutland@arm.com; s.hauer@pengutronix.de;
> kernel@pengutronix.de; festevam@gmail.com; l.stach@pengutronix.de;
> Abel Vesa <abel.vesa@nxp.com>; andrew.smirnov@gmail.com;
> ccaione@baylibre.com; angus@akkea.ca; devicetree@vger.kernel.org; linux-
> arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org; dl-linux-imx
> <linux-imx@nxp.com>
> Subject: Re: [PATCH] arm64: dts: imx8mq: Add gpio alias
> 
> On Tue, May 14, 2019 at 03:33:56AM +0000, Anson Huang wrote:
> > Add i.MX8MQ GPIO alias for kernel GPIO driver usage.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> >  arch/arm64/boot/dts/freescale/imx8mq.dtsi | 5 +++++
> >  1 file changed, 5 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> > index 6d635ba..df33672 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> > @@ -30,6 +30,11 @@
> >  		spi0 = &ecspi1;
> >  		spi1 = &ecspi2;
> >  		spi2 = &ecspi3;
> > +		gpio0 = &gpio1;
> 
> Please keep the list alphabetically sorted.

OK, will send V2 to fix it.

Anson.

> 
> Shawn
> 
> > +		gpio1 = &gpio2;
> > +		gpio2 = &gpio3;
> > +		gpio3 = &gpio4;
> > +		gpio4 = &gpio5;
> >  	};
> >
> >  	ckil: clock-ckil {
> > --
> > 2.7.4
> >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
