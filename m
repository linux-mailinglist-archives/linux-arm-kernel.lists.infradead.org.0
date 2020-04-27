Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6819E1B9F8A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 11:16:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M0juOmc+oBCJTQ+k4NNsvUxgxj9GZwktyNrPHLr+OnE=; b=Wr07dycMxq271x
	1gqBGzIomyk0CKYlLjQe/VZFtp6BN8OKkNBlGJbK/w45kBbKH8drqjsiqSNzgbVhyh/U6OidXQGmu
	1yUy/UYE93r4MqNTytSoISbRJWpOLRpSlGw3BAhfwgXsbVz0bjUbV1KVvgZ008NU168AoPG/71GJq
	skeXzGZ8J/PIlVw7iCm/9ZKz/8NxLrIoudWpNraduCKLOZk7lkWDoxYpa5anJ4shc6n0efrVMDGTv
	HRpB1umM/OZrZTLhZS92WnZRmlgPt/pUevY5a+wvocdGDxpSFVjyL/jcOCSzjYBK3/xoIgWGIYyFi
	s4OWXRVOaL2BcvAmNMCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSzrj-0003fK-44; Mon, 27 Apr 2020 09:15:51 +0000
Received: from mail-eopbgr70043.outbound.protection.outlook.com ([40.107.7.43]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSzrT-0003eo-Le
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 09:15:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IwJMlHwFsiOs3qBCu8L2nTa0+NW/mEKXSo8p7OHtVAbEyJIJI0KHgA7m3+RWk1OqAd9uHPY7QMApoXFPYBjv4Z6+x4HcQPVOIt25Mct7sPhzIj1OnJF3K2S+t52K8auDIVMNGtw1HHlhOwGizn3NgHxwsLIFzRAWNpzMbYr3pmhAq/mBxKBJytmGqrioMYriSabwe0HNWVCUO5I5z8ljfxqkdECxLNSz1YpXwaCOSK7UVVEJTb44sKJbP/z/xDtgv3fImxt5ZE+1NZZKwQdgKchJcXU1OVz4zGn8TjZnaMFHycRQWcvotdJZL8TT+oBoWdtgu4DMJPHTRo3foIVfWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rrfu7uLCPIHwdKpUbqMptb8uneWrYyA6HQKTw7rKJMg=;
 b=Cn3opcbj5ARPY/kkdLZgjEEwGE53T76ucAmi9rwkHy8+upQF1aWjsb9UBYJqOsUQTELzLM7Fl9txhbDWsazMjGFBBuxlsgCUrlA7bCSToEv7XYlX2NcBQ2nJP4RGcj/hxxTDLDeFYrsLWyEt0IO2Qa1myaAcO06NcJ+O7quafn4rRvJXB6lExV+Aj/y8QsQjTL1kh+u1E+RMzLA1AfVHKl3HeiEQawWwFB+uY3RoLkwbNyifv+EUewllJUvFaLxchyAlOHAsmXO+aZgGQO5GPMAP1WgwQDvbJ9pNbJ4H2qVmJxSZiBbhasKi4urN0PrS83A3pgGvKniRoTdsH3yigQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rrfu7uLCPIHwdKpUbqMptb8uneWrYyA6HQKTw7rKJMg=;
 b=XjnVWKxmWsmdPu/ZADMokxwzAQ46mugFu/+r35jjRTjQ+uXkoYvEPtC1j8YdX2VZZCRARmwmRm8nMgQjTg4uDDikoGtqnWMkjB920aik3AcezwcWL0JY9vcIL5VwV3m4u4sk7o8ssAkcG3zVTgTZ7RYfIwuRc2g4khxG9x/zu34=
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2759.eurprd04.prod.outlook.com (2603:10a6:4:a2::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Mon, 27 Apr
 2020 09:15:32 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.2937.020; Mon, 27 Apr 2020
 09:15:32 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>, Anson Huang
 <anson.huang@nxp.com>
Subject: RE: [PATCH V2 07/10] clk: imx: add mux ops for i.MX8M composite clk
Thread-Topic: [PATCH V2 07/10] clk: imx: add mux ops for i.MX8M composite clk
Thread-Index: AQHV+FjOyMJp4JjxAkWF8jtS4KMMQqiM9zMA
Date: Mon, 27 Apr 2020 09:15:32 +0000
Message-ID: <DB6PR0402MB2760726D128E4BA868F03D9488AF0@DB6PR0402MB2760.eurprd04.prod.outlook.com>
References: <1584008384-11578-1-git-send-email-peng.fan@nxp.com>
 <1584008384-11578-8-git-send-email-peng.fan@nxp.com>
 <VI1PR04MB69418E9348D5765B4AE01D18EED00@VI1PR04MB6941.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB69418E9348D5765B4AE01D18EED00@VI1PR04MB6941.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: f824f403-9410-4a2f-b3eb-08d7ea8b897b
x-ms-traffictypediagnostic: DB6PR0402MB2759:|DB6PR0402MB2759:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0402MB2759E5AF64E45247934139CA88AF0@DB6PR0402MB2759.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0386B406AA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(366004)(376002)(346002)(396003)(136003)(9686003)(54906003)(5660300002)(66446008)(44832011)(53546011)(8936002)(316002)(64756008)(66556008)(6506007)(76116006)(66476007)(7696005)(8676002)(110136005)(186003)(4326008)(6636002)(26005)(86362001)(2906002)(71200400001)(7416002)(81156014)(66946007)(478600001)(55016002)(52536014)(33656002);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +fXBj24TuVrAqXAQT4nWHPdbgG1/rfxovhd+omOS6cDyJhsPadRZVMdi2yr9wl+oU+Yw9IsB+j+pMEERJ4XyCu6+9hBKM2nEo9KaGOK8EpDQraNkACWisKWw7/eqA9XL2nXfR6OfAePZtv61+o7jAL5kbZOr0zbs+ljAcqWPBtZtA1xgAW2L4nAe8kuoP+luNVp1EOo17hnVXtjS3ebx8cuCejBEUT3tuSryNdcruLVcU21PhNMJlpHeLkz/HaOz89uOGKWI4yJk+j38EpNhF/MiyVEpmSHgpvZrbgBeb5JgfsjG5rkj5ceSFn5qmUTAlVLkCE3q3XhHTbqTj7/OVof0YNDL2a1oAop+wEq8pqk+rw3549v2ZbOOSpPoZMSqF2+jH6eTRzjGTznpxFb12h5vnelMiaKzF3K0y1fzr3LQm+gLRseosDoUN1/TW/Vf
x-ms-exchange-antispam-messagedata: SgQKyd6bdjsdVHoZE2pZxvTQhS+m/leXTTY1E69RRr3cfGRVJ25DyppBO1A9zaJsunvNkksG/lz/+7cSJ1rF0SvO6ESlERS+yuHKvNmXmTWs7QBixmz7kU7tIR1n58JumEhk3RDGuZzh5quSIMLRQdc9orSCBx0CqB06aTlofNcHsw/mQW17J3kXAaYPhXUUn/2mwXI7tSi37ToXYZwdcUsw7JWQpomcxogRJge3w78bH3qoJEhxHw14iTguArXEy9tTFDihzCvCexNmEUiM6fVAg9gIEY+CaBmvUT3mAbm2ZwJ5bQ3DUIYCbzcQ0lo/wwwj1ftU4ki+mjbRsVxi15JW6NRfX2ECjsFj2GYPK1lb5KGoB3uhcWxbaQym1n8rajwsidSfT40o55f5RCXglHFpvChjK3CtzAD4iXEIVYQaL5J0IlklYyyHLgjWYnfKtzXx6E1EJ00y7f3Ms0J655u6j9vfUxgOsQZi+laEL08fE5yPIkiUxryD/FR4eadtsUBvv6o/eiV9K8+YXcYtQtNVCo0d6VRgrP30R8ykboB14CfinC9D6sFzl8/gYsP1swa+R2+vMz+erLnyeC+Jjdja1bhiDs2NbgtUWYdlPNeapb770MPMFCr3YqDFtEl9ETt/aDqrct4AytQBQx0EJz4/Sqt8i24rY01IKlLhdWqRvlZiRazy0FRegBLbOntRPTsmiGzp62xOouE5HlVT4VjMmTEDHUnmHk7TsYSwtzV5dUHU3ZHYqFyio/JEicZstzsa9Gn5W68qsbZtnGcEiFepUjugMs/WZVzoaxJdCEg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f824f403-9410-4a2f-b3eb-08d7ea8b897b
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Apr 2020 09:15:32.2514 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KJurb3J6R7J7hjlRVLZmBltjrSQUj9Es3cubjx2EOZYZC6IN1BcBlEd/+T066dnRvsjqmwRT6jGpWCXqqACnQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2759
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_021535_792813_108C5E10 
X-CRM114-Status: GOOD (  26.57  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.7.43 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.43 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

> Subject: Re: [PATCH V2 07/10] clk: imx: add mux ops for i.MX8M composite
> clk
> 
> On 2020-03-12 12:27 PM, Peng Fan wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > The CORE/BUS root slice has following design, simplied graph:
> > The difference is core not have pre_div block.
> > A composite core/bus clk has 8 inputs for mux to select, saying clk[0-7].
> >
> >              SEL_A  GA
> >              +--+  +-+
> >              |  +->+ +------+
> > CLK[0-7]--->+  |  +-+      |
> >         |    |  |      +----v---+    +----+
> >         |    +--+      |pre_diva+---->    |  +---------+
> >         |              +--------+    |mux +--+post_div |
> >         |    +--+      |pre_divb+--->+    |  +---------+
> >         |    |  |      +----^---+    +----+
> >         +--->+  |  +-+      |
> >              |  +->+ +------+
> >              +--+  +-+
> >              SEL_B  GB
> >
> > There will be system hang, when doing the following steps:
> > 1. switch mux from clk0 to clk1
> > 2. gate off clk0
> > 3. swtich from clk1 to clk2, or gate off clk1
> >
> > Step 3 triggers system hang.
> >
> > If we skip step2, keep clk0 on, step 3 will not trigger system hang.
> > However we have CLK_OPS_PARENT_ENABLE flag, which will unprepare
> > disable the clk0 which will not be used.
> 
> As far as I understand when switching from clk1 to clk2 this is done by
> temporarily switching the rightmost SELECT mux to whatever was in the
> spare SEL, which is essentially arbitrary from linux POV.

No. The fixes in this patches has been confirmed by IC design owner

> 
> This is quite unexpected but in theory it might be desirable to use a third
> parent as a fallback.

No. this will make things complicated. To CCM SEL_A and SEL_B,
it is controlled by a hardware counter. Saying you write n times to
the target interface.

The mux will use n % 2 to choose SEL_A or SEL_B. write twice
to make sure SEL_A and SEL_B has the same value.

Thanks,
Peng.

> 
> >
> > To address this issue, we could use following simplied software flow:
> > After the first target register set
> > wait the target register set finished
> > set the target register set again
> > wait the target register set finished
> >
> > The upper flow will make sure SEL_A and SEL_B both set the new mux,
> > but with only one path gate on.
> > And there will be no system hang anymore with step3.
> 
> Your fix tries to work around this scenario by always setting the mux value in
> SEL_A and SEL_B to the same value after each set_parent operation.
> 
> But what if SEL_A and SEL_B are different at linux boot time and the first
> reparenting is done *after* disabling unused clocks? This doesn't happen for
> A53 because it's reparented during clock provider probe but maybe this
> scenario could be contrived if bootloader touches one of the other bus slices.
> 
> It might be extra safe to assign the parent of the spare mux at the start of
> each set_parent call. This could even be done on probe and this way wouldn't
> have to duplicate mux_ops just to do a double write.
> 
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >
> > V2:
> >   Drop wait after write, add one line comment for write twice.
> >
> >   drivers/clk/imx/clk-composite-8m.c | 62
> +++++++++++++++++++++++++++++++++++++-
> >   1 file changed, 61 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/clk/imx/clk-composite-8m.c
> > b/drivers/clk/imx/clk-composite-8m.c
> > index 99773519b5a5..eae02c151ced 100644
> > --- a/drivers/clk/imx/clk-composite-8m.c
> > +++ b/drivers/clk/imx/clk-composite-8m.c
> > @@ -24,6 +24,12 @@
> >
> >   #define PCG_CGC_SHIFT		28
> >
> > +#define PRE_REG_OFF		0x30
> > +#define PRE_MUXA_SHIFT		24
> > +#define PRE_MUXA_MASK		0x7
> > +#define PRE_MUXB_SHIFT		8
> > +#define PRE_MUXB_MASK		0x7
> 
> These are unused.
> 
> > +
> >   static unsigned long imx8m_clk_composite_divider_recalc_rate(struct
> clk_hw *hw,
> >   						unsigned long parent_rate)
> >   {
> > @@ -124,6 +130,57 @@ static const struct clk_ops
> imx8m_clk_composite_divider_ops = {
> >   	.set_rate = imx8m_clk_composite_divider_set_rate,
> >   };
> >
> > +static u8 imx8m_clk_composite_mux_get_parent(struct clk_hw *hw) {
> > +	struct clk_mux *mux = to_clk_mux(hw);
> > +	u32 val;
> > +
> > +	val = readl(mux->reg) >> mux->shift;
> > +	val &= mux->mask;
> > +
> > +	return clk_mux_val_to_index(hw, mux->table, mux->flags, val); }
> > +
> > +static int imx8m_clk_composite_mux_set_parent(struct clk_hw *hw, u8
> > +index) {
> > +	struct clk_mux *mux = to_clk_mux(hw);
> > +	u32 val = clk_mux_index_to_val(mux->table, mux->flags, index);
> > +	unsigned long flags = 0;
> > +	u32 reg;
> > +
> > +	if (mux->lock)
> > +		spin_lock_irqsave(mux->lock, flags);
> > +
> > +	reg = readl(mux->reg);
> > +	reg &= ~(mux->mask << mux->shift);
> > +	val = val << mux->shift;
> > +	reg |= val;
> > +	/* write twice to make sure SEL_A/B point the same mux */
> > +	writel(reg, mux->reg);
> > +	writel(reg, mux->reg);
> > +
> > +	if (mux->lock)
> > +		spin_unlock_irqrestore(mux->lock, flags);
> > +
> > +	return 0;
> > +}
> > +
> > +static int
> > +imx8m_clk_composite_mux_determine_rate(struct clk_hw *hw,
> > +				       struct clk_rate_request *req) {
> > +	struct clk_mux *mux = to_clk_mux(hw);
> > +
> > +	return clk_mux_determine_rate_flags(hw, req, mux->flags); }
> > +
> > +
> > +const struct clk_ops imx8m_clk_composite_mux_ops = {
> > +	.get_parent = imx8m_clk_composite_mux_get_parent,
> > +	.set_parent = imx8m_clk_composite_mux_set_parent,
> > +	.determine_rate = imx8m_clk_composite_mux_determine_rate,
> > +};
> > +
> >   struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
> >   					const char * const *parent_names,
> >   					int num_parents, void __iomem *reg, @@
> -136,6 +193,7 @@ struct
> > clk_hw *imx8m_clk_hw_composite_flags(const char *name,
> >   	struct clk_gate *gate = NULL;
> >   	struct clk_mux *mux = NULL;
> >   	const struct clk_ops *divider_ops;
> > +	const struct clk_ops *mux_ops;
> >
> >   	mux = kzalloc(sizeof(*mux), GFP_KERNEL);
> >   	if (!mux)
> > @@ -157,10 +215,12 @@ struct clk_hw
> *imx8m_clk_hw_composite_flags(const char *name,
> >   		div->shift = PCG_DIV_SHIFT;
> >   		div->width = PCG_CORE_DIV_WIDTH;
> >   		divider_ops = &clk_divider_ops;
> > +		mux_ops = &imx8m_clk_composite_mux_ops;
> >   	} else {
> >   		div->shift = PCG_PREDIV_SHIFT;
> >   		div->width = PCG_PREDIV_WIDTH;
> >   		divider_ops = &imx8m_clk_composite_divider_ops;
> > +		mux_ops = &clk_mux_ops;
> >   	}
> >
> >   	div->lock = &imx_ccm_lock;
> > @@ -176,7 +236,7 @@ struct clk_hw
> *imx8m_clk_hw_composite_flags(const char *name,
> >   	gate->lock = &imx_ccm_lock;
> >
> >   	hw = clk_hw_register_composite(NULL, name, parent_names,
> num_parents,
> > -			mux_hw, &clk_mux_ops, div_hw,
> > +			mux_hw, mux_ops, div_hw,
> >   			divider_ops, gate_hw, &clk_gate_ops, flags);
> >   	if (IS_ERR(hw))
> >   		goto fail;
> >


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
