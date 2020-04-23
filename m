Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 372AB1B597A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 12:42:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LHtGSoB4io922F791RMhtxC8VhtoJzJYpc/aMK8qAJg=; b=lnyYm9YoUDkGHB
	dzE4rzQrG8Cm7cDrN1lK2xkXg94M7r0vjGUpW7H6jbqQydp46AGjOX4oLc5QnZ7POfPfxDRcIlUUA
	juI7pwmT8NNN4pFvoGOw1zgLr6qs6XZ+W+5TSxsNxPOH1xLwHnPaF338oiClnLslm15x3UwKiDsP8
	skLCyHsd52KEVxo/t1ue7NLT+qvEnlgHEXpOkaPhfG1IOtb63udP2XNRBQ0AI5Pwqbo+7Z29gP89y
	7sYk0JOXGh8/bA73YQiwQjvEcwnXFanAM9znamee3hDI8VqGT9p7X6DSWoFGjeGioC/gHk9/NMcw4
	L3vGWVVI2mjIWfZs8ufw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRZJd-0006Kj-8T; Thu, 23 Apr 2020 10:42:45 +0000
Received: from mail-eopbgr40068.outbound.protection.outlook.com ([40.107.4.68]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRZJT-0006JK-2L
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 10:42:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aXo4YLKPeGfFJr5+1FgFPYH86Gju6Hu6kCqJSsO6Ce1QmWNcWvmW/Mt2AERwcWSuileEEMbtdQOaZ2m4kyN2TlqCoAqHVk6C3pf8jyjzucN2IGzJwdv3qC4irAWy3YYB6MnV/c/2S3HG4ObeVUh6xTASuF8nTAGuo7FxqNvwuFz43SvZM8L1gbUezT3c2RKZP4lKKUQow3pPLV8eP66JBXRLIPeNd1bC7/zPoMuWoS1DpQdZwEBUjecGkcbYhgUHpmSCgIHDenJw412UkYMoxHTD8s4BjnK8jTVbktXMGHgq6azdEfGC/fDkSnGsz83am1RC3OkkwHjSV2g0+t0mZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l5S21MaP3Lpc/fmPv0Nb2sehkH8vi3AVTcoOXttnE8s=;
 b=F4gFso+3FD9Ad2saHIrgp9t3tHYgNRRS1F3IbM2bsNegTNZk6m4YF+cyNDWM5r7RnQbfITPXR//dgqVxe79cG2096xlA5R3AlzotQYipPXMFTfI+vIM8g0ig7MFP+qepoWzqjN7iUAIlRZgTeK7siVTbeKGCcLVP2AkBupSMQTJgAKgO3P6hLPYB2y/K30TYN/w9ZcNBIr5BXyjzgRoNYsy+nalmR4bNJIZiIq5RD6O82yt/T6nVp2cXZBf/5QC54slfkGwgtArUTQ9PDFAm13xKt6hn5F3A+OAHOvuBsbPUkkfJk2oHIrYYaq+Q2rlyv+oG36Yyj+2anFFy1Nbu8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l5S21MaP3Lpc/fmPv0Nb2sehkH8vi3AVTcoOXttnE8s=;
 b=nWziVz/B3pF5QkP+Rn/bx6HDt5dLhzVEK4nQHbVEbEXZT5GPpkdICMPIZpskya/fqNLjjwryl8MmGOeFzm8DiQ+4vv1hvpQpgYgSQ5teZhOhtMgySAM38WYKGRy8swfCtIl4XSdf7KTGmEEt3mJZk5VKavk6QuCekuic4kdN+ZM=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB4440.eurprd04.prod.outlook.com (2603:10a6:20b:21::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Thu, 23 Apr
 2020 10:42:31 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3%7]) with mapi id 15.20.2921.032; Thu, 23 Apr 2020
 10:42:31 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "sboyd@kernel.org"
 <sboyd@kernel.org>
Subject: RE: [PATCH] clk: imx: introduce imx_clk_hw_critical
Thread-Topic: [PATCH] clk: imx: introduce imx_clk_hw_critical
Thread-Index: AQHWGTz23ipTFSUpC02goIyCROLLPKiGhOhw
Date: Thu, 23 Apr 2020 10:42:31 +0000
Message-ID: <AM6PR04MB4966934EE0411F7C3FF5AA2F80D30@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1587624748-27228-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1587624748-27228-1-git-send-email-peng.fan@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: c8132c7a-64cd-497a-68d4-08d7e77306d2
x-ms-traffictypediagnostic: AM6PR04MB4440:|AM6PR04MB4440:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB444049FDCE874A3E294391D480D30@AM6PR04MB4440.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 03827AF76E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(136003)(396003)(346002)(39860400002)(366004)(186003)(9686003)(71200400001)(5660300002)(66446008)(66556008)(7696005)(52536014)(6506007)(2906002)(76116006)(26005)(110136005)(478600001)(66476007)(54906003)(316002)(66946007)(64756008)(8936002)(8676002)(55016002)(44832011)(33656002)(81156014)(4326008)(86362001);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ss1yDeaT2mRe95kWnZYTwPARm5tEQYdnCS9Vq6cl4KAq+OhTI2JwjI4eIfU1jcPQMMM/bp5Sn50XEYyaV3iVBri0u0/JvBm3LubU4d5XS5ugaTdSUH9EInX/7AU/QUTF05JQmYuVAo0DFAtXPAgC0Rql7GQq6/2RhzX6FTK1Yz/tUIYlMB4fk5neQcnpwa1IwldynrsFRaGarF8ieMQkRuFJH7Xv2zPr5T95lPXDBdoQN3KYYlPG4o8x1K9NZIEK8ogR5TX0Rig3MFgx2zQRe1ouA05LWh+zWi6V9HjuOc/8ZQClbugu+HQCvzF/YVlUaqdEQsiEGg0J3VpMmnKPVmq5Mo1y0ZF+W+gde2EJeDsmjROeROzPNl+WDFCBxDQMlDcoZoujnDDcHMPrb6BqFS7suKWdSxM8az68IJjpdidn535eiGZcjoEA5DM/qXYa
x-ms-exchange-antispam-messagedata: F4f4CUmC0mKc2rWzRtsJKu+aDw9k6xLtFSIcrtLai2Y+IZpBt1h8fGUVD60NhA0geI9zHNCpQyfVs7+zxXTDEMpR5ykVuKI4rq8YXl8xOVXg3/PdNCxzC5KXSLym76tIOYkz5zqWDe6SaxrV3n+n0w==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c8132c7a-64cd-497a-68d4-08d7e77306d2
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2020 10:42:31.6909 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6K76xQp/BjP37cgqF7TKuiS5KcHPFkeTJsUqtF4Cgi3qNl0z2BGH199f3aQZYPyVhzYmMsP+nitEoD/EUZkSOQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4440
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_034235_111266_1347267E 
X-CRM114-Status: GOOD (  15.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.4.68 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
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
> Sent: Thursday, April 23, 2020 2:52 PM
> 
> To i.MX8M SoC, there is an case is when running dual OSes with hypervisor, the
> clk of the hardware that passthrough to the 2nd OS needs to be setup by 1st
> Linux OS.
> So detect clock-critical from ccm node and enable the clocks to let the 2nd OS
> could use the hardware without touch CCM module.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  drivers/clk/imx/clk.c | 19 +++++++++++++++++++  drivers/clk/imx/clk.h |  1
> +
>  2 files changed, 20 insertions(+)
> 
> diff --git a/drivers/clk/imx/clk.c b/drivers/clk/imx/clk.c index
> 87ab8db3d282..ec7d422540c1 100644
> --- a/drivers/clk/imx/clk.c
> +++ b/drivers/clk/imx/clk.c
> @@ -177,3 +177,22 @@ static int __init imx_clk_disable_uart(void)
>  	return 0;
>  }
>  late_initcall_sync(imx_clk_disable_uart);
> +
> +int imx_clk_hw_critical(struct device_node *np, struct clk_hw * const
> +hws[]) {
> +	struct property *prop;
> +	const __be32 *cur;
> +	u32 idx;
> +	int ret;
> +
> +	if (!np || !hws)
> +		return -EINVAL;
> +
> +	of_property_for_each_u32(np, "clock-critical", prop, cur, idx) {

Is there a binding for it already?

Regards
Aisheng

> +		ret = clk_prepare_enable(hws[idx]->clk);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	return 0;
> +}
> diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h index
> d4ea1609bcb7..701d7440f98c 100644
> --- a/drivers/clk/imx/clk.h
> +++ b/drivers/clk/imx/clk.h
> @@ -9,6 +9,7 @@ extern spinlock_t imx_ccm_lock;
> 
>  void imx_check_clocks(struct clk *clks[], unsigned int count);  void
> imx_check_clk_hws(struct clk_hw *clks[], unsigned int count);
> +int imx_clk_hw_critical(struct device_node *np, struct clk_hw * const
> +hws[]);
>  void imx_register_uart_clocks(struct clk ** const clks[]);  void
> imx_mmdc_mask_handshake(void __iomem *ccm_base, unsigned int chn);
> void imx_unregister_clocks(struct clk *clks[], unsigned int count);
> --
> 2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
