Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4F6E147A0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 11:30:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wTFK7wQSOdJK04Y+slbHHXNTjorUDIVGtD2wD7eDIL4=; b=mq2TngIJXLI2es
	bmrKoRzz6XmCc7i6A7VoHfMfRTNMZIaLOl+oLYtmjwv40A61A3DtBIIw+20qJXEL7zo6e9F3e5H6J
	PN89ZP4fOPxb7MNGtPIUP9wL52YDSmuRA3CrYbvdYQFmw4vIzJZfWc+2WNrtR1ZOcL0UTzOw09jZu
	hNhFFpUn9sOueJ+N7bJZPDIWk3Knb5EUSO2gf5MnLuSBsE9Gr51V2c7QOsmcuv69iqdlfJuEybKAo
	dmH8NaVI8r3LlUf/Jf1z7lDmxqI/Ub/ShowpagDWjF28/QO9+pgVzOcz4B6kc3JAw4bFZRsc0WzVe
	7+7jVtDtWNcdN6wblldA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNZxS-0000S4-5s; Mon, 06 May 2019 09:30:50 +0000
Received: from mail-eopbgr80077.outbound.protection.outlook.com ([40.107.8.77]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNZxJ-0000Rb-Fq
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 09:30:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E/yr2+4XgjIt1yrCvauc3hlwLoU8NfQKnNtZbh1xxfQ=;
 b=cOsBxNThBJkGV96SyAPJULHYVa7eX7j1mgq/Wl2CukzQt3hqAPEa/p/cIWr6Jq6yDVfLLWvovolokT0UmO9Z9FQSCwBuplvh39QtgGUsh201lrI2nGIpOY6z59aNqq6X/JdFZyGGEf5s5ZshZTkRpk9LWOrYYUbYhNIkL4tDN+w=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB4515.eurprd04.prod.outlook.com (52.135.148.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.12; Mon, 6 May 2019 09:30:38 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13%6]) with mapi id 15.20.1856.012; Mon, 6 May 2019
 09:30:38 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "mturquette@baylibre.com"
 <mturquette@baylibre.com>, "sboyd@kernel.org" <sboyd@kernel.org>, Leonard
 Crestez <leonard.crestez@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>
Subject: RE: [PATCH 2/3] clk: imx8mm: add GPIO clocks to clock tree
Thread-Topic: [PATCH 2/3] clk: imx8mm: add GPIO clocks to clock tree
Thread-Index: AQHVA+yijIxFAG0DFkm3jMwYHPVMnqZd1MOw
Date: Mon, 6 May 2019 09:30:38 +0000
Message-ID: <AM0PR04MB4211EBC80C4A821BEDBF203C80300@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <1557133994-5061-1-git-send-email-Anson.Huang@nxp.com>
 <1557133994-5061-2-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1557133994-5061-2-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ea4548e8-6850-4955-f002-08d6d2058016
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4515; 
x-ms-traffictypediagnostic: AM0PR04MB4515:
x-microsoft-antispam-prvs: <AM0PR04MB45158CBA0C844EDA5592477380300@AM0PR04MB4515.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1091;
x-forefront-prvs: 0029F17A3F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(376002)(39860400002)(396003)(346002)(366004)(199004)(189003)(478600001)(6436002)(2501003)(7696005)(66946007)(66476007)(66446008)(66556008)(64756008)(25786009)(55016002)(9686003)(52536014)(76176011)(316002)(256004)(3846002)(6116002)(229853002)(476003)(446003)(11346002)(486006)(99286004)(81166006)(81156014)(186003)(8676002)(8936002)(7736002)(68736007)(71190400001)(305945005)(33656002)(74316002)(6246003)(6506007)(53546011)(14454004)(7416002)(102836004)(53936002)(2906002)(4326008)(44832011)(110136005)(86362001)(71200400001)(2201001)(26005)(5660300002)(73956011)(76116006)(66066001)(32563001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4515;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: w/xPd/JYkdvK05bCXbmbwOEcb0e2Jf6f3axd1qo3P5WKsxYwmL5iWqQB4q4fowmWJ1jaiRTOkiL5aAQeWmvhV1hYgx5GXmknIWavzWmELiOkajYABwaakBmKdnYnyGz7WmUSZB0QrYqwWYmA2GXcGRd/M2ylV1OGucErDoqY/QjRPA3VxtcadAUqAlvNUpm58HHL+7hvxsR7XLKorwxBpdmdyJvlAt0Q0MPum37JJXw/zZqnGHEvlsf7AAfc5973i/cgdvZFIzocdhxxaZ1AbFvWWax9yEMajqixMkKEw90aCPGR7hGQ5YvKZ0A2TktLEpdbCUG01uUctroIdE1gMkp7YCaQKLBWyeSL8fygOdGPYvhVjgQ9LU7+zdUOMdXXwKDVl1CGKF2GH2K4AdXuXiKA2nU0791tf68U6ScDyNw=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea4548e8-6850-4955-f002-08d6d2058016
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2019 09:30:38.3930 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4515
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_023041_524623_34FDF7D1 
X-CRM114-Status: GOOD (  14.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.77 listed in list.dnswl.org]
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Anson Huang
> Sent: Monday, May 6, 2019 5:18 PM
> Subject: [PATCH 2/3] clk: imx8mm: add GPIO clocks to clock tree
> 
> i.MX8MM has clock gate for each GPIO bank, add them into clock tree for
> GPIO driver to manage.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Dong Aisheng

> ---
>  drivers/clk/imx/clk-imx8mm.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
> index 1ef8438..733ca20 100644
> --- a/drivers/clk/imx/clk-imx8mm.c
> +++ b/drivers/clk/imx/clk-imx8mm.c
> @@ -590,6 +590,11 @@ static int __init imx8mm_clocks_init(struct
> device_node *ccm_node)
>  	clks[IMX8MM_CLK_ECSPI2_ROOT] = imx_clk_gate4("ecspi2_root_clk",
> "ecspi2", base + 0x4080, 0);
>  	clks[IMX8MM_CLK_ECSPI3_ROOT] = imx_clk_gate4("ecspi3_root_clk",
> "ecspi3", base + 0x4090, 0);
>  	clks[IMX8MM_CLK_ENET1_ROOT] = imx_clk_gate4("enet1_root_clk",
> "enet_axi", base + 0x40a0, 0);
> +	clks[IMX8MM_CLK_GPIO1_ROOT] = imx_clk_gate4("gpio1_root_clk",
> "ipg_root", base + 0x40b0, 0);
> +	clks[IMX8MM_CLK_GPIO2_ROOT] = imx_clk_gate4("gpio2_root_clk",
> "ipg_root", base + 0x40c0, 0);
> +	clks[IMX8MM_CLK_GPIO3_ROOT] = imx_clk_gate4("gpio3_root_clk",
> "ipg_root", base + 0x40d0, 0);
> +	clks[IMX8MM_CLK_GPIO4_ROOT] = imx_clk_gate4("gpio4_root_clk",
> "ipg_root", base + 0x40e0, 0);
> +	clks[IMX8MM_CLK_GPIO5_ROOT] = imx_clk_gate4("gpio5_root_clk",
> +"ipg_root", base + 0x40f0, 0);
>  	clks[IMX8MM_CLK_GPT1_ROOT] = imx_clk_gate4("gpt1_root_clk", "gpt1",
> base + 0x4100, 0);
>  	clks[IMX8MM_CLK_I2C1_ROOT] = imx_clk_gate4("i2c1_root_clk", "i2c1",
> base + 0x4170, 0);
>  	clks[IMX8MM_CLK_I2C2_ROOT] = imx_clk_gate4("i2c2_root_clk", "i2c2",
> base + 0x4180, 0);
> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
