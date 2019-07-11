Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65F4C652F6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 10:16:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/5HX+yWlVKNhhNXCcjTWxAjzETo3IR5JB6MH6vRuZvM=; b=dQkZOWrvBz2KUB
	f1Us4uhLLLVqKBS+9lYqw16YzpkFq1IM93D0dr5fzVxnImsVJHOn9e/RgAyBCabzwiEFHNTHsZFkb
	Ya/CZxHtVKfrujsgP/AgI8E2n7EfWZxliZUXSln+k3VWa2gqWW0GGEeUXNzK/yFXZ0dd12TOKY8MW
	1sosR2roq3cqfrxCUDMlTBm8vdfcLoRFXQdmjlPCUaNN78neV0GYoyQHLapWRaP0O/BljSmfo6kgr
	SD2yTHnMwUxhJeG5m2a4ndFl0jPllHNqz0oTIgdAjY/LKVSuMnkjHEkXnAcAMVQqwQQc2rfILsTDO
	UlADq3/t9AJyQMfSLGzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlUFp-0006uC-KS; Thu, 11 Jul 2019 08:16:37 +0000
Received: from mail-eopbgr130051.outbound.protection.outlook.com
 ([40.107.13.51] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlUFb-0006tm-V4
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 08:16:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZAtwIlaEJjJDWCMvDTb9xG6RijqKv02nfGHpDLgRpB4=;
 b=cpDSBpezBY+fFOkdY0KVCPqDeFn36x0pmcweHYDNh4W/Z+ti9ZLVBpez4m9QwfJHUdBDY0Wiu/a9DOloxEY1A9iDU1X8IldQZzqBEfk5ltZU8mjEH2J2is2cp90MGx/GF1s1ZvtnH7wR8I9z9e2ZkLtcjQs9Rv0pPvT2z3yN9Yo=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB4626.eurprd04.prod.outlook.com (52.135.151.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.19; Thu, 11 Jul 2019 08:16:18 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::a126:d121:200:367]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::a126:d121:200:367%7]) with mapi id 15.20.2052.022; Thu, 11 Jul 2019
 08:16:18 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Jun Li <jun.li@nxp.com>
Subject: Re: [PATCH 1/2] clk: imx8mq: set correct parent for usb ctrl clocks
Thread-Topic: [PATCH 1/2] clk: imx8mq: set correct parent for usb ctrl clocks
Thread-Index: AQHVNxKgU0jGAW0qWEiPnJoqcZgGhabFE62A
Date: Thu, 11 Jul 2019 08:16:18 +0000
Message-ID: <20190711081617.iruwo4fuiwfbie4k@fsr-ub1664-175>
References: <20190710111917.6615-1-jun.li@nxp.com>
In-Reply-To: <20190710111917.6615-1-jun.li@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 65213cf6-62af-4a58-91a8-08d705d80d20
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4626; 
x-ms-traffictypediagnostic: AM0PR04MB4626:
x-microsoft-antispam-prvs: <AM0PR04MB46268666D48546150F7F4FB5F6F30@AM0PR04MB4626.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:949;
x-forefront-prvs: 0095BCF226
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(7916004)(136003)(376002)(39860400002)(366004)(396003)(346002)(189003)(199004)(186003)(256004)(26005)(6246003)(478600001)(7736002)(305945005)(1076003)(71190400001)(86362001)(68736007)(71200400001)(5660300002)(66066001)(91956017)(66946007)(76116006)(64756008)(66476007)(66556008)(66446008)(102836004)(6506007)(53546011)(11346002)(476003)(44832011)(446003)(33716001)(6862004)(2906002)(54906003)(25786009)(316002)(6486002)(4326008)(76176011)(6116002)(3846002)(8936002)(14454004)(9686003)(6512007)(229853002)(81156014)(99286004)(8676002)(81166006)(53936002)(6436002)(486006)(7416002)(6636002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4626;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: U6swmqQa8WUc0TSwqZU7tiFrzxk6Gdb4JsuLqeOsIsvCr6dQtzA89BTP12INMhREkMSuXsjCD684hVXJdX1ZXj2EUjj2u/B3pDeRe0+BsKjevZ0XArqMR7lnX0fWG8ckKapxlyYtL3yIXMCZbQIGS6wfPQSbC69b1MbRQEuXKR33k1oNz0PpgT6ryKSCBer7rwbZjrQzL0uyD6mpgrW4+55jzLNknCitTE3VkdWMDYTDJ8In2yYFLPaqDGzD6prDNgRv1G/1d8UdBZbVWuMWXno8LOo5x1v0geBqqzItNm2p+itqbCzWjgcej9IIK+ChC/USYVJjihZWc0JLia3edeStLf8FJmtwl9AMcPR3+m6hzJ42muTL1hbkZjHjigZAc/EuTRFFKDV5CnRoLNn+uSt7qWFXxf6JcnXzDQANvYg=
Content-ID: <490811C2CED56246ACFCE4B5184CA7D8@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 65213cf6-62af-4a58-91a8-08d705d80d20
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jul 2019 08:16:18.4949 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: abel.vesa@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4626
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_011624_045044_DD55229C 
X-CRM114-Status: GOOD (  13.24  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.51 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
 Peter Chen <peter.chen@nxp.com>, "agx@sigxcpu.org" <agx@sigxcpu.org>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "ccaione@baylibre.com" <ccaione@baylibre.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "angus@akkea.ca" <angus@akkea.ca>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-07-10 19:19:16, jun.li@nxp.com wrote:
> From: Li Jun <jun.li@nxp.com>
> 
> Per latest imx8mq datasheet of CCM, the parent of usb1_ctrl_root_clk
> and usb2_ctrl_root_clk is usb_bus.
> 
> Signed-off-by: Li Jun <jun.li@nxp.com>

For the entire series.

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>

> ---
>  drivers/clk/imx/clk-imx8mq.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-imx8mq.c b/drivers/clk/imx/clk-imx8mq.c
> index d407a07..c7d1546 100644
> --- a/drivers/clk/imx/clk-imx8mq.c
> +++ b/drivers/clk/imx/clk-imx8mq.c
> @@ -523,8 +523,8 @@ static int imx8mq_clocks_probe(struct platform_device *pdev)
>  	clks[IMX8MQ_CLK_UART2_ROOT] = imx_clk_gate4("uart2_root_clk", "uart2", base + 0x44a0, 0);
>  	clks[IMX8MQ_CLK_UART3_ROOT] = imx_clk_gate4("uart3_root_clk", "uart3", base + 0x44b0, 0);
>  	clks[IMX8MQ_CLK_UART4_ROOT] = imx_clk_gate4("uart4_root_clk", "uart4", base + 0x44c0, 0);
> -	clks[IMX8MQ_CLK_USB1_CTRL_ROOT] = imx_clk_gate4("usb1_ctrl_root_clk", "usb_core_ref", base + 0x44d0, 0);
> -	clks[IMX8MQ_CLK_USB2_CTRL_ROOT] = imx_clk_gate4("usb2_ctrl_root_clk", "usb_core_ref", base + 0x44e0, 0);
> +	clks[IMX8MQ_CLK_USB1_CTRL_ROOT] = imx_clk_gate4("usb1_ctrl_root_clk", "usb_bus", base + 0x44d0, 0);
> +	clks[IMX8MQ_CLK_USB2_CTRL_ROOT] = imx_clk_gate4("usb2_ctrl_root_clk", "usb_bus", base + 0x44e0, 0);
>  	clks[IMX8MQ_CLK_USB1_PHY_ROOT] = imx_clk_gate4("usb1_phy_root_clk", "usb_phy_ref", base + 0x44f0, 0);
>  	clks[IMX8MQ_CLK_USB2_PHY_ROOT] = imx_clk_gate4("usb2_phy_root_clk", "usb_phy_ref", base + 0x4500, 0);
>  	clks[IMX8MQ_CLK_USDHC1_ROOT] = imx_clk_gate4("usdhc1_root_clk", "usdhc1", base + 0x4510, 0);
> -- 
> 2.7.4
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
