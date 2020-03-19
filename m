Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B5D618B0DB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 11:04:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RXImHWm1Sfq/4hCqz3k5PvdK+snsO1ueTjkhIkiefx4=; b=la9bBlSOvPLfIr
	BBEjH8SgyrmE0hNJ/3sAAgWXdUPIAaRC8DgWXhDoOi6p5SDuUFacsICAHl/BLlKySYPTazRuwFS7D
	RuMZDlat1NFhhJMANAFfPsPhPgXJVU0ZfGMXi9G/w6h7jcxBbp4ZaiRI40ycede/KhovqPtSBPnh+
	5ozACXfIa/Toatkzqxt/nBxJXS9HsnrpjSO3NXid2Q4whymdO4ruyemFX3H3FkMRwHEmO0/b70B0b
	O0Z6fc1eaMOtRvW5CO65zrr1O/Q+YxB7FZGCECj+Jc5/8JrA7EELPVuEKeD4mak/RBYTlTEqIcx6S
	jlI5DS+sWQDWdlxLhGpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEs2l-0005RD-A0; Thu, 19 Mar 2020 10:04:51 +0000
Received: from mail-eopbgr150070.outbound.protection.outlook.com
 ([40.107.15.70] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEs2b-0005Qq-Bt
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 10:04:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=es0XVrdESJsaa9TVvQ6bpn4wikVBdYqv/ZmoS1lv1PLhqTz+PrctvLCEGbzZkBNNHs5lyk4VdwRgZuW+5SI6ddRnop1eriTmJsr4RjypBpwLCkiMCH61osaWbQFO1XWZS+3o+Oz7KzTC2jDC8afqkFQICTPKAJDs5W/h3PNraM4LKLu0XdeoDIn7/z+v2Ssa3qiVTN+M4BdUTQrn5+mKoj/IEXdzorCJOjz5ymZHhEO5r9Rns6DB38qolM+FI7G6xUYuzRQ6ACQNwNcWbab4+paVFSJ7VBqKl9+R8fM8/OF4gyURQz+OqKCIxYs+eexnjvZCtp/saKtvewPJW16ZjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VcwIavESmyljaC0b4pkj/HPWYredwvbwPvAF2YWqPYA=;
 b=i+5HvszqtqkbrxfBxX8L8F8zGMcbv8Hd7Xeh2G4SeMC+XFnL74npa955f5WQo3ZboeBHMLIc5xvaJ2kYdvfzRuOGQpcFz75Em09O8mTABfuUb34MQE56SRz6ZLrHwHVhT26YWRwfsEul2KR/uLJxo6SE7AUdmoC63hKvONlciczDC+3ePVxW1IhQKcHqwi3LEcITt8Fo3Nj9S7rhWON2sOjpWVpqnEtbDAGLGyGoYNMMNNAshBq9RBVShcXiF6xFEYzRBQsggzSeYnBrfP7jBssPmtAXTYRaLGdqYt7z+cCmjIzuxr4zafgrcarat+VGvRS4LxNwxKsMR3e7M71i4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VcwIavESmyljaC0b4pkj/HPWYredwvbwPvAF2YWqPYA=;
 b=lGUtdG4C4BGwggYVoTcEmGcdRvdHir7XSo3xWmpV7EgtUWvMp2vS/JROKLBFPpODncqEKY8cjLuBiLLh2T6suZgOnUsqYsfyExMMUnHu4yz8GE6U6ihUZnD782KnTNx2Y4f9wGz6o0Idnmk/XO3CsGMGZVOCbVHL6BYf7gWik8I=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB7058.eurprd04.prod.outlook.com (10.186.129.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.19; Thu, 19 Mar 2020 10:04:39 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc%7]) with mapi id 15.20.2814.021; Thu, 19 Mar 2020
 10:04:39 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, Leonard Crestez <leonard.crestez@nxp.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>, Abel Vesa <abel.vesa@nxp.com>
Subject: RE: [PATCH V2 00/10] clk: imx: fixes and improve for i.MX8M
Thread-Topic: [PATCH V2 00/10] clk: imx: fixes and improve for i.MX8M
Thread-Index: AQHV+FiylUv3TAYoQ06tNnE7fjyGF6hPulFg
Date: Thu, 19 Mar 2020 10:04:38 +0000
Message-ID: <AM0PR04MB448104BDB759F703B21A0DD388F40@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1584008384-11578-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1584008384-11578-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a5d469e5-82a8-4f1c-7169-08d7cbecefae
x-ms-traffictypediagnostic: AM0PR04MB7058:|AM0PR04MB7058:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB70587783246EB19770BA73CC88F40@AM0PR04MB7058.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0347410860
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(39860400002)(396003)(136003)(366004)(199004)(86362001)(6506007)(55016002)(66946007)(66556008)(64756008)(66446008)(66476007)(76116006)(186003)(52536014)(4326008)(478600001)(966005)(9686003)(26005)(5660300002)(7416002)(44832011)(316002)(110136005)(2906002)(33656002)(8676002)(81166006)(81156014)(8936002)(54906003)(7696005)(6636002)(71200400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB7058;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kkDchdd4xpQn6tDeX1JnZzhbZTM+vWWZLCHh0/vjLNwS6z7entg8GHLGmtLE61ZR1IciM+TYA5PzxuftkCI7cpUvanNWnHnVqGdt+w46GnnHcTKq6Cp0qlyelabckKZ3bUkYawUDRYq7OIaRsRxJEqW6a2QWHSgshFQYGzb+BpEqkwRYrJDqF23oJ7K78T658ALq65jJ5xNn5WFqAZmQBNJU58Lao2bKwWIrM0LJmpt0x15EhL7TXW4DMWfa3PRCkyyOCgfDwlMf5PbVkuSo6mvA/MJXwCbYsNqW6f5+/W8+8rUXFvaY1uIPwkrEZSU55Lr5BUkW1soKyvrGFDVXVamD5X3p/9D+WAWGrDb1tU+AZno6qAUw4LJqHD4ordvN8rp0e9iCbHy7DnhWwg0yv5w03VGBx/Lq73ZETaBWgvEb4lOdfPVU1ID4S+HnqmGHoORrOwx+D09RpIpz02isfVKqTPASL2HgwbutTpJecCIkz04TJGfQqgqJXWqteVZ8tpPClnx8SgVldoieO0HZ0Q==
x-ms-exchange-antispam-messagedata: mxhG98HSsQ6hQ7WG78I74iQnQH5LQAG4PEknDhncPMzU7ELj7uipL+YDAdQoWdH174eXIbYA6zEj3N5NuKRiy95P0k8el4hl88pH6A1K5+YtHjnBkBxeldHmjU+1fUqyE0bxIuENxNfxcCco5YmVoA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a5d469e5-82a8-4f1c-7169-08d7cbecefae
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Mar 2020 10:04:38.8472 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uCmmhN7LKOSOXX0okSP/b8tl7PkCUZCMpsTGT1WTrBjYTiOjDU5kLEsJnrbiFL1O72yTknRO8BeCLJ/kQkjFyQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB7058
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_030441_505987_2D9E075B 
X-CRM114-Status: GOOD (  19.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.70 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi Shawn,

> Subject: [PATCH V2 00/10] clk: imx: fixes and improve for i.MX8M

Is it possible for you to take this patchset for 5.7?

Currently the i.MX8M cpu clock has some dependency on U-Boot settings,
When uboot has different settings, the kernel will hang.
With this patchset, it will not, at least I tested on i.MX8MM-EVK with your
lastest for-next branch.

Thanks,
Peng.

> 
> From: Peng Fan <peng.fan@nxp.com>
> 
> Patches based on for-next
> 
> V2:
>  Patch 7, drop wait after write, add one line comment for write twice
> 
> V1:
> Patch 1,2 is to fix the lockdep warning reported by Leonard Patch 3 is to fix pll
> mux bit Patch 4 is align with other i.MX8M using gate Patch 5 is to simplify
> i.MX8MP clk root using composite
> 
> Patch 3~5 is actually https://patchwork.kernel.org/patch/11402761/
> with a minimal change to patch 5 here.
> 
> Patch 6 is to use composite core clk for A53 clk root Patch 7,8,9 is actually to
> fix CORE/BUS clk slice issue.
>  This issue is triggerred after we update U-Boot to include  the A53 clk fixes
> to sources from PLL, not from A53 root clk,  because of the signoff timing is
> 1GHz. U-Boot set the A53 root  mux to 2, sys pll2 500MHz. Kernel will set
> the A53 root mux to  4, sys pll1 800MHz, then gate off sys pll2 500MHz. Then
> kernel  will gate off A53 root because clk_ignore_unsed, A53 directly sources
> PLL, so it is ok to gate off A53 root. However when gate off A53  root clk,
> system hang, because the original mux sys pll2 500MHz  gated off with
> CLK_OPS_PARENT_ENABLE flag.
> 
>  It is lucky that we not met issue for other core/bus clk slice  except A53
> ROOT core slice. But it is always triggerred after  U-Boot and Linux both
> switch to use ARM PLL for A53 core, but  have different mux settings for A53
> root clk slice.
> 
>  So the three patches is to address this issue.
> 
> Patch 10 is make memrepair as critical.
> 
> Peng Fan (10):
>   arm64: dts: imx8m: assign clocks for A53
>   clk: imx8m: drop clk_hw_set_parent for A53
>   clk: imx: imx8mp: fix pll mux bit
>   clk: imx8mp: Define gates for pll1/2 fixed dividers
>   clk: imx8mp: use imx8m_clk_hw_composite_core to simplify code
>   clk: imx8m: migrate A53 clk root to use composite core
>   clk: imx: add mux ops for i.MX8M composite clk
>   clk: imx: add imx8m_clk_hw_composite_bus
>   clk: imx: use imx8m_clk_hw_composite_bus for i.MX8M bus clk slice
>   clk: imx8mp: mark memrepair clock as critical
> 
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi |  10 +-
> arch/arm64/boot/dts/freescale/imx8mn.dtsi |  10 +-
> arch/arm64/boot/dts/freescale/imx8mp.dtsi |  11 ++-
>  arch/arm64/boot/dts/freescale/imx8mq.dtsi |   9 +-
>  drivers/clk/imx/clk-composite-8m.c        |  67 ++++++++++++-
>  drivers/clk/imx/clk-imx8mm.c              |  27 +++---
>  drivers/clk/imx/clk-imx8mn.c              |  25 +++--
>  drivers/clk/imx/clk-imx8mp.c              | 150
> +++++++++++++++---------------
>  drivers/clk/imx/clk-imx8mq.c              |  29 +++---
>  drivers/clk/imx/clk.h                     |   7 ++
>  include/dt-bindings/clock/imx8mp-clock.h  |  28 +++++-
>  11 files changed, 240 insertions(+), 133 deletions(-)
> 
> --
> 2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
