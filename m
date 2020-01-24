Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A439149154
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 23:50:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/tD9vOCjRa9tAeO9jt2DfIewrZn6EWvo8JuOqb3Yfiw=; b=jWHmV7MuHmBaXv
	YJwwWGExOxp0D34JZuKez4HQ/iIG29oFzWmOoCGHEZoX/jTDioj0ATSwa//e25+p7ym9zeBAlmXmf
	c54qJLGRH2ZVSLVy46HhV4XvVA/XUJ8WXW050LhUfaJALy4r4J3msv06fa++gJkVeQbIpWbos1iMb
	KuX/ts5oVo7079zmTVZkyaDb8fFWt4pXGtJ+KpHUxNANnjA5AVCNR534K+hvvOLxE6cQUNBDgQK33
	VF3CSA0iisZ7DP3+HE3KXTwieRwW9443GLu+rxjKJm+knBk0AHCQi9L9vlIpRnq59iqeFBqYkIrPm
	igSYAtKneDV9ZyC6JoXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv7mI-0002eA-E3; Fri, 24 Jan 2020 22:50:14 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv7m4-0002E6-CR
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 22:50:02 +0000
Received: by mail-pl1-x641.google.com with SMTP id t6so1375892plj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Jan 2020 14:49:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=EgqWJkEpLVYGyKpU+xrqhy//8DzmxmYYXy8tMaN6GH0=;
 b=eLUKClckTYSZLmuejE1LRT/yGkzydaTAfiTDlnGwMDL1wKeMNCkbhtMyQhf9A9e026
 ZtxSeHC5OAcn9Exa+SZoq+6L+vQ4mHt5WdR0iM/bCH18D1wwFwJO7lNAMjEfGT2W5Hjs
 sG501oFFbKPCDaRVqa5dUbTuoJj1gxws35ivlF9GDtFOA0VnTr21fCINVVC2TSNsz6ba
 QwgKpISPWhLtnR/t+6UaSyonFjDRaKNsQo0j5KeR2ZbdtBdk/cbesOLGGFNM4A9N5rnL
 YJ/0j9Fy84ALdW2mJ7YsqbLhthk33UQWKt75FhUTuUMr/wPrZBGTRDQaqQbGskcQZlkE
 F+Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=EgqWJkEpLVYGyKpU+xrqhy//8DzmxmYYXy8tMaN6GH0=;
 b=lF/OGk5RyIfxkQyo0VMWpttf1w63o24oIuThT3khd2u6GTEnnjFWOr8vjU1LZR0HsG
 rtShfcqfY26TP0wylKdhEC4RY3O+SyDLyKnlasN3hVJwsyrWzkg6oDMF0z6pB9zlwkXk
 gJaxmjm7yppklem4ZrdNr77PHUchF1coxyYhCzUj3uW9HvppA2YyusLC6/KcjiBzkTGy
 N3dsAmv+mq2v59uR6CRCfSKLVFK+YBUqJZKzW8nfIexibZfONYzpcuIK3rlnP86rtkns
 w9QnLNuUXwF/cxYtQQD2cgJcss+yyEJdV0mwTd8sAqibpEAvZt/8X03GchVbE1Q2k2Qz
 4V8A==
X-Gm-Message-State: APjAAAUQO4Zm6Uoe8KFR8Q2U8YvR3SUV6g0vi7EYAIBOOHooqJBuBD2n
 2EvLCHQ0XS6Mtd8XPY+p+mnvXQ==
X-Google-Smtp-Source: APXvYqzgujk2dTz+s3gSdkYHlNVhLUE7NIGThk0o9uWLACP5UmLwsE9GyqQq7WdFwACNQ1aHYVm6NQ==
X-Received: by 2002:a17:90a:2e84:: with SMTP id
 r4mr1728028pjd.64.1579906198476; 
 Fri, 24 Jan 2020 14:49:58 -0800 (PST)
Received: from yoga (pat_11.qualcomm.com. [192.35.156.11])
 by smtp.gmail.com with ESMTPSA id y14sm30538pfn.184.2020.01.24.14.49.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Jan 2020 14:49:57 -0800 (PST)
Date: Fri, 24 Jan 2020 14:49:55 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Venkata Narendra Kumar Gutta <vnkgutta@codeaurora.org>
Subject: Re: [PATCH v2 7/7] arm64: dts: qcom: sm8250: Add sm8250 dts file
Message-ID: <20200124224955.GA1511@yoga>
References: <1579905147-12142-1-git-send-email-vnkgutta@codeaurora.org>
 <1579905147-12142-8-git-send-email-vnkgutta@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579905147-12142-8-git-send-email-vnkgutta@codeaurora.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_145000_460163_0BF0AABB 
X-CRM114-Status: GOOD (  19.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, tsoni@codeaurora.org, vinod.koul@linaro.org,
 devicetree@vger.kernel.org, sboyd@kernel.org, linux-arm-msm@vger.kernel.org,
 mturquette@baylibre.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 jshriram@codeaurora.org, agross@kernel.org,
 linux-arm-kernel@lists.infradead.org, psodagud@codeaurora.org,
 linux-clk@vger.kernel.org, tdas@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri 24 Jan 14:32 PST 2020, Venkata Narendra Kumar Gutta wrote:

> Add sm8250 devicetree file for SM8250 SoC and SM8250 MTP platform.
> This file adds the basic nodes like cpu, psci and other required
> configuration for booting up to the serial console.
> 

Thanks Narendra, this looks good.
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Waiting for the clock patches to land before I can pick this up.

Regards,
Bjorn

> Signed-off-by: Venkata Narendra Kumar Gutta <vnkgutta@codeaurora.org>
> ---
>  arch/arm64/boot/dts/qcom/Makefile       |   1 +
>  arch/arm64/boot/dts/qcom/sm8250-mtp.dts |  29 ++
>  arch/arm64/boot/dts/qcom/sm8250.dtsi    | 450 ++++++++++++++++++++++++++++++++
>  3 files changed, 480 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/sm8250-mtp.dts
>  create mode 100644 arch/arm64/boot/dts/qcom/sm8250.dtsi
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 973c0f0..c6014c0 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -22,5 +22,6 @@ dtb-$(CONFIG_ARCH_QCOM)	+= sdm845-db845c.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sdm845-mtp.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sdm850-lenovo-yoga-c630.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sm8150-mtp.dtb
> +dtb-$(CONFIG_ARCH_QCOM)	+= sm8250-mtp.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs404-evb-1000.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs404-evb-4000.dtb
> diff --git a/arch/arm64/boot/dts/qcom/sm8250-mtp.dts b/arch/arm64/boot/dts/qcom/sm8250-mtp.dts
> new file mode 100644
> index 0000000..224d0f1
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/sm8250-mtp.dts
> @@ -0,0 +1,29 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) 2020, The Linux Foundation. All rights reserved.
> + */
> +
> +/dts-v1/;
> +
> +#include "sm8250.dtsi"
> +
> +/ {
> +	model = "Qualcomm Technologies, Inc. SM8250 MTP";
> +	compatible = "qcom,sm8250-mtp";
> +
> +	aliases {
> +		serial0 = &uart2;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +};
> +
> +&qupv3_id_1 {
> +	status = "okay";
> +};
> +
> +&uart2 {
> +	status = "okay";
> +};
> diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> new file mode 100644
> index 0000000..f63df12
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> @@ -0,0 +1,450 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) 2020, The Linux Foundation. All rights reserved.
> + */
> +
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/clock/qcom,rpmh.h>
> +#include <dt-bindings/soc/qcom,rpmh-rsc.h>
> +
> +/ {
> +	interrupt-parent = <&intc>;
> +
> +	#address-cells = <2>;
> +	#size-cells = <2>;
> +
> +	chosen { };
> +
> +	clocks {
> +		xo_board: xo-board {
> +			compatible = "fixed-clock";
> +			#clock-cells = <0>;
> +			clock-frequency = <38400000>;
> +			clock-output-names = "xo_board";
> +		};
> +
> +		sleep_clk: sleep-clk {
> +			compatible = "fixed-clock";
> +			#clock-cells = <0>;
> +			clock-frequency = <32000>;
> +		};
> +	};
> +
> +	cpus {
> +		#address-cells = <2>;
> +		#size-cells = <0>;
> +
> +		CPU0: cpu@0 {
> +			device_type = "cpu";
> +			compatible = "qcom,kryo485";
> +			reg = <0x0 0x0>;
> +			enable-method = "psci";
> +			next-level-cache = <&L2_0>;
> +			L2_0: l2-cache {
> +			      compatible = "cache";
> +			      next-level-cache = <&L3_0>;
> +				L3_0: l3-cache {
> +				      compatible = "cache";
> +				};
> +			};
> +		};
> +
> +		CPU1: cpu@100 {
> +			device_type = "cpu";
> +			compatible = "qcom,kryo485";
> +			reg = <0x0 0x100>;
> +			enable-method = "psci";
> +			next-level-cache = <&L2_100>;
> +			L2_100: l2-cache {
> +			      compatible = "cache";
> +			      next-level-cache = <&L3_0>;
> +			};
> +		};
> +
> +		CPU2: cpu@200 {
> +			device_type = "cpu";
> +			compatible = "qcom,kryo485";
> +			reg = <0x0 0x200>;
> +			enable-method = "psci";
> +			next-level-cache = <&L2_200>;
> +			L2_200: l2-cache {
> +			      compatible = "cache";
> +			      next-level-cache = <&L3_0>;
> +			};
> +		};
> +
> +		CPU3: cpu@300 {
> +			device_type = "cpu";
> +			compatible = "qcom,kryo485";
> +			reg = <0x0 0x300>;
> +			enable-method = "psci";
> +			next-level-cache = <&L2_300>;
> +			L2_300: l2-cache {
> +			      compatible = "cache";
> +			      next-level-cache = <&L3_0>;
> +			};
> +		};
> +
> +		CPU4: cpu@400 {
> +			device_type = "cpu";
> +			compatible = "qcom,kryo485";
> +			reg = <0x0 0x400>;
> +			enable-method = "psci";
> +			next-level-cache = <&L2_400>;
> +			L2_400: l2-cache {
> +			      compatible = "cache";
> +			      next-level-cache = <&L3_0>;
> +			};
> +		};
> +
> +		CPU5: cpu@500 {
> +			device_type = "cpu";
> +			compatible = "qcom,kryo485";
> +			reg = <0x0 0x500>;
> +			enable-method = "psci";
> +			next-level-cache = <&L2_500>;
> +			L2_500: l2-cache {
> +			      compatible = "cache";
> +			      next-level-cache = <&L3_0>;
> +			};
> +
> +		};
> +
> +		CPU6: cpu@600 {
> +			device_type = "cpu";
> +			compatible = "qcom,kryo485";
> +			reg = <0x0 0x600>;
> +			enable-method = "psci";
> +			next-level-cache = <&L2_600>;
> +			L2_600: l2-cache {
> +			      compatible = "cache";
> +			      next-level-cache = <&L3_0>;
> +			};
> +		};
> +
> +		CPU7: cpu@700 {
> +			device_type = "cpu";
> +			compatible = "qcom,kryo485";
> +			reg = <0x0 0x700>;
> +			enable-method = "psci";
> +			next-level-cache = <&L2_700>;
> +			L2_700: l2-cache {
> +			      compatible = "cache";
> +			      next-level-cache = <&L3_0>;
> +			};
> +		};
> +	};
> +
> +	firmware: firmware {
> +		scm: scm {
> +			compatible = "qcom,scm";
> +			#reset-cells = <1>;
> +		};
> +	};
> +
> +	tcsr_mutex: hwlock {
> +		compatible = "qcom,tcsr-mutex";
> +		syscon = <&tcsr_mutex_regs 0 0x1000>;
> +		#hwlock-cells = <1>;
> +	};
> +
> +	memory@80000000 {
> +		device_type = "memory";
> +		/* We expect the bootloader to fill in the size */
> +		reg = <0x0 0x80000000 0x0 0x0>;
> +	};
> +
> +	pmu {
> +		compatible = "arm,armv8-pmuv3";
> +		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
> +	};
> +
> +	psci {
> +		compatible = "arm,psci-1.0";
> +		method = "smc";
> +	};
> +
> +	reserved_memory: reserved-memory {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		hyp_mem: memory@80000000 {
> +			reg = <0x0 0x80000000 0x0 0x600000>;
> +			no-map;
> +		};
> +
> +		xbl_aop_mem: memory@80700000 {
> +			reg = <0x0 0x80700000 0x0 0x160000>;
> +			no-map;
> +		};
> +
> +		cmd_db: memory@80860000 {
> +			compatible = "qcom,cmd-db";
> +			reg = <0x0 0x80860000 0x0 0x20000>;
> +			no-map;
> +		};
> +
> +		smem_mem: memory@80900000 {
> +			reg = <0x0 0x80900000 0x0 0x200000>;
> +			no-map;
> +		};
> +
> +		removed_mem: memory@80b00000 {
> +			reg = <0x0 0x80b00000 0x0 0x5300000>;
> +			no-map;
> +		};
> +
> +		camera_mem: memory@86200000 {
> +			reg = <0x0 0x86200000 0x0 0x500000>;
> +			no-map;
> +		};
> +
> +		wlan_mem: memory@86700000 {
> +			reg = <0x0 0x86700000 0x0 0x100000>;
> +			no-map;
> +		};
> +
> +		ipa_fw_mem: memory@86800000 {
> +			reg = <0x0 0x86800000 0x0 0x10000>;
> +			no-map;
> +		};
> +
> +		ipa_gsi_mem: memory@86810000 {
> +			reg = <0x0 0x86810000 0x0 0xa000>;
> +			no-map;
> +		};
> +
> +		gpu_mem: memory@8681a000 {
> +			reg = <0x0 0x8681a000 0x0 0x2000>;
> +			no-map;
> +		};
> +
> +		npu_mem: memory@86900000 {
> +			reg = <0x0 0x86900000 0x0 0x500000>;
> +			no-map;
> +		};
> +
> +		video_mem: memory@86e00000 {
> +			reg = <0x0 0x86e00000 0x0 0x500000>;
> +			no-map;
> +		};
> +
> +		cvp_mem: memory@87300000 {
> +			reg = <0x0 0x87300000 0x0 0x500000>;
> +			no-map;
> +		};
> +
> +		cdsp_mem: memory@87800000 {
> +			reg = <0x0 0x87800000 0x0 0x1400000>;
> +			no-map;
> +		};
> +
> +		slpi_mem: memory@88c00000 {
> +			reg = <0x0 0x88c00000 0x0 0x1500000>;
> +			no-map;
> +		};
> +
> +		adsp_mem: memory@8a100000 {
> +			reg = <0x0 0x8a100000 0x0 0x1d00000>;
> +			no-map;
> +		};
> +
> +		spss_mem: memory@8be00000 {
> +			reg = <0x0 0x8be00000 0x0 0x100000>;
> +			no-map;
> +		};
> +
> +		cdsp_secure_heap: memory@8bf00000 {
> +			reg = <0x0 0x8bf00000 0x0 0x4600000>;
> +			no-map;
> +		};
> +	};
> +
> +	smem {
> +		compatible = "qcom,smem";
> +		memory-region = <&smem_mem>;
> +		hwlocks = <&tcsr_mutex 3>;
> +	};
> +
> +	soc: soc@0 {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges = <0 0 0 0 0x10 0>;
> +		dma-ranges = <0 0 0 0 0x10 0>;
> +		compatible = "simple-bus";
> +
> +		gcc: clock-controller@100000 {
> +			compatible = "qcom,gcc-sm8250";
> +			reg = <0x0 0x00100000 0x0 0x1f0000>;
> +			#clock-cells = <1>;
> +			#reset-cells = <1>;
> +			#power-domain-cells = <1>;
> +			clock-names = "bi_tcxo",
> +					"sleep_clk";
> +			clocks = <&rpmhcc RPMH_CXO_CLK>,
> +				<&sleep_clk>;
> +		};
> +
> +		qupv3_id_1: geniqup@ac0000 {
> +			compatible = "qcom,geni-se-qup";
> +			reg = <0x0 0x00ac0000 0x0 0x6000>;
> +			clock-names = "m-ahb", "s-ahb";
> +			clocks = <&gcc 133>,
> +				<&gcc 134>;
> +			#address-cells = <2>;
> +			#size-cells = <2>;
> +			ranges;
> +			status = "disabled";
> +
> +			uart2: serial@a90000 {
> +				compatible = "qcom,geni-debug-uart";
> +				reg = <0x0 0x00a90000 0x0 0x4000>;
> +				clock-names = "se";
> +				clocks = <&gcc 113>;
> +				interrupts = <GIC_SPI 357 IRQ_TYPE_LEVEL_HIGH>;
> +				status = "disabled";
> +			};
> +		};
> +
> +		intc: interrupt-controller@17a00000 {
> +			compatible = "arm,gic-v3";
> +			#interrupt-cells = <3>;
> +			interrupt-controller;
> +			reg = <0x0 0x17a00000 0x0 0x10000>,     /* GICD */
> +			      <0x0 0x17a60000 0x0 0x100000>;    /* GICR * 8 */
> +			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
> +		};
> +
> +		pdc: interrupt-controller@b220000 {
> +			compatible = "qcom,sm8250-pdc";
> +			reg = <0x0b220000 0x30000>, <0x17c000f0 0x60>;
> +			qcom,pdc-ranges = <0 480 94>, <94 609 31>,
> +					<125 63 1>, <126 716 12>;
> +			#interrupt-cells = <2>;
> +			interrupt-parent = <&intc>;
> +			interrupt-controller;
> +		};
> +
> +		spmi_bus: qcom,spmi@c440000 {
> +			compatible = "qcom,spmi-pmic-arb";
> +			reg = <0x0 0x0c440000 0x0 0x0001100>,
> +			      <0x0 0x0c600000 0x0 0x2000000>,
> +			      <0x0 0x0e600000 0x0 0x0100000>,
> +			      <0x0 0x0e700000 0x0 0x00a0000>,
> +			      <0x0 0x0c40a000 0x0 0x0026000>;
> +			reg-names = "core", "chnls", "obsrvr", "intr", "cnfg";
> +			interrupt-names = "periph_irq";
> +			interrupts-extended = <&pdc 1 IRQ_TYPE_LEVEL_HIGH>;
> +			qcom,ee = <0>;
> +			qcom,channel = <0>;
> +			#address-cells = <2>;
> +			#size-cells = <0>;
> +			interrupt-controller;
> +			#interrupt-cells = <4>;
> +			cell-index = <0>;
> +		};
> +
> +		apps_rsc: rsc@18200000 {
> +			label = "apps_rsc";
> +			compatible = "qcom,rpmh-rsc";
> +			reg = <0x0 0x18200000 0x0 0x10000>,
> +				<0x0 0x18210000 0x0 0x10000>,
> +				<0x0 0x18220000 0x0 0x10000>;
> +			reg-names = "drv-0", "drv-1", "drv-2";
> +			interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>,
> +					<GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
> +			qcom,tcs-offset = <0xd00>;
> +			qcom,drv-id = <2>;
> +			qcom,tcs-config = <ACTIVE_TCS  2>,
> +						<SLEEP_TCS   3>,
> +						<WAKE_TCS    3>,
> +						<CONTROL_TCS 1>;
> +
> +			rpmhcc: clock-controller {
> +				compatible = "qcom,sm8250-rpmh-clk";
> +				#clock-cells = <1>;
> +				clock-names = "xo";
> +				clocks = <&xo_board>;
> +			};
> +		};
> +
> +		tcsr_mutex_regs: syscon@1f40000 {
> +			compatible = "syscon";
> +			reg = <0x0 0x01f40000 0x0 0x40000>;
> +		};
> +
> +		timer@17c20000 {
> +			#address-cells = <2>;
> +			#size-cells = <2>;
> +			ranges;
> +			compatible = "arm,armv7-timer-mem";
> +			reg = <0x0 0x17c20000 0x0 0x1000>;
> +			clock-frequency = <19200000>;
> +
> +			frame@17c21000 {
> +				frame-number = <0>;
> +				interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>,
> +					     <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>;
> +				reg = <0x0 0x17c21000 0x0 0x1000>,
> +				      <0x0 0x17c22000 0x0 0x1000>;
> +			};
> +
> +			frame@17c23000 {
> +				frame-number = <1>;
> +				interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
> +				reg = <0x0 0x17c23000 0x0 0x1000>;
> +				status = "disabled";
> +			};
> +
> +			frame@17c25000 {
> +				frame-number = <2>;
> +				interrupts = <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
> +				reg = <0x0 0x17c25000 0x0 0x1000>;
> +				status = "disabled";
> +			};
> +
> +			frame@17c27000 {
> +				frame-number = <3>;
> +				interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
> +				reg = <0x0 0x17c27000 0x0 0x1000>;
> +				status = "disabled";
> +			};
> +
> +			frame@17c29000 {
> +				frame-number = <4>;
> +				interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
> +				reg = <0x0 0x17c29000 0x0 0x1000>;
> +				status = "disabled";
> +			};
> +
> +			frame@17c2b000 {
> +				frame-number = <5>;
> +				interrupts = <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>;
> +				reg = <0x0 0x17c2b000 0x0 0x1000>;
> +				status = "disabled";
> +			};
> +
> +			frame@17c2d000 {
> +				frame-number = <6>;
> +				interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
> +				reg = <0x0 0x17c2d000 0x0 0x1000>;
> +				status = "disabled";
> +			};
> +		};
> +
> +	};
> +
> +	timer {
> +		compatible = "arm,armv8-timer";
> +		interrupts = <GIC_PPI 13
> +				(GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 14
> +				(GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 11
> +				(GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 12
> +				(GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>;
> +	};
> +};
> -- 
> The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
> a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
