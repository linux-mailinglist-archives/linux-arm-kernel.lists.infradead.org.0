Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8446E1C82E8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 08:59:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m40XdD97o2O8OXff5DdfcWks39Z9d2jn+tWx6eE6x48=; b=o8ajBhffJ4dOE3
	7T/JwRgx3UwyGuW3Lsu8ROhQACYMJnqcAI53TzOdX50K2UsmHCIFpR4Z0u8Da0KXjor6IcRGBuFWK
	4pJDSQJRaMQDcf5Ckkn07x9zd0d4J8Kbp3eEKGvl85MU11a8T7a3+3OmOz5nkXnPfA1TlYyIeFUkL
	N7zFbo4sjeQtiLq8QYefHb8vqNcUivZ4JYwDjWqytwotZvgEOrBow5Xb7Ln+Q6EIT0gzdAbCot6YP
	USn25hRHR5uJSsZ1durWIXTR3eHYXFPBUVpJIcCmUh1kzPAxayIM9gtgeUzYsheTq5iPXhnSgyZzs
	YJnxxQERP2iExvdV+pyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWaUs-0000gS-89; Thu, 07 May 2020 06:59:06 +0000
Received: from mail-eopbgr70058.outbound.protection.outlook.com ([40.107.7.58]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWaUl-0000el-5T
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 06:59:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y9RmfNmCenGPrJuorHNi1xbfOhjGY1tuIjfuSAssXP+h5Rf1aGNWhzY6sWwyfyJbBd6D30si0UpCmYOlF+7kYYAYwS30i6yJIST6W41m2wIGsQ1fNQNH2ZVRosD6i7gQI8u2mjZHBg37uA/zyoas0Fv7yoIPH1ULRaE8q+TAwWSF5dOgwZvoZjVxQOx/BnfnQtsRij6Tc1YQkT9BVzp/4ZDiOMK1yFPmLGboRS5Jfd5x8xMM8OXuo3Ldi8KotAnNOK7p5DvhbOXosfl0FhF5eXM+BcwZ00sHrCsIC49kVvx181fPhbFaaYX3nTtvAs8JBznMkCVz/lae8w1KOgrp/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rOTJnxptmKgp25ssdoFx+2ZYuU0NMc9CLVQL2QR7iTQ=;
 b=ZmKePmpkHxvyGwtMKnuRtip7W/WNfjeAUKJZLYyQi4Np5JvWbpX5kx+eLm+4w0LuSfUik2/ufX6nHzGe44YQyk0OLAYr2yg0o11liDFpy4NaLMcdjwEAy0kYUXBIFDPMUdsyFAERXo8GD1CwjbhxnaFwAEGbVB6JN9Go+BdKkQUkqNhztYw6cegQKEvWaZBp1cdFh63YMnkGQpoQDwGI5CCp7iWiZ8gp6nY04/BbjCfLtWHBt3iWuIPjTXdYoCdUsptH+arpqOuY7UJQIpjqrLWdX7KuPOjsJ9QArNGN7ed3VkLAYeBVu/0kYbj68eFIonUSaAEK34+mJtCSelIyAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rOTJnxptmKgp25ssdoFx+2ZYuU0NMc9CLVQL2QR7iTQ=;
 b=ompRb8wHjeIP0TdlD5mz1WwAGwd1TMjmj8vy1I6n4V8oOsmhWxr7vO1ahhWDbJcJYhq0vb64UGyUJxyrtIyr8cnAkJCbxkGh3bT4SCWCf/8caFwzTIIWU8hsGQgvlEESMmcjaY9GaejKmE5W8PhBrCr66Ah/g/8o2r2vmjE3gv4=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB4327.eurprd04.prod.outlook.com (2603:10a6:209:40::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.30; Thu, 7 May
 2020 06:58:49 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.2958.030; Thu, 7 May 2020
 06:58:49 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, Leonard Crestez
 <leonard.crestez@nxp.com>, Abel Vesa <abel.vesa@nxp.com>
Subject: RE: [PATCH V3 00/10] clk: imx: fixes and improve for i.MX8M
Thread-Topic: [PATCH V3 00/10] clk: imx: fixes and improve for i.MX8M
Thread-Index: AQHWJDWGQWPBaEf1OUCT0qUKYEEzPaicMHrQ
Date: Thu, 7 May 2020 06:58:49 +0000
Message-ID: <AM6PR04MB4966473CEEFA2674576A342C80A50@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1588830979-11586-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1588830979-11586-1-git-send-email-peng.fan@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 9a923923-f8bc-41ea-1f06-08d7f2541811
x-ms-traffictypediagnostic: AM6PR04MB4327:|AM6PR04MB4327:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB4327D1CD322C1EEB522CA44B80A50@AM6PR04MB4327.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1923;
x-forefront-prvs: 03965EFC76
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kPi28oKhKlN3uemogMYy+PUu3oGoRJhgwgYh2Ayzf5zGaOedRcXFCywVG+WCg5Ll/52ucBa3xafgv/E1iWjgW2v0PViqXpqBL6LZIcrTci7iGa46rbqV86zFXCyqedGanUH8Toh2gbo5h4jVVNrIseNv5WHpIk31cuEpvJr+5MHF4WvJHTaovWBulKQlnb+iEV0nAUUEqL8LiVfwp7VCqEdLKLTEAMN5ZCp1XVh9Z9cGIBky89Wuf9tH/Pg19qeDBJG08jr/Xln9RpE/mPJH9xkVrFcXinHKyufhuEk0k9nATFQXJuv2kMSjLr2tPJNLsXUbkki9VV/AKE4KJ7S6WReXykHUHAxKPEb2PEFhi8hfoOqznLQAS8/LGJhUhLFW/xi3CGinmIaYIPVKH3rgjbLVthMxV9qbHSq+gL8wmq7Wc29PHjwpFFrIOkLKWguc5wunK5upGU5Rc+a5u3Yz6YcqFbPSjZnCnSi3u2JAGO4uN8uiMAPwI+6ti6PLoqlniAkdAputXZYCfmF8LINv8mgJsszvKRW+dT2VM0WNqIamW1zM1+IyX/m26g2Mh1JVRlCDIW9bL7YZ5BPgy4JDSu1QEIv540ZmBZse0Ltu9n0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(346002)(396003)(39860400002)(136003)(366004)(33430700001)(6506007)(7696005)(478600001)(966005)(316002)(110136005)(186003)(54906003)(5660300002)(33656002)(8676002)(83300400001)(83310400001)(83290400001)(8936002)(9686003)(83280400001)(83320400001)(2906002)(44832011)(55016002)(6636002)(76116006)(4326008)(33440700001)(26005)(64756008)(66476007)(71200400001)(66946007)(52536014)(86362001)(66556008)(66446008);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: hvhRIjfWWoa+YRvZWmu25wU9OFZq3ayhiVfx5MDqkQ29GeR/13jlBUI41986buCmcpcW667grKMU6/D6CdzocPy0h0XDxtBt/yxotVMC6H8Kzt7aVQmu9gX9uwCLXIJUipeQ8M6R3hoh8hNaaVsz1N4CYE0tkHc4LX/5oip4BLbuZ6Fiy4WtVm7mZANQ/Ln/+dFGr4ihaL/6/yPoth2G9BA8UPfCQso5doj0n+zGn2hLNXS7G7u9HrTMhHRqwjEL7BWXdp1ZD0XjcGNN+YXC5Di7Xq7wNwSylZOL6eIC+R8kEiB75/NK+/4ANs/RPnkvG1OxnoyqVmxXpdBg9J6RRsf9xBfFxDvF/YDClV4FvBUYOU2bYSO0ZWLbE23e9+yA1RA7rBP5uFu/BHtjI7//8lDehXktuEaUDFab70AvkkSEy3K7hHsZOZsxhPPjJ66M4hw+z6M8d1g/rYglZS8acNvnMyrBL2l68ZNhY1fBgCisWrgO+6itOdEnc6vE0QEskkjAWGLd9MXB996vvZlrnetm5MAbpymlQ6uQWosT11ZPHK2Adjg+u4rfMB/SP0K4F69CwCCqGwP/3rwGzt6mibJvBZhbHEAA7Ip1xAnGIrzKherkx/jHVS0HtY2QCHy+4lm10ABPDAc4pstJl3x9ExqUOGfkDVKcZJRWUIv/v76BF9vwm7XK7eZQsMLy0nrNPsmd+mm+Nwi4nCSXRlMnP6gVHc5+xuMaJxXapXtLYFL8vkJMvf1e3FqUalK9BjhA2owwXsT1cDQQw3hm+lAoCO76tFqlaFHKG7xRXcs9vaI=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a923923-f8bc-41ea-1f06-08d7f2541811
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2020 06:58:49.0185 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YLec5DX1pKQev/3FKOC98/K3s0CUtgU4Yt7zyIU4vPtDYWrkOqg8SSnsc+JyAVwjhnsBlxss1+3VOuPwA7Ju2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4327
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_235859_208071_398FC7D6 
X-CRM114-Status: GOOD (  17.55  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.58 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.7.58 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Peng Fan <peng.fan@nxp.com>
> Sent: Thursday, May 7, 2020 1:56 PM
> 
> Patches rebased on for-next
> 
> V3:
>  Add R-b tag for patch 1-6,10
>  Use clk_mux_ops in patch 7, explain more details in commit log  Boot test on
> i.MX8MM/N/MQ/P

Good improvement, it's much clear now. 
So also add my tag for Patch 5-9:
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

For patch 10, still has a small question.
See comment in that patch.

Regards
Aisheng

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
> Patch 6 is to use composite core clk for A53 clk root Patch 7,8,9 is actually to fix
> CORE/BUS clk slice issue.
>  This issue is triggerred after we update U-Boot to include  the A53 clk fixes to
> sources from PLL, not from A53 root clk,  because of the signoff timing is 1GHz.
> U-Boot set the A53 root  mux to 2, sys pll2 500MHz. Kernel will set the A53
> root mux to  4, sys pll1 800MHz, then gate off sys pll2 500MHz. Then kernel
> will gate off A53 root because clk_ignore_unsed, A53 directly sources  PLL, so it
> is ok to gate off A53 root. However when gate off A53  root clk, system hang,
> because the original mux sys pll2 500MHz  gated off with
> CLK_OPS_PARENT_ENABLE flag.
> 
>  It is lucky that we not met issue for other core/bus clk slice  except A53 ROOT
> core slice. But it is always triggerred after  U-Boot and Linux both switch to use
> ARM PLL for A53 core, but  have different mux settings for A53 root clk slice.
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
>  drivers/clk/imx/clk-composite-8m.c        |  56 ++++++++++-
>  drivers/clk/imx/clk-imx8mm.c              |  27 +++---
>  drivers/clk/imx/clk-imx8mn.c              |  25 +++--
>  drivers/clk/imx/clk-imx8mp.c              | 150
> +++++++++++++++---------------
>  drivers/clk/imx/clk-imx8mq.c              |  29 +++---
>  drivers/clk/imx/clk.h                     |   7 ++
>  include/dt-bindings/clock/imx8mp-clock.h  |  28 +++++-
>  11 files changed, 229 insertions(+), 133 deletions(-)
> 
> --
> 2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
