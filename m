Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B6691CDB16
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 15:20:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=oP6X+rFBEKmPjUjsmtgrEMI6MSFKlq7Ko/Fjgk5eZqk=; b=apYhfFgoNZgScp
	/S23hv63TJACf1f9BIlKUDSQHAV37P24OansiTcYINDC+dTPf8slKaGAG1BVxzdsxFQmPPNblmPug
	fPlGWRqCcblADcnyxeWNjP4YDXh6sHfbmjOsHF+zHKQesnJGzJ6FPszfB7bnWtKeC+ftM+3pJTxT7
	l9Rj2ha5fRuQelQPmUXsbwPsrGlTbmOQ02Rt6EXEL9YX8UeJxFN1awHQS9MEl//mTWzbUaqhHPsAy
	mWUUejamIbXYF3HvZJYWWt1RbPWulNG9kRNvhnQXljXN3ctLf+WWxWvGkoXl4cEFRV5Gdjs3WSIkD
	JMStgLrStustL0CfvVoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY8MN-00044q-Hi; Mon, 11 May 2020 13:20:43 +0000
Received: from mail-eopbgr00059.outbound.protection.outlook.com ([40.107.0.59]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY8MG-00043Y-2D
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 13:20:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YGY4X7uGRR/pIi4iWspZBWlAB3R0Jw4s9iJCqn/1AsidqfO+pIiFcPSKy3N77/QMfZ3LNLfzuPjKyMdaq+Dj1svccX/KEfXbkJ50iE4rkqv6S5bEUuNAAfsI1X7RGRdXOJTAZSgmFwp5avyOVtS/0mjtsSzDelYl8+XudSs8MPqAeiY4+i1WYp2uWM0wEuzvEcFPElqBCsDhmD/BTYknycE0bOxtM0cOsnnnGEvuQaJUEHXbBa0JMzm8WEPuGwtUIfY85O6nG4PXGjoKpEXjD+6FxPHGr1j4uVHemXnsfI7x1MNbN+MxeB7QAzeueCB0VAXdC/IQLtQ1Z1yHj/i1ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8skQfuzwOlDUAsyUg6p+34Tb1f9ovt9wZHYRtHg0fmE=;
 b=JVLKGrIdQOtiCGe+XRFyKWhIrLgKTPnBJdSbebbov2r1GdMzZfRtk/YPq2N+cz2EDNObUN4ZzY+KldZChCUuXPbNjLYiirdMX0XJ1TBv73DkShC/es7l1rKwUirFQUfSQlwTq5u/Uh4o94UKgBC6dYDRGEj/t8bmNLj9I/X9mZ3PHWRNwJqZtBuzI2SK+doNOKDfG5rq0bXJLFJi3j4mcVedn1eCZRo34vM1+7i1JX/seKINHCOJJ0/SKKvrblTFqaC5zyYGgLKXmZg5dR/7HWwCPu1DuJOB6nZq6Cg+aLCISCwDtTWhzBglei3pzt9+CrDY4DkbkwMxiYmMd8fWsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8skQfuzwOlDUAsyUg6p+34Tb1f9ovt9wZHYRtHg0fmE=;
 b=glYpxoHXjkqVNF5so1A2Pdby+Mu0aeqdbJO204v5oz/wXmhNMT68iV6yxJhD90xugufcnitJu41plJOOMqHmOaA5tIqcM4wUtBvuuNVQW4uowVQ4R+61Dmk/f68fWLT656lV8cfFRl7WtO0UX0k+BLoDUbxjdHTl1fuCkUYnIbo=
Received: from VI1PR04MB6941.eurprd04.prod.outlook.com (2603:10a6:803:12e::23)
 by VI1SPR01MB0358.eurprd04.prod.outlook.com (2603:10a6:803:8d::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.26; Mon, 11 May
 2020 13:20:27 +0000
Received: from VI1PR04MB6941.eurprd04.prod.outlook.com
 ([fe80::8de5:8c61:6e4d:9fe9]) by VI1PR04MB6941.eurprd04.prod.outlook.com
 ([fe80::8de5:8c61:6e4d:9fe9%9]) with mapi id 15.20.2958.035; Mon, 11 May 2020
 13:20:26 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Wei Yongjun <weiyongjun1@huawei.com>, Georgi Djakov
 <georgi.djakov@linaro.org>
Subject: Re: [PATCH -next] interconnect: imx: Fix return value check in
 imx_icc_node_init_qos()
Thread-Topic: [PATCH -next] interconnect: imx: Fix return value check in
 imx_icc_node_init_qos()
Thread-Index: AQHWJa29mXPWwTufek+ikA2u4wg9vw==
Date: Mon, 11 May 2020 13:20:26 +0000
Message-ID: <VI1PR04MB694150C03CC158988F7124A4EEA10@VI1PR04MB6941.eurprd04.prod.outlook.com>
References: <20200509030214.14435-1-weiyongjun1@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: huawei.com; dkim=none (message not signed)
 header.d=none;huawei.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [95.76.3.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: bb8b1648-599f-4c12-add1-08d7f5ae11e7
x-ms-traffictypediagnostic: VI1SPR01MB0358:|VI1SPR01MB0358:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1SPR01MB0358160C9F273B167C7EF680EEA10@VI1SPR01MB0358.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1091;
x-forefront-prvs: 04004D94E2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: c1vQa+6g6VonddA+eXM2cc7MTm3t9YEwLXZB74IoElKOXjkmkfAySoSOHRChE4qfW0fHVVzA8E5Lkx2BwLnS7fwD38vgIWpMP7u5R5J5g6x89FSIL8+m8yQ3j9m8UkKAwqUhphcuHKzoU0a8InsotsB4z60ZfTjOdjtam7h0HI39xfzKHgf3W0hhkzKpW9nMGjMGfx6BfgN4nOXRZLl+WlvAz48VqBIk7wknKsXqZzne1nR98J4Gsq+hLlUNXcrNvAxCXpBpcKto0YPxIjFfxHuYcPmkg22xULvDb7zD5Vjs3hfoZey0CIrYNYaGMULmcT0IJ50zdtXW367KVTBJJciIWFOKURI1PT4oqplf10/SKyg9lvIW5MZXQBKt2KFgVp7lKlK65zQkXoQa/olNZqO5zekAnGSJr6zsBphSLlTCNDsIsz7oYoxHssqlOc4NdEVdp+2jTeWtgLrI6I7kBQHVUw0ZBke6AtCQMsF0Lq9oCfw3SeSZuZ6eJhmdWz2/geLeUvOmTzp1JFZEnnycsA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB6941.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(136003)(376002)(39860400002)(366004)(396003)(33430700001)(26005)(53546011)(5660300002)(8936002)(316002)(186003)(52536014)(8676002)(66446008)(4326008)(91956017)(54906003)(9686003)(478600001)(66476007)(66556008)(64756008)(55016002)(66946007)(76116006)(110136005)(2906002)(71200400001)(33440700001)(7696005)(6506007)(33656002)(44832011)(7416002)(86362001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: mbK3G43Egfnm1/RIFt4/2VSI3mI0+YV7b1V72Q0wS9w1Z/j2yD4LUjRrQdbjJ7vLoeP1vD+ZPSDMDXEk3KABN+4Af+gZQt+eY93rsAWMwvdYRrflI83RQKO08ThCZmaykif/6l8BhX2GtdJPhyfXWnL+ha296gtKeqoYcd0negNWsS3TABIPB3EeA/KslGsHo7YXKa2fgzhXEUPY/D4PwJMeXN86KVsSVmHp0bOzOvdCN+FK+OIQPFmbh4+1jkQSQe9I6PlmONFqzIGGcEwxfBcsq8l8umsTzsuQTZrGZ1wfxSd02WOMQ+fF4UB76QfDo6gJu1fk/zAXRl4fUWG7iVAoYoqKxKZ8w1Y6+MnrJUsgp7xgq3jAXxQ9SV1gRwPjvMFBgcqUgtoM/Bgjmq/RZo6IgC8yYuPUsN07XpIgdrIW+0XkSpS+zxtX0pBNYdQFyPh6JnMPkBVqI96/an6w4cOWuJYzXzIfm12MWFtc/MM=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb8b1648-599f-4c12-add1-08d7f5ae11e7
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 May 2020 13:20:26.8729 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Sx2/F39cpUY4i3bmB3XZH8uX2MqLxcCdg2jFq0AD9ZXxPRLdik26gzwXeFcBEODmknFl1dBLtqYZ6BLNU1Pn1Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1SPR01MB0358
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_062036_106325_6DFEE821 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.0.59 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [95.76.3.222 listed in dnsbl.sorbs.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.0.59 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 Hulk Robot <hulkci@huawei.com>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Alexandre Bailon <abailon@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-09 5:58 AM, Wei Yongjun wrote:
> In case of error, the function of_parse_phandle() returns NULL pointer
> not ERR_PTR(). The IS_ERR() test in the return value check should be
> replaced with NULL test.
> 
> Fixes: f0d8048525d7 ("interconnect: Add imx core driver")
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
> ---
>   drivers/interconnect/imx/imx.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/interconnect/imx/imx.c b/drivers/interconnect/imx/imx.c
> index 6884212511f0..ac420f86008e 100644
> --- a/drivers/interconnect/imx/imx.c
> +++ b/drivers/interconnect/imx/imx.c
> @@ -90,10 +90,10 @@ static int imx_icc_node_init_qos(struct icc_provider *provider,
>   			node->name, node->id);
>   	} else {
>   		dn = of_parse_phandle(dev->of_node, adj->phandle_name, 0);
> -		if (IS_ERR(dn)) {
> -			dev_warn(dev, "Failed to parse %s: %ld\n",
> -				 adj->phandle_name, PTR_ERR(dn));
> -			return PTR_ERR(dn);
> +		if (!dn) {
> +			dev_warn(dev, "Failed to parse %s\n",
> +				 adj->phandle_name);
> +			return -ENODEV;
>   		}
>   		/* Allow scaling to be disabled on a per-node basis */
>   		if (!dn || !of_device_is_available(dn)) {

Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
