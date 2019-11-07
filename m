Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CDCDF2537
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 03:20:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1f1Q0B7qGdTVMHkZMNdhbVvYv4T0A3Qt4cuY4WTO8sA=; b=StdHpP5gMcrYbD
	UFA4In3HnC0YmdxVCmcdikIVrA/0E+BQx+/b6kMy8jplSB4EMbIoOVpXTSligigYWew7WK8h9HCW9
	Sshnhc58nIf/OCA4Q6J+e4pX6i9asY11iv4/lg1pTsRWe9JczI09Q9SSIkwCoI+Od7pDpq626g6Nx
	ysz52NEnH/CZmubJ3QgAWIQqgB6gjL3no+uzMFmzvtDyZTxxFEHX7H7TYiIEf8cJpI/az+vmhYuxj
	jlMmsfdXnEQQEPwFaVHg7PymXzp4PBDQ0HESMKecN/nxGCmMxrToQwMfcyBvR02jU7gCHI4U4wi4Q
	qscbmvpPqC1rR5V3ngEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSXPl-0001Vt-6S; Thu, 07 Nov 2019 02:20:49 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSXPZ-0001UJ-DA
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 02:20:39 +0000
Received: by mail-pf1-x442.google.com with SMTP id v19so1148955pfm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 18:20:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=7nVUVPTizlGkprPOHGMGuKiTavG+4pamQJDarm5kvv0=;
 b=G4sld1CnF+WGUMEYhkeg7b2c/ddWHkENgd9t/sjURqESd/spTRn3DckkUV+ggVqpxs
 DX9+prVgoROWZ5ZTikOoUSh3NE/f56x4Np5XPl2GPeFRBsBi+riqR1pLcOWV0xUehBKf
 wmp5tm/wSCDSFyRRXxKDWl6js6NUHbeQ5AnxmEHoYGfK13eYs+rAXMrJjSP7M7pX2ldn
 i0v+116tgdd7LnHQ8iJ9Grkx8U7+zNxOumG3V2S6JaYKQm/sTmaVAi9KggcL62NTKoNH
 sKC2yS3w1LireYqKif9W7OwD+6eWDWBfqJVc/eB1HBlNPY0DLVBj4/tFqdZKKbhpfWpk
 /BoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7nVUVPTizlGkprPOHGMGuKiTavG+4pamQJDarm5kvv0=;
 b=I+sqx6VWu8uTq9vb97jsQ8Tx2N4IVSCjm1UCAITUCSUMOYui0QpL12MmCe4yCIF5X1
 4MKOILNPb8TNJUZ15/Il2jU4rgiONTnSZzjCysq6qcPDyBG9D8/H5Wr0TjtKLPWchDCt
 +VhjlSdoqhP3Nh5t0jQ83oJz7eryDoZ7SX2VZJZT1hG7JKgv0hUXpmP9aeV7RFzmndLS
 aqzQrM65OLGgaPn0HSxRJ3JECe7mIyaIQRZMQMFr3JrYyIYKyO9srrGiDjOb7d5K1V6U
 Gk3QMZT4IN7q3rr9Rx46HbepBgoA3TumnW57V1vrgvsmugSCqCw7FYACuGPvXzqv0QsY
 r0Vw==
X-Gm-Message-State: APjAAAWNspGw13stQaMU17OWpTzy9olNut3y0L3ecNFwwnxpe4VAFene
 V5kCDqvLPfRmd/P2f/shLDWrgg==
X-Google-Smtp-Source: APXvYqwONm0UK9rYybGAoObi3hSqRbZAToeZCLsdFmnHfwr+0izG5T3e9gW6wi0eJH6dtm/LZyXAwg==
X-Received: by 2002:a17:90a:634c:: with SMTP id
 v12mr1614939pjs.27.1573093236794; 
 Wed, 06 Nov 2019 18:20:36 -0800 (PST)
Received: from localhost ([122.171.110.253])
 by smtp.gmail.com with ESMTPSA id w2sm342736pfj.22.2019.11.06.18.20.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 06 Nov 2019 18:20:36 -0800 (PST)
Date: Thu, 7 Nov 2019 07:50:32 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Amit Kucheria <amit.kucheria@linaro.org>
Subject: Re: [PATCH 07/11] thermal: rockchip: Appease the kernel-doc deity
Message-ID: <20191107022032.feqnv3gguywai6cj@vireshk-i7>
References: <cover.1573046440.git.amit.kucheria@linaro.org>
 <290895a22aa8a13c13b3a4ae77c13244b4ecee58.1573046440.git.amit.kucheria@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <290895a22aa8a13c13b3a4ae77c13244b4ecee58.1573046440.git.amit.kucheria@linaro.org>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_182037_454429_6C91327F 
X-CRM114-Status: GOOD (  22.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Amit Kucheria <amit.kucheria@verdurent.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Amit Daniel Kachhap <amit.kachhap@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 edubezval@gmail.com, linux-rockchip@lists.infradead.org,
 Kukjin Kim <kgene@kernel.org>, Guillaume La Roque <glaroque@baylibre.com>,
 linux-pm@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>, Jun Nie <jun.nie@linaro.org>,
 Javi Merino <javi.merino@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06-11-19, 18:58, Amit Kucheria wrote:
> Replace a comment starting with /** by simply /* to avoid having it
> interpreted as a kernel-doc comment. Describe missing function
> parameters where needed.
> 
> Fixes up the following warnings when compiled with make W=1:
> 
> linux.git/drivers/thermal/rockchip_thermal.c:27: warning: cannot
> understand function prototype: 'enum tshut_mode '
> linux.git/drivers/thermal/rockchip_thermal.c:37: warning: cannot
> understand function prototype: 'enum tshut_polarity '
> linux.git/drivers/thermal/rockchip_thermal.c:46: warning: cannot
> understand function prototype: 'enum sensor_id '
> linux.git/drivers/thermal/rockchip_thermal.c:56: warning: cannot
> understand function prototype: 'enum adc_sort_mode '
> linux.git/drivers/thermal/rockchip_thermal.c:123: warning: Function
> parameter or member 'chn_id' not described in 'rockchip_tsadc_chip'
> linux.git/drivers/thermal/rockchip_thermal.c:123: warning: Function
> parameter or member 'control' not described in 'rockchip_tsadc_chip'
> linux.git/drivers/thermal/rockchip_thermal.c:167: warning: Function
> parameter or member 'sensors' not described in 'rockchip_thermal_data'
> linux.git/drivers/thermal/rockchip_thermal.c:608: warning: Function
> parameter or member 'grf' not described in 'rk_tsadcv2_initialize'
> linux.git/drivers/thermal/rockchip_thermal.c:608: warning: Function
> parameter or member 'regs' not described in 'rk_tsadcv2_initialize'
> linux.git/drivers/thermal/rockchip_thermal.c:608: warning: Function
> parameter or member 'tshut_polarity' not described in
> 'rk_tsadcv2_initialize'
> linux.git/drivers/thermal/rockchip_thermal.c:644: warning: Function
> parameter or member 'grf' not described in 'rk_tsadcv3_initialize'
> linux.git/drivers/thermal/rockchip_thermal.c:644: warning: Function
> parameter or member 'regs' not described in 'rk_tsadcv3_initialize'
> linux.git/drivers/thermal/rockchip_thermal.c:644: warning: Function
> parameter or member 'tshut_polarity' not described in
> 'rk_tsadcv3_initialize'
> linux.git/drivers/thermal/rockchip_thermal.c:732: warning: Function
> parameter or member 'regs' not described in 'rk_tsadcv3_control'
> linux.git/drivers/thermal/rockchip_thermal.c:732: warning: Function
> parameter or member 'enable' not described in 'rk_tsadcv3_control'
> linux.git/drivers/thermal/rockchip_thermal.c:1211: warning: Function
> parameter or member 'reset' not described in
> 'rockchip_thermal_reset_controller'
> 
> Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
> ---
>  drivers/thermal/rockchip_thermal.c | 22 ++++++++++++++++------
>  1 file changed, 16 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/rockchip_thermal.c
> index 343c2f5c5a259..9ed8085bb7924 100644
> --- a/drivers/thermal/rockchip_thermal.c
> +++ b/drivers/thermal/rockchip_thermal.c
> @@ -19,7 +19,7 @@
>  #include <linux/mfd/syscon.h>
>  #include <linux/pinctrl/consumer.h>
>  
> -/**
> +/*
>   * If the temperature over a period of time High,
>   * the resulting TSHUT gave CRU module,let it reset the entire chip,
>   * or via GPIO give PMIC.
> @@ -29,7 +29,7 @@ enum tshut_mode {
>  	TSHUT_MODE_GPIO,
>  };
>  
> -/**
> +/*
>   * The system Temperature Sensors tshut(tshut) polarity
>   * the bit 8 is tshut polarity.
>   * 0: low active, 1: high active
> @@ -39,7 +39,7 @@ enum tshut_polarity {
>  	TSHUT_HIGH_ACTIVE,
>  };
>  
> -/**
> +/*
>   * The system has two Temperature Sensors.
>   * sensor0 is for CPU, and sensor1 is for GPU.
>   */
> @@ -48,7 +48,7 @@ enum sensor_id {
>  	SENSOR_GPU,
>  };
>  
> -/**
> +/*
>   * The conversion table has the adc value and temperature.
>   * ADC_DECREMENT: the adc value is of diminishing.(e.g. rk3288_code_table)
>   * ADC_INCREMENT: the adc value is incremental.(e.g. rk3368_code_table)
> @@ -80,13 +80,14 @@ struct chip_tsadc_table {
>  
>  /**
>   * struct rockchip_tsadc_chip - hold the private data of tsadc chip
> - * @chn_id[SOC_MAX_SENSORS]: the sensor id of chip correspond to the channel
> + * @chn_id: array of sensor ids of chip corresponding to the channel
>   * @chn_num: the channel number of tsadc chip
>   * @tshut_temp: the hardware-controlled shutdown temperature value
>   * @tshut_mode: the hardware-controlled shutdown mode (0:CRU 1:GPIO)
>   * @tshut_polarity: the hardware-controlled active polarity (0:LOW 1:HIGH)
>   * @initialize: SoC special initialize tsadc controller method
>   * @irq_ack: clear the interrupt
> + * @control: enable/disable method for the tsadc controller
>   * @get_temp: get the temperature
>   * @set_alarm_temp: set the high temperature interrupt
>   * @set_tshut_temp: set the hardware-controlled shutdown temperature
> @@ -139,7 +140,7 @@ struct rockchip_thermal_sensor {
>   * @chip: pointer to the platform/configuration data
>   * @pdev: platform device of thermal
>   * @reset: the reset controller of tsadc
> - * @sensors[SOC_MAX_SENSORS]: the thermal sensor
> + * @sensors: array of thermal sensors
>   * @clk: the controller clock is divided by the exteral 24MHz
>   * @pclk: the advanced peripherals bus clock
>   * @grf: the general register file will be used to do static set by software
> @@ -590,6 +591,9 @@ static int rk_tsadcv2_code_to_temp(const struct chip_tsadc_table *table,
>  
>  /**
>   * rk_tsadcv2_initialize - initialize TASDC Controller.
> + * @grf: the general register file will be used to do static set by software
> + * @regs: the base address of tsadc controller
> + * @tshut_polarity: the hardware-controlled active polarity (0:LOW 1:HIGH)
>   *
>   * (1) Set TSADC_V2_AUTO_PERIOD:
>   *     Configure the interleave between every two accessing of
> @@ -624,6 +628,9 @@ static void rk_tsadcv2_initialize(struct regmap *grf, void __iomem *regs,
>  
>  /**
>   * rk_tsadcv3_initialize - initialize TASDC Controller.
> + * @grf: the general register file will be used to do static set by software
> + * @regs: the base address of tsadc controller
> + * @tshut_polarity: the hardware-controlled active polarity (0:LOW 1:HIGH)
>   *
>   * (1) The tsadc control power sequence.
>   *
> @@ -723,6 +730,8 @@ static void rk_tsadcv2_control(void __iomem *regs, bool enable)
>  
>  /**
>   * rk_tsadcv3_control - the tsadc controller is enabled or disabled.
> + * @regs: the base address of tsadc controller
> + * @enable: boolean flag to enable the controller
>   *
>   * NOTE: TSADC controller works at auto mode, and some SoCs need set the
>   * tsadc_q_sel bit on TSADCV2_AUTO_CON[1]. The (1024 - tsadc_q) as output
> @@ -1206,6 +1215,7 @@ rockchip_thermal_register_sensor(struct platform_device *pdev,
>  
>  /**
>   * Reset TSADC Controller, reset all tsadc registers.
> + * @reset: the reset controller of tsadc
>   */
>  static void rockchip_thermal_reset_controller(struct reset_control *reset)
>  {

Reviewed-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
