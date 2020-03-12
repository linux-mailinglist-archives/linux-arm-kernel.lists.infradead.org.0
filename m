Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDEA4182C28
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 10:16:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=57/RJtUc8Crr1Uh2ef0AwNN4sgKaEj2xjSGnn0P20Gc=; b=dR6uMNTgP2koY/
	+mTnnuU5T6JmPX1Mi8EovECAYjaJ/Oed4Y1FkT0+UiNU08CHwCSuyXwIzZ0rZ+vOwdaCOF8Hltzvs
	S1EkTspSI/t7ZPJpzcPTFRWqGTcXlSjKQrC3NqBLXvYmgd1G+l7fl/gvmv/p7mDq0wjjApRGNj98y
	AFq1wVrXGouydu+0zIDdCDPCqRD/7QfFS4A4Js5jBRhtRIRbqV0KNQd32APUry/w3KsaNOvhSBQw4
	dkFFw6qHkDNJOWmozqbftB7ntDVgyAA77lRriEtWzMx8/xzCisyMYPLuPVqcSMiAeWQfEErH4mm5O
	Zv6j3M1jM2B3625kExpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCJx4-0000zq-ON; Thu, 12 Mar 2020 09:16:26 +0000
Received: from mail-am6eur05on2106.outbound.protection.outlook.com
 ([40.107.22.106] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCJwt-0000yi-JE
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 09:16:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LDjFOtHEewD7KTvtvzIMWBc/r97FmmkA4tPt/CFcXmHFxuWo8OQRyOIcxzz+k9OsZIWEwpl8WdJh0XEKkEp0yHCaAsXtcdE+BDB2SfrREctcYhI9C1iZymtsTFNv31umL3RtStc59hRRoOsfjNHykapAJ6CcaYTvSUAz5/mx2hXVrOH48P2Gy7Cq2fY5uBXHZZ/hlprSc8o0V9MKLMx6w0hj3QkcHfCi5J/1ZZiTCL5UhlebSCQ+ZP/fiZm9KiNIXOpTFwhbQTrIr/iTTTLnAZ9BBpo66opY50ibamoEkUtOLOR/BQM1/yXFEzf+4vNxTZCE+0Ia0ToqFbBCtscJNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3mjKG86nSUHyARBNohw8DWaNSfMOtckFMucX5tNLCmo=;
 b=GcgGCONvodE+e/EhkcmMmtyM4zA4CYXghzIBSeIrLeM3XbX/OvuM9g/eynzKtQ5zT6bmYAU5C1b9JhCXxyMv5FOOzcEmfkbDvFTx2FE5G2S2vQO4g1RJ63GDr4/GrcvPAX2R8zA85qN61IQtc9ejjhG+lQE1pgsP9k+VDrMZUAkXggP08c9JJLqS71UGs2j/f12U9sJtcbtQyvl1AHcvRIvzCapDodQ9ICm49fCozBwbkNuECK60ZotJMl1OMIxyg+wo6ADzDwS8XfG6QXMmLBhYWlcUhjRTQlMqHXhy59NB5+RfzeficUdyyU5Kaw/iAd8DDqNW8rDGPcb8f0ZDCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3mjKG86nSUHyARBNohw8DWaNSfMOtckFMucX5tNLCmo=;
 b=VGXOSKAkjybK6A1ll3SLiYnSEePdijcJReaNNBLZqENG3S2qajmImithNoV3eXQrULRVHrs42LSwPoxIBfRxjlKVWbnlsGiNplso2LS+lYQcjLQvjisgtS7HKp2rxuljPbnH3Q7MOXkKWQuVu0IpvukKlqHU8lYmxDu3ICn5znc=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=oleksandr.suvorov@toradex.com; 
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com (10.170.238.24) by
 VI1PR05MB5053.eurprd05.prod.outlook.com (20.177.50.218) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.14; Thu, 12 Mar 2020 09:16:05 +0000
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::7cdd:4feb:a8b6:a6d2]) by VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::7cdd:4feb:a8b6:a6d2%7]) with mapi id 15.20.2793.018; Thu, 12 Mar 2020
 09:16:05 +0000
X-Gm-Message-State: ANhLgQ1gTxLcvx7Kmi652GDuBOlO9hYOq8TUOxhOgVGE+g4A2Sw5MeJn
 dmXD4Hqlbju9X/+rfVekNgBju6GmyJvd5BiEyf4=
X-Google-Smtp-Source: ADFU+vvimqeMEQw/EnBW8BRG+fLZ1l/RvtnlUJTfoxQK+b947Kk/iNs61FwWFel/O17ih2qCqVl5wahcIKnRY0k0yGY=
X-Received: by 2002:a0c:c389:: with SMTP id o9mr6504902qvi.232.1584004560440; 
 Thu, 12 Mar 2020 02:16:00 -0700 (PDT)
References: <20200312083830.18011-1-igor.opaniuk@gmail.com>
 <20200312083830.18011-2-igor.opaniuk@gmail.com>
In-Reply-To: <20200312083830.18011-2-igor.opaniuk@gmail.com>
From: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
Date: Thu, 12 Mar 2020 11:15:49 +0200
X-Gmail-Original-Message-ID: <CAGgjyvFuR_PhKOZUJFJV1Lrf5SKCF9bc+v8f7RgEY7kHEv7saw@mail.gmail.com>
Message-ID: <CAGgjyvFuR_PhKOZUJFJV1Lrf5SKCF9bc+v8f7RgEY7kHEv7saw@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] arm: dts: imx6: toradex: use
 SPDX-License-Identifier
To: Igor Opaniuk <igor.opaniuk@gmail.com>
X-ClientProxiedBy: MN2PR08CA0001.namprd08.prod.outlook.com
 (2603:10b6:208:239::6) To VI1PR05MB3279.eurprd05.prod.outlook.com
 (2603:10a6:802:1c::24)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from mail-qv1-f46.google.com (209.85.219.46) by
 MN2PR08CA0001.namprd08.prod.outlook.com (2603:10b6:208:239::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17 via Frontend Transport; Thu, 12 Mar 2020 09:16:05 +0000
Received: by mail-qv1-f46.google.com with SMTP id fc12so2225676qvb.6 for
 <linux-arm-kernel@lists.infradead.org>; Thu, 12 Mar 2020 02:16:05 -0700 (PDT)
X-Gm-Message-State: ANhLgQ1gTxLcvx7Kmi652GDuBOlO9hYOq8TUOxhOgVGE+g4A2Sw5MeJn
 dmXD4Hqlbju9X/+rfVekNgBju6GmyJvd5BiEyf4=
X-Google-Smtp-Source: ADFU+vvimqeMEQw/EnBW8BRG+fLZ1l/RvtnlUJTfoxQK+b947Kk/iNs61FwWFel/O17ih2qCqVl5wahcIKnRY0k0yGY=
X-Received: by 2002:a0c:c389:: with SMTP id o9mr6504902qvi.232.1584004560440; 
 Thu, 12 Mar 2020 02:16:00 -0700 (PDT)
X-Gmail-Original-Message-ID: <CAGgjyvFuR_PhKOZUJFJV1Lrf5SKCF9bc+v8f7RgEY7kHEv7saw@mail.gmail.com>
X-Originating-IP: [209.85.219.46]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 468d45b6-52b4-4bc2-b495-08d7c665fdfa
X-MS-TrafficTypeDiagnostic: VI1PR05MB5053:
X-Microsoft-Antispam-PRVS: <VI1PR05MB505351DCCA0CC376E2DB35E6F9FD0@VI1PR05MB5053.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-Forefront-PRVS: 0340850FCD
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(346002)(376002)(366004)(39850400004)(396003)(199004)(186003)(316002)(86362001)(42186006)(26005)(8676002)(44832011)(9686003)(8936002)(81156014)(53546011)(81166006)(66556008)(66946007)(54906003)(5660300002)(66476007)(2906002)(55236004)(52116002)(478600001)(6666004)(30864003)(55446002)(107886003)(6862004)(4326008)(2004002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB5053;
 H:VI1PR05MB3279.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4GE5anW1mSG8wbkDei/JRuUuY3TXWbuljr/T2KhTnjGkUlFgVFywaUY4y1OiqWjkd1eufA0esBMs67ydLnH9SUPGfCnrBtBI37STtnFNBgfCUBVmWMKOpcoANjgFT1nQcPkjYsJEUgtbBCC6ZxWYPNgfwGyyXo3Jz0wJ3TTUDx5PNx4AhZ3azdPQp2SUbOATi3wA2wkef83sQWoiqUxfFKtIUleRE977egpc0F8ZmIWHCVLvSf2qOiuCUhP4DJAw/Qmexsvjzm2sENbx/3Q/a4EQ4lpDgoD5zizXEuFkAiGTpgd1lfBbObjM3+YgJAjCDI7kcu+SxtwKVsqdNH82UUcwKbDT+BLCZbw7pod6DDPuxxZX+9npSraZsxxuNAoZxEhnj0AymnR52TJzZyAbjJmDql7JIJcini6IaATDuc2t76LVnVLAJJBFlVbV2nNd4VSHhjN9swrehVoeFA1e0IsYhCYzmNqIo+pQmdkc83Y=
X-MS-Exchange-AntiSpam-MessageData: NwX7jAi2lfLTC3VJtehk3751uHAwxId3mrubW2z+i/+pTSV8UmJk6y+OZ2A12kQGyV+cj8wNZTVKbaCdBMr6GMiPtlC+zmNtDQ2w2lpreCk8k0MC8dy2aF2BQcbBBbBIXI3mzzNfucKql+Za4Kmg+A==
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 468d45b6-52b4-4bc2-b495-08d7c665fdfa
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2020 09:16:05.3555 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aDBeTACa8eJv9rjxle277gbBPlm6QJi6439XLZhYD/eqtRVryrJu44vCQ6XQtio62iP9AsC1UTDaAKDJrBjwDBC5J2ugygUUDR5CZEPFXDA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB5053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_021615_842899_97D593D5 
X-CRM114-Status: GOOD (  21.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.106 listed in list.dnswl.org]
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
> identifiers in Toradex iMX6-based SoM device trees.
> 2. As X11 is identical to the MIT License, but with an extra sentence
> that prohibits using the copyright holders' names for advertising or
> promotional purposes without written permission, use MIT license instead
> of X11 ('s/X11/MIT/g').
> 3. Replace "Toradex AG" with "Toradex" in the Copyright notice.
> 4. Use GPL2.0+ instead of GPL2.0, as it's used now by default for all
> new DTS files from Toradex.
>
> Signed-off-by: Igor Opaniuk <igor.opaniuk@toradex.com>

Reviewed-by: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>

> ---
>
>  arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts  | 40 +------------------
>  arch/arm/boot/dts/imx6q-apalis-eval.dts       | 40 +------------------
>  arch/arm/boot/dts/imx6q-apalis-ixora-v1.1.dts | 40 +------------------
>  arch/arm/boot/dts/imx6q-apalis-ixora.dts      | 40 +------------------
>  arch/arm/boot/dts/imx6qdl-apalis.dtsi         | 40 +------------------
>  arch/arm/boot/dts/imx6qdl-colibri.dtsi        | 40 +------------------
>  6 files changed, 12 insertions(+), 228 deletions(-)
>
> diff --git a/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts b/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts
> index 84fcc203a2e4..65359aece950 100644
> --- a/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts
> +++ b/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts
> @@ -1,44 +1,8 @@
> +// SPDX-License-Identifier: GPL-2.0+ OR MIT
>  /*
> - * Copyright 2014-2016 Toradex AG
> + * Copyright 2014-2020 Toradex
>   * Copyright 2012 Freescale Semiconductor, Inc.
>   * Copyright 2011 Linaro Ltd.
> - *
> - * This file is dual-licensed: you can use it either under the terms
> - * of the GPL or the X11 license, at your option. Note that this dual
> - * licensing only applies to this file, and not this project as a
> - * whole.
> - *
> - *  a) This file is free software; you can redistribute it and/or
> - *     modify it under the terms of the GNU General Public License
> - *     version 2 as published by the Free Software Foundation.
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
>   */
>
>  /dts-v1/;
> diff --git a/arch/arm/boot/dts/imx6q-apalis-eval.dts b/arch/arm/boot/dts/imx6q-apalis-eval.dts
> index 4665e15b196d..fab83abb6466 100644
> --- a/arch/arm/boot/dts/imx6q-apalis-eval.dts
> +++ b/arch/arm/boot/dts/imx6q-apalis-eval.dts
> @@ -1,44 +1,8 @@
> +// SPDX-License-Identifier: GPL-2.0+ OR MIT
>  /*
> - * Copyright 2014-2017 Toradex AG
> + * Copyright 2014-2020 Toradex
>   * Copyright 2012 Freescale Semiconductor, Inc.
>   * Copyright 2011 Linaro Ltd.
> - *
> - * This file is dual-licensed: you can use it either under the terms
> - * of the GPL or the X11 license, at your option. Note that this dual
> - * licensing only applies to this file, and not this project as a
> - * whole.
> - *
> - *  a) This file is free software; you can redistribute it and/or
> - *     modify it under the terms of the GNU General Public License
> - *     version 2 as published by the Free Software Foundation.
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
>   */
>
>  /dts-v1/;
> diff --git a/arch/arm/boot/dts/imx6q-apalis-ixora-v1.1.dts b/arch/arm/boot/dts/imx6q-apalis-ixora-v1.1.dts
> index a3fa04a97d81..1614b1ae501d 100644
> --- a/arch/arm/boot/dts/imx6q-apalis-ixora-v1.1.dts
> +++ b/arch/arm/boot/dts/imx6q-apalis-ixora-v1.1.dts
> @@ -1,44 +1,8 @@
> +// SPDX-License-Identifier: GPL-2.0+ OR MIT
>  /*
> - * Copyright 2014-2017 Toradex AG
> + * Copyright 2014-2020 Toradex
>   * Copyright 2012 Freescale Semiconductor, Inc.
>   * Copyright 2011 Linaro Ltd.
> - *
> - * This file is dual-licensed: you can use it either under the terms
> - * of the GPL or the X11 license, at your option. Note that this dual
> - * licensing only applies to this file, and not this project as a
> - * whole.
> - *
> - *  a) This file is free software; you can redistribute it and/or
> - *     modify it under the terms of the GNU General Public License
> - *     version 2 as published by the Free Software Foundation.
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
>   */
>
>  /dts-v1/;
> diff --git a/arch/arm/boot/dts/imx6q-apalis-ixora.dts b/arch/arm/boot/dts/imx6q-apalis-ixora.dts
> index 5ba49d0f4880..fa9f98dd15ac 100644
> --- a/arch/arm/boot/dts/imx6q-apalis-ixora.dts
> +++ b/arch/arm/boot/dts/imx6q-apalis-ixora.dts
> @@ -1,44 +1,8 @@
> +// SPDX-License-Identifier: GPL-2.0+ OR MIT
>  /*
> - * Copyright 2014-2017 Toradex AG
> + * Copyright 2014-2020 Toradex
>   * Copyright 2012 Freescale Semiconductor, Inc.
>   * Copyright 2011 Linaro Ltd.
> - *
> - * This file is dual-licensed: you can use it either under the terms
> - * of the GPL or the X11 license, at your option. Note that this dual
> - * licensing only applies to this file, and not this project as a
> - * whole.
> - *
> - *  a) This file is free software; you can redistribute it and/or
> - *     modify it under the terms of the GNU General Public License
> - *     version 2 as published by the Free Software Foundation.
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
>   */
>
>  /dts-v1/;
> diff --git a/arch/arm/boot/dts/imx6qdl-apalis.dtsi b/arch/arm/boot/dts/imx6qdl-apalis.dtsi
> index 1b5bc6b5e806..8382f01affbe 100644
> --- a/arch/arm/boot/dts/imx6qdl-apalis.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-apalis.dtsi
> @@ -1,44 +1,8 @@
> +// SPDX-License-Identifier: GPL-2.0+ OR MIT
>  /*
> - * Copyright 2014-2017 Toradex AG
> + * Copyright 2014-2020 Toradex
>   * Copyright 2012 Freescale Semiconductor, Inc.
>   * Copyright 2011 Linaro Ltd.
> - *
> - * This file is dual-licensed: you can use it either under the terms
> - * of the GPL or the X11 license, at your option. Note that this dual
> - * licensing only applies to this file, and not this project as a
> - * whole.
> - *
> - *  a) This file is free software; you can redistribute it and/or
> - *     modify it under the terms of the GNU General Public License
> - *     version 2 as published by the Free Software Foundation.
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
>   */
>
>  #include <dt-bindings/gpio/gpio.h>
> diff --git a/arch/arm/boot/dts/imx6qdl-colibri.dtsi b/arch/arm/boot/dts/imx6qdl-colibri.dtsi
> index d03dff23863d..6e3c6b4925a7 100644
> --- a/arch/arm/boot/dts/imx6qdl-colibri.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-colibri.dtsi
> @@ -1,44 +1,8 @@
> +// SPDX-License-Identifier: GPL-2.0+ OR MIT
>  /*
> - * Copyright 2014-2016 Toradex AG
> + * Copyright 2014-2020 Toradex
>   * Copyright 2012 Freescale Semiconductor, Inc.
>   * Copyright 2011 Linaro Ltd.
> - *
> - * This file is dual-licensed: you can use it either under the terms
> - * of the GPL or the X11 license, at your option. Note that this dual
> - * licensing only applies to this file, and not this project as a
> - * whole.
> - *
> - *  a) This file is free software; you can redistribute it and/or
> - *     modify it under the terms of the GNU General Public License
> - *     version 2 as published by the Free Software Foundation.
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
>   */
>
>  #include <dt-bindings/gpio/gpio.h>
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
