Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 107A41B593E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 12:33:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ICRZ0GUZLgSqGpmT+63cIZdKcGp1GS2ZL4nudSwwtsM=; b=MFY45mqh18AGuh
	LL/cTB6Kb3hb0oMfOjVkCcutYQcv33teQuT3spnNaBAxaPdmyn7oBF53RbLjw8OYN4Jv3vxCO7TRL
	+sfKZyarhwOQJh5PuPzjDpzjfb1o339OLUwFcsAeqL24qriqv4jw9YLMrPMz1z3SZzJm5vyrFdaC9
	Mkd6s4mXFeP01rUA0xT7bub/qOyU69RPIGBHxTMVkNehNHhEMzt2I6FpZPWazBN251QWGQ22Ojo89
	mCXtmIh2HHL2co9RdfiDiNnaIDP98XV7iHM0gCrW5wvxyWc+c5F87Ronb+dtcrpzcmtezP27twnqU
	DeLQbOiCxaqSqccvi4mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRZAY-00076a-LW; Thu, 23 Apr 2020 10:33:22 +0000
Received: from mail-eopbgr20081.outbound.protection.outlook.com ([40.107.2.81]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRZAP-00075Q-FO
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 10:33:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cWsOpDYUuSQ0T/nTaIbj16F+qPdYPv2xwTwsy4UrXC3rClxUaghv8ROqD1TXT0YlhWtV+fCBhlvBUW+YZ9Ez5n+jOayEALRgjTKQIQU1yD90HEXcEbJkofUBwuQK+FXRc/QsivqjLOwIUKigJjGkvlddsiKfU6FeHqwHjjI1h06fPMPZltANK4xPig4frDri5El8bDyQ2dDwGNjDfM+ptrTvlx6YhZXtZVJMdHMc2QtaZG9BPIDSLF9Ouf0TgCeZzBVl0V0H0oJ1mUwzgFPg0GOOcVyQNHsQ4wDz/nHG6ocN2ddp2jsSsmyG7qG5lJud85uwjTc3ZEXDadQC9d8E3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/GH7jddGNw8L76ZIqCAgKhlt5Iin9pNRtgPLrCuVM44=;
 b=XDARzUEdoLaawxyeeUt5SwlCrU7mfrxlFo7HWX+cNvdxNC4HnP2ygaCJB1gUc4LI7NR0a5Jw0rnjSitB6c76NYA07Q0F3WZqR2rZhB8as9u8AUeiB+9/rUdGyZLl/t7x0Qpwrdct/fUSos1RyMLNiiqS0/Jluo9a176Vvh68pNbcl4mCThFIwSXxf9Rx+ldVJGOqbDv+5ZONV4KYWMnjO0DiIqwNz0rEyQupFiluWLqsCe1DO27HNYnGaG8sF7B1gwFT9v7NH5nziuGF+oar+wuKK42XfbVjPAbk+HX90CLUlZF7C87jvQEIHSqiqrZhY0sjhjgEcrYvTnAX6pOfsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/GH7jddGNw8L76ZIqCAgKhlt5Iin9pNRtgPLrCuVM44=;
 b=ITMDRs6SJGW6QWSOJbPiZNfHzGzotHw5P4BbmJBWoHRGuJfkbvR7YIaLRebBift6fTYlRNaY9Gi4x7sOwR6D9h1V37X3dEdXWW95nFUWPI1eiCm7ZOZvSi+bZZ5FUNndXBvcEle7BLLf7ZkCY3WE385fMXmesG7KJWqrIzblDr0=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB4886.eurprd04.prod.outlook.com (2603:10a6:20b:6::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Thu, 23 Apr
 2020 10:33:10 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3%7]) with mapi id 15.20.2921.032; Thu, 23 Apr 2020
 10:33:10 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: RE: [PATCH 4/4] firmware: imx: scu-pd: add more cm4 resources
Thread-Topic: [PATCH 4/4] firmware: imx: scu-pd: add more cm4 resources
Thread-Index: AQHWGT4B5RWzQBophkGzJ+N5J4+FiqiGgKjA
Date: Thu, 23 Apr 2020 10:33:10 +0000
Message-ID: <AM6PR04MB4966A8D160E0F1970A24E9F280D30@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1587625174-32668-1-git-send-email-peng.fan@nxp.com>
 <1587625174-32668-5-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1587625174-32668-5-git-send-email-peng.fan@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: bcf53d01-6b2f-4011-01b9-08d7e771b83c
x-ms-traffictypediagnostic: AM6PR04MB4886:|AM6PR04MB4886:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB4886DFE9B26A9A97350E903E80D30@AM6PR04MB4886.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:262;
x-forefront-prvs: 03827AF76E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(376002)(346002)(366004)(396003)(39860400002)(136003)(52536014)(110136005)(2906002)(54906003)(6506007)(4326008)(186003)(316002)(55016002)(7696005)(26005)(33656002)(5660300002)(9686003)(86362001)(478600001)(71200400001)(66446008)(81156014)(66946007)(66476007)(64756008)(76116006)(44832011)(8936002)(8676002)(66556008);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +kh17lqJJTlJSvx7Y0+BOcHVGTteBdSm+EzXXz7woNm09+fvkIBeLbrszuPatNKtXG/GCdteSSF3t0fS+vZNtYtvXag+BF0fp/4bpNdzJKiBmNqW/OUQNiAGJVJ5oDqijoBwIPto7EaH6oj12PMAH9O4M584X6O+x4WtWgJRZISakixxQDX6tZ2hfpPZ4mN5L53rW4Wj0ijC/qeZRUhxOgYhJW6dKEiFRJ+nqAh1S30wo2ukRsUvnr3oxxe6tL5fPe0/OrDddCxWlDVLA4O65/4yl+OkTD51BF2T3sMT2yVFDfhwvftEai8PYuU14cJ7k2xj/bgq6n3xYHucoZd6tUcSIJ1x2vBCo1Q+7RaBzvmS9X7zfhpO54OQVPGq7IsXE3G2CcT9FYJmRCTjllIVzvC6Da0JsXzmXHvZAdMJjfsL4WxcKdDM16jvSx9UcyQD
x-ms-exchange-antispam-messagedata: 71oE0Fs5WckwVfNMLzOltOp/8GNu+CNq3T1+z/kXHS/czMifKXca/YJe2O5rtuMLY/XhvVvUhdHWrNDBKZ8v2AsEuNaNjE5NFwTt1yvxrP1gout/OaN1wPHnxugokplb8Ex/560UyZSFftOmu927yA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bcf53d01-6b2f-4011-01b9-08d7e771b83c
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2020 10:33:10.3592 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /j/61+4RgBfPMu6gvfA8PYuc/pwZUmOEYXCai9puwj830LGhVVsgrk/X5Rni2LaCr+XF1MigflYTQYhIe8hjlQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4886
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_033313_514218_6CF75904 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.2.81 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "festevam@gmail.com" <festevam@gmail.com>,
 Joakim Zhang <qiangqing.zhang@nxp.com>,
 "linux@rempel-privat.de" <linux@rempel-privat.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Peng Fan <peng.fan@nxp.com>
> Sent: Thursday, April 23, 2020 3:00 PM
> 
> Add more cm4 resources, then linux could use cm4's i2c/lpuart and could kick
> cm4 core.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  drivers/firmware/imx/scu-pd.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/drivers/firmware/imx/scu-pd.c b/drivers/firmware/imx/scu-pd.c
> index 7b43bd63cc1e..2fa86be2027a 100644
> --- a/drivers/firmware/imx/scu-pd.c
> +++ b/drivers/firmware/imx/scu-pd.c
> @@ -170,6 +170,16 @@ static const struct imx_sc_pd_range
> imx8qxp_scu_pd_ranges[] = {
>  	/* CM40 SS */
>  	{ "cm40_i2c", IMX_SC_R_M4_0_I2C, 1, false, 0 },
>  	{ "cm40_intmux", IMX_SC_R_M4_0_INTMUX, 1, false, 0 },
> +	{ "cm40_pid", IMX_SC_R_M4_0_PID0, 5, true, 0},
> +	{ "cm40_mu1a", IMX_SC_R_M4_0_MU_1A, 1, false, 0},
> +	{ "cm40_lpuart", IMX_SC_R_M4_0_UART, 1, false, 0},

For consistency,
s/cm40_pid/cm40-pid
s/cm40_mu1a/cm40-mu-a1
s/cm40_lpuart/cm40-lpuart

This also applies for the following part.

besides that, you can add my tag:
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng
	A
> +
> +	/* CM41 SS */
> +	{ "cm41_i2c", IMX_SC_R_M4_1_I2C, 1, false, 0 },
> +	{ "cm41_intmux", IMX_SC_R_M4_1_INTMUX, 1, false, 0 },
> +	{ "cm41_pid", IMX_SC_R_M4_1_PID0, 5, true, 0},
> +	{ "cm41_mu1a", IMX_SC_R_M4_1_MU_1A, 1, false, 0},
> +	{ "cm41_lpuart", IMX_SC_R_M4_1_UART, 1, false, 0},
>  };


> 
>  static const struct imx_sc_pd_soc imx8qxp_scu_pd = {
> --
> 2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
