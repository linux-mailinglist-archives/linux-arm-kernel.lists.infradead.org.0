Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 744C2523F6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 09:07:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CKPNGoQOf07pOR/6b/Z0/yLFgkyX8l6dnO/vWRYlWjE=; b=BBEXBh3VHoIAqQ
	tfLtVUZGvlGWZD3aXlx3Abhxj9qCIbyXkx5+U6SwHhe4K5JrOsMEoJsIT+kFyF+PuX6W2xQbEbQHG
	+KDqwZPKWHqBRDjcRfFjZQDoG8zbT0DeNrJRjIMw09U0qVIimyjWNyCQdc/yDkHwD7Sl21w+Z+ko5
	skCA+twyk0oukHUcM6/B8MVeH+rCpxkn1TbhSoceJ7ItgG97TANnVwU5i8tHA3bZrxsA9riBGNh/G
	uGZIgCZbMWqWL85BsZlpVZ8fpJpr8TPViYG+Got3tL1CHznqCiyuWhFqPpyTCl0lUbiQVi8BXpsvz
	oFRTkPjhWmwkxIXGVsCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hffXz-0002jS-NZ; Tue, 25 Jun 2019 07:07:19 +0000
Received: from mail-eopbgr60062.outbound.protection.outlook.com ([40.107.6.62]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hffXk-0002ia-U0
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 07:07:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xSaUhYJVgnfZeiXyUus4rXj5vvkqAzAGvjZw+VugLas=;
 b=AvhlBUnrjkn7mbS4GcrlJbpXDuwSZsuw9aSZ1/NUzClnY+KNrv1a5SLHghxrYfPqlB5tOcQnAGhgsQmP3AxnK6Ej15b+KBrPrSCFFo/Dvi4bDw4EPO8gwRyOLJnSPC6kqbD/iZM+/Msm3EidXa/HOg3+q0sZPTQxPGG6eoRt0sw=
Received: from DB7PR04MB5178.eurprd04.prod.outlook.com (20.176.236.22) by
 DB7PR04MB5145.eurprd04.prod.outlook.com (20.176.235.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Tue, 25 Jun 2019 07:06:56 +0000
Received: from DB7PR04MB5178.eurprd04.prod.outlook.com
 ([fe80::2c71:9f2f:8db1:a290]) by DB7PR04MB5178.eurprd04.prod.outlook.com
 ([fe80::2c71:9f2f:8db1:a290%4]) with mapi id 15.20.2008.014; Tue, 25 Jun 2019
 07:06:56 +0000
From: Jacky Bai <ping.bai@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "mturquette@baylibre.com"
 <mturquette@baylibre.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Leonard Crestez
 <leonard.crestez@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 2/2] clk: imx8mm: GPT1 clock mux option #5 should be
 sys_pll1_80m
Thread-Topic: [PATCH 2/2] clk: imx8mm: GPT1 clock mux option #5 should be
 sys_pll1_80m
Thread-Index: AQHVKyQzJN5BE3akGkGXuEng8rXJJ6ar8rfA
Date: Tue, 25 Jun 2019 07:06:55 +0000
Message-ID: <DB7PR04MB51783F81729B64AA16705BF587E30@DB7PR04MB5178.eurprd04.prod.outlook.com>
References: <20190625070602.37670-1-Anson.Huang@nxp.com>
 <20190625070602.37670-2-Anson.Huang@nxp.com>
In-Reply-To: <20190625070602.37670-2-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ping.bai@nxp.com; 
x-originating-ip: [92.121.36.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a41b646d-8d3a-4c1a-ae5d-08d6f93bb578
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB7PR04MB5145; 
x-ms-traffictypediagnostic: DB7PR04MB5145:
x-microsoft-antispam-prvs: <DB7PR04MB51458C39F3B362F3EA30207687E30@DB7PR04MB5145.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1332;
x-forefront-prvs: 0079056367
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(396003)(346002)(376002)(136003)(39860400002)(189003)(13464003)(199004)(66476007)(316002)(55016002)(446003)(9686003)(102836004)(2906002)(486006)(476003)(478600001)(305945005)(66066001)(11346002)(86362001)(2201001)(6116002)(25786009)(68736007)(3846002)(71190400001)(71200400001)(7736002)(6436002)(74316002)(52536014)(256004)(6246003)(14454004)(229853002)(33656002)(14444005)(7696005)(53936002)(99286004)(53546011)(81156014)(81166006)(186003)(6506007)(5660300002)(66946007)(73956011)(76176011)(76116006)(8676002)(8936002)(66556008)(64756008)(66446008)(2501003)(26005)(110136005)(4326008)(921003)(32563001)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB5145;
 H:DB7PR04MB5178.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: nZn2e4pw2sw2vgiyGdthugprB1fWCIPLagiTQahvOXtv+UTKPLiJ+hTHtICsqiSK75jEP9hP6Ps4iXN3b7Y5oISTEtiPuc0Kn/wlK/I9TCw1qcLquOEcQ4C897hpmnGMWTC69M51EM3kKv+bervLF5tLp3uO7ZWaVnPE/YThTkBh51yged8U0L2JAseiqEOUgQVP5ubSr7juZwISd6l4aW3ydnULgbQRUD4TPTb4gDWVjkJ/lznUFJqqzh/l66ElUN5mK/5eG8ZpTdSIa8oadcb3TitRoIULzbQ56hLlv1dtjq/UVqDgy3tC9p0B9EFMSX5FM+iWNxHjdbwlq/c4XiN9dBkWCthcd3quZDSV9jYE2UtErm9wqf/H+EtdWYHRL4d0sW97QmInLCN8BZ2AzoOe7o1bSCm13qys7MdXXgw=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a41b646d-8d3a-4c1a-ae5d-08d6f93bb578
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jun 2019 07:06:56.1226 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ping.bai@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5145
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_000705_045905_C48269C6 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.62 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

OK for me.

BR
Jacky Bai
> -----Original Message-----
> From: Anson.Huang@nxp.com [mailto:Anson.Huang@nxp.com]
> Sent: Tuesday, June 25, 2019 3:06 PM
> To: mturquette@baylibre.com; sboyd@kernel.org; shawnguo@kernel.org;
> s.hauer@pengutronix.de; kernel@pengutronix.de; festevam@gmail.com;
> Leonard Crestez <leonard.crestez@nxp.com>; Jacky Bai <ping.bai@nxp.com>;
> Peng Fan <peng.fan@nxp.com>; linux-clk@vger.kernel.org;
> linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org
> Cc: dl-linux-imx <linux-imx@nxp.com>
> Subject: [PATCH 2/2] clk: imx8mm: GPT1 clock mux option #5 should be
> sys_pll1_80m
> 
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> i.MX8MM's GPT1 clock mux option #5 should be sys_pll1_80m, NOT
> sys_pll1_800m, correct it.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  drivers/clk/imx/clk-imx8mm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
> index 516e68d..d1a84f7 100644
> --- a/drivers/clk/imx/clk-imx8mm.c
> +++ b/drivers/clk/imx/clk-imx8mm.c
> @@ -293,7 +293,7 @@ static const char *imx8mm_pwm4_sels[] =
> {"osc_24m", "sys_pll2_100m", "sys_pll1_1
>  					 "sys_pll3_out", "clk_ext2", "sys_pll1_80m",
> "video_pll1_out", };
> 
>  static const char *imx8mm_gpt1_sels[] = {"osc_24m", "sys_pll2_100m",
> "sys_pll1_400m", "sys_pll1_40m",
> -					 "video_pll1_out", "sys_pll1_800m",
> "audio_pll1_out", "clk_ext1" };
> +					 "video_pll1_out", "sys_pll1_80m", "audio_pll1_out",
> "clk_ext1" };
> 
>  static const char *imx8mm_wdog_sels[] = {"osc_24m", "sys_pll1_133m",
> "sys_pll1_160m", "vpu_pll_out",
>  					 "sys_pll2_125m", "sys_pll3_out", "sys_pll1_80m",
> "sys_pll2_166m", };
> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
