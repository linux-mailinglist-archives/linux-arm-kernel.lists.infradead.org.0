Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D33E7D9D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 01:50:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pwt7YyXmuI+Bz3Dg4P9ZIzfG66Lerv6d2ZHcvf4M8Os=; b=D9xuvSe4rahJa5
	/zOut9gdgYKFb9qYAXW9kNeCNuagaXbYotJVrY/QrwXdRlL2hwwtPOaLZMnKf8+K5Bew4ABJOIbSo
	lC7XFX6TGU2+MTlRI9b9dsLfud4CwSvzyvlXsMPAvoySfXpvmAftJn/X4nRqITSKP9yncLsxHztwH
	8ZzyY+0pEAjfxCsuw5Ozi6b/DtbTxxDh5AQBKSUIHKmUF+8pE20E6ApaVHiH5e6flAB6bYUtQWmi6
	poS9V32IW/Mb6FWe8pRUVJX9fnbLkdCrJwLKROFDv76HvaOhGmkpGTEOAve82pnh59WZPKD3VjJgm
	cZPbHjh6OJSd7CPcZlDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPFhx-0003jL-3y; Tue, 29 Oct 2019 00:50:01 +0000
Received: from mail-eopbgr60044.outbound.protection.outlook.com ([40.107.6.44]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPFhl-0003hs-KY
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 00:49:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QqlP0RAvmyaGTxdGyx3hpO+vZMWxkvhCN9vyFIWeeM41xcvgR2v3zs5GeHiQaZ22g2Bavva62cVmDs1lVivsf++gKwUNW/Rh+0nM28+Lh71sZOu+XrWFseLGhoZ9NrINieCH7FAijghqQv/pUQBSV8dhzYzzqe7nYO/YPlxv4sw2V2Ww/6i4nsZQunGCEPO9MK1dKPuZFkKEINsdSvJmjyD4GorLoG7jmE3JrQ3wurt45U3fzS0JJbhYn+FV41KH8y/gXrUtLa2lHZcDWh4mqGJ5GsFUgmsGM5ZW9PpcyZeD7JgK8tdxRZqk+QwesXRaMMTqBg0S8d4lp32VVRmifg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9XmhbovCtGoGD9bAjhU33oNMwNATrzirVVYM3riq28M=;
 b=NvMtyIoUCm6cJVcwwQqId8xLYu+MR+VpVN/IdWZqdRGhFMpOweqLzueMaETY/vWwGMAMFeECqP3VSYZKeAS7UnwPaV1abV035YBvWMlZ4cH33J/bExA3rCbW/ROuBiQWCmSy0YqeLtsOD2CAehZz2J+VB+iMS/LqIJnBTj+vh+XccqRDqAVo/uLlEUIGGLvs4cwKhuLQUWdL03l+7lqunIsJwvpd3mzqAGfuFWWDIpVy1WgW/I6qiBsIEZFHXz7iDbrBfHeiTuwF56Xy/ZBukEWOgRYATYz7Y5YNC+b7FOaxkknoRN6JQRE3Xj7yw0lTwwTL3Z2S2qIXIYZzbNX0zA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9XmhbovCtGoGD9bAjhU33oNMwNATrzirVVYM3riq28M=;
 b=DGaATEtfon5MsUmkQVC+Q+LN2IC43zib5DrKGc+TNDYVsY8vYqtoX8yUO/0WM93yHSfNTVMBnoS8YVYknb1couc9XxfkISyIReC6qyw5D/gAIUbBe/QlItlnAhmRAyYZrelWKLE/j1BX6WAtwkPclb16yRRtoEQ90mrla+JUQ+0=
Received: from AM6PR04MB4936.eurprd04.prod.outlook.com (20.177.34.20) by
 AM6PR04MB4182.eurprd04.prod.outlook.com (52.135.163.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.20; Tue, 29 Oct 2019 00:49:41 +0000
Received: from AM6PR04MB4936.eurprd04.prod.outlook.com
 ([fe80::912a:3593:7e23:72d0]) by AM6PR04MB4936.eurprd04.prod.outlook.com
 ([fe80::912a:3593:7e23:72d0%7]) with mapi id 15.20.2387.027; Tue, 29 Oct 2019
 00:49:41 +0000
From: Fancy Fang <chen.fang@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH v4] clk: imx7ulp: do not export out IMX7ULP_CLK_MIPI_PLL
 clock
Thread-Topic: [PATCH v4] clk: imx7ulp: do not export out IMX7ULP_CLK_MIPI_PLL
 clock
Thread-Index: AQHVjWbPxL+wRlx07k+0T7BaUjsAXKdv4ESAgADqFUA=
Date: Tue, 29 Oct 2019 00:49:41 +0000
Message-ID: <AM6PR04MB49365C9CB797E0FDE65B6856F3610@AM6PR04MB4936.eurprd04.prod.outlook.com>
References: <20191028080545.28275-1-chen.fang@nxp.com>
 <20191028105038.GB16985@dragon>
In-Reply-To: <20191028105038.GB16985@dragon>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=chen.fang@nxp.com; 
x-originating-ip: [116.230.161.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 5c3950ac-a054-477d-8721-08d75c09e24a
x-ms-traffictypediagnostic: AM6PR04MB4182:|AM6PR04MB4182:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB41824DFEC1EF7545A36BF15DF3610@AM6PR04MB4182.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0205EDCD76
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(346002)(396003)(376002)(136003)(199004)(189003)(13464003)(54534003)(186003)(9686003)(6436002)(66476007)(66556008)(64756008)(66446008)(316002)(54906003)(66066001)(66946007)(76116006)(14454004)(102836004)(53546011)(26005)(2906002)(7696005)(55016002)(6246003)(76176011)(99286004)(446003)(11346002)(25786009)(229853002)(486006)(4326008)(476003)(6916009)(6506007)(478600001)(6116002)(3846002)(8936002)(81166006)(81156014)(8676002)(256004)(305945005)(86362001)(52536014)(7736002)(74316002)(71200400001)(33656002)(5660300002)(71190400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB4182;
 H:AM6PR04MB4936.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CyWs15jouB9Yof8ccjXzAOOVmW7tDlrYVSIfvqoZH34whcJXxgH0PjIuwVo8Wwk80Crece8KUaxv3SMxqOz97ALtRvzxKuy3YRriV+lcDpRCxl6jrIz5/8aQN6JgyY3AfNy4cMz22qrqcwm2TATlLqY+yspVHJXoolTjMhVQYd7C0EORycGhBp5Pwld3xnMXBZ8wSEncUrN4YxU3XdxH6QU5uTBKd3zdQbtDA17iUFma2+PqrvPdxm7QgryupOnL34mRd+Qn46xQ4GVblZn27x+ZTFpEUfLb+G68sgp44V+ye+2l3kBzrbn6TRwIx8uRrQBMlYTPah8TnvvSg/lPn+nCTSEcKKxw35fo/7gTbVZnyHqRiy8kZQpzuwW7/IKJMxgXI8Y1L3zn5A3gOERo8mWrNhGEfviAkw0czA1U0dtm1lrf3XbWicpUVx3fN3Sj
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c3950ac-a054-477d-8721-08d75c09e24a
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2019 00:49:41.5531 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7q+DHWhhtqMGdplegKLq36bnUjvIFoNbj6l7SC/QobHjX2HRMN0fqYCjfhcZnNIxmiCmbE/z2LnmfpmbzLljlA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4182
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_174949_739142_D1E3E6C0 
X-CRM114-Status: GOOD (  24.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.44 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "sboyd@kernel.org" <sboyd@kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Shawn Guo <shawnguo@kernel.org>
> Sent: Monday, October 28, 2019 6:51 PM
> To: Fancy Fang <chen.fang@nxp.com>
> Cc: sboyd@kernel.org; linux-clk@vger.kernel.org;
> linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org;
> mturquette@baylibre.com; s.hauer@pengutronix.de; kernel@pengutronix.de;
> dl-linux-imx <linux-imx@nxp.com>
> Subject: Re: [PATCH v4] clk: imx7ulp: do not export out IMX7ULP_CLK_MIPI_PLL
> clock
> 
> On Mon, Oct 28, 2019 at 08:07:59AM +0000, Fancy Fang wrote:
> > The mipi pll clock comes from the MIPI PHY PLL output, so
> > it should not be a fixed clock.
> >
> > MIPI PHY PLL is in the MIPI DSI space, and it is used as
> > the bit clock for transferring the pixel data out and its
> > output clock is configured according to the display mode.
> >
> > So it should be used only for MIPI DSI and not be exported
> > out for other usages.
> >
> > Signed-off-by: Fancy Fang <chen.fang@nxp.com>
> > ---
> > ChangeLog v3->v4:
> >  * Add some comments to 'IMX7ULP_CLK_MIPI_PLL'
> >    clock.
> >
> >  Documentation/devicetree/bindings/clock/imx7ulp-clock.txt | 1 -
> >  drivers/clk/imx/clk-imx7ulp.c                             | 3 +--
> >  include/dt-bindings/clock/imx7ulp-clock.h                 | 6 ++++++
> >  3 files changed, 7 insertions(+), 3 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/clock/imx7ulp-clock.txt
> b/Documentation/devicetree/bindings/clock/imx7ulp-clock.txt
> > index a4f8cd478f92..93d89adb7afe 100644
> > --- a/Documentation/devicetree/bindings/clock/imx7ulp-clock.txt
> > +++ b/Documentation/devicetree/bindings/clock/imx7ulp-clock.txt
> > @@ -82,7 +82,6 @@ pcc2: pcc2@403f0000 {
> >  		 <&scg1 IMX7ULP_CLK_APLL_PFD0>,
> >  		 <&scg1 IMX7ULP_CLK_UPLL>,
> >  		 <&scg1 IMX7ULP_CLK_SOSC_BUS_CLK>,
> > -		 <&scg1 IMX7ULP_CLK_MIPI_PLL>,
> >  		 <&scg1 IMX7ULP_CLK_FIRC_BUS_CLK>,
> >  		 <&scg1 IMX7ULP_CLK_ROSC>,
> >  		 <&scg1 IMX7ULP_CLK_SPLL_BUS_CLK>;
> > diff --git a/drivers/clk/imx/clk-imx7ulp.c b/drivers/clk/imx/clk-imx7ulp.c
> > index 2022d9bead91..459b120b71d5 100644
> > --- a/drivers/clk/imx/clk-imx7ulp.c
> > +++ b/drivers/clk/imx/clk-imx7ulp.c
> > @@ -28,7 +28,7 @@ static const char * const scs_sels[]		= { "dummy",
> "sosc", "sirc", "firc", "dumm
> >  static const char * const ddr_sels[]		= { "apll_pfd_sel", "upll", };
> >  static const char * const nic_sels[]		= { "firc", "ddr_clk", };
> >  static const char * const periph_plat_sels[]	= { "dummy", "nic1_bus_clk",
> "nic1_clk", "ddr_clk", "apll_pfd2", "apll_pfd1", "apll_pfd0", "upll", };
> > -static const char * const periph_bus_sels[]	= { "dummy", "sosc_bus_clk",
> "mpll", "firc_bus_clk", "rosc", "nic1_bus_clk", "nic1_clk", "spll_bus_clk", };
> > +static const char * const periph_bus_sels[]	= { "dummy", "sosc_bus_clk",
> "dummy", "firc_bus_clk", "rosc", "nic1_bus_clk", "nic1_clk", "spll_bus_clk", };
> >  static const char * const arm_sels[]		= { "divcore", "dummy", "dummy",
> "hsrun_divcore", };
> >
> >  /* used by sosc/sirc/firc/ddr/spll/apll dividers */
> > @@ -75,7 +75,6 @@ static void __init imx7ulp_clk_scg1_init(struct
> device_node *np)
> >  	clks[IMX7ULP_CLK_SOSC]		= imx_obtain_fixed_clk_hw(np, "sosc");
> >  	clks[IMX7ULP_CLK_SIRC]		= imx_obtain_fixed_clk_hw(np, "sirc");
> >  	clks[IMX7ULP_CLK_FIRC]		= imx_obtain_fixed_clk_hw(np, "firc");
> > -	clks[IMX7ULP_CLK_MIPI_PLL]	= imx_obtain_fixed_clk_hw(np, "mpll");
> >  	clks[IMX7ULP_CLK_UPLL]		= imx_obtain_fixed_clk_hw(np, "upll");
> >
> >  	/* SCG1 */
> > diff --git a/include/dt-bindings/clock/imx7ulp-clock.h
> b/include/dt-bindings/clock/imx7ulp-clock.h
> > index 6f66f9005c81..e9ef62f211fe 100644
> > --- a/include/dt-bindings/clock/imx7ulp-clock.h
> > +++ b/include/dt-bindings/clock/imx7ulp-clock.h
> > @@ -49,7 +49,13 @@
> >  #define IMX7ULP_CLK_NIC1_DIV		36
> >  #define IMX7ULP_CLK_NIC1_BUS_DIV	37
> >  #define IMX7ULP_CLK_NIC1_EXT_DIV	38
> > +
> > +/* mpll clock is a special clock comes from
> > + * mipi DPHY PLL and should be used only for
> > + * mipi dsi instead of any other peripheral.
> > + */
> >  #define IMX7ULP_CLK_MIPI_PLL		39
> > +
> 
> The point of comment is to tell that the clock ID is unsupported and
> shouldn't be used in DT.
> 
> I reworded the comment and applied the patch.

OK. Thank you.

Best regards,
Fancy Fang
> 
> Shawn
> 
> >  #define IMX7ULP_CLK_SIRC		40
> >  #define IMX7ULP_CLK_SOSC_BUS_CLK	41
> >  #define IMX7ULP_CLK_FIRC_BUS_CLK	42
> > --
> > 2.17.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
