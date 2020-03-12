Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1DD182C2F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 10:17:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WIVxglR73uXmkjW789ApUmeoCSoL/427kGKhU33mw6A=; b=OnrwhFyjxOPjjP
	x64P/2Vb65G0TNYYGclRmsny5sx9+t5plAAUi9iyDtYjv791MYDmyZw8AId2CdGQGhNpG7Y+pPR+f
	Ia6IXIaxzuzmYdSzdJMLwFuyat+VG3V9Sh3uq8Th23P+0RxmJnILxhODiAfA+JXEjkYaUWbfzHEjr
	XwiagZ1UHThYwEiiSmz/8QfgTF9Wyvka6Zzjx97VjmKoESIWuyGFZlxhhu49nAOr+Q8Ou3c4GxYHo
	kZIjjee06n26nXHd/mSC98W4NJEcEi+HLGJuuaOf+PEwM02y44lxn0Kvf4kG0sXNqDsOeNV5TEYAH
	R4UqOoBPoRn3eAjx4VsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCJxi-0001LF-Ot; Thu, 12 Mar 2020 09:17:06 +0000
Received: from mail-eopbgr00128.outbound.protection.outlook.com
 ([40.107.0.128] helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCJxa-0001Km-4Q
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 09:17:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NAB+AUNjUu6mBfL+5iSvc/6HQSvZHX5EzbhMNAd+R+UaSweMipvLNWpO509HBPV6VFRHjA/pqGQFhCMq/QDnuYTjHSs0WIsCPKStCXb7jj5BNPljQEw4VmxFiUk8WJsDDRY1WsGQb+nmBR3jZB7P+0VSxEeLXVsLyohSPyxQWO+7h3FpjhTsmvBdh9/tue1UmUckggGVIuKrY0/DfjG8NHfNVibjfvHh6A3COqRYmqoaTLU8sF4IifavYx4qFrl2va4u6pcWmidDSLPZ7AytfOLG0r0zhtezFHjHOCkv78iKT1APeH9+fmctRYFb+EfsazDICzlXUxZniZpKZJg/kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LSQhWa2maDf/6BiU3/ljOc69UGGSpW3YuT4SDr7TKFs=;
 b=VQfSbKZrWuJbOq3R7US8b6PQh7+s5izlpehAwKT5Gmvzhck49xx4YgYUI7OWZgw99/GDiITndYwyL1PYbgI0au/r+iJiczNXjhhHnXYFbqWqxupMBKTLsYIPQOVuNTfCXC2unzU+9wchAUW7yHNKkJwcIRuldf97OBIAiwPWYr6aLPoBYLLetq4nSI3j4nbRRlKIYn/wMDsRIsGp6dCRsGdapB642YPxLD9IXzQiXR6rtMYIj2cR0VfwBVfJ+BxVNYMftO/YhBMzWnLSvbLLRTAf66TM44M+5DctryH9a9eGozz94mcVA86dau/aoejo8WYF1In645NvfYyBNcZdAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LSQhWa2maDf/6BiU3/ljOc69UGGSpW3YuT4SDr7TKFs=;
 b=LXGSD02qPXSTGbZ1yPRCZccvjda/ZNMN9BWIdXTo+FDTQ6pI2W3gZebl6ncdIpzBKUH1Z+lMGo77Pa12rtmHuWp6wu8eCdZBSrVi+cKRq2LySLvf8iO59xQOoJj0kdiJlTaC+l0Nt750nXocVaxGbbxmGgvhKwpZ2tzI5dvfU1E=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=oleksandr.suvorov@toradex.com; 
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com (10.170.238.24) by
 VI1PR05MB6622.eurprd05.prod.outlook.com (20.178.126.203) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.14; Thu, 12 Mar 2020 09:16:54 +0000
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::7cdd:4feb:a8b6:a6d2]) by VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::7cdd:4feb:a8b6:a6d2%7]) with mapi id 15.20.2793.018; Thu, 12 Mar 2020
 09:16:54 +0000
X-Gm-Message-State: ANhLgQ1jWgIAQI+qvOi5OsgbWr+idD3LYDgp4mc2bAYGTUCQjDiPpJI0
 vmpd1+3xOLiE4WiwjKl+GKhN9/dtBPe6FGL6IaY=
X-Google-Smtp-Source: ADFU+vsqo9XUdaoXnUYhxkjwkxNUPlHE43zwv1gUy1LagsySjQuXNeodn2FewPnV8aIzhfThqMgY+yn7VUASEZ2Imp4=
X-Received: by 2002:ac8:32fc:: with SMTP id a57mr5855509qtb.331.1584004598741; 
 Thu, 12 Mar 2020 02:16:38 -0700 (PDT)
References: <20200312083830.18011-1-igor.opaniuk@gmail.com>
 <20200312083830.18011-3-igor.opaniuk@gmail.com>
In-Reply-To: <20200312083830.18011-3-igor.opaniuk@gmail.com>
From: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
Date: Thu, 12 Mar 2020 11:16:27 +0200
X-Gmail-Original-Message-ID: <CAGgjyvEQm2qqqiQo4NaPAGt0aCTSx8nS+xr7mnLgDH_SQPu9Lw@mail.gmail.com>
Message-ID: <CAGgjyvEQm2qqqiQo4NaPAGt0aCTSx8nS+xr7mnLgDH_SQPu9Lw@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] arm: dts: imx7: toradex: use
 SPDX-License-Identifier
To: Igor Opaniuk <igor.opaniuk@gmail.com>
X-ClientProxiedBy: MN2PR15CA0006.namprd15.prod.outlook.com
 (2603:10b6:208:1b4::19) To VI1PR05MB3279.eurprd05.prod.outlook.com
 (2603:10a6:802:1c::24)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from mail-qt1-f178.google.com (209.85.160.178) by
 MN2PR15CA0006.namprd15.prod.outlook.com (2603:10b6:208:1b4::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.15 via Frontend
 Transport; Thu, 12 Mar 2020 09:16:43 +0000
Received: by mail-qt1-f178.google.com with SMTP id m33so3741925qtb.3 for
 <linux-arm-kernel@lists.infradead.org>; Thu, 12 Mar 2020 02:16:43 -0700 (PDT)
X-Gm-Message-State: ANhLgQ1jWgIAQI+qvOi5OsgbWr+idD3LYDgp4mc2bAYGTUCQjDiPpJI0
 vmpd1+3xOLiE4WiwjKl+GKhN9/dtBPe6FGL6IaY=
X-Google-Smtp-Source: ADFU+vsqo9XUdaoXnUYhxkjwkxNUPlHE43zwv1gUy1LagsySjQuXNeodn2FewPnV8aIzhfThqMgY+yn7VUASEZ2Imp4=
X-Received: by 2002:ac8:32fc:: with SMTP id a57mr5855509qtb.331.1584004598741; 
 Thu, 12 Mar 2020 02:16:38 -0700 (PDT)
X-Gmail-Original-Message-ID: <CAGgjyvEQm2qqqiQo4NaPAGt0aCTSx8nS+xr7mnLgDH_SQPu9Lw@mail.gmail.com>
X-Originating-IP: [209.85.160.178]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 72cf340b-686c-413b-30db-08d7c66614bc
X-MS-TrafficTypeDiagnostic: VI1PR05MB6622:
X-Microsoft-Antispam-PRVS: <VI1PR05MB662294AACD00184149A0CCBAF9FD0@VI1PR05MB6622.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 0340850FCD
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(346002)(376002)(396003)(136003)(39850400004)(199004)(66946007)(81156014)(44832011)(66556008)(316002)(26005)(66476007)(2906002)(30864003)(107886003)(4326008)(54906003)(5660300002)(6862004)(86362001)(8936002)(81166006)(55446002)(42186006)(9686003)(6666004)(8676002)(186003)(478600001)(53546011)(55236004)(52116002)(2004002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB6622;
 H:VI1PR05MB3279.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YF0c2fkgTyswvuozz7mbqgnj3iyVohLVqBCJZQtr9WxxjQC63ZGPgoOGWNEpj6sq0F8ypqMEL1uCWvMauz/MqW8rdH/XThR/IP1GtzLa1w+Vf8XbpcUNiz4Bzr/uHvCUabCE7Af4wtjvMtSMrGwhGieUL5NFJf0cyKhAndpY/LHc6YmYhzK4pQfE4o796Nbc5cvN4f/u4L41qDEiHG6ni73VtTGhyvmbDad6SzTgwroLDGsTQmRmj2EDrHE1U+Xd0DPbx5yeLD6iTCNkZAJBNKAxumybLnAQ6SXWdfyQHqrZsB8YyJFxnWkedUTMxayrptrOFhloGH2ejjOREnzotHP1DJcXOGRi1+/77zr6lWVYZ5OGstYiJiu0R4durFNWtPQyKG6juzp+vioZGmVEg18vCjlWfMmToJtTIUNSK0ZAQwBD0hIT9sOlj9/bY685XARlau/ONk+LFodbmOxWX5WvOBpF/vcH/d84MsZqpLA=
X-MS-Exchange-AntiSpam-MessageData: W0v+QpI0VgVpeX/KajZF/Or+4UssN6I0yBA7SelYy8Iw/TJlEmu/SSnF8CMr4OjCaegb8INHxyTKDaY/dM8u6gRbCPecB3iS/m4n2ddSlDDBj+HP2hMtjc9zIHdUutflDcqV/9kch9txg50I6XAvOA==
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 72cf340b-686c-413b-30db-08d7c66614bc
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2020 09:16:43.5794 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6W0BnxawMyklEyUUl8lNC9RPd15IfpToRxX42pqQCt7yUIhVut4z1k2IJWK4Os2T2BrkH3o3GQMrKRDyO+ihu3lo/TZLVciBj64b9vJI02U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB6622
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_021658_322682_52F30007 
X-CRM114-Status: GOOD (  19.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.128 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 12, 2020 at 10:39 AM Igor Opaniuk <igor.opaniuk@gmail.com> wrote:
>
> From: Igor Opaniuk <igor.opaniuk@toradex.com>
>
> 1. Replace boiler plate licenses texts with the SPDX license
> identifiers in Toradex i.MX7-based SoM device trees.
> 2. As X11 is identical to the MIT License, but with an extra sentence
> that prohibits using the copyright holders' names for advertising or
> promotional purposes without written permission, use MIT license instead
> of X11 ('s/X11/MIT/g').
> 3. Replace "Toradex AG" with "Toradex" in the Copyright notice.
>
> Signed-off-by: Igor Opaniuk <igor.opaniuk@toradex.com>

Reviewed-by: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>

> ---
>
>  arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi | 41 +--------------------
>  arch/arm/boot/dts/imx7-colibri.dtsi         | 41 +--------------------
>  arch/arm/boot/dts/imx7d-colibri-eval-v3.dts | 41 +--------------------
>  arch/arm/boot/dts/imx7d-colibri.dtsi        | 41 +--------------------
>  arch/arm/boot/dts/imx7s-colibri-eval-v3.dts | 41 +--------------------
>  arch/arm/boot/dts/imx7s-colibri.dtsi        | 41 +--------------------
>  6 files changed, 12 insertions(+), 234 deletions(-)
>
> diff --git a/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi b/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
> index 6aa123cbdadb..146f00dbf852 100644
> --- a/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
> +++ b/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
> @@ -1,43 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0+ OR MIT
>  /*
> - * Copyright 2016 Toradex AG
> - *
> - * This file is dual-licensed: you can use it either under the terms
> - * of the GPL or the X11 license, at your option. Note that this dual
> - * licensing only applies to this file, and not this project as a
> - * whole.
> - *
> - *  a) This file is free software; you can redistribute it and/or
> - *     modify it under the terms of the GNU General Public License as
> - *     published by the Free Software Foundation; either version 2 of the
> - *     License, or (at your option) any later version.
> - *
> - *     This file is distributed in the hope that it will be useful,
> - *     but WITHOUT ANY WARRANTY; without even the implied warranty of
> - *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - *     GNU General Public License for more details.
> - *
> - * Or, alternatively,
> - *
> - *  b) Permission is hereby granted, free of charge, to any person
> - *     obtaining a copy of this software and associated documentation
> - *     files (the "Software"), to deal in the Software without
> - *     restriction, including without limitation the rights to use,
> - *     copy, modify, merge, publish, distribute, sublicense, and/or
> - *     sell copies of the Software, and to permit persons to whom the
> - *     Software is furnished to do so, subject to the following
> - *     conditions:
> - *
> - *     The above copyright notice and this permission notice shall be
> - *     included in all copies or substantial portions of the Software.
> - *
> - *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
> - *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
> - *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
> - *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
> - *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
> - *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
> - *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
> - *     OTHER DEALINGS IN THE SOFTWARE.
> + * Copyright 2016-2020 Toradex
>   */
>
>  / {
> diff --git a/arch/arm/boot/dts/imx7-colibri.dtsi b/arch/arm/boot/dts/imx7-colibri.dtsi
> index 04717cf69db0..729ba8b75310 100644
> --- a/arch/arm/boot/dts/imx7-colibri.dtsi
> +++ b/arch/arm/boot/dts/imx7-colibri.dtsi
> @@ -1,43 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0+ OR MIT
>  /*
> - * Copyright 2016 Toradex AG
> - *
> - * This file is dual-licensed: you can use it either under the terms
> - * of the GPL or the X11 license, at your option. Note that this dual
> - * licensing only applies to this file, and not this project as a
> - * whole.
> - *
> - *  a) This file is free software; you can redistribute it and/or
> - *     modify it under the terms of the GNU General Public License as
> - *     published by the Free Software Foundation; either version 2 of the
> - *     License, or (at your option) any later version.
> - *
> - *     This file is distributed in the hope that it will be useful,
> - *     but WITHOUT ANY WARRANTY; without even the implied warranty of
> - *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - *     GNU General Public License for more details.
> - *
> - * Or, alternatively,
> - *
> - *  b) Permission is hereby granted, free of charge, to any person
> - *     obtaining a copy of this software and associated documentation
> - *     files (the "Software"), to deal in the Software without
> - *     restriction, including without limitation the rights to use,
> - *     copy, modify, merge, publish, distribute, sublicense, and/or
> - *     sell copies of the Software, and to permit persons to whom the
> - *     Software is furnished to do so, subject to the following
> - *     conditions:
> - *
> - *     The above copyright notice and this permission notice shall be
> - *     included in all copies or substantial portions of the Software.
> - *
> - *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
> - *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
> - *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
> - *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
> - *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
> - *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
> - *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
> - *     OTHER DEALINGS IN THE SOFTWARE.
> + * Copyright 2016-2020 Toradex
>   */
>
>  / {
> diff --git a/arch/arm/boot/dts/imx7d-colibri-eval-v3.dts b/arch/arm/boot/dts/imx7d-colibri-eval-v3.dts
> index 136e11ab4893..87b132bcd272 100644
> --- a/arch/arm/boot/dts/imx7d-colibri-eval-v3.dts
> +++ b/arch/arm/boot/dts/imx7d-colibri-eval-v3.dts
> @@ -1,43 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0+ OR MIT
>  /*
> - * Copyright 2016 Toradex AG
> - *
> - * This file is dual-licensed: you can use it either under the terms
> - * of the GPL or the X11 license, at your option. Note that this dual
> - * licensing only applies to this file, and not this project as a
> - * whole.
> - *
> - *  a) This file is free software; you can redistribute it and/or
> - *     modify it under the terms of the GNU General Public License as
> - *     published by the Free Software Foundation; either version 2 of the
> - *     License, or (at your option) any later version.
> - *
> - *     This file is distributed in the hope that it will be useful,
> - *     but WITHOUT ANY WARRANTY; without even the implied warranty of
> - *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - *     GNU General Public License for more details.
> - *
> - * Or, alternatively,
> - *
> - *  b) Permission is hereby granted, free of charge, to any person
> - *     obtaining a copy of this software and associated documentation
> - *     files (the "Software"), to deal in the Software without
> - *     restriction, including without limitation the rights to use,
> - *     copy, modify, merge, publish, distribute, sublicense, and/or
> - *     sell copies of the Software, and to permit persons to whom the
> - *     Software is furnished to do so, subject to the following
> - *     conditions:
> - *
> - *     The above copyright notice and this permission notice shall be
> - *     included in all copies or substantial portions of the Software.
> - *
> - *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
> - *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
> - *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
> - *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
> - *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
> - *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
> - *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
> - *     OTHER DEALINGS IN THE SOFTWARE.
> + * Copyright 2016-2020 Toradex
>   */
>
>  /dts-v1/;
> diff --git a/arch/arm/boot/dts/imx7d-colibri.dtsi b/arch/arm/boot/dts/imx7d-colibri.dtsi
> index e2e327f437e3..c59d72e50920 100644
> --- a/arch/arm/boot/dts/imx7d-colibri.dtsi
> +++ b/arch/arm/boot/dts/imx7d-colibri.dtsi
> @@ -1,43 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0+ OR MIT
>  /*
> - * Copyright 2016 Toradex AG
> - *
> - * This file is dual-licensed: you can use it either under the terms
> - * of the GPL or the X11 license, at your option. Note that this dual
> - * licensing only applies to this file, and not this project as a
> - * whole.
> - *
> - *  a) This file is free software; you can redistribute it and/or
> - *     modify it under the terms of the GNU General Public License as
> - *     published by the Free Software Foundation; either version 2 of the
> - *     License, or (at your option) any later version.
> - *
> - *     This file is distributed in the hope that it will be useful,
> - *     but WITHOUT ANY WARRANTY; without even the implied warranty of
> - *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - *     GNU General Public License for more details.
> - *
> - * Or, alternatively,
> - *
> - *  b) Permission is hereby granted, free of charge, to any person
> - *     obtaining a copy of this software and associated documentation
> - *     files (the "Software"), to deal in the Software without
> - *     restriction, including without limitation the rights to use,
> - *     copy, modify, merge, publish, distribute, sublicense, and/or
> - *     sell copies of the Software, and to permit persons to whom the
> - *     Software is furnished to do so, subject to the following
> - *     conditions:
> - *
> - *     The above copyright notice and this permission notice shall be
> - *     included in all copies or substantial portions of the Software.
> - *
> - *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
> - *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
> - *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
> - *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
> - *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
> - *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
> - *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
> - *     OTHER DEALINGS IN THE SOFTWARE.
> + * Copyright 2016-2020 Toradex
>   */
>
>  #include "imx7d.dtsi"
> diff --git a/arch/arm/boot/dts/imx7s-colibri-eval-v3.dts b/arch/arm/boot/dts/imx7s-colibri-eval-v3.dts
> index bd2a49c1ade6..aa70d3f2e2e2 100644
> --- a/arch/arm/boot/dts/imx7s-colibri-eval-v3.dts
> +++ b/arch/arm/boot/dts/imx7s-colibri-eval-v3.dts
> @@ -1,43 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0+ OR MIT
>  /*
> - * Copyright 2016 Toradex AG
> - *
> - * This file is dual-licensed: you can use it either under the terms
> - * of the GPL or the X11 license, at your option. Note that this dual
> - * licensing only applies to this file, and not this project as a
> - * whole.
> - *
> - *  a) This file is free software; you can redistribute it and/or
> - *     modify it under the terms of the GNU General Public License as
> - *     published by the Free Software Foundation; either version 2 of the
> - *     License, or (at your option) any later version.
> - *
> - *     This file is distributed in the hope that it will be useful,
> - *     but WITHOUT ANY WARRANTY; without even the implied warranty of
> - *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - *     GNU General Public License for more details.
> - *
> - * Or, alternatively,
> - *
> - *  b) Permission is hereby granted, free of charge, to any person
> - *     obtaining a copy of this software and associated documentation
> - *     files (the "Software"), to deal in the Software without
> - *     restriction, including without limitation the rights to use,
> - *     copy, modify, merge, publish, distribute, sublicense, and/or
> - *     sell copies of the Software, and to permit persons to whom the
> - *     Software is furnished to do so, subject to the following
> - *     conditions:
> - *
> - *     The above copyright notice and this permission notice shall be
> - *     included in all copies or substantial portions of the Software.
> - *
> - *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
> - *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
> - *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
> - *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
> - *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
> - *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
> - *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
> - *     OTHER DEALINGS IN THE SOFTWARE.
> + * Copyright 2016-2020 Toradex
>   */
>
>  /dts-v1/;
> diff --git a/arch/arm/boot/dts/imx7s-colibri.dtsi b/arch/arm/boot/dts/imx7s-colibri.dtsi
> index 6d16e32aed89..94de220a5965 100644
> --- a/arch/arm/boot/dts/imx7s-colibri.dtsi
> +++ b/arch/arm/boot/dts/imx7s-colibri.dtsi
> @@ -1,43 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0+ OR MIT
>  /*
> - * Copyright 2016 Toradex AG
> - *
> - * This file is dual-licensed: you can use it either under the terms
> - * of the GPL or the X11 license, at your option. Note that this dual
> - * licensing only applies to this file, and not this project as a
> - * whole.
> - *
> - *  a) This file is free software; you can redistribute it and/or
> - *     modify it under the terms of the GNU General Public License as
> - *     published by the Free Software Foundation; either version 2 of the
> - *     License, or (at your option) any later version.
> - *
> - *     This file is distributed in the hope that it will be useful,
> - *     but WITHOUT ANY WARRANTY; without even the implied warranty of
> - *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - *     GNU General Public License for more details.
> - *
> - * Or, alternatively,
> - *
> - *  b) Permission is hereby granted, free of charge, to any person
> - *     obtaining a copy of this software and associated documentation
> - *     files (the "Software"), to deal in the Software without
> - *     restriction, including without limitation the rights to use,
> - *     copy, modify, merge, publish, distribute, sublicense, and/or
> - *     sell copies of the Software, and to permit persons to whom the
> - *     Software is furnished to do so, subject to the following
> - *     conditions:
> - *
> - *     The above copyright notice and this permission notice shall be
> - *     included in all copies or substantial portions of the Software.
> - *
> - *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
> - *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
> - *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
> - *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
> - *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
> - *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
> - *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
> - *     OTHER DEALINGS IN THE SOFTWARE.
> + * Copyright 2016-2020 Toradex
>   */
>
>  #include "imx7s.dtsi"
> --
> 2.17.1
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
