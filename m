Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AE265D0A0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 15:27:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iqRcO5Dl2ozfcIqD0yxyt2/4qU177Mc1sV3vusrr7MI=; b=TL8R6sy3TqXIFt
	eRr4iDUSXkZc4NgrWcO3es6AzLXCA5KCOLSa4sQhR6Ml8UQiB3UdENcaZJtORMzBhpkKaAkG0Zp4C
	eL7H2U3H3HAI/R4C3/m9pWzYsPlWP80i0tZIPyn1Ek2OpSvLrQWzL8t2BQlimqVdp2F0/c7dfeE4o
	ryQK2A6fepveU/BVWHbntlGBU5yYRSrztFk4y+BePx6wO0vTM0/kZxKXtpzHOm2BDd+GFP2Xs/Nyp
	gnQL/87reIANLF0PBS53zN2R8kjVU3Ls98IRuM9PdczWFhbO8aUkqoMx7GaXF95X0UYqXi7UuEH8x
	EtcpW9R0C/4c+30a8vkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiIoS-0007JT-N4; Tue, 02 Jul 2019 13:27:12 +0000
Received: from mail-eopbgr50060.outbound.protection.outlook.com ([40.107.5.60]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiIoF-0007IA-4h
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 13:27:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v2sFENHdro1MQTXqOLxcQZM7uadcKrlVA7327KPnKy8=;
 b=D8MOWe75Gg396a87xkE+jVreyCrky+hZrqkIWwCMXflSOEQfl6nJd6Iqd+jhWq0se5S1+gfyPeSq2UCJFPzeNt77Wtn6vh41W0igo2x6dgeizHz1O/Pin72iZ0ItQ+qCs1f+nl0rAVxNMbSF1kWC9W8JekPaYt4CdFZxAP+o2xQ=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB4531.eurprd04.prod.outlook.com (52.135.148.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Tue, 2 Jul 2019 13:26:48 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::a126:d121:200:367]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::a126:d121:200:367%7]) with mapi id 15.20.2032.019; Tue, 2 Jul 2019
 13:26:48 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Daniel Baluta <daniel.baluta@gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mm: Init rates and parents configs for
 clocks
Thread-Topic: [PATCH] arm64: dts: imx8mm: Init rates and parents configs for
 clocks
Thread-Index: AQHVK1megDe+rycO90eH0dSjd64Cw6at402AgAl5mIA=
Date: Tue, 2 Jul 2019 13:26:48 +0000
Message-ID: <20190702132647.3kyfl5gx6ghdiizl@fsr-ub1664-175>
References: <1561469191-26840-1-git-send-email-abel.vesa@nxp.com>
 <CAEnQRZCVQ0+pRh6akiZJXU-fRugEXmnthZp8Q2=aXFXCO3vcUg@mail.gmail.com>
In-Reply-To: <CAEnQRZCVQ0+pRh6akiZJXU-fRugEXmnthZp8Q2=aXFXCO3vcUg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 77343d10-fe6e-438a-80e3-08d6fef0efd2
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4531; 
x-ms-traffictypediagnostic: AM0PR04MB4531:
x-microsoft-antispam-prvs: <AM0PR04MB4531249BE080E55836DD6AC4F6F80@AM0PR04MB4531.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 008663486A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(4636009)(346002)(396003)(39860400002)(136003)(376002)(366004)(199004)(189003)(53546011)(6506007)(26005)(186003)(6116002)(7736002)(68736007)(3846002)(8676002)(256004)(14454004)(33716001)(102836004)(71190400001)(8936002)(305945005)(81156014)(1076003)(5660300002)(9686003)(53936002)(86362001)(229853002)(6512007)(6486002)(6916009)(316002)(71200400001)(6436002)(81166006)(66946007)(486006)(73956011)(446003)(66556008)(76116006)(476003)(66476007)(64756008)(66446008)(44832011)(11346002)(25786009)(6246003)(91956017)(54906003)(4326008)(99286004)(76176011)(66066001)(2906002)(478600001)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4531;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Y82NC/1iNxbPUm6T8qHBDPTmf6UGQp7cXiJgEic32ZXB7yDzTTt33gJyr/RtR/R/o0tJZ3S51I7urpLcgPruGVWvM7lOsu3z1YnK15+APC0HiZ0nytzxnyhO8ldmlCLkUVVysbvTCUSWmFWVz/hsNaEsmP132QpRz6DX5+p25sVUo/dYfxpiCnMvU8pgFQrxawe4kwYW40jfF8QpGFTy8+/baVOxm3ZjyoQnHLRVeLwtKvePv+nigKkdO65I5QuvQYWGZNvE9+d6QzQ5DOQLj2r1MOd8Yh++LnXD+OowbgtFnp5elWNn8P3u0BLbuXDJlYnekzmNcdr/T/ptaacn9ALRppAgxcJkSIdHAR5oIVFwCFujXJcz47YWyPLmKTXld0sXvvZmn3tevK7RzN2/BaTg7wsnL2JhzcIonO2ynaE=
Content-ID: <68D9BFBA281D044CB62C7880411AF8C1@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 77343d10-fe6e-438a-80e3-08d6fef0efd2
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jul 2019 13:26:48.7840 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: abel.vesa@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4531
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_062659_191136_3E33F248 
X-CRM114-Status: GOOD (  19.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.60 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Anson Huang <anson.huang@nxp.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-06-26 15:45:15, Daniel Baluta wrote:
> On Tue, Jun 25, 2019 at 4:42 PM Abel Vesa <abel.vesa@nxp.com> wrote:
> >
> > Add the initial configuration for clocks that need default parent and rate
> > setting. This is based on the vendor tree clock provider parents and rates
> > configuration except this is doing the setup in dts rather than using clock
> > consumer API in a clock provider driver.
> >
> > Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> > ---
> >  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 36 +++++++++++++++++++++++++++++++
> >  1 file changed, 36 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > index 232a741..ab92108 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > @@ -451,6 +451,42 @@
> >                                          <&clk_ext3>, <&clk_ext4>;
> >                                 clock-names = "osc_32k", "osc_24m", "clk_ext1", "clk_ext2",
> >                                               "clk_ext3", "clk_ext4";
> > +                               assigned-clocks = <&clk IMX8MM_CLK_AUDIO_AHB>,
> > +                                               <&clk IMX8MM_CLK_IPG_AUDIO_ROOT>,
> > +                                               <&clk IMX8MM_SYS_PLL3>,
> > +                                               <&clk IMX8MM_VIDEO_PLL1>,
> > +                                               <&clk IMX8MM_CLK_NOC>,
> > +                                               <&clk IMX8MM_CLK_PCIE1_CTRL>,
> > +                                               <&clk IMX8MM_CLK_PCIE1_PHY>,
> > +                                               <&clk IMX8MM_CLK_CSI1_CORE>,
> > +                                               <&clk IMX8MM_CLK_CSI1_PHY_REF>,
> > +                                               <&clk IMX8MM_CLK_CSI1_ESC>,
> > +                                               <&clk IMX8MM_CLK_DISP_AXI>,
> > +                                               <&clk IMX8MM_CLK_DISP_APB>;
> > +                               assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_800M>,
> > +                                               <0>,
> Isn't there a macro for 0? (dummy clock?)

I don't know about any such macro. If you're referring to IMX8MM_CLK_DUMMY,
that can't be used here since all I want here is to skip setting a parent to
the  IMX8MM_CLK_IPG_AUDIO_ROOT. If I use IMX8MM_CLK_DUMMY (along with &clk)
it will set the parent to IMX8MM_CLK_DUMMY and that's not what's needed here.

This is in accordance to the documentation:

Documentation/devicetree/bindings/clock/clock-bindings.txt:

"To skip setting parent or rate of a clock its corresponding entry should be
set to 0, or can be omitted if it is not followed by any non-zero entry."

> 
> 
> > +                                               <0>,
> > +                                               <0>,
> > +                                               <&clk IMX8MM_SYS_PLL3_OUT>,
> > +                                               <&clk IMX8MM_SYS_PLL2_250M>,
> > +                                               <&clk IMX8MM_SYS_PLL2_100M>,
> > +                                               <&clk IMX8MM_SYS_PLL2_1000M>,
> > +                                               <&clk IMX8MM_SYS_PLL2_1000M>,
> > +                                               <&clk IMX8MM_SYS_PLL1_800M>,
> > +                                               <&clk IMX8MM_SYS_PLL2_1000M>,
> > +                                               <&clk IMX8MM_SYS_PLL1_800M>;
> > +                               assigned-clock-rates = <400000000>,
> > +                                                       <400000000>,
> > +                                                       <750000000>,
> > +                                                       <594000000>,
> > +                                                       <0>,
> > +                                                       <0>,
> > +                                                       <0>,
> > +                                                       <0>,
> > +                                                       <0>,
> > +                                                       <0>,
> > +                                                       <500000000>,
> > +                                                       <200000000>;
> >                         };
> >
> >                         src: reset-controller@30390000 {
> > --
> > 2.7.4
> >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
