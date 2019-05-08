Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E5E217311
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 10:01:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KTzSuxErT5RxpVXoneNwguH7P1tuTKLlnNgJKet13iE=; b=Cu06/vNBXdvUA2
	xVPfNAOeW3IPdbAQ1yagLl4coIEqI8nUZFf67ZPdEf9RTp6A1ZbQgXU3CXqC/RSI3SOnR85R5AQjX
	ULZ2Z0Gcp12dVN4PeC6xvf6bEEOojV6FBQAuzLWZ1pZqEDK0/82J9NaIGqHVosQq949gvAoPg5Vcx
	ZFcs0uaa1R52DBMKw+jTBHLCuLcKJyiY7KfSol4cfCeDg6klHY9Q9Qg/fslPeKNgnckhO/A60JAI8
	deraQEwjOVO/B8SDtxaSKXQyF2jKt8xeZ9r/zQW+Qa4L61XO4W3mNNw5XyYc+VPyjR7E5pCOVpW9L
	EVacvgtxn4DD/HkuTyqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOHW5-0005OT-DL; Wed, 08 May 2019 08:01:29 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOHVx-0005Ny-Sp; Wed, 08 May 2019 08:01:23 +0000
X-UUID: a95dc604ce5c4f428a353ea3c0dd2b27-20190508
X-UUID: a95dc604ce5c4f428a353ea3c0dd2b27-20190508
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <ran.bi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1667288180; Wed, 08 May 2019 00:00:44 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 8 May 2019 01:00:42 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by mtkmbs08n2.mediatek.inc
 (172.21.101.56) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Wed, 8 May 2019 16:00:40 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 8 May 2019 16:00:39 +0800
Message-ID: <1557302439.22641.4.camel@mhfsdcap03>
Subject: Re: [PATCH v3 08/10] arm64: dts: mt6358: add PMIC MT6358 related nodes
From: Ran Bi <ran.bi@mediatek.com>
To: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Date: Wed, 8 May 2019 16:00:39 +0800
In-Reply-To: <20190503093117.54830-9-hsin-hsiung.wang@mediatek.com>
References: <20190503093117.54830-1-hsin-hsiung.wang@mediatek.com>
 <20190503093117.54830-9-hsin-hsiung.wang@mediatek.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: AD1F05E2E033372105E63A636EB902B46C8DA9CE0938F5E6DBD825BE23C881332000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_010121_938205_B06CCA54 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark
 Rutland <mark.rutland@arm.com>, Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-kernel@vger.kernel.org, Mark
 Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Eddie Huang <eddie.huang@mediatek.com>, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-05-03 at 17:31 +0800, Hsin-Hsiung Wang wrote:
> add PMIC MT6358 related nodes which is for MT8183 platform
> 
> Signed-off-by: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
> ---
>  arch/arm64/boot/dts/mediatek/mt6358.dtsi | 358 +++++++++++++++++++++++
>  1 file changed, 358 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt6358.dtsi
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt6358.dtsi b/arch/arm64/boot/dts/mediatek/mt6358.dtsi
> new file mode 100644
> index 000000000000..74da59de3794
> --- /dev/null
> +++ b/arch/arm64/boot/dts/mediatek/mt6358.dtsi
> @@ -0,0 +1,358 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> +/*
> + * Copyright (c) 2019 MediaTek Inc.
> + */
> +
> +&pwrap {
> +	pmic: mt6358 {
> +		compatible = "mediatek,mt6358";
> +		interrupt-controller;
> +		interrupt-parent = <&pio>;
> +		interrupts = <182 IRQ_TYPE_LEVEL_HIGH>;
> +		#interrupt-cells = <2>;
> +
> +		mt6358codec: mt6358codec {
> +			compatible = "mediatek,mt6358-sound";
> +		};
> +
> +		mt6358regulator: mt6358regulator {
> +			compatible = "mediatek,mt6358-regulator";
> +
> +			mt6358_vdram1_reg: buck_vdram1 {
> +				regulator-compatible = "buck_vdram1";
> +				regulator-name = "vdram1";
> +				regulator-min-microvolt = <500000>;
> +				regulator-max-microvolt = <2087500>;
> +				regulator-ramp-delay = <12500>;
> +				regulator-enable-ramp-delay = <0>;
> +				regulator-always-on;
> +				regulator-allowed-modes = <0 1>;
> +			};
> +
> +			mt6358_vcore_reg: buck_vcore {
> +				regulator-name = "vcore";
> +				regulator-min-microvolt = <500000>;
> +				regulator-max-microvolt = <1293750>;
> +				regulator-ramp-delay = <6250>;
> +				regulator-enable-ramp-delay = <200>;
> +				regulator-always-on;
> +				regulator-allowed-modes = <0 1>;
> +			};
> +
> +			mt6358_vpa_reg: buck_vpa {
> +				regulator-name = "vpa";
> +				regulator-min-microvolt = <500000>;
> +				regulator-max-microvolt = <3650000>;
> +				regulator-ramp-delay = <50000>;
> +				regulator-enable-ramp-delay = <250>;
> +				regulator-allowed-modes = <0 1>;
> +			};
> +
> +			mt6358_vproc11_reg: buck_vproc11 {
> +				regulator-name = "vproc11";
> +				regulator-min-microvolt = <500000>;
> +				regulator-max-microvolt = <1293750>;
> +				regulator-ramp-delay = <6250>;
> +				regulator-enable-ramp-delay = <200>;
> +				regulator-always-on;
> +				regulator-allowed-modes = <0 1>;
> +			};
> +
> +			mt6358_vproc12_reg: buck_vproc12 {
> +				regulator-name = "vproc12";
> +				regulator-min-microvolt = <500000>;
> +				regulator-max-microvolt = <1293750>;
> +				regulator-ramp-delay = <6250>;
> +				regulator-enable-ramp-delay = <200>;
> +				regulator-always-on;
> +				regulator-allowed-modes = <0 1>;
> +			};
> +
> +			mt6358_vgpu_reg: buck_vgpu {
> +				regulator-name = "vgpu";
> +				regulator-min-microvolt = <500000>;
> +				regulator-max-microvolt = <1293750>;
> +				regulator-ramp-delay = <6250>;
> +				regulator-enable-ramp-delay = <200>;
> +				regulator-allowed-modes = <0 1>;
> +			};
> +
> +			mt6358_vs2_reg: buck_vs2 {
> +				regulator-name = "vs2";
> +				regulator-min-microvolt = <500000>;
> +				regulator-max-microvolt = <2087500>;
> +				regulator-ramp-delay = <12500>;
> +				regulator-enable-ramp-delay = <0>;
> +				regulator-always-on;
> +			};
> +
> +			mt6358_vmodem_reg: buck_vmodem {
> +				regulator-name = "vmodem";
> +				regulator-min-microvolt = <500000>;
> +				regulator-max-microvolt = <1293750>;
> +				regulator-ramp-delay = <6250>;
> +				regulator-enable-ramp-delay = <900>;
> +				regulator-always-on;
> +				regulator-allowed-modes = <0 1>;
> +			};
> +
> +			mt6358_vs1_reg: buck_vs1 {
> +				regulator-name = "vs1";
> +				regulator-min-microvolt = <1000000>;
> +				regulator-max-microvolt = <2587500>;
> +				regulator-ramp-delay = <12500>;
> +				regulator-enable-ramp-delay = <0>;
> +				regulator-always-on;
> +			};
> +
> +			mt6358_vdram2_reg: ldo_vdram2 {
> +				regulator-name = "vdram2";
> +				regulator-min-microvolt = <600000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-enable-ramp-delay = <3300>;
> +			};
> +
> +			mt6358_vsim1_reg: ldo_vsim1 {
> +				regulator-name = "vsim1";
> +				regulator-min-microvolt = <1700000>;
> +				regulator-max-microvolt = <3100000>;
> +				regulator-enable-ramp-delay = <540>;
> +			};
> +
> +			mt6358_vibr_reg: ldo_vibr {
> +				regulator-name = "vibr";
> +				regulator-min-microvolt = <1200000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-enable-ramp-delay = <60>;
> +			};
> +
> +			mt6358_vrf12_reg: ldo_vrf12 {
> +				compatible = "regulator-fixed";
> +				regulator-name = "vrf12";
> +				regulator-min-microvolt = <1200000>;
> +				regulator-max-microvolt = <1200000>;
> +				regulator-enable-ramp-delay = <120>;
> +			};
> +
> +			mt6358_vio18_reg: ldo_vio18 {
> +				compatible = "regulator-fixed";
> +				regulator-name = "vio18";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-enable-ramp-delay = <2700>;
> +				regulator-always-on;
> +			};
> +
> +			mt6358_vusb_reg: ldo_vusb {
> +				regulator-name = "vusb";
> +				regulator-min-microvolt = <3000000>;
> +				regulator-max-microvolt = <3100000>;
> +				regulator-enable-ramp-delay = <270>;
> +				regulator-always-on;
> +			};
> +
> +			mt6358_vcamio_reg: ldo_vcamio {
> +				compatible = "regulator-fixed";
> +				regulator-name = "vcamio";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-enable-ramp-delay = <270>;
> +			};
> +
> +			mt6358_vcamd_reg: ldo_vcamd {
> +				regulator-name = "vcamd";
> +				regulator-min-microvolt = <900000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-enable-ramp-delay = <270>;
> +			};
> +
> +			mt6358_vcn18_reg: ldo_vcn18 {
> +				compatible = "regulator-fixed";
> +				regulator-name = "vcn18";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-enable-ramp-delay = <270>;
> +			};
> +
> +			mt6358_vfe28_reg: ldo_vfe28 {
> +				compatible = "regulator-fixed";
> +				regulator-name = "vfe28";
> +				regulator-min-microvolt = <2800000>;
> +				regulator-max-microvolt = <2800000>;
> +				regulator-enable-ramp-delay = <270>;
> +			};
> +
> +			mt6358_vsram_proc11_reg: ldo_vsram_proc11 {
> +				regulator-name = "vsram_proc11";
> +				regulator-min-microvolt = <500000>;
> +				regulator-max-microvolt = <1293750>;
> +				regulator-ramp-delay = <6250>;
> +				regulator-enable-ramp-delay = <240>;
> +				regulator-always-on;
> +			};
> +
> +			mt6358_vcn28_reg: ldo_vcn28 {
> +				compatible = "regulator-fixed";
> +				regulator-name = "vcn28";
> +				regulator-min-microvolt = <2800000>;
> +				regulator-max-microvolt = <2800000>;
> +				regulator-enable-ramp-delay = <270>;
> +			};
> +
> +			mt6358_vsram_others_reg: ldo_vsram_others {
> +				regulator-name = "vsram_others";
> +				regulator-min-microvolt = <500000>;
> +				regulator-max-microvolt = <1293750>;
> +				regulator-ramp-delay = <6250>;
> +				regulator-enable-ramp-delay = <240>;
> +				regulator-always-on;
> +			};
> +
> +			mt6358_vsram_gpu_reg: ldo_vsram_gpu {
> +				regulator-name = "vsram_gpu";
> +				regulator-min-microvolt = <500000>;
> +				regulator-max-microvolt = <1293750>;
> +				regulator-ramp-delay = <6250>;
> +				regulator-enable-ramp-delay = <240>;
> +			};
> +
> +			mt6358_vxo22_reg: ldo_vxo22 {
> +				compatible = "regulator-fixed";
> +				regulator-name = "vxo22";
> +				regulator-min-microvolt = <2200000>;
> +				regulator-max-microvolt = <2200000>;
> +				regulator-enable-ramp-delay = <120>;
> +				regulator-always-on;
> +			};
> +
> +			mt6358_vefuse_reg: ldo_vefuse {
> +				regulator-name = "vefuse";
> +				regulator-min-microvolt = <1700000>;
> +				regulator-max-microvolt = <1900000>;
> +				regulator-enable-ramp-delay = <270>;
> +			};
> +
> +			mt6358_vaux18_reg: ldo_vaux18 {
> +				compatible = "regulator-fixed";
> +				regulator-name = "vaux18";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-enable-ramp-delay = <270>;
> +			};
> +
> +			mt6358_vmch_reg: ldo_vmch {
> +				regulator-name = "vmch";
> +				regulator-min-microvolt = <2900000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-enable-ramp-delay = <60>;
> +			};
> +
> +			mt6358_vbif28_reg: ldo_vbif28 {
> +				compatible = "regulator-fixed";
> +				regulator-name = "vbif28";
> +				regulator-min-microvolt = <2800000>;
> +				regulator-max-microvolt = <2800000>;
> +				regulator-enable-ramp-delay = <270>;
> +			};
> +
> +			mt6358_vsram_proc12_reg: ldo_vsram_proc12 {
> +				regulator-name = "vsram_proc12";
> +				regulator-min-microvolt = <500000>;
> +				regulator-max-microvolt = <1293750>;
> +				regulator-ramp-delay = <6250>;
> +				regulator-enable-ramp-delay = <240>;
> +				regulator-always-on;
> +			};
> +
> +			mt6358_vcama1_reg: ldo_vcama1 {
> +				regulator-name = "vcama1";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <3000000>;
> +				regulator-enable-ramp-delay = <270>;
> +			};
> +
> +			mt6358_vemc_reg: ldo_vemc {
> +				regulator-name = "vemc";
> +				regulator-min-microvolt = <2900000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-enable-ramp-delay = <60>;
> +				regulator-always-on;
> +			};
> +
> +			mt6358_vio28_reg: ldo_vio28 {
> +				compatible = "regulator-fixed";
> +				regulator-name = "vio28";
> +				regulator-min-microvolt = <2800000>;
> +				regulator-max-microvolt = <2800000>;
> +				regulator-enable-ramp-delay = <270>;
> +			};
> +
> +			mt6358_va12_reg: ldo_va12 {
> +				compatible = "regulator-fixed";
> +				regulator-name = "va12";
> +				regulator-min-microvolt = <1200000>;
> +				regulator-max-microvolt = <1200000>;
> +				regulator-enable-ramp-delay = <270>;
> +				regulator-always-on;
> +			};
> +
> +			mt6358_vrf18_reg: ldo_vrf18 {
> +				compatible = "regulator-fixed";
> +				regulator-name = "vrf18";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-enable-ramp-delay = <120>;
> +			};
> +
> +			mt6358_vcn33_bt_reg: ldo_vcn33_bt {
> +				regulator-name = "vcn33_bt";
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3500000>;
> +				regulator-enable-ramp-delay = <270>;
> +			};
> +
> +			mt6358_vcn33_wifi_reg: ldo_vcn33_wifi {
> +				regulator-name = "vcn33_wifi";
> +				regulator-min-microvolt = <3300000>;
> +				regulator-max-microvolt = <3500000>;
> +				regulator-enable-ramp-delay = <270>;
> +			};
> +
> +			mt6358_vcama2_reg: ldo_vcama2 {
> +				regulator-name = "vcama2";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <3000000>;
> +				regulator-enable-ramp-delay = <270>;
> +			};
> +
> +			mt6358_vmc_reg: ldo_vmc {
> +				regulator-name = "vmc";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-enable-ramp-delay = <60>;
> +			};
> +
> +			mt6358_vldo28_reg: ldo_vldo28 {
> +				regulator-name = "vldo28";
> +				regulator-min-microvolt = <2800000>;
> +				regulator-max-microvolt = <3000000>;
> +				regulator-enable-ramp-delay = <270>;
> +			};
> +
> +			mt6358_vaud28_reg: ldo_vaud28 {
> +				compatible = "regulator-fixed";
> +				regulator-name = "vaud28";
> +				regulator-min-microvolt = <2800000>;
> +				regulator-max-microvolt = <2800000>;
> +				regulator-enable-ramp-delay = <270>;
> +			};
> +
> +			mt6358_vsim2_reg: ldo_vsim2 {
> +				regulator-name = "vsim2";
> +				regulator-min-microvolt = <1700000>;
> +				regulator-max-microvolt = <3100000>;
> +				regulator-enable-ramp-delay = <540>;
> +			};
> +		};

Missing mt6358 rtc node here:
+		mt6358rtc: mt6358rtc {
+			compatible = "mediatek,mt6358-rtc";
+		};

> +	};
> +};



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
