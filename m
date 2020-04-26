Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 073441B8C29
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 06:43:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YbS9+4uSQQzhV5DosmNKwXwvu07D9OrgQhulshcHR40=; b=vDS9EM/p9NlnG4
	8EQ7F2HKYbJlR67WTrEGnNE086LeTvejrNXx9T7oqC2HfIApQzPIIdA5s213nRNcQaUomgWPhHKZ5
	pA/XCZXLvkikjwkt84cPZfIwD95yBEJpUJ6gnAbFJXgSpXYtBFnwucmaXha2AT3Mpzq4k6EFFBr3o
	2YEm1U0n20AjpUeeUFObDUVEFteWw6qns2tF9njyG5a4AsRuCVpg/fSSf1pn6gJ5abhu9W1I1AfZg
	IjFsCqS+7CGrb+xKjrvVm53bSv7UgHMtv5oN+ijHsV7nrqI5rj1iYE8FSsre0prSWsXM9tUBXcRut
	rmm7lBoR5R/DYKhMcTzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSZ8f-0006XR-Rf; Sun, 26 Apr 2020 04:43:33 +0000
Received: from mail-eopbgr80079.outbound.protection.outlook.com ([40.107.8.79]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSZ8U-0006WH-S6
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 04:43:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NVN/1lTCtI9puWPmSvX6p63DYM1fDNboCQt4daOMdBn8XfuYiPFHtTVzAdWciWkp453H942WehJ84x4Fv9PtDSHS51rRkv/3NSr9TyvKgHd60RshAj35lYQ8iO4FL1uDFUPS5p3OWedvz5/hKuSLq+CHos3mIWmC56YhxdgZvwoOzkMtdwLZQo7zuXfpQ1xEgou3uLFlrngrgrp9vaPp4piHZVFndMNqPJcLNp6FrplYiwSp8DB5+/KyFS2e6bDXo9uo7U7qCA9AoJh1AM4jQTDFSQEQmRNFkkv9O89waBiYKpBVrhJA+CLJxse4R217ZJgn8eLGSNdj7yDrkCeUDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zWmDZIdghu5Vyaw36MYmxiG8kPFQRGDHONhyCw5t2nQ=;
 b=SWOibPqawBIMVWbGKujaoM37z/IpEDxF+UvBeRAJCEgM/8QzebPWp7pSlSApZDumaCbjMFSUROrxQug2tEH3NH/fGjMk/qoTHOZ/G6Wc88dq/h8oRt/KNSTOLnLjmZaspIFw+/59Oq2mRN/6+P8dOx+9VbBNSk7qrBOVyWESen+aoLJkdgpATm7bDwWb/Bj3+L9L/Xp49Nr2AhWA743LLn5YM1q4QRfBJanvzq66xDDN/RWvVU9kpScBhbucZK851M5WuYrz/AGhLeRogpmuUW/ulEyFq5o1fqDXbARsvxOeMY3v370wp5m4V6WFj5saRdlZCmd/D3YAon8geKyRVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zWmDZIdghu5Vyaw36MYmxiG8kPFQRGDHONhyCw5t2nQ=;
 b=AQaADcVGEa9AQh6S/7xIgeL4ffSJNo4U5liqOZSpGN32a9cEckJWG5WOpQ/uMtjS944RwhfLoT7jZbFNrRZTSsb8vRJadn3kcygCmefiLVDJGuMix0U3hqJtB+x93GsXdcKTxjGfJOh62CNf+stIZUIiuLWUCDNi7NRJWCly/lw=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB5589.eurprd04.prod.outlook.com (2603:10a6:20b:a4::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.22; Sun, 26 Apr
 2020 04:43:17 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3%7]) with mapi id 15.20.2937.020; Sun, 26 Apr 2020
 04:43:17 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, Leonard Crestez
 <leonard.crestez@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>, Abel Vesa
 <abel.vesa@nxp.com>
Subject: RE: [PATCH V2 06/10] clk: imx8m: migrate A53 clk root to use
 composite core
Thread-Topic: [PATCH V2 06/10] clk: imx8m: migrate A53 clk root to use
 composite core
Thread-Index: AQHV+FjL9xTJNMAdE0mjNiD58Y5PKKiLGQOg
Date: Sun, 26 Apr 2020 04:43:17 +0000
Message-ID: <AM6PR04MB49664159E56A48EC6C4CBCC880AE0@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1584008384-11578-1-git-send-email-peng.fan@nxp.com>
 <1584008384-11578-7-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1584008384-11578-7-git-send-email-peng.fan@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [218.82.155.143]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b1fdfa35-bbce-4e22-8a21-08d7e99c56cf
x-ms-traffictypediagnostic: AM6PR04MB5589:|AM6PR04MB5589:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB5589EC861E851AB3DDBB83C680AE0@AM6PR04MB5589.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 03853D523D
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(396003)(136003)(39860400002)(366004)(346002)(9686003)(110136005)(54906003)(81156014)(316002)(8676002)(8936002)(5660300002)(44832011)(33656002)(6506007)(52536014)(55016002)(478600001)(86362001)(186003)(2906002)(26005)(66446008)(7696005)(76116006)(66946007)(66556008)(66476007)(64756008)(71200400001)(7416002)(4326008)(6636002)(32563001);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kysfSPTxuQF/aOWBRusZd227d2M32kmndBBq3bhJPDVJFLFo/0pi8Yb6IfVtGRax0Z8JmODjsCmumzHzGGxyH3u4y4BA+BCkTJUEdXq1qIjz9F6JxTk/fDkAUBwEm4Lzf80GBT33h6xYWcyWZC+7FxP8y1FHp9dOBvqitA9jRoTgvdpi8cK8J4zt/cud3Apgywt52ZYVBobF19m7rskBbnrr6s5twomUKKNtdIF5nzcIea3xXAfvXxflpEACJTkV72uW6yqn4tdbIEgGwhiw7RmHH4BvdKS8ccYm5UNZu8vI/XjW3T5jl9m2K3V2anSub4tKgLd/zcnIOs4CA496wMQofh9r3EX1p8oxPlzYx+YOyptql0zZk3525oESI3yglwPH/r3tdRFFfciwWgrY16d/HUB4YTHU1hsSz6IpKmrX8fdcxnxi106xwv6RWqo2rO6zTM7I6aBWWL/KHX0tMWzAT5wJZJg9P9R/XWEHT0iTwoz5rC1lXZ7m1SNZ0vQ2
x-ms-exchange-antispam-messagedata: pbbPPlmhVcTGuHAIalLnRjIt/GsBgwN0JXrlGmedZqh5MaqpYVdCgbTRXomojpIjTZJt70ffYwn47ShM5eRBd+2vDrSFwOg+E2BlgHrQ929s+BWt6JBvUr+H5Pai96ni/6uRPodJbhVpJzw8Y3Kr/5N662I4Q9xz5TiOUhzokEbFe5Qb5UdTdGG/PpirCc36t9zBbie2DAxqsk1Gy73Mf6ikuRJI8c4d9lrdU+VYNVZlWCl+49jwxKaQafghhc5CHEsSJ1kQx/yNxh6d/6Yxm3B7hYHZZkUWQ23SsjfL5zraVuobaf2lU+KwwPl3zVx8J8OOfEa5fhMWXTSXe7+Ry5N6aLNmh7CDw4+xOIkZZxN5tQbb2HRz5s15JyGewLyPoAysu4ejzKT5e3G9pRRakSfRlwrC+5hyroeyzFJONQ4slTFRb68fLrBbRshMMcTO6k54hOZj5gYRNTQTCVTMRUABrGhaP4B9qrAZlV+CDnPmxjAG1/WIJ2ETveLPPcx2KKf3ny8Gv2MQGzgN84qBqxJ2k3GldGyRF6gFLqYDeooQ68ku2l6jyaAzMGiR3OHTBbT2CAVMkaIe3gbsXmlDXFspYL4Q54To/rgUW9raPqKdjQcGnRWjdkx5IA4b31oVxKNt+EazQstfwsvOqc8cmuAh7GNTX2/i/DQ6koT+jVQSIBgKVt4PldSplrjbBy4WlSJT1ulblDLk8hELB4WHIFmx9Ae63sSNO0qOH2qv44ksBPLOhcPX3aLlIEpe3FZvZvBJsVrEcV/fheCSYzJoMDXruNVXHsNswa3bDiJ4D1o=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b1fdfa35-bbce-4e22-8a21-08d7e99c56cf
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Apr 2020 04:43:17.5637 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: juLxq03jbTFNRuUWcujAmHd8xje2zzQlQWeJr4Mnc0a8xBwbvmtLIOeQqsAJS6Y3J9j66PsStVHtH5CMgkqzMA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5589
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_214322_912667_0D6521A0 
X-CRM114-Status: GOOD (  15.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.79 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andy Duan <fugang.duan@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 Daniel Baluta <daniel.baluta@nxp.com>, "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "angus@akkea.ca" <angus@akkea.ca>, "heiko@sntech.de" <heiko@sntech.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "aford173@gmail.com" <aford173@gmail.com>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jun Li <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Peng Fan <peng.fan@nxp.com>
> Sent: Thursday, March 12, 2020 6:20 PM
> 
> Migrate A53 clk root to use composite core clk type. It will simplify code and
> make it easy to use composite specific mux operation.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  drivers/clk/imx/clk-imx8mm.c | 6 +++---  drivers/clk/imx/clk-imx8mn.c | 6
> +++---  drivers/clk/imx/clk-imx8mq.c | 6 +++---
>  3 files changed, 9 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c index
> 5435042a06e3..12443e06f329 100644
> --- a/drivers/clk/imx/clk-imx8mm.c
> +++ b/drivers/clk/imx/clk-imx8mm.c
> @@ -416,9 +416,9 @@ static int imx8mm_clocks_probe(struct
> platform_device *pdev)
>  		return PTR_ERR(base);
> 
>  	/* Core Slice */
> -	hws[IMX8MM_CLK_A53_SRC] = imx_clk_hw_mux2("arm_a53_src", base +
> 0x8000, 24, 3, imx8mm_a53_sels, ARRAY_SIZE(imx8mm_a53_sels));
> -	hws[IMX8MM_CLK_A53_CG] = imx_clk_hw_gate3("arm_a53_cg",
> "arm_a53_src", base + 0x8000, 28);
> -	hws[IMX8MM_CLK_A53_DIV] = imx_clk_hw_divider2("arm_a53_div",
> "arm_a53_cg", base + 0x8000, 0, 3);
> +	hws[IMX8MM_CLK_A53_DIV] =
> imx8m_clk_hw_composite_core("arm_a53_div", imx8mm_a53_sels, base +
> 0x8000);
> +	hws[IMX8MM_CLK_A53_CG] = hws[IMX8MM_CLK_A53_DIV];
> +	hws[IMX8MM_CLK_A53_SRC] = hws[IMX8MM_CLK_A53_DIV];

The former patch already breaks the compatibility.
Not sure if we really need keep it for only A53 clock here as we are still at very early enablement
Phase for MX8MP.  So we may just remove them IMHO.
Shawn, what's your suggestion?

Regards
Aisheng

> 
>  	hws[IMX8MM_CLK_M4_CORE] =
> imx8m_clk_hw_composite_core("arm_m4_core", imx8mm_m4_sels, base +
> 0x8080);
>  	hws[IMX8MM_CLK_VPU_CORE] =
> imx8m_clk_hw_composite_core("vpu_core", imx8mm_vpu_sels, base +
> 0x8100); diff --git a/drivers/clk/imx/clk-imx8mn.c
> b/drivers/clk/imx/clk-imx8mn.c index 6cac6ca03e12..bd3759b4afd0 100644
> --- a/drivers/clk/imx/clk-imx8mn.c
> +++ b/drivers/clk/imx/clk-imx8mn.c
> @@ -413,9 +413,9 @@ static int imx8mn_clocks_probe(struct platform_device
> *pdev)
>  	}
> 
>  	/* CORE */
> -	hws[IMX8MN_CLK_A53_SRC] = imx_clk_hw_mux2("arm_a53_src", base +
> 0x8000, 24, 3, imx8mn_a53_sels, ARRAY_SIZE(imx8mn_a53_sels));
> -	hws[IMX8MN_CLK_A53_CG] = imx_clk_hw_gate3("arm_a53_cg",
> "arm_a53_src", base + 0x8000, 28);
> -	hws[IMX8MN_CLK_A53_DIV] = imx_clk_hw_divider2("arm_a53_div",
> "arm_a53_cg", base + 0x8000, 0, 3);
> +	hws[IMX8MN_CLK_A53_DIV] =
> imx8m_clk_hw_composite_core("arm_a53_div", imx8mn_a53_sels, base +
> 0x8000);
> +	hws[IMX8MN_CLK_A53_SRC] = hws[IMX8MN_CLK_A53_DIV];
> +	hws[IMX8MN_CLK_A53_CG] = hws[IMX8MN_CLK_A53_DIV];
> 
>  	hws[IMX8MN_CLK_GPU_CORE] =
> imx8m_clk_hw_composite_core("gpu_core", imx8mn_gpu_core_sels, base +
> 0x8180);
>  	hws[IMX8MN_CLK_GPU_SHADER] =
> imx8m_clk_hw_composite_core("gpu_shader", imx8mn_gpu_shader_sels, base
> + 0x8200); diff --git a/drivers/clk/imx/clk-imx8mq.c
> b/drivers/clk/imx/clk-imx8mq.c index 201c7bbb201f..91309ff65441 100644
> --- a/drivers/clk/imx/clk-imx8mq.c
> +++ b/drivers/clk/imx/clk-imx8mq.c
> @@ -405,9 +405,9 @@ static int imx8mq_clocks_probe(struct platform_device
> *pdev)
>  		return PTR_ERR(base);
> 
>  	/* CORE */
> -	hws[IMX8MQ_CLK_A53_SRC] = imx_clk_hw_mux2("arm_a53_src", base +
> 0x8000, 24, 3, imx8mq_a53_sels, ARRAY_SIZE(imx8mq_a53_sels));
> -	hws[IMX8MQ_CLK_A53_CG] = imx_clk_hw_gate3_flags("arm_a53_cg",
> "arm_a53_src", base + 0x8000, 28, CLK_IS_CRITICAL);
> -	hws[IMX8MQ_CLK_A53_DIV] = imx_clk_hw_divider2("arm_a53_div",
> "arm_a53_cg", base + 0x8000, 0, 3);
> +	hws[IMX8MQ_CLK_A53_DIV] =
> imx8m_clk_hw_composite_core("arm_a53_div", imx8mq_a53_sels, base +
> 0x8000);
> +	hws[IMX8MQ_CLK_A53_CG] = hws[IMX8MQ_CLK_A53_DIV];
> +	hws[IMX8MQ_CLK_A53_SRC] = hws[IMX8MQ_CLK_A53_DIV];
> 
>  	hws[IMX8MQ_CLK_M4_CORE] =
> imx8m_clk_hw_composite_core("arm_m4_core", imx8mq_arm_m4_sels, base
> + 0x8080);
>  	hws[IMX8MQ_CLK_VPU_CORE] =
> imx8m_clk_hw_composite_core("vpu_core", imx8mq_vpu_sels, base +
> 0x8100);
> --
> 2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
