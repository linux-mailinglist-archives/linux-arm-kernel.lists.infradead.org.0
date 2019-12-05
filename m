Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE9191139F5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 03:34:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cB9bDKLzsoA7jHFPXgwHuGiFwB+aFeH10qocNjVdTSQ=; b=CZpGYa7xJY8nyy
	xsDpb2t1GFwiReF1tKsTHiuvqSEqa7CJiO8V+vLgNYnyM6Gc++34bz0wfiU5UcPQLCom99WMOFk6A
	E/Q97OtL9zlXYnHO1Pid5krV7ew4IlDf32DurpSc1bJxt97hVnwi9tUMb9UaL/vTdDDawrt/LrpFM
	uNb4NQPNz3/TQ2sbRcNuLe2jyF42NvH33N5xL+eonwufElUgYmn5E2mDTqpUfptm7LF8C2GQ6RBz9
	fKs7pKGp8Aqs9fzg54HC2fCq10FD8DIkjPYcVn5ZJcl7dEbrgwOMOt5TXq1dVKZ9cuZ4dYji/7dJG
	vJhEKChQ76293gpj36HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icgxt-0006aV-Is; Thu, 05 Dec 2019 02:34:01 +0000
Received: from mail-eopbgr20086.outbound.protection.outlook.com ([40.107.2.86]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icgxj-0006Zu-HG
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 02:33:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dDZGNigPBc68i5ntdsr04At7Ey3Zr5CJdih7YLqewWR5YyQsRreVBHCSOKXpzvQIi8h4P6uk3DWZetp38SiqR4hOZ6MKgyjLlEyrlRFRWkwLTf5dxx7vtMkWS1KSq2TlggDAC6JDlwTkHAhghm5HpIFx8CAr8CupqBswJ8hG5/vDeSg9W4W8rV4UzmeAsWwOQQxDxGFaHVsHxu4nqyn67AR9WGgerG0PsyjLkvgfc90/14l/VXPXQQuvU1S7fT3mESTtZVLNr3N5KdZSfZLOaaJYf+1mnBiNuarlSeKPCMzslFBTHu+rV1/5/8RgbFHVh6fG2cKlWdfMKYhP+WRy+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YNAkQVoJSExG6W26jHOS95u4PgXsroccmhb2aMp+7lI=;
 b=dy3+4x1/zphucUwO5e0wNaNHIcatDzHDGBg+JxHKaDDlq5CWqbCrCUfFukCTgt/PaTXVLxaBdBA5Fu1pV68vE2OehAFlu1EZHsAHljSAf/gT2AH0a7YGWUZcPcRI/Q8E5L5Xl+76EHdn0XrXf7h0bxVPi5Gi5gRI7wiAvIvYqJk0UtG66JaXru6YfBFxC4/o0vVTsSl7T6s59Gq1EjydSXCyi78WHuNGxnOpMl9AIpxiwRjXXld9+f/yyF7iFUcxeMxwI7z+mjQHLJ8wL6QPoHWBfGB3RxHs8EiKsA6SdNXdD34uXfIcHgo6nvWIzvOCzMc+17zHTIWB90RVEd8PBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YNAkQVoJSExG6W26jHOS95u4PgXsroccmhb2aMp+7lI=;
 b=KN71RLzThqjKo7cjM9gsT9VnuERhJYaGAMI9Yd0t/uu1DR3dtEqlc5B5bcVH/G/UqqUqejvmNgq5ZG4UhTzdEPJ7Y1huxXlFWwddgCWzJZsKq0z4Y9e1WrJ22ihOS9bUBky4U/HQHBzR9wkwwADwC900pG/Dk0YGe8VUGFm6wFk=
Received: from DB7PR04MB5178.eurprd04.prod.outlook.com (20.176.234.92) by
 DB7PR04MB4171.eurprd04.prod.outlook.com (52.135.130.156) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.22; Thu, 5 Dec 2019 02:33:44 +0000
Received: from DB7PR04MB5178.eurprd04.prod.outlook.com
 ([fe80::1551:2aea:3229:156c]) by DB7PR04MB5178.eurprd04.prod.outlook.com
 ([fe80::1551:2aea:3229:156c%4]) with mapi id 15.20.2516.014; Thu, 5 Dec 2019
 02:33:44 +0000
From: Jacky Bai <ping.bai@nxp.com>
To: Adam Ford <aford173@gmail.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH 3/7] soc: imx: gpcv2: add support for i.MX8M Mini SoC
Thread-Topic: [PATCH 3/7] soc: imx: gpcv2: add support for i.MX8M Mini SoC
Thread-Index: AQHVqxJ561uBl4FlrkCHhfaEiJdWHqeqz80g
Date: Thu, 5 Dec 2019 02:33:44 +0000
Message-ID: <DB7PR04MB51785089112C79F97A2BC213875C0@DB7PR04MB5178.eurprd04.prod.outlook.com>
References: <20191205021924.25188-1-aford173@gmail.com>
 <20191205021924.25188-4-aford173@gmail.com>
In-Reply-To: <20191205021924.25188-4-aford173@gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ping.bai@nxp.com; 
x-originating-ip: [92.121.36.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 371b18e6-a557-4f13-a852-08d7792b8cbe
x-ms-traffictypediagnostic: DB7PR04MB4171:|DB7PR04MB4171:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB417194F437B425D74EFC9942875C0@DB7PR04MB4171.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2399;
x-forefront-prvs: 02426D11FE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(136003)(396003)(346002)(376002)(13464003)(199004)(189003)(2906002)(14454004)(74316002)(66556008)(66476007)(64756008)(66446008)(7736002)(54906003)(110136005)(305945005)(316002)(66946007)(6246003)(6116002)(3846002)(76116006)(7416002)(11346002)(9686003)(55016002)(26005)(25786009)(5660300002)(186003)(6436002)(478600001)(99286004)(4326008)(6506007)(53546011)(86362001)(14444005)(7696005)(76176011)(33656002)(102836004)(81166006)(2501003)(229853002)(8676002)(8936002)(52536014)(81156014)(71190400001)(71200400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4171;
 H:DB7PR04MB5178.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: j/k8tcF6lbxwKY3nmx27eJh4Ah2U7lY7006KMq4rrnc4G34NuzpSmzaBOSv0ipYnqstGt0jMiBpyy9ENSItqyeaB/kEzORkNghI4Jh8zhvFEexIjtLGqXhZ7URuVNolhWzhzHDFy66ySDLWeu6rVW21o8u0Csf3Fx0Bz5wjiSDqwyX1NXHJuSzxnn45FDxirLT34XCoWVDrdlL2zMT4kgGFY81yHylEocaPiy01YjHm+/+P+F1GHP+5IoRJg43vlenxVVEnvnd8l5fjQZ890Dy6IE7BklA9GZmVkpGQVrRBqCHGPonv6G5j9XbiqQllWk/HVjFd6I9NAqTdb85dAcUZ6429QIPpxtzXGM7qJVqwDcIbepsXU2WGPpsgsSs9oX2ROnM0hBSt6uj6JQyZKB9EoCUN3c9gINyUJKxnxo4EUK/CVMEBFJz1A73r87e7CT232jLAizKlfeao7ml5AUGz8nf7+XQPtydGw9IULTKH9Wy+BH42GBnoABdLt5HjW
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 371b18e6-a557-4f13-a852-08d7792b8cbe
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2019 02:33:44.6984 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0n6GJM4NHKQE/PRmwGf3WwVQWp8YfdoVAu+VUVaEN7OZU0V08YRbRH+QDSuEXGkQypgaqI8eTDGfdMvUp5dmlA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4171
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_183351_822663_B3D1ABCA 
X-CRM114-Status: GOOD (  20.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Adam Ford <aford173@gmail.com>
> Sent: Thursday, December 5, 2019 10:19 AM
> To: linux-arm-kernel@lists.infradead.org
> Cc: Adam Ford <aford173@gmail.com>; Rob Herring <robh+dt@kernel.org>;
> Mark Rutland <mark.rutland@arm.com>; Shawn Guo
> <shawnguo@kernel.org>; Sascha Hauer <s.hauer@pengutronix.de>;
> Pengutronix Kernel Team <kernel@pengutronix.de>; Fabio Estevam
> <festevam@gmail.com>; dl-linux-imx <linux-imx@nxp.com>;
> devicetree@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: [PATCH 3/7] soc: imx: gpcv2: add support for i.MX8M Mini SoC
> 
> The GPCv2 on the Freescale i.MX8M Mini SoC works in the same way as the
> GPCv2 on the i.MX8MQ, but with slightly different power domains and
> mapping.
> 

Have you tested all the power domain? Some power domains have to do special power up sequence. I am sure
below change can NOT work for GPU & VPU power domain. Adding code in the GPCv2 driver will make this driver
hard to maintain over time. i.MX8MM, i.MX8MN, and in the future, we have other new SOC, different SOC has
different power domain design & on/off sequence. Finally, it will make the GPCv2 very ugly.

> This patch adds the necessary tables so the GPC can operate on the i.MX8M
> Mini.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>
> ---
>  drivers/soc/imx/gpcv2.c | 244
> ++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 244 insertions(+)
> 
> diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c index
> 250f740d2314..52668e985e8e 100644
> --- a/drivers/soc/imx/gpcv2.c
> +++ b/drivers/soc/imx/gpcv2.c
> @@ -41,6 +41,20 @@
>  #define IMX8M_PCIE1_A53_DOMAIN			BIT(3)
>  #define IMX8M_MIPI_A53_DOMAIN			BIT(2)
> 
> +#define IMX8MM_VPU_H1_A53_DOMAIN		BIT(15)
> +#define IMX8MM_VPU_G2_A53_DOMAIN		BIT(14)
> +#define IMX8MM_VPU_G1_A53_DOMAIN		BIT(13)
> +#define IMX8MM_DISP_MIX_A53_DOMAIN		BIT(12)
> +#define IMX8MM_GPU_3D_A53_DOMAIN		BIT(11)
> +#define IMX8MM_VPUMIX_A53_DOMAIN		BIT(10)
> +#define IMX8MM_GPUMIX_A53_DOMAIN		BIT(9)
> +#define IMX8MM_GPU_2D_A53_DOMAIN		BIT(8)
> +#define IMX8MM_DDR1_A53_DOMAIN			BIT(7)
> +#define IMX8MM_OTG2_A53_DOMAIN			BIT(5)
> +#define IMX8MM_OTG1_A53_DOMAIN			BIT(4)
> +#define IMX8MM_PCIE_A53_DOMAIN			BIT(3)
> +#define IMX8MM_MIPI_A53_DOMAIN			BIT(2)
> +
>  #define GPC_PU_PGC_SW_PUP_REQ		0x0f8
>  #define GPC_PU_PGC_SW_PDN_REQ		0x104
> 
> @@ -64,6 +78,20 @@
>  #define IMX8M_PCIE1_SW_Pxx_REQ			BIT(1)
>  #define IMX8M_MIPI_SW_Pxx_REQ			BIT(0)
> 
> +#define IMX8MM_VPU_H1_SW_Pxx_REQ		BIT(13)
> +#define IMX8MM_VPU_G2_SW_Pxx_REQ		BIT(12)
> +#define IMX8MM_VPU_G1_SW_Pxx_REQ		BIT(11)
> +#define IMX8MM_DISP_SW_Pxx_REQ			BIT(10)
> +#define IMX8MM_GPU_3D_SW_Pxx_REQ		BIT(9)
> +#define IMX8MM_VPU_SW_Pxx_REQ			BIT(8)
> +#define IMX8MM_GPU_SW_Pxx_REQ			BIT(7)
> +#define IMX8MM_GPU_2D_SW_PXX_REQ		BIT(6)
> +#define IMX8MM_DDR1_SW_Pxx_REQ			BIT(5)
> +#define IMX8MM_OTG2_SW_Pxx_REQ			BIT(3)
> +#define IMX8MM_OTG1_SW_Pxx_REQ			BIT(2)
> +#define IMX8MM_PCIE_SW_Pxx_REQ			BIT(1)
> +#define IMX8MM_MIPI_SW_Pxx_REQ			BIT(0)
> +
>  #define GPC_M4_PU_PDN_FLG		0x1bc
> 
>  #define GPC_PU_PWRHSK			0x1fc
> @@ -72,6 +100,10 @@
>  #define IMX8M_VPU_HSK_PWRDNREQN			BIT(5)
>  #define IMX8M_DISP_HSK_PWRDNREQN		BIT(4)
> 
> +#define IMX8MM_GPU_HSK_PWRDNREQN		BIT(9)
> +#define IMX8MM_VPU_HSK_PWRDNREQN		BIT(8)
> +#define IMX8MM_DISP_HSK_PWRDNREQN		BIT(7)
> +
>  /*
>   * The PGC offset values in Reference Manual
>   * (Rev. 1, 01/2018 and the older ones) GPC chapter's @@ -94,6 +126,24
> @@
>  #define IMX8M_PGC_MIPI_CSI2		28
>  #define IMX8M_PGC_PCIE2			29
> 
> +/*
> + * Taken from i.MX8M Mini values from Reference
> + * Manual, Rev. 2, 08/2019
> + */
> +#define IMX8MM_PGC_MIPI			16
> +#define IMX8MM_PGC_PCIE			17
> +#define IMX8MM_PGC_OTG1			18
> +#define IMX8MM_PGC_OTG2			19
> +#define IMX8MM_PGC_DDR1			21
> +#define IMX8MM_PGC_GPU2D		22
> +#define IMX8MM_PGC_GPU			23
> +#define IMX8MM_PGC_VPU			24
> +#define IMX8MM_PGC_GPU3D		25
> +#define IMX8MM_PGC_DISP			26
> +#define IMX8MM_PGC_VPU_G1		27
> +#define IMX8MM_PGC_VPU_G2		28
> +#define IMX8MM_PGC_VPU_H1		29
> +
>  #define GPC_PGC_CTRL(n)			(0x800 + (n) * 0x40)
>  #define GPC_PGC_SR(n)			(GPC_PGC_CTRL(n) + 0xc)
> 
> @@ -278,6 +328,7 @@ static const struct imx_pgc_domain_data
> imx7_pgc_domain_data = {
>  	.reg_access_table = &imx7_access_table,  };
> 
> +/* i.MX8M dual/QuadLite/Quad */
>  static const struct imx_pgc_domain imx8m_pgc_domains[] = {
>  	[IMX8M_POWER_DOMAIN_MIPI] = {
>  		.genpd = {
> @@ -442,6 +493,198 @@ static const struct imx_pgc_domain_data
> imx8m_pgc_domain_data = {
>  	.reg_access_table = &imx8m_access_table,  };
> 
> +/* i.MX8M Mini */
> +static const struct imx_pgc_domain imx8mm_pgc_domains[] = {
> +	[IMX8MM_POWER_DOMAIN_MIPI] = {
> +		.genpd = {
> +			.name      = "mipi",
> +		},
> +		.bits  = {
> +			.pxx = IMX8MM_MIPI_SW_Pxx_REQ,
> +			.map = IMX8MM_MIPI_A53_DOMAIN,
> +		},
> +		.pgc	   = IMX8M_PGC_MIPI,
> +	},
> +
> +	[IMX8MM_POWER_DOMAIN_PCIE] = {
> +		.genpd = {
> +			.name = "pcie1",
> +		},
> +		.bits  = {
> +			.pxx = IMX8MM_PCIE_SW_Pxx_REQ,
> +			.map = IMX8MM_PCIE_A53_DOMAIN,
> +		},
> +		.pgc   = IMX8MM_PGC_PCIE,
> +	},
> +
> +	[IMX8MM_POWER_DOMAIN_USB_OTG1] = {
> +		.genpd = {
> +			.name = "usb-otg1",
> +		},
> +		.bits  = {
> +			.pxx = IMX8MM_OTG1_SW_Pxx_REQ,
> +			.map = IMX8MM_OTG1_A53_DOMAIN,
> +		},
> +		.pgc   = IMX8M_PGC_OTG1,
> +	},
> +
> +	[IMX8MM_POWER_DOMAIN_USB_OTG2] = {
> +		.genpd = {
> +			.name = "usb-otg2",
> +		},
> +		.bits  = {
> +			.pxx = IMX8MM_OTG2_SW_Pxx_REQ,
> +			.map = IMX8MM_OTG2_A53_DOMAIN,
> +		},
> +		.pgc   = IMX8M_PGC_OTG2,
> +	},
> +
> +	[IMX8MM_POWER_DOMAIN_DDR1] = {
> +		.genpd = {
> +			.name = "ddr1",
> +		},
> +		.bits  = {
> +			.pxx = IMX8MM_DDR1_SW_Pxx_REQ,
> +			.map = IMX8MM_DDR1_A53_DOMAIN,
> +		},
> +		.pgc   = IMX8M_PGC_DDR1,
> +	},
> +
> +	[IMX8MM_POWER_DOMAIN_GPU2D] = {
> +		.genpd = {
> +			.name = "gpu2d",
> +		},
> +		.bits  = {
> +			.pxx = IMX8MM_GPU_2D_SW_PXX_REQ,
> +			.map = IMX8MM_GPU_2D_A53_DOMAIN,
> +			.hsk = IMX8MM_GPU_HSK_PWRDNREQN,
> +		},
> +		.pgc   = IMX8MM_PGC_GPU2D,
> +	},
> +
> +
> +	[IMX8MM_POWER_DOMAIN_GPU] = {
> +		.genpd = {
> +			.name = "gpu",
> +		},
> +		.bits  = {
> +			.pxx = IMX8MM_GPU_SW_Pxx_REQ,
> +			.map = IMX8MM_GPUMIX_A53_DOMAIN,
> +			.hsk = IMX8MM_GPU_HSK_PWRDNREQN,
> +		},
> +		.pgc   = IMX8M_PGC_GPU,
> +	},
> +
> +	[IMX8MM_POWER_DOMAIN_VPU] = {
> +		.genpd = {
> +			.name = "vpu",
> +		},
> +		.bits  = {
> +			.pxx = IMX8MM_VPU_SW_Pxx_REQ,
> +			.map = IMX8MM_VPUMIX_A53_DOMAIN,
> +			.hsk = IMX8MM_VPU_HSK_PWRDNREQN,
> +		},
> +		.pgc   = IMX8M_PGC_VPU,
> +	},
> +
> +	[IMX8MM_POWER_DOMAIN_GPU3D] = {
> +		.genpd = {
> +			.name = "gpu3d",
> +		},
> +		.bits  = {
> +			.pxx = IMX8MM_GPU_3D_SW_Pxx_REQ,
> +			.map = IMX8MM_GPU_3D_A53_DOMAIN,
> +			.hsk = IMX8MM_GPU_HSK_PWRDNREQN,
> +		},
> +		.pgc   = IMX8MM_PGC_GPU2D,
> +	},
> +
> +	[IMX8MM_POWER_DOMAIN_DISP] = {
> +		.genpd = {
> +			.name = "disp",
> +		},
> +		.bits  = {
> +			.pxx = IMX8MM_DISP_SW_Pxx_REQ,
> +			.map = IMX8MM_DISP_MIX_A53_DOMAIN,
> +			.hsk = IMX8MM_DISP_HSK_PWRDNREQN,
> +		},
> +		.pgc   = IMX8M_PGC_DISP,
> +	},
> +
> +	[IMX8MM_POWER_VPU_G1] = {
> +		.genpd = {
> +			.name = "vpu_g1",
> +		},
> +		.bits  = {
> +			.pxx = IMX8MM_VPU_G1_SW_Pxx_REQ,
> +			.map = IMX8MM_VPU_G1_A53_DOMAIN,
> +		},
> +		.pgc   = IMX8M_PGC_MIPI_CSI1,
> +	},
> +
> +	[IMX8MM_POWER_VPU_G2] = {
> +		.genpd = {
> +			.name = "vpu_g2",
> +		},
> +		.bits  = {
> +			.pxx = IMX8MM_VPU_G2_SW_Pxx_REQ,
> +			.map = IMX8MM_VPU_G2_A53_DOMAIN,
> +		},
> +		.pgc   = IMX8M_PGC_MIPI_CSI2,
> +	},
> +
> +	[IMX8MM_POWER_VPU_H1] = {
> +		.genpd = {
> +			.name = "vpu_h1",
> +		},
> +		.bits  = {
> +			.pxx = IMX8MM_VPU_H1_SW_Pxx_REQ,
> +			.map = IMX8MM_VPU_H1_A53_DOMAIN,
> +		},
> +		.pgc   = IMX8M_PGC_PCIE2,
> +	},
> +};
> +
> +static const struct regmap_range imx8mm_yes_ranges[] = {
> +		regmap_reg_range(GPC_LPCR_A_CORE_BSC,
> +				 GPC_PU_PWRHSK),
> +		regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_MIPI),
> +				 GPC_PGC_SR(IMX8MM_PGC_MIPI)),
> +		regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_PCIE),
> +				 GPC_PGC_SR(IMX8MM_PGC_PCIE)),
> +		regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_OTG1),
> +				 GPC_PGC_SR(IMX8MM_PGC_OTG1)),
> +		regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_OTG2),
> +				 GPC_PGC_SR(IMX8MM_PGC_OTG2)),
> +		regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_DDR1),
> +				 GPC_PGC_SR(IMX8MM_PGC_DDR1)),
> +		regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_GPU2D),
> +				 GPC_PGC_SR(IMX8MM_PGC_GPU2D)),
> +		regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_GPU),
> +				 GPC_PGC_SR(IMX8MM_PGC_GPU)),
> +		regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_VPU),
> +				 GPC_PGC_SR(IMX8MM_PGC_VPU)),
> +		regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_DISP),
> +				 GPC_PGC_SR(IMX8MM_PGC_DISP)),
> +		regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_VPU_G1),
> +				 GPC_PGC_SR(IMX8MM_PGC_VPU_G1)),
> +		regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_VPU_G2),
> +				 GPC_PGC_SR(IMX8MM_PGC_VPU_G2)),
> +		regmap_reg_range(GPC_PGC_CTRL(IMX8MM_PGC_VPU_H1),
> +				 GPC_PGC_SR(IMX8MM_PGC_VPU_H1)),
> +};
> +
> +static const struct regmap_access_table imx8mm_access_table = {
> +	.yes_ranges	= imx8mm_yes_ranges,
> +	.n_yes_ranges	= ARRAY_SIZE(imx8mm_yes_ranges),
> +};
> +
> +static const struct imx_pgc_domain_data imx8mm_pgc_domain_data = {
> +	.domains = imx8mm_pgc_domains,
> +	.domains_num = ARRAY_SIZE(imx8mm_pgc_domains),
> +	.reg_access_table = &imx8mm_access_table, };
> +
>  static int imx_pgc_get_clocks(struct imx_pgc_domain *domain)  {
>  	int i, ret;
> @@ -641,6 +884,7 @@ static int imx_gpcv2_probe(struct platform_device
> *pdev)  static const struct of_device_id imx_gpcv2_dt_ids[] = {
>  	{ .compatible = "fsl,imx7d-gpc", .data = &imx7_pgc_domain_data, },
>  	{ .compatible = "fsl,imx8mq-gpc", .data = &imx8m_pgc_domain_data, },
> +	{ .compatible = "fsl,imx8mm-gpc", .data =
> &imx8mm_pgc_domain_data, },
>  	{ }
>  };
> 
> --
> 2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
