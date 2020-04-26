Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB57B1B8C74
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 07:08:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ARDRHpTBBNeBMfCp6hAWYiPn1uqvFEDrbcN45S1h9lY=; b=UaoQz6R+8Mr4x4
	TQzZTqJqaaQALbtTFaNqnzP0dRuqZGVyJO9VWoQzJsj7NFoK43Lfch8aahXMgz+AVbw12WNXsgBFl
	TdpLwji8kRJQRTr8ZLsPTUGsf1dg5zrnny6PVRZrhC570ALSbQie81T2UTxt4AntRGC/rkNcFYfv4
	iC/9RMV+hseMMdqqbOlK25erYALqUFYBlw6XB129lEDrkD2YocOVVWfLuUYGT6Gp7p2xwAqeCprVi
	vIcc6+4jl6JIQ8jsMsGKgExuJNvxu0PPur6qJvXHiCbZ0hJQ/XMOQgAnLv5z5FQXy369PT8Y8AFfi
	JvxC6LwygVdpRJN/XpCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSZWv-0007JV-JK; Sun, 26 Apr 2020 05:08:37 +0000
Received: from mail-vi1eur05on2067.outbound.protection.outlook.com
 ([40.107.21.67] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSZWl-0007Hh-Nc
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 05:08:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JLHjv1Kk2YbMOMLqv+jG8TmcNnaSnX2v+4+kMjHX4qEoBv6KSobKRlXZiBfPCQeU0YX8BnwYNqAIijA/CNlZhDzw7qaCQQKAgN2aqPzHN62ONdlkBeVAUipUuA/a2h0ht92/rBCv77P9h6Lc8GaIbsEhhHJwIlhvF5uncPmlDCWlAn4elgWjgswvNejou60DHaYKy9Q6SISNNnAERfnLPMQU0AY6zWCEd01bhfqNApwIJ9oZqzcRbOHdIi1Aq8M0wn6+UcuIrGv0ohet2qU/RlEF0YAwKh9H6nz+QTVoVHOVxp4AlSfx5Ud7yK1LunRPYkGWAWPKWv15F7ywkqSyhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CdE0tORgtp4TnrKJl4UHB0JJtUJekB4Nyb1JqDsQX0A=;
 b=msbzdXa37iAKtRf8/EZfiv+ewxnlIS7PjpsZ1OFbETUr+DbsIsmoDZHWqMj4VL1VIQRcn45LHXryq7zQmrbcaB2//IN59oNN2xaujkyQhu3hStM2RNsGFUa8CTURRmzVoS9P9vk3r7TVJEH5RFU158DEhdRuLsL5rG6jH4TjCRah3WB4zYzsr/kHl7ahNqHtv7J128Z+nmkqfpGLc4Rec3b0gUbb/PJINc/kRZJUeHQHqUKW7OTUGRCNYGDPQuY/LvjVylehlCzwbmgu/4ozoU0mz3b8KtbPSoT6p0jSg6Vc/spL+9Hc+p9zRiRGIvrt9AEgyTD+7DNJvUc62j0kRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CdE0tORgtp4TnrKJl4UHB0JJtUJekB4Nyb1JqDsQX0A=;
 b=Lg1HlFnT8j+H3yGfHpN8AdT7sI/gP/IEREyUaLgnbX0U4a/iAhUPMKzSL+2uWukoi5aq6N0GIQ0ZWXNBEDMJ1FmC4r3egp0lfO04FiIjGABOJl8Txmfgewz1qrMN9xNNJkvU35ghdyYCelO2uYGoMPMhqa4AqzpFV2YvmeFDWRM=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB4789.eurprd04.prod.outlook.com (2603:10a6:20b:7::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Sun, 26 Apr
 2020 05:08:24 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3%7]) with mapi id 15.20.2937.020; Sun, 26 Apr 2020
 05:08:23 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, Leonard Crestez
 <leonard.crestez@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>, Abel Vesa
 <abel.vesa@nxp.com>
Subject: RE: [PATCH V2 07/10] clk: imx: add mux ops for i.MX8M composite clk
Thread-Topic: [PATCH V2 07/10] clk: imx: add mux ops for i.MX8M composite clk
Thread-Index: AQHV+FjQX+/rv+yfS06A3Zgldk2vUaiLHGJw
Date: Sun, 26 Apr 2020 05:08:23 +0000
Message-ID: <AM6PR04MB4966D0EF272CAB282BF72EB580AE0@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1584008384-11578-1-git-send-email-peng.fan@nxp.com>
 <1584008384-11578-8-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1584008384-11578-8-git-send-email-peng.fan@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [218.82.155.143]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 46e3401a-c185-464f-fe16-08d7e99fd894
x-ms-traffictypediagnostic: AM6PR04MB4789:|AM6PR04MB4789:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB4789603BC2A76F896367F4CB80AE0@AM6PR04MB4789.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 03853D523D
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(136003)(396003)(346002)(366004)(39860400002)(8936002)(110136005)(54906003)(66946007)(66446008)(64756008)(66556008)(66476007)(76116006)(6506007)(7696005)(86362001)(6636002)(81156014)(71200400001)(26005)(33656002)(9686003)(55016002)(8676002)(316002)(7416002)(4326008)(186003)(2906002)(52536014)(44832011)(478600001)(5660300002);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: axFZ78kJow5VdMFYpU0zhHxDcAZM78qtvkpI3frwtxroOMiZMsb8Q2Qf/DIh688CNQwIh0sp9xbrEOoe7UFh5oIQVRf+za4u1UbbD4YftDeYX1Z/zoIBbW0Ki9UWFNKnUmoROHg/6G+kdlAVBqddJXBUklc+6csOqtWiKWyZsdAnGh5aTSMm9ZROfrJLxyL3ikbhgeIfiwEwz1NCjrOGcMY8KZGqaqH7xLbn9fAfEUcM0xz9D647BsRYcYf/VPOcbvPJ7iucw865Z3VieA22tbeqoX77ioiIeTST+cjB6j2qUiIRK1PjEktx3CXn81AxyD7MzlRz7xHJzQJkoNgIq0RDmNEfZ4XzWsz0Mz3Bw3QnChz23Yf8zRDN6J7/6j6j7yDp56VdsnHmhQg6Q3QNCXSmWQUWUV9Mln1CL6HR2AdnELl3/1PggARz1UUZZL+o
x-ms-exchange-antispam-messagedata: pICzRlt4bd8ScSYCmoqKJRqr19v5xXtQxrqTDtAOy5CzGAg2xza2ddi2UX/qjH4Adq9yDvMtpA2kQI21YD11u0nkRb3SZbFeWVN1NDykpwIygSexktovlzdcsE+kXhKaRIx0cJmNNj7bYWSyzWwQ4lLkgFIntDdVuYg3kVYxdEo2fqnptuEEDWfcWeVRr0hLRNorunRGghD8BUcKU79goFbZoFj7pzmKyRqAWypbwTebrnYj+m32ly1ztE0Pps9OKK3Ej4fri6DKPtnFu8W97RxkHrgyeXq4Td3RBYzQXnuZaA7vFRY90SDJwTqzhj9TmfnArYnhiIlsncVcjdwB9RJuEt+Vpd3LbS+8NBbTS/PfgQc8VsAePQv1CPkYGuAhMApJw/Q4t0ldGdWg/jp21GvEmfoEuGPEb0T0YVEYuvcoiX0NTOIOV66ky0j2eETgGcHrrzd1LoqCfFLpFlCg2OvtOy6ljoxMb3G35X0ajLajHqTrATLmIXl9GaH8kQhQq/dZybqSNDf91B3rcpH6oFQIT47rtG5RHd3nSnN/BUH4vMGmz1hXyZbAcdI/V0KmL9KQ3mBjzakao/Qbaw5A0o6ytE7fKuUm3/T+7XYhu/P73uqpe8WnueEH67dbjDIPEIYUpvxe4b3xpL2aCKSQggzSOsLA5Bgp9vlxm1EARNHmYqHH1rkFyBeG5yctE7nmd1j/uRNotZxf3iPmAV6K8kgbLUElM1XVc+LjWtW/AH1BHZZMvzPdccP99RldROfq1Lx4ZaPecqrbc6LHRQ6wtUMAnyy9Aqg74RldGXAbdqY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46e3401a-c185-464f-fe16-08d7e99fd894
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Apr 2020 05:08:23.7860 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tTTd7vuZI79xZePbzMM8QfJSKGyfICzll1j76AS4CUDmEsdWTO+jfuhs4fxdA4fs3XpkScMNEfkAel4/S4xAtw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4789
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_220827_858990_6F340082 
X-CRM114-Status: GOOD (  23.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.67 listed in list.dnswl.org]
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
> The CORE/BUS root slice has following design, simplied graph:
> The difference is core not have pre_div block.
> A composite core/bus clk has 8 inputs for mux to select, saying clk[0-7].
> 
>             SEL_A  GA
>             +--+  +-+
>             |  +->+ +------+
> CLK[0-7]--->+  |  +-+      |
>        |    |  |      +----v---+    +----+
>        |    +--+      |pre_diva+---->    |  +---------+
>        |              +--------+    |mux +--+post_div |
>        |    +--+      |pre_divb+--->+    |  +---------+
>        |    |  |      +----^---+    +----+
>        +--->+  |  +-+      |
>             |  +->+ +------+
>             +--+  +-+
>             SEL_B  GB
> 
> There will be system hang, when doing the following steps:
> 1. switch mux from clk0 to clk1
> 2. gate off clk0
> 3. swtich from clk1 to clk2, or gate off clk1
> 
> Step 3 triggers system hang.

Why Step 3 triggers system hang? Is this a HW limitation?

> 
> If we skip step2, keep clk0 on, step 3 will not trigger system hang.
> However we have CLK_OPS_PARENT_ENABLE flag, which will unprepare disable
> the clk0 which will not be used.
> 
> To address this issue, we could use following simplied software flow:
> After the first target register set
> wait the target register set finished
> set the target register set again
> wait the target register set finished
> 
> The upper flow will make sure SEL_A and SEL_B both set the new mux, but with
> only one path gate on.
> 
> And there will be no system hang anymore with step3.

Is this IC proposed solution?

> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
> 
> V2:
>  Drop wait after write, add one line comment for write twice.
> 
>  drivers/clk/imx/clk-composite-8m.c | 62
> +++++++++++++++++++++++++++++++++++++-
>  1 file changed, 61 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/imx/clk-composite-8m.c
> b/drivers/clk/imx/clk-composite-8m.c
> index 99773519b5a5..eae02c151ced 100644
> --- a/drivers/clk/imx/clk-composite-8m.c
> +++ b/drivers/clk/imx/clk-composite-8m.c
> @@ -24,6 +24,12 @@
> 
>  #define PCG_CGC_SHIFT		28
> 
> +#define PRE_REG_OFF		0x30
> +#define PRE_MUXA_SHIFT		24
> +#define PRE_MUXA_MASK		0x7
> +#define PRE_MUXB_SHIFT		8
> +#define PRE_MUXB_MASK		0x7

Are those macros used somewhere?

> +
>  static unsigned long imx8m_clk_composite_divider_recalc_rate(struct clk_hw
> *hw,
>  						unsigned long parent_rate)
>  {
> @@ -124,6 +130,57 @@ static const struct clk_ops
> imx8m_clk_composite_divider_ops = {
>  	.set_rate = imx8m_clk_composite_divider_set_rate,
>  };
> 
> +static u8 imx8m_clk_composite_mux_get_parent(struct clk_hw *hw) {
> +	struct clk_mux *mux = to_clk_mux(hw);
> +	u32 val;
> +
> +	val = readl(mux->reg) >> mux->shift;
> +	val &= mux->mask;
> +
> +	return clk_mux_val_to_index(hw, mux->table, mux->flags, val); }

You don't have to redefinition them if they're the same as clk_mux_ops.
You have the access to clk_mux_ops.

> +
> +static int imx8m_clk_composite_mux_set_parent(struct clk_hw *hw, u8
> +index) {
> +	struct clk_mux *mux = to_clk_mux(hw);
> +	u32 val = clk_mux_index_to_val(mux->table, mux->flags, index);
> +	unsigned long flags = 0;
> +	u32 reg;
> +
> +	if (mux->lock)
> +		spin_lock_irqsave(mux->lock, flags);
> +
> +	reg = readl(mux->reg);
> +	reg &= ~(mux->mask << mux->shift);
> +	val = val << mux->shift;
> +	reg |= val;
> +	/* write twice to make sure SEL_A/B point the same mux */
> +	writel(reg, mux->reg);
> +	writel(reg, mux->reg);

Why this affects both SEL_A/B?
Very tricky and may worth more comments.

Besides that, I'd like to see Abel's comments on this patch.

Regards
Aisheng

> +
> +	if (mux->lock)
> +		spin_unlock_irqrestore(mux->lock, flags);
> +
> +	return 0;
> +}
> +
> +static int
> +imx8m_clk_composite_mux_determine_rate(struct clk_hw *hw,
> +				       struct clk_rate_request *req) {
> +	struct clk_mux *mux = to_clk_mux(hw);
> +
> +	return clk_mux_determine_rate_flags(hw, req, mux->flags); }

Same as bove.

> +
> +
> +const struct clk_ops imx8m_clk_composite_mux_ops = {
> +	.get_parent = imx8m_clk_composite_mux_get_parent,
> +	.set_parent = imx8m_clk_composite_mux_set_parent,
> +	.determine_rate = imx8m_clk_composite_mux_determine_rate,
> +};
> +
>  struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
>  					const char * const *parent_names,
>  					int num_parents, void __iomem *reg, @@ -136,6
> +193,7 @@ struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
>  	struct clk_gate *gate = NULL;
>  	struct clk_mux *mux = NULL;
>  	const struct clk_ops *divider_ops;
> +	const struct clk_ops *mux_ops;
> 
>  	mux = kzalloc(sizeof(*mux), GFP_KERNEL);
>  	if (!mux)
> @@ -157,10 +215,12 @@ struct clk_hw
> *imx8m_clk_hw_composite_flags(const char *name,
>  		div->shift = PCG_DIV_SHIFT;
>  		div->width = PCG_CORE_DIV_WIDTH;
>  		divider_ops = &clk_divider_ops;
> +		mux_ops = &imx8m_clk_composite_mux_ops;
>  	} else {
>  		div->shift = PCG_PREDIV_SHIFT;
>  		div->width = PCG_PREDIV_WIDTH;
>  		divider_ops = &imx8m_clk_composite_divider_ops;
> +		mux_ops = &clk_mux_ops;
>  	}
> 
>  	div->lock = &imx_ccm_lock;
> @@ -176,7 +236,7 @@ struct clk_hw *imx8m_clk_hw_composite_flags(const
> char *name,
>  	gate->lock = &imx_ccm_lock;
> 
>  	hw = clk_hw_register_composite(NULL, name, parent_names,
> num_parents,
> -			mux_hw, &clk_mux_ops, div_hw,
> +			mux_hw, mux_ops, div_hw,
>  			divider_ops, gate_hw, &clk_gate_ops, flags);
>  	if (IS_ERR(hw))
>  		goto fail;
> --
> 2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
