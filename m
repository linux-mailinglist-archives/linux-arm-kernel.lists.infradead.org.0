Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 212C11B58C9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 12:07:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3G/duUFltPRQH6gzlWEixXtvr+87FEM6k91yGhG4cMo=; b=AcijgHdcy4DX4W
	81oMNe8kyJ/Me59RfTdEEZOhj1DsMDIpD6ZcnTBFarDpgRldBdMqdVUCwdfbUMKovTqDMef8zy3mC
	Wm5Ln2fD0HnnaIj3qG/l0OQ6ExzaUlAW8l03ufQ1MrjwIo6hfG11+SsW8Ds0weecmdg8qKJpTkla0
	VaUo/9SoTEwb+zZ90uy6CkbE5k4YbwDzPUXH1vBRquGANOC35oQKL6UvAdKSd+P7WT0FYW+bPdkaz
	9N3gj8QZeD9XsIDIQP/cslGqNHgOSUUgPhz9iM+OqesuW7CKEwOgNUHO9o+/gbgwJcg9di4Vvrj4R
	Qbc+qvXoZ2W/jT1BESuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRYl8-00078x-9t; Thu, 23 Apr 2020 10:07:06 +0000
Received: from mail-eopbgr50053.outbound.protection.outlook.com ([40.107.5.53]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRYkz-00078B-NZ
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 10:06:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QLeslSegu44/YblVoKZtzw5ZGbQxvGGHe2pbOJNk9ld2CDgNc0oBCXU0lCPgwSkEzf74ck0xJcOTbDZC15i+G6+2dk0Nl7e5hlhBAOu6gDrcaooLmTcWXrHWf2xpWvEFuKKcs6N9I8YNAJ4oXtMvJR5bQz2B9KdFFdIU27WRrG8EIG6qfm6NFoOyikgYWCpLOKvBuFLkrPiQ5Ms1/Zz4cW0NEYmzUcMgeZyJny95ziLWjQtSAPCMnFlVRSo57xZYDnbz0qCHR822ATTRJ9trh0LAynfosltGOZkBecpgqafZb8Gfw62ST31Kg11VAUYCK4dbqg40S5efQ+uC3AG1eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YV91eEIUv3IMIWIWPv/favlOjnV7HE+UGLknJ1C/vN0=;
 b=DumyeNSqAKDUINuKA1oGZudDW5BLHHxj86tPziNu2faZkwEz6cuzUneJBEzUIwbHEme19YKVOcWzXHcASGrxVo0s3irD9G+osQpX/JHAZuYBKB+w2JU4OvK9eKGONie7wJcskK200fo33ZnpDgv5iLjqpwyHnFEKjd9sA2fn3noRHVGf3hXJxRyzP5O2iIpvc1JwquDoepMYOp4KyNakwd8eUy97oVpARPaAPvhhmdJd9nRgF17xD78z1srDCIdd++J2O5CYBhhMCH6p2PJ3VGTilJWrJTZS8DHr17uDerGLSHNGd4C1cz6F2HAtrkmC8rniZenMqGmvvnTaGr24ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YV91eEIUv3IMIWIWPv/favlOjnV7HE+UGLknJ1C/vN0=;
 b=WhvjtDBzxm9ST/cDxg7BaVYiLT2ZYFJIjOmXJohDu0pT8izU57MNL/0kXkiVH4gZScRcVXe1NLsLLPTGwl8Hvp3d0zTd0+ZYaNmoCNVSDUtLIyT/WyISgEOtcBoQXR6cb1q6Rb3wKgUJVvMnC4DSg1Dw6T/y3WhFVePjQHuCzqg=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB4536.eurprd04.prod.outlook.com (2603:10a6:20b:16::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.27; Thu, 23 Apr
 2020 10:06:54 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3%7]) with mapi id 15.20.2921.032; Thu, 23 Apr 2020
 10:06:54 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: RE: [PATCH 3/4] firmware: imx: scu-pd: ignore power domain not owned
Thread-Topic: [PATCH 3/4] firmware: imx: scu-pd: ignore power domain not owned
Thread-Index: AQHWGT3/0FZZcpj/kkCj4hqyUbpRo6iGercQ
Date: Thu, 23 Apr 2020 10:06:54 +0000
Message-ID: <AM6PR04MB4966F8E07B105EDCAF3CB40680D30@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1587625174-32668-1-git-send-email-peng.fan@nxp.com>
 <1587625174-32668-4-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1587625174-32668-4-git-send-email-peng.fan@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 0e67d406-6f7b-40a0-7bd0-08d7e76e0cbb
x-ms-traffictypediagnostic: AM6PR04MB4536:|AM6PR04MB4536:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB45360DD11E0317426603B41E80D30@AM6PR04MB4536.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:949;
x-forefront-prvs: 03827AF76E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(376002)(396003)(39860400002)(366004)(136003)(346002)(55016002)(5660300002)(316002)(66476007)(9686003)(54906003)(8676002)(6506007)(2906002)(81156014)(7696005)(110136005)(4744005)(66556008)(86362001)(66946007)(26005)(64756008)(478600001)(52536014)(66446008)(33656002)(44832011)(71200400001)(76116006)(186003)(4326008)(8936002);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: G4pHusYxNS1p5lOestia9VHhROuvekSpj86ebaCqStlJwNZSACoFMEvG52/cb5qeP/DPOam7Sx00pjUbCXvwj0mf+EFdGRjXn4nVLVxhm0LYYFL/R32OK1Rv5t+uodYbK2yfgqgpNDZcojeXITvWGthpFq/qkqI5tarTyh6H2Yzl92dkBPBcNeUTGVTacTSw+fHcDW9IFxxx6rsWT5SkOunrJk1jvLSLHKlYTtER1RHbuVwAv+QCW9ZsbB9xVHCxs7DaxVldbrr7zohRBRpUZZH/T/X7424k7WsC61ebr4PnY273d3zktyHWa8CWpDY2pN3XaqamIVK6pVTIFaUapn6eLRm0YgF5sek8oi6i6cAgGcpHMmeZUxNCl+//7xKL5u/IOnZkJXHaOo/xqMoQDG6Hl9jMdjNYvPPyx8o1CkG9rD47nzfTssT1A+bCfTBY
x-ms-exchange-antispam-messagedata: XdeOp7IJSHXxDMVf/PVG0yW4dvSTJ6HPn3JvlOavueY5JlA0V0QNaeJBAOgurC/beYo2TR9q/x1VRKgLEjs8VSHKMhtA5o20Hh3S+YlRgfR1wgMm/FUfj+ESOrc0c9U/oSCzA/s6tSZ/ruE9xJB3OQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e67d406-6f7b-40a0-7bd0-08d7e76e0cbb
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2020 10:06:54.1712 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TniJ5M7PjxUPA6TX+us8we4RiZjLu6WPQum/SbKnVsHLwS1M2iR7+8Ag8gG90tTSuHl++KbLX+dGCbBnysnITg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4536
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_030657_770561_C2EE8365 
X-CRM114-Status: GOOD (  12.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.53 listed in list.dnswl.org]
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
> Should not register power domain that not owned by current partition.
> 
> Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  drivers/firmware/imx/scu-pd.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/firmware/imx/scu-pd.c b/drivers/firmware/imx/scu-pd.c
> index d1b313fa7b96..7b43bd63cc1e 100644
> --- a/drivers/firmware/imx/scu-pd.c
> +++ b/drivers/firmware/imx/scu-pd.c
> @@ -46,6 +46,7 @@
> 
>  #include <dt-bindings/firmware/imx/rsrc.h>  #include
> <linux/firmware/imx/sci.h>
> +#include <linux/firmware/imx/svc/rm.h>
>  #include <linux/io.h>
>  #include <linux/module.h>
>  #include <linux/of.h>
> @@ -246,6 +247,9 @@ imx_scu_add_pm_domain(struct device *dev, int idx,
>  	struct imx_sc_pm_domain *sc_pd;
>  	int ret;
> 
> +	if (!imx_sc_rm_is_resource_owned(pm_ipc_handle, pd_ranges->rsrc + idx))
> +		return NULL;
> +

Same question.
See my comment on patch 2/4.

Regards
Aisheng

>  	sc_pd = devm_kzalloc(dev, sizeof(*sc_pd), GFP_KERNEL);
>  	if (!sc_pd)
>  		return ERR_PTR(-ENOMEM);
> --
> 2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
