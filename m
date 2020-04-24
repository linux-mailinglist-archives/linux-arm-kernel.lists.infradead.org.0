Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D04BE1B6B52
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 04:27:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J02Sv3tHO7hCsKkuRL+TO++XZl+N8vni4WDCkhqnp+s=; b=oozIkr067P3KYP
	rkNTUGUcYz3r27SjadyONV0vv20g+bUctDWZsbnnvePcLJVF+wgR8xc41VX9cn9Clx7Btr8aiK2oo
	yTIPgrQT6b3Oi3En3mzOkAKh/OudQKVF/Js72bz+dlNCxR9YpNMwt9SnGTwV8rEKye3/eEVSuDmGP
	Nuj8U5msxNqYnz5VjUokw3jRDG6FCixdLgVRF9Te2Oe6o2rCfHOcGphzUxhnGy4MSXCHjej+KXc5n
	jPLNcFDJYr5RWq2kYTBlGd1uuwVs5HA6McXdkx1mjm6xos0I35xTXfSkEG0rFe6G2DkPOiiUErIAL
	aJBWjto9JMG76N1mD1Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRo3k-0003iy-Qk; Fri, 24 Apr 2020 02:27:20 +0000
Received: from mail-eopbgr30062.outbound.protection.outlook.com ([40.107.3.62]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRo3b-0003hw-E2
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 02:27:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g4jaj/iCpsZ5Hqz3ZkENkQtKUC8/aDYuxOiChC5S5D0eRfBHaydUhHj6yVDNB70A6qWtnYIlJ2jnPcfJIM0yzTWk5Ah3pca2G+W+v633RQ4MpE4rc1SGvRJ+XyaqdKNFBQabAy/2GNZyw4Rb4PZADTsalW2bJK3qkGgnZZ1RWg48Y14PlUv0LAhyoylP3fLVB/1TOo9UZfTdUjPVwqdUDY0cm3FjoSs9KD0jcd58HVr9dOHB10q7alIeW3qXUxBqGpT/yA5+3RQZ5gC9KMKaYqOq1FqhZI1Dqpid7AdAYMBN2iNT2dGloMVUS1lcNmqqpgfN+tcqEZD3pJzCH4asSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EHyEBYvH+gKg6lCQ8nJ70p4EWcyd4SPmag2QP66CIjE=;
 b=D3yyzkWIEgTmneKXtTE831SkvNlXG+97DWB3Ddnp95sg5a6+Okmf2bom0z7KxA9aH4/6mA5erJuyklTn4hs6iaZHzTZYAStttOFnOpRLl+rCovhr5XpeJGsbMxhVuuc0BEZoYFg+C8MifQedvZFys+pdAsI2NZnTyYgCnBRFZEOiCqgEAcmWYVG+qgF10Q6B5hUH63DAs66ncFQVMHYt6Z/ij8pEPBQbKE8wgTqpNQRyCNDeNk1ZO0ZchG4wIdva4YoHNS6wC+VPggOn0KeVan2k/MwR9rV8Rv247ZpKQxNCEh7LZDOSJ/PYbsxBTSxMUYH8cjhcibbjhG33tLUcuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EHyEBYvH+gKg6lCQ8nJ70p4EWcyd4SPmag2QP66CIjE=;
 b=noDwsAoq8FYOTITglk04YQ2x6eAvWlk6yt7k6cDH3MgGb7qgVPJrXrtmtlDQ8LKVW5eLMfBZdRw4VRS8Hs2DbXjvCDhjvRNE2brouvvLnZxGovma3cukIgx3r9Yq3NgQpK7FbhaGWUMURtn0nNYJDrJuY82wqpnLbfEygy0Mq9U=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB6439.eurprd04.prod.outlook.com (2603:10a6:20b:d8::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Fri, 24 Apr
 2020 02:27:05 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3%7]) with mapi id 15.20.2921.032; Fri, 24 Apr 2020
 02:27:05 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "jassisinghbrar@gmail.com"
 <jassisinghbrar@gmail.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH] mailbox: imx: Add context save/restore for suspend/resume
Thread-Topic: [PATCH] mailbox: imx: Add context save/restore for suspend/resume
Thread-Index: AQHWGcRIgrxdUkc8WEWRmowVEyQEl6iHi5TQ
Date: Fri, 24 Apr 2020 02:27:05 +0000
Message-ID: <AM6PR04MB49666D6A0B015FD1DF3A20B480D00@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1587682871-528-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1587682871-528-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [92.121.68.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 2d33d994-4d81-41ac-246a-08d7e7f6fb26
x-ms-traffictypediagnostic: AM6PR04MB6439:|AM6PR04MB6439:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB6439285793C3F1D26731A6AF80D00@AM6PR04MB6439.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 03838E948C
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(346002)(376002)(136003)(396003)(39860400002)(7696005)(316002)(15650500001)(26005)(8676002)(8936002)(81156014)(186003)(110136005)(478600001)(44832011)(6506007)(2906002)(64756008)(66556008)(76116006)(9686003)(66446008)(66476007)(4326008)(66946007)(55016002)(33656002)(52536014)(5660300002)(86362001)(71200400001);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pB+KBOBaZvfP7EzdKNemiyIsB9zly9q2egt000MKIreFCJh5Tec1LO0kJRgveu7VNxTxXYJISLQYI4D7irmSxkqRS93VikXsDUDowCExI9m6oBri1fzCwBl8TpEM+eU0lqVNaqPU5ZtorWIFfpsiEW5hNCwTIuaHAwkMwSbhKYyhkc4f3wqp8Kp+RNVczxrjDNMC1Lr7LFnUJxYLWxpLFpvyFbs+Pwu0sb6424+5sRIHUXhENWJ/mrSpy6vyqn7tw2yJcBwv5BKitusdvy4vWRMKHKdBjR23NV/jJu+jlhOL0pT6ymI/CsGuh+H3MMFZaixDTLKlouPapW9MBgAAPCkQnx/LUtWZwW+euU/P3G0waAPJAmb8A/dUBHmvffTe9gI1DUZsukdnY4X+/0YGFgBsBhN68AIFAk66TkoQh0XePt8XIkoVImwrU07eD8WG
x-ms-exchange-antispam-messagedata: uxJxI9plfMMIaR86zwFCTlZy7NT3OtEG5FxQmnz1jmO4nxh+r5qT7dWHug1FNHN4sJK+S7gLu/8Ylh34h0bYkij0cSoFS37OrjhnzmbZgc+6w0iglkwaBWDzi6MISYUM9Bo9CQzqv1/9zPt8kXopZw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d33d994-4d81-41ac-246a-08d7e7f6fb26
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2020 02:27:05.6294 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NbvZbKSUv0Hgryw8EOHYFRgrEDMzDydTHys3Xh/LCSAsL3yzJ0mZ/XIZ+Ft4mYW/l2CV/nrPENPb9LBRGT9cnw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6439
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_192711_548134_B4EE015B 
X-CRM114-Status: GOOD (  21.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.62 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.3.62 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Anson Huang <Anson.Huang@nxp.com>
> Sent: Friday, April 24, 2020 7:01 AM
> 
> For "mem" mode suspend on i.MX8 SoCs, MU settings could be lost because its
> power is off, so save/restore is needed for MU settings during suspend/resume.
> However, the restore can ONLY be done when MU settings are actually lost, for
> the scenario of settings NOT lost in "freeze" mode suspend, since there could be
> still IPC going on multiple CPUs, restoring the MU settings could overwrite the
> TIE by mistake and cause system freeze, so need to make sure ONLY restore the
> MU settings when it is powered off.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

As mentioned before, we'd better keep the original author.

> ---
>  drivers/mailbox/imx-mailbox.c | 35
> +++++++++++++++++++++++++++++++++++
>  1 file changed, 35 insertions(+)
> 
> diff --git a/drivers/mailbox/imx-mailbox.c b/drivers/mailbox/imx-mailbox.c
> index 97bf0ac..b53cf63 100644
> --- a/drivers/mailbox/imx-mailbox.c
> +++ b/drivers/mailbox/imx-mailbox.c
> @@ -67,6 +67,8 @@ struct imx_mu_priv {
>  	struct clk		*clk;
>  	int			irq;
> 
> +	u32 xcr;
> +
>  	bool			side_b;
>  };
> 
> @@ -583,12 +585,45 @@ static const struct of_device_id imx_mu_dt_ids[] =
> {  };  MODULE_DEVICE_TABLE(of, imx_mu_dt_ids);
> 
> +static int imx_mu_suspend_noirq(struct device *dev) {
> +	struct imx_mu_priv *priv = dev_get_drvdata(dev);
> +
> +	priv->xcr = imx_mu_read(priv, priv->dcfg->xCR);
> +
> +	return 0;
> +}
> +
> +static int imx_mu_resume_noirq(struct device *dev) {
> +	struct imx_mu_priv *priv = dev_get_drvdata(dev);
> +
> +	/*
> +	 * ONLY restore MU when context lost, the TIE could
> +	 * be set during noirq resume as there is MU data
> +	 * communication going on, and restore the saved
> +	 * value will overwrite the TIE and cause MU data
> +	 * send failed, may lead to system freeze. This issue
> +	 * is observed by testing freeze mode suspend.
> +	 */
> +	if (!imx_mu_read(priv, priv->dcfg->xCR))
> +		imx_mu_write(priv, priv->xcr, priv->dcfg->xCR);

This could be separate patch if it aims to fix a specific corner case.

Regards
Aisheng

> +
> +	return 0;
> +}
> +
> +static const struct dev_pm_ops imx_mu_pm_ops = {
> +	SET_NOIRQ_SYSTEM_SLEEP_PM_OPS(imx_mu_suspend_noirq,
> +				      imx_mu_resume_noirq)
> +};
> +
>  static struct platform_driver imx_mu_driver = {
>  	.probe		= imx_mu_probe,
>  	.remove		= imx_mu_remove,
>  	.driver = {
>  		.name	= "imx_mu",
>  		.of_match_table = imx_mu_dt_ids,
> +		.pm = &imx_mu_pm_ops,
>  	},
>  };
>  module_platform_driver(imx_mu_driver);
> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
