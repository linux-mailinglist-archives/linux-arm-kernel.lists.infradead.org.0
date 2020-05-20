Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B691DAC7F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 09:44:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cDRj2+XMTHJva4K+o6j7SGAG//ERJkMCVaI610TLRH0=; b=hAxiZaGbbqWOVB
	kmzXii9NzTT9+IOi4V7kfNw9YEFZvIysicVBH3Lg2nXPOV8GuxTHu4xKzbJ+SwaAjC+TleVPWprgU
	WoIRSAJTwv86tLsFgCgtxRN88D7UemK8WJ2rurn/I5R/keQH8yLc4OLftr3UxUbYtn6ICPXIvJENB
	9Cw7dAfidDDlIWFM8QJedu/aS9NmR3Jf3gfyN/8Ewi+SlHECbWxpmgiuAYDZ8HIwFrtW0PqFpxlbN
	LHKNNmmHYs8m07U63OCqm5+/Agj+1xZWRlg69jpkdlEcKH+P7aw4BOqPj3fUa+YeCGtYonAQh7msn
	IFvQQKA2fgYDOgR+zN6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbJOf-0001rv-4g; Wed, 20 May 2020 07:44:13 +0000
Received: from mail-eopbgr60049.outbound.protection.outlook.com ([40.107.6.49]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbJOU-0001rE-6v
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 07:44:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UmmPUrjSWHhV4YUpRINzzV7mEZJ9z789UykyAoY+4OvtcdIh9Zzc5RJzNYcKOeEZ6lg5am49F2DT2kfMVEwJDfVxuiElKYvItjFbF8cJM6mjbVzStXd5vUGOx4R2YFMlf5HtCExeCjhMKnaGRE1DlmZ0nForkqEpvZOwvYZB0Hct3rWN8KVl2P7/fZoWQgsADzISlTH4hwhd6f9TS3nZ49O2l7p5EytrQW8t95uKaogPsrw0pst1rvs1d+b+Ykw8Dx3Sky1lLNgSvW8Ivosm79hneTzjoPA4mb9u3/5uh708CHvijcFQYwl0W/gu9uZ4k6PKDYeemPp+6xmaTalrxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XnS9p8bBLIb7OHaCaKNytk6khQO/GskLrObdexcJpo4=;
 b=TW/Q+54BKrqAKmTOHFp0co+6w6sGBB/CNnXdLRM9C1Zsw/yaEHV5wb2xBfDw3WHzWEuJTkq+BwIqAgb/J7jMTWlcWbf0fVwZ3p4VLlgTlMRt4TlYui0zaEOYd6fFktLkS4uVT70jDOZ9pWwEMBdafeJxktaQywZp3aa69SoibE7RKAw/Vshwf6xZ/8fLdq+A+OSAAhitI+7JesIzG6JlR+5IXjmZZTDgrb/pllQ7K/GLC0DvVmfGFt39qiUvUOviQh07eddVkJh8AmKhrcUxnNzDyGDsguzzXuV/Jxl+p013g0QN3uVorQma9O0DpIhE5MYsGDDo9K7RJqnbOjYMWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XnS9p8bBLIb7OHaCaKNytk6khQO/GskLrObdexcJpo4=;
 b=FA9ILCfJYIQWBtZCPud49Q/JyrzK5HUroXvezeXqsoF6WFLqNMSlQulstITKmhzIHBaO++WEMPNu8WZApYGnmv5QYHbGOR0ZKy28gj5Oj49NNkDE5W2wViBVnzBo72qs5G8X0MKBPhpElgSMk6BpuCDNk/Xl2IYgZP6r36I4AY0=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB6166.eurprd04.prod.outlook.com (2603:10a6:20b:b6::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.27; Wed, 20 May
 2020 07:43:58 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3000.034; Wed, 20 May 2020
 07:43:58 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] ARM: dts: imx: Make tempmon node as child of anatop node
Thread-Topic: [PATCH] ARM: dts: imx: Make tempmon node as child of anatop node
Thread-Index: AQHWLnGKahSSyBKEm0SO3VgjiRIl16iwl6BQ
Date: Wed, 20 May 2020 07:43:58 +0000
Message-ID: <AM6PR04MB49663B517C218072B2845DBF80B60@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1589956216-22499-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1589956216-22499-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 4a7427b9-f424-4e52-0400-08d7fc918e9c
x-ms-traffictypediagnostic: AM6PR04MB6166:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB6166E65EE10E1D8FBCD7AEE580B60@AM6PR04MB6166.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:110;
x-forefront-prvs: 04097B7F7F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: it+mWq/YQ/nxYgIyxLPq7yBldUNDZUJ1rE68le/ABpxbsI1MgdkGYiNn78NVK8qN4AsfwbUUtXqjfyFjB/rvo/jCAgzTBV3i4zpjQnUP124r+V7z0NwiVRQrlhR+mSG/EEiFQCxw+hJfo9H6yTjG+WUOz5Zt03bv36WOZx6fVa3VOnGD95mVVcxgZ1g50e3BFaqwe7o27PpQZ/qommeRiWL+xkblaDPucE7GbaqIsdJWP/fWZe28YVpSq2PTsArySPilnf5+6ZU0j8Z4Ylfld0tMx3Wb0Bu3+g2xF7Y+/rv+gvvPktmcw6e5NrYsSBWvsOmZMlTc7pTrrc7YUcDz9ESPkgAAK4ZZ5lYQbcz7KvYrcVrbHLg8RoKqjWvzenziucWBOYGZe3/LjT7GXgOOM0mEhk0t5mSaF0U4sw3m7jrmZ+B+QefFSOv5vZ6uPt9g
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(346002)(366004)(396003)(136003)(39860400002)(9686003)(2906002)(26005)(5660300002)(52536014)(4326008)(186003)(33656002)(110136005)(66946007)(478600001)(8936002)(7696005)(71200400001)(66556008)(55016002)(6506007)(44832011)(66476007)(86362001)(64756008)(76116006)(66446008)(316002)(8676002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: UKVMrWNHwFUvL+gcYfluUGB1PCbkVv3sSCd7fhRJghvw48x1znpUR8kH7mtujWyCv7O9u/hmNMGP3o48OjAiyQi+WlunjgvUCkqCQ8wC7YsHBMe411xbDavohEAZYdDDcTBLBVtLrxWxquvlVtcCseeC59tcd3/G+NeuZyEP6ImcoopjJvbci0zlkbItPNIh6rC7tC2cGlPiv0IB75guJproi8AdljZ8VS4mQf0rh5GHps4EuxZIB7op9aZotvnAtIF1DsH1uWiQ8oZLawbigtiPZYB09XS4p1hThbllL5tsIrdIPoduiYmAtmbMCFHntiukVOUCTUfAhfHfMOCdyqGBO8+whFJkNE/p8UXFagokq1IW5UUXO0yVrFf5tJyCrtU0y8fyij/4ISKvE/MHwhbDIfykYY+1Pfd4j2+QgSJYhT3jVUyd7cZAeWalbEw9Stggc4O7zf54d3AVfvIk9ojIiZdRFu1ri0SEaTyLB5lIjbYE/HAAo+qLLYcaYhC6
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a7427b9-f424-4e52-0400-08d7fc918e9c
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2020 07:43:58.8651 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hZt5IcIt96pVrcA/8rnlIrhcPvOHT1lGazyDolGE09vGa2wiNI+wEoE9FYz9gRzghAade+ZQFGwe0p/58452MQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6166
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_004402_385016_5A1A5843 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.6.49 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.49 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Anson Huang <Anson.Huang@nxp.com>
> Sent: Wednesday, May 20, 2020 2:30 PM
> 
> i.MX6/7 SoCs' temperature sensor is inside anatop module from HW perspective,
> so it should be a child node of anatop.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

BTW, I think you also need a binding doc for this change.

Regards
Aisheng

> ---
>  arch/arm/boot/dts/imx6qdl.dtsi | 22 +++++++++++-----------
> arch/arm/boot/dts/imx6sl.dtsi  | 20 ++++++++++----------
> arch/arm/boot/dts/imx6sll.dtsi | 20 ++++++++++----------
> arch/arm/boot/dts/imx6sx.dtsi  | 20 ++++++++++----------
> arch/arm/boot/dts/imx6ul.dtsi  | 20 ++++++++++----------
>  arch/arm/boot/dts/imx7s.dtsi   | 20 ++++++++++----------
>  6 files changed, 61 insertions(+), 61 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/imx6qdl.dtsi b/arch/arm/boot/dts/imx6qdl.dtsi
> index 39d4afd..43d44d5 100644
> --- a/arch/arm/boot/dts/imx6qdl.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl.dtsi
> @@ -69,17 +69,6 @@
>  		};
>  	};
> 
> -	tempmon: tempmon {
> -		compatible = "fsl,imx6q-tempmon";
> -		interrupt-parent = <&gpc>;
> -		interrupts = <0 49 IRQ_TYPE_LEVEL_HIGH>;
> -		fsl,tempmon = <&anatop>;
> -		nvmem-cells = <&tempmon_calib>, <&tempmon_temp_grade>;
> -		nvmem-cell-names = "calib", "temp_grade";
> -		clocks = <&clks IMX6QDL_CLK_PLL3_USB_OTG>;
> -		#thermal-sensor-cells = <0>;
> -	};
> -
>  	ldb: ldb {
>  		#address-cells = <1>;
>  		#size-cells = <0>;
> @@ -795,6 +784,17 @@
>  					anatop-min-voltage = <725000>;
>  					anatop-max-voltage = <1450000>;
>  				};
> +
> +				tempmon: tempmon {
> +					compatible = "fsl,imx6q-tempmon";
> +					interrupt-parent = <&gpc>;
> +					interrupts = <0 49 IRQ_TYPE_LEVEL_HIGH>;
> +					fsl,tempmon = <&anatop>;
> +					nvmem-cells = <&tempmon_calib>,
> <&tempmon_temp_grade>;
> +					nvmem-cell-names = "calib", "temp_grade";
> +					clocks = <&clks IMX6QDL_CLK_PLL3_USB_OTG>;
> +					#thermal-sensor-cells = <0>;
> +				};
>  			};
> 
>  			usbphy1: usbphy@20c9000 {
> diff --git a/arch/arm/boot/dts/imx6sl.dtsi b/arch/arm/boot/dts/imx6sl.dtsi
> index 911d8cf..d8efc0a 100644
> --- a/arch/arm/boot/dts/imx6sl.dtsi
> +++ b/arch/arm/boot/dts/imx6sl.dtsi
> @@ -93,16 +93,6 @@
>  		};
>  	};
> 
> -	tempmon: tempmon {
> -		compatible = "fsl,imx6q-tempmon";
> -		interrupts = <0 49 IRQ_TYPE_LEVEL_HIGH>;
> -		interrupt-parent = <&gpc>;
> -		fsl,tempmon = <&anatop>;
> -		nvmem-cells = <&tempmon_calib>, <&tempmon_temp_grade>;
> -		nvmem-cell-names = "calib", "temp_grade";
> -		clocks = <&clks IMX6SL_CLK_PLL3_USB_OTG>;
> -	};
> -
>  	pmu {
>  		compatible = "arm,cortex-a9-pmu";
>  		interrupt-parent = <&gpc>;
> @@ -628,6 +618,16 @@
>  					anatop-min-voltage = <725000>;
>  					anatop-max-voltage = <1450000>;
>  				};
> +
> +				tempmon: tempmon {
> +					compatible = "fsl,imx6q-tempmon";
> +					interrupts = <0 49 IRQ_TYPE_LEVEL_HIGH>;
> +					interrupt-parent = <&gpc>;
> +					fsl,tempmon = <&anatop>;
> +					nvmem-cells = <&tempmon_calib>,
> <&tempmon_temp_grade>;
> +					nvmem-cell-names = "calib", "temp_grade";
> +					clocks = <&clks IMX6SL_CLK_PLL3_USB_OTG>;
> +				};
>  			};
> 
>  			usbphy1: usbphy@20c9000 {
> diff --git a/arch/arm/boot/dts/imx6sll.dtsi b/arch/arm/boot/dts/imx6sll.dtsi
> index edd3abb..bf7f048 100644
> --- a/arch/arm/boot/dts/imx6sll.dtsi
> +++ b/arch/arm/boot/dts/imx6sll.dtsi
> @@ -105,16 +105,6 @@
>  		clock-output-names = "ipp_di1";
>  	};
> 
> -	tempmon: temperature-sensor {
> -		compatible = "fsl,imx6sll-tempmon", "fsl,imx6sx-tempmon";
> -		interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
> -		interrupt-parent = <&gpc>;
> -		fsl,tempmon = <&anatop>;
> -		nvmem-cells = <&tempmon_calib>, <&tempmon_temp_grade>;
> -		nvmem-cell-names = "calib", "temp_grade";
> -		clocks = <&clks IMX6SLL_CLK_PLL3_USB_OTG>;
> -	};
> -
>  	soc {
>  		#address-cells = <1>;
>  		#size-cells = <1>;
> @@ -531,6 +521,16 @@
>  					anatop-max-voltage = <3400000>;
>  					anatop-enable-bit = <0>;
>  				};
> +
> +				tempmon: temperature-sensor {
> +					compatible = "fsl,imx6sll-tempmon",
> "fsl,imx6sx-tempmon";
> +					interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
> +					interrupt-parent = <&gpc>;
> +					fsl,tempmon = <&anatop>;
> +					nvmem-cells = <&tempmon_calib>,
> <&tempmon_temp_grade>;
> +					nvmem-cell-names = "calib", "temp_grade";
> +					clocks = <&clks IMX6SLL_CLK_PLL3_USB_OTG>;
> +				};
>  			};
> 
>  			usbphy1: usb-phy@20c9000 {
> diff --git a/arch/arm/boot/dts/imx6sx.dtsi b/arch/arm/boot/dts/imx6sx.dtsi
> index e031337..8c4473b 100644
> --- a/arch/arm/boot/dts/imx6sx.dtsi
> +++ b/arch/arm/boot/dts/imx6sx.dtsi
> @@ -134,16 +134,6 @@
>  		clock-output-names = "anaclk2";
>  	};
> 
> -	tempmon: tempmon {
> -		compatible = "fsl,imx6sx-tempmon", "fsl,imx6q-tempmon";
> -		interrupt-parent = <&gpc>;
> -		interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
> -		fsl,tempmon = <&anatop>;
> -		nvmem-cells = <&tempmon_calib>, <&tempmon_temp_grade>;
> -		nvmem-cell-names = "calib", "temp_grade";
> -		clocks = <&clks IMX6SX_CLK_PLL3_USB_OTG>;
> -	};
> -
>  	pmu {
>  		compatible = "arm,cortex-a9-pmu";
>  		interrupt-parent = <&gpc>;
> @@ -696,6 +686,16 @@
>  					anatop-min-voltage = <725000>;
>  					anatop-max-voltage = <1450000>;
>  				};
> +
> +				tempmon: tempmon {
> +					compatible = "fsl,imx6sx-tempmon",
> "fsl,imx6q-tempmon";
> +					interrupt-parent = <&gpc>;
> +					interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
> +					fsl,tempmon = <&anatop>;
> +					nvmem-cells = <&tempmon_calib>,
> <&tempmon_temp_grade>;
> +					nvmem-cell-names = "calib", "temp_grade";
> +					clocks = <&clks IMX6SX_CLK_PLL3_USB_OTG>;
> +				};
>  			};
> 
>  			usbphy1: usbphy@20c9000 {
> diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
> index 35e7301..505fd4f 100644
> --- a/arch/arm/boot/dts/imx6ul.dtsi
> +++ b/arch/arm/boot/dts/imx6ul.dtsi
> @@ -131,16 +131,6 @@
>  		clock-output-names = "ipp_di1";
>  	};
> 
> -	tempmon: tempmon {
> -		compatible = "fsl,imx6ul-tempmon", "fsl,imx6sx-tempmon";
> -		interrupt-parent = <&gpc>;
> -		interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
> -		fsl,tempmon = <&anatop>;
> -		nvmem-cells = <&tempmon_calib>, <&tempmon_temp_grade>;
> -		nvmem-cell-names = "calib", "temp_grade";
> -		clocks = <&clks IMX6UL_CLK_PLL3_USB_OTG>;
> -	};
> -
>  	pmu {
>  		compatible = "arm,cortex-a7-pmu";
>  		interrupt-parent = <&gpc>;
> @@ -611,6 +601,16 @@
>  					anatop-min-voltage = <725000>;
>  					anatop-max-voltage = <1450000>;
>  				};
> +
> +				tempmon: tempmon {
> +					compatible = "fsl,imx6ul-tempmon",
> "fsl,imx6sx-tempmon";
> +					interrupt-parent = <&gpc>;
> +					interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
> +					fsl,tempmon = <&anatop>;
> +					nvmem-cells = <&tempmon_calib>,
> <&tempmon_temp_grade>;
> +					nvmem-cell-names = "calib", "temp_grade";
> +					clocks = <&clks IMX6UL_CLK_PLL3_USB_OTG>;
> +				};
>  			};
> 
>  			usbphy1: usbphy@20c9000 {
> diff --git a/arch/arm/boot/dts/imx7s.dtsi b/arch/arm/boot/dts/imx7s.dtsi index
> 8bac491..3904558 100644
> --- a/arch/arm/boot/dts/imx7s.dtsi
> +++ b/arch/arm/boot/dts/imx7s.dtsi
> @@ -147,16 +147,6 @@
>  		};
>  	};
> 
> -	tempmon: tempmon {
> -		compatible = "fsl,imx7d-tempmon";
> -		interrupt-parent = <&gpc>;
> -		interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
> -		fsl,tempmon = <&anatop>;
> -		nvmem-cells = <&tempmon_calib>,	<&fuse_grade>;
> -		nvmem-cell-names = "calib", "temp_grade";
> -		clocks = <&clks IMX7D_PLL_SYS_MAIN_CLK>;
> -	};
> -
>  	timer {
>  		compatible = "arm,armv7-timer";
>  		interrupt-parent = <&intc>;
> @@ -586,6 +576,16 @@
>  					anatop-max-voltage = <1300000>;
>  					anatop-enable-bit = <0>;
>  				};
> +
> +				tempmon: tempmon {
> +					compatible = "fsl,imx7d-tempmon";
> +					interrupt-parent = <&gpc>;
> +					interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
> +					fsl,tempmon = <&anatop>;
> +					nvmem-cells = <&tempmon_calib>,
> 	<&fuse_grade>;
> +					nvmem-cell-names = "calib", "temp_grade";
> +					clocks = <&clks IMX7D_PLL_SYS_MAIN_CLK>;
> +				};
>  			};
> 
>  			snvs: snvs@30370000 {
> --
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
