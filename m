Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D12E01DCB01
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 12:25:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CfNiaCoheb/3CmKAV2rZkVaYqNNxT6R643oFKDcaRLA=; b=oR7Ysa0IRKVMzA
	jRFWBbRy3opnvTmh6Mgkq0JDJpiNNv4qxtHmRvWn/iw/kmWrhN+XF/7TpbydkoJkUK+FTpT1iwwNk
	WnZ+sNW/GnTjFGemqVQ3KoL3S70nE8jc/WDyT9Akt0KaWHNMoUhy+bo1ahczotoQ/FZ43M4gNUGUP
	xQJt2HhYD6AN+BXpeZ79SR4jXFjvSb/3HSlWEcqg3W6SpjrGu+FVNjVTJBekyrzb77oWQyvdBLYg1
	5TwnopjvR/vWW1py/oJEK0duLgLbnslGninOnK2UU/CnhuTy82TFmvumTqkjUZIMp/eLbQUqPuZJo
	SSN8d5I/G3s6CNyq+GLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbiOS-0001Us-4l; Thu, 21 May 2020 10:25:40 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbiOE-0001SS-Gh; Thu, 21 May 2020 10:25:30 +0000
Received: by mail-wm1-x343.google.com with SMTP id g14so1938774wme.1;
 Thu, 21 May 2020 03:25:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=GffMNgQRsIRxtQq2pj6h0TutYxk1IVYKcYTeNXIC640=;
 b=L9+l3YHxWGnFHJDEQaO8FgD5mey6YNp+6FYRnc/J/z8ZdnUVWfbURuAeQz5lC1OVCR
 UQxWMdT8YJYQYR6/tccEfZdpHHhcqMl7+DdpZdOxLy2vpeX4pjmaupV8+DO89d3kxT10
 PUfAI/YCs0M3DTJAVZ4W/dZornSxDuo1mqAMTdFXeFr/XL+bNVWeOaR9agzilnFpt0t5
 XRAMKKedqW+d6b5KxDR9ygFMT2Jow55TZXx0Ya2VXY1ZBcdjF2uhoPYhs8k7kVtnpV2x
 gAcEQkMNnrKsD2XIX7kUa5aLBpjUSCOMc5gqdJFw5Ppf/wDcucGYPSlaraErfdQUdvG5
 61HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=GffMNgQRsIRxtQq2pj6h0TutYxk1IVYKcYTeNXIC640=;
 b=gnm2Pjgi9y6VmykcElPjqwsK1Qg+dURaaE3dmqtpYPQ+M86iH+0bquAM8yXUJsGyaW
 IQdz7G7BYqZ9hJPT2ZaMA1y05/joqZEv3glMfr4NXN+SS3UuTvacY10Rj5/hG1CVPule
 UitnrHnWsJo2oz4DbbtKUPP4RJx8m4NkGLh1SLLFTXK0PTmDbznCOgxJWlOhRjwSw4Qc
 61xyymiyjZhFHOCdSISG/lsWs4ceKf+QuYHdLAWnNQVDx974PcvDk/e6zFRIbfJ+KYpq
 88NEEa/z7bw1Ox4tKjlstSQ+K93JA9vxwN/ZtbztgSE32XPfu0kWYjbSXX4VJIIDP1Ez
 UpHw==
X-Gm-Message-State: AOAM531xzimtfBQ6UcmyS7y6SOcEOK1PKveUoyhmHR+8KpHDUrgbMBik
 UsWNuDgFjKiCxCD/UL7ngv0=
X-Google-Smtp-Source: ABdhPJwGd4f0Xr0dKJxEkRC3mz+5c9kwW1cIcYnYO25Q+7zMm42Z5nAY9Z7u53b4YK0ftmyWqy5jKg==
X-Received: by 2002:a1c:4b0e:: with SMTP id y14mr8740159wma.170.1590056724830; 
 Thu, 21 May 2020 03:25:24 -0700 (PDT)
Received: from ziggy.stardust ([213.195.113.243])
 by smtp.gmail.com with ESMTPSA id s11sm5900101wrp.79.2020.05.21.03.25.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 May 2020 03:25:24 -0700 (PDT)
Subject: Re: [PATCH V3] arm64: dts: mediatek: add cpufreq and cci devfreq
 nodes for mt8183
To: "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 devicetree@vger.kernel.org
References: <1576826785-3867-1-git-send-email-andrew-sh.cheng@mediatek.com>
From: Matthias Brugger <matthias.bgg@gmail.com>
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <753e91a6-6765-ee3a-462f-d07f60af2de9@gmail.com>
Date: Thu, 21 May 2020 12:25:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1576826785-3867-1-git-send-email-andrew-sh.cheng@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_032528_353556_7207CA57 
X-CRM114-Status: GOOD (  17.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [matthias.bgg[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: srv_heupstream@mediatek.com, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 20/12/2019 08:26, Andrew-sh.Cheng wrote:
> From: "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>
> 
> add cpufreq and cci devfreq nodes for mt8183
> 
> Depend on regulator node patch:
> https://patchwork.kernel.org/patch/11284617/
> 
> Signed-off-by: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
> ---

Now queued for v5.7-next/dts64

Thanks!

>  arch/arm64/boot/dts/mediatek/mt8183-evb.dts |  36 ++++
>  arch/arm64/boot/dts/mediatek/mt8183.dtsi    | 245 ++++++++++++++++++++++++++++
>  2 files changed, 281 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
> index 1fb195c..ca5c0b2 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
> +++ b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
> @@ -231,6 +231,42 @@
>  
>  };
>  
> +&cci {
> +	proc-supply = <&mt6358_vproc12_reg>;
> +};
> +
> +&cpu0 {
> +	proc-supply = <&mt6358_vproc12_reg>;
> +};
> +
> +&cpu1 {
> +	proc-supply = <&mt6358_vproc12_reg>;
> +};
> +
> +&cpu2 {
> +	proc-supply = <&mt6358_vproc12_reg>;
> +};
> +
> +&cpu3 {
> +	proc-supply = <&mt6358_vproc12_reg>;
> +};
> +
> +&cpu4 {
> +	proc-supply = <&mt6358_vproc11_reg>;
> +};
> +
> +&cpu5 {
> +	proc-supply = <&mt6358_vproc11_reg>;
> +};
> +
> +&cpu6 {
> +	proc-supply = <&mt6358_vproc11_reg>;
> +};
> +
> +&cpu7 {
> +	proc-supply = <&mt6358_vproc11_reg>;
> +};
> +
>  &uart0 {
>  	status = "okay";
>  };
> diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> index 10b3247..d260a5a 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> @@ -31,6 +31,219 @@
>  		i2c11 = &i2c11;
>  	};
>  
> +	cluster0_opp: opp_table0 {
> +		compatible = "operating-points-v2";
> +		opp-shared;
> +		opp00 {
> +			opp-hz = /bits/ 64 <793000000>;
> +			opp-microvolt = <650000>;
> +		};
> +		opp01 {
> +			opp-hz = /bits/ 64 <910000000>;
> +			opp-microvolt = <687500>;
> +		};
> +		opp02 {
> +			opp-hz = /bits/ 64 <1014000000>;
> +			opp-microvolt = <718750>;
> +		};
> +		opp03 {
> +			opp-hz = /bits/ 64 <1131000000>;
> +			opp-microvolt = <756250>;
> +		};
> +		opp04 {
> +			opp-hz = /bits/ 64 <1248000000>;
> +			opp-microvolt = <800000>;
> +		};
> +		opp05 {
> +			opp-hz = /bits/ 64 <1326000000>;
> +			opp-microvolt = <818750>;
> +		};
> +		opp06 {
> +			opp-hz = /bits/ 64 <1417000000>;
> +			opp-microvolt = <850000>;
> +		};
> +		opp07 {
> +			opp-hz = /bits/ 64 <1508000000>;
> +			opp-microvolt = <868750>;
> +		};
> +		opp08 {
> +			opp-hz = /bits/ 64 <1586000000>;
> +			opp-microvolt = <893750>;
> +		};
> +		opp09 {
> +			opp-hz = /bits/ 64 <1625000000>;
> +			opp-microvolt = <906250>;
> +		};
> +		opp10 {
> +			opp-hz = /bits/ 64 <1677000000>;
> +			opp-microvolt = <931250>;
> +		};
> +		opp11 {
> +			opp-hz = /bits/ 64 <1716000000>;
> +			opp-microvolt = <943750>;
> +		};
> +		opp12 {
> +			opp-hz = /bits/ 64 <1781000000>;
> +			opp-microvolt = <975000>;
> +		};
> +		opp13 {
> +			opp-hz = /bits/ 64 <1846000000>;
> +			opp-microvolt = <1000000>;
> +		};
> +		opp14 {
> +			opp-hz = /bits/ 64 <1924000000>;
> +			opp-microvolt = <1025000>;
> +		};
> +		opp15 {
> +			opp-hz = /bits/ 64 <1989000000>;
> +			opp-microvolt = <1050000>;
> +		};	};
> +
> +	cluster1_opp: opp_table1 {
> +		compatible = "operating-points-v2";
> +		opp-shared;
> +		opp00 {
> +			opp-hz = /bits/ 64 <793000000>;
> +			opp-microvolt = <700000>;
> +		};
> +		opp01 {
> +			opp-hz = /bits/ 64 <910000000>;
> +			opp-microvolt = <725000>;
> +		};
> +		opp02 {
> +			opp-hz = /bits/ 64 <1014000000>;
> +			opp-microvolt = <750000>;
> +		};
> +		opp03 {
> +			opp-hz = /bits/ 64 <1131000000>;
> +			opp-microvolt = <775000>;
> +		};
> +		opp04 {
> +			opp-hz = /bits/ 64 <1248000000>;
> +			opp-microvolt = <800000>;
> +		};
> +		opp05 {
> +			opp-hz = /bits/ 64 <1326000000>;
> +			opp-microvolt = <825000>;
> +		};
> +		opp06 {
> +			opp-hz = /bits/ 64 <1417000000>;
> +			opp-microvolt = <850000>;
> +		};
> +		opp07 {
> +			opp-hz = /bits/ 64 <1508000000>;
> +			opp-microvolt = <875000>;
> +		};
> +		opp08 {
> +			opp-hz = /bits/ 64 <1586000000>;
> +			opp-microvolt = <900000>;
> +		};
> +		opp09 {
> +			opp-hz = /bits/ 64 <1625000000>;
> +			opp-microvolt = <912500>;
> +		};
> +		opp10 {
> +			opp-hz = /bits/ 64 <1677000000>;
> +			opp-microvolt = <931250>;
> +		};
> +		opp11 {
> +			opp-hz = /bits/ 64 <1716000000>;
> +			opp-microvolt = <950000>;
> +		};
> +		opp12 {
> +			opp-hz = /bits/ 64 <1781000000>;
> +			opp-microvolt = <975000>;
> +		};
> +		opp13 {
> +			opp-hz = /bits/ 64 <1846000000>;
> +			opp-microvolt = <1000000>;
> +		};
> +		opp14 {
> +			opp-hz = /bits/ 64 <1924000000>;
> +			opp-microvolt = <1025000>;
> +		};
> +		opp15 {
> +			opp-hz = /bits/ 64 <1989000000>;
> +			opp-microvolt = <1050000>;
> +		};
> +	};
> +
> +	cci_opp: opp_table2 {
> +		compatible = "operating-points-v2";
> +		opp-shared;
> +		opp00 {
> +			opp-hz = /bits/ 64 <273000000>;
> +			opp-microvolt = <650000>;
> +		};
> +		opp01 {
> +			opp-hz = /bits/ 64 <338000000>;
> +			opp-microvolt = <687500>;
> +		};
> +		opp02 {
> +			opp-hz = /bits/ 64 <403000000>;
> +			opp-microvolt = <718750>;
> +		};
> +		opp03 {
> +			opp-hz = /bits/ 64 <463000000>;
> +			opp-microvolt = <756250>;
> +		};
> +		opp04 {
> +			opp-hz = /bits/ 64 <546000000>;
> +			opp-microvolt = <800000>;
> +		};
> +		opp05 {
> +			opp-hz = /bits/ 64 <624000000>;
> +			opp-microvolt = <818750>;
> +		};
> +		opp06 {
> +			opp-hz = /bits/ 64 <689000000>;
> +			opp-microvolt = <850000>;
> +		};
> +		opp07 {
> +			opp-hz = /bits/ 64 <767000000>;
> +			opp-microvolt = <868750>;
> +		};
> +		opp08 {
> +			opp-hz = /bits/ 64 <845000000>;
> +			opp-microvolt = <893750>;
> +		};
> +		opp09 {
> +			opp-hz = /bits/ 64 <871000000>;
> +			opp-microvolt = <906250>;
> +		};
> +		opp10 {
> +			opp-hz = /bits/ 64 <923000000>;
> +			opp-microvolt = <931250>;
> +		};
> +		opp11 {
> +			opp-hz = /bits/ 64 <962000000>;
> +			opp-microvolt = <943750>;
> +		};
> +		opp12 {
> +			opp-hz = /bits/ 64 <1027000000>;
> +			opp-microvolt = <975000>;
> +		};
> +		opp13 {
> +			opp-hz = /bits/ 64 <1092000000>;
> +			opp-microvolt = <1000000>;
> +		};
> +		opp14 {
> +			opp-hz = /bits/ 64 <1144000000>;
> +			opp-microvolt = <1025000>;
> +		};
> +		opp15 {
> +			opp-hz = /bits/ 64 <1196000000>;
> +			opp-microvolt = <1050000>;
> +		};
> +	};
> +
> +	cci: cci {
> +		compatible = "mediatek,mt8183-cci";
> +		clocks = <&apmixedsys CLK_APMIXED_CCIPLL>;
> +		clock-names = "cci_clock";
> +		operating-points-v2 = <&cci_opp>;
> +	};
> +
>  	cpus {
>  		#address-cells = <1>;
>  		#size-cells = <0>;
> @@ -73,6 +286,10 @@
>  			reg = <0x000>;
>  			enable-method = "psci";
>  			capacity-dmips-mhz = <741>;
> +			clocks = <&mcucfg CLK_MCU_MP0_SEL>,
> +				 <&topckgen CLK_TOP_ARMPLL_DIV_PLL1>;
> +			clock-names = "cpu", "intermediate";
> +			operating-points-v2 = <&cluster0_opp>;
>  		};
>  
>  		cpu1: cpu@1 {
> @@ -81,6 +298,10 @@
>  			reg = <0x001>;
>  			enable-method = "psci";
>  			capacity-dmips-mhz = <741>;
> +			clocks = <&mcucfg CLK_MCU_MP0_SEL>,
> +				 <&topckgen CLK_TOP_ARMPLL_DIV_PLL1>;
> +			clock-names = "cpu", "intermediate";
> +			operating-points-v2 = <&cluster0_opp>;
>  		};
>  
>  		cpu2: cpu@2 {
> @@ -89,6 +310,10 @@
>  			reg = <0x002>;
>  			enable-method = "psci";
>  			capacity-dmips-mhz = <741>;
> +			clocks = <&mcucfg CLK_MCU_MP0_SEL>,
> +				 <&topckgen CLK_TOP_ARMPLL_DIV_PLL1>;
> +			clock-names = "cpu", "intermediate";
> +			operating-points-v2 = <&cluster0_opp>;
>  		};
>  
>  		cpu3: cpu@3 {
> @@ -97,6 +322,10 @@
>  			reg = <0x003>;
>  			enable-method = "psci";
>  			capacity-dmips-mhz = <741>;
> +			clocks = <&mcucfg CLK_MCU_MP0_SEL>,
> +				 <&topckgen CLK_TOP_ARMPLL_DIV_PLL1>;
> +			clock-names = "cpu", "intermediate";
> +			operating-points-v2 = <&cluster0_opp>;
>  		};
>  
>  		cpu4: cpu@100 {
> @@ -105,6 +334,10 @@
>  			reg = <0x100>;
>  			enable-method = "psci";
>  			capacity-dmips-mhz = <1024>;
> +			clocks = <&mcucfg CLK_MCU_MP2_SEL>,
> +				 <&topckgen CLK_TOP_ARMPLL_DIV_PLL1>;
> +			clock-names = "cpu", "intermediate";
> +			operating-points-v2 = <&cluster1_opp>;
>  		};
>  
>  		cpu5: cpu@101 {
> @@ -113,6 +346,10 @@
>  			reg = <0x101>;
>  			enable-method = "psci";
>  			capacity-dmips-mhz = <1024>;
> +			clocks = <&mcucfg CLK_MCU_MP2_SEL>,
> +				 <&topckgen CLK_TOP_ARMPLL_DIV_PLL1>;
> +			clock-names = "cpu", "intermediate";
> +			operating-points-v2 = <&cluster1_opp>;
>  		};
>  
>  		cpu6: cpu@102 {
> @@ -121,6 +358,10 @@
>  			reg = <0x102>;
>  			enable-method = "psci";
>  			capacity-dmips-mhz = <1024>;
> +			clocks = <&mcucfg CLK_MCU_MP2_SEL>,
> +				 <&topckgen CLK_TOP_ARMPLL_DIV_PLL1>;
> +			clock-names = "cpu", "intermediate";
> +			operating-points-v2 = <&cluster1_opp>;
>  		};
>  
>  		cpu7: cpu@103 {
> @@ -129,6 +370,10 @@
>  			reg = <0x103>;
>  			enable-method = "psci";
>  			capacity-dmips-mhz = <1024>;
> +			clocks = <&mcucfg CLK_MCU_MP2_SEL>,
> +				 <&topckgen CLK_TOP_ARMPLL_DIV_PLL1>;
> +			clock-names = "cpu", "intermediate";
> +			operating-points-v2 = <&cluster1_opp>;
>  		};
>  	};
>  
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
