Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D42A60CF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 07:45:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wevqn77LJkF5HJf3rHrYn5VMwuBsPlBEY4ff7/3HZeM=; b=DVN8OCycWRnS/+
	fzNNQFtSSvnsyLKZNn6wMgvbUGogUbcaTY76M/lmzOdJaZGV7Sgu2qa5bgdILEtmr2TvD9pnN1u4w
	m4Y4sOlmKaDmZani8/boiwMINBIocTPtleC43FkfGFaBgrZkaDpZUymfzhnRXwUg/xuQm2qfyJYBO
	OnpT9WYfSdQeurMja292h9Q1quMwPAdlDY4ztJC4G+fbdegnYo7GP1/0x/p8bOO+6APTYOH3hIO8w
	uJ9CPRMDyTJjydDwzsPHJL0bHk+G99/Bz8Uq9Dt26tDR55wdVeB1Dp+EBU0QLBcPEDBqjVsw+rlc9
	bIcZ+FoBCAFIpjla3vuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i51cs-0004VM-Hk; Tue, 03 Sep 2019 05:45:10 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i51cc-0004Uy-Rz
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 05:44:56 +0000
Received: by mail-pl1-x643.google.com with SMTP id gn20so7384330plb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 22:44:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Akfr1FgAlZqGtEpru1GDV2rnRouNW/v10eOChTbAGcg=;
 b=lFU2GqWzNz6gjrVI/C0fZ40kR49m/34QQ3pJtQoWuPiVCIdBhNxe2Abgzibo2udBgm
 62XtrfC8O2MTFYCDdFjtU4M24j2fiJsQrDRNXxbNHQIK+lelxM/yymsLEZqra6k8dRvF
 HdJpkMLO1/nS4z8CEH1jseh2yZV90zCk7uE8edmjPib8CwGlqu4mdpHOgKRMNhO4hxM8
 eri6DRA4v4sqvbkKpjcbDOWwfGGIllG7x08MHOPvwFyQd4v2R8cr0ELU8ZlBh0f9F7iO
 1PgI4w78/hiJfsFEsRG56xBEkCIau0bP+dspTC3X/60NPAd64S5hrG/sl2l8H+GTf6k0
 Xmsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Akfr1FgAlZqGtEpru1GDV2rnRouNW/v10eOChTbAGcg=;
 b=cDPKVePKIfvWPrwacmlP1n30qivj89zdvFp4wLlggEAR2WFnQsBHOSZ07YmxvYr5rt
 4NQdahUmS9b3F0TZhq39O1izNc3UYSOcsXIOn4wmUju+edyUwVKuy+x9Qw4jHzO9c1bz
 ylT/ltJPb4yYVo5Tj87kEYgcYLDZTPKb8Yi6zBAXE58lkMcooQ45ONNchsjwwj7yBfdB
 lm3/Lts4Sh/npULRrhsiEgwsHx5lU/vdSch23bueWxoOMcN1Cs63IOxJgOIcWg7KEb1H
 tJWgpFv9ecHsTyLYzarkWmusqy+I/Ma2ziYOJFUHzOqPuvSoFAuNg1p+c5NV7vC+esST
 arDA==
X-Gm-Message-State: APjAAAVVWgJajTY2SpQUQlXXBnWUwCxc6UiZmb0935bv2WuOWdZVvJ26
 /n0DLp2g/4ndXZRS5X8FAtJQLw==
X-Google-Smtp-Source: APXvYqxw+BD/DAWNsdAw4Byikdwt8TsI1mCgr7LpUOh7EDYLFhSmiGggf3/6iWSws6TZgRfNxR+gSw==
X-Received: by 2002:a17:902:ab86:: with SMTP id
 f6mr14049925plr.15.1567489493969; 
 Mon, 02 Sep 2019 22:44:53 -0700 (PDT)
Received: from minitux (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id s7sm5665942pjn.8.2019.09.02.22.44.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 22:44:53 -0700 (PDT)
Date: Mon, 2 Sep 2019 22:44:51 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH 1/1] arm64: dts: qcom: Add Lenovo Yoga C630
Message-ID: <20190903054451.GV6167@minitux>
References: <20190902132400.14084-1-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190902132400.14084-1-lee.jones@linaro.org>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_224454_916712_E5E092D8 
X-CRM114-Status: GOOD (  21.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, agross@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 02 Sep 06:24 PDT 2019, Lee Jones wrote:

> From: Bjorn Andersson <bjorn.andersson@linaro.org>
> 
> The Lenovo Yoga C630 is built on the SDM850 from Qualcomm, but this seem
> to be similar enough to the SDM845 that we can reuse the sdm845.dtsi.
> 
> Supported by this patch is: keyboard, battery monitoring, UFS storage,
> USB host and Bluetooth.

Applied this to next-20190829 and booted it, got a little bit of EFI FB,
then the screen goes blank and after a while I'm back in GRUB.

I've not been able to figure out what's causing this though.

Regards,
Bjorn

> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> Signed-off-by: Lee Jones <lee.jones@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/Makefile             |   1 +
>  .../boot/dts/qcom/sdm850-lenovo-yoga-c630.dts | 450 ++++++++++++++++++
>  2 files changed, 451 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 0a7e5dfce6f7..670c6c65f9e9 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -12,5 +12,6 @@ dtb-$(CONFIG_ARCH_QCOM)	+= sdm845-cheza-r2.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sdm845-cheza-r3.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sdm845-db845c.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sdm845-mtp.dtb
> +dtb-$(CONFIG_ARCH_QCOM)	+= sdm850-lenovo-yoga-c630.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs404-evb-1000.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs404-evb-4000.dtb
> diff --git a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
> new file mode 100644
> index 000000000000..3177b054035f
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
> @@ -0,0 +1,450 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Lenovo Yoga C630
> + *
> + * Copyright (c) 2019, Linaro Ltd.
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> +#include "sdm845.dtsi"
> +#include "pm8998.dtsi"
> +
> +/ {
> +	model = "Lenovo Yoga C630";
> +	compatible = "lenovo,yoga-c630", "qcom,sdm845";
> +
> +	aliases {
> +		hsuart0 = &uart6;
> +	};
> +};
> +
> +&apps_rsc {
> +	pm8998-rpmh-regulators {
> +		compatible = "qcom,pm8998-rpmh-regulators";
> +		qcom,pmic-id = "a";
> +
> +		vdd-l2-l8-l17-supply = <&vreg_s3a_1p35>;
> +		vdd-l7-l12-l14-l15-supply = <&vreg_s5a_2p04>;
> +
> +		vreg_s2a_1p125: smps2 {
> +		};
> +
> +		vreg_s3a_1p35: smps3 {
> +			regulator-min-microvolt = <1352000>;
> +			regulator-max-microvolt = <1352000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_s4a_1p8: smps4 {
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <1800000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_s5a_2p04: smps5 {
> +			regulator-min-microvolt = <2040000>;
> +			regulator-max-microvolt = <2040000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_s7a_1p025: smps7 {
> +		};
> +
> +		vdd_qusb_hs0:
> +		vdda_hp_pcie_core:
> +		vdda_mipi_csi0_0p9:
> +		vdda_mipi_csi1_0p9:
> +		vdda_mipi_csi2_0p9:
> +		vdda_mipi_dsi0_pll:
> +		vdda_mipi_dsi1_pll:
> +		vdda_qlink_lv:
> +		vdda_qlink_lv_ck:
> +		vdda_qrefs_0p875:
> +		vdda_pcie_core:
> +		vdda_pll_cc_ebi01:
> +		vdda_pll_cc_ebi23:
> +		vdda_sp_sensor:
> +		vdda_ufs1_core:
> +		vdda_ufs2_core:
> +		vdda_usb1_ss_core:
> +		vdda_usb2_ss_core:
> +		vreg_l1a_0p875: ldo1 {
> +			regulator-min-microvolt = <880000>;
> +			regulator-max-microvolt = <880000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vddpx_10:
> +		vreg_l2a_1p2: ldo2 {
> +			regulator-min-microvolt = <1200000>;
> +			regulator-max-microvolt = <1200000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +			regulator-always-on;
> +		};
> +
> +		vreg_l3a_1p0: ldo3 {
> +		};
> +
> +		vdd_wcss_cx:
> +		vdd_wcss_mx:
> +		vdda_wcss_pll:
> +		vreg_l5a_0p8: ldo5 {
> +			regulator-min-microvolt = <800000>;
> +			regulator-max-microvolt = <800000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vddpx_13:
> +		vreg_l6a_1p8: ldo6 {
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <1800000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l7a_1p8: ldo7 {
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <1800000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l8a_1p2: ldo8 {
> +		};
> +
> +		vreg_l9a_1p8: ldo9 {
> +		};
> +
> +		vreg_l10a_1p8: ldo10 {
> +		};
> +
> +		vreg_l11a_1p0: ldo11 {
> +		};
> +
> +		vdd_qfprom:
> +		vdd_qfprom_sp:
> +		vdda_apc1_cs_1p8:
> +		vdda_gfx_cs_1p8:
> +		vdda_qrefs_1p8:
> +		vdda_qusb_hs0_1p8:
> +		vddpx_11:
> +		vreg_l12a_1p8: ldo12 {
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <1800000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vddpx_2:
> +		vreg_l13a_2p95: ldo13 {
> +		};
> +
> +		vreg_l14a_1p88: ldo14 {
> +			regulator-min-microvolt = <1880000>;
> +			regulator-max-microvolt = <1880000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l15a_1p8: ldo15 {
> +		};
> +
> +		vreg_l16a_2p7: ldo16 {
> +		};
> +
> +		vreg_l17a_1p3: ldo17 {
> +			regulator-min-microvolt = <1304000>;
> +			regulator-max-microvolt = <1304000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l18a_2p7: ldo18 {
> +		};
> +
> +		vreg_l19a_3p0: ldo19 {
> +			regulator-min-microvolt = <3100000>;
> +			regulator-max-microvolt = <3108000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l20a_2p95: ldo20 {
> +			regulator-min-microvolt = <2960000>;
> +			regulator-max-microvolt = <2960000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l21a_2p95: ldo21 {
> +		};
> +
> +		vreg_l22a_2p85: ldo22 {
> +		};
> +
> +		vreg_l23a_3p3: ldo23 {
> +		};
> +
> +		vdda_qusb_hs0_3p1:
> +		vreg_l24a_3p075: ldo24 {
> +			regulator-min-microvolt = <3075000>;
> +			regulator-max-microvolt = <3083000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l25a_3p3: ldo25 {
> +			regulator-min-microvolt = <3104000>;
> +			regulator-max-microvolt = <3112000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vdda_hp_pcie_1p2:
> +		vdda_hv_ebi0:
> +		vdda_hv_ebi1:
> +		vdda_hv_ebi2:
> +		vdda_hv_ebi3:
> +		vdda_mipi_csi_1p25:
> +		vdda_mipi_dsi0_1p2:
> +		vdda_mipi_dsi1_1p2:
> +		vdda_pcie_1p2:
> +		vdda_ufs1_1p2:
> +		vdda_ufs2_1p2:
> +		vdda_usb1_ss_1p2:
> +		vdda_usb2_ss_1p2:
> +		vreg_l26a_1p2: ldo26 {
> +			regulator-min-microvolt = <1200000>;
> +			regulator-max-microvolt = <1208000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l28a_3p0: ldo28 {
> +		};
> +
> +		vreg_lvs1a_1p8: lvs1 {
> +		};
> +
> +		vreg_lvs2a_1p8: lvs2 {
> +		};
> +	};
> +};
> +
> +&apps_smmu {
> +	/* TODO: Figure out how to survive booting with this enabled */
> +	status = "disabled";
> +};
> +
> +&gcc {
> +	protected-clocks = <GCC_QSPI_CORE_CLK>,
> +			   <GCC_QSPI_CORE_CLK_SRC>,
> +			   <GCC_QSPI_CNOC_PERIPH_AHB_CLK>;
> +};
> +
> +&i2c1 {
> +	status = "okay";
> +	clock-frequency = <400000>;
> +
> +	battery@70 {
> +		compatible = "some,battery";
> +		reg = <0x70>;
> +	};
> +};
> +
> +&i2c3 {
> +	status = "okay";
> +	clock-frequency = <400000>;
> +
> +	hid@15 {
> +		compatible = "hid-over-i2c";
> +		reg = <0x15>;
> +		hid-descr-addr = <0x1>;
> +
> +		interrupts-extended = <&tlmm 37 IRQ_TYPE_EDGE_RISING>;
> +	};
> +
> +	hid@2c {
> +		compatible = "hid-over-i2c";
> +		reg = <0x2c>;
> +		hid-descr-addr = <0x20>;
> +
> +		interrupts-extended = <&tlmm 37 IRQ_TYPE_EDGE_RISING>;
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&i2c2_hid_active>;
> +	};
> +};
> +
> +&i2c5 {
> +	status = "okay";
> +	clock-frequency = <400000>;
> +
> +	hid@10 {
> +		compatible = "hid-over-i2c";
> +		reg = <0x10>;
> +		hid-descr-addr = <0x1>;
> +
> +		interrupts-extended = <&tlmm 125 IRQ_TYPE_EDGE_FALLING>;
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&i2c6_hid_active>;
> +	};
> +};
> +
> +&i2c11 {
> +	status = "okay";
> +	clock-frequency = <400000>;
> +
> +	hid@5c {
> +		compatible = "hid-over-i2c";
> +		reg = <0x5c>;
> +		hid-descr-addr = <0x1>;
> +
> +		interrupts-extended = <&tlmm 92 IRQ_TYPE_LEVEL_LOW>;
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&i2c12_hid_active>;
> +	};
> +};
> +
> +&qupv3_id_0 {
> +	status = "okay";
> +};
> +
> +&qupv3_id_1 {
> +	status = "okay";
> +};
> +
> +&tlmm {
> +	gpio-reserved-ranges = <0 4>, <81 4>;
> +
> +	i2c2_hid_active: i2c2-hid-active {
> +		pins = <37>;
> +		function = "gpio";
> +
> +		input-enable;
> +		bias-pull-up;
> +		drive-strength = <2>;
> +	};
> +
> +	i2c6_hid_active: i2c6-hid-active {
> +		pins = <125>;
> +		function = "gpio";
> +
> +		input-enable;
> +		bias-pull-up;
> +		drive-strength = <2>;
> +	};
> +
> +	i2c12_hid_active: i2c12-hid-active {
> +		pins = <92>;
> +		function = "gpio";
> +
> +		input-enable;
> +		bias-pull-up;
> +		drive-strength = <2>;
> +	};
> +};
> +
> +&uart6 {
> +       status = "okay";
> +
> +       bluetooth {
> +	       compatible = "qcom,wcn3990-bt";
> +
> +	       vddio-supply = <&vreg_s4a_1p8>;
> +	       vddxo-supply = <&vreg_l7a_1p8>;
> +	       vddrf-supply = <&vreg_l17a_1p3>;
> +	       vddch0-supply = <&vreg_l25a_3p3>;
> +	       max-speed = <3200000>;
> +       };
> +};
> +
> +&ufs_mem_hc {
> +	status = "okay";
> +
> +	vcc-supply = <&vreg_l20a_2p95>;
> +	vcc-max-microamp = <600000>;
> +};
> +
> +&ufs_mem_phy {
> +	status = "okay";
> +
> +	vdda-phy-supply = <&vdda_ufs1_core>;
> +	vdda-pll-supply = <&vdda_ufs1_1p2>;
> +};
> +
> +&usb_1 {
> +	status = "okay";
> +};
> +
> +&usb_1_dwc3 {
> +	dr_mode = "host";
> +};
> +
> +&usb_1_hsphy {
> +	status = "okay";
> +
> +	vdd-supply = <&vdda_usb1_ss_core>;
> +	vdda-pll-supply = <&vdda_qusb_hs0_1p8>;
> +	vdda-phy-dpdm-supply = <&vdda_qusb_hs0_3p1>;
> +
> +	qcom,imp-res-offset-value = <8>;
> +	qcom,hstx-trim-value = <QUSB2_V2_HSTX_TRIM_21_6_MA>;
> +	qcom,preemphasis-level = <QUSB2_V2_PREEMPHASIS_5_PERCENT>;
> +	qcom,preemphasis-width = <QUSB2_V2_PREEMPHASIS_WIDTH_HALF_BIT>;
> +};
> +
> +&usb_1_qmpphy {
> +	status = "okay";
> +
> +	vdda-phy-supply = <&vdda_usb1_ss_1p2>;
> +	vdda-pll-supply = <&vdda_usb1_ss_core>;
> +};
> +
> +&usb_2 {
> +	status = "okay";
> +};
> +
> +&usb_2_dwc3 {
> +	dr_mode = "host";
> +};
> +
> +&usb_2_hsphy {
> +	status = "okay";
> +
> +	vdd-supply = <&vdda_usb2_ss_core>;
> +	vdda-pll-supply = <&vdda_qusb_hs0_1p8>;
> +	vdda-phy-dpdm-supply = <&vdda_qusb_hs0_3p1>;
> +
> +	qcom,imp-res-offset-value = <8>;
> +	qcom,hstx-trim-value = <QUSB2_V2_HSTX_TRIM_22_8_MA>;
> +};
> +
> +&usb_2_qmpphy {
> +	status = "okay";
> +
> +	vdda-phy-supply = <&vdda_usb2_ss_1p2>;
> +	vdda-pll-supply = <&vdda_usb2_ss_core>;
> +};
> +
> +&qup_i2c12_default {
> +	drive-strength = <2>;
> +	bias-disable;
> +};
> +
> +&qup_uart6_default {
> +       pinmux {
> +               pins = "gpio45", "gpio46", "gpio47", "gpio48";
> +               function = "qup6";
> +       };
> +
> +       cts {
> +	       pins = "gpio45";
> +	       bias-pull-down;
> +       };
> +
> +       rts-tx {
> +	       pins = "gpio46", "gpio47";
> +	       drive-strength = <2>;
> +	       bias-disable;
> +       };
> +
> +       rx {
> +	       pins = "gpio48";
> +	       bias-pull-up;
> +       };
> +};
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
