Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA183EFC90
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 12:40:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5uH11wL5kd25YClHNUy5xP0OYc/AmmzRKXGTL22zjz0=; b=qQiQ/7EkGpfjN7
	nHKP+QYzu8EGeoTD19S9FImM+iqzNoUTQT86s7n5zhzcf4jSJgPldgYAdP3psgdm+atE+Ri/hvwoY
	1bCvrT5aEfi8F/ZGGqK0tLf3xrxpwuDk8wkE3Zf1MnhN0Pe6UIVOsnSlWDpxnXGj9Mi81HZk6TAjV
	gCICCt1TgdOr7ZjSEYFc9DAP6tpNhknZ/Jc7tAJXoKwlEnizU9cJtAjPdC/LkgFyk1wBkVP/UH+zf
	ECi1NNyNRMr6+ZjNP5WwjzNw2orDFJFiB568jJ7ytifuwV3fuVPWd3BB9Mn2JPo+xmrSsHXiwT54W
	/kVIRrEK6/4HASwhHqYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRxBn-0002Hf-DY; Tue, 05 Nov 2019 11:39:59 +0000
Received: from mail-eopbgr150050.outbound.protection.outlook.com
 ([40.107.15.50] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRxBe-0002GW-Un
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 11:39:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XUfiAg3RDemcFq+yecl+tFfpwhSDvEpCot0PYQXvkcvQd4o1xubF0X/qEG/Tw+LvKhVho8vTUqz2j1HCbpL+cv0kVQXj1uGfYQ4PRY/Xky84vEVN9D94shPPEoeERkfNtmBG3S7eBEZDzM5KQrl3bDWZ7thuaFtZJfP1MhUzmDoSjtBTpWXZnIVuxQkYVuxvP9NNWaKcwCeMRgPasoR76vVJaUYofJWVS7d4hzKDWlzjtzvcVqUNacWXJcg6iPnWQPcllfZoSA8JG6a/k++DBGx0AWAntMs+3lc14eL2aTcWq2uTL2qxpJoHKRJPta0DIXdHKwh1ye3q9Nl00Ujfsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=co10EceoP8k5b6+u8JrWt23Rva32Co8eW5KjxfbTWFs=;
 b=TKRBoUnhl7S3vAnIyeIa23baYPzUvWuNYWNrdXltyl5k7r+iDsQal+Z1OxbdpBQxqUQqeALc2bh7gNhCK8k5m2X7qeu1/DzLMoYXOS8bRadUeVGMPHLU+0sWPfee7382SN4dS7SlURP3erLQKCz2Qpok9TGl1nP79bidX9QodN8L2znCPJ/av9soTLUzYjR/n1oUsXebQ3zdtMomf6b3KW47qTgiXzbjxKiDEcnOWMzYgceHNTGWyoqvMtnmL6HFSqwivBsWr5F/pxpakhllHU0HyAOIpmD04lPkYbSed+zFFpvLl4n21G7aLG2TiPCqgBo7W+rQbWTicspVk2+igA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=co10EceoP8k5b6+u8JrWt23Rva32Co8eW5KjxfbTWFs=;
 b=Aai8wEzKlxBb6fFX6HhqQ4263livWhcN4UItPqH5lyVKSsibnj58gA6zKeAxHIGyUIGXqhm4HfZfJSD1fk2PCZP3AiPR06ScnCP9XqfbjPeQzYtzWj6XWPB5T7oi2ouY2/FrVSJtghPf01KlR/iubezWRpNENpvb0K9VypxmxZc=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB4595.eurprd04.prod.outlook.com (52.135.148.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Tue, 5 Nov 2019 11:39:44 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde%7]) with mapi id 15.20.2430.020; Tue, 5 Nov 2019
 11:39:43 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH] clk: imx: pll14xx: initialize flags to 0
Thread-Topic: [PATCH] clk: imx: pll14xx: initialize flags to 0
Thread-Index: AQHVk6mXpyRie0JbfEaM7Eg+PLW60ad8dBoA
Date: Tue, 5 Nov 2019 11:39:43 +0000
Message-ID: <20191105113942.hivtjq56cztcqaix@fsr-ub1664-175>
References: <1572938372-7006-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1572938372-7006-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM4PR07CA0009.eurprd07.prod.outlook.com
 (2603:10a6:205:1::22) To AM0PR04MB5779.eurprd04.prod.outlook.com
 (2603:10a6:208:131::23)
x-originating-ip: [89.37.124.34]
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 8f13fd1d-64bd-4700-c2ce-08d761e4da2a
x-ms-traffictypediagnostic: AM0PR04MB4595:|AM0PR04MB4595:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB45956B4A9B0D7339AAB5EE42F67E0@AM0PR04MB4595.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:576;
x-forefront-prvs: 0212BDE3BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(4636009)(136003)(39860400002)(396003)(376002)(346002)(366004)(189003)(199004)(86362001)(476003)(478600001)(5660300002)(81156014)(6436002)(1076003)(44832011)(14454004)(486006)(25786009)(33716001)(6636002)(71190400001)(305945005)(71200400001)(7736002)(11346002)(9686003)(6506007)(6512007)(99286004)(229853002)(102836004)(53546011)(52116002)(6486002)(76176011)(316002)(2906002)(386003)(54906003)(6246003)(4326008)(256004)(66476007)(66556008)(66946007)(64756008)(66066001)(66446008)(446003)(6862004)(8936002)(81166006)(186003)(26005)(8676002)(6116002)(3846002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4595;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: A/4u+rp8zQSd//r8VrB23fQaWXUEjgYThgYEqkBN5iY8uEYo2hjUkqbEsbUxezHzUwv0Yp8BFJOiG0gd5IMQBvDLAufoU0DrIbKShuyFVw+CITKuT1hNt+ANkSvm1jrcT1Vg/uVce92UdyJFwAq/FHK7/vFEs2ly4uRCLC40rzptebv9lubNL74WBGqKnUkIAbbnMHJQHHRE1hDjOgI6XynPZy4CFXYL43/0asOuTn/eXDD1j1FJibJWxlJ4rz/vPr8AQx8yzbgHAzuSOMRcxzs/3pgrYxl6u/fqZhMoj5ArReh/ZkqwshSNkOSDsnhxGT19N1FoKci1vSDLilTm7V1eJu+XH3P5CSUC6ldUlNkaBoTCagxVUUZHgSFAxVpnsWbIWFWSPvuCW960WsM44V5w5r2zZ8xVm66vvv3v5lSrwUOvW4pQFVsUDkFkbjgN
Content-ID: <822144FEAF0B9C44929279CD056F3D87@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f13fd1d-64bd-4700-c2ce-08d761e4da2a
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2019 11:39:43.8726 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: y5fEDKjSNHKUW/5rtGTbpTw7yOhNMaVJ87BwOMbRDvuc3zrrRgCfVTIWNY9N3gYzNsiB9E64kRWAYt0EfZxEOw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4595
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_033950_994048_9595F8BA 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.50 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-11-05 07:21:08, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> init.flags is initialized with value from pll_clk->flags, however
> imx_1443x_pll and imx_1416x_pll are not static structure, so flags
> might be random value. So let's initialize flags as 0 now.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>

> ---
>  drivers/clk/imx/clk-pll14xx.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
> index fa76e04251c4..a7f1c1abe664 100644
> --- a/drivers/clk/imx/clk-pll14xx.c
> +++ b/drivers/clk/imx/clk-pll14xx.c
> @@ -65,12 +65,14 @@ struct imx_pll14xx_clk imx_1443x_pll = {
>  	.type = PLL_1443X,
>  	.rate_table = imx_pll1443x_tbl,
>  	.rate_count = ARRAY_SIZE(imx_pll1443x_tbl),
> +	.flags = 0,
>  };
>  
>  struct imx_pll14xx_clk imx_1416x_pll = {
>  	.type = PLL_1416X,
>  	.rate_table = imx_pll1416x_tbl,
>  	.rate_count = ARRAY_SIZE(imx_pll1416x_tbl),
> +	.flags = 0,
>  };
>  
>  static const struct imx_pll14xx_rate_table *imx_get_pll_settings(
> -- 
> 2.16.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
