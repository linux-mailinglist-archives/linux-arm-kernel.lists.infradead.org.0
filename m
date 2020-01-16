Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5284C13D4EF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 08:26:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PfH5WOaS9uCbnr0PisDAuGfIRsZcEEvXzYIrmCRALus=; b=GsPs6JJ5Or4FBY
	33JXLJRQOBye8PEoJPX7YFT5a8wIW0JWB6avwBtdzd+mXcT3YlLmuoHKTn265b53Y+wfsl9Ztek4l
	Onyxrn+CCB9Oj9IVoI0ew+qzrMPYH1BfDzmuDKEEXfNzeADVNcQQfZ264PSjHVhASF9TZz5pZFqHL
	g0aj2luf5WfYl1W1V9BKYVD6SOj7txx1HeIaJ5EEjUjYuCu5aTpLnU3/1TUYDIK8f4vIPCJe5lGdz
	TbUtxjxZFdWf4kv2EPI32Ml7mcgWrpb7c/+y4jIECae4iEOFJXua6J1Dv1MFpRcUtLlGtIEVszN5v
	oP7k1ktI2AZOOaC7UJQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irzXn-0003Rg-GO; Thu, 16 Jan 2020 07:26:19 +0000
Received: from mail-eopbgr10069.outbound.protection.outlook.com ([40.107.1.69]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irzXc-0003Qn-Hf
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 07:26:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Kw5oiGngWHF9U6wKEuUdRi8FMH5I6YI2YQekBpzOjx3vfpKgBGuzYsi370cfY3aZxhJpbZXiEvCBVQGvuT91joKDry0y0CJn7q8u5xkIZ0b1wYGDgX3F0Z64p2zgA7fFNXpQDkgEE5/32cwCLtFqBipPMQyhsqlbehyE96aoLJFSrAM6fgx/wUjGL30NUq6PcbMVe/LResSBZuLxKp9cEixuvReKj3CLZenWUiRQ/iYWLaGPiGOaGQyMgKT6SH7AgVUrc65rK+x9XFXVeQwyIMZPEGe8O9ntbSAnC9LUTO8NLe5b5/SnRP/rKep5D1M6jYA0COlh0rM85Bz8OVeJmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=URdDU8oVuBysxW3/ULTx8oy91qKu12vMuHSFbeITS8U=;
 b=NxkVJkwSVGJwvh/4Yn5Y4xWZTYufwwrYMziksxxGFEQdvr42uHWAUGHitgZvE8+rdoYfjZwPQGYP1eDxcDYKbPcG+16/s4NDa+mPK1Fo9ZHBp/XyRakOtnmCSn+6cQdA9wZ5+SPFC0Mzh3k3DqP5uDfdapYmDdJRXHBV1oyd4HZ7LAuaMKej6bnHbIbN1N6bsUvHlDVJzd5UiyW8/BYuvSKGii9GhBqvyXS2uFDaDCMB4UN3jxbIS+2vgA9X5EmDOFNrTuRTCRSuYqqcta3bGiNC6KdCDGWI1ZcJb2qj419Eq5iic3XoHK+3V5DBKAJPFBbzfrU7l0iR8q2NBSc1DQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=URdDU8oVuBysxW3/ULTx8oy91qKu12vMuHSFbeITS8U=;
 b=FVMcH/RngOe9G7g8gJPXJDwyuubx/1xVCqDX3uhgumcoscWSmWvGtwr2J2waK5cZjqMm38043HhwHV4canin7vq6aO2gRRIDAsmvCE2bX8fg3ZQwBbr64gs9/dD+S80K9u55a+u9Roa3mGJpH5trCw2bYds7cWGUP9NueBNrE5w=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5476.eurprd04.prod.outlook.com (20.178.115.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.20; Thu, 16 Jan 2020 07:26:03 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2623.018; Thu, 16 Jan 2020
 07:26:03 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "mturquette@baylibre.com"
 <mturquette@baylibre.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Leonard Crestez
 <leonard.crestez@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 "yuehaibing@huawei.com" <yuehaibing@huawei.com>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] clk: imx: pll14xx: Add new frequency entries for pll1443x
 table
Thread-Topic: [PATCH] clk: imx: pll14xx: Add new frequency entries for
 pll1443x table
Thread-Index: AQHVzDnjd2mDRKvXSUifw1iBCyYV5qfs46Bw
Date: Thu, 16 Jan 2020 07:26:03 +0000
Message-ID: <AM0PR04MB4481C67ACD22BFA0DEECFF0988360@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1579157449-7602-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1579157449-7602-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: eeed5f38-e3e4-45db-8f0e-08d79a555808
x-ms-traffictypediagnostic: AM0PR04MB5476:|AM0PR04MB5476:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB547689FE34DF24827045638488360@AM0PR04MB5476.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1850;
x-forefront-prvs: 02843AA9E0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39850400004)(366004)(346002)(136003)(376002)(189003)(199004)(4744005)(71200400001)(8936002)(9686003)(44832011)(5660300002)(81166006)(81156014)(8676002)(7696005)(4326008)(6506007)(316002)(478600001)(2906002)(110136005)(66556008)(66446008)(66946007)(64756008)(66476007)(86362001)(76116006)(33656002)(52536014)(55016002)(26005)(7416002)(186003)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5476;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Md2kMkBO6ra3tiQZ12FZO68q8N3JvpOQj0LVqmz15Ml+erZ3gcjEUpGy1ozqjrUFb8xmCg+a0PByi124xNGrrr4rGYay3O5Qul95S/c3xOxhr13+3lrwV6R8Cbgl48LXAM1PzCiDsqMHdG3215J8UVeBG6IXQYgNKQ1akH//UYrSFxGroB0fvhiOH2YC5NjIPs5bysyLPIMTRRGcEf/IQY9tbiegOKzO00Hn2r9jlz/JL/ZT6s1cQf1/AyVuqHVrwsWvxMqyNSYTju7H7+iMCLauTxhcwNauPrJRhHAQgr4OlxFb12+qbsO1n6eCQpKv0HBbeah72+CiOc6fq/iD7VT4Uh58UqYP2HF1esYyF7Vl3gcLQAzAAOlRuYHjO/V0a5UE+hc4j30WbTZBWQHW+24nsa5PsQY+ku0AH8WkPL4Dvn/ouUZyoq32XbJT0JTdGWfY9n9g/B9c1PfcOGsJe0r7iGlbs/vH5gFW6+cDDvDl8onLoA7j/TGwtZJwSeJm
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eeed5f38-e3e4-45db-8f0e-08d79a555808
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2020 07:26:03.3969 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XvPWbozXrEA1BjAv5nddf4qtGP528Z/yaqcU3V+oUVFVhLDDqgm2uoqfcLgeHCMCvBltX1lZqXaRol6kR9Zk9g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5476
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_232608_688280_244CDD51 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.69 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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


> Subject: [PATCH] clk: imx: pll14xx: Add new frequency entries for pll1443x
> table
> 
> Add new frequency entries to pll1443x table to meet different display settings
> requirement.

Reviewed-by: Peng Fan <peng.fan@nxp.com>

Regards,
Peng.

> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  drivers/clk/imx/clk-pll14xx.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c index
> 5b0519a..37e311e 100644
> --- a/drivers/clk/imx/clk-pll14xx.c
> +++ b/drivers/clk/imx/clk-pll14xx.c
> @@ -55,8 +55,10 @@ static const struct imx_pll14xx_rate_table
> imx_pll1416x_tbl[] = {  };
> 
>  static const struct imx_pll14xx_rate_table imx_pll1443x_tbl[] = {
> +	PLL_1443X_RATE(1039500000U, 173, 2, 1, 16384),
>  	PLL_1443X_RATE(650000000U, 325, 3, 2, 0),
>  	PLL_1443X_RATE(594000000U, 198, 2, 2, 0),
> +	PLL_1443X_RATE(519750000U, 173, 2, 2, 16384),
>  	PLL_1443X_RATE(393216000U, 262, 2, 3, 9437),
>  	PLL_1443X_RATE(361267200U, 361, 3, 3, 17511),  };
> --
> 2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
