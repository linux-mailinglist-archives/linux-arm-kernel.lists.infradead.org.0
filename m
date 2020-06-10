Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 371AC1F4FE8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 10:05:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2wdDOEaW3O8xNvJv1YZ3oczJmtrvRcNGTSximXB7sDs=; b=HhFpfjoWxNdy9G
	ohUhNq9ubKmTuF/AN5rmRJ/vUx8bC58sD5BedQMsFxWAg+UFetG0Wmrt1tchf0iEenLu27hCA7LMU
	pAFkaH323wfH4shntt/Yn+ZaszcJTf2l0OVh9BKJj8NnOuJeh2G+dDUx9qwmGzDTsxTN90kbmMQEo
	u/DlppeIUfC1l8e8iZqe5H+jAxGRgrBea9057AtZKYP6IE77MaVkfwcnxnL9CpjK5YqV9QvAtlxk4
	n8ADagAjio25n1HHOsVfAWh1mORnSeXAKhZJVEQf7vKnltAy/g12GiqRtPxSbQd95lIGDKUA/fz58
	TaztvEuN3L4hD5qpyvMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jivjZ-000073-Kb; Wed, 10 Jun 2020 08:05:17 +0000
Received: from mail-am6eur05on2086.outbound.protection.outlook.com
 ([40.107.22.86] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jivjO-00078P-2e
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 08:05:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fzrC+StsMeAcGti05hkOkORzQ/+FOnSbhiSc3tCM7uKT7CcdXVBe6/hiYy05kD92e9FXa3n8btJd8B/zyP76Jl08EvKSnOXbqieH0vUD3EafNcp7pmnv0xlSambs6sf0UOi9GJHFXmWLhmxZMkRKCYGmIY0MNyolqp14DoD+hUMSyZ9T8tGRNG7Xbk7u+1NBnZzp5NxoUE1MBChkEftzCl9Jj3BfBk78SD1AzP0X91JtRop1d9CXCdDA4IY0QajkKqrwY3OMwxKmyzRajcALJDCs21wMwXn/48HspZRkqOyPJnFHSnIIJOth19kTIX3UxGMJA5RaQcMwbWMAnLmnLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iT5EaRQVpYWIRHCuHHLo5DaYJg1ysfnzxLHi2VDxLd8=;
 b=Mi4AIDlQQgJ41jh6cXXwk694+tg+1CzzGTP8lPdL8T3DJG/g0MiY6/wfOLoLDm4AgjqghCTw/ZZ2HY4SLAAL6cHJUlnQMi/fLTmbQI3Y21kFRjKqluc3Jb4PVuTWR6E3Nm6I8NYIDCubcWcfJEJzpVmBeGD2yn5Btv+PsSkVIne+WCAZYc9l23AIHtTzXFI+qEgE4aoTmUAS4oCIH+2khbevzrnEQjjQAZ9MDr2I8q4h1QZeVhHrkhocFH3JhrKiGFDbylv7WsvTwKA6Uopjm/wNkUumjvVRRDk67tn+RXrzjRQqCSiUp9ZvIRYR155wpzMNFK020+YZV50sbHRMdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iT5EaRQVpYWIRHCuHHLo5DaYJg1ysfnzxLHi2VDxLd8=;
 b=qnU863f3FeFPugVYqEhjoP2TMN560Z0JuidotMfTPRV9+zBblRfClpkBb5TGI28kW64PwlqBw/k1Kaup38YZk0EqbEUBEzNI3SOzdgQWdG6wSCDGtp7EI1JOxylfsEUW3fmxLzhnjZR29ZKDcwNuTsG1XsztDeh35ZnJnOfPL1w=
Received: from DB7PR04MB4972.eurprd04.prod.outlook.com (2603:10a6:10:1c::11)
 by DB7PR04MB4427.eurprd04.prod.outlook.com (2603:10a6:5:30::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.18; Wed, 10 Jun
 2020 08:04:57 +0000
Received: from DB7PR04MB4972.eurprd04.prod.outlook.com
 ([fe80::8cb5:8821:ad1a:7f6e]) by DB7PR04MB4972.eurprd04.prod.outlook.com
 ([fe80::8cb5:8821:ad1a:7f6e%4]) with mapi id 15.20.3066.023; Wed, 10 Jun 2020
 08:04:57 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "festevam@gmail.com"
 <festevam@gmail.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "stefan@agner.ch" <stefan@agner.ch>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "linus.walleij@linaro.org"
 <linus.walleij@linaro.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "linux-gpio@vger.kernel.org"
 <linux-gpio@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH V3 0/9] Support i.MX8 SoCs pinctrl drivers built as module
Thread-Topic: [PATCH V3 0/9] Support i.MX8 SoCs pinctrl drivers built as module
Thread-Index: AQHWPmrEVFpeNeUrREGCcvDpD9lSNKjRfJ0g
Date: Wed, 10 Jun 2020 08:04:57 +0000
Message-ID: <DB7PR04MB49721DEE875099E086E2486E80830@DB7PR04MB4972.eurprd04.prod.outlook.com>
References: <1591712485-20609-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1591712485-20609-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 3f9a20c0-a16d-460f-89af-08d80d14f7a0
x-ms-traffictypediagnostic: DB7PR04MB4427:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB44277E8110CDA3C2202B3D1780830@DB7PR04MB4427.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0430FA5CB7
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eqDWgCaq/oItxmFNIyEIySiqlw2ZP8Cjx5qK8X96qsXqCllkC6L/q0RkJ0g3VZiRGYe3PURgBwvRoAWR4Dw/XIOP2gPZfTTop3H7Bff8BjeSQWp+7bMpPCotot1MyUe+rD35k+oeV0/S5cLSN7IHl2gE2k0Tcen9NwHEVcKrWi/MoruI/RVcdOTlLLazybKlSIkkmM+6AAi446zNOh6ulS54eJOgdyAYeB2V9njtHLjqUtCeZvbWUdg7BsYeyetRznSlI0yHwoRhh4gThwYK1+8ISGEZVYd4k4HBEvienMxV+7wf3ccFoU4Ly+EQkZ5tZNyaRH3KUN8fUhNkd+aN89NA6mQ/sqRZ0+JlUokcqMUNF8hsuKONTlsp7jQq6Kyj
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB7PR04MB4972.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(6029001)(4636009)(376002)(366004)(136003)(346002)(39860400002)(396003)(71200400001)(8676002)(2906002)(5660300002)(9686003)(55016002)(316002)(66556008)(33656002)(52536014)(110136005)(66446008)(64756008)(44832011)(86362001)(66476007)(76116006)(7696005)(26005)(478600001)(186003)(8936002)(4326008)(6506007)(66946007)(83380400001)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: Is/rz5nbu1DV4GKhZ6KOVI/csW7dHg7GKXepyOXGLM7X3tvSN21rWTzkD6bDFzpO0kev4c0mapeatfljgczDzrk9xYKM1R05W5YDnZlKBFdVIPJHtWubDRNQCUHLZ4hJ4LWkcH5NONm1Na5zHjPMy35Y3xq7erWINK/N/IfXZv+cjEBec0oyfDhEyT2Elju0IhnApsgEuNPIZeeDb+pM5wOb03O6Vt83amXM/EQLvjVXKsq9GOHRjRD4jpED4XGUSIpW1JR2923ANM+XSYqLLY/+kWLo5t3IQ2vvVeShmv6E78K7QTXHNTr6pHtlCa/ACJBdlxLP4WXPFuyLwTIJc6QjtlsU5V78jy6uGkzLFK/2noek9PA8VrW327n6DbrLS7ip/rkwaqhWOwAOAyczZStcHd5Bl9NRB8w3mjRrLOW95JXAgr87Ry89CL6kKT9l0+QFQkcwUfUbwlfsdm02lEDw1uHndhU9PbwKk4SdwzE=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f9a20c0-a16d-460f-89af-08d80d14f7a0
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2020 08:04:57.6433 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6A5ls0PsGN2kWqd5SeH2nZyz7zv4A+jLqcrbstqNDwqniwdznN3QG0Q125XszAhuTZOcStNFUFRU/4J/SHTF/Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4427
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_010506_139072_E89FCC85 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.22.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.86 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Anson Huang <Anson.Huang@nxp.com>
> Sent: Tuesday, June 9, 2020 10:21 PM
> 
> There are more and mroe requirements that SoC specific modules should be
> built as module in order to support generic kernel image, such as Android GKI
> concept.
> 
> This patch series supports i.MX8 SoCs pinctrl drivers to be built as module,
> including i.MX8MQ/MM/MN/MP/QXP/QM/DXL SoCs, and it also supports
> building i.MX common pinctrl driver and i.MX SCU common pinctrl driver as
> module.
> 

This patch series also changed the driver initcall level from arch_initcall to module_init.
Maybe you could provide some test information to help the reviewer to better understand
the change impact.

Regards
Aisheng

> Compared to V2, the changes are as below:
> 	- add "depends on OF" to PINCTRL_IMX to fix build error using x86
> randconfig;
> 	- change the config dependency of PINCTRL_IMX_SCU to support scenario
> of
> 	  building in PINCTRL_IMX while building PINCTRL_IMX_SCU as module,
> no other
> 	  good choice in my mind, if you have better idea without changing the
> driver
> 	  code, please advise.
> 
> Anson Huang (9):
>   pinctrl: imx: Support building SCU pinctrl driver as module
>   pinctrl: imx: Support building i.MX pinctrl driver as module
>   pinctrl: imx8mm: Support building as module
>   pinctrl: imx8mn: Support building as module
>   pinctrl: imx8mq: Support building as module
>   pinctrl: imx8mp: Support building as module
>   pinctrl: imx8qxp: Support building as module
>   pinctrl: imx8qm: Support building as module
>   pinctrl: imx8dxl: Support building as module
> 
>  drivers/pinctrl/freescale/Kconfig           | 27 ++++++++++++++-------------
>  drivers/pinctrl/freescale/pinctrl-imx.c     |  4 ++++
>  drivers/pinctrl/freescale/pinctrl-imx.h     |  2 +-
>  drivers/pinctrl/freescale/pinctrl-imx8dxl.c |  9 +++------
> drivers/pinctrl/freescale/pinctrl-imx8mm.c  | 10 ++++------
> drivers/pinctrl/freescale/pinctrl-imx8mn.c  | 10 ++++------
> drivers/pinctrl/freescale/pinctrl-imx8mp.c  | 10 ++++------
> drivers/pinctrl/freescale/pinctrl-imx8mq.c  |  9 ++++-----
> drivers/pinctrl/freescale/pinctrl-imx8qm.c  |  9 +++------
> drivers/pinctrl/freescale/pinctrl-imx8qxp.c |  9 +++------
>  drivers/pinctrl/freescale/pinctrl-scu.c     |  6 ++++++
>  11 files changed, 50 insertions(+), 55 deletions(-)
> 
> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
