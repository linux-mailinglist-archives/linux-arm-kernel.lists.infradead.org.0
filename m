Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30CA6EC154
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 11:43:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QLEbaoai6KGO6QFSfMKRvYxPcfghdjFhySgf3k31gWI=; b=b3588fYwnDP6Wk
	Zrt6WNMehj4qne6F/hNaekQUdtV9UJU6jWvb5jQFa2VVoWEN4jNBT2YrqbBTJQ85JFdCiDpWNVFMs
	f0Fr5ZoVLSAl6pIjPxpI4UoH9ovEXsOJ1JoOejjICX+kbiYdT/OLzwCft1mmaDw3VjdhYv+hekIuj
	zrP/rA0+BgT3YsNyIkUf81tSvqKhftk95l96LvbooeBjQ+2zVq7++W7nbCpZKDPlFrN+evZmscCIX
	b6h3GCVrwLKreV95xYhKpV2INTTYb6lguNtaHEnz8HkbUBtddCYPuV4vXcpPrCg/3jCCkNSFZR8Ms
	hqT1mSWPB8MOsh2yWNzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQUOU-0005sx-VW; Fri, 01 Nov 2019 10:43:02 +0000
Received: from mail-eopbgr00065.outbound.protection.outlook.com ([40.107.0.65]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQUOM-0005sZ-UN
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 10:42:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oFqOHl642LZ4wOOAmWJKE+GfhryzlSrnW80CVBFBh87EKQewMtnxE/ezy3XAFp5T5D831zS7xNOx+fbnvLSzfi+mFhAsLZYg7s7TdooKUGN6i+SZSpPuLopHuPXjZkQLa3pzMbcKslnjvF9HOJwYzR0iW1Pf+3wMiXGVPyP+fCpr5gCZbPtlzuIDOwnE1ONkWT4BaNVslci2gYoBxNbnzWpEZvdBS2QzOsNspGrV29focLDL5Ath2r94oBVeCsaMHjZKuNAR5+vQwpriZrMj0rMWftjSjQy+YYmRxO3pYb67A7oJg8V3YhwRDVAgclnO4Fg52Acu+lom4KgAW2o1hQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ABF9wcCz+X+0ikMg81YgNSDGQvyS5akFNiD1j8XVvu4=;
 b=b00qau+cog1Qq7Tgn3m1laxTZiNECgJgUgIze3WQyDEkcib4Jqmidrnjb8AmFTqbfCnoD0wUfQ6QyCnosczeAm+R3n7AQMBBRAufWk+/0UAp1OI3Tu59vDjqo9frjIt+a5JZaP0ZLbb0SZoHWaRZeyrN+kj5iTLb+RjuIjlIIfStzNf3BAh7VDC0pEzkpkOIgHPS/528xlxqz2v/XyzsiiAiJwnvD18O9D+zNDIF38k+EkctxnLvadaXCZW+AzYZrNRaWfc0QT9MA6q9f7+4ghoA+SUZrywxBFHwO0Mr69o5LOfVS2mvhqrYCxREHym/144XKTs7XsTduB0dvgWMiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ABF9wcCz+X+0ikMg81YgNSDGQvyS5akFNiD1j8XVvu4=;
 b=nWI00kdPHzbHeCcS0rFcTju2h1yn+NhuOuKZRMKSausg7EZKoei/UxijbkXXZUCpXuw3xY9qHj4JULZxyEXAcE0vGURnKyCPsGnR7/1pcBwK7sqx7yGm3xZzodJ8FKs0M0F1g5WULgjKtHBQT5nyAUMmzuL7FVrtuXmb3lIii38=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB6547.eurprd04.prod.outlook.com (20.179.253.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.25; Fri, 1 Nov 2019 10:42:50 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde%7]) with mapi id 15.20.2408.024; Fri, 1 Nov 2019
 10:42:50 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH] clk: imx: clk-composite-8m: add lock to gate/mux
Thread-Topic: [PATCH] clk: imx: clk-composite-8m: add lock to gate/mux
Thread-Index: AQHVkJ1nitbWRrQWUkuauMi+K6eGNad2IPkA
Date: Fri, 1 Nov 2019 10:42:49 +0000
Message-ID: <20191101104248.qqpt3hg437rccsri@fsr-ub1664-175>
References: <1572603166-24594-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1572603166-24594-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM5PR0402CA0023.eurprd04.prod.outlook.com
 (2603:10a6:203:90::33) To AM0PR04MB5779.eurprd04.prod.outlook.com
 (2603:10a6:208:131::23)
x-originating-ip: [89.37.124.34]
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 753b6fa0-79af-46ce-f5ac-08d75eb83da1
x-ms-traffictypediagnostic: AM0PR04MB6547:|AM0PR04MB6547:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB654704AE6BBB37D78A5628B2F6620@AM0PR04MB6547.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 020877E0CB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(4636009)(39860400002)(376002)(366004)(346002)(136003)(396003)(199004)(189003)(476003)(76176011)(6116002)(5660300002)(33716001)(71200400001)(71190400001)(229853002)(81156014)(1076003)(14454004)(3846002)(81166006)(478600001)(8936002)(6636002)(316002)(66066001)(8676002)(54906003)(86362001)(6506007)(99286004)(6246003)(6436002)(102836004)(386003)(6486002)(6862004)(66946007)(66476007)(64756008)(66446008)(14444005)(256004)(2906002)(25786009)(53546011)(186003)(11346002)(446003)(7736002)(305945005)(44832011)(4326008)(26005)(66556008)(52116002)(6512007)(9686003)(486006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6547;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JzmC8m3eXdyFitZxH6nhYc8aOBZ4MZ/xpau8xIvxu5qHOIJUEqbmUGALwIWjTdxnQcdgztDAMEhDzu0b9Ba7GBA2wsZLLUvd11D7YT/R2ARxws0cPKHcD7BBZ5ffvAMAsO4FQjClP0uV2Uo3apvxWRVAwofndFVJbebFhIOFhpKHxIyvBK9hZdpRs/GTQIMZauB87NXEixHMiDDGflSvwB0JLPKojWv33OS0YcvKTYcVi+iIy5XOmcLkucSHvk7hUZ5Z70DtChhOjCFCSImauAJG93qvmpHcfReNS+yROEdimgCwusgrL9Wwn5T4VITxnZ6nIVrz/nwnfPB437TNPxTu2R70cFY2pOhjpuUD9XqbwM/PnRt8nEYjhJQtzhJjYlmshhZHPcEiauX9mATdWlBcIDLCgQBUOTlollKqqz69kYLwD5vX4/0pXABdftUc
Content-ID: <F3789F8DAE0BB44AAFCACCD50CF0592F@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 753b6fa0-79af-46ce-f5ac-08d75eb83da1
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2019 10:42:49.9331 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DoAsqaxmWHnOZv/q3K7xpp7lXKrj0ZPKuVGxaYQ7I602t9k/uwKK/JFklFmha8gcWNAVWKgWq4/vJZsKr36N0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6547
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_034254_985028_B98BE367 
X-CRM114-Status: GOOD (  12.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.65 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
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

On 19-11-01 10:16:19, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> There is a lock to diviver in the composite driver, but that's not
> enought. lock to gate/mux are also needed to provide exclusive access
> to the register.
> 
> Fixes: d3ff9728134e ("clk: imx: Add imx composite clock")
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Looks good to me.

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>

> ---
>  drivers/clk/imx/clk-composite-8m.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/clk/imx/clk-composite-8m.c b/drivers/clk/imx/clk-composite-8m.c
> index e0f25983e80f..20f7c91c03d2 100644
> --- a/drivers/clk/imx/clk-composite-8m.c
> +++ b/drivers/clk/imx/clk-composite-8m.c
> @@ -142,6 +142,7 @@ struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
>  	mux->reg = reg;
>  	mux->shift = PCG_PCS_SHIFT;
>  	mux->mask = PCG_PCS_MASK;
> +	mux->lock = &imx_ccm_lock;
>  
>  	div = kzalloc(sizeof(*div), GFP_KERNEL);
>  	if (!div)
> @@ -161,6 +162,7 @@ struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
>  	gate_hw = &gate->hw;
>  	gate->reg = reg;
>  	gate->bit_idx = PCG_CGC_SHIFT;
> +	gate->lock = &imx_ccm_lock;
>  
>  	hw = clk_hw_register_composite(NULL, name, parent_names, num_parents,
>  			mux_hw, &clk_mux_ops, div_hw,
> -- 
> 2.16.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
