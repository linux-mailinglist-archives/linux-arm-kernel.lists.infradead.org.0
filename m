Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D46271139F9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 03:37:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qYmFYMF+eD9eg2odDfUeTnJd6XRiQtRzpBWDd5MSOqk=; b=P2B04/mE/Wd3Rh
	zLZ36Xbbw+h4rqd0QHCSEpRrCQNGm+v8cvGDX0j+wMCzPVwZuZ/wORN60ILdzaaedHwfK8WC2nJv/
	YbAKKEj7UGJELOF68YDmO25eoloJPSb7A87F0IfsOHGPv5pa5efpBRvKxGsS3l7a90ykgBH1SWfQ1
	mXK5V8XQUWR37A6R4BuHZVnt/pGWVMotI66sRG5zadFjtLaguqYA+7H8HGBlMBRETbU3/5SIZzz4B
	1nFvb92BkE9PRyieT6+YpQFW73yp2rfZjThG++RPvKzFK/KY3cSc8GNuz7MJNhzNr7jOc38TMsCTW
	Aqjj7QM9cdBbEusEDsyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ich1P-0008AH-FH; Thu, 05 Dec 2019 02:37:39 +0000
Received: from mail-eopbgr40074.outbound.protection.outlook.com ([40.107.4.74]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ich1I-00089o-3o
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 02:37:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GWyVj1p80447oATQHepwNepjTPnH2c1mMJL0Qgp/vZ+bpGKiuqKLI78QQiM2aOuFSvfnrlUPuSytIRRgbZpSKDvR7KTohd7b0+KytzxmL22BvvfdhRC8bFRyoDC2ZZCQmNO2/7rpIJWXTdAGDgF6/K4iKptxcNQYdDZSEeGjUQba9Y2FlcR1RSrXVmdTtbMFYhr8CM5NCDPhtyM5Fy5Q7AAJXnNc4G13tDa3Qpx3Ubw1qbUmYUNMGCb8thGubofZxboLdhwg5P7ta89iqbq7oJxsg+n7FaJzSjg030h9IknC1qHTPOEYhLawJxmbjl+QQAfORH+f9soY4g/3aV0d4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mpKhSaa/qXs+tFYpihHhaa5sxrwoh5BB73Cx7QI5DFA=;
 b=UspszFCA5h/AiQp6irDa27YI76QVKEfuomfbuhfbNcQOsPzv1Ke8l/qi6NRdChhvJsOJ77WG6svPqcSVwF74/N8ZWhm0+VQStYvKYCBEOWa+zwyjtDa8jg2Dvy6MIkkV1ziJU1z8LzT2KOq6MfPKTiETsxIzWC/hJ3aUmpW64TSqsZ4TTQxzzgGtphfp9Tnd/u9K2Ut6PG+HinZEyPbfdWou66fgsyRAmWi2yrsFTFn5inidywjMrE6GYO8Lw7HBrx9lrdaMyN8miS/aVZiehoQGojYh5lo+FPtgEgZVQ9jTbgAchOxFvf3IxQN/DoFUi3fcqTaaA4m+EMzDquQvPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mpKhSaa/qXs+tFYpihHhaa5sxrwoh5BB73Cx7QI5DFA=;
 b=TV6cS9vvk1mPNt7Np59WsJEtriaahFuYs60Keb9/6c4PEZLL8zdbJ7EUl6sNaHaRIa4jisMBxGAaeZh3OHGtsWe+wkWfRG41/2Qui0RDgxvZRxdhfLnDSVHCyCxP+94OtoWf/FDUqHDxjDdJ0limUEJYi/IL17Es8zLltbkk8KU=
Received: from DB7PR04MB5178.eurprd04.prod.outlook.com (20.176.234.92) by
 DB7PR04MB4235.eurprd04.prod.outlook.com (52.135.128.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.22; Thu, 5 Dec 2019 02:37:29 +0000
Received: from DB7PR04MB5178.eurprd04.prod.outlook.com
 ([fe80::1551:2aea:3229:156c]) by DB7PR04MB5178.eurprd04.prod.outlook.com
 ([fe80::1551:2aea:3229:156c%4]) with mapi id 15.20.2516.014; Thu, 5 Dec 2019
 02:37:29 +0000
From: Jacky Bai <ping.bai@nxp.com>
To: Adam Ford <aford173@gmail.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH 5/7] arm64: dts: imx8mm: add GPC power domains
Thread-Topic: [PATCH 5/7] arm64: dts: imx8mm: add GPC power domains
Thread-Index: AQHVqxJ64ajh+bjI6kC62XtCagiaw6eq0rVw
Date: Thu, 5 Dec 2019 02:37:29 +0000
Message-ID: <DB7PR04MB517877B39D4659568F69B813875C0@DB7PR04MB5178.eurprd04.prod.outlook.com>
References: <20191205021924.25188-1-aford173@gmail.com>
 <20191205021924.25188-6-aford173@gmail.com>
In-Reply-To: <20191205021924.25188-6-aford173@gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ping.bai@nxp.com; 
x-originating-ip: [92.121.36.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 68b68bda-775b-4a51-a8b8-08d7792c128b
x-ms-traffictypediagnostic: DB7PR04MB4235:|DB7PR04MB4235:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB4235E8D69B14E4A273A3D582875C0@DB7PR04MB4235.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1388;
x-forefront-prvs: 02426D11FE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(366004)(376002)(39860400002)(346002)(13464003)(199004)(189003)(54906003)(6116002)(81156014)(3846002)(8936002)(7416002)(99286004)(25786009)(11346002)(81166006)(110136005)(8676002)(5660300002)(4326008)(64756008)(2906002)(55016002)(66556008)(26005)(316002)(7696005)(6246003)(14444005)(33656002)(71200400001)(52536014)(66446008)(74316002)(66946007)(76116006)(71190400001)(66476007)(305945005)(14454004)(7736002)(76176011)(6436002)(9686003)(186003)(86362001)(102836004)(6506007)(53546011)(2501003)(478600001)(229853002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4235;
 H:DB7PR04MB5178.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bjiUSysDlfQwG86FD7F0/53lbbKeHxFIRoc73BVNGWeRTjLNS1amsjzAlkhuR8uA6Kqc8tZMUPyTlTyrLj+eRYfQegefU99pRxiD+Yb3hlA28RKOGEzeEyXR00bo73Wx3oL7+2v7HZZSYMZ5sAiomGlzH3Stj0va4pnormIeePWbkpmm1pUsqOSfdUIYapo6Z15RivJt9zkPlgQUL7ml8isujIyzeo09r70iU3lydAz4VsHQ2EC4u/znjf1m4IixoNd6KIScxK6y00+VBiydCd2w6pPNJ1zAcQ/GwKFdo6vF8laz6Q2/5raDWHiOwde4rDgDYan3EcL2pW6Odr4n2jdgTGzsS9Mt+wUksGjU9OVTvJxY+DFnzUALADHsGspIQX6SGST3Fh20manQNJbgPdZgHIEml/ayB1wjJAEhbI256Vw4xajSy64mkpFCHHHOXL/7OTnVu4L+6OcExe8PPeErEhCHsAeiMBWtYQNfYba6gLtFSgDP39wZcFg8oH30
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68b68bda-775b-4a51-a8b8-08d7792c128b
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2019 02:37:29.1809 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NZv08IU4UHnSXT2ZpYgIdfScsidwJZxSIB7eeFUh30dPN1Crbl5qZCUuguTgBWhvzZjWHEbDVPZk8+MBQ/I9JQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4235
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_183732_159335_2CAE901C 
X-CRM114-Status: GOOD (  16.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.74 listed in list.dnswl.org]
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
> Subject: [PATCH 5/7] arm64: dts: imx8mm: add GPC power domains
> 
> There is a power domain controller on the i.XM8M Mini used for handling
> interrupts and controlling certain peripherals like USB OTG and PCIe, which
> are currently unavailable.
> 
> This patch enables support the controller itself to the help facilitate enabling
> additional peripherals.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 82
> ++++++++++++++++++++++-
>  1 file changed, 81 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index 23c8fad7932b..d05c5b617a4d 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -4,6 +4,7 @@
>   */
> 
>  #include <dt-bindings/clock/imx8mm-clock.h>
> +#include <dt-bindings/power/imx8m-power.h>
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/input.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
> @@ -13,7 +14,7 @@
> 
>  / {
>  	compatible = "fsl,imx8mm";
> -	interrupt-parent = <&gic>;
> +	interrupt-parent = <&gpc>;

NACK, for imx8mm, imx8mn & future i.MX8M SOC, we don't treat GPC as interrupt controller in linux anymore.
Above change will break the low power mode support(suspend/resume)

BR
Jacky Bai

>  	#address-cells = <2>;
>  	#size-cells = <2>;
> 
> @@ -495,6 +496,85 @@
>  				interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
>  				#reset-cells = <1>;
>  			};
> +
> +			gpc: gpc@303a0000 {
> +				compatible = "fsl,imx8mm-gpc";
> +				reg = <0x303a0000 0x10000>;
> +				interrupt-parent = <&gic>;
> +				interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>;
> +				interrupt-controller;
> +				#interrupt-cells = <3>;
> +
> +				pgc {
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					pgc_mipi: power-domain@0 {
> +						#power-domain-cells = <0>;
> +						reg = <IMX8MM_POWER_DOMAIN_MIPI>;
> +					};
> +
> +					pgc_pcie: power-domain@1 {
> +						#power-domain-cells = <0>;
> +						reg = <IMX8MM_POWER_DOMAIN_PCIE>;
> +					};
> +
> +					pgc_otg1: power-domain@2 {
> +						#power-domain-cells = <0>;
> +						reg =
> <IMX8MM_POWER_DOMAIN_USB_OTG1>;
> +					};
> +
> +					pgc_otg2: power-domain@3 {
> +						#power-domain-cells = <0>;
> +						reg =
> <IMX8MM_POWER_DOMAIN_USB_OTG2>;
> +					};
> +
> +					pgc_ddr1: power-domain@4 {
> +						#power-domain-cells = <0>;
> +						reg = <IMX8MM_POWER_DOMAIN_DDR1>;
> +					};
> +
> +					pgc_gpu2d: power-domain@5 {
> +						#power-domain-cells = <0>;
> +						reg = <IMX8MM_POWER_DOMAIN_GPU2D>;
> +					};
> +
> +					pgc_gpu: power-domain@6 {
> +						#power-domain-cells = <0>;
> +						reg = <IMX8MM_POWER_DOMAIN_GPU>;
> +					};
> +
> +					pgc_vpu: power-domain@7 {
> +						#power-domain-cells = <0>;
> +						reg = <IMX8MM_POWER_DOMAIN_VPU>;
> +					};
> +
> +					pgc_gpu3d: power-domain@8 {
> +						#power-domain-cells = <0>;
> +						reg = <IMX8MM_POWER_DOMAIN_GPU3D>;
> +					};
> +
> +					pgc_disp: power-domain@9 {
> +						#power-domain-cells = <0>;
> +						reg = <IMX8MM_POWER_DOMAIN_DISP>;
> +					};
> +
> +					pgc_vpu_g1: power-domain@a {
> +						#power-domain-cells = <0>;
> +						reg = <IMX8MM_POWER_VPU_G1>;
> +					};
> +
> +					pgc_vpu_g2: power-domain@b {
> +						#power-domain-cells = <0>;
> +						reg = <IMX8MM_POWER_VPU_G2>;
> +					};
> +
> +					pgc_vpu_h1: power-domain@c {
> +						#power-domain-cells = <0>;
> +						reg = <IMX8MM_POWER_VPU_H1>;
> +					};
> +				};
> +			};
>  		};
> 
>  		aips2: bus@30400000 {
> --
> 2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
