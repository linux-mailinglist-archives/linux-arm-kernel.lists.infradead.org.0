Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7FA4F1093
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 08:45:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gX1p+xKtvf4im3CrvVV9mz6UpjN3cSAwZEOdSEUjhkA=; b=K1PNzZMvLtwUZY
	/jd9R1XvZJdazTHDU5XVuMhkBPNW9W43YoYA4atvKSrmkHhJSVbzcif2Wu30ad2GjK8MLEMwK1zOk
	7Lyf8tPPtxFYhp0rKiM3A9pxBhMX+BZh0tlHYzDzOcalhT9H3ElpPpcTO5giwyOOYa8uVU5NirGak
	J66DRsr9gzpng7h2iAINMTi2VhP/LgNzsaZvim1sV718gUEoGgfT4qEi6E0TYF+LUthQyk98wyg35
	J+hhqfIOWpIpTyqSCfYcO7N0/vFbr8KPhxrLx20NdAa3bSf8hGr8urNnnRctJT4V6WQJahujY21xX
	Gm7AMP3I/JWZJ9WOp3eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSG0B-00077R-2K; Wed, 06 Nov 2019 07:45:15 +0000
Received: from mail-eopbgr70078.outbound.protection.outlook.com ([40.107.7.78]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSG02-0006Ef-8B
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 07:45:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jlakg06RjDkIE1KDSVYBM9NXNvTX0Fwk1Z88Xi3zq1CHUAjRilzyKBNy2bnMQJ3kSnkCGaIW/rMABA3Go/ylobXqnvF9LE6pgbaj+S6yzJwhYhzKeiHHifoqF54s2Qdi3TSo0ecTD2GwwEZ3tbj+hhckjkITg1Na5G+LMqY0e4LId+on47IC/v05NUzfmvMiTH7w0mpaWBQlWN+Z1tBA9q+8tCVseuZnp+314mueJfpJhwbtrffWxaayK86B479iuE6tgr1QcznDUqYLcm55O535RfhOGBOdDQdszHyLsDDJRe8xt1lof4hR7xA43xQfJaPrpgxzoEZh5q6yHKL23A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DEp+4k3DsabS3lPCUEm6IwDjGzuiraozcekKoU0utuw=;
 b=a6u6xnCj7MA/vxhM8vYYLo1qOVqJvsfxbPN/Fsn/EvTqbbBmyiy2UcwY6I/e6mgLv2MH6lfciWepne0rfeuWKRIu8mzLJEhK7cuJ2zCO/tJx10Z5Yi4iQKc9RmFgBLQUQhWTYOXspIHJoXZr1AAExIuXdUbLBy7lnjc6kR4X2u/Bgi8eZwCdjo+XEGlVc4dP9KSpjUNtNQvbpHU/84NXZUGltrHDsbbOWebmjUXta4yjr+e+E4Mkcm1E40JpY7lP7FR20ATe5CAuI6K0Ed9zzlx+UHRR2h1yaU1iRGBUwdRuZP+L0ehQotPFJK2U8mjiVklRjgyHnYsqjldBhb16ZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DEp+4k3DsabS3lPCUEm6IwDjGzuiraozcekKoU0utuw=;
 b=abpYqtWBQQZdnl6Tt/aXybxHaHaUSxz0YNcM5CNNXun7e2xRLoTI5r3uI/HCTT/JDfecU6kHF4Sq0DIAgzAtpKgVJHND/C8L8lQBmizu3igZJadwyyQD/l9nBqriK9BXkQcYpsqZYug1H8cPb+glISo7H/V16sgDon9RSSCcRT8=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB3956.eurprd04.prod.outlook.com (52.134.93.159) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Wed, 6 Nov 2019 07:45:02 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde%7]) with mapi id 15.20.2430.020; Wed, 6 Nov 2019
 07:45:01 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH] clk: imx: pll14xx: fix clk_pll14xx_wait_lock
Thread-Topic: [PATCH] clk: imx: pll14xx: fix clk_pll14xx_wait_lock
Thread-Index: AQHVlGNoepC2TDBj7kaCYRyt+h3yD6d9w2gA
Date: Wed, 6 Nov 2019 07:45:01 +0000
Message-ID: <20191106074500.vwihbt6s4dwqyun7@fsr-ub1664-175>
References: <1573018178-14939-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1573018178-14939-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM4PR0101CA0057.eurprd01.prod.exchangelabs.com
 (2603:10a6:200:41::25) To AM0PR04MB5779.eurprd04.prod.outlook.com
 (2603:10a6:208:131::23)
x-originating-ip: [89.37.124.34]
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 44bb08a1-bf45-4b4a-f4ef-08d7628d3b01
x-ms-traffictypediagnostic: AM0PR04MB3956:|AM0PR04MB3956:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB395665F85B4C56349A243B5CF6790@AM0PR04MB3956.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 02135EB356
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(7916004)(4636009)(376002)(346002)(136003)(396003)(366004)(39860400002)(199004)(189003)(6512007)(316002)(64756008)(6636002)(5660300002)(66446008)(2906002)(26005)(305945005)(102836004)(7736002)(86362001)(6116002)(76176011)(14444005)(8936002)(8676002)(66476007)(44832011)(66556008)(6506007)(3846002)(66066001)(71200400001)(6436002)(71190400001)(6486002)(478600001)(81166006)(6246003)(99286004)(476003)(9686003)(229853002)(52116002)(386003)(256004)(54906003)(81156014)(446003)(486006)(1076003)(6862004)(4744005)(25786009)(14454004)(66946007)(4326008)(53546011)(33716001)(11346002)(186003)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB3956;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PoAT/lwDNarbS17vfheekcGmymmENkNYSI+U1qLmqUpBZ2BgO4xBagbMGTLRBW+FWidooLGz4kBjEuH+YgYG8ImGvv5k8czCvwZvggNCQ+8yzD4Yxt4LRG5mDk8RT6eVwwoeq/yJOyEAHnWG5xzZ8wo5GzycKGv+0TaUMuVTfcf1dv7qpjJOhm1/JdF6YsCtCk2Tk0grUY76em95RMnhXkPy/KcExX1XzyGJsvKTE+dWUtrf/7fLpeMxSG08pCED4dR00g5J9gKrK95umpdkajl0cx9cEThmSkaz8RPqiTaehpV9N8y0YGetRRkXTyGxwFG3uRbNhi1eTaLAzToMSVRwtyFPuH4avgsZ0ZyXf0AIZxT8c5aEAg/fo3tDkwAsE+J5eifzHUdSX5JpulyY8S/inmQfE4JUS/1DgK1NLvwHVv5vqhEuvirno9WSdPu7
Content-ID: <3C2A340762855A46862663A22A7574CA@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 44bb08a1-bf45-4b4a-f4ef-08d7628d3b01
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2019 07:45:01.8697 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6qHDHv/EU/5rIHVd3bzy4CWxTEnN0HJAlOu8krcC3jnaS+FNLxw5URS1aRaWjAZbTx3kW3dZR5rEA1p/kI2wQg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB3956
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_234506_316630_F68DC919 
X-CRM114-Status: GOOD (  16.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.78 listed in list.dnswl.org]
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

On 19-11-06 05:31:15, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> The usage of readl_poll_timeout is wrong, the cond should be
> "val & LOCK_STATUS" not "val & LOCK_TIMEOUT_US".
> 
> Fixes: 8646d4dcc7fb ("clk: imx: Add PLLs driver for imx8mm soc")
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>

> ---
> 
> V1:
>  Hi Shawn,
>    This patch is made based on 5.4-rc6, not your for-next branch,
>    not sure whether this patch could catch 5.4 release.
> 
>  drivers/clk/imx/clk-pll14xx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
> index 7a815ec76aa5..d43b4a3c0de8 100644
> --- a/drivers/clk/imx/clk-pll14xx.c
> +++ b/drivers/clk/imx/clk-pll14xx.c
> @@ -153,7 +153,7 @@ static int clk_pll14xx_wait_lock(struct clk_pll14xx *pll)
>  {
>  	u32 val;
>  
> -	return readl_poll_timeout(pll->base, val, val & LOCK_TIMEOUT_US, 0,
> +	return readl_poll_timeout(pll->base, val, val & LOCK_STATUS, 0,
>  			LOCK_TIMEOUT_US);
>  }
>  
> -- 
> 2.16.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
