Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0DED182C6D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 10:26:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=duKS0U/juXm0TXwiQCKAjFMsvxir/umV5CSQFep94BY=; b=RX9RHZHdFMpIyv
	5lYgHd8Z3FxMruKDerBteZN120enX278YzkxNziMmD7hf8Z2b9tymN6MsLtvCZ4mdNuFFYBumgljk
	B6vqorSYbgv9ciTrh30K98yjpxEcOwknHFhE+EtYKLG08TSHcOAlAP3fc29CzEluK/x4hvxipFQSZ
	u013aw3WKE0ZxnriD1oyqyUYlk2QLnsrEQNmdj6vLiBvaNna6Cigd/gOAnYDWurUIcTZhCpAc5ICB
	8os5U9dtnOHAxCPDwvb60fJltBTrMVXZolpyx3XyNQn8ShfEx0hwAbXLEm9UlTplltIlR2ZVndWM0
	GdAjfMF454WgpiAbxkfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCK6f-0006xd-An; Thu, 12 Mar 2020 09:26:21 +0000
Received: from mail-vi1eur05on2136.outbound.protection.outlook.com
 ([40.107.21.136] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCK6U-0006uV-4t
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 09:26:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZHpWDAOcKcGZL1GqNUblW2P80oj23ADMEh0MP7ia1LmFkxrJY4MlWutZx0G4872OTpdmIPTy2OW/Qf7nfLFkoPoOyks3wm70zSo+MqGRaIAa/t9Q8+IkuiNG+rywcF7YIRAXjNj7GHDYH/wDRV2WLEAgiZ00fNIOYaCPRQKaTUO/RCAZcYcFNunhmkaV/YU19EIG4hAR6bmfJ4JkC+C8SCyd9CAhiYVvCOSmfWLtLzgTshmHbZRpdOKbqjMKCOjgkbxaChn/sNOOBw2p5p/ndbCBLFf9flSeR9X7BtdEYbSTKwNwGpisIMo0tkBLGscDslbW0mEsOOVA7Y3pRBr35g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3++/2pTKS8kOwO3uvCIXrygSeiMUxOvcf6PjUd5NHHQ=;
 b=R3kR8eOROjgiB8tdmEcsVk3jANLeLPrt6b3nNQ9u1An1z0y7jU2pRmwfHsVFrc5HgRImFE/hQDSrxnaZRw30o5OgiXgCRWMpiSJZIe83Iv6zyQUTvokntktH9peFxlk4s8F0zDFO1h8IIY40fq6vXHnoyHlCuScynEU8XE47OQIjqEisOUK2Rs4x5R3A5kanHnBJjaTPoQ0a1OE1OskU7Z1tvKq0Z0Qw4dO4OQV7P7zGSaRv7/sm+TnJ3RFOS409PfDrB+CuvWDj3Qh0cmHkw6HI3fRhIxUz5FJWsMoxng9JL45rKdlUTc7YEzKPpwvXP7jWsTurl5rVTXKO0mZJ4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3++/2pTKS8kOwO3uvCIXrygSeiMUxOvcf6PjUd5NHHQ=;
 b=CMehT3Zf/WD1alc4p+BaSbzKFXfGeIYiocpV4n+CO2J94zoAyRaYcjbI8AKT9vgtHW5AMvcq9oMYbjXlabjRQaViUfJxoFQKDA99rK79mhwHrl2U1fJ0ZioRz6kOEmSjP3bhGXX71lVxHOiSB66FfhsZP7PyMIVQriEPNdMQ+1I=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=oleksandr.suvorov@toradex.com; 
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com (10.170.238.24) by
 VI1PR05MB4654.eurprd05.prod.outlook.com (20.176.7.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Thu, 12 Mar 2020 09:26:07 +0000
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::7cdd:4feb:a8b6:a6d2]) by VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::7cdd:4feb:a8b6:a6d2%7]) with mapi id 15.20.2793.018; Thu, 12 Mar 2020
 09:26:07 +0000
X-Gm-Message-State: ANhLgQ2WNYhYsxpYQqPjLAhgAqvgpAt/qLPk3lEl9wfhm7iwf0ImVgnr
 1GbMDazsxzoASFWGqbyNm1/T59cBd22z1p+AUcg=
X-Google-Smtp-Source: ADFU+vt+Gknmy2iz1LGVBnmmxJ4cPJO6tlCBI1CnuXhGNwj8Yl1GZu4a4s8YOPSS+ZJd24e6W1nAd5Z7ZRFL5x6acxk=
X-Received: by 2002:ae9:e205:: with SMTP id c5mr6351332qkc.468.1584004742894; 
 Thu, 12 Mar 2020 02:19:02 -0700 (PDT)
References: <20200312083830.18011-1-igor.opaniuk@gmail.com>
 <20200312083830.18011-4-igor.opaniuk@gmail.com>
In-Reply-To: <20200312083830.18011-4-igor.opaniuk@gmail.com>
From: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
Date: Thu, 12 Mar 2020 11:18:51 +0200
X-Gmail-Original-Message-ID: <CAGgjyvHLrtffpEz4X6GN+6Aoje8DVj-6EiGiNEtMs519QO7Gvw@mail.gmail.com>
Message-ID: <CAGgjyvHLrtffpEz4X6GN+6Aoje8DVj-6EiGiNEtMs519QO7Gvw@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] arm: dts: vf: toradex: SPDX tags and copyright
 cleanup
To: Igor Opaniuk <igor.opaniuk@gmail.com>
X-ClientProxiedBy: CH2PR14CA0052.namprd14.prod.outlook.com
 (2603:10b6:610:56::32) To VI1PR05MB3279.eurprd05.prod.outlook.com
 (2603:10a6:802:1c::24)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from mail-io1-f45.google.com (209.85.166.45) by
 CH2PR14CA0052.namprd14.prod.outlook.com (2603:10b6:610:56::32) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17 via Frontend Transport; Thu, 12 Mar 2020 09:26:06 +0000
Received: by mail-io1-f45.google.com with SMTP id q128so4929431iof.9 for
 <linux-arm-kernel@lists.infradead.org>; Thu, 12 Mar 2020 02:26:06 -0700 (PDT)
X-Gm-Message-State: ANhLgQ2WNYhYsxpYQqPjLAhgAqvgpAt/qLPk3lEl9wfhm7iwf0ImVgnr
 1GbMDazsxzoASFWGqbyNm1/T59cBd22z1p+AUcg=
X-Google-Smtp-Source: ADFU+vt+Gknmy2iz1LGVBnmmxJ4cPJO6tlCBI1CnuXhGNwj8Yl1GZu4a4s8YOPSS+ZJd24e6W1nAd5Z7ZRFL5x6acxk=
X-Received: by 2002:ae9:e205:: with SMTP id c5mr6351332qkc.468.1584004742894; 
 Thu, 12 Mar 2020 02:19:02 -0700 (PDT)
X-Gmail-Original-Message-ID: <CAGgjyvHLrtffpEz4X6GN+6Aoje8DVj-6EiGiNEtMs519QO7Gvw@mail.gmail.com>
X-Originating-IP: [209.85.166.45]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c20708cc-31be-4752-ed42-08d7c66764a3
X-MS-TrafficTypeDiagnostic: VI1PR05MB4654:
X-Microsoft-Antispam-PRVS: <VI1PR05MB4654F36186649F2F471E07BFF9FD0@VI1PR05MB4654.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-Forefront-PRVS: 0340850FCD
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(39850400004)(376002)(346002)(366004)(136003)(199004)(81156014)(6666004)(2906002)(4326008)(26005)(66946007)(66556008)(66476007)(81166006)(9686003)(8676002)(53546011)(44832011)(55446002)(30864003)(316002)(54906003)(6862004)(186003)(86362001)(478600001)(52116002)(8936002)(42186006)(107886003)(5660300002)(2004002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB4654;
 H:VI1PR05MB3279.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mwNLFYEs27u2Pgfv2busRXmUzrfxB1EkWe16jgvjQ5maiFGYmcZrxMlh+xa1EaPKzzmDa9sCc0ngTvZV7lYH8q770gOfKVk3bMNJi56fSoHnATzx1B7F16TRakMPJRLxzJ+gVbG4ETBVYIpOe4d5CbYTG73G2Agdoon/MIo3R/HSfEiSCfn4OkxgsFq1Tm1KVZuqkj6Imt26i4XIvtQLL9yN0PQhcIfD/KEgBepg6Uju6UADEqoGQseypV/eURa8q/cyHQPS0SSit/NvHmGvD+cq1wdBkzT7j0aHBhd5OGcpcw16ZJGEwsJVDFZ7Bj1mRipS1uySsrLTzREXdtPvmZQ6KQpqhllr8g4aeGIlBAKqWK2eB1FHJ33Zg9iGv2w4SJ2GbZ4qFpfyLurbpeoZWQpG1Rxk+ZbEOdjNKZRdSRfVXhJIozipKShmp4GIP5kV+K25t+FEGc1m7wJS1GYSpAoFA90x8AZd+arDcxyB/6g=
X-MS-Exchange-AntiSpam-MessageData: G3ORm2OJwZ1S/XkkI3+If2VI/JWk8F6lQPQiSjrwvKGV7PWFLIomTZFSST7QdozzokE3THbwWo4LfxcvUjKy3PBIGf8cHhKn1CQxItVzRlQ/xStaWIW46FM94plYEOyaUyeksizhdVrwFAo88fiCQw==
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c20708cc-31be-4752-ed42-08d7c66764a3
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2020 09:26:07.1128 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GjDSCMYAtcrZ5TLCQRkcIV0dDsyXDBHESCfvte9oh7i2aHdKNk5vJruG7UpF9PDWWO4yRfe8GcX5GXvotQw3KNFxJz3B5tKhguMeXCc1w+s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB4654
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_022610_370693_26C593C3 
X-CRM114-Status: GOOD (  21.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.136 listed in list.dnswl.org]
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

On Thu, Mar 12, 2020 at 10:39 AM Igor Opaniuk <igor.opaniuk@gmail.com> wrote:
>
> From: Igor Opaniuk <igor.opaniuk@toradex.com>
>
> 1. Replace boiler plate licenses texts with the SPDX license
> identifiers in Toradex Vybrid-based SoM device trees.
> 2. As X11 is identical to the MIT License, but with an extra sentence
> that prohibits using the copyright holders' names for advertising or
> promotional purposes without written permission, use MIT license instead
> of X11 ('s/X11/MIT/g').
> 3. Replace "Toradex AG" with "Toradex" in the Copyright notice.
> 4. Use GPL2.0+ instead of GPL2.0, as it's used now by default for all
> new DTS files.
>
> Signed-off-by: Igor Opaniuk <igor.opaniuk@toradex.com>

Reviewed-by: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>

> ---
>
>  arch/arm/boot/dts/vf-colibri-eval-v3.dtsi   | 40 ++-------------------
>  arch/arm/boot/dts/vf-colibri.dtsi           | 39 ++------------------
>  arch/arm/boot/dts/vf500-colibri-eval-v3.dts | 40 ++-------------------
>  arch/arm/boot/dts/vf500-colibri.dtsi        | 40 ++-------------------
>  arch/arm/boot/dts/vf610-colibri-eval-v3.dts | 40 ++-------------------
>  arch/arm/boot/dts/vf610-colibri.dtsi        | 40 ++-------------------
>  arch/arm/boot/dts/vf610m4-colibri.dts       | 39 +-------------------
>  7 files changed, 13 insertions(+), 265 deletions(-)
>
> diff --git a/arch/arm/boot/dts/vf-colibri-eval-v3.dtsi b/arch/arm/boot/dts/vf-colibri-eval-v3.dtsi
> index e2da122a63f4..c12a1b8bc086 100644
> --- a/arch/arm/boot/dts/vf-colibri-eval-v3.dtsi
> +++ b/arch/arm/boot/dts/vf-colibri-eval-v3.dtsi
> @@ -1,42 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0+ OR MIT
>  /*
> - * Copyright 2014 Toradex AG
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
> + * Copyright 2014-2020 Toradex
>   */
>
>  / {
> diff --git a/arch/arm/boot/dts/vf-colibri.dtsi b/arch/arm/boot/dts/vf-colibri.dtsi
> index fba37b8756f7..cc1e069c44e6 100644
> --- a/arch/arm/boot/dts/vf-colibri.dtsi
> +++ b/arch/arm/boot/dts/vf-colibri.dtsi
> @@ -1,42 +1,7 @@
> +// SPDX-License-Identifier: GPL-2.0+ OR MIT
>  /*
> - * Copyright 2014 Toradex AG
> + * Copyright 2014-2020 Toradex
>   *
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
>  / {
> diff --git a/arch/arm/boot/dts/vf500-colibri-eval-v3.dts b/arch/arm/boot/dts/vf500-colibri-eval-v3.dts
> index 076998968fb5..088964f8dc4b 100644
> --- a/arch/arm/boot/dts/vf500-colibri-eval-v3.dts
> +++ b/arch/arm/boot/dts/vf500-colibri-eval-v3.dts
> @@ -1,42 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0+ OR MIT
>  /*
> - * Copyright 2014 Toradex AG
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
> + * Copyright 2014-2020 Toradex
>   */
>
>  /dts-v1/;
> diff --git a/arch/arm/boot/dts/vf500-colibri.dtsi b/arch/arm/boot/dts/vf500-colibri.dtsi
> index 92255f8893ce..8af7ed56e653 100644
> --- a/arch/arm/boot/dts/vf500-colibri.dtsi
> +++ b/arch/arm/boot/dts/vf500-colibri.dtsi
> @@ -1,42 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0+ OR MIT
>  /*
> - * Copyright 2014 Toradex AG
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
> + * Copyright 2014-2020 Toradex
>   */
>
>  #include "vf500.dtsi"
> diff --git a/arch/arm/boot/dts/vf610-colibri-eval-v3.dts b/arch/arm/boot/dts/vf610-colibri-eval-v3.dts
> index ef9b4d6209f6..fb661e8a2dc6 100644
> --- a/arch/arm/boot/dts/vf610-colibri-eval-v3.dts
> +++ b/arch/arm/boot/dts/vf610-colibri-eval-v3.dts
> @@ -1,42 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0+ OR MIT
>  /*
> - * Copyright 2014 Toradex AG
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
> + * Copyright 2014-2020 Toradex
>   */
>
>  /dts-v1/;
> diff --git a/arch/arm/boot/dts/vf610-colibri.dtsi b/arch/arm/boot/dts/vf610-colibri.dtsi
> index 05c9a39509b8..607cec2df861 100644
> --- a/arch/arm/boot/dts/vf610-colibri.dtsi
> +++ b/arch/arm/boot/dts/vf610-colibri.dtsi
> @@ -1,42 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0+ OR MIT
>  /*
> - * Copyright 2014 Toradex AG
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
> + * Copyright 2014-2020 Toradex
>   */
>
>  #include "vf610.dtsi"
> diff --git a/arch/arm/boot/dts/vf610m4-colibri.dts b/arch/arm/boot/dts/vf610m4-colibri.dts
> index d4bc0e3f2f11..2c2db47af441 100644
> --- a/arch/arm/boot/dts/vf610m4-colibri.dts
> +++ b/arch/arm/boot/dts/vf610m4-colibri.dts
> @@ -1,45 +1,8 @@
> +// SPDX-License-Identifier: GPL-2.0+ OR MIT
>  /*
>   * Device tree for Colibri VF61 Cortex-M4 support
>   *
>   * Copyright (C) 2015 Stefan Agner
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
>   */
>
>  /dts-v1/;
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
