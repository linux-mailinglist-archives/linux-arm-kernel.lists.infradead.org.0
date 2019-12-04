Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B883112D64
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 15:24:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=ebkOqJ49NtaBDXDmnIWUWhyp1K+wPLSPHm8DnCvxV9w=; b=dhJ1Y2ujSszSES
	igiLGB/SkXtu6KSP5OZaqVOJAdC86NHrAU+PU66JF8SSIu+/s4HFvcEu9vZ3XhMBLJxSD5Eomtlgw
	p+NssKUDCXYB92aeBysuJ1hlV82YKInKR2wUXlTZNGJQ7LCwisZFrBQ/VSU1kM3PAl1l3yniph6oN
	BBJ70YftT4luOvq3UoIJdoCH+xhx6f9GjmsnRkwYNJgms4FbqBaO+lRmge+3QoW5iXfNVl5yinmzV
	9hNGrOc2DLcIlP16H1246kZa/rccsyqsGEMxZ7NL99lh5QN1G1i3Uda1xy4KsEo1jT4gN9yq3m4S1
	gS3sXSfwC3bZn/KCmyVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icVZx-0002r0-S7; Wed, 04 Dec 2019 14:24:33 +0000
Received: from mail-eopbgr150083.outbound.protection.outlook.com
 ([40.107.15.83] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icVZo-0002qQ-SP
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 14:24:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B1keSxXBbCq870iTf4OuCpMdSdYS5aV+iphwTPjvTMhWyfbXOStKuRneOcgr9zGpefIuVc64Xzsa63BgCtVnpZ6+XoozuHMqfhcJznsu6p0Oj6kgxyriFni07GYI6pVZb8hBnE8qEatnIPxaltsxGIt60CD/8lFgF3j9Cf7jSfTlkt2zTRf9Z0E4fhh3nDC6zsH1hJ+eOlYwXZGvdyD2nwEmUaQsa4ZANM+l+1zgy1cPeuS/A9pIDTRoHA35Hy0FdqnOMBdC5w1r0f4lPPdQ3UDa9FO8SODeWBkxcEnIjoXJ5RwfEgsUkUDXQQkqNbWjHRNm2nJDDs2ioaIMB4iRSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O7j7aJXfTDk/nWSdaitOd5xH+tnOTAj2jBBJxWViXyg=;
 b=iU6oXiCXdNq2Ei28RXXekmwPT3llKLKPVv5JcOqhKXjUSC9Lb3yM4mvM2Ra4ewGKP6IQze5ld+w6QyFbOJ6CHEY5GEfYpgdD16gy2PsdwJAy7jbVjDpuuJn3EaTeMhxuiAI8ayam/DLc6zaAKJO0CSCAjabuCg9vtA5Q/wTcFlXyHwu+U7nNjZ1DrKStvpZvyudFFINd/Hq8CdR7ufj6RjqyAgJ2pu86zAPXICP34CjTdiZ64jnZW+1BMZ+dCukw/aj32naA0gp7nEMNYNLcpvE5miAzqF+PYBsdpTK2u5v/dWFleJBbvrbyNCdGlhVKVbJbgbWxxhPKRRMpL3bO3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O7j7aJXfTDk/nWSdaitOd5xH+tnOTAj2jBBJxWViXyg=;
 b=NUVysX37Sby2dHLjGFU8Lmcggpg8cYkcpKwo28HMnzDi/cHFzIgC+bS1kpxMlhtRxkpT+aEs1FeHrZaGcNtfuhULOsSvjXMQIeh/U4YdfvWxvMB2qO6ZIr7urNceu/DNX76/pUGkCQ0qEFDRTW+ABX7WctBwhmqZn1oSU/mzcdM=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB4608.eurprd04.prod.outlook.com (20.177.56.152) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.12; Wed, 4 Dec 2019 14:24:19 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1%5]) with mapi id 15.20.2516.013; Wed, 4 Dec 2019
 14:24:19 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 Aisheng Dong <aisheng.dong@nxp.com>
Subject: Re: [PATCH] clk: imx: imx8qxp-lpcg: use devm_platform_ioremap_resource
Thread-Topic: [PATCH] clk: imx: imx8qxp-lpcg: use
 devm_platform_ioremap_resource
Thread-Index: AQHVqoum7IH7ZRFDgESKl5wnHnxd3Q==
Date: Wed, 4 Dec 2019 14:24:19 +0000
Message-ID: <VI1PR04MB7023E9790323200A4B122445EE5D0@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <1575454349-5762-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [92.121.36.198]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ee1fab81-8c6b-4fe7-3af1-08d778c5a6a3
x-ms-traffictypediagnostic: VI1PR04MB4608:|VI1PR04MB4608:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB460809EF836DC2D628C2BEE9EE5D0@VI1PR04MB4608.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0241D5F98C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(396003)(366004)(136003)(346002)(189003)(199004)(44832011)(2906002)(110136005)(54906003)(99286004)(4326008)(7696005)(76176011)(74316002)(7736002)(305945005)(66946007)(91956017)(76116006)(6246003)(6436002)(64756008)(66476007)(66556008)(55016002)(53546011)(6506007)(316002)(26005)(66446008)(6306002)(9686003)(8676002)(81156014)(229853002)(102836004)(186003)(81166006)(25786009)(6116002)(3846002)(52536014)(71200400001)(71190400001)(8936002)(33656002)(5660300002)(14444005)(86362001)(966005)(2501003)(6636002)(14454004)(478600001)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4608;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mbQAC+A+DuR0xMs7mdzvhEKlr7Kns14iWW2PldxawYoIPEbYXhqI032vEVrwpMGP8DvuA+6j+/ydsmQCxkCSd1OPliguA53CbUEsL491pE2IOtdVqWUFRhA9rWB/BqjqldmPwwFaRI2hSpfAYgW5Jjx1ivqR5rOzUiPiiCcaik5dM5kWja0e5mI92Le5JJwNITNdHlMiwk7TVE6XjJxAbBnVmCPIUslV376x7J5ZnC8BQpxDaKeig2UNwDPL1PM9ukNBiQH9zHsjTPt492VV7OVgwKd5qe+XzAFYtb0tlQ+p2IV68sFqjjmKy4GaxtUVxlAOYm/rBgsgpq70DAuFLZWiJdEg7ZiTLgJC+APgrQ7tlfTe4fW1VxlMl6NDqIj46o/mQkCO6Fzh3ijykaTXsSsK6vGhnmJhpTnj5/LPksqMt02/iTRCq8x9QUFgkeyto5yIbytqX7OyT6o9OvkMjzbIeT2uvQwq6Cq3WLrxou88OLzr8vroN2uqN9olKwkS/EDZw7NjJ1/SPT4bsoMdHw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ee1fab81-8c6b-4fe7-3af1-08d778c5a6a3
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Dec 2019 14:24:19.5451 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QBgNrtTyFOcyH4cB8tQbFr8xiFawxnwJUK7O9yERsVUD5nA1aPYUo/ELpENXbRcfl+lTOJ6+rn1Vn2D2sQ2S/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4608
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_062425_029993_E1E89559 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.83 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Abel Vesa <abel.vesa@nxp.com>, Alice Guo <alice.guo@nxp.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-12-04 12:14 PM, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> devm_platform_ioremap_resource() wraps platform_get_resource() and
> devm_ioremap_resource(), we could use this API to simplify the code.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

This patch has been posted before and it breaks uart on imx8qxp-mek and 
possibly other things.

The old and new paths are not equivalent: devm_platform_ioremap_resource 
calls devm_ioremap_resource differs from devm_ioremap by also calling 
devm_request_mem_region.

This prevents other mappings in the area; this is not an issue for most 
drivers but imx8qxp-lpcg maps whole subsystems. For example:

                 adma_lpcg: clock-controller@59000000 {
                         compatible = "fsl,imx8qxp-lpcg-adma";
                         reg = <0x59000000 0x2000000>;
                         #clock-cells = <1>;
                 };

                 adma_lpuart0: serial@5a060000 {
                         reg = <0x5a060000 0x1000>;
			...
		};

Previously: https://patchwork.kernel.org/patch/10908807/

> ---
>   drivers/clk/imx/clk-imx8qxp-lpcg.c | 8 ++------
>   1 file changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-imx8qxp-lpcg.c b/drivers/clk/imx/clk-imx8qxp-lpcg.c
> index c0aff7ca6374..3f2c2b068c73 100644
> --- a/drivers/clk/imx/clk-imx8qxp-lpcg.c
> +++ b/drivers/clk/imx/clk-imx8qxp-lpcg.c
> @@ -164,7 +164,6 @@ static int imx8qxp_lpcg_clk_probe(struct platform_device *pdev)
>   	struct clk_hw_onecell_data *clk_data;
>   	const struct imx8qxp_ss_lpcg *ss_lpcg;
>   	const struct imx8qxp_lpcg_data *lpcg;
> -	struct resource *res;
>   	struct clk_hw **clks;
>   	void __iomem *base;
>   	int i;
> @@ -173,12 +172,9 @@ static int imx8qxp_lpcg_clk_probe(struct platform_device *pdev)
>   	if (!ss_lpcg)
>   		return -ENODEV;
>   
> -	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	if (!res)
> -		return -EINVAL;
> -	base = devm_ioremap(dev, res->start, resource_size(res));
> +	base = devm_platform_ioremap_resource(pdev, 0);
>   	if (!base)
> -		return -ENOMEM;
> +		return PTR_ERR(base);
>   
>   	clk_data = devm_kzalloc(&pdev->dev, struct_size(clk_data, hws,
>   				ss_lpcg->num_max), GFP_KERNEL);
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
