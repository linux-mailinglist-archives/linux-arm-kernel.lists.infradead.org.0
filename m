Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6274A1841AC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 08:47:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6VKm/kpEUGUVXscIsleGTUsXgGc1mrZiVspB6yU+fgY=; b=tuAnJKeEHwXymx
	wXgtNy70uLewD2hOzLopRSccevi5UpypMBtSCUILFeQAbuuKYZlpKQFvGKjnDLtEQ0fmcZlruwH7h
	D4IU8hRbOltYwIxuPNpW/kTlFfrB7LsLtd+6mEIe/yHRZOn1TBkSkaOKZPWERgZ8iZ2ZxUlhiZcu0
	bv/q9x8bmh0DAlx4jwq27NgZLedwJymzwJQl+9+rx1MdZK3fwU2T1CoYF+DeD1CVYj7vedBAeU7t1
	9oPADXv7GfB77+dYtlhSlh1E1bhi52D9tR0Q0oY5SDq+xZZFKwgTwYrF/HZQuyOUHcnD+gxDO3XdJ
	r46+r1FzqI/ibvIbqiYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCf2k-00067k-27; Fri, 13 Mar 2020 07:47:42 +0000
Received: from mail-eopbgr80040.outbound.protection.outlook.com ([40.107.8.40]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCf2X-00067L-PT
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 07:47:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aNveq3kR5ZjRbn1tNv1s8GHMry8tRxf7Wm/3iASwqDLuluXcdUSfCMNeewH5tnP1Ag90UpSNR5p43I8rAXUZQ8c46odKQTQ812u2sIbMIh/MhR596ER8j+R+j9n+8uzyoHcGcieS1AP/AZSsfq0LtOkqFPFOMJH/Cz+91IdbKjcuAYYgpRrEigbroeWM1acWZFjOQHqQ9I8OJDPTf6+uGwmDN44KFSRcj7oQ7m3Tv/3kUG6u3GQofH9AzfwtWkWgCuaKQ00ouzPL3tIhzsgK7WCChAC+PNqkh171v+/c1xK39ivovCYILGJKhfUNzaFFn/559Wg7RWB5x4YnCU2eXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OYRjk7xIK0yv1tj8YXANcUvjtHeYdp5QImFTkzKPn/Q=;
 b=YRzD1Pdu2rTpAsF5hgNgjHt3VO3UPtEOQSAagISJOJtF2PPjj1tfSRB6U09RZCQBtf9UfbMmtYAIyFWcb/Lc6LSlpJQIfi/7gcp6B9o7x0diAfV+nrd26ps9blaSUnx/1l1gcMlSbhMpycoxPKXE6V9n/piC7ZefSOsVXNpWNQTz5VelcBhyNKH488bonJt6uWZYvFl/HekMWG24o+wmePTZYxJ2nKQIdxulRUd6lIz/Ilq2/ZR7yY4jk8QVyasLcyMNbSTYzViAxOYi2gXqF1kqC2dhpS6hBn4EGCRGmzpPMbdO8KplrexkHEKqkPUfeOzV2p5rADdjdXdJT9hPuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OYRjk7xIK0yv1tj8YXANcUvjtHeYdp5QImFTkzKPn/Q=;
 b=mN0fs1VjJiqn/SgB0o4q87cKUkZaxfPQvMsG7WqErj5cWGB4NT0AXzERGthZXdoZOkKdCwauX0s+9HU8DeY9iIQgqDweQVPkyIl0EmUFCKqnxeagBozyYyF24+y1CMHH4bgfrXOTz//AjrzkQmZjrkKpNz5H27sINb3XTChlimE=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6002.eurprd04.prod.outlook.com (20.178.114.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.20; Fri, 13 Mar 2020 07:47:26 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11%6]) with mapi id 15.20.2793.018; Fri, 13 Mar 2020
 07:47:26 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Abel Vesa <abel.vesa@nxp.com>, Rob Herring <robh@kernel.org>, Shawn Guo
 <shawnguo@kernel.org>, Sascha Hauer <kernel@pengutronix.de>, Fabio Estevam
 <fabio.estevam@nxp.com>, Mike Turquette <mturquette@baylibre.com>, Stephen
 Boyd <sboyd@kernel.org>, Lee Jones <lee.jones@linaro.org>, Anson Huang
 <anson.huang@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>, Jacky Bai
 <ping.bai@nxp.com>
Subject: RE: [RFC 04/11] clk: imx: Add gate shared for i.MX8MP audiomix
Thread-Topic: [RFC 04/11] clk: imx: Add gate shared for i.MX8MP audiomix
Thread-Index: AQHV8TqlpdEwDmBs0U+iFgh60sh+aKhGNI2w
Date: Fri, 13 Mar 2020 07:47:26 +0000
Message-ID: <AM0PR04MB44817B0DBC695577617CFC8C88FA0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1583226206-19758-1-git-send-email-abel.vesa@nxp.com>
 <1583226206-19758-5-git-send-email-abel.vesa@nxp.com>
In-Reply-To: <1583226206-19758-5-git-send-email-abel.vesa@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 5e604eb9-e424-40cd-2768-08d7c722c646
x-ms-traffictypediagnostic: AM0PR04MB6002:|AM0PR04MB6002:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB6002F3097CA08E1CB8A5F58188FA0@AM0PR04MB6002.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 034119E4F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(376002)(136003)(396003)(346002)(199004)(76116006)(66556008)(66446008)(9686003)(7696005)(66476007)(66946007)(86362001)(64756008)(55016002)(33656002)(71200400001)(478600001)(4326008)(316002)(5660300002)(110136005)(54906003)(6506007)(6636002)(44832011)(52536014)(8676002)(81166006)(8936002)(26005)(2906002)(81156014)(186003)(7416002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6002;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yaG+pDZAMEcQ8D1HFrMIYh+B6+fobrcmV6gnMcpur9MCZWEdQFY6bVPMd4lPkvnTnkswChKTiT3hmCX5KCNWef3AqEllrZ/wWsqp3sEzivYN1bLayJFVf+ixMR2xl5CTvXC3ft95R/hwmtg8g6EI/RprasVLroAHPpLzQRwGeEx1N2sJTDfRZLMsxRpB5Hx6Ixt1GPn7F0yoQfWT1qy7tNSKYRU++479/Y2WVyB0gOZes/lHYF+d87ltQMsmdioERtWGHPaX4tFBbREWuJw75WyjDfk091b6O6H7WQ7MUCMtLdE1NkGU12XoisaU6OJxivs4Qw/GgqcHw95wLR8RHxLUF0M29Mv0aWlXGYfRfutYKl6yr4P9VHbxd+8tjPQY8U2MsTgFARKPjEjjzsyM1T6qasEUwuKg9RFfMrICm7MA073Qkx665IQLLHoOXTgipYDCrBeeoA8bAhp2Tae8GlYRJb9z8qJ4eq0/29tsjpWAJQp30rDECSj3qoMufPHO
x-ms-exchange-antispam-messagedata: WTqjGsi0eKl22pr6otW+uoq8f0WnXcwL4CvNJrRYvswdFxmXn6pon10eyJNTS6ilxWRsKC2kldZy3hnktVMiFKZFNRce78H+8ZkIqWjmqCKWXyX0kIIuA1jc8zPZpmv7KnH/AE/89OjxBLsM+RErJw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e604eb9-e424-40cd-2768-08d7c722c646
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2020 07:47:26.3517 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xYKC/OfQ7LkFDv+Jl7+wwnunDKuKAUSFn3go7gR1jmFLLCi3/BzA5SXqd+qLgIIdg47rXZ2EP1+H7ZB1IjQyXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6002
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_004729_829660_A1F74B2B 
X-CRM114-Status: GOOD (  18.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.40 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: [RFC 04/11] clk: imx: Add gate shared for i.MX8MP audiomix
> 
> The newer i.MX platform use some gates that have a shared control bit
> between them.

Could the existing clk_hw_register_gate2 handle your case?

Thanks,
Peng.
> 
> Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> ---
>  drivers/clk/imx/Makefile          |   2 +-
>  drivers/clk/imx/clk-gate-shared.c | 111
> ++++++++++++++++++++++++++++++++++++++
>  drivers/clk/imx/clk.h             |   4 ++
>  3 files changed, 116 insertions(+), 1 deletion(-)  create mode 100644
> drivers/clk/imx/clk-gate-shared.c
> 
> diff --git a/drivers/clk/imx/Makefile b/drivers/clk/imx/Makefile index
> 928f874c..799a8ef 100644
> --- a/drivers/clk/imx/Makefile
> +++ b/drivers/clk/imx/Makefile
> @@ -27,7 +27,7 @@ obj-$(CONFIG_MXC_CLK_SCU) += \
> 
>  obj-$(CONFIG_CLK_IMX8MM) += clk-imx8mm.o
>  obj-$(CONFIG_CLK_IMX8MN) += clk-imx8mn.o
> -obj-$(CONFIG_CLK_IMX8MP) += clk-imx8mp.o
> +obj-$(CONFIG_CLK_IMX8MP) += clk-imx8mp.o clk-gate-shared.o
>  obj-$(CONFIG_CLK_IMX8MQ) += clk-imx8mq.o
>  obj-$(CONFIG_CLK_IMX8QXP) += clk-imx8qxp.o clk-imx8qxp-lpcg.o
> 
> diff --git a/drivers/clk/imx/clk-gate-shared.c
> b/drivers/clk/imx/clk-gate-shared.c
> new file mode 100644
> index 00000000..961a0e3
> --- /dev/null
> +++ b/drivers/clk/imx/clk-gate-shared.c
> @@ -0,0 +1,111 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright 2019 NXP.
> + */
> +
> +#include <linux/clk-provider.h>
> +#include <linux/err.h>
> +#include <linux/io.h>
> +#include <linux/slab.h>
> +#include "clk.h"
> +
> +/**
> + * struct clk_gate_shared - i.MX specific gate clock having the gate
> +flag
> + * shared with other gate clocks
> + */
> +struct clk_gate_shared {
> +	struct clk_gate	gate;
> +	spinlock_t	*lock;
> +	unsigned int	*share_count;
> +};
> +
> +static int clk_gate_shared_enable(struct clk_hw *hw) {
> +	struct clk_gate *gate = to_clk_gate(hw);
> +	struct clk_gate_shared *shgate = container_of(gate,
> +					struct clk_gate_shared, gate);
> +	unsigned long flags = 0;
> +	int ret = 0;
> +
> +	spin_lock_irqsave(shgate->lock, flags);
> +
> +	if (shgate->share_count && (*shgate->share_count)++ > 0)
> +		goto out;
> +
> +	ret = clk_gate_ops.enable(hw);
> +out:
> +	spin_unlock_irqrestore(shgate->lock, flags);
> +
> +	return ret;
> +}
> +
> +static void clk_gate_shared_disable(struct clk_hw *hw) {
> +	struct clk_gate *gate = to_clk_gate(hw);
> +	struct clk_gate_shared *shgate = container_of(gate,
> +					struct clk_gate_shared, gate);
> +	unsigned long flags = 0;
> +
> +	spin_lock_irqsave(shgate->lock, flags);
> +
> +	if (shgate->share_count) {
> +		if (WARN_ON(*shgate->share_count == 0))
> +			goto out;
> +		else if (--(*shgate->share_count) > 0)
> +			goto out;
> +	}
> +
> +	clk_gate_ops.disable(hw);
> +out:
> +	spin_unlock_irqrestore(shgate->lock, flags); }
> +
> +static int clk_gate_shared_is_enabled(struct clk_hw *hw) {
> +	return clk_gate_ops.is_enabled(hw);
> +}
> +
> +static const struct clk_ops clk_gate_shared_ops = {
> +	.enable = clk_gate_shared_enable,
> +	.disable = clk_gate_shared_disable,
> +	.is_enabled = clk_gate_shared_is_enabled, };
> +
> +struct clk_hw *imx_dev_clk_hw_gate_shared(struct device *dev, const char
> *name,
> +				const char *parent, void __iomem *reg,
> +				u8 shift, unsigned int *share_count) {
> +	struct clk_gate_shared *shgate;
> +	struct clk_gate *gate;
> +	struct clk_hw *hw;
> +	struct clk_init_data init;
> +	int ret;
> +
> +	shgate = kzalloc(sizeof(*shgate), GFP_KERNEL);
> +	if (!shgate)
> +		return ERR_PTR(-ENOMEM);
> +	gate = &shgate->gate;
> +
> +	init.name = name;
> +	init.ops = &clk_gate_shared_ops;
> +	init.flags = CLK_OPS_PARENT_ENABLE;
> +	init.parent_names = parent ? &parent : NULL;
> +	init.num_parents = parent ? 1 : 0;
> +
> +	gate->reg = reg;
> +	gate->bit_idx = shift;
> +	gate->lock = NULL;
> +	gate->hw.init = &init;
> +	shgate->lock = &imx_ccm_lock;
> +	shgate->share_count = share_count;
> +
> +	hw = &gate->hw;
> +
> +	ret = clk_hw_register(NULL, hw);
> +	if (ret) {
> +		kfree(shgate);
> +		return ERR_PTR(ret);
> +	}
> +
> +	return hw;
> +}
> diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h index
> f074dd8..51d6c26 100644
> --- a/drivers/clk/imx/clk.h
> +++ b/drivers/clk/imx/clk.h
> @@ -151,6 +151,10 @@ struct clk_hw *imx_clk_hw_sscg_pll(const char
> *name,
>  				void __iomem *base,
>  				unsigned long flags);
> 
> +struct clk_hw *imx_dev_clk_hw_gate_shared(struct device *dev, const char
> *name,
> +				const char *parent, void __iomem *reg,
> +				u8 shift, unsigned int *share_count);
> +
>  enum imx_pllv3_type {
>  	IMX_PLLV3_GENERIC,
>  	IMX_PLLV3_SYS,
> --
> 2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
