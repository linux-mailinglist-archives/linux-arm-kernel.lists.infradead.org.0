Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BFC81863C6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 04:41:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z1SWErl8knD043g7ALLlNP4c59iuKNJc8gvfIcK3ne8=; b=oGZDprkLpHgB2h
	+Ss66AkdvXlaR418UL8nKBkNIhwKj2sLYuvPoKEPm1R6PVcdN1rFNaom6M1FrhavB02prt+R0GLDr
	J0P+I7Ffih7ma+c0ogq55SmwH0AVwykMPebqgcMB40DLUOviioS5xN4C0yB51pqRf98oLke9d7NTq
	zDtNgTzOzSUHbPO/KG2G1yV1NZv4jPks1xoRnajE+gkrNcFlNnoVlr9ObWoOeapcBS7u+wq39hcYP
	q/CMTlr0k1tEZ1SFtD0yxFNZfonQiVZncB7STcIgQw1raqlMkDFSAbTfyGggsWxbu6EQN/WD/iatD
	vWPMcgVitixqAikhaxlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDgdU-0000vu-FQ; Mon, 16 Mar 2020 03:41:52 +0000
Received: from mail-eopbgr80053.outbound.protection.outlook.com ([40.107.8.53]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDgdM-0000vE-8r
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 03:41:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KmkmI0uYrrd/d33LKozHkanOhxqzDn4GHg4/x7tLGoD5dbr72ndXrPAJ/96rWfq40xphVMdNMgz3PVYMq3fVmfCO/in36+TPe4tDL635qhCO8Kgn4hba2X7kidXYAETN/YCWczKB84Y121rSym2ktHnmg+xdE0PKpJLU5pcM2841ly3+BQjWcmoIfHsc1kFVsMZjNbU9IRRBVDyCQcMT2ipSaak9d9mQ7Tjn7qeP/QQL2z6Xs/2LJPYoWSLz46vzHCUoHtDlnP2L2bUMntXGvCdS8O7lz5zbgmClJ7rLXQ3tI7SO3yTzesoggGd25Z1mKBXq3tjdw4JtupcfHUSofg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Pzmm4udHkViO8F3Hbbt/17Qcb1ivn95jOzuEVofgBUo=;
 b=atV1Zwv74oW0IHOhdoj3JY/YfMSIu/6WGRdqZSEPuGbRUk6H8+T2qrP04bwC2T3KiRbnjGXVXte8cbiYGnJCs9N4u7qMEjJVqTRNJdfKG5KVzPUkC6iSzOKyHAV+M2o6o8B8aC7zrY7n8MMSc4sbrytw/dbQN69aCXth298Y4u2SGwF/fq2ykmmbTKbj7jWWr7hn7pIMEGDKbRvNC0Z9rTgzZq959oshJe4vKULmWLC5cYChS5OYJkGvrCUEafHre2ZeRmRxCDNvUFODuWS6XQqtgTgJ0tGTgzQcN9PJNaxDo+4RGAC4elwctLkDstY6D0tDK2k5oPrRt+80unbbnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Pzmm4udHkViO8F3Hbbt/17Qcb1ivn95jOzuEVofgBUo=;
 b=bQBken/uKtXuo7Fyg1YUZItrE8B+xWoCHUTPI106wLtPq40i93EMeca+/VVKqq7r14OfrMjHgSOutdRvrUhFpZXsMA17YO94YYQ6kvS9na8cRHHzD1z3rN5eGQLoa5PYEW2u7T2EAjE1ghV+5EXz790iTK9YfWJl6g3IpoSwC44=
Received: from VI1PR04MB5327.eurprd04.prod.outlook.com (20.177.51.23) by
 VI1PR04MB4478.eurprd04.prod.outlook.com (20.177.53.222) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.19; Mon, 16 Mar 2020 03:41:38 +0000
Received: from VI1PR04MB5327.eurprd04.prod.outlook.com
 ([fe80::9547:9dfa:76b8:71b1]) by VI1PR04MB5327.eurprd04.prod.outlook.com
 ([fe80::9547:9dfa:76b8:71b1%7]) with mapi id 15.20.2814.021; Mon, 16 Mar 2020
 03:41:38 +0000
From: Peter Chen <peter.chen@nxp.com>
To: Nishad Kamdar <nishadkamdar@gmail.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer
 <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 =?iso-8859-1?Q?Uwe_Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, Joe Perches
 <joe@perches.com>
Subject: RE: [PATCH] USB: chipidea: Use the correct style for SPDX License
 Identifier
Thread-Topic: [PATCH] USB: chipidea: Use the correct style for SPDX License
 Identifier
Thread-Index: AQHV+rg4tLY0PLqM0U+by6gziKwWsqhKlAZA
Date: Mon, 16 Mar 2020 03:41:38 +0000
Message-ID: <VI1PR04MB53270B1176108AF36224CB6B8BF90@VI1PR04MB5327.eurprd04.prod.outlook.com>
References: <20200315105503.GA4440@nishad>
In-Reply-To: <20200315105503.GA4440@nishad>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peter.chen@nxp.com; 
x-originating-ip: [180.171.74.255]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 717dfe13-07b5-4adf-781a-08d7c95bef33
x-ms-traffictypediagnostic: VI1PR04MB4478:|VI1PR04MB4478:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB4478551BF01F9231A41B10FB8BF90@VI1PR04MB4478.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 03449D5DD1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(366004)(39860400002)(346002)(136003)(199004)(55016002)(81166006)(81156014)(6506007)(966005)(8676002)(478600001)(66476007)(66556008)(7416002)(4326008)(5660300002)(52536014)(64756008)(66446008)(66946007)(9686003)(33656002)(76116006)(7696005)(316002)(2906002)(186003)(54906003)(86362001)(71200400001)(8936002)(44832011)(45080400002)(26005)(110136005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4478;
 H:VI1PR04MB5327.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: abgBtehLiZuHW7Lf+gWT2tFCLKNr7Sd/JY3CrkmwEvXZy8cY5io6BRUkB+NTQHmRWt+NYU68oTu+ABAUT+Tz4/ZLGEvnLrWOK9hwi7YGmORrkQGD7nh1qH35MNtHdVZnujs4ndHn9T56FDERj8/gBG+YzJ1Y3ryrUCgJKvAfcc24vbVecr9JfY4iqwwFAEdYcm+EjwOLgGuv99BiYL/gZKVn4+qMxHHyd5K5LoLUtouFDrfKVlQ+B2EiLOxt1gsRz6jWHvJVh5DqKEGwemWT7eNvnyzyNIdqGjSNYpI+w7BGgYekllCsuEaI+XckNP33RLvKDRmw3dp9JHtJ0j8oM7PdPkC9xVnflfCqxPVb8k6SwMfln29nccowCZnjP4kpG/Tj2iy6JZihgGSZKfqkCA0ND6yyRxrD8dfefSJh8g0nRlYaO0O27t5+ued0iUX7cGI/zvQw+Viiu3LVpTrKhopI/SOi7nnNCWi51FRSUA4gCdfNn2e/1JlNsB6xKwcAU5chrhPcCSBRVSBoTNnjNQ==
x-ms-exchange-antispam-messagedata: qfyn9dQuYQ8IgjGCw1MmKd/3ZhoqRhATTeEaTUAjSkk+/8vBiHA5+u98xB7k98khHydrJlKuQT5tUFk8tftnAw0FACSpA0448uIP3CEZ3aCYjrAPKvqQ2V89dWQrZ0EKHJii5rOiInTIJjmOGqSTcg==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 717dfe13-07b5-4adf-781a-08d7c95bef33
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2020 03:41:38.7639 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fkq/dWTYRUgtZUf9Mn2NfZJ3uOFnFpohFmX0W+B8nc1q5xrQMLfAbLlVfO4EhKXb+Tol6q5bjue1qL+BUmOxOg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4478
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_204144_315351_5534FF60 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.53 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

 
> This patch corrects the SPDX License Identifier style in header files related to
> ChipIdea Highspeed Dual Role Controller.
> For C header files Documentation/process/license-rules.rst
> mandates C-like comments (opposed to C source files where
> C++ style should be used).
> 
> Changes made by using a script provided by Joe Perches here:
> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flkml.org%2Fl
> kml%2F2019%2F2%2F7%2F46&amp;data=02%7C01%7CPeter.Chen%40nxp.com
> %7Cbea69ff84b574ca6b48e08d7c8cf58cf%7C686ea1d3bc2b4c6fa92cd99c5c30163
> 5%7C0%7C0%7C637198665199494622&amp;sdata=bk1n4%2BvnrfRS6ZDrps%2B
> uXiImdzaxKZ00YskBg6pjtn4%3D&amp;reserved=0.
> 
> Suggested-by: Joe Perches <joe@perches.com>
> Signed-off-by: Nishad Kamdar <nishadkamdar@gmail.com>
> ---
>  drivers/usb/chipidea/bits.h        | 2 +-
>  drivers/usb/chipidea/ci.h          | 2 +-
>  drivers/usb/chipidea/ci_hdrc_imx.h | 2 +-
>  drivers/usb/chipidea/otg.h         | 2 +-
>  drivers/usb/chipidea/otg_fsm.h     | 2 +-
>  drivers/usb/chipidea/udc.h         | 2 +-
>  6 files changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/usb/chipidea/bits.h b/drivers/usb/chipidea/bits.h index
> 98da99510be7..b1540ce93264 100644
> --- a/drivers/usb/chipidea/bits.h
> +++ b/drivers/usb/chipidea/bits.h
> @@ -1,4 +1,4 @@
> -// SPDX-License-Identifier: GPL-2.0
> +/* SPDX-License-Identifier: GPL-2.0 */
>  /*
>   * bits.h - register bits of the ChipIdea USB IP core
>   *
> diff --git a/drivers/usb/chipidea/ci.h b/drivers/usb/chipidea/ci.h index
> d49d5e1235d0..644ecaef17ee 100644
> --- a/drivers/usb/chipidea/ci.h
> +++ b/drivers/usb/chipidea/ci.h
> @@ -1,4 +1,4 @@
> -// SPDX-License-Identifier: GPL-2.0
> +/* SPDX-License-Identifier: GPL-2.0 */
>  /*
>   * ci.h - common structures, functions, and macros of the ChipIdea driver
>   *
> diff --git a/drivers/usb/chipidea/ci_hdrc_imx.h b/drivers/usb/chipidea/ci_hdrc_imx.h
> index de2aac9a2868..c2051aeba13f 100644
> --- a/drivers/usb/chipidea/ci_hdrc_imx.h
> +++ b/drivers/usb/chipidea/ci_hdrc_imx.h
> @@ -1,4 +1,4 @@
> -// SPDX-License-Identifier: GPL-2.0+
> +/* SPDX-License-Identifier: GPL-2.0+ */
>  /*
>   * Copyright 2012 Freescale Semiconductor, Inc.
>   */
> diff --git a/drivers/usb/chipidea/otg.h b/drivers/usb/chipidea/otg.h index
> 4f8b8179ec96..5e7a6e571dd2 100644
> --- a/drivers/usb/chipidea/otg.h
> +++ b/drivers/usb/chipidea/otg.h
> @@ -1,4 +1,4 @@
> -// SPDX-License-Identifier: GPL-2.0
> +/* SPDX-License-Identifier: GPL-2.0 */
>  /*
>   * Copyright (C) 2013-2014 Freescale Semiconductor, Inc.
>   *
> diff --git a/drivers/usb/chipidea/otg_fsm.h b/drivers/usb/chipidea/otg_fsm.h index
> 2b49d29bf2fb..1f5c5ae0e71e 100644
> --- a/drivers/usb/chipidea/otg_fsm.h
> +++ b/drivers/usb/chipidea/otg_fsm.h
> @@ -1,4 +1,4 @@
> -// SPDX-License-Identifier: GPL-2.0
> +/* SPDX-License-Identifier: GPL-2.0 */
>  /*
>   * Copyright (C) 2014 Freescale Semiconductor, Inc.
>   *
> diff --git a/drivers/usb/chipidea/udc.h b/drivers/usb/chipidea/udc.h index
> e023735d94b7..ebb11b625bb8 100644
> --- a/drivers/usb/chipidea/udc.h
> +++ b/drivers/usb/chipidea/udc.h
> @@ -1,4 +1,4 @@
> -// SPDX-License-Identifier: GPL-2.0
> +/* SPDX-License-Identifier: GPL-2.0 */
>  /*
>   * udc.h - ChipIdea UDC structures
>   *
> --
> 2.17.1

Applied, thanks.

Peter


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
