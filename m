Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15CCF130EB8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 09:37:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ff5sMtrHDry3g6f55HSFRx2tATkzLpNXITvXXLZ2n1k=; b=IwjIOmQEmIZkfG
	fprVNqekoEmh7Yi+YQuURBtFNVoSzeYUp/nbs1YY122Tb6gBRontTWCCIzeKlBOYFFI6MIXZ32ApI
	RG7mkFs7zhSyb8qBzQB4XpTDHrzLGqSxBiZn3ssM4NvNaSM+w/8QpMZjL/yarGeycRkMoPwES8Gm1
	YUrjTqpy8gM7GwId9AxzO/vKg8qT/Mfz9h45xaksLTXSalF1fCmZQqldzGcO5Nw0xM4YHPMA2zog0
	ejhitfasaXePiVHizwl/rgU1ePjdlLcaZkIlQBlwCmXxVAIupPPj6NtoOYEGsP2nJAt1+yOsEjYtN
	uQr9Jz94EwGcdMuebImw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioNsW-00082o-HV; Mon, 06 Jan 2020 08:36:48 +0000
Received: from mail-eopbgr30086.outbound.protection.outlook.com ([40.107.3.86]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioNsO-00082A-Mr
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 08:36:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LONHVDrLGxxQrCJOLHnTv5rknIenK0Ckn+kO2legzOhuRqVg/pgMc/Ffuqehc0+mnuSpsRKwlSWHd4OGn4notwFbodhw/9GQlqpzFtCzAmTJiVwAyqJdIZc+kYY//a0hhLEBeSIgnTX4GC5Yv2WW4fcAqFMi1dTYM/Rik8MstfM/ajq6VSexBmvxj1726XGJ9kaD5atJdYzwuuLclX9NCsmiAETuu8vVS7tHostu+/PUuRfvmc2F1jTOJDOma8ClUiueOVywGUBJHxCB3KOU+8mp505BNYIfHdFHetC8StTbIdkJcr8hPFUusoW9Rbi9LT4h93izwABAaR+27zrv7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6wnBFIoLe2qdHjMMhjq4vSZtCdvozGVje0XO32Qs3q0=;
 b=gRK6dmPL2/qNr76kmzfgN4GyZ70D4VVjwzW3hrfw6IKyr8VVU/qnxjeF5FAIDjM++ConMKkIxUNKwm8qjgLVUlGAfmMNuUCTqGcDPCSRtklJamgJi3ciC/yg84YpBr4PuCL6/E5TOFzPQX6eZFgad5981EMcp6Tn/cRUlYsBPjRX/NLPk/bGKtGrD82FJysBYrsjZzR8lxvFPqqTX093xQ1q5q+360GbLpS46VMG4Xn7N1OXGDNG3CklE/bToAx4+l6rvyXLMXvY5RCZGPBTGvnDpM+lG5R/BzIyIWjfHV01bz2MkS1pFqngjRIC9ILo3VpS9ZtctIiPIf26q0//4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6wnBFIoLe2qdHjMMhjq4vSZtCdvozGVje0XO32Qs3q0=;
 b=JCy2BBi4NR4XkLc6olelYdnJPLZSLMxD3NK7CH6+gn1AFSVLwkPDi6+oO06c01PhCvE0tdyZp9ZJOBTCHL4ExSSpkUQDrq6YkGAu6hKT4UpFk5XizV3yX544DQDuguoZbdnUMg515Qu8Pj9hUxGr/Bc3gtAXOPc16qZOEkukOpg=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3817.eurprd04.prod.outlook.com (52.134.73.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.14; Mon, 6 Jan 2020 08:36:34 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d968:56ad:4c0c:616f]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d968:56ad:4c0c:616f%7]) with mapi id 15.20.2602.015; Mon, 6 Jan 2020
 08:36:34 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>, Abel Vesa <abel.vesa@nxp.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>, "festevam@gmail.com"
 <festevam@gmail.com>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "marcin.juszkiewicz@linaro.org"
 <marcin.juszkiewicz@linaro.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "maxime@cerno.tech" <maxime@cerno.tech>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>, "olof@lixom.net"
 <olof@lixom.net>, Jacky Bai <ping.bai@nxp.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "will@kernel.org"
 <will@kernel.org>
Subject: RE: [PATCH 2/3] clk: imx: Add support for i.MX8MP clock driver
Thread-Topic: [PATCH 2/3] clk: imx: Add support for i.MX8MP clock driver
Thread-Index: AQHVvFuWiN3d+7pKeE+rF1Aj40+sqqfdAdWAgABZqkA=
Date: Mon, 6 Jan 2020 08:36:34 +0000
Message-ID: <DB3PR0402MB39164DCE1E5A819A5A614E86F53C0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1577412748-28213-1-git-send-email-Anson.Huang@nxp.com>
 <1577412748-28213-2-git-send-email-Anson.Huang@nxp.com>
 <20200106025914.A180E206F0@mail.kernel.org>
In-Reply-To: <20200106025914.A180E206F0@mail.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [92.121.68.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 048d59f9-074f-4307-472e-08d792838986
x-ms-traffictypediagnostic: DB3PR0402MB3817:|DB3PR0402MB3817:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB38179633D2F7367B40CA4E27F53C0@DB3PR0402MB3817.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0274272F87
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(396003)(376002)(136003)(346002)(189003)(199004)(52536014)(81166006)(66946007)(81156014)(2906002)(8676002)(76116006)(86362001)(316002)(44832011)(110136005)(5660300002)(186003)(7696005)(26005)(6506007)(7416002)(33656002)(8936002)(4326008)(4001150100001)(71200400001)(9686003)(66556008)(64756008)(66476007)(66446008)(55016002)(478600001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3817;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bn6/bRuQkl8a/tJXxN3scuwTytHoPgTZow5LWJBSUCKIYGOem4suuf2hruToY4hUrQrmEaec8sdIkx0P6eLjXfnvJF9gvbj97DNp1NwMiMK+VldKSOXBa7M9xikWMeI63RhAAuu8yFs3ItWhWvuTfVVUVeX+67RLV44Ckdnr+d/70R6vMjzasmdCIp7MshEue6/6LTNlsAv1vUQ0hwPLe8UVdubeA7u5Foi1ehjpIDmlmLcDxv/nco7msw/g1lQZABZFahh2aMWqnd7zUxkp28WhgcdReMItO69j6UobkpiaCUXDGKLCMl5PObgvf+U+SUOyNlQ/ly28P6g33oQav2NOgRA/CdN8/0kfXFGSJY7LVIMQnEgzJvWSWXYs4OeZP/f4+Mjhsd/ETXHyD0taMtmnVtHpu/bvXfGWWY/recLR98iVlK3kR8s3G2yOn8MW80rkRliFAoBHzuKwhCCGIjAg5VwoP4jOkVorFKF81lYr7hSMZEZ+WclP8lC5HYoJ
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 048d59f9-074f-4307-472e-08d792838986
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2020 08:36:34.1244 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w033Ys/c2MzoGfDd3bZGNG8Aaw0fNmaHgflmdIorFR+7B331rLDOxILvH+qMmAPvpDV+Th4uzQLaCS6kjf48Dg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3817
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_003641_006165_8040E58A 
X-CRM114-Status: GOOD (  21.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Stephen

> Subject: Re: [PATCH 2/3] clk: imx: Add support for i.MX8MP clock driver
> 
> Quoting Anson Huang (2019-12-26 18:12:27)
> > diff --git a/drivers/clk/imx/clk-imx8mp.c
> > b/drivers/clk/imx/clk-imx8mp.c new file mode 100644 index
> > 0000000..7f0d482
> > --- /dev/null
> > +++ b/drivers/clk/imx/clk-imx8mp.c
> > @@ -0,0 +1,767 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright 2019 NXP.
> > + */
> > +
> > +#include <dt-bindings/clock/imx8mp-clock.h>
> > +#include <linux/clk.h>
> 
> Please include clk-provider.h as this is a clk provider. If possible, don't include
> clk.h as this shouldn't be a consumer.

The reason of including clk.h is to call of_clk_get_by_name() to get some clocks from DT, currently on i.MX8M
series SoC, we still NOT switch to hw based clock, so some hw based clock APIs is NOT able to be used.

> 
> > +#include <linux/err.h>
> > +#include <linux/io.h>
> > +#include <linux/module.h>
> > +#include <linux/of.h>
> 
> Is this include used?

Will remove it in V2.

> 
> > +#include <linux/of_address.h>
> 
> Is this include used?

It is used by of_iomap for anatop_base below;

> 
> > +#include <linux/platform_device.h>
> > +#include <linux/types.h>
> > +
> > +#include "clk.h"
> > +
> > +static u32 share_count_nand;
> > +static u32 share_count_media;
> > +
> > +static const char *pll_ref_sels[] = { "osc_24m", "dummy", "dummy",
> > +"dummy", };
> 
> Is it possible to make these const char * const foo[] arrays?

Will  improve it in V2.

> 
> > +static const char *audio_pll1_bypass_sels[] = {"audio_pll1",
> > +"audio_pll1_ref_sel", }; static const char *audio_pll2_bypass_sels[]
> > += {"audio_pll2", "audio_pll2_ref_sel", }; static const char
> > +*video_pll1_bypass_sels[] = {"video_pll1", "video_pll1_ref_sel", };
> [...]
> > +       clk_set_parent(clks[IMX8MP_AUDIO_PLL1_BYPASS],
> clks[IMX8MP_AUDIO_PLL1]);
> > +       clk_set_parent(clks[IMX8MP_AUDIO_PLL2_BYPASS],
> clks[IMX8MP_AUDIO_PLL2]);
> > +       clk_set_parent(clks[IMX8MP_VIDEO_PLL1_BYPASS],
> clks[IMX8MP_VIDEO_PLL1]);
> > +       clk_set_parent(clks[IMX8MP_DRAM_PLL_BYPASS],
> clks[IMX8MP_DRAM_PLL]);
> > +       clk_set_parent(clks[IMX8MP_GPU_PLL_BYPASS],
> clks[IMX8MP_GPU_PLL]);
> > +       clk_set_parent(clks[IMX8MP_VPU_PLL_BYPASS],
> clks[IMX8MP_VPU_PLL]);
> > +       clk_set_parent(clks[IMX8MP_ARM_PLL_BYPASS],
> clks[IMX8MP_ARM_PLL]);
> > +       clk_set_parent(clks[IMX8MP_SYS_PLL1_BYPASS],
> clks[IMX8MP_SYS_PLL1]);
> > +       clk_set_parent(clks[IMX8MP_SYS_PLL2_BYPASS],
> clks[IMX8MP_SYS_PLL2]);
> > +       clk_set_parent(clks[IMX8MP_SYS_PLL3_BYPASS],
> > + clks[IMX8MP_SYS_PLL3]);
> 
> These can't be done with assigned-clock-parents properties in DT?

Ah, yes, will remove them and put them in DT is necessary.

> 
> > +
> > +       clks[IMX8MP_AUDIO_PLL1_OUT] = imx_clk_gate("audio_pll1_out",
> "audio_pll1_bypass", base, 13);
> > +       clks[IMX8MP_AUDIO_PLL2_OUT] = imx_clk_gate("audio_pll2_out",
> "audio_pll2_bypass", base + 0x14, 13);
> > +       clks[IMX8MP_VIDEO_PLL1_OUT] = imx_clk_gate("video_pll1_out",
> "video_pll1_bypass", base + 0x28, 13);
> > +       clks[IMX8MP_DRAM_PLL_OUT] = imx_clk_gate("dram_pll_out",
> "dram_pll_bypass", base + 0x50, 13);
> > +       clks[IMX8MP_GPU_PLL_OUT] = imx_clk_gate("gpu_pll_out",
> "gpu_pll_bypass", base + 0x64, 11);
> > +       clks[IMX8MP_VPU_PLL_OUT] = imx_clk_gate("vpu_pll_out",
> "vpu_pll_bypass", base + 0x74, 11);
> > +       clks[IMX8MP_ARM_PLL_OUT] = imx_clk_gate("arm_pll_out",
> "arm_pll_bypass", base + 0x84, 11);
> > +       clks[IMX8MP_SYS_PLL1_OUT] = imx_clk_gate("sys_pll1_out",
> "sys_pll1_bypass", base + 0x94, 11);
> > +       clks[IMX8MP_SYS_PLL2_OUT] = imx_clk_gate("sys_pll2_out",
> "sys_pll2_bypass", base + 0x104, 11);
> > +       clks[IMX8MP_SYS_PLL3_OUT] = imx_clk_gate("sys_pll3_out",
> > + "sys_pll3_bypass", base + 0x114, 11);
> 
> Any reason why we can't get back clk_hw pointers instead and register a hw
> based provider?

Because i.MX8M series SoCs are still NOT using hw based clock implementation, some of
the APIs are shared, like imx_clk_pll14xx() and imx8m_clk_composite() etc., so I think it is
better to keep them(i.MX8MQ/i.MX8MM/i.MX8MN/i.MX8MP) aligned, and I will find a chance soon
to do a patch series to switch all of them to hw based clock, does it make sense to you? 

> 
> > +
> > +       clks[IMX8MP_SYS_PLL1_40M] = imx_clk_fixed_factor("sys_pll1_40m",
> "sys_pll1_out", 1, 20);
> > +       clks[IMX8MP_SYS_PLL1_80M] = imx_clk_fixed_factor("sys_pll1_80m",
> "sys_pll1_out", 1, 10);
> > +       clks[IMX8MP_SYS_PLL1_100M] =
> imx_clk_fixed_factor("sys_pll1_100m", "sys_pll1_out", 1, 8);
> > +       clks[IMX8MP_SYS_PLL1_133M] =
> imx_clk_fixed_factor("sys_pll1_133m", "sys_pll1_out", 1, 6);
> > +       clks[IMX8MP_SYS_PLL1_160M] =
> imx_clk_fixed_factor("sys_pll1_160m", "sys_pll1_out", 1, 5);
> > +       clks[IMX8MP_SYS_PLL1_200M] =
> imx_clk_fixed_factor("sys_pll1_200m", "sys_pll1_out", 1, 4);
> > +       clks[IMX8MP_SYS_PLL1_266M] =
> imx_clk_fixed_factor("sys_pll1_266m", "sys_pll1_out", 1, 3);
> > +       clks[IMX8MP_SYS_PLL1_400M] =
> imx_clk_fixed_factor("sys_pll1_400m", "sys_pll1_out", 1, 2);
> > +       clks[IMX8MP_SYS_PLL1_800M] =
> > + imx_clk_fixed_factor("sys_pll1_800m", "sys_pll1_out", 1, 1);
> > +
> > +       clks[IMX8MP_SYS_PLL2_50M] = imx_clk_fixed_factor("sys_pll2_50m",
> "sys_pll2_out", 1, 20);
> > +       clks[IMX8MP_SYS_PLL2_100M] =
> imx_clk_fixed_factor("sys_pll2_100m", "sys_pll2_out", 1, 10);
> > +       clks[IMX8MP_SYS_PLL2_125M] =
> imx_clk_fixed_factor("sys_pll2_125m", "sys_pll2_out", 1, 8);
> > +       clks[IMX8MP_SYS_PLL2_166M] =
> imx_clk_fixed_factor("sys_pll2_166m", "sys_pll2_out", 1, 6);
> > +       clks[IMX8MP_SYS_PLL2_200M] =
> imx_clk_fixed_factor("sys_pll2_200m", "sys_pll2_out", 1, 5);
> > +       clks[IMX8MP_SYS_PLL2_250M] =
> imx_clk_fixed_factor("sys_pll2_250m", "sys_pll2_out", 1, 4);
> > +       clks[IMX8MP_SYS_PLL2_333M] =
> imx_clk_fixed_factor("sys_pll2_333m", "sys_pll2_out", 1, 3);
> > +       clks[IMX8MP_SYS_PLL2_500M] =
> imx_clk_fixed_factor("sys_pll2_500m", "sys_pll2_out", 1, 2);
> > +       clks[IMX8MP_SYS_PLL2_1000M] =
> > + imx_clk_fixed_factor("sys_pll2_1000m", "sys_pll2_out", 1, 1);
> > +
> > +       np = dev->of_node;
> > +       base = devm_platform_ioremap_resource(pdev, 0);
> > +       if (WARN_ON(IS_ERR(base))) {
> > +               ret = PTR_ERR(base);
> > +               goto unregister_clks;
> 
> Why not ioremap first so we don't have to unwind clk registration on failure?

Yes, I will do it in V2.

> 
> > +       }
> > +
> > +       clks[IMX8MP_CLK_A53_SRC] = imx_clk_mux2("arm_a53_src", base +
> 0x8000, 24, 3, imx8mp_a53_sels, ARRAY_SIZE(imx8mp_a53_sels));
> > +       clks[IMX8MP_CLK_M7_SRC] = imx_clk_mux2("arm_m7_src", base +
> 0x8080, 24, 3, imx8mp_m7_sels, ARRAY_SIZE(imx8mp_m7_sels));
> > +       clks[IMX8MP_CLK_ML_SRC] = imx_clk_mux2("ml_src", base + 0x8100,
> 24, 3, imx8mp_ml_sels, ARRAY_SIZE(imx8mp_ml_sels));
> > +       clks[IMX8MP_CLK_GPU3D_CORE_SRC] =
> imx_clk_mux2("gpu3d_core_src", base + 0x8180, 24, 3,
> imx8mp_gpu3d_core_sels, ARRAY_SIZE(imx8mp_gpu3d_core_sels));
> > +       clks[IMX8MP_CLK_GPU3D_SHADER_SRC] =
> imx_clk_mux2("gpu3d_shader_src", base + 0x8200, 24, 3,
> imx8mp_gpu3d_shader_sels, ARRAY_SIZE(imx8mp_gpu3d_shader_sels));
> > +       clks[IMX8MP_CLK_GPU2D_SRC] = imx_clk_mux2("gpu2d_src", base +
> 0x8280, 24, 3, imx8mp_gpu2d_sels, ARRAY_SIZE(imx8mp_gpu2d_sels));
> > +       clks[IMX8MP_CLK_AUDIO_AXI_SRC] = imx_clk_mux2("audio_axi_src",
> > + base + 0x8300, 24, 3, imx8mp_audio_axi_sels,
> > + ARRAY_SIZE(imx8mp_audio_axi_sels));
> [...]
> > +
> > +       imx_register_uart_clocks(uart_clks);
> > +
> > +       return 0;
> > +
> > +unregister_clks:
> > +       imx_unregister_clocks(clks, ARRAY_SIZE(clks));
> > +
> > +       return ret;
> > +}
> > +
> > +static const struct of_device_id imx8mp_clk_of_match[] = {
> > +       { .compatible = "fsl,imx8mp-ccm" },
> > +       { /* Sentinel */ },
> 
> Please drop the comma after sentinel so that nothing can go after it.

Will do it in V2.

Thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
