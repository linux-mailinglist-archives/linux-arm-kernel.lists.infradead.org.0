Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47192139DD6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 01:12:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=H9Vc3ddIWTqB1bdeWiikOYpX2bIn0OQLdm4HW1JylHA=; b=nFUj1gchwhccGv
	ZXRAT64bcX5tEwZ3OeWHVfC8y9kAC56P00FT8YeS8UK4BX+PwGyLHcp38R3MEqK5NOI5mhdMxQQwA
	t8PurfRfBuSClUxmAM8MOG1eGBydG7+VWxkMbeSO4A4Qwi2zDmBcbObhwRDAnCiIwnKOVnwZADPyr
	jBSGpMNcJIe3VnZ//6H9kR6PNIJ83bIV+wCIXTdham7iOSpY8KkT8iZpUzj+K+Sn04SX9uOifxmGH
	noqoJL/6zXrDoUgS6bJJq23K6H9GzuMkG1dNPeFits6VctD8mlJ23okFzkiDDhAf5Bw23dmk4qzm2
	0GHYANfOjKT8oWsmgevg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir9oP-00075V-3o; Tue, 14 Jan 2020 00:12:01 +0000
Received: from mail-am6eur05on2044.outbound.protection.outlook.com
 ([40.107.22.44] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir9oG-00074X-Tt
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 00:11:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZuLuhEajycc8oD/8GCqqNB2r7PDbCql614/wqw/3WZ39mWArdn8mU5ZT4O5ajD/sY/RF9zmpRiNdG0sNNmf/WUZ5STELQ+F9RuTZ+nuqDPvnnsPDZhh2/45QFGX0JJM+q9FYNRVW/p7eKOWz6PCpOKD38q/EVMK3AQy9z1NHfq4g9kpq5myM64tFVenP61osQ9KFCV8Q7uvpAu/9rCcRtkfFpuUqn+57LW5HwqARHo4+Tn+h+yLiMaFixrjJtYBtwlRwJbuEwzTp6DtGBWn6W4NA62pWJds08Osf/jMiOGCwVjFTz1kIBN9Z1t3U08CkEuwqZm+uHH2Kt7uxwRbArw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ky4F/SUWAnzMk9SKKIMsqiDZS70SLre1zvgzxtY2Scc=;
 b=hv+ub9y2bqhmfZXDzjY3IZCZYFiMJPqdAtfytUHMpiyHD4T15Px496OjY02zZhsrDCgb6WdCwBHNPmZJu56pwftVMF5numlh18IW8faUru5BlYN+Z/Fid7l/gOZX5jYmxKzSnp4doFnwxNe8OkTMnFs+/8wm99SjIzfyC0zRSMpWJMr6v0s62OgFXm9++qDzB3HBiIr4/p8zAzCYvmfTxBCqc6w9ZiIZn/p2wP1oB4lmII30DV0TI82n/MAUO6x/2pFrsOWD9kzyLVJi0ms2G6Hy6B5OiP6JP8i3ax63/2oExkTIP+EAgpBeOBeYTQ4iEzON7dDhoY7N0xTFOSP6rQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ky4F/SUWAnzMk9SKKIMsqiDZS70SLre1zvgzxtY2Scc=;
 b=OukCMUraG/XfMFPUv+ggYDtqMpWIcGX0KgLoRgry0x1KCdQQ5vBkxjXIdu4ChT9y59EgEuWIEl4dmHUcMbGYTTE67oY6tPr1g2n1ZQezDld4dNS7xJ9C0sF9mCPoOwl2hSeQdhuZ7RENAcgM4UOjJq9BHJsPHRqQPJ2dDCXAzCk=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB4957.eurprd04.prod.outlook.com (20.177.48.75) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Tue, 14 Jan 2020 00:11:48 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::58c5:f02f:2211:4953]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::58c5:f02f:2211:4953%7]) with mapi id 15.20.2623.015; Tue, 14 Jan 2020
 00:11:48 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH 1/3] clk: imx: pll14xx: avoid modify dram pll
Thread-Topic: [PATCH 1/3] clk: imx: pll14xx: avoid modify dram pll
Thread-Index: AQHVvvFWN8I9RWVOxUWrR8yNvTfk6g==
Date: Tue, 14 Jan 2020 00:11:48 +0000
Message-ID: <VI1PR04MB7023F51C86DB71DD22F7761BEE340@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <1577696903-27870-1-git-send-email-peng.fan@nxp.com>
 <1577696903-27870-2-git-send-email-peng.fan@nxp.com>
 <20200112023248.GY4456@T480>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 7ff15e71-21a6-4294-cdc0-08d79886594c
x-ms-traffictypediagnostic: VI1PR04MB4957:|VI1PR04MB4957:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB4957D64BA1B05D8521CDF97EEE340@VI1PR04MB4957.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:489;
x-forefront-prvs: 028256169F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(346002)(136003)(396003)(366004)(189003)(199004)(478600001)(33656002)(6636002)(4326008)(9686003)(44832011)(2906002)(71200400001)(54906003)(110136005)(55016002)(5660300002)(52536014)(8936002)(86362001)(81156014)(26005)(186003)(53546011)(7696005)(6506007)(81166006)(76116006)(91956017)(64756008)(66556008)(66446008)(66946007)(8676002)(66476007)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4957;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: x8dKQMkWJ05Pd9kNTMs7XDntErB1cBpxQmPpenyp46llTLF0uNFtfJFwqmkDqfX//klGFev5fTukLQekz+HYgdK8vc0URa4bF4AsbWQ34ZZ/aOlH3Jl43KplxO88iPLSPwoXQbPlIJ0VMUj+mDUiR7UQSnQmqRF05OJbWpTQWHBIEhQEfrJazgymxqWcz0JEDRR8UOdKQQO3asKpEScLNWkJgRefO9V2quXby1Mgo5qpk0ToK2NVKQZ50VoOuHrUdO82188fPpSHeKIu+AFfBEnxDv08rRrady4GGeIlzGeY1obCCZE/8ohP41VPVhOc5oSQHxtYzHWGaYsMzwfbmsFovb4h+DiPb/R2xl2vx5S+DoDozCY0iIOpQrOyScmnPQ4d0wpE+9zpJqQZ+qnKm14coJk2sor0uSZro2IMsRnP0ZAG5m3xAjnECbU3TNi7
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ff15e71-21a6-4294-cdc0-08d79886594c
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2020 00:11:48.7011 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: y3KXKuIlL+P56/AnWSHn7t4W8puwQEfrV8uPQAec57w4ArgNBOLFQc7beOyW9mg6nxiOFu0bVecTatZtOBKX3g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4957
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_161152_967398_B66ACFC0 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.44 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12.01.2020 04:33, Shawn Guo wrote:
> On Mon, Dec 30, 2019 at 09:13:00AM +0000, Peng Fan wrote:
>> From: Peng Fan <peng.fan@nxp.com>
>>
>> The dram pll is only expected to be modified in firmware,
>> so we should only support read clk frequency in Linux Kernel.
>>
>> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> 
> @Leonard, do you agree?

I'm not sure this improves anything.

As far as I understand the only way this could be a problem is if a 
driver deliberately does clk_set_rate on the dram pll and this shouldn't 
happen.

There is an infinite number of ways for clock consumers to break the 
system by manipulating clocks and providers don't need to guard against 
every scenario.

>> ---
>>   drivers/clk/imx/clk-pll14xx.c | 11 ++++++++---
>>   1 file changed, 8 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
>> index 5b0519a81a7a..9288b21d4d59 100644
>> --- a/drivers/clk/imx/clk-pll14xx.c
>> +++ b/drivers/clk/imx/clk-pll14xx.c
>> @@ -69,8 +69,6 @@ struct imx_pll14xx_clk imx_1443x_pll = {
>>   
>>   struct imx_pll14xx_clk imx_1443x_dram_pll = {
>>   	.type = PLL_1443X,
>> -	.rate_table = imx_pll1443x_tbl,
>> -	.rate_count = ARRAY_SIZE(imx_pll1443x_tbl),
>>   	.flags = CLK_GET_RATE_NOCACHE,
>>   };
>>   
>> @@ -376,6 +374,10 @@ static const struct clk_ops clk_pll1443x_ops = {
>>   	.set_rate	= clk_pll1443x_set_rate,
>>   };
>>   
>> +static const struct clk_ops clk_pll1443x_min_ops = {
>> +	.recalc_rate	= clk_pll1443x_recalc_rate,
>> +};
>> +
>>   struct clk_hw *imx_clk_hw_pll14xx(const char *name, const char *parent_name,
>>   				  void __iomem *base,
>>   				  const struct imx_pll14xx_clk *pll_clk)
>> @@ -403,7 +405,10 @@ struct clk_hw *imx_clk_hw_pll14xx(const char *name, const char *parent_name,
>>   			init.ops = &clk_pll1416x_ops;
>>   		break;
>>   	case PLL_1443X:
>> -		init.ops = &clk_pll1443x_ops;
>> +		if (!pll_clk->rate_table)
>> +			init.ops = &clk_pll1443x_min_ops;
>> +		else
>> +			init.ops = &clk_pll1443x_ops;
>>   		break;
>>   	default:
>>   		pr_err("%s: Unknown pll type for pll clk %s\n",

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
