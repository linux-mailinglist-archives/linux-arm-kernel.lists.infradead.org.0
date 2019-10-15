Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9D0D6DBC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 05:28:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GWkBaTpqlE0QKJmuAKP0bYXqbRQfypIG1CqWPPqdFAQ=; b=LncsMyFzlwa2nG
	2tyLvpRM1x75lO4mbUbKvb27l6FggKxFXxBE4LdFKSurdiCgxKj3obdT/dM8fW5k3lKoA4cv7tBXf
	C6ljVAo3oS3IqnVNo3W4kp+gUd5RBHBxG9ilvhWuvOr4/+izdGS30X+QzlTAFb2Kf7PxGxuws93Sa
	4KZBQgrEC5znF/kP0Dnol+LE+KgvyGJM7iSyQpFbwZ+3b/Tc2pgbacl5/1Cx1teN9gMztVZ5VT0WD
	5Y80lJGJM3VEg1WqiCrwwtui37eV2S9tKMsMr6kSF3Dff3fZ49VnpHp0hnkTWgN7JlnoZGuTJXqcp
	2HcoUphakYgSX2OEYSOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKDVM-0006MS-8S; Tue, 15 Oct 2019 03:28:12 +0000
Received: from mail-eopbgr20072.outbound.protection.outlook.com ([40.107.2.72]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKDVD-0006Kf-V8
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 03:28:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RDzcosZNapSVr3tCe0xlhyVBQrqceRKEDMWnNxoy4F0eBkH+4RtdLOorY374fv8c6tcFiU9gSYMAHMvmXBgqu20zFm6dJTOHO7inYhUxQ7jo/PFWhpOnqFE9qUglDo3hbQkCoZ1GFJqM2dE7H8Tk4OVNsXfrrVUhbVIGYX84kB+BJYtopHEra6chg/7RATvz8tENH+YBP8kRD1LTdMdvud2VA+z+8GCx+azuSQZV5SPkniVBqPgl01FTEfMqlpZdMdW7+JwHyvIoY7j1NeecmHB3Vroz5ibKjinuU0qQie3bTxV2V370QxXzXkx/LujYvzqXDfKMSZLHf6/wRvlK1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=smDtZU4HdeLnrFfdaNbMnRorcUo/HC/cobBxVkqc1EM=;
 b=NZNKzNLIU9MCHnIpvzcJ7cVBM2eKeVKZjszlOA0MzNlZ80lW6Vx/BmTY0N7HjgZ9ujKcz6FS2Z5jps5m2HoEzYEde1ltSoBBwDMblnCCMVLofqBfuTKiCuEdXxG2qssDJSfS4Vad0uqhxpLj4PA5lST3YPc+S3qya69KYZIsGN97ueDHNOeYmRZ4rlKagtBEartU+Jcuf1NZKY2VjpDbgn3vDycvvNz1XKiU24MNhibOFtxpP5ZDzafXYNNy/t+U//6/x8ULUhSyKvBJvHN9BR3wg0c7lghPV8t5TKAee7Wg/gqGDAfcdbpy6jzqD2OOFjSjoU+LGzBLWZ/t1RtLLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=smDtZU4HdeLnrFfdaNbMnRorcUo/HC/cobBxVkqc1EM=;
 b=ilJ0188wN7oqx89gZcquS6NMRiWZ0i4AGrWfK/VSjDS+OtZn371JukS48nS68QKvHPjMqFzmF4NqqR/ezRtTxombpgZyYL7p77sSvouhN4CGpdIVZL8oiE7YAYnttJaqwzhPGmBqzPqLlu0NKOKNbzq08EjXVDAT3cJwOOPzQ0I=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3737.eurprd04.prod.outlook.com (52.134.66.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Tue, 15 Oct 2019 03:27:59 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d469:ad51:2bec:19f0]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d469:ad51:2bec:19f0%6]) with mapi id 15.20.2347.023; Tue, 15 Oct 2019
 03:27:59 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Fancy Fang <chen.fang@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>
Subject: RE: [PATCH v3] clk: imx7ulp: do not export out IMX7ULP_CLK_MIPI_PLL
 clock
Thread-Topic: [PATCH v3] clk: imx7ulp: do not export out IMX7ULP_CLK_MIPI_PLL
 clock
Thread-Index: AQHVgwcPc0jqN29IB0OYPLGVX+dhGKdbCpHQ
Date: Tue, 15 Oct 2019 03:27:59 +0000
Message-ID: <DB3PR0402MB3916869C2A91293F0600CF34F5930@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20191015031501.2703-1-chen.fang@nxp.com>
In-Reply-To: <20191015031501.2703-1-chen.fang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 136dc6d9-9768-43bf-6dff-08d7511fad85
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: DB3PR0402MB3737:|DB3PR0402MB3737:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3737294FBF6560E23D72F9C2F5930@DB3PR0402MB3737.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 01917B1794
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(346002)(39860400002)(366004)(396003)(54534003)(189003)(199004)(478600001)(446003)(11346002)(6506007)(66476007)(66946007)(64756008)(66446008)(66556008)(14454004)(256004)(76116006)(52536014)(71190400001)(71200400001)(26005)(44832011)(66066001)(2501003)(476003)(486006)(2906002)(102836004)(25786009)(186003)(5660300002)(316002)(6436002)(33656002)(4326008)(81166006)(86362001)(2201001)(9686003)(305945005)(3846002)(55016002)(229853002)(6246003)(54906003)(74316002)(8676002)(110136005)(8936002)(7736002)(7696005)(76176011)(99286004)(6116002)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3737;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tQ36Ne34rn8hFpJpuuAdEAGcUArGGTC5DTB1ILp0UZ65repDOE+k5R4zxZCEpzhSWnYgFTyku3ZGW750XVMi7SYGgX30e4jDo/pcL/8JUpUH5z0J4W84BOH2rPRU0WMCZWspsL282OWBj6qKJYIivVfhPpyqvv8Vi597FVcfzpZWWJ7BA5pzRPPvvk/xkYWpesSO71wtni8G17L0ZNHVhGRr2M91E/UbuM9cQAuKkmWUXwoFz5oz0GQyOcvtlU9eA/UJu7MbVIRh6Hg1xGDksp2K10rVIhc/drd2p6S9Fw3QNvnCnvhhmyrSiybzkQVtZIxE5lqkpH71wicqNpHXHebUvh/0snGccVIRs9OKRQ/qNwXWpgqcX/F868uzIh+9vq3Y+OR1hEgm1ZhrH+6onF2j5tthQX/j6BeC+/F70Ew=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 136dc6d9-9768-43bf-6dff-08d7511fad85
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Oct 2019 03:27:59.2263 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 46tGle2DCdO+yPRKf9aW/x12LllNNMAOnwClcLr3q7U4hkQDJmnaYkBr6fn15a1+aAWxojEIAG7//OMyOrNptw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3737
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_202804_007640_C803B504 
X-CRM114-Status: GOOD (  18.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.72 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mturquette@baylibre.com" <mturquette@baylibre.com>,
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

Hi, Fancy

> Subject: [PATCH v3] clk: imx7ulp: do not export out IMX7ULP_CLK_MIPI_PLL
> clock
> 
> The mipi pll clock comes from the MIPI PHY PLL output, so it should not be a
> fixed clock.
> 
> MIPI PHY PLL is in the MIPI DSI space, and it is used as the bit clock for
> transferring the pixel data out and its output clock is configured according to
> the display mode.
> 
> So it should be used only for MIPI DSI and not be exported out for other
> usages.
> 
> Signed-off-by: Fancy Fang <chen.fang@nxp.com>
> ---
> ChangeLog v2->v3:
>  * Keep 'IMX7ULP_CLK_MIPI_PLL' macro definition.
> 
> ChangeLog v1->v2:
>  * Keep other clock indexes unchanged as Shawn suggested.
> 
>  Documentation/devicetree/bindings/clock/imx7ulp-clock.txt | 1 -
>  drivers/clk/imx/clk-imx7ulp.c                             | 3 +--
>  2 files changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/clock/imx7ulp-clock.txt
> b/Documentation/devicetree/bindings/clock/imx7ulp-clock.txt
> index a4f8cd478f92..93d89adb7afe 100644
> --- a/Documentation/devicetree/bindings/clock/imx7ulp-clock.txt
> +++ b/Documentation/devicetree/bindings/clock/imx7ulp-clock.txt
> @@ -82,7 +82,6 @@ pcc2: pcc2@403f0000 {
>  		 <&scg1 IMX7ULP_CLK_APLL_PFD0>,
>  		 <&scg1 IMX7ULP_CLK_UPLL>,
>  		 <&scg1 IMX7ULP_CLK_SOSC_BUS_CLK>,
> -		 <&scg1 IMX7ULP_CLK_MIPI_PLL>,
>  		 <&scg1 IMX7ULP_CLK_FIRC_BUS_CLK>,
>  		 <&scg1 IMX7ULP_CLK_ROSC>,
>  		 <&scg1 IMX7ULP_CLK_SPLL_BUS_CLK>;
> diff --git a/drivers/clk/imx/clk-imx7ulp.c b/drivers/clk/imx/clk-imx7ulp.c
> index 2022d9bead91..459b120b71d5 100644
> --- a/drivers/clk/imx/clk-imx7ulp.c
> +++ b/drivers/clk/imx/clk-imx7ulp.c
> @@ -28,7 +28,7 @@ static const char * const scs_sels[]		=
> { "dummy", "sosc", "sirc", "firc", "dumm
>  static const char * const ddr_sels[]		= { "apll_pfd_sel", "upll", };
>  static const char * const nic_sels[]		= { "firc", "ddr_clk", };
>  static const char * const periph_plat_sels[]	= { "dummy", "nic1_bus_clk",
> "nic1_clk", "ddr_clk", "apll_pfd2", "apll_pfd1", "apll_pfd0", "upll", };
> -static const char * const periph_bus_sels[]	= { "dummy", "sosc_bus_clk",
> "mpll", "firc_bus_clk", "rosc", "nic1_bus_clk", "nic1_clk", "spll_bus_clk", };
> +static const char * const periph_bus_sels[]	= { "dummy", "sosc_bus_clk",
> "dummy", "firc_bus_clk", "rosc", "nic1_bus_clk", "nic1_clk", "spll_bus_clk", };

The reference manual does have mpll as clock option, so do you mean it will NOT be supported
anymore, is mpll used inside MIPI PHY?

Anson

>  static const char * const arm_sels[]		= { "divcore", "dummy",
> "dummy", "hsrun_divcore", };
> 
>  /* used by sosc/sirc/firc/ddr/spll/apll dividers */ @@ -75,7 +75,6 @@ static
> void __init imx7ulp_clk_scg1_init(struct device_node *np)
>  	clks[IMX7ULP_CLK_SOSC]		=
> imx_obtain_fixed_clk_hw(np, "sosc");
>  	clks[IMX7ULP_CLK_SIRC]		=
> imx_obtain_fixed_clk_hw(np, "sirc");
>  	clks[IMX7ULP_CLK_FIRC]		=
> imx_obtain_fixed_clk_hw(np, "firc");
> -	clks[IMX7ULP_CLK_MIPI_PLL]	= imx_obtain_fixed_clk_hw(np,
> "mpll");
>  	clks[IMX7ULP_CLK_UPLL]		=
> imx_obtain_fixed_clk_hw(np, "upll");
> 
>  	/* SCG1 */
> --
> 2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
