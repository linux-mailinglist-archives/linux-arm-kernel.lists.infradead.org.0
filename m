Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9C6C150825
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 15:11:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VY6T+ivf7iGzEo+X3/1SXbAy4vh3aLvQoz9LW0frEjE=; b=Kdc2gWuhy7HnHV
	51Qm8ys6SeHdQXogtrS9Qfe86iBPCzVEGwAF8k/fC7zz4m4y4akS0+dcfMkigjfXcQ+W3FWW7w3zv
	o+hovsqZksQpLE+atvl6SwNmlo/SsnjuMCkmdSvR5QDjplHc7qGfppOq5G4IJz1+6hCfbSRkBtj1r
	7t1sQo9DXIA8WorP0YT7OiHwE220TU7hVW03KurMBfOgXR9MtuN86BpqbSNPHYXKfM2AD2udzLibP
	caZzY02sE37sLsIkc4IuCyLDd7Jqb/nQyFMccn9mJofrAXPLJjzMWafDnl0TFtYjp1ZvV5oQyNDJs
	zc0azWAOu3cIHUzHMtEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iycRp-0004sx-39; Mon, 03 Feb 2020 14:11:33 +0000
Received: from mail-eopbgr70108.outbound.protection.outlook.com
 ([40.107.7.108] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iycRf-0004sF-KU
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 14:11:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=crsVhA3j/E6R+QCrcr/xDadxnwu4Ylkr7zJNfrJJXXkIsgGQCElhWW6siFCs8zPMWeO1zksWBQVtSkNWTtJT2y2ns2+DXxSfpJg4AgodE0faGAhFkWaqQLk9C5n34jYC2BysIGgW60XOM7Mx0z+mYgfe9dmQHArK1exhBVOqWXVPu2V9atVRyeweMhFHD5Z1tkW13zS/SnfGLZVdGhag0+3JzucYxEbYFHvh+x4RD8yR1qZwFhcdpZKI6SzBCeueIMjx69ReGaCW3df3EluQwLta30ORRtveuz9XVMFHCB8RtgQ2MJyRl+Uk20weXxO0ufpFjDJ5MGrDgRzL7wCVRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PeGf/ODDV/kNGT2JI1kVs8ElXRi8dJB6BskXy9uaPVI=;
 b=Y1SkTR2ZABlluPfXIlzFU2jzUiQ6zXl3JCGaXwfpGqWo1vwFDEg4ptjrfx2qypideuMZF8PGW4xb9+JQ9GD2nMooLmdNIPzm06S8DJR4x5qqIavYNNgEwE4PpE8ndWIvFMGq6yB/zdN6QpLDv0ThBrWLcfFgkxf+/AEJ1C6KrMi4ry6be+hm1oJL/bG8F7dlC0YTZ+cy2NAg4CVqHYR8471gaYSz1QiedHVJH8d0tJXf5JmPtzrXjr5W9NDDPADWx9GXFToPhgtk9mMW4u7/UrqF8ntqNhiDsEiGN9ZsudDGEWpwJtWIVYGCiYXw9piUDpgbrDOPAowGIYbC1yyyVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PeGf/ODDV/kNGT2JI1kVs8ElXRi8dJB6BskXy9uaPVI=;
 b=J2oK00n5pTWMhHo6WCdtkRRjGqI+TUu0EALgT1UyxlohoJJyF2UgvIqndf70zhKklWsLemmIYODnvnb8FqChZaTPMyqwfLgE5nk4TF3CLno93J6NUfIYOmlC23uNaMKQCkEWMiwTewyKRdyApsZuftOrp8/XEdEwrYPdjLMvRDw=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=oleksandr.suvorov@toradex.com; 
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com (10.170.238.24) by
 VI1PR05MB6303.eurprd05.prod.outlook.com (20.179.28.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.30; Mon, 3 Feb 2020 14:11:18 +0000
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::c14f:4592:515f:6e52]) by VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::c14f:4592:515f:6e52%7]) with mapi id 15.20.2686.031; Mon, 3 Feb 2020
 14:11:18 +0000
X-Gm-Message-State: APjAAAXjzuqUM1WHdWncN/4FBJj5wqBvrsZnknMUyUBNWXeZb/lvD2rg
 PoSiidJ6I3Yr1i/LCQogd5DtzrX2VNfwD9dWGFs=
X-Google-Smtp-Source: APXvYqwfT70Xo+U0ryoeOlAKqNqziMmfSjotp+Z+nlKdoBLASvtFNEM32Jq1/sTAQWhdwgeLGv56+/213gvbXfroqk8=
X-Received: by 2002:ac8:6747:: with SMTP id n7mr23561610qtp.224.1580739071747; 
 Mon, 03 Feb 2020 06:11:11 -0800 (PST)
References: <20200202193014.107003-1-stefan@agner.ch>
In-Reply-To: <20200202193014.107003-1-stefan@agner.ch>
From: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
Date: Mon, 3 Feb 2020 16:11:00 +0200
X-Gmail-Original-Message-ID: <CAGgjyvGOUF0n+9kn1bGZUZr1OjbGRXXAGZ2EXyHEJ-FFG=ivfw@mail.gmail.com>
Message-ID: <CAGgjyvGOUF0n+9kn1bGZUZr1OjbGRXXAGZ2EXyHEJ-FFG=ivfw@mail.gmail.com>
Subject: Re: [PATCH] ARM: imx: limit errata selection to Cortex-A9 based
 designs
To: Stefan Agner <stefan@agner.ch>
X-ClientProxiedBy: BL0PR0102CA0002.prod.exchangelabs.com
 (2603:10b6:207:18::15) To VI1PR05MB3279.eurprd05.prod.outlook.com
 (2603:10a6:802:1c::24)
MIME-Version: 1.0
Received: from mail-qt1-f179.google.com (209.85.160.179) by
 BL0PR0102CA0002.prod.exchangelabs.com (2603:10b6:207:18::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.27 via Frontend Transport; Mon, 3 Feb 2020 14:11:15 +0000
Received: by mail-qt1-f179.google.com with SMTP id c24so11504951qtp.5 for
 <linux-arm-kernel@lists.infradead.org>; Mon, 03 Feb 2020 06:11:15 -0800 (PST)
X-Gm-Message-State: APjAAAXjzuqUM1WHdWncN/4FBJj5wqBvrsZnknMUyUBNWXeZb/lvD2rg
 PoSiidJ6I3Yr1i/LCQogd5DtzrX2VNfwD9dWGFs=
X-Google-Smtp-Source: APXvYqwfT70Xo+U0ryoeOlAKqNqziMmfSjotp+Z+nlKdoBLASvtFNEM32Jq1/sTAQWhdwgeLGv56+/213gvbXfroqk8=
X-Received: by 2002:ac8:6747:: with SMTP id n7mr23561610qtp.224.1580739071747; 
 Mon, 03 Feb 2020 06:11:11 -0800 (PST)
X-Gmail-Original-Message-ID: <CAGgjyvGOUF0n+9kn1bGZUZr1OjbGRXXAGZ2EXyHEJ-FFG=ivfw@mail.gmail.com>
X-Originating-IP: [209.85.160.179]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7c765286-b954-488d-457b-08d7a8b2eea6
X-MS-TrafficTypeDiagnostic: VI1PR05MB6303:
X-Microsoft-Antispam-PRVS: <VI1PR05MB630390E422D3B108D6A1717CF9000@VI1PR05MB6303.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2803;
X-Forefront-PRVS: 0302D4F392
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(39840400004)(346002)(376002)(136003)(366004)(189003)(199004)(81166006)(81156014)(52116002)(66946007)(6666004)(66556008)(66476007)(5660300002)(55446002)(44832011)(2906002)(6862004)(9686003)(107886003)(54906003)(316002)(42186006)(55236004)(26005)(4326008)(53546011)(186003)(8676002)(478600001)(8936002)(86362001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB6303;
 H:VI1PR05MB3279.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: s+kVsQ+a35zrZOk7+9hxNC2n7eFWcTCxRkqyUEW05F1yx3GYMTaUBY+QxqvIKVgKomGKDqyrptkzxxT6zfZ5v2yiOQgcQmfjDBi5oInBqsp/7wo8Ym3V2C4ImxcWLT36HzV768WVFk0xTp1Rw8GU7BYsYlYbfzQpvHmvKjQUaRPGVWqwQ9z1/a9afJxeEtlvFjB445j/D8rCrwBu0zvjl2PgYClzINfU8scisWP3oMswYQ9Ni3fQbnNdoDRuLlmti2pLBHCbHEv9nLgUnlnpR37r5B8+OVNJgxq143IAqq/ewlilSJSISgwwo15gga85eHwqkvCy7bBNS5xvV2lJP0DwXze9TGMOMYs6UF4Wx48ww37YKk6vb4D3UvDZNrFx++abwUtFJuKZukM7wn6Ym2Co4TUO4pCJGNOJ6nOg9qNMEBS9TwcfesPWErVbbILk
X-MS-Exchange-AntiSpam-MessageData: pWx5AhvaiFNUlTMQQwTYwVyav1k982y9mm48kEhjxh66WnfDb35gj5Q3tIrYu3SsUY6QQIKyY5exxJOD03ZLR4Fs7vP9rOjTs9SB7E2pUIwBJjqOjqWsUJP1AzX+SeDvfcY7E7nEN0sMP+dZlM45fQ==
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c765286-b954-488d-457b-08d7a8b2eea6
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2020 14:11:15.9732 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QvXSdC9RftOTk2gw5Z88R65EWw865CdESrjDhYUENuiIC4HKyxOrwyaaV4Bkj9t0JVZWqv3YvnSeh0l+jZCX9Ipl/yA1F7fv8CF+aWIpdk4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB6303
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_061123_732973_F294F5B3 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.108 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Anson.Huang@nxp.com, Arnd Bergmann <arnd@arndb.de>,
 Stefan Agner <stefan.agner@toradex.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Feb 2, 2020 at 9:31 PM Stefan Agner <stefan@agner.ch> wrote:
>
> From: Stefan Agner <stefan.agner@toradex.com>
>
> The two erratas 754322 and 775420 are Cortex-A9 specific. Only
> select the erratas for SoC which use a Cortex-A9.
>
> Signed-off-by: Stefan Agner <stefan@agner.ch>

Reviewed-by: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>

> ---
>  arch/arm/mach-imx/Kconfig | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index 95584ee02b55..e7d7b90e2cf8 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -471,8 +471,6 @@ config      SOC_IMX53
>  config SOC_IMX6
>         bool
>         select ARM_CPU_SUSPEND if (PM || CPU_IDLE)
> -       select ARM_ERRATA_754322
> -       select ARM_ERRATA_775420
>         select ARM_GIC
>         select HAVE_IMX_ANATOP
>         select HAVE_IMX_GPC
> @@ -484,6 +482,8 @@ config SOC_IMX6
>  config SOC_IMX6Q
>         bool "i.MX6 Quad/DualLite support"
>         select ARM_ERRATA_764369 if SMP
> +       select ARM_ERRATA_754322
> +       select ARM_ERRATA_775420
>         select HAVE_ARM_SCU if SMP
>         select HAVE_ARM_TWD
>         select PINCTRL_IMX6Q
> @@ -494,6 +494,8 @@ config SOC_IMX6Q
>
>  config SOC_IMX6SL
>         bool "i.MX6 SoloLite support"
> +       select ARM_ERRATA_754322
> +       select ARM_ERRATA_775420
>         select PINCTRL_IMX6SL
>         select SOC_IMX6
>
> @@ -502,6 +504,8 @@ config SOC_IMX6SL
>
>  config SOC_IMX6SLL
>         bool "i.MX6 SoloLiteLite support"
> +       select ARM_ERRATA_754322
> +       select ARM_ERRATA_775420
>         select PINCTRL_IMX6SLL
>         select SOC_IMX6
>
> @@ -510,6 +514,8 @@ config SOC_IMX6SLL
>
>  config SOC_IMX6SX
>         bool "i.MX6 SoloX support"
> +       select ARM_ERRATA_754322
> +       select ARM_ERRATA_775420
>         select PINCTRL_IMX6SX
>         select SOC_IMX6
>
> --
> 2.25.0
>

-- 
Best regards
Oleksandr Suvorov

Toradex AG
Altsagenstrasse 5 | 6048 Horw/Luzern | Switzerland | T: +41 41 500
4800 (main line)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
