Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FEDE16FAAD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 10:26:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D2OQ7R8AQZZVfjt2OfVrCMEGc4M007LcDqvqa9jD7ZA=; b=UttRkvnaY5g4pA
	CFLyq75j04RunDAWRp5QBmGeRyId5frBNy+0F0kjX7npRd8KstbbhjPKQu3TJQsbBfak823noYLlC
	4+hIn0PEzrkV+w41zY7+VysGhV7CtXKRbS3M/MaGUk2Zk2TTgfPmuKAHsVZg+QCYD5NmbXeJWwk5i
	lh45+qfIdOzQlnzETcGaG3AoKgdjKHrbeR778m1zulsbGhE+mWWS2tcMtKSMRD7WyIbVDO4jK17Vk
	3wmMOF+sbi/iaTURL8qh7LMgOnTYprxLj1wdy6KroNv9eLJn5UxJzrTyklP/tsjY03t9jcGbujcOH
	5uROdZ4UPpclMhNZpp0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6sxe-0005nV-DM; Wed, 26 Feb 2020 09:26:34 +0000
Received: from mail-eopbgr00111.outbound.protection.outlook.com
 ([40.107.0.111] helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6sxS-0005mU-HU
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 09:26:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E1W9m16k46Fl9Vh+ZPjzz9J0adXwfOoMnQfxFwl1xAMlse/+jeApPwJeWC4byP95Wdr2130HopRK6IH8bTp6UX1qlKEX6dBISfIrxAFPww7YN9bFLchSSzm6XEjbBW27+OuBGp+ZEu/480Ijlo6AICSNE9AFMWfclVdKesrsOurBCfYN/32nLR7dPR4vDsco4xFG7ZOzDuZWboxv5x3aq0I3uchOOEwpT/IVFFezu+3GwGXipNBIICod1wfL+GdOcxsFlccsOIoN5tqDiGWKT254vlpwF/tabOAF41EBk7uSGK3/qo7cKfl2vePQg5da3S1tX6gDLvE+UpNdLaMsLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Jm6wCoIrSRdae9+OcWUOGpbLSQoLy5TGjyW0FAWqe3w=;
 b=mdaNsU56fLsSTMeoEXja6cjFGBkmrVxgyMqchZga697bIaFlfMLoNJnZ13VHMLqCk8qSb1QSBUsD+iCYA5j8+1vT2fuNwyLDDlbMVwmpwyBe6Eqk8Kp7GarN9iUIhhOtK4LpBV9zOlC/Pp4b5FQKZdrfWWFSvfmn1gMVOHxbv9C7PpIZ25EMLST5EuhMA71NnUHE/iQdMmI9/C0sgeLVygxR8Pp0ZeqkQhyV8ZKXGSSa4ssJ35P9qchW0m4FmQHMZZL/ey7jFSFXJoEg4Va/CXM4IUQdIB9shLGvqa5D4sTnfT8/NeJSyewNM0eTo8CFzh4iRy4dlJXHOX9KgOusXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Jm6wCoIrSRdae9+OcWUOGpbLSQoLy5TGjyW0FAWqe3w=;
 b=k3TAXMkOCgNu115rzopY3b6dLGmEoy6VUXa+42Gm5aOeEkAWH1E8TEcfbUcMDKyF6LVhJE0WQt47XzvsLFMROkAnK5Cd9zE/sEZle5WYymIv7o5yf+3/NHJfaENDsVCoIpqic2zcvX4XiOpRYIZpVRvlmlwpHsnzjOsYWWfdbgc=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=oleksandr.suvorov@toradex.com; 
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com (10.170.238.24) by
 VI1PR05MB7038.eurprd05.prod.outlook.com (10.141.234.204) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.21; Wed, 26 Feb 2020 09:26:12 +0000
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::c14f:4592:515f:6e52]) by VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::c14f:4592:515f:6e52%7]) with mapi id 15.20.2750.021; Wed, 26 Feb 2020
 09:26:12 +0000
X-Gm-Message-State: APjAAAXJB9wOSdd33eNczR+CAsijSANMaMtX65NvRmPxNTHhKDiI5W+Q
 T12YiLHB+Jz5ylDRKYG0vqp8hW22RwZwrVP/0LQ=
X-Google-Smtp-Source: APXvYqyqlowJsnKaBefZeDsevUoluXp6clUEDmq1O7fLzUohW6ee/wUVB4wIp1NvZgoJnYzGHWN269GF+EtFofTy6/g=
X-Received: by 2002:a05:620a:22b0:: with SMTP id
 p16mr3974239qkh.468.1582709166158; 
 Wed, 26 Feb 2020 01:26:06 -0800 (PST)
References: <1582565548-20627-1-git-send-email-igor.opaniuk@gmail.com>
 <1582565548-20627-2-git-send-email-igor.opaniuk@gmail.com>
In-Reply-To: <1582565548-20627-2-git-send-email-igor.opaniuk@gmail.com>
From: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
Date: Wed, 26 Feb 2020 11:25:54 +0200
X-Gmail-Original-Message-ID: <CAGgjyvGhTCatjR5-qCNn=bfjBhgPOAynYZPh3WF1w7civEuKJw@mail.gmail.com>
Message-ID: <CAGgjyvGhTCatjR5-qCNn=bfjBhgPOAynYZPh3WF1w7civEuKJw@mail.gmail.com>
Subject: Re: [PATCH v1 2/5] arm: dts: imx7: toradex: use
 SPDX-License-Identifier
To: Igor Opaniuk <igor.opaniuk@gmail.com>
X-ClientProxiedBy: MN2PR18CA0020.namprd18.prod.outlook.com
 (2603:10b6:208:23c::25) To VI1PR05MB3279.eurprd05.prod.outlook.com
 (2603:10a6:802:1c::24)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from mail-qk1-f177.google.com (209.85.222.177) by
 MN2PR18CA0020.namprd18.prod.outlook.com (2603:10b6:208:23c::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.14 via Frontend
 Transport; Wed, 26 Feb 2020 09:26:10 +0000
Received: by mail-qk1-f177.google.com with SMTP id 145so2009861qkl.2 for
 <linux-arm-kernel@lists.infradead.org>; Wed, 26 Feb 2020 01:26:10 -0800 (PST)
X-Gm-Message-State: APjAAAXJB9wOSdd33eNczR+CAsijSANMaMtX65NvRmPxNTHhKDiI5W+Q
 T12YiLHB+Jz5ylDRKYG0vqp8hW22RwZwrVP/0LQ=
X-Google-Smtp-Source: APXvYqyqlowJsnKaBefZeDsevUoluXp6clUEDmq1O7fLzUohW6ee/wUVB4wIp1NvZgoJnYzGHWN269GF+EtFofTy6/g=
X-Received: by 2002:a05:620a:22b0:: with SMTP id
 p16mr3974239qkh.468.1582709166158; Wed, 26 Feb 2020 01:26:06 -0800 (PST)
X-Gmail-Original-Message-ID: <CAGgjyvGhTCatjR5-qCNn=bfjBhgPOAynYZPh3WF1w7civEuKJw@mail.gmail.com>
X-Originating-IP: [209.85.222.177]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 65e4f8ca-0105-4f75-dec6-08d7ba9dea7e
X-MS-TrafficTypeDiagnostic: VI1PR05MB7038:
X-Microsoft-Antispam-PRVS: <VI1PR05MB70381BAD479541EB83B82A6CF9EA0@VI1PR05MB7038.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 0325F6C77B
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(376002)(39850400004)(136003)(346002)(366004)(199004)(189003)(316002)(86362001)(26005)(107886003)(6862004)(2906002)(478600001)(52116002)(66946007)(55446002)(5660300002)(66476007)(81156014)(53546011)(4326008)(6666004)(66556008)(44832011)(9686003)(54906003)(30864003)(8936002)(8676002)(81166006)(42186006)(186003)(2004002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB7038;
 H:VI1PR05MB3279.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Rph24AzN1+yjTQN0W2WwBns5ckRd5NPEbs+U/5k7dKAOGLjHtm8yqg06tv0h/tUQoglU6VnHM9usl80KjPMcv0P0p/w6bvoxvJdpUOLfQ2BZrjZes8+ptzy3xociSQBlbyYUe0JYwRttiIVzHrVP60vD/RY15qcfk8QpynWJFtTvdAQZsTcvpy1bDOfevt4k1ZBjeMfYCHyvUfxHWNbOHdqVXZfCgjxCNGFoHHl1d1cG9ekOuStUFsNkHodZ1aY6IHf8t0VSR4oH+QUd9t7fiR54TuFkL1UhyjWwPnB1aKw3YQtRGcbHQz5JOPcatt8aX0766yFoLtQbT0od3A/jMGXulL8mfA7dvBBijSL/jDjXH5jnJAZlXDwgGV0s9Rtnjwt97cevixDV4Wpak5jDpMZ09A2w5/ltx9erOiRSJtmrUxlXS6A6V/hAnvOaZwCXKrgDRU87tRsGyFpCxjI5VUlx3M/WMGpMBDA9eTy4g18=
X-MS-Exchange-AntiSpam-MessageData: CzKp95vWrjI6/d3pteQoPiCXFWMIsklpQn3byaziEI7bQR3v4O3kh/kd47JyZmhRl1X6gBRi06WWZ4XzFtBm3gWy4diK0HXnEIP4lApIW65hPjOQ49uEwSRsjWcQKvz17ibiEZAjrGAXyyz5Olw4OQ==
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 65e4f8ca-0105-4f75-dec6-08d7ba9dea7e
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2020 09:26:10.5807 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FiQC4If9iKGKk7qZHYOy+8g4Llh75XCx4MVO1/NPzR9UzToDCFF2uV1wZp+6xzO8UJGhVkMwhO6xuo85zztqVuGap6w5BFNFW0PQhmSKm7A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB7038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_012622_777532_128EE2A8 
X-CRM114-Status: GOOD (  20.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.111 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Mon, Feb 24, 2020 at 7:34 PM Igor Opaniuk <igor.opaniuk@gmail.com> wrote:
>
> From: Igor Opaniuk <igor.opaniuk@toradex.com>
>
> 1. Replace boiler plate licenses texts with the SPDX license
> identifiers in Toradex i.MX7-based SoM device trees.
> 2. As X11 is identical to the MIT License, but with an extra sentence
> that prohibits using the copyright holders' names for advertising or
> promotional purposes without written permission, use MIT license instead
> of X11 ('s/X11/MIT/g').
>
> Signed-off-by: Igor Opaniuk <igor.opaniuk@toradex.com>

Reviewed-by: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>

> ---
>
>  arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi | 41 ++---------------------------
>  arch/arm/boot/dts/imx7-colibri.dtsi         | 41 ++---------------------------
>  arch/arm/boot/dts/imx7d-colibri-eval-v3.dts | 41 ++---------------------------
>  arch/arm/boot/dts/imx7d-colibri.dtsi        | 41 ++---------------------------
>  arch/arm/boot/dts/imx7s-colibri-eval-v3.dts | 41 ++---------------------------
>  arch/arm/boot/dts/imx7s-colibri.dtsi        | 41 ++---------------------------
>  6 files changed, 12 insertions(+), 234 deletions(-)
>
> diff --git a/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi b/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
> index 6aa123c..0ec2b81 100644
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
> + * Copyright 2016-2020 Toradex AG
>   */
>
>  / {
> diff --git a/arch/arm/boot/dts/imx7-colibri.dtsi b/arch/arm/boot/dts/imx7-colibri.dtsi
> index d05be3f..70fc3a6 100644
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
> + * Copyright 2016-2020  Toradex AG
>   */
>
>  / {
> diff --git a/arch/arm/boot/dts/imx7d-colibri-eval-v3.dts b/arch/arm/boot/dts/imx7d-colibri-eval-v3.dts
> index 136e11a..8ae4c58 100644
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
> + * Copyright 2016-2020 Toradex AG
>   */
>
>  /dts-v1/;
> diff --git a/arch/arm/boot/dts/imx7d-colibri.dtsi b/arch/arm/boot/dts/imx7d-colibri.dtsi
> index e2e327f..13331df 100644
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
> + * Copyright 2016-2020 Toradex AG
>   */
>
>  #include "imx7d.dtsi"
> diff --git a/arch/arm/boot/dts/imx7s-colibri-eval-v3.dts b/arch/arm/boot/dts/imx7s-colibri-eval-v3.dts
> index bd2a49c..1d1b438 100644
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
> + * Copyright 2016-2020 Toradex AG
>   */
>
>  /dts-v1/;
> diff --git a/arch/arm/boot/dts/imx7s-colibri.dtsi b/arch/arm/boot/dts/imx7s-colibri.dtsi
> index 6d16e32..3b85b0b 100644
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
> + * Copyright 2016-2020 Toradex AG
>   */
>
>  #include "imx7s.dtsi"
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
