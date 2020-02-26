Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5011D16FABD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 10:29:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O0GJhNbEhy6EpHPYLy+e2+AAOs7pM1nCiVa2wpppDhA=; b=Gubg0EBs34X7SP
	SBjHj5rNMURRgQwMcskMGONCmmfe18F8krT4i4t2kgNa4lyolllrAkzd576kH1joxxZVdijN3YNaV
	zkPISZgzJrZN7Bg8iaqb3xsUwbM8n6KAtqEIZnqTs48H16cI7p12fmNk38ZTCkU3RXMoJDyF3GGTQ
	XmpestZOKBxx5stENztiNUht0Z6u+Gu1IVJkOeDugyW8wAszsj3vmedxpTUvXra1lfLInccrYDEpf
	xJoRVXDiAfa0jA3ToSNrwMV9jqzPfmAdjToLGZC5+G/WhfQLTu/umixZjUViOfcDfc5qQZjflVS/k
	z/Bk1aWhRYRePzC1rYWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6t0i-0006EF-MF; Wed, 26 Feb 2020 09:29:44 +0000
Received: from mail-eopbgr70132.outbound.protection.outlook.com
 ([40.107.7.132] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6t0Z-0006Do-9x
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 09:29:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z8WnbE76KZ6tOzfMhpObdcF9ZzwnDKHd0akbZirvm162gMQriAOhrqq9PvdsKJhSXt9Y1E2OXQP0Nx2pKV3MKaL9qers6JH+CbuRybzP5uOv2wj4V469MVOzaljcL0NXeDv8NicbiUtB1BWLZwxCld/TzYe9HAXlgNb5hZRmDaretESxVMKymx73Xx3iXva0caf99dgm84GtUvGTtSZfQy/+veV9YAdb2Gw/tvEV4/PGOqzTBbyz+NLk1qhiivL86bChcG66g5qelGk8VldRddmKRt2IELsnwK1Y1Y+b32GVVlfYKIksLpo+jOlPsuok1wkmPDG3llg/DEsODSNI7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+mEkvg0neLNYUCLWBkOQ2NRwTyBQYNQuw29smY+KpUQ=;
 b=j6u9W1BkFDOHa0YlPXPSau+A52pPtW2EZPXKsFRd1fl1YX7JL4qP6rB+yLobf9BfygtoCbe3moxcghTN93NTIMdKFbfTJGkPi8DqiHvW6w/UOmDs400LmWwGiX2Bq7UboY+stT2rAuXzbe/U3PAD6XPnz3LhYji9kV+X4bjtJiJ2gSlPUr10omlBTcBKWK2aOs0hYx+dW9G6D8OXJwA1AB+eH1F8bPIzMcFz12eZfntk4K88JFzUqcZ86gVd2ptLPbRL4gLtFq0fsQDfyq7laJLHnDdrrxLTlOOcdf2fJ2eJjsi+jCXVIh20qwRYv+/ne3qMljDsz6T/Ct4OrMrIzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+mEkvg0neLNYUCLWBkOQ2NRwTyBQYNQuw29smY+KpUQ=;
 b=mLbVmw1rR8yTJK6f5MYhJXKeZRoVambbm/J7vPwNLni8SVtSzv6dzuZ51nuD/QkKg7TdX2mhySBrXsat6sXcuTH5v4btWG4wksgG4cVtkM4GRkdxsVzAGXfFwW/QgyC/A/7JuHJ1MYRp5GMdQioTReqULdptA+i2kN07FS9QSrE=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=oleksandr.suvorov@toradex.com; 
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com (10.170.238.24) by
 VI1PR05MB6990.eurprd05.prod.outlook.com (20.181.33.83) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.21; Wed, 26 Feb 2020 09:29:31 +0000
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::c14f:4592:515f:6e52]) by VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::c14f:4592:515f:6e52%7]) with mapi id 15.20.2750.021; Wed, 26 Feb 2020
 09:29:31 +0000
X-Gm-Message-State: APjAAAX0VG2ZouCVK3HSi1FbzcaQuXH1jl6i9YNt5nB/MlETbIZMeOlw
 sVs5WQ8W/yOK/iHW56Pblv4WGj9Yav76hJTntsQ=
X-Google-Smtp-Source: APXvYqwi5shvZmeqxPKwLcbmjjnH+edkvy6nmXG30nLNojOnYDEMaP7va30b9/wSrzYeqiNOORVZ5lQMluIQhwWu6Kk=
X-Received: by 2002:a0c:c389:: with SMTP id o9mr4288045qvi.232.1582709367177; 
 Wed, 26 Feb 2020 01:29:27 -0800 (PST)
References: <1582565548-20627-1-git-send-email-igor.opaniuk@gmail.com>
 <1582565548-20627-5-git-send-email-igor.opaniuk@gmail.com>
In-Reply-To: <1582565548-20627-5-git-send-email-igor.opaniuk@gmail.com>
From: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
Date: Wed, 26 Feb 2020 11:29:15 +0200
X-Gmail-Original-Message-ID: <CAGgjyvHE+B-VCSfmR9MeO2-u6=dVCUCmCorEa1J+NG5vwQoRfA@mail.gmail.com>
Message-ID: <CAGgjyvHE+B-VCSfmR9MeO2-u6=dVCUCmCorEa1J+NG5vwQoRfA@mail.gmail.com>
Subject: Re: [PATCH v1 5/5] arm: dts: vf: toradex: re-license GPL-2.0+ to
 GPL-2.0
To: Igor Opaniuk <igor.opaniuk@gmail.com>
X-ClientProxiedBy: BL0PR01CA0028.prod.exchangelabs.com (2603:10b6:208:71::41)
 To VI1PR05MB3279.eurprd05.prod.outlook.com
 (2603:10a6:802:1c::24)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from mail-qv1-f46.google.com (209.85.219.46) by
 BL0PR01CA0028.prod.exchangelabs.com (2603:10b6:208:71::41) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.21 via Frontend Transport; Wed, 26 Feb 2020 09:29:30 +0000
Received: by mail-qv1-f46.google.com with SMTP id dc14so981927qvb.9 for
 <linux-arm-kernel@lists.infradead.org>; Wed, 26 Feb 2020 01:29:30 -0800 (PST)
X-Gm-Message-State: APjAAAX0VG2ZouCVK3HSi1FbzcaQuXH1jl6i9YNt5nB/MlETbIZMeOlw
 sVs5WQ8W/yOK/iHW56Pblv4WGj9Yav76hJTntsQ=
X-Google-Smtp-Source: APXvYqwi5shvZmeqxPKwLcbmjjnH+edkvy6nmXG30nLNojOnYDEMaP7va30b9/wSrzYeqiNOORVZ5lQMluIQhwWu6Kk=
X-Received: by 2002:a0c:c389:: with SMTP id o9mr4288045qvi.232.1582709367177; 
 Wed, 26 Feb 2020 01:29:27 -0800 (PST)
X-Gmail-Original-Message-ID: <CAGgjyvHE+B-VCSfmR9MeO2-u6=dVCUCmCorEa1J+NG5vwQoRfA@mail.gmail.com>
X-Originating-IP: [209.85.219.46]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 73684084-b277-4a27-f683-08d7ba9e61f0
X-MS-TrafficTypeDiagnostic: VI1PR05MB6990:
X-Microsoft-Antispam-PRVS: <VI1PR05MB6990D288A295034FC39BE87FF9EA0@VI1PR05MB6990.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-Forefront-PRVS: 0325F6C77B
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(346002)(39850400004)(396003)(366004)(376002)(199004)(189003)(66476007)(44832011)(5660300002)(66946007)(9686003)(54906003)(6862004)(55446002)(52116002)(478600001)(4326008)(6666004)(2906002)(55236004)(81166006)(186003)(26005)(86362001)(81156014)(66556008)(8676002)(107886003)(316002)(8936002)(42186006)(53546011);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB6990;
 H:VI1PR05MB3279.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oZKjt3CHo5QbegVLJXDkyRvz0LDpUb9rkaI5PIKGDYMm5hmFprUwl526dbbbPPmfqzPglCE24bg5IN+TrSi1E+7eCQw3iEWgMTOL1VIyMqZKqrfatp5Dggnl6wtAZgHeWtnvE7vgImLQnNJReVaOFfIfcFP8c2SARhKigzmF5h6+YF04Hg32Y3ImjwgmBQxBYbwYDKQycvJaJNNyrTXHqDlY+IoP6qkomoKvywM/njBrQOqm5KAL/YeAsaE2SuTV2gWsqJqdRB/trJxtJpmfcCz4LL7FU3yD0jV5Za2IxVokUPSJiGX7oeFw1tSmp9hfTmX5guV4fW34lX88gyZN+7O2RvsBoL4FPsiS5o/MRqf4F/iR5D6oo7gwYq852SyNYEFi2fq/3eo7psniQuqVhy5E121iOn9xCyHnW8K2SsMlIPGtB/e8eZvPjPAlfAhI
X-MS-Exchange-AntiSpam-MessageData: e25izckwsKLgC834Brs9GLWUQBll6eLT3aD4N4cQYet+w3cs+ng0lUrnHE3N5WXQ/Si4MkO0e0dSwI9VAHKBzHKWv5ZZMlQCZITnkA/hFFLfLbjk1/CCdRA/xHQCUHXsocCvFMCOEw6MquprlzmPVg==
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 73684084-b277-4a27-f683-08d7ba9e61f0
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2020 09:29:30.8824 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YyAD9vRPucI7teGjbtsMK4YPcUe+vuJBgMMrmLQ86ISg0f4DsIb3L00UNaB9wvTMx7KOIJyCILdoLqhxifK+Z5lWZVNxyH/Gu4lvZNFUrSs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB6990
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_012935_350611_197B409C 
X-CRM114-Status: GOOD (  14.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.132 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Igor Opaniuk <igor.opaniuk@toradex.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Stefan Agner <stefan.agner@toradex.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Stefan Agner <stefan@agner.ch>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Rob Herring <robh+dt@kernel.org>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 24, 2020 at 7:33 PM Igor Opaniuk <igor.opaniuk@gmail.com> wrote:
>
> From: Igor Opaniuk <igor.opaniuk@toradex.com>
>
> Specify explicitly that GPL-2.0 license can be used and not
> GPL-2.0+ (which also includes next less permissive versions of GPL)
> in Toradex Vybrid-based SoM device trees.
>
> Signed-off-by: Igor Opaniuk <igor.opaniuk@toradex.com>

Reviewed-by: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>

And please ignore my note about copyright for the previous change of this file.

> ---
>
>  arch/arm/boot/dts/vf610m4-colibri.dts | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm/boot/dts/vf610m4-colibri.dts b/arch/arm/boot/dts/vf610m4-colibri.dts
> index 2c2db47..75c6d82 100644
> --- a/arch/arm/boot/dts/vf610m4-colibri.dts
> +++ b/arch/arm/boot/dts/vf610m4-colibri.dts
> @@ -1,7 +1,8 @@
> -// SPDX-License-Identifier: GPL-2.0+ OR MIT
> +// SPDX-License-Identifier: GPL-2.0 OR MIT
>  /*
>   * Device tree for Colibri VF61 Cortex-M4 support
>   *
> + * Copyright (C) 2020 Toradex AG
>   * Copyright (C) 2015 Stefan Agner
>   */
>
> --
> 2.7.4
>

-- 
Best regards
Oleksandr Suvorov

Toradex AG
Ebenaustrasse 10 | 6048 Horw | Switzerland | T: +41 41 500 48 00

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
