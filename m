Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B717DCF46A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 10:02:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xFiWjy1M+qXe/LL08wDtspGwL+pRFvzHsHus4+Xj+f8=; b=a9W1GoweVLhuEA
	eEf8s3yUT3+MuHR+FFjieW7KcqnsT2856N9nrRi9/x7Ssu8NVdmlT6GLcrnTxOT31zw1DnPgDQz3K
	GLon011NP+VjAW6A1TrRF17jLHRqvjVwudl7sPlIKYKuXNJ4I/bBQxA79MjZG3Z8pjaytnzhBRlud
	JE47rGvEx6d4HaQZwODi3AUExY+011U6SkHWXsO67DCV95Sut9ygtuOEC4djR7d1TfLk3etzQu/do
	7TY8FOcg8V02kXTQSMGrYjGZEDFhoBMetM32ixwNP4qU6ck6wFsTQ/Aacz1atB/fDJbry1CwSnkHG
	VtDyDs+qiCx+BEwzKnNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHkRI-0008Uc-6w; Tue, 08 Oct 2019 08:01:48 +0000
Received: from mail-eopbgr60068.outbound.protection.outlook.com ([40.107.6.68]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHkR9-0008Tf-CJ
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 08:01:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FIefr91/RSxFbBIbPEGa0r+se4lDPrOtgst46w/Phrcq/ZR8UXXdkKjkBkZBI9FDCv7Pw9smkWsuQ5oXSQMAwOKuqZPmwisx9GHQjMNLOrK3xhezzPNB0tr8sGwzWZrhUn6l4lkOosySROM0MzwnFcCnENCZr4iKG/WNai2ike+h+qOOnUsy/PJBMjy2Uf3rWEAlzmppZEpHftKJw1JMxfKwNX4NpDUPIb/0oSsALoiJCrVQlybJEoLSbWMXzjUhUvzIy0bSecZPNWKu1D+0ox0MCT1X4qpmFOUemNsWWdsiDZbKJ2w8cOiLdmjDsalcKS4Sk9nAdVZmfYSc81EXcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nM7QX7imgimnVbgWWr50R0hlf2OTQPRTNZddCEFI0PE=;
 b=RAMzocQIFZzKb8qdbhxxCkl9rFRUjXzEx91fmplAQldnpqd0FAaStAcloQX32or+E9R9uI6FiFxV+43LYyLwgSUGC/nRwOalkovI9VKZMOfngBug3Msh9Hk+pMipU08dAA98MtEi5OR/HCq/mJ3GvzWrhlQdkOyTyrax/nSoeBgMW6WfQiUQ1NC4BajVr7rpN+cQsjnVI3sSLnP9/C1jHj3yHK/Mq1ZHGqHCO1haUPDNdyluFEYb7BUbnd+xfVk/ER+w42OtLXOe78b+3zsLkVlb5WyafHPyN0gyqGDEnd4Y6Vt+TaxKBlANEOcSrvs7EKPjSCECCZCqsG9XoNQatw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nM7QX7imgimnVbgWWr50R0hlf2OTQPRTNZddCEFI0PE=;
 b=IhnF+al6qI/ydni9CYAGLdK0jGzq+Tg7uQN4i7uOJ+6XoSXuqXUMu0mCKYMkDXbDXDpjl+nVbtMjrsdXSoJGiHUoRcufMiS5JTEwi0oCeWi12APG2wmnG1UIq17G38G3YXW9sIsZvrgLrVR2Lbyd+s18HJCrKOS/tBx4Dfv3Rd4=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3770.eurprd04.prod.outlook.com (52.134.73.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.22; Tue, 8 Oct 2019 08:01:36 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d469:ad51:2bec:19f0]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d469:ad51:2bec:19f0%6]) with mapi id 15.20.2347.016; Tue, 8 Oct 2019
 08:01:36 +0000
From: Anson Huang <anson.huang@nxp.com>
To: YueHaibing <yuehaibing@huawei.com>, "mturquette@baylibre.com"
 <mturquette@baylibre.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, dl-linux-imx <linux-imx@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Peng Fan <peng.fan@nxp.com>, Jacky
 Bai <ping.bai@nxp.com>
Subject: RE: [PATCH -next] clk: imx: clk-pll14xx: Make two variables static
Thread-Topic: [PATCH -next] clk: imx: clk-pll14xx: Make two variables static
Thread-Index: AQHVfajsFBVx9df7zE2zExgzoz0oladQYR3w
Date: Tue, 8 Oct 2019 08:01:35 +0000
Message-ID: <DB3PR0402MB39167DC3767F8EBD53D7FAF0F59A0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20191008071908.24568-1-yuehaibing@huawei.com>
In-Reply-To: <20191008071908.24568-1-yuehaibing@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1fd07922-b4f5-4e1b-2465-08d74bc5bdc3
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: DB3PR0402MB3770:|DB3PR0402MB3770:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3770404C69BD4349293A6235F59A0@DB3PR0402MB3770.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:58;
x-forefront-prvs: 01842C458A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(376002)(346002)(366004)(396003)(199004)(189003)(33656002)(256004)(66066001)(2501003)(76116006)(6436002)(8936002)(66946007)(99286004)(66446008)(476003)(14444005)(7696005)(44832011)(86362001)(229853002)(486006)(6636002)(25786009)(66556008)(66476007)(64756008)(6246003)(2201001)(76176011)(9686003)(74316002)(54906003)(110136005)(102836004)(7736002)(446003)(316002)(5660300002)(4326008)(305945005)(81156014)(81166006)(26005)(71200400001)(52536014)(71190400001)(186003)(2906002)(55016002)(8676002)(14454004)(11346002)(478600001)(3846002)(6116002)(6506007)(7416002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3770;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +Ek5zK++7ULOmQDyc5e3u69NyUKLNzSlo5wLuFSVnblp/o2dzHjCxlnM4t8SAHA9MOp8WF1wBjKiObpXChk5Oo0ItS1lcLnaPQ7hqOPl4oNHJlvo9OTVmud1PQAkZ5/zIJLv7uLE5tleMzZPrQATfN65NEl0NUnmsSLM6il79mTNnO+4qy5haiZVJS2Bk8D2ECdzjs0ayeH58qdOlYeM4Nvq9JFLq0jCCmIs/cY2yZAm0YRoDEtHX9kKB8iEuFjHoCfN9ZouCeVHwyy9egOM4DGn1lpuvXiPohb1gooxvCxWtmtT0QFc+NPqVbvgyZ7IrhvkUHU1F6WTbtOzqt8UzfjxK2Y+cTKFfv4O61paVvM+ecE/psPBqe2zkthnsnMVg9WSGD/aReJyK67/GUNjNzONxnigemeDi5uzGi0WvL4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1fd07922-b4f5-4e1b-2465-08d74bc5bdc3
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2019 08:01:35.9758 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DU9uj4fNVLxn1ZBwJVgV957jwGfCRKYdO81H1j5U7pawp0sF/7FgR97ndAdmgjOrzL8IhJBTbdnck8KFs1FDQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3770
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_010141_362056_64A35294 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.68 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, 

> Fix sparse warnings:
> 
> drivers/clk/imx/clk-pll14xx.c:44:37:
>  warning: symbol 'imx_pll1416x_tbl' was not declared. Should it be static?
> drivers/clk/imx/clk-pll14xx.c:57:37:
>  warning: symbol 'imx_pll1443x_tbl' was not declared. Should it be static?
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Reviewed-by: Anson Huang <Anson.Huang@nxp.com>

I did NOT see this warning on my side, did you enable any special compile option?

Anson

> ---
>  drivers/clk/imx/clk-pll14xx.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c index
> 7faad60..5c45819 100644
> --- a/drivers/clk/imx/clk-pll14xx.c
> +++ b/drivers/clk/imx/clk-pll14xx.c
> @@ -41,7 +41,7 @@ struct clk_pll14xx {
> 
>  #define to_clk_pll14xx(_hw) container_of(_hw, struct clk_pll14xx, hw)
> 
> -const struct imx_pll14xx_rate_table imx_pll1416x_tbl[] = {
> +static const struct imx_pll14xx_rate_table imx_pll1416x_tbl[] = {
>  	PLL_1416X_RATE(1800000000U, 225, 3, 0),
>  	PLL_1416X_RATE(1600000000U, 200, 3, 0),
>  	PLL_1416X_RATE(1500000000U, 375, 3, 1), @@ -54,7 +54,7 @@
> const struct imx_pll14xx_rate_table imx_pll1416x_tbl[] = {
>  	PLL_1416X_RATE(600000000U,  300, 3, 2),  };
> 
> -const struct imx_pll14xx_rate_table imx_pll1443x_tbl[] = {
> +static const struct imx_pll14xx_rate_table imx_pll1443x_tbl[] = {
>  	PLL_1443X_RATE(650000000U, 325, 3, 2, 0),
>  	PLL_1443X_RATE(594000000U, 198, 2, 2, 0),
>  	PLL_1443X_RATE(393216000U, 262, 2, 3, 9437),
> --
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
