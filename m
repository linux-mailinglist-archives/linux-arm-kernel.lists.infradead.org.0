Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0B72196197
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 00:00:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bdXYA5d1aMcLIX6Zhw85uvUvEhhGeP+VSVRCvrcVu6c=; b=OkiufiWU1u27F/
	hK1p5LA4CM0svEOXXrFfJhuksA+CZfn1qNYedtABrj1UE/TzjzP+9GbS0h6IwxS+27fJxW0nN630f
	vCRcMat5XeWgldHIRAZipc8g90fnWC3woYUImx9twSLEIpV9YmpMw2+I8vKkMvwr/1JQzeexI14mp
	VRHvpBfyNCwXeL8Mr1TAnssU2V5St0M/0+N2ni+BuDVvVZPeq5PffKxJjlp8siZf7sDRo5Xqk9lSf
	xQnY9eFbinVv01ORjRVSF99/IhzzNFr5YqvgPos7euLpwY/1ZKx7+HSJDXzNY03xLp2PeEoOp4Ale
	obj3AImpMBSzkit8weaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHxxv-0003US-8f; Fri, 27 Mar 2020 23:00:39 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHxxl-0003Sn-LR
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 23:00:32 +0000
Received: by mail-pf1-x442.google.com with SMTP id b72so5199339pfb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 16:00:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=JqIenWZwZuZZwflrKOCXfVDSGSS9yHIiXPKhRDM0rfQ=;
 b=mb55dYBPoAEXndrnw3TFFXmQdpaONNEY0CTwf+ofOSZLOYI3t8q0fJSTRQvNHhrFPF
 VFal9j5aj/Kdk1/7t20ftZGZTGKK/RH9u5mAVruZGe3lwx+LK+unHW5qyNUkL31YMwuR
 3Pvz+SOf8BOMkjM5+JGE1CtZHVNUwroi01M/5qLddUPeyiKWNWp/DI2Dj1jdLLYisRqm
 Far7EiRWmErWyTiiPJchgvc+qJoxX+RMwYQ4q9XXpozlloKysBoK7S/Preg9Bbr4/Q+z
 uNK8Lc+EojNptOWgffWP8RxWA0SXCH27LBT50EUN6pCMyWC5RNAF+Mo8j55bm3Uc8sMz
 3IEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=JqIenWZwZuZZwflrKOCXfVDSGSS9yHIiXPKhRDM0rfQ=;
 b=Si9zZ7swMhRJFaKpvbu3E7cG/YQXxs7xbboDrXBLokibEz/qTekIiUP/FNqHLg85OD
 yvBRP1juLAs/4MmLSQ4X6eS0f4M/PIrZqmvGcYOMh/If2uU2/3NpMyFE9Fj7MQyesEZg
 fhBeO1MmUD4ua8CG+2+4jFrcHzdW/2hWvIjwBeImK4rnZHQNZy/PAIsX/uc/b/KcTjis
 SMEWvxZxKvra5TBzTlOauSNUN4Vi7SqwWn4taHBVLLwHhGySgf4B6TnEmm2AsAwSSsbq
 DHlv826lBk/kUw4WOvEszBrjNN2rg8OZSo9zNGhiWx/pJATSd4RaSpX4fUVgso5LTY0q
 2VVw==
X-Gm-Message-State: ANhLgQ38/3g9sJcSEsVu9btvxXtIPmkjx7WMuXHfJvWL4ls9nHz2YjHU
 7y2A2uXAt0cc2meXGkDscNqTiJItmkE=
X-Google-Smtp-Source: ADFU+vsHwqLL5TtFqgU4KcqOiYr0XygvoaMkIOSpnKmIG6QUfqJWOKbXb+1ATrf6wNyFpl4jFtlJ2w==
X-Received: by 2002:a62:a512:: with SMTP id v18mr1478997pfm.306.1585350028760; 
 Fri, 27 Mar 2020 16:00:28 -0700 (PDT)
Received: from builder (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id b25sm4862093pfp.201.2020.03.27.16.00.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Mar 2020 16:00:27 -0700 (PDT)
Date: Fri, 27 Mar 2020 16:00:25 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Rakesh Pillai <pillair@codeaurora.org>
Subject: Re: [PATCH v7] arm64: dts: qcom: sc7180: Add WCN3990 WLAN module
 device node
Message-ID: <20200327230025.GJ5063@builder>
References: <1585219723-28323-1-git-send-email-pillair@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1585219723-28323-1-git-send-email-pillair@codeaurora.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_160029_715978_32F284D8 
X-CRM114-Status: GOOD (  16.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu 26 Mar 03:48 PDT 2020, Rakesh Pillai wrote:

> Add device node for the ath10k SNOC platform driver probe
> and add resources required for WCN3990 on sc7180 soc.
> 
> Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
> ---
> 
> Depends on https://patchwork.kernel.org/patch/11455345/
> The above patch adds the dt-bindings for wifi-firmware
> subnode
> ---
>  arch/arm64/boot/dts/qcom/sc7180-idp.dts |  8 ++++++++
>  arch/arm64/boot/dts/qcom/sc7180.dtsi    | 27 +++++++++++++++++++++++++++
>  2 files changed, 35 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-idp.dts b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> index 043c9b9..a6168a4 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> +++ b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> @@ -327,6 +327,14 @@
>  	};
>  };
>  
> +&wifi {
> +	status = "okay";
> +	qcom,msa-fixed-perm;
> +	wifi-firmware {
> +		iommus = <&apps_smmu 0xc2 0x1>;

How is sc7180 different from sdm845, where the iommus property goes
directly in the &wifi node?

Regards,
Bjorn

> +	};
> +};
> +
>  /* PINCTRL - additions to nodes defined in sc7180.dtsi */
>  
>  &qspi_clk {
> diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> index 998f101..2745128 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> @@ -83,6 +83,11 @@
>  			reg = <0 0x8f600000 0 0x500000>;
>  			no-map;
>  		};
> +
> +		wlan_fw_mem: memory@94104000 {
> +			reg = <0 0x94104000 0 0x200000>;
> +			no-map;
> +		};
>  	};
>  
>  	cpus {
> @@ -835,6 +840,28 @@
>  			};
>  		};
>  
> +		wifi: wifi@18800000 {
> +			compatible = "qcom,wcn3990-wifi";
> +			reg = <0 0x18800000 0 0x800000>;
> +			reg-names = "membase";
> +			iommus = <&apps_smmu 0xc0 0x1>;
> +			interrupts =
> +				<GIC_SPI 414 IRQ_TYPE_LEVEL_HIGH /* CE0 */ >,
> +				<GIC_SPI 415 IRQ_TYPE_LEVEL_HIGH /* CE1 */ >,
> +				<GIC_SPI 416 IRQ_TYPE_LEVEL_HIGH /* CE2 */ >,
> +				<GIC_SPI 417 IRQ_TYPE_LEVEL_HIGH /* CE3 */ >,
> +				<GIC_SPI 418 IRQ_TYPE_LEVEL_HIGH /* CE4 */ >,
> +				<GIC_SPI 419 IRQ_TYPE_LEVEL_HIGH /* CE5 */ >,
> +				<GIC_SPI 420 IRQ_TYPE_LEVEL_HIGH /* CE6 */ >,
> +				<GIC_SPI 421 IRQ_TYPE_LEVEL_HIGH /* CE7 */ >,
> +				<GIC_SPI 422 IRQ_TYPE_LEVEL_HIGH /* CE8 */ >,
> +				<GIC_SPI 423 IRQ_TYPE_LEVEL_HIGH /* CE9 */ >,
> +				<GIC_SPI 424 IRQ_TYPE_LEVEL_HIGH /* CE10 */>,
> +				<GIC_SPI 425 IRQ_TYPE_LEVEL_HIGH /* CE11 */>;
> +			memory-region = <&wlan_fw_mem>;
> +			status = "disabled";
> +		};
> +
>  		config_noc: interconnect@1500000 {
>  			compatible = "qcom,sc7180-config-noc";
>  			reg = <0 0x01500000 0 0x28000>;
> -- 
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
