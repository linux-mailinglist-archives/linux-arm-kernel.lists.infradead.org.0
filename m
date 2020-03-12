Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7E7182824
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 06:13:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B2D7tcgcjW0tR341hlRsh528a/+ivSFrNUYgacCcKTE=; b=QIZvRyRsKNlofY
	hi3Yhq3FG9tn2xtfeXoMiGdq8uPwWnx3LGdxQi7SnNpNV/TYurgTx+rFvPpE9OK/yQaWm04XSyJ3G
	6RzsKTKAB9DxScsfaTlMMkOu+0BuLBze+U2W59KIEo3O5kiC0cm9TgKD3+77MJdkPcBbZ9VE338jf
	vllNOkbe/fdki4YG164M2H+AF8lMO5Tr4O/tdu8XQTIAYnlY9ZEV+fSIea4waLgrpeyOUkS3W98pK
	yDlFb7AK9Htj3LFj6Gypi1QRHL9cDHmpiv7aMTJi2kyfpVcpcdhP/8j4G51ev64KJ35yJ8fRzBAEh
	R+lj3hXB3cwG1+PJ6x3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCG9K-0000lo-N3; Thu, 12 Mar 2020 05:12:50 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCG9D-0000lF-9z
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 05:12:44 +0000
Received: by mail-pj1-x1044.google.com with SMTP id u10so2047891pjy.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 22:12:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=S03VflXtfBdU3G7WrgnpyaIH0yNKM177vI6gQVCK4zY=;
 b=oTsERKMYyFGRUyq9fLk4IDlsMBbdf9Ugjwy//Yc4ZLyHBWyWraHopbb2SAQ9H/Kjiq
 WEueW4oMctUs0hV8oT6Ykm5ueq+TCVRk+iqos5IhUqWg2Xn+Mt5xGLhN3EyV/XZ7KJLM
 GMDL3ZgtoEtY5FBYGY5Xl9YWudf9GMmM4wa78DXQRLiqNmBU+9Oj1QlA0LTktJSPLMzX
 YNs0OjIV/Ml1TJ/OkM+E0sT1XScvaCEFmwAg72ILZehqF0EWmakpbL3DEigBgJusKP/H
 dKsAaiMTO3oflTA41Q6cRZf4ZGRwMhs9HarpxW6uRqdyveckvXG5pmN1DR3fZmPaXV0U
 wMeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=S03VflXtfBdU3G7WrgnpyaIH0yNKM177vI6gQVCK4zY=;
 b=QZjHKBBfNaBVL/hnjUN/h7sGwNHc/JHaAfInNG0EcxpHcfywzziEaKee8rNNnEICdN
 0phTSmuTx9J6J0DN97/chLgBgxmlj6T8pWEE8jGQMFXRtFjPde6Tdx+wsLBz8EHMOqNd
 jZBG2WjzIwuw3Qsi6YD3TCnz7vYFbUgPVliX5TwowqXUU8oa708CBZzdDSui2QY6jJwr
 tRJ695Nf9ZVhSK3KefTZOlRQFJXZDpy3JzgwI3bL2Iu3fkMybCQIlx/osZq93qRTO2eS
 PtA08aDiJSmiSSPnY0LN57JiwZF76WbvUyc+dTL5YPbjug+vBTrJNDZED3F0Zjpl2E5B
 ltTQ==
X-Gm-Message-State: ANhLgQ2qCevxLfqWVyWMZ8vl+8pbQnj0b973/vhc57j9vhT+AUmBptRy
 Mx/frZ9hWVvgbN+Gl3IfY/JR+w==
X-Google-Smtp-Source: ADFU+vsPGt88umNphl69CFdzapIJwZsoW9RFCNSJeyEHKsvUxjW/1HiWdp0tXdhZXPSVHhAx9tsqKA==
X-Received: by 2002:a17:90a:b111:: with SMTP id
 z17mr2321714pjq.115.1583989962616; 
 Wed, 11 Mar 2020 22:12:42 -0700 (PDT)
Received: from yoga (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id n184sm2281274pfn.208.2020.03.11.22.12.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 22:12:41 -0700 (PDT)
Date: Wed, 11 Mar 2020 22:12:39 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Robert Foss <robert.foss@linaro.org>
Subject: Re: [v1 3/6] arm64: dts: sdm845: Add i2c-qcom-cci node
Message-ID: <20200312051239.GV264362@yoga>
References: <20200311123501.18202-1-robert.foss@linaro.org>
 <20200311123501.18202-4-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311123501.18202-4-robert.foss@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_221243_355211_13189FD4 
X-CRM114-Status: GOOD (  16.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
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

On Wed 11 Mar 05:34 PDT 2020, Robert Foss wrote:

> The sdm845 SOC ships with a CCI controller, which
> has two CCI/I2C buses.
> 
> Signed-off-by: Robert Foss <robert.foss@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-db845c.dts |   4 +
>  arch/arm64/boot/dts/qcom/sdm845.dtsi       | 110 +++++++++++++++++++++
>  2 files changed, 114 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
> index eb77aaa6a819..a6b6837c3d68 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
> @@ -583,3 +583,7 @@
>  		bias-pull-up;
>  	};
>  };
> +
> +&cci {
> +	status = "ok";
> +};
> diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> index d42302b8889b..b7f5c0b0f6af 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> @@ -5,6 +5,7 @@
>   * Copyright (c) 2018, The Linux Foundation. All rights reserved.
>   */
>  
> +#include <dt-bindings/clock/qcom,camcc-sdm845.h>
>  #include <dt-bindings/clock/qcom,dispcc-sdm845.h>
>  #include <dt-bindings/clock/qcom,gcc-sdm845.h>
>  #include <dt-bindings/clock/qcom,gpucc-sdm845.h>
> @@ -717,6 +718,14 @@
>  			#power-domain-cells = <1>;
>  		};
>  
> +		clock_camcc: clock-controller@ad00000 {
> +			compatible = "qcom,sdm845-camcc";
> +			reg = <0 0xad00000 0 0x10000>;

Please pad address (i.e. the second cell) to 8 digits and maintain sort
order by address.

> +			#clock-cells = <1>;
> +			#reset-cells = <1>;
> +			#power-domain-cells = <1>;
> +		};
> +
>  		qfprom@784000 {
>  			compatible = "qcom,qfprom";
>  			reg = <0 0x00784000 0 0x8ff>;
> @@ -1451,6 +1460,60 @@
>  			gpio-ranges = <&tlmm 0 0 150>;
>  			wakeup-parent = <&pdc_intc>;
>  
> +			cci0_default: cci0_default {

No _ in the node name (i.e you can do cci0_default: cci0-default).

> +				/* SDA, SCL */
> +				pinmux {

You no longer need this intermediate node, instead you can write this
as:

cci0_default: cci0-default {
	pins = "gpio17", "gpio18";
	function = "cci_i2c";
	
	bias-pull-up;
	drive-strength = <2>;
};

Or alternatively if you would like to group things in subnodes, do so by
pin (to allow different pinconf per pin in a nice way), i.e:

cci0_default: cci0-default {
	sda {
		pins = "gpio17";
		function = "cci_i2c";
		
		bias-pull-up;
		drive-strength = <2>;
	};

	scl {
		pins = "gpio18";
		function = "cci_i2c";
		
		bias-pull-up;
		drive-strength = <2>;
	};
};

> +					function = "cci_i2c";
> +					pins = "gpio17", "gpio18";
> +				};
> +				pinconf {
> +					pins = "gpio17", "gpio18";
> +					bias-pull-up;
> +					drive-strength = <2>; /* 2 mA */
> +				};
> +			};
> +
> +			cci0_sleep: cci0_sleep {
> +				/* SDA, SCL */
> +				mux {
> +					pins = "gpio17", "gpio18";
> +					function = "cci_i2c";
> +				};
> +
> +				config {
> +					pins = "gpio17", "gpio18";
> +					drive-strength = <2>; /* 2 mA */
> +					bias-pull-down;
> +				};
> +			};
> +
> +			cci1_default: cci1_default {
> +				/* SDA, SCL */
> +				pinmux {
> +					function = "cci_i2c";
> +					pins = "gpio19", "gpio20";
> +				};
> +				pinconf {
> +					pins = "gpio19", "gpio20";
> +					bias-pull-up;
> +					drive-strength = <2>; /* 2 mA */
> +				};
> +			};
> +
> +			cci1_sleep: cci1_sleep {
> +				/* SDA, SCL */
> +				mux {
> +					pins = "gpio19", "gpio20";
> +					function = "cci_i2c";
> +				};
> +
> +				config {
> +					pins = "gpio19", "gpio20";
> +					drive-strength = <2>; /* 2 mA */
> +					bias-pull-down;
> +				};
> +			};
> +
>  			qspi_clk: qspi-clk {
>  				pinmux {
>  					pins = "gpio95";
> @@ -2608,6 +2671,53 @@
>  			#reset-cells = <1>;
>  		};
>  
> +		cci: cci@ac4a000 {
> +			compatible = "qcom,sdm845-cci";
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			reg = <0 0xac4a000 0 0x4000>;

Please pad 0xac4a000 to 8 digits.

> +			interrupts = <GIC_SPI 460 IRQ_TYPE_EDGE_RISING>;
> +			power-domains = <&clock_camcc TITAN_TOP_GDSC>;
> +
> +			clocks = <&clock_camcc CAM_CC_CAMNOC_AXI_CLK>,
> +				<&clock_camcc CAM_CC_SOC_AHB_CLK>,
> +				<&clock_camcc CAM_CC_SLOW_AHB_CLK_SRC>,
> +				<&clock_camcc CAM_CC_CPAS_AHB_CLK>,
> +				<&clock_camcc CAM_CC_CCI_CLK>,
> +				<&clock_camcc CAM_CC_CCI_CLK_SRC>;
> +			clock-names = "camnoc_axi_clk",
> +				"soc_ahb_clk",
> +				"slow_ahb_src_clk",
> +				"cpas_ahb_clk",
> +				"cci",
> +				"cci_clk_src";

Please drop the "_clk" suffix from these (iirc, these strings aren't
significant to the binding anyways).

> +
> +			assigned-clocks = <&clock_camcc CAM_CC_CAMNOC_AXI_CLK>,
> +				<&clock_camcc CAM_CC_CCI_CLK>;
> +			assigned-clock-rates = <80000000>, <37500000>;
> +
> +			pinctrl-names = "default", "sleep";
> +			pinctrl-0 = <&cci0_default &cci1_default>;
> +			pinctrl-1 = <&cci0_sleep &cci1_sleep>;
> +
> +			status = "disabled";
> +
> +			i2c-bus@0 {

Please give these labels, to make it easy to reference each bus in the
board dts and to add children.

Regards,
Bjorn

> +				reg = <0>;
> +				clock-frequency = <1000000>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +			};
> +
> +			i2c-bus@1 {
> +				reg = <1>;
> +				clock-frequency = <1000000>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +			};
> +		};
> +
>  		mdss: mdss@ae00000 {
>  			compatible = "qcom,sdm845-mdss";
>  			reg = <0 0x0ae00000 0 0x1000>;
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
