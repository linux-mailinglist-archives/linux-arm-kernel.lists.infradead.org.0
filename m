Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B548A11395C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 02:38:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Aq0KGajSHb+B2l35Zyr84rrGsHCS/6+f4+CLv7HwdU0=; b=jG+2DBbvdEXQQG
	saK+4JKVf0DVaQrM0Ar6AFxfvy9+Sav6QRaUDBCE5Nz1QFEXCAoul67xaKMPtqSAdfki29IQBw8xN
	xPwBSqG8GiwxbXKp/DW1i5fWEXxnBtBe5RNusL+2WsVyRBjgovw8cFiEmINdncdYBeFGGFYD75Sxm
	Y0VCYCFJSeHHyizig+H//DjtL5p544g0lkKZH6Gc4LHbUoAJQwmDJxRvRNf9+PO0Q+FlPQesuCCSK
	dRkRAF/TMY5nQ7K8SuhJMzGd7zZXLGXPZmFR1e9zaxi+OueboaHHcbb8Wf9QrEzaQhvx8rZQV9gXC
	d4382nrvkuwRgMY74sug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icg5s-00027E-PU; Thu, 05 Dec 2019 01:38:12 +0000
Received: from mail-ve1eur02on0626.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::626]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icg5j-00026m-Hl
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 01:38:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P/SD23e+TElT/aWa5ywIyRJqriVxGbRGX6cMKQZy+hcVEbDrg1yifeodIkyo4FCMBz+rhT6evvyc/97m/HVkftgCnXxv38AfmCwsoCawoj0sUmyW/Z17/tUXo6VjY6/aOnOWkDx0A88AZnv2RlPpQ2gqW3NaVKiCv9/WHc8zf8LeRjdtdxjKgzJWZLuf9IlUA55pKwImwsxSVCoIl3EWLhGbcnPiiwnlwI40J5FgjZXA1TzTmjpqtHWvlXMKvrJ4ZPyNB6Hinlv7ohyAwQkM/5LQHGJFRGTkdaAcpmH4vYZKdSEvZQtlacPfx1De19jOGyUksQ0ENSUbkSrc3Q5IBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hBnpDcN5yK/3mX2A+pTFoqZcr0kZgbfYt+qJs7S99V8=;
 b=ZkNJtR+gj8WZkEJEg/ImBp/QZ0TlI7fu3ZdhxTp6hjsn9DJn/u5HXa0LEO0cjXSGuwop6VRaeogmvLnRFXT3ZR7R6Cjlel68ovZo4JZassG+eBsmxgpU/lh6jQQbUcUbZKdr9xtp3SgdlWucXi6lXwUJ0zTNlEbmZc/MwMcARQW80WYHHjj5dpLPEAmkG4SHYQegh1zTCU5OzR7v4nUj3U4R6VZ31T7or1JhPwlouJLPtwQxzro/sembV0lAdGgGOwgURmSUAYXUO962n34hY1WwzzFsOiP0L1ewvmIImI2fLvd/HbqjzfNxO6/ZtKrZ031ZByeBfotjsfORJ59Whg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hBnpDcN5yK/3mX2A+pTFoqZcr0kZgbfYt+qJs7S99V8=;
 b=OqYt9BiW3yWPdL0EneZxRTPLmq5wjR+0CzAAsagtap5JT5K6ZASTX5cruKP8Dmi/Bp+PK5o+JDn9U3Ymw19/5AGuyBhhXNLvCSCwTNoMysXj6BmQuCbsDFmNYf/eTqUggsqHvJpCjn/4DZLKaoPV4CrK1hktR4n/N2yLO8vYnb4=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4723.eurprd04.prod.outlook.com (20.176.214.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.13; Thu, 5 Dec 2019 01:37:59 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c%4]) with mapi id 15.20.2495.014; Thu, 5 Dec 2019
 01:37:59 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, Aisheng Dong <aisheng.dong@nxp.com>
Subject: RE: [PATCH] clk: imx: imx8qxp-lpcg: use devm_platform_ioremap_resource
Thread-Topic: [PATCH] clk: imx: imx8qxp-lpcg: use
 devm_platform_ioremap_resource
Thread-Index: AQHVqoum7IH7ZRFDgESKl5wnHnxd3aeqw/Ew
Date: Thu, 5 Dec 2019 01:37:59 +0000
Message-ID: <AM0PR04MB4481FC4A8FD76A01242424B5885C0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1575454349-5762-1-git-send-email-peng.fan@nxp.com>
 <VI1PR04MB7023E9790323200A4B122445EE5D0@VI1PR04MB7023.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB7023E9790323200A4B122445EE5D0@VI1PR04MB7023.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 9d3936dd-d7d2-4caf-cd09-08d77923c2d5
x-ms-traffictypediagnostic: AM0PR04MB4723:|AM0PR04MB4723:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB47238F3A5623A76AB4820180885C0@AM0PR04MB4723.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02426D11FE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(346002)(366004)(376002)(39860400002)(199004)(189003)(6116002)(2501003)(86362001)(2906002)(3846002)(8676002)(966005)(14454004)(33656002)(478600001)(14444005)(81166006)(305945005)(81156014)(74316002)(71200400001)(8936002)(7736002)(6636002)(71190400001)(229853002)(25786009)(6436002)(110136005)(76176011)(66946007)(54906003)(76116006)(6246003)(4326008)(9686003)(55016002)(99286004)(7696005)(6306002)(66446008)(53546011)(64756008)(66556008)(66476007)(11346002)(186003)(6506007)(5660300002)(26005)(52536014)(102836004)(44832011)(316002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4723;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yFEoVQISX54BfRSyEXkUh2aDa/cs6zHWele1TTzedkK2olV59pxAennHBxy2Nva4QVfwLZ4P737CNy8qcH98aNzkIrbwanL2giyGlYEqoD6cFYhNPqjlXyN92rFifWBXJjqMFaZqWuVgfUErL0o317ZcRlFBBIbn8/CG1+hVj5wFTLGa5sMirEHEHGEhMqqif5ytBn2eVFia51ZwwlnzbJL1wu8UU/q1/PxqNnVr3Qw5PHg8lblSlMwapoH+BakJ5MyfZIalb4w37rgQB8xFkTQZO+BjJokknmrbPobVxLC1QTzjftghRqUdUPIIdM6zHR99tbSQwM+ycfIugg1h65/O+mAZsEInplnSZUP3whrC8Bj5F1JcJvu4paxHgDfQUt3MpafatcmHZy+palG7h9AdVT+ZVQ1WG/KKBWG/KB4n7zKThI+nOrR4NQ3Kh7joA04OlCe8kM5Meop7PoPNdOemYXGB25urnAkHhpmnj3G+hXuUO09/s0MO//xnTrBBbyNiF0qL8pPpyaAlmxAhDQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d3936dd-d7d2-4caf-cd09-08d77923c2d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2019 01:37:59.4363 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gzsFxphH313WphDGJBKw9D+OHvAahXPSj7U2979XVIb2DWwKeyQ8LoGjOyrioVhLgGs3f65KEkhHgm/9tVpjYQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4723
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_173803_591943_432F989A 
X-CRM114-Status: GOOD (  18.46  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe06:0:0:0:626 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 1.0 FORGED_SPF_HELO        No description available.
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

> Subject: Re: [PATCH] clk: imx: imx8qxp-lpcg: use
> devm_platform_ioremap_resource
> 
> On 2019-12-04 12:14 PM, Peng Fan wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > devm_platform_ioremap_resource() wraps platform_get_resource() and
> > devm_ioremap_resource(), we could use this API to simplify the code.
> >
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> 
> This patch has been posted before and it breaks uart on imx8qxp-mek and
> possibly other things.
> 
> The old and new paths are not equivalent: devm_platform_ioremap_resource
> calls devm_ioremap_resource differs from devm_ioremap by also calling
> devm_request_mem_region.
> 
> This prevents other mappings in the area; this is not an issue for most drivers
> but imx8qxp-lpcg maps whole subsystems. For example:
> 
>                  adma_lpcg: clock-controller@59000000 {
>                          compatible = "fsl,imx8qxp-lpcg-adma";
>                          reg = <0x59000000 0x2000000>;
>                          #clock-cells = <1>;
>                  };
> 
>                  adma_lpuart0: serial@5a060000 {
>                          reg = <0x5a060000 0x1000>;
> 			...
> 		};
> 
> Previously: https://patchwork.kernel.org/patch/10908807/

Thanks. I think at least need to provide some comments in code.

Thanks,
Peng.

> 
> > ---
> >   drivers/clk/imx/clk-imx8qxp-lpcg.c | 8 ++------
> >   1 file changed, 2 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/clk/imx/clk-imx8qxp-lpcg.c
> > b/drivers/clk/imx/clk-imx8qxp-lpcg.c
> > index c0aff7ca6374..3f2c2b068c73 100644
> > --- a/drivers/clk/imx/clk-imx8qxp-lpcg.c
> > +++ b/drivers/clk/imx/clk-imx8qxp-lpcg.c
> > @@ -164,7 +164,6 @@ static int imx8qxp_lpcg_clk_probe(struct
> platform_device *pdev)
> >   	struct clk_hw_onecell_data *clk_data;
> >   	const struct imx8qxp_ss_lpcg *ss_lpcg;
> >   	const struct imx8qxp_lpcg_data *lpcg;
> > -	struct resource *res;
> >   	struct clk_hw **clks;
> >   	void __iomem *base;
> >   	int i;
> > @@ -173,12 +172,9 @@ static int imx8qxp_lpcg_clk_probe(struct
> platform_device *pdev)
> >   	if (!ss_lpcg)
> >   		return -ENODEV;
> >
> > -	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> > -	if (!res)
> > -		return -EINVAL;
> > -	base = devm_ioremap(dev, res->start, resource_size(res));
> > +	base = devm_platform_ioremap_resource(pdev, 0);
> >   	if (!base)
> > -		return -ENOMEM;
> > +		return PTR_ERR(base);
> >
> >   	clk_data = devm_kzalloc(&pdev->dev, struct_size(clk_data, hws,
> >   				ss_lpcg->num_max), GFP_KERNEL);
> >


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
