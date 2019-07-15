Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 258A26845D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 09:28:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4LIb0X7U2GdBrrjzRlgjXxCK+OuXqe70GxapFw12Wcg=; b=IuO+S2p77a9mwv
	wXsHwc2o7asXXzw0XjAqrZ1FTg90HpsYw5uKLEEKe2uvCmyX/pw7e7C30ykcQ/VTIYuIkMv1OXWln
	X2oDAtSTl70lQG5EJFjw04vKaPHM9yIHyxH/N9nM7iuKyMTnPY2JX3aUQcEoAo+gHAwTR+LlrCYgr
	+J/adrIyLAyVXX3dfPzuutWzqGH14zahf0nVHMwCdHEQvkRsVfxdUemzzCVxiN5BYgiHlk3nsvH/x
	YLMlohkGxl92UThSqGxwW0g3OydQX2nhqQNCLCJh28LFlPzrst7augD8TOSH95ZkEeOeDofkowbfg
	BqlDZiOKXVqpInmSHOdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmvPD-0002Mc-VU; Mon, 15 Jul 2019 07:28:15 +0000
Received: from mail-eopbgr130084.outbound.protection.outlook.com
 ([40.107.13.84] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmvOs-0002LK-4S
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 07:27:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a44a1+j7gjZETpmj5fXu98/O97TrrJ7MTpMidrQwjk+XfAzA0WVluof7pPM+TP8JaCQ2kZVEzX04niMH/llNKczaVtElHGKsIK3LV73BUenE7aW3JMf2wdnvHLkAmCZC0kQcB/IxyONyM82WQtt9lrG4a4d9Ls7e+WrRCWh5Il/WXvpTge0b04cLsZviIOfzG/FSUWGs5VmXTKheb8uLwmj7ZbNS1V01r3WzYZXNfmL7bOxglVIPpq0jubKdyqu02Qf+tXcayBgTJqWDX5A8UyHKze3gl/luSTlDkfz80vfjY+hnonqVmoypqMYLvGTJtx+ujqjgO+TLmD31fHieMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9wwGg6fZ7lyBlw1Tr3tETTaPUObcmmmYIE+KP3B1cgg=;
 b=KTKAdq2r1xT64ujCagsyko/b/WNdkYV4i2OF7YuHBgfkS9EUvdYuO5/xVcqxmV5goyEUPexjmGMhdK9JHUYxcgHqAgWwJ+e6pdISpxZkEvr36ybfeBr1jf1n+lwDU+16KW63V6cRx7qMKMvBGpiONcEEH4zqu29AdAr1hBKDxzEH7mHdk1fqWF++X2lVllSE2xg2iTPVGBUKHNWSNtiLmcYkrtnFrQXKXkJiVxcacjRMbeFYGGLPdHV8evIytBO/a9L1KGblmqBQX8WbnmJOZZj+u0xYSQhOnAXFZG6m6yt3conB4itDycyPxFVsMGV2ibaFYboFrNxPLdDlW1aIfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9wwGg6fZ7lyBlw1Tr3tETTaPUObcmmmYIE+KP3B1cgg=;
 b=o78l5pBPKm86fVrKkUCbbAjYYHcgHT3nec1cYIHAyHJ2sqWlHCfb7howkFho7F05BeGaDDx1sHCKW2I8iU1rRxH0t7IxPe8edQQwEH3Io0ByobbgRzRTHZBJyJJJeHl15/gXlukhpT07WUOKTYSC1fZPvdrez70HPmOp32yALbA=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB4065.eurprd04.prod.outlook.com (52.134.90.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.10; Mon, 15 Jul 2019 07:27:48 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::a126:d121:200:367]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::a126:d121:200:367%7]) with mapi id 15.20.2073.012; Mon, 15 Jul 2019
 07:27:48 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH] clk: imx: imx8mm: fix audio pll setting
Thread-Topic: [PATCH] clk: imx: imx8mm: fix audio pll setting
Thread-Index: AQHVOrjKqRILo4kj1ESmmUTSG4SPJabLSCeA
Date: Mon, 15 Jul 2019 07:27:48 +0000
Message-ID: <20190715072747.2743qdbk2umcpzgq@fsr-ub1664-175>
References: <1563157783-31846-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1563157783-31846-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e7ccfe50-32ca-4386-67e0-08d708f5f02e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4065; 
x-ms-traffictypediagnostic: AM0PR04MB4065:
x-microsoft-antispam-prvs: <AM0PR04MB4065237A99D46EFD01EDD8C7F6CF0@AM0PR04MB4065.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 00997889E7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(4636009)(376002)(39860400002)(136003)(396003)(366004)(346002)(199004)(189003)(7736002)(5660300002)(229853002)(68736007)(4326008)(99286004)(66446008)(6636002)(64756008)(305945005)(66556008)(2906002)(316002)(86362001)(53936002)(53546011)(6246003)(6506007)(6862004)(76176011)(6116002)(1076003)(8936002)(8676002)(71190400001)(71200400001)(3846002)(478600001)(25786009)(66946007)(66476007)(76116006)(91956017)(14454004)(81156014)(81166006)(11346002)(446003)(186003)(7416002)(6486002)(26005)(54906003)(6436002)(33716001)(256004)(476003)(14444005)(102836004)(44832011)(66066001)(486006)(6512007)(9686003)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4065;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: /BMCIRXGqa5wWmHO37ODdRVw3aiyKQS/gtAPsegfKA5wR4ti/rhghQegLj0b+C9P7gbvCTVEYdNWdCTQ4dhJEmpENqypKYGxB1vOLXEfpMZc9mh9epNFi9AxcuCXESmMAqFbO0iKsKovvrtzBxAumgYJ0S4DAyA5Bpu2QiUZoZbGIrsXaBpnvtC3EAT+6UwRljbhDZMzn5YR77nLm3OA3GFKZvWmCJ4B3fDU3YZYj//vXx9CoiXNtwnFHpAcVz3lhHhrSFHOTNqN8+nfYv5H83texr4EQZceMlVrYRXe2bfsKiV/3ddrAVWBjBvAg7xNNawECaLgMX2JwJf3Kf4RKbD3n427GhUgTn2G0ikQ/yDmJhe+vmwaALqcmmUawDd9z2SYJvfhlL0EQH2ejYIllBvFUc5k7z9tQBXum0p4jJE=
Content-ID: <F92EE601217D114A8D8E61B8B9DBA641@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e7ccfe50-32ca-4386-67e0-08d708f5f02e
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jul 2019 07:27:48.2978 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: abel.vesa@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4065
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_002754_257022_1A2EF125 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.84 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-07-15 02:55:43, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> The AUDIO PLL max support 650M, so the original clk settings violate
> spec. This patch makes the output 786432000 -> 393216000,
> and 722534400 -> 361267200 to aligned with NXP vendor kernel without any
> impact on audio functionality and go within 650MHz PLL limit.
> 
> Cc: <stable@vger.kernel.org>
> Fixes: ba5625c3e272 ("clk: imx: Add clock driver support for imx8mm")
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Acked-by: Abel Vesa <abel.vesa@nxp.com>

> ---
>  drivers/clk/imx/clk-imx8mm.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
> index 3a873e0e278f..b72bad064d8d 100644
> --- a/drivers/clk/imx/clk-imx8mm.c
> +++ b/drivers/clk/imx/clk-imx8mm.c
> @@ -55,8 +55,8 @@ static const struct imx_pll14xx_rate_table imx8mm_pll1416x_tbl[] = {
>  };
>  
>  static const struct imx_pll14xx_rate_table imx8mm_audiopll_tbl[] = {
> -	PLL_1443X_RATE(786432000U, 655, 5, 2, 23593),
> -	PLL_1443X_RATE(722534400U, 301, 5, 1, 3670),
> +	PLL_1443X_RATE(393216000U, 262, 2, 3, 9437),
> +	PLL_1443X_RATE(361267200U, 361, 3, 3, 17511),
>  };
>  
>  static const struct imx_pll14xx_rate_table imx8mm_videopll_tbl[] = {
> -- 
> 2.16.4
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
