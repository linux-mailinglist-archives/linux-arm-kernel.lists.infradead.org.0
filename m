Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E768A182874
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 06:35:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bT7dXyiuRQThGcjnw69w5z4SJGyA6TEV53K84Xz0cT8=; b=ZaUCvlgxihA+Ml
	7NRNdxdHvEiI7xWewwWdH4txT5ykRybmdNgk/VIu/jofSa/Consq04Z8Mr6Z5GidM5LTF3TXW7XPA
	QgAMUteW2S9GYfMWxUj2q0M1xTvvGc95TszHAZTIKeVuhbLuakrtCHGisnDdacJDbDPtcoNvohg69
	JikZpu6pWy5uPN0r/dK/eu7COZMQ7rYZURsjU1SQNe2MwhcrV1y9999bNTQYZcI+myMwffgcwKyqs
	awhFEakoZTZ8xGphsbrbQYYEhJOfUyX4Dl1unUE/7VPuy9rv33tzVNUwVI4TSytme5xgvcwsxaLeb
	fl3eG3DHp9HI8HShVXIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCGV2-0000QD-FP; Thu, 12 Mar 2020 05:35:16 +0000
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCGUk-0000PH-EN
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 05:35:00 +0000
Received: by mail-pj1-x1032.google.com with SMTP id u10so2071210pjy.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 22:34:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=JaXfJMGNIYn5Lb0+1RqqGDovkXb2uNycogqYDrktXZw=;
 b=O8dbXebwkbLoCEM9jI9xjgbyFVEfVo3jrzcmqVMh8x1jJJAb823F9E9pGQTyppxEAV
 C7qPh6kPR5FV2mx/dKUKpY3risPhXv/HfDl29fIK8IAfPgGYcsUgGjsxKTYJ0lsnZu9a
 hTRXsfJwtsUbhXEL8GXe9VIDOmrYDfq9AX2AWTy5+TsdjaoSKh51bnbxJjdMpjxeEbhH
 cauhfGWnsMzLX61ZnxFTYAXyWr4tGLDFUYwEbLOOKUphFQfozazGfaKA1ZcUTknapVol
 /fsY9DHBTA98Kbcr18mfJx6/5iK76QGuq/saDi5NTSjgQA5vwKD5FsWcJi6X86kYmr8u
 Ulwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=JaXfJMGNIYn5Lb0+1RqqGDovkXb2uNycogqYDrktXZw=;
 b=VXC4FP+tq4h8F40enC/Pk0q3OnavlcSROmb2tTWHuF772vum63VHc1jzN5QWWc/TRz
 mo/4kigEaNxNZYaWRX9BF1H0x6CWig2Yi26NxkjcKrwy/eRoLxXOaxwq/cA4FIptpmDb
 e+7kFX8VcRWIHO1LSEf6ir85vSGBozTPTBhHoyKtSqVpndiUpNe2iNgOyhaa2ljO/KSz
 WjYeSeZVea4RsLyQ2KFhebMOUPaM+v9ShfvLEOAA0ngU7vtYgWxtNfSVnksvvjj7ZqQt
 hpuASwO+e1wa3y1n74hBp//SLWpUNHLwvTlnlT4sVHtyCVa89i1WBBpEBxldo4AdQ7QF
 o9Ew==
X-Gm-Message-State: ANhLgQ3mhMwHaGOvesmtOLsTv0KrJMEeg6xo+wbzBbMPdylud2BzCLGl
 c/QwYhBmqaQUMfpUxsNj4Ee1ew==
X-Google-Smtp-Source: ADFU+vukyAXi4UgCCPp98RxD5IJ56W1jVeV8iDXBCB0EKjhVWkWtC0DhgvpF27wFMNHlXjQSSVR4hw==
X-Received: by 2002:a17:902:be03:: with SMTP id
 r3mr6402366pls.137.1583991297373; 
 Wed, 11 Mar 2020 22:34:57 -0700 (PDT)
Received: from yoga (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id j23sm2386311pfi.203.2020.03.11.22.34.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 22:34:56 -0700 (PDT)
Date: Wed, 11 Mar 2020 22:34:54 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Robert Foss <robert.foss@linaro.org>
Subject: Re: [v1 5/6] arm64: dts: sdm845-db845c: Add ov8856 & ov7251 camera
 nodes
Message-ID: <20200312053454.GX264362@yoga>
References: <20200311123501.18202-1-robert.foss@linaro.org>
 <20200311123501.18202-6-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311123501.18202-6-robert.foss@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_223458_517632_7A3B43C5 
X-CRM114-Status: GOOD (  26.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1032 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Loic Poulain <loic.poulain@linaro.org>, Anson.Huang@nxp.com,
 catalin.marinas@arm.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 marcin.juszkiewicz@linaro.org, dinguyen@kernel.org, agross@kernel.org,
 maxime@cerno.tech, linux-arm-msm@vger.kernel.org, olof@lixom.net,
 shawnguo@kernel.org, leonard.crestez@nxp.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 11 Mar 05:35 PDT 2020, Robert Foss wrote:

> Enable the ov8856 main camera and the ov7251 b/w tracking camera
> used on the Qualcomm RB3 kit.
> 
> Currently the camera nodes have not yet been attached to an to a
> CSI2 endpoint, since no driver currently supports the ISP that the the
> SDM845/db845c ships with.
> 
> Signed-off-by: Robert Foss <robert.foss@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-db845c.dts | 239 +++++++++++++++++++++
>  1 file changed, 239 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
> index e8c056d02ace..660550197ce9 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
> @@ -110,6 +110,53 @@
>  		// enable-active-high;
>  	};
>  
> +	cam0_dvdd_1v2: reg_cam0_dvdd_1v2 {

cam0_dvdd_1v2: cam0-dvdd-1v2 {

> +		compatible = "regulator-fixed";
> +		regulator-name = "CAM0_DVDD_1V2";
> +		regulator-min-microvolt = <1200000>;
> +		regulator-max-microvolt = <1200000>;
> +		enable-active-high;
> +		gpio = <&pm8998_gpio 12 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&cam0_dvdd_1v2_en_default>;
> +		vin-supply = <&vbat>;
> +	};
> +
> +	cam0_avdd_2v8: reg_cam0_avdd_2v8 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "CAM0_AVDD_2V8";
> +		regulator-min-microvolt = <2800000>;
> +		regulator-max-microvolt = <2800000>;
> +		enable-active-high;
> +		gpio = <&pm8998_gpio 10 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&cam0_avdd_2v8_en_default>;
> +		vin-supply = <&vbat>;
> +	};
> +
> +	/* This regulator is enabled when the VREG_LVS1A_1P8 trace is enabled */
> +	cam3_avdd_2v8: reg_cam3_avdd_2v8 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "CAM3_AVDD_2V8";
> +		regulator-min-microvolt = <2800000>;
> +		regulator-max-microvolt = <2800000>;
> +		regulator-always-on;
> +		vin-supply = <&vbat>;
> +	};
> +
> +	/* This regulator does not really exits, but a 'vddd-supply' is
> +	 * required for the ov7251 driver, but no 'vddd' regulator is used
> +	 * in the schematic
> +	 */

Looking at the driver you should be able to just omit vddd-supply from
the DT node, in which case the driver will get a dummy regulator and
should function properly.

Presumably you can then skip defining this dummy regulator as well.

> +	cam3_vddd_1v2: reg_cam3_vddd_1v2 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "CAM3_VDDD_1V2_DUMMY";
> +		regulator-min-microvolt = <1200000>;
> +		regulator-max-microvolt = <1200000>;
> +		regulator-always-on;
> +		vin-supply = <&vbat>;
> +	};
> +
>  	pcie0_3p3v_dual: vldo-3v3-regulator {
>  		compatible = "regulator-fixed";
>  		regulator-name = "VLDO_3V3";
> @@ -406,6 +453,81 @@
>  };
>  
>  &tlmm {
> +	pcie0_default_state: pcie0-default {
> +		clkreq {
> +			pins = "gpio36";
> +			function = "pci_e0";
> +			bias-pull-up;
> +		};
> +
> +		reset-n {
> +			pins = "gpio35";
> +			function = "gpio";
> +
> +			drive-strength = <2>;
> +			output-low;
> +			bias-pull-down;
> +		};
> +
> +		wake-n {
> +			pins = "gpio37";
> +			function = "gpio";
> +
> +			drive-strength = <2>;
> +			bias-pull-up;
> +		};
> +	};

This looks like leftovers from your workspace.

> +
> +	cam0_default: cam0_default {
> +		mux_rst {

Please combine *_rst into one "rst" subnode and *_mclk0 into a mclk {}.

> +			function = "gpio";
> +			pins = "gpio9";
> +		};
> +		config_rst {
> +			pins = "gpio9";
> +			drive-strength = <16>;
> +			bias-disable;
> +		};
> +
> +		mux_mclk0 {
> +			function = "cam_mclk";
> +			pins = "gpio13";
> +		};
> +		config_mclk0 {
> +			pins = "gpio13";
> +			drive-strength = <16>;
> +			bias-disable;
> +		};
> +	};
> +
> +	cam3_default: cam3_default {

Ditto.

Also, please check the indentation of this block.

> +			mux_rst {
> +				function = "gpio";
> +				pins = "gpio21";
> +			};
> +			config_rst {
> +				pins = "gpio21";
> +				drive-strength = <16>;
> +				bias-disable;
> +			};
> +
> +			mux_mclk3 {
> +				function = "cam_mclk";
> +				pins = "gpio16";
> +			};
> +			config_mclk3 {
> +				pins = "gpio16";
> +				drive-strength = <16>;
> +				bias-disable;
> +			};
> +	};
> +
> +	lt9611_irq_pin: lt9611-irq {
> +		pins = "gpio84";
> +		function = "gpio";
> +		bias-disable;
> +	};

This node shouldn't be here either.

> +
>  	pcie0_pwren_state: pcie0-pwren {
>  		pins = "gpio90";
>  		function = "gpio";
> @@ -612,8 +734,125 @@
>  		"PM845_GPIO24",
>  		"OPTION2",
>  		"PM845_SLB";
> +
> +	cam0_dvdd_1v2_en_default: cam0_dvdd_1v2_en_pinctrl {

Use '-' in the node name, and you can drop the _pinctrl suffix, given
that the name only has to be unique in this parent node.

> +		pins = "gpio12";
> +		function = "normal";
> +
> +		bias-pull-up;
> +		drive-push-pull;
> +		qcom,drive-strength = <PMIC_GPIO_STRENGTH_HIGH>;
> +	};
> +
> +	cam0_avdd_2v8_en_default: cam0_avdd_2v8_en_pinctrl {
> +		pins = "gpio10";
> +		function = "normal";
> +
> +		bias-pull-up;
> +		drive-push-pull;
> +		qcom,drive-strength = <PMIC_GPIO_STRENGTH_HIGH>;
> +	};
>  };
>  
>  &cci {
>  	status = "ok";
> +
> +	i2c-bus@0 {

Please reference this by label instead.

> +		cam0@10 {

camera@10

> +			compatible = "ovti,ov8856";
> +
> +			/* The Qualcomm RB3 camera mezzanine schematic lists
> +			 * 0x20 as I2C address of this device, but the Linux
> +			 * kernel documentation lists 0x10 I2C address.
> +			 */

This is a  normal discrepancy in how different people lists
addresses. Feel free to omit this comment.

> +			reg = <0x10>;
> +
> +			// CAM0_RST_N
> +			reset-gpios = <&tlmm 9 GPIO_ACTIVE_HIGH>;
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&cam0_default>;
> +			gpios = <&tlmm 13 0>,
> +				<&tlmm 9 0>;

s/0/GPIO_ACTIVE_HIGH/g

> +
> +			clocks = <&clock_camcc CAM_CC_MCLK0_CLK>;
> +			clock-names = "xvclk";
> +			clock-frequency = <19200000>;
> +
> +

Extra newline.

> +			/* The &vreg_s4a_1p8 trace is powered on as a
> +			 * part of the TITAN_TOP_GDSC power domain.

Rather vreg_s4a_1p8 is simply always on, unrelated to TITAN_TOP_GDSC.
The GDSC is likely to control the power to the CCI controller itself
though.

> +			 * So it is represented by a fixed regulator.
> +			 *
> +			 * The 2.8V vdda-supply and 1.2V vddd-supply regulators
> +			 * both have to be enabled through the power management
> +			 * gpios.
> +			 */
> +			power-domains = <&clock_camcc TITAN_TOP_GDSC>;
> +
> +			dovdd-supply = <&vreg_lvs1a_1p8>;
> +			avdd-supply = <&cam0_avdd_2v8>;
> +			dvdd-supply = <&cam0_dvdd_1v2>;
> +
> +			/* No camera mezzanine by default */

I think it's fine to assume that everyone has their mezzanine mounted on
their db845c, so feel free to omit this comment and the status below.

(Assuming that not having the camera connected will be handled somewhat
gracefully)


Given though that we're lacking the rest of the camera subsystem it
might be suitable to status = "disable" this for now.

> +			status = "ok";
> +
> +			port {
> +				ov8856_ep: endpoint {
> +					clock-lanes = <1>;
> +					link-frequencies = /bits/ 64
> +						<360000000 180000000>;
> +					data-lanes = <1 2 3 4>;
> +//					remote-endpoint = <&csiphy0_ep>;
> +				};
> +			};
> +		};
> +	};
> +
> +	i2c-bus@1 {

Same comments as for the first bus...

Regards,
Bjorn

> +		cam3@60 {
> +			compatible = "ovti,ov7251";
> +
> +			// I2C address as per ov7251.txt linux documentation
> +			reg = <0x60>;
> +
> +			// CAM3_RST_N
> +			enable-gpios = <&tlmm 21 GPIO_ACTIVE_HIGH>;
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&cam3_default>;
> +			gpios = <&tlmm 16 0>,
> +				<&tlmm 21 0>;
> +
> +			clocks = <&clock_camcc CAM_CC_MCLK3_CLK>;
> +			clock-names = "xclk";
> +			clock-frequency = <24000000>;
> +
> +			/* The &vreg_s4a_1p8 trace is powered on as a
> +			 * part of the TITAN_TOP_GDSC power domain.
> +			 * So it is represented by a fixed regulator.
> +			 *
> +			 * The 2.8V vdda-supply regulator is enabled when the
> +			 * vreg_s4a_1p8 trace is pulled high.
> +			 * It too is represented by a fixed regulator.
> +			 *
> +			 * No 1.2V vddd-supply regulator is used, a fixed
> +			 * regulator represents it.
> +			 */
> +			power-domains = <&clock_camcc TITAN_TOP_GDSC>;
> +
> +			vdddo-supply = <&vreg_lvs1a_1p8>;
> +			vdda-supply = <&cam3_avdd_2v8>;
> +			vddd-supply = <&cam3_vddd_1v2>;
> +
> +			/* No camera mezzanine by default */
> +			status = "ok";
> +
> +			port {
> +				ov7251_ep: endpoint {
> +					clock-lanes = <1>;
> +					data-lanes = <0 1>;
> +//					remote-endpoint = <&csiphy3_ep>;
> +				};
> +			};
> +		};
> +	};
>  };
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
