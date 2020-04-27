Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 700B41B9F7D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 11:12:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yA2cfJtmUJlUIGpMLRSejyrNs+QMLmNjAxX2wDX2yRE=; b=Jx5OFpUE6eoreS
	nu5XzWk+Ig58xbyck9E7msemBVLxPTKvJ9+kK454Irce/I/cQPnD/F0L5dOGGpeLVcnNwjA+7fT88
	PhcCW6iKAJE2ecnP2Mg4ioW2zR53eMzCUH92QpVBbA4mwo8TGkqhYBX+haH3Hm5nPdB9qKjRykBxZ
	y9+QTTOZkZbXvfw5tHko1EXZ9IHVZE3KFj8ba/wsUnICS8bux1OPfNhrPkVQAa8m6+3U5234WG+Ha
	xHaS87Fik9JF+RgonQhq1gBC2xBPLqHnbjT/z6KP6Bq4vwhcijDbfUQnNgnPNgbAt3WQzCdHJiVc0
	3xziK/aFy2efuaRDiNRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSzoH-0000ge-Lz; Mon, 27 Apr 2020 09:12:17 +0000
Received: from mail-am6eur05on2071.outbound.protection.outlook.com
 ([40.107.22.71] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSznz-0000X7-OL
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 09:12:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GwuV8kHN9pgIc3m+1q+VO2VhwrXUbbQkxnvWpOUGCkRrUn6O24ZVCPgbwtz7Afc6v1niukn9Em1/+RiHRvcBEx1y6Q0REff/zeolUuN1dpN2XXBL+Gp7ZSaHPWegxKIG2PF8lek0eYwuX7UElO/D1foNl2dtci50e6GtQbp5RgqhNOQ9UG8rDHBls7Tg43WhzGTNdtwqCyabt5NpLZDxmJkPQbbkvGXmdJh6GvApInRx4t8ON8JDW6WUescyMs3OvaIqdgyOhKXlkWi2QcTv24F5b0//Rszw9qlnahvG2x/JlcvGvxhlLsCgbvyBWpPC9p9/p3jAIrSC9OdR96+1fA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2bDnst4dXlusnhUOAxaYT/hQk/ttcqqykctvFm+W6qA=;
 b=WLEw4g88UQoewIKdDNHELAVVOb/IsADrD8RM3sb1BxZDgRKA/B9bTFwsO9vnxKF+z+7zCB+9ZVN0ncjG5GsDSzrEXV1iToTVP8tl1PUXEtlWgFvwXrUVup4eyOdKzVWKh+twefIl4N+5aW5WXYfELKUmHhBxHV4Rde+yjHdivVya78A5UzgoAm8TMR1P0O4pwBAn56Ca7/K5S5MeoiaIXr/7WCe4URpFv6wxzwOGX3GAKVdZgqJxST3mkr4N5xaWg3Qg5qyQi5NHfdf1HvaQbv4vLqE3XB2Rss53irZVwCfTTnuaw83v79atojOqyVXnNzu+GzObIE6SCTMOq/mPqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2bDnst4dXlusnhUOAxaYT/hQk/ttcqqykctvFm+W6qA=;
 b=C6T7t6dtCgjBP6jjtR2U/+Ui7KFOAjL2slDERBMU2xZgq8oTcFZ2cLyRzAFss0dG2qsJaEhUAijySfIdgH62RF5XhdskCXCJb4Hbv10j7uv4r2lPWbVmeifYwO1Hjeernsw8oBOJPqFD6NoX3hm1ntv+v/WIvMQjC7R7ddIqxvE=
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2695.eurprd04.prod.outlook.com (2603:10a6:4:95::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Mon, 27 Apr
 2020 09:11:56 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.2937.020; Mon, 27 Apr 2020
 09:11:56 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, Abel Vesa <abel.vesa@nxp.com>
Subject: RE: [PATCH V2 07/10] clk: imx: add mux ops for i.MX8M composite clk
Thread-Topic: [PATCH V2 07/10] clk: imx: add mux ops for i.MX8M composite clk
Thread-Index: AQHV+FjOyMJp4JjxAkWF8jtS4KMMQqiLILmAgAHSuqA=
Date: Mon, 27 Apr 2020 09:11:56 +0000
Message-ID: <DB6PR0402MB276047141A63BE756B9C06D988AF0@DB6PR0402MB2760.eurprd04.prod.outlook.com>
References: <1584008384-11578-1-git-send-email-peng.fan@nxp.com>
 <1584008384-11578-8-git-send-email-peng.fan@nxp.com>
 <AM6PR04MB4966D0EF272CAB282BF72EB580AE0@AM6PR04MB4966.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB4966D0EF272CAB282BF72EB580AE0@AM6PR04MB4966.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 7f12ddcb-ffed-4b2d-b0ae-08d7ea8b08ec
x-ms-traffictypediagnostic: DB6PR0402MB2695:|DB6PR0402MB2695:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0402MB269586674C80866C2F87FFF988AF0@DB6PR0402MB2695.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0386B406AA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(346002)(39860400002)(366004)(396003)(376002)(64756008)(66476007)(66446008)(76116006)(186003)(52536014)(54906003)(478600001)(316002)(110136005)(2906002)(4326008)(9686003)(6506007)(86362001)(33656002)(7696005)(26005)(6636002)(71200400001)(66556008)(81156014)(8676002)(8936002)(66946007)(5660300002)(7416002)(55016002)(44832011);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tvxASt3EtIz//ewjYFigJtg+8fh6EVUb6r3HAtDHd8PhMDeq5Lk8YJUs9PVCdSU2p1xFvTsExzZMdjgSsdkz8xRB9TMsqIgpqg/94TwMN9DqXR5Rh/SuMvsQk2n6zXLeKLOkxFjciT6AmtKhQn0VlEExOfjc93E5GJh41A8qJuoIBevYTGaYLBNLNAswpY2kfHwmJDUY4lt0ceGIdsmtpuKnydYHW1cgpXoo0V48FyhYCp9rnCbQL9wsxHa3dpsmud9v3LwS4/T0L1etxKVkUFVZYCovChP2KR2umHuwhr6OJ2CqGiBQYGdX41m98USA9avnqSk4uwLx0QrmBG51X9eT005kIfkw3tzRhgZAxH/IMlIqNml5DzS4Zo1R7cYtB+abty+97oLwZfAE8wU43yqNgB38sSCXa8/Q5mqpvm0a8Lg15BDdm4j0GBHyti3J
x-ms-exchange-antispam-messagedata: CxpJiQUijhiSScjazk4W5zOwrrdAq6LztRXuudPZNUASB8so8Mnv9TqPA3jK0UNcag7k+oPqroSVf5qymKHKpKeiaqKE5b5buhdUl1JCrbEdAPrdIWH455j2K1VcJ4DsnhW+f3jdWL3wKJ5RoIHDcp8jpAGtpfQXrorOU1pIO4enY2M3FJObHUiWEPZWrFcdA9yBH0VtJvVrjXZf3R6TZkkFwEYyHMKVlkpcRk8/MhM2BMq5BJn5A7fAcEB/PMtJDZc+bugf4z/PvnXeLPpndrf3KotOqmHbj+I0gl5eyktZWRUFc5wiLnVmOwws2kQEr91KZfPux5awt5kFHzR+u9ejZRovvsTNWDwEwoZazIvkyeHuL0GnsawQasNIbiGfqNEis9qBIBgyMNIfVOZZ3rlIZvsQ3dz+gQfDV2DokoHLEakxDSj3XFUxrJI65Ro87fb8SYU928xwznLZYQtC5fYJHCa4h3xeZZIxHEOyN+U36wbi2fQgetO7Gu4p47w4cV1T8qbr3tpObZ2AMOsZdQh22KFusLzPRSEidCQSUYYEVosKyELec2o53SiBxcLzXWl/CnjBDgh5an/N5dg+bqo7W7VZg1I/voHxgU/It6Ko4V6jVD5rQDMP1f/6FDN9+zsVW1iZWr2nvmS1KGFYJ7UI5+tFEIwb8W4nrmzhW9wJMMASlAoNc2JkqO/luP+lsF1H5noGp2QChoDQBoZs6Ioarmbr5S6prE0ROmzLbxVKbz1qwnl6XdnyfOWicgpbKMQ7IX25avo8LIG9XKoC5YTnkdpmey6Hp28PGpp5tIg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f12ddcb-ffed-4b2d-b0ae-08d7ea8b08ec
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Apr 2020 09:11:56.6448 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vRMo8rFEULDNhyKIt3XnDNdFeVVbMmSa/kXWBX9vcVvTeYSL4eDv2i7s8l166VyhZPSU+vxT+yJKRqZUVz2Tlw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2695
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_021159_955461_B8BB81C4 
X-CRM114-Status: GOOD (  26.25  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.22.71 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.71 listed in wl.mailspike.net]
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

> Subject: RE: [PATCH V2 07/10] clk: imx: add mux ops for i.MX8M composite
> clk
> 
> > From: Peng Fan <peng.fan@nxp.com>
> > Sent: Thursday, March 12, 2020 6:20 PM
> >
> > The CORE/BUS root slice has following design, simplied graph:
> > The difference is core not have pre_div block.
> > A composite core/bus clk has 8 inputs for mux to select, saying clk[0-7].
> >
> >             SEL_A  GA
> >             +--+  +-+
> >             |  +->+ +------+
> > CLK[0-7]--->+  |  +-+      |
> >        |    |  |      +----v---+    +----+
> >        |    +--+      |pre_diva+---->    |  +---------+
> >        |              +--------+    |mux +--+post_div |
> >        |    +--+      |pre_divb+--->+    |  +---------+
> >        |    |  |      +----^---+    +----+
> >        +--->+  |  +-+      |
> >             |  +->+ +------+
> >             +--+  +-+
> >             SEL_B  GB
> >
> > There will be system hang, when doing the following steps:
> > 1. switch mux from clk0 to clk1
> > 2. gate off clk0
> > 3. swtich from clk1 to clk2, or gate off clk1
> >
> > Step 3 triggers system hang.
> 
> Why Step 3 triggers system hang? Is this a HW limitation?

It is what hardware designed.

There is a counter inside the clk root module to choose
SEL_A or SEL_B. If choose SEL_B, the parent of SEL_B must
be active, otherwise the change from SEL_A to SEL_B
will cause hang.

SEL_A and SEL_B is inside the clock root module,
It is not clk's software parentA/B. misunderstand
this will misunderstand the whole fix.

> 
> >
> > If we skip step2, keep clk0 on, step 3 will not trigger system hang.
> > However we have CLK_OPS_PARENT_ENABLE flag, which will unprepare
> > disable the clk0 which will not be used.
> >
> > To address this issue, we could use following simplied software flow:
> > After the first target register set
> > wait the target register set finished
> > set the target register set again
> > wait the target register set finished
> >
> > The upper flow will make sure SEL_A and SEL_B both set the new mux,
> > but with only one path gate on.
> >
> > And there will be no system hang anymore with step3.
> 
> Is this IC proposed solution?

This is what I proposed and IC team confirmed.

> 
> >
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >
> > V2:
> >  Drop wait after write, add one line comment for write twice.
> >
> >  drivers/clk/imx/clk-composite-8m.c | 62
> > +++++++++++++++++++++++++++++++++++++-
> >  1 file changed, 61 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/clk/imx/clk-composite-8m.c
> > b/drivers/clk/imx/clk-composite-8m.c
> > index 99773519b5a5..eae02c151ced 100644
> > --- a/drivers/clk/imx/clk-composite-8m.c
> > +++ b/drivers/clk/imx/clk-composite-8m.c
> > @@ -24,6 +24,12 @@
> >
> >  #define PCG_CGC_SHIFT		28
> >
> > +#define PRE_REG_OFF		0x30
> > +#define PRE_MUXA_SHIFT		24
> > +#define PRE_MUXA_MASK		0x7
> > +#define PRE_MUXB_SHIFT		8
> > +#define PRE_MUXB_MASK		0x7
> 
> Are those macros used somewhere?

Remove in v3.

> 
> > +
> >  static unsigned long imx8m_clk_composite_divider_recalc_rate(struct
> > clk_hw *hw,
> >  						unsigned long parent_rate)
> >  {
> > @@ -124,6 +130,57 @@ static const struct clk_ops
> > imx8m_clk_composite_divider_ops = {
> >  	.set_rate = imx8m_clk_composite_divider_set_rate,
> >  };
> >
> > +static u8 imx8m_clk_composite_mux_get_parent(struct clk_hw *hw) {
> > +	struct clk_mux *mux = to_clk_mux(hw);
> > +	u32 val;
> > +
> > +	val = readl(mux->reg) >> mux->shift;
> > +	val &= mux->mask;
> > +
> > +	return clk_mux_val_to_index(hw, mux->table, mux->flags, val); }
> 
> You don't have to redefinition them if they're the same as clk_mux_ops.
> You have the access to clk_mux_ops.

This will require export_symbol of clk_mux_ops callbacks.

> 
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
> 
> Why this affects both SEL_A/B?

The internal counter will make sure both SEL_A/B point
to the same mux.

> Very tricky and may worth more comments.

Ah, I think RM should be clear about the target interface
and non-target interface.

When you write once, saying use SEL_A, when
you write the 2nd, the hardware will use SEL_B,
when you write 3rd, the hardware will use SEL_A.
and ...

> 
> Besides that, I'd like to see Abel's comments on this patch.


Abel,

 Any comments?

Thanks,
Peng.

> 
> Regards
> Aisheng
> 
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
> 
> Same as bove.
> 
> > +
> > +
> > +const struct clk_ops imx8m_clk_composite_mux_ops = {
> > +	.get_parent = imx8m_clk_composite_mux_get_parent,
> > +	.set_parent = imx8m_clk_composite_mux_set_parent,
> > +	.determine_rate = imx8m_clk_composite_mux_determine_rate,
> > +};
> > +
> >  struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
> >  					const char * const *parent_names,
> >  					int num_parents, void __iomem *reg, @@ -136,6
> > +193,7 @@ struct clk_hw *imx8m_clk_hw_composite_flags(const char
> > +*name,
> >  	struct clk_gate *gate = NULL;
> >  	struct clk_mux *mux = NULL;
> >  	const struct clk_ops *divider_ops;
> > +	const struct clk_ops *mux_ops;
> >
> >  	mux = kzalloc(sizeof(*mux), GFP_KERNEL);
> >  	if (!mux)
> > @@ -157,10 +215,12 @@ struct clk_hw
> > *imx8m_clk_hw_composite_flags(const char *name,
> >  		div->shift = PCG_DIV_SHIFT;
> >  		div->width = PCG_CORE_DIV_WIDTH;
> >  		divider_ops = &clk_divider_ops;
> > +		mux_ops = &imx8m_clk_composite_mux_ops;
> >  	} else {
> >  		div->shift = PCG_PREDIV_SHIFT;
> >  		div->width = PCG_PREDIV_WIDTH;
> >  		divider_ops = &imx8m_clk_composite_divider_ops;
> > +		mux_ops = &clk_mux_ops;
> >  	}
> >
> >  	div->lock = &imx_ccm_lock;
> > @@ -176,7 +236,7 @@ struct clk_hw
> *imx8m_clk_hw_composite_flags(const
> > char *name,
> >  	gate->lock = &imx_ccm_lock;
> >
> >  	hw = clk_hw_register_composite(NULL, name, parent_names,
> > num_parents,
> > -			mux_hw, &clk_mux_ops, div_hw,
> > +			mux_hw, mux_ops, div_hw,
> >  			divider_ops, gate_hw, &clk_gate_ops, flags);
> >  	if (IS_ERR(hw))
> >  		goto fail;
> > --
> > 2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
