Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53186F765E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 15:29:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gy0h5f1WpcPFMfeGBjt1UML8IAlmQuJu9JQ1O9eTNAo=; b=PxphaOM5UB/gQb
	WwQhqtLbzJXTdr6lyCWAF3utjr8CMz2yOaH6zPi/rNMvQPlK7de16vIiB/58fZMWG6HY6sSTxkDu8
	M825D0PdLDGZ/FmzO/rlxp3Oy6xNXMsdEYqkFG9jfSXdPQ5hJKOPmZDpMgI1bxf+Aqa3F3TCBA4tI
	BhorJ0X80NrPLABTshb9TVx32pbFQDWHZ+rn84+rzOHtu8iE7qWZHZB4lvdRazqvy/mG9DwrybVCu
	oS5vyEDL7BNOaAZYOzW5nAIny5fKfaBqEuDp6yIdszzwQmYbiU5Q+L+qk5efqthY9VvJP7lmlyXNL
	hCkP9epP8DLkB0xsHr7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUAhB-0002t4-1d; Mon, 11 Nov 2019 14:29:33 +0000
Received: from mail-eopbgr130085.outbound.protection.outlook.com
 ([40.107.13.85] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUAgz-0002sR-Cn
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 14:29:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HnL9E+Gf1GgmBhS7Kz8Gp8JSrvHnNgTMZmj1CUzt7C2l8G9fdmoQzKoWt6Qs2jKFOWmfGsOeHVTSrUbHGCdACEqckLCKrG4XO9wqaEoVdK8/4Mqwqeeqcru4I25vV5zuxWOwjTfJp4M54BQ5T4OdQUGlIYMlxQmoRr+2kfH0sbtwOTw5DDY2Rrf5zmlNYBjiXalKzh+0V+MYc/dmZWtxEqplxPGk3ixfU2s8vZg+kmdgXr4sRLa3l8kp2HmI8uKjM91TbkEnWiHcij5ukR3V1BXu44sOoTicJR5HtP82JzxK9/S0uTVu5lw7OBjzJ9F0ZhG/8dBdku6YIR14/r+vMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H/sBT7KIgUWmV+buIZsHXFxbuSk67XZnBmVARVkd4R0=;
 b=GcDZSJxDEoAnso9eZDzZfS/8DutAq4ref9V1GVn965gg6MxZELCl839iELGvFDf1D+rmWWoetBFpT61z4q7iTZVPbATwKgFVmt8K+tTaOgrD4TTARstyhaoCBssDAUzWO/8E+L0TQHh+3ROPhbuMFzoPBBNAeWi9PJrAMmYWO8PxRs4sOJkMzIVqOS3gRg1+a0IZtC5LU14cx7+uUgI7mwmrvbCOdEmVLmbP/wiy6Q0flfvVNrzPZB/6/9XOKF38wakBzFrKyF6H0dymgX4bREvOAqYaGKYm4kQqWptc+fz5OsaQyTaHnmdnjR6vs9ByjaYVPzdaFmlM0WFmwL2UAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H/sBT7KIgUWmV+buIZsHXFxbuSk67XZnBmVARVkd4R0=;
 b=GTopNkCF6vI2IKLrZvRoO8HHtteSxNB8PjByMUzq91zeuSclp1Jg/sHvIU2Ol77+elDoPmtt6NZ6yNOWe6AYCYRkxOO3Sw43voc0ok/a4y/k513qzO0T6L5zJd6az6Ke5RXJSPgIBUMxc+U+VLLXGUrk735Fgny/r1Zo2bH52LQ=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB2975.eurprd04.prod.outlook.com (10.170.228.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.26; Mon, 11 Nov 2019 14:29:15 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3%5]) with mapi id 15.20.2430.027; Mon, 11 Nov 2019
 14:29:15 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: "robh@kernel.org" <robh@kernel.org>
Subject: Re: [PATCH v3 6/6] arm64: dts: imx8m: Add ddr controller nodes
Thread-Topic: [PATCH v3 6/6] arm64: dts: imx8m: Add ddr controller nodes
Thread-Index: AQHVkDU8koftI2DJ20m2SpBhGeGQAqd7lnkAgAqB44A=
Date: Mon, 11 Nov 2019 14:29:15 +0000
Message-ID: <feb66325049ac098ef178abd1de14ddd1c840a13.camel@nxp.com>
References: <cover.1572558427.git.leonard.crestez@nxp.com>
 <44dcab5a136f5b046092e6ed456d8e206413059f.1572558427.git.leonard.crestez@nxp.com>
 <20191104220144.GA5218@bogus>
In-Reply-To: <20191104220144.GA5218@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 5cf86961-a53b-47b0-7f1b-08d766b3878a
x-ms-traffictypediagnostic: VI1PR04MB2975:|VI1PR04MB2975:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB2975CA40ED2BA56E57814766EE740@VI1PR04MB2975.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0218A015FA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(366004)(396003)(376002)(346002)(189003)(199004)(6486002)(316002)(66946007)(6436002)(6246003)(91956017)(50226002)(6506007)(2616005)(76116006)(11346002)(2906002)(486006)(478600001)(446003)(5640700003)(6916009)(256004)(71190400001)(14444005)(186003)(71200400001)(7416002)(25786009)(5660300002)(2351001)(476003)(54906003)(99286004)(2501003)(86362001)(229853002)(118296001)(4326008)(305945005)(7736002)(66066001)(36756003)(64756008)(66556008)(66476007)(66446008)(8936002)(6512007)(44832011)(26005)(6116002)(3846002)(8676002)(1730700003)(14454004)(81166006)(81156014)(76176011)(102836004)(99106002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB2975;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lG0xg2EfkBhbqTNdwHIgE/UvPSvIpLRmpIdYPANPXEocEuzObkIkFJUW6yOqmlFqyEE1ryoo8JNoEqDypBR8lNwVn8FFysqKcTUtzwY7e/p/GGYeZHFOrOgvsb+loVgidW2GWYxyl3fcG0mr4hTVeXRotKm8rjSjN0YzgE/8hVR1bdU6RvxKpBFDc/GM/zWZboBFFOkCc43wtrOhuMOBBoQ6axcHmUwN3MUkqFxRWPyQwJ1KDJeGFQwi4iMEQiBZNuGZMD4KSMYzDrR/Lm/R8rZsQ02delyzFqpGSKcOC0ly69KDSKjWsQaxNBjqsMBDZqIYgl06rq/o+np6PdMX/C8Kx3rU9k12s5DNepqJ7HM7EVZFDBsHKl2JvN6Pwldx2JRwvnqt001EUTXIHeApsX9xo8iszFRbzgry5YjdnmEukvgPX4jFJCllsEoF45Dr
Content-ID: <393275E91C5EBB40A8C256DDC01C8F77@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5cf86961-a53b-47b0-7f1b-08d766b3878a
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2019 14:29:15.3343 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Lxy38Ddk/G+ZjwGesRj3xCcaC5POg/PgpNxTihXuheqswFTnBAnrECRSA7ryV+X+EEesyWRrr4RDSUJ3n1BHIg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB2975
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_062921_511832_D189391F 
X-CRM114-Status: GOOD (  22.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "a.swigon@partner.samsung.com" <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "angus@akkea.ca" <angus@akkea.ca>,
 "myungjoo.ham@samsung.com" <myungjoo.ham@samsung.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "krzk@kernel.org" <krzk@kernel.org>,
 "cw00.choi@samsung.com" <cw00.choi@samsung.com>,
 "mka@chromium.org" <mka@chromium.org>, dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "martink@posteo.de" <martink@posteo.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "saravanak@google.com" <saravanak@google.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>, "rjw@rjwysocki.net" <rjw@rjwysocki.net>,
 "kyungmin.park@samsung.com" <kyungmin.park@samsung.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "georgi.djakov@linaro.org" <georgi.djakov@linaro.org>,
 "abailon@baylibre.com" <abailon@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-11-04 at 16:01 -0600, Rob Herring wrote:
> On Thu, Oct 31, 2019 at 11:50:27PM +0200, Leonard Crestez wrote:
> > This is used by the imx-ddrc devfreq driver to implement dynamic
> > frequency scaling of DRAM.
> > 
> > Add a devfreq-event link to the dram PMU in order to support on-
> > demand scaling of ddrc based on measured dram bandwidth usage.
> > 
> > Support for proactive scaling via interconnect will come later. The
> > high-performance bus masters which need that (display, vpu, gpu)
> > are not yet enabled in upstream anyway.
> > 
> > Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> > ---
> >  arch/arm64/boot/dts/freescale/imx8mm-evk.dts  | 18 ++++++++++++++
> >  arch/arm64/boot/dts/freescale/imx8mm.dtsi     | 17 ++++++++++++-
> >  .../boot/dts/freescale/imx8mn-ddr4-evk.dts    | 18 ++++++++++++++
> >  arch/arm64/boot/dts/freescale/imx8mn.dtsi     | 16 ++++++++++++-
> >  arch/arm64/boot/dts/freescale/imx8mq-evk.dts  | 24
> > +++++++++++++++++++
> >  arch/arm64/boot/dts/freescale/imx8mq.dtsi     | 16 ++++++++++++-
> >  6 files changed, 106 insertions(+), 3 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> > b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> > index 4f5e408d6e6a..be9abd8e4478 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> > +++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> > @@ -69,16 +69,34 @@
> >  		simple-audio-card,codec {
> >  			sound-dai = <&wm8524>;
> >  			clocks = <&clk IMX8MM_CLK_SAI3_ROOT>;
> >  		};
> >  	};
> > +
> > +	ddrc_opp_table: ddrc-opp-table {
> > +		compatible = "operating-points-v2";
> > +
> > +		opp-25M {
> > +			opp-hz = /bits/ 64 <25000000>;
> > +		};
> > +		opp-100M {
> > +			opp-hz = /bits/ 64 <100000000>;
> > +		};
> > +		opp-750M {
> > +			opp-hz = /bits/ 64 <750000000>;
> > +		};
> > +	};
> >  };
> >  
> >  &A53_0 {
> >  	cpu-supply = <&buck2_reg>;
> >  };
> >  
> > +&ddrc {
> > +	operating-points-v2 = <&ddrc_opp_table>;
> > +};
> > +
> >  &fec1 {
> >  	pinctrl-names = "default";
> >  	pinctrl-0 = <&pinctrl_fec1>;
> >  	phy-mode = "rgmii-id";
> >  	phy-handle = <&ethphy0>;
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > index 6edbdfe2d0d7..5404870d80d5 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > @@ -856,11 +856,26 @@
> >  			#interrupt-cells = <3>;
> >  			interrupt-controller;
> >  			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
> >  		};
> >  
> > -		ddr-pmu@3d800000 {
> > +		ddrc: dram-controller@3d400000 {
> > +			compatible = "fsl,imx8mm-ddrc", "fsl,imx8m-
> > ddrc";
> > +			reg = <0x3d400000 0x400000>;
> 
> Do you really need the OS to map 4MB of register space? Virtual 
> space on 64-bit doesn't matter, but it's still wasting 2KB of memory 
> just to map all that if only a few pages are needed. Adds up if the 
> whole DT is done this way.

This driver doesn't actually map registers, they're only touched from
firmware.

Information is from memory map.

> > +			clock-names = "dram_core",
> > +				      "dram_pll",
> > +				      "dram_alt",
> > +				      "dram_apb";
> > +			clocks = <&clk IMX8MM_CLK_DRAM_CORE>,
> > +				 <&clk IMX8MM_DRAM_PLL>,
> > +				 <&clk IMX8MM_CLK_DRAM_ALT>,
> > +				 <&clk IMX8MM_CLK_DRAM_APB>;
> > +			devfreq-events = <&ddr_pmu>;
> > +			operating-points-v2 = <&ddrc_opp_table>;
> > +		};
> > +
> > +		ddr_pmu: ddr-pmu@3d800000 {
> >  			compatible = "fsl,imx8mm-ddr-pmu", "fsl,imx8m-
> > ddr-pmu";
> >  			reg = <0x3d800000 0x400000>;
> >  			interrupt-parent = <&gic>;
> >  			interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
> >  		};
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
> > b/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
> > index 071949412caf..ab2060667671 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
> > +++ b/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
> > @@ -9,16 +9,34 @@
> >  #include "imx8mn-evk.dtsi"
> >  
> >  / {
> >  	model = "NXP i.MX8MNano DDR4 EVK board";
> >  	compatible = "fsl,imx8mn-ddr4-evk", "fsl,imx8mn";
> > +
> > +	ddrc_opp_table: ddrc-opp-table {
> 
> I think it would be better to put this under the ddrc node (and
> named 'opp-table'). Yes, it's kind of silly to have a phandle to a
> child node, but that still works.

That looks much nicer, fixed in v4.

I had to also update yaml to explicitly allow an "opp-table" child.

--
Regards,
Leonard
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
