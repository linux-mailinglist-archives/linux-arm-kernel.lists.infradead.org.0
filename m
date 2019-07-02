Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A7A05C9CC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 09:11:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6eY2unxD4HgmqqGF+HfO17jFtRTu426gNHKJfJe7IEo=; b=f85BYBwsDjLxZD
	X4ehoffa9lRS2uOU3aBj0SrHh0T4jW6a+y+4MLOMEzMqEeyLlDx2hV0VK2ofEYSyzsvMR7Rw+Jasl
	V3OgwMm2ZkLds85aIprhOmjjxS5l0jaJPg7n59VaqEkGADSu3R4WDR5P5sNJq4OTA2cXLr5Mv+xif
	feM18j90BxJfgJlhJ7GtukSQU6lG3FQ4GZojzrzUCZtH+NYaP2y5oz3UTcPbl7pC4dJfNcvxnW2Dx
	F/XbWmPMWnZYsMEzCBKaCn+v50GOGFj3EUxhY9vlABr0HKJAeC+UInwnJ2gzM6OYnUMGryjkVajXw
	7XTk8EyymsH7edIY/tAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiCwn-0004fc-JH; Tue, 02 Jul 2019 07:11:26 +0000
Received: from mail-eopbgr40084.outbound.protection.outlook.com ([40.107.4.84]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiCwP-0004ex-Az
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 07:11:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ml8b3bmleiJ+EnnNbsC/cfZEUZOZ5DfDOhuK5hwN9zM=;
 b=TqJ+1FtaPs4svkf9KHdXrh6I8tNfzC5TnaXXznLb/qDMh9qddsD9vpyQyZrnP9p5Si24xvQqSQ1bfSibyCi6GD6NufjpNnF2qmbX5LslPk59W7CiNkkMZ1xU1O5SMRdAurjgXZy6PHr8ZxWTtOWITWPkSNwbfS8cLbJmgeQGXLE=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB4659.eurprd04.prod.outlook.com (52.135.144.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Tue, 2 Jul 2019 07:10:55 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::a126:d121:200:367]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::a126:d121:200:367%7]) with mapi id 15.20.2032.019; Tue, 2 Jul 2019
 07:10:55 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH 1/2] arm64: dts: imx8mq: Add gpio-ranges property
Thread-Topic: [PATCH 1/2] arm64: dts: imx8mq: Add gpio-ranges property
Thread-Index: AQHVMHjq3v4Y93P/8kSdLqwCVV5mEqa26aEA
Date: Tue, 2 Jul 2019 07:10:55 +0000
Message-ID: <20190702071054.t7v4fis436klmgdv@fsr-ub1664-175>
References: <20190702014400.33554-1-Anson.Huang@nxp.com>
In-Reply-To: <20190702014400.33554-1-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e9c79e1b-52b7-457e-c958-08d6febc6cca
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4659; 
x-ms-traffictypediagnostic: AM0PR04MB4659:
x-microsoft-antispam-prvs: <AM0PR04MB4659EA7D8730C11BD0287DF7F6F80@AM0PR04MB4659.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:291;
x-forefront-prvs: 008663486A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(7916004)(376002)(136003)(346002)(39860400002)(396003)(366004)(199004)(189003)(4326008)(256004)(26005)(66556008)(186003)(1076003)(5660300002)(66476007)(66946007)(6862004)(25786009)(91956017)(76116006)(64756008)(14454004)(66066001)(6506007)(6116002)(99286004)(76176011)(3846002)(86362001)(68736007)(53546011)(102836004)(6636002)(6486002)(305945005)(2906002)(73956011)(229853002)(8936002)(66446008)(53936002)(6246003)(8676002)(54906003)(81156014)(81166006)(316002)(9686003)(6512007)(486006)(478600001)(476003)(6436002)(7416002)(44832011)(71190400001)(71200400001)(11346002)(446003)(7736002)(33716001)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4659;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ComcYnyxFhySALoTX5PEsZQpWkkN/p8wk6gTcvt3jW+3khhBp2I1MuOntVhDfrSC0SUwoH6LBikWyd4+IhJRvO+CKVMzu2dGfBqqL5nUQXPj7phrvVygY3k+eVCOaM+TuOP2/b5GeXny5gpunsOf4Gy2PZiQnCbUDLPx956LBVi9Kl1DIbPXys1cXycaRFSHTMMnRUTOxX5LbObeVBoO7MOoqVF+jRzBKjmbiGiG7W5rUJjGKNAzV+40PJK0jbRnzBPVsRfmA+6OGhC9PxZNCZPBA2sCPX2IbCOO3Al+7K5sVQCl5PqP5wYJCj7fLEUiHMnwAbELlKUzjLGl51T9NOeS7grlBVCkHjh8E75vpJZBjJrD00KY9GyM/sr+KVD2PUIRTeAjxqi9i1z3cdyTCKdeVXEJVtL6q0y1HHu80t4=
Content-ID: <61459D010418E24189C3AAB936B4F9BA@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e9c79e1b-52b7-457e-c958-08d6febc6cca
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jul 2019 07:10:55.1010 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: abel.vesa@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4659
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_001101_503734_E0E591D6 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.4.84 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.84 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Jacky Bai <ping.bai@nxp.com>, "ccaione@baylibre.com" <ccaione@baylibre.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "angus@akkea.ca" <angus@akkea.ca>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>, "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-07-02 09:43:59, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> Add "gpio-ranges" property to establish connections between GPIOs
> and PINs on i.MX8MQ pinctrl driver.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

For both patches:

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>

> ---
>  arch/arm64/boot/dts/freescale/imx8mq.dtsi | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> index 477c523..3187428 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> @@ -287,6 +287,7 @@
>  				#gpio-cells = <2>;
>  				interrupt-controller;
>  				#interrupt-cells = <2>;
> +				gpio-ranges = <&iomuxc 0 10 30>;
>  			};
>  
>  			gpio2: gpio@30210000 {
> @@ -299,6 +300,7 @@
>  				#gpio-cells = <2>;
>  				interrupt-controller;
>  				#interrupt-cells = <2>;
> +				gpio-ranges = <&iomuxc 0 40 21>;
>  			};
>  
>  			gpio3: gpio@30220000 {
> @@ -311,6 +313,7 @@
>  				#gpio-cells = <2>;
>  				interrupt-controller;
>  				#interrupt-cells = <2>;
> +				gpio-ranges = <&iomuxc 0 61 26>;
>  			};
>  
>  			gpio4: gpio@30230000 {
> @@ -323,6 +326,7 @@
>  				#gpio-cells = <2>;
>  				interrupt-controller;
>  				#interrupt-cells = <2>;
> +				gpio-ranges = <&iomuxc 0 87 32>;
>  			};
>  
>  			gpio5: gpio@30240000 {
> @@ -335,6 +339,7 @@
>  				#gpio-cells = <2>;
>  				interrupt-controller;
>  				#interrupt-cells = <2>;
> +				gpio-ranges = <&iomuxc 0 119 30>;
>  			};
>  
>  			tmu: tmu@30260000 {
> -- 
> 2.7.4
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
