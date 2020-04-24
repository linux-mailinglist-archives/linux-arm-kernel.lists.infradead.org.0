Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E01DF1B7EDE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 21:29:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=kqqb/ZkkuRm7RPnLkohl4VEvuYjKmf/PMIpz8fOWKc4=; b=IJTvIgI+SS6wWT
	CQifBT3BphT3AGaPuSsjxpErShzp92ESGetKiAxg2juuyboy1vJdnwWlHe8U+x9iZXLheQJFyuPKa
	AYkFknhh7CM4C7mOPGeL5hjrJC3Eo3PveYKTHlLMA555VmOlcfQy+nWMpZ+QR4gwnNuClGtiXNn+/
	tNUBJkowTM8M5vV4AU/stC6JN7Z/s7Z65xFM+DvrQW2n6iJ8wZInPfXEYGS8IL2HTFMczJ+nNKd+9
	S/JS9srsSGdPzXWzjkHhyyB9xw+3dUkhJ5CXe9/iN+RhvrwvVYktPBBE4Xy991AdVxRX9dCkFa+Re
	na1KSd+fXDvlYEOf8piw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS40k-0004AY-N9; Fri, 24 Apr 2020 19:29:18 +0000
Received: from mail-eopbgr10061.outbound.protection.outlook.com ([40.107.1.61]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS40b-00049Y-PN
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 19:29:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BYv7pXFyfypZi6WpE10jAzzET2JhO0Sshlmz6m0J883fxAb0ZzlIcQZCJFQ6ql4mpT9kIuYcgZUzGATI+AbP0q8aHtvlNhbHpFmzJscbm/Bp6WDh8fdhjiHzUI2KWOjHMFnpbJTThA0/z54XtsuVvgJezmaLW55hi88OuLjDiZ+fDW7ohxwdMj5br1Gb+vpDnkukPVTvgmCSqMFLE+KyIVleydISTI0XlbUKmAMcRVpGvUqLZ4Yf69CFvG3Ft4mFhwWAZxhojRo4VmimRQlupNdUHyDCERytWXcQ+Zxb+PDlElRNbZ2X8te7jjFfDAVVolRU9JNo6Y0D7v81J90c8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RMUS30HN5O4f433+owxb1LAdwLy3OuwBOdIoKgVBvMw=;
 b=GSodwmuUAj+fPebr5Wj35kyWnm0CJMKiyRm2aGdNRM8KlMkqUD9bLBw8cRn94Z3Z9zv5Xzh8ahHXliBWUH9DtZzrTa83okEzc2Xl9UM1yGE0qmr7m1VzL4K/mjEvuSOT2E6YPkwyJyQ4TRRzIXSta2i4Id6AQ+VV/uZsNOOodaJ398iIs+RecWjQy0rHulJQdnvvPQou9VERrFFvH5gdIOBxMToaRzjrXieRaBvBCYL4FKBhl/dDNOEYwhYwedpvxNdBkJVD8i2HttAYTe5d6nH0dRrmlhBGnf4j1R3u710OwWR5opTpVN9F9E2E7TN75YABzBJ2n9w0ltNSJ5G5CA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RMUS30HN5O4f433+owxb1LAdwLy3OuwBOdIoKgVBvMw=;
 b=FephGL4pprfXY6a1oTaSu7z3J3xO+YCnPgNjUShRGTM0Ufas1nTE/cTQrw3OO0XMhyZOUEGjCUrqXDNHndL8sI7MyAeci8+JxIKtKhceoA3pDBefKwl6GXh94UkCWtUpJmE/UyFFDJpVRO28EWujBdqoBTcYF/P24rpXhSBoZOI=
Received: from VI1PR04MB6941.eurprd04.prod.outlook.com (2603:10a6:803:12e::23)
 by VI1PR04MB6334.eurprd04.prod.outlook.com (2603:10a6:803:102::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Fri, 24 Apr
 2020 19:29:02 +0000
Received: from VI1PR04MB6941.eurprd04.prod.outlook.com
 ([fe80::8de5:8c61:6e4d:9fe9]) by VI1PR04MB6941.eurprd04.prod.outlook.com
 ([fe80::8de5:8c61:6e4d:9fe9%9]) with mapi id 15.20.2937.020; Fri, 24 Apr 2020
 19:29:02 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH V2 07/10] clk: imx: add mux ops for i.MX8M composite clk
Thread-Topic: [PATCH V2 07/10] clk: imx: add mux ops for i.MX8M composite clk
Thread-Index: AQHV+FjQMBLZK1sUBkmPtGWbyCJKZA==
Date: Fri, 24 Apr 2020 19:29:01 +0000
Message-ID: <VI1PR04MB69418E9348D5765B4AE01D18EED00@VI1PR04MB6941.eurprd04.prod.outlook.com>
References: <1584008384-11578-1-git-send-email-peng.fan@nxp.com>
 <1584008384-11578-8-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [95.76.3.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ccba8604-20a6-4e88-9f2d-08d7e885be81
x-ms-traffictypediagnostic: VI1PR04MB6334:|VI1PR04MB6334:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB6334DDF5FECB9AFEC1CDC3A2EED00@VI1PR04MB6334.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 03838E948C
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB6941.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(366004)(376002)(136003)(396003)(39860400002)(86362001)(44832011)(2906002)(4326008)(8676002)(66446008)(66946007)(64756008)(52536014)(76116006)(66556008)(71200400001)(66476007)(91956017)(5660300002)(6506007)(81156014)(8936002)(110136005)(186003)(6636002)(9686003)(55016002)(33656002)(316002)(7696005)(26005)(54906003)(478600001)(53546011)(7416002);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wUmUbE2N4DKA/Sg2XE/RMXehxA99I5wDGuxRRNvxtOE/3+CBQYuAo/o6M1pzJPyXoLt9ea0Q6T7AqI4REmvsSE0beBY6+9ueoCWb/bdFe+sorQPJzaFGgS67drRNMZPiB8mo/RNXH9G+7kWWXG7+aBCjnESaeghVY0bjFzFwFX7a/tn3PN6VqF4qX4fkdJKRYv+c14HQRXly8NTRtuDXrdalUhCP+ZxURmdSZGT1UTd0C57jjUg/DM5dbH2VF0N5mKedubRRG6yD7dAwra/oFiHM9o1sd8LSkWKyjMHIssGhXrq0ujxZ7K3u9aCuCIOxp1R8Mi/pHznQd0g6/2p73RuaolIoM+p567S5r+0N8PRzv9AJvD56IFA8s8B61r6X36/4eFsKACzKU/SffZGqWC6Zm1EooJttNyaRoZuqyCJqLrA/W1bwTEFl+JeuyxK+
x-ms-exchange-antispam-messagedata: DeATf/V+9WmqHoxwcXmKGE5UVx8oy6T2PKqvyvXpMZvllfhaV2nPiBUdAJTP41c4d0oWHqnaFTdr8SQAlif5MDxCLeYvVSED9EbTtqHWOHBF8vjySMwi8Gp9si/n/3JcdSzogtPiSV/mfhVJKA9nTw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ccba8604-20a6-4e88-9f2d-08d7e885be81
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2020 19:29:01.8713 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: G9ZNJomv7ZIBFm+xKs8ox0wjrAsfxtQMpghzOx06bp2nQm1nLTOAutDwZZvwQ7ihII1/w3ZgR3WofMiZUEDKVw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6334
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_122909_947250_A99A2282 
X-CRM114-Status: GOOD (  20.31  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.61 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [95.76.3.222 listed in dnsbl.sorbs.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Daniel Baluta <daniel.baluta@nxp.com>, Andy Duan <fugang.duan@nxp.com>,
 Abel Vesa <abel.vesa@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "angus@akkea.ca" <angus@akkea.ca>, "heiko@sntech.de" <heiko@sntech.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 "aford173@gmail.com" <aford173@gmail.com>, Jun Li <jun.li@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>, "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-03-12 12:27 PM, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> The CORE/BUS root slice has following design, simplied graph:
> The difference is core not have pre_div block.
> A composite core/bus clk has 8 inputs for mux to select, saying clk[0-7].
> 
>              SEL_A  GA
>              +--+  +-+
>              |  +->+ +------+
> CLK[0-7]--->+  |  +-+      |
>         |    |  |      +----v---+    +----+
>         |    +--+      |pre_diva+---->    |  +---------+
>         |              +--------+    |mux +--+post_div |
>         |    +--+      |pre_divb+--->+    |  +---------+
>         |    |  |      +----^---+    +----+
>         +--->+  |  +-+      |
>              |  +->+ +------+
>              +--+  +-+
>              SEL_B  GB
> 
> There will be system hang, when doing the following steps:
> 1. switch mux from clk0 to clk1
> 2. gate off clk0
> 3. swtich from clk1 to clk2, or gate off clk1
> 
> Step 3 triggers system hang.
> 
> If we skip step2, keep clk0 on, step 3 will not trigger system hang.
> However we have CLK_OPS_PARENT_ENABLE flag, which will unprepare disable
> the clk0 which will not be used.

As far as I understand when switching from clk1 to clk2 this is done by 
temporarily switching the rightmost SELECT mux to whatever was in the 
spare SEL, which is essentially arbitrary from linux POV.

This is quite unexpected but in theory it might be desirable to use a 
third parent as a fallback.

> 
> To address this issue, we could use following simplied software flow:
> After the first target register set
> wait the target register set finished
> set the target register set again
> wait the target register set finished
> 
> The upper flow will make sure SEL_A and SEL_B both set the new mux,
> but with only one path gate on.
> And there will be no system hang anymore with step3.

Your fix tries to work around this scenario by always setting the mux 
value in SEL_A and SEL_B to the same value after each set_parent operation.

But what if SEL_A and SEL_B are different at linux boot time and the 
first reparenting is done *after* disabling unused clocks? This doesn't 
happen for A53 because it's reparented during clock provider probe but 
maybe this scenario could be contrived if bootloader touches one of the 
other bus slices.

It might be extra safe to assign the parent of the spare mux at the 
start of each set_parent call. This could even be done on probe and this 
way wouldn't have to duplicate mux_ops just to do a double write.

> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
> 
> V2:
>   Drop wait after write, add one line comment for write twice.
> 
>   drivers/clk/imx/clk-composite-8m.c | 62 +++++++++++++++++++++++++++++++++++++-
>   1 file changed, 61 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/imx/clk-composite-8m.c b/drivers/clk/imx/clk-composite-8m.c
> index 99773519b5a5..eae02c151ced 100644
> --- a/drivers/clk/imx/clk-composite-8m.c
> +++ b/drivers/clk/imx/clk-composite-8m.c
> @@ -24,6 +24,12 @@
>   
>   #define PCG_CGC_SHIFT		28
>   
> +#define PRE_REG_OFF		0x30
> +#define PRE_MUXA_SHIFT		24
> +#define PRE_MUXA_MASK		0x7
> +#define PRE_MUXB_SHIFT		8
> +#define PRE_MUXB_MASK		0x7

These are unused.

> +
>   static unsigned long imx8m_clk_composite_divider_recalc_rate(struct clk_hw *hw,
>   						unsigned long parent_rate)
>   {
> @@ -124,6 +130,57 @@ static const struct clk_ops imx8m_clk_composite_divider_ops = {
>   	.set_rate = imx8m_clk_composite_divider_set_rate,
>   };
>   
> +static u8 imx8m_clk_composite_mux_get_parent(struct clk_hw *hw)
> +{
> +	struct clk_mux *mux = to_clk_mux(hw);
> +	u32 val;
> +
> +	val = readl(mux->reg) >> mux->shift;
> +	val &= mux->mask;
> +
> +	return clk_mux_val_to_index(hw, mux->table, mux->flags, val);
> +}
> +
> +static int imx8m_clk_composite_mux_set_parent(struct clk_hw *hw, u8 index)
> +{
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
> +
> +	if (mux->lock)
> +		spin_unlock_irqrestore(mux->lock, flags);
> +
> +	return 0;
> +}
> +
> +static int
> +imx8m_clk_composite_mux_determine_rate(struct clk_hw *hw,
> +				       struct clk_rate_request *req)
> +{
> +	struct clk_mux *mux = to_clk_mux(hw);
> +
> +	return clk_mux_determine_rate_flags(hw, req, mux->flags);
> +}
> +
> +
> +const struct clk_ops imx8m_clk_composite_mux_ops = {
> +	.get_parent = imx8m_clk_composite_mux_get_parent,
> +	.set_parent = imx8m_clk_composite_mux_set_parent,
> +	.determine_rate = imx8m_clk_composite_mux_determine_rate,
> +};
> +
>   struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
>   					const char * const *parent_names,
>   					int num_parents, void __iomem *reg,
> @@ -136,6 +193,7 @@ struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
>   	struct clk_gate *gate = NULL;
>   	struct clk_mux *mux = NULL;
>   	const struct clk_ops *divider_ops;
> +	const struct clk_ops *mux_ops;
>   
>   	mux = kzalloc(sizeof(*mux), GFP_KERNEL);
>   	if (!mux)
> @@ -157,10 +215,12 @@ struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
>   		div->shift = PCG_DIV_SHIFT;
>   		div->width = PCG_CORE_DIV_WIDTH;
>   		divider_ops = &clk_divider_ops;
> +		mux_ops = &imx8m_clk_composite_mux_ops;
>   	} else {
>   		div->shift = PCG_PREDIV_SHIFT;
>   		div->width = PCG_PREDIV_WIDTH;
>   		divider_ops = &imx8m_clk_composite_divider_ops;
> +		mux_ops = &clk_mux_ops;
>   	}
>   
>   	div->lock = &imx_ccm_lock;
> @@ -176,7 +236,7 @@ struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
>   	gate->lock = &imx_ccm_lock;
>   
>   	hw = clk_hw_register_composite(NULL, name, parent_names, num_parents,
> -			mux_hw, &clk_mux_ops, div_hw,
> +			mux_hw, mux_ops, div_hw,
>   			divider_ops, gate_hw, &clk_gate_ops, flags);
>   	if (IS_ERR(hw))
>   		goto fail;
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
