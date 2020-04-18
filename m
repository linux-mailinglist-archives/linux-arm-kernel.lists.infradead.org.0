Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F9E71AECCD
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 15:46:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6hirb4OX4L39nfLg1p/VTLgcIXkmojsO7WtMTIBUk/w=; b=EybGJAgTmjL5cP
	HKTibG8guo825y6f7STIFIC5hlJUMJG9jYgS5G7YjUdn6OZtlpvzaBfgdg0P1fQ71HjxpU6pkCa3C
	61W/LmV1d3LNPy9mrAVmL2pzuDqZaF8F1/uHx1b6EYkUbFKHdF167VZLSz6GlzD/pKm6frjW/5otJ
	TcLWUTwHGOz68H3tl5UMSnDffGU2kjUFCV4f/RP2z+Y7Cd+SHRdrYNHusImKfsYDXgcfY/Q5IUa1k
	SeU4qIhsfths50dq2py6IY9KveeJljBqdzOHnXXp+3SeBjTLBAkYkW7Ddc/jccoirButRv5gnyXjA
	KNj7OclKGSAZz+Z0j77g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPnmw-0003cj-2s; Sat, 18 Apr 2020 13:45:42 +0000
Received: from mail-am6eur05on2088.outbound.protection.outlook.com
 ([40.107.22.88] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPnmn-0003bP-UQ
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 13:45:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X9wNvIAl68Zi0Y2MyOu8BmtNK0+isHWtzAwTfc7KFTODO7tCBz3jXbR7Bti6jiaFBM0i0e0UzZcuVaXeBsWOyLBe/5k5hLxB0IbWOB3XTAlKGRGgJPbeI+REHHjhdsNssVOC1RB5+qMkzcglIODGkvwUbThWfsfQBDHFSZhcGBcCep6DR+/Y0Lyu9Wmgg36N1wSdTV+f2PGrivh+KFXGz3+56degcp+eoCWinj/1aueDYs72n06v9OnbvUmG2ZEMqY4och6HC3hL4UTQ2co1SDDrjaMtKbYi9M5qde+NHWShIhBn/eEmKiWUlng7G6FtnF1D8roh1W/L+MPKQNaDkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rhtzkTQVsS9svm8dICitdmRoaUrC8j4RAH8OuQhVmE0=;
 b=jjQJSu9J3R5wf8QkJbUCIaJFemdCbGp2bfXayyZyvJHgNWORTtZHUSlLzEjlcDVp5Eky7L/KqVVSiOp6wRX6oa2sS4tccMtqRadQv2jS/ei9rRWS5eD6NYzEorif98NzJmjUzJpSIaH5F4ry2wi6jL9rI2cI0FS2GRt8asYOzlfN6BRFG2d1m07qbKprag/Sp9DhdKFF1iIZU0McThFVqfZQXfuKfJR3lYzWmOQKp5jbeuBCd2HmtR67/McdpcGEcSRwyP888kg9CHd9F7Q9UbFlfjsFRHbmi5qhmfRhhQil1RUpY0GaTrKh4mUcp3qpOpcsx/yCR9tmLMrth5ahhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rhtzkTQVsS9svm8dICitdmRoaUrC8j4RAH8OuQhVmE0=;
 b=l23FYPZpZmrFyC0trm3v+2oaKxiVx3GjcDErRtusvEm7GRExEAPI9w/ljxDBDqBwsDd3zhhk7QEffW74t4J4oGIJkW+hTYnPJB/IKL06QwLQ27x0/oYYhKaXBdNMZRdWwB+fy9jqcaQNZPammK5FLzJNvfu6LGrdRZq2dh8Eiuw=
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2902.eurprd04.prod.outlook.com (2603:10a6:4:9a::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.27; Sat, 18 Apr
 2020 13:45:28 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.2921.027; Sat, 18 Apr 2020
 13:45:28 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, Leonard Crestez <leonard.crestez@nxp.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>, Abel Vesa <abel.vesa@nxp.com>
Subject: RE: [PATCH V2 00/10] clk: imx: fixes and improve for i.MX8M
Thread-Topic: [PATCH V2 00/10] clk: imx: fixes and improve for i.MX8M
Thread-Index: AQHV+FiylUv3TAYoQ06tNnE7fjyGF6h/HlpQ
Date: Sat, 18 Apr 2020 13:45:28 +0000
Message-ID: <DB6PR0402MB27608E9A3D273DCFF6D90AE888D60@DB6PR0402MB2760.eurprd04.prod.outlook.com>
References: <1584008384-11578-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1584008384-11578-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [180.107.26.236]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1e678752-015c-403a-15c9-08d7e39ec174
x-ms-traffictypediagnostic: DB6PR0402MB2902:|DB6PR0402MB2902:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0402MB2902B11D0888DA77A6FE96DD88D60@DB6PR0402MB2902.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0377802854
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(346002)(366004)(136003)(376002)(396003)(39860400002)(44832011)(66946007)(66476007)(6506007)(9686003)(76116006)(8676002)(55016002)(316002)(86362001)(8936002)(186003)(81156014)(33656002)(71200400001)(26005)(7696005)(5660300002)(2906002)(54906003)(6636002)(4326008)(52536014)(66446008)(64756008)(66556008)(478600001)(966005)(7416002)(110136005);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2PSYuUcolINvOPgkiHt3Bo0m7WR1RfV+AiS1qNfCHJcWLmhUXWact58DV16dVkk4IpoZbtvPctHKlmT+eioh7JxMeOevdO5Nu3lxrnW0/JqwVvPvzI10otiVL4vhVgBN1u11bbSTSpHdXcURQXpctY83l9XeVzMAm2x5o1iyVn/NwYKNq5yPCgWd6cWSfNC7OHm4/stEbVxMU+2VMA9HVRpCt30yqUsdwbz3EeDOiAOtxYq2VMLjtl29qff9prSPF/jJ24dM0i3AQSAbIMGJ+LhOkwiaLuGYqhykH8QNQDd1Qs9u53ZHBM7+MVWf8joD8pHUrq3LABVw7FqgOovohzQ9Bj54HVuttLG1xaqhoYGlq++5ROFvS5c6KBKr93Hf1SMseCIsD/kMtWX6UCezDe2AUUqr+Y7TIsCcSNFsK2nF8nSPK/YWUw6fcCLkzx68jD52TSsWdHLXKOs5hzbt6Mhml4NdfCi8tUYbYtJbBknPSj8mtwi7G4+VcAdHrcEKURPSNeegxeihYnAB0G1wPw==
x-ms-exchange-antispam-messagedata: QS8/E94+PSuCFyNVBFrGZkjKcMCD7eEPQkQXEYM2XArcSe9w8NtK8CtB17ip+azSnDJC3E7z+oZDT0igYMhlakX5DAjJpckNUcKH9pwIZIt42ebD7dJ6qVgt/D9e6XlxJqbXuK2tSBf0lZL8XEHZxg==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e678752-015c-403a-15c9-08d7e39ec174
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Apr 2020 13:45:28.4833 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ofQecd0jysXl6XcvInEVV/wj9b4w8Qc7/ZpAIzMNGKTpdb+0IjM9LSxO00Z0QOw9ILBTy+ppKczBFSpg15GtuQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2902
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_064534_108675_203D2E7A 
X-CRM114-Status: GOOD (  17.21  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.88 listed in list.dnswl.org]
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.88 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

> Subject: [PATCH V2 00/10] clk: imx: fixes and improve for i.MX8M

Ping...

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
