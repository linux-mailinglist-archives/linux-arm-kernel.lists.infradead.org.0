Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D5E5FBD4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 18:34:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9moV86C7Eh/UDX+yuA5R/LXvr7YiqG+pUeSfaTHyelo=; b=df/FFV/wyoxiGW
	POYvH74MH4ykU4aMfsYzqDvh8JeCstgRhGx/is/O9wOl2HjiVWjO2eKtW18Ej5U0ACNdvXlrMqI4Q
	zarYSHK2UXtk/kLCtBUFbF0R3g8OreQz3OyQdngu5GGfSMUOPFdk5FPQMBSwVN7iNTRZhJp7IQ0oM
	aAI1IlNu2jhxUQvk5lSfa1XneZttGqjttcnScxck4x/bIHfCE6REHN0R+7Xo0XjFs2XmOBx/N04J7
	Lqqb4/rN4ehN5vWHJol6PRfMmjxyxBsPi1FVw5LD4shXm19yZljZg9km+wOHqS7To2Blcd+lWC03v
	zimbEtGaJXLIMFpD9j5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj4h7-00045L-R6; Thu, 04 Jul 2019 16:34:50 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj4gs-00044G-Uy
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 16:34:36 +0000
Received: by mail-pl1-x641.google.com with SMTP id cl9so3293582plb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jul 2019 09:34:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=l6v5HhF4PGUTlK00t3/FwopZqoei4AyWMLmTmK+S6ak=;
 b=JWd5ksS5Qn+QhpXlHyS4CAfBlB5CxjyaQp+/QpD486umszmFuYH9A+eAsuI5d65e4E
 4IyLfbXANgTFhDf7um/zZ7CpNz397PPdh8FTgO8awCzWzxnMweMphMxBXQ6HcOQkcTdp
 l3+IMGQi86z571Os3dxqD4rcMlPYtcxDhUddNs8GM8HufHgyXBPKEVCVIoRHJ31hGNXh
 Ym4ReQNN24QvlryGjvGABII7oQqQUi1wiq9ic0M5Q0dQ1HSvul8et8O/D5RKeBv7jzrj
 vu92FOKQDbeJdV090vAynJ3XMBiW9oU8E/629imWIhi3ZSATfOnUfYHpA7IsrUU+RwoP
 6dAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=l6v5HhF4PGUTlK00t3/FwopZqoei4AyWMLmTmK+S6ak=;
 b=qZiIDJLlDjmspxsvNBUBmnLajXjyIBWTChmC1aaKvA6AaA6+rvTW2BSw1UnGxXLKHN
 da7UjreQGi6+U4UE5me34zdY1UtB2ATJc8Hf//s/j5VWC9kzML8Vhaw6ytS0VLw+oBEY
 CWYj5nRJ/EZn0hyTQu1cCJ6uBVZSNL8h0kjoSBbFrDPRf0tWeAjGPl2i+dzIKZUeFSnL
 6MVYlPlBRn4EKwUmNda8j3Z7LU9gbRDM+rXo24Y+0ZoJMJzVrRuoI60Zx5vJhQ5Xbl13
 4+x+9wCIgGkJ4AFGmHylqj5jZFWJGIV/jMzbcOaW12x4K9DFvj1WJXK4Buj5wnThrmfQ
 FEbA==
X-Gm-Message-State: APjAAAUrrEEuG4OuacnIo3c0oblldNND4joRShu6NMbNqPx7Wb41q5z4
 FVI7/MJJNiOFM8e16VjcLi9F2A==
X-Google-Smtp-Source: APXvYqyaOeatlbrMlHXDwOuDDepiwfCIB++6ASHtW47kZ3kEXpwKSI9mqXouiBwMqYmZpyukDEYVRQ==
X-Received: by 2002:a17:902:ff11:: with SMTP id
 f17mr51301938plj.121.1562258073289; 
 Thu, 04 Jul 2019 09:34:33 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id s5sm5701156pgj.60.2019.07.04.09.34.32
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 04 Jul 2019 09:34:32 -0700 (PDT)
Date: Thu, 4 Jul 2019 09:35:27 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: [PATCH v2] pinctrl: msm8998: Squash TSIF pins together
Message-ID: <20190704163527.GJ12249@tuxbook-pro>
References: <503b2ae8-ead6-70cd-7b21-ce5f5166a23a@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <503b2ae8-ead6-70cd-7b21-ce5f5166a23a@free.fr>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_093435_003123_D07F7DC3 
X-CRM114-Status: GOOD (  15.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: DT <devicetree@vger.kernel.org>, Jeffrey Hugo <jeffrey.l.hugo@gmail.com>,
 MSM <linux-arm-msm@vger.kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Jonathan Neusch?fer <j.neuschaefer@gmx.net>, gpio <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu 04 Jul 01:57 PDT 2019, Marc Gonzalez wrote:

> TSIF is the Transport Stream Interface.
> First, rename tsif1 to tsif0, and tsif2 to tsif1.
> Then squash all 5 tsif0 pins into a single function.
> Same for tsif1.
> 
> Signed-off-by: Marc Gonzalez <marc.w.gonzalez@free.fr>

Thanks for the respin Marc.

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> ---
> Changes from v1:
> - Reword commit message for clarity (hopefully)
> - Drop unrelated change in qcom,msm8998-pinctrl.txt
> - CC DT
> ---
>  .../bindings/pinctrl/qcom,msm8998-pinctrl.txt |  5 +-
>  drivers/pinctrl/qcom/pinctrl-msm8998.c        | 76 +++++--------------
>  2 files changed, 20 insertions(+), 61 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,msm8998-pinctrl.txt b/Documentation/devicetree/bindings/pinctrl/qcom,msm8998-pinctrl.txt
> index 00174f08ba1d..18e3f3d3e3c5 100644
> --- a/Documentation/devicetree/bindings/pinctrl/qcom,msm8998-pinctrl.txt
> +++ b/Documentation/devicetree/bindings/pinctrl/qcom,msm8998-pinctrl.txt
> @@ -124,9 +124,8 @@ to specify in a pin configuration subnode:
>  		    qlink_request, qua_mi2s, sd_card, sd_write, sdc40, sdc41,
>  		    sdc42, sdc43, sdc4_clk, sdc4_cmd, sec_mi2s, sp_cmu,
>  		    spkr_i2s, ssbi1, ssc_irq, ter_mi2s, tgu_ch0, tgu_ch1,
> -		    tsense_pwm1, tsense_pwm2, tsif1_clk, tsif1_data, tsif1_en,
> -		    tsif1_error, tsif1_sync, tsif2_clk, tsif2_data, tsif2_en,
> -		    tsif2_error, tsif2_sync, uim1_clk, uim1_data, uim1_present,
> +		    tsense_pwm1, tsense_pwm2, tsif0, tsif1,
> +		    uim1_clk, uim1_data, uim1_present,
>  		    uim1_reset, uim2_clk, uim2_data, uim2_present, uim2_reset,
>  		    uim_batt, usb_phy, vfr_1, vsense_clkout, vsense_data0,
>  		    vsense_data1, vsense_mode, wlan1_adc0, wlan1_adc1,
> diff --git a/drivers/pinctrl/qcom/pinctrl-msm8998.c b/drivers/pinctrl/qcom/pinctrl-msm8998.c
> index 00d7b94bc3f1..a05f41fe2706 100644
> --- a/drivers/pinctrl/qcom/pinctrl-msm8998.c
> +++ b/drivers/pinctrl/qcom/pinctrl-msm8998.c
> @@ -581,16 +581,8 @@ enum msm8998_functions {
>  	msm_mux_tgu_ch1,
>  	msm_mux_tsense_pwm1,
>  	msm_mux_tsense_pwm2,
> -	msm_mux_tsif1_clk,
> -	msm_mux_tsif1_data,
> -	msm_mux_tsif1_en,
> -	msm_mux_tsif1_error,
> -	msm_mux_tsif1_sync,
> -	msm_mux_tsif2_clk,
> -	msm_mux_tsif2_data,
> -	msm_mux_tsif2_en,
> -	msm_mux_tsif2_error,
> -	msm_mux_tsif2_sync,
> +	msm_mux_tsif0,
> +	msm_mux_tsif1,
>  	msm_mux_uim1_clk,
>  	msm_mux_uim1_data,
>  	msm_mux_uim1_present,
> @@ -692,9 +684,6 @@ static const char * const atest_usb13_groups[] = {
>  static const char * const bimc_dte1_groups[] = {
>  	"gpio8", "gpio10",
>  };
> -static const char * const tsif1_sync_groups[] = {
> -	"gpio9",
> -};
>  static const char * const wlan1_adc0_groups[] = {
>  	"gpio9",
>  };
> @@ -863,9 +852,6 @@ static const char * const lpass_slimbus_groups[] = {
>  static const char * const sd_write_groups[] = {
>  	"gpio40",
>  };
> -static const char * const tsif1_error_groups[] = {
> -	"gpio40",
> -};
>  static const char * const blsp_spi6_groups[] = {
>  	"gpio41", "gpio42", "gpio43", "gpio44",
>  };
> @@ -1048,11 +1034,8 @@ static const char * const blsp_uim2_b_groups[] = {
>  static const char * const blsp_i2c5_groups[] = {
>  	"gpio87", "gpio88",
>  };
> -static const char * const tsif1_clk_groups[] = {
> -	"gpio89",
> -};
> -static const char * const tsif1_en_groups[] = {
> -	"gpio90",
> +static const char * const tsif0_groups[] = {
> +	"gpio9", "gpio40", "gpio89", "gpio90", "gpio91",
>  };
>  static const char * const mdp_vsync0_groups[] = {
>  	"gpio90",
> @@ -1075,17 +1058,14 @@ static const char * const tgu_ch0_groups[] = {
>  static const char * const qdss_cti1_b_groups[] = {
>  	"gpio90", "gpio91",
>  };
> -static const char * const tsif1_data_groups[] = {
> -	"gpio91",
> -};
>  static const char * const sdc4_cmd_groups[] = {
>  	"gpio91",
>  };
>  static const char * const tgu_ch1_groups[] = {
>  	"gpio91",
>  };
> -static const char * const tsif2_error_groups[] = {
> -	"gpio92",
> +static const char * const tsif1_groups[] = {
> +	"gpio92", "gpio93", "gpio94", "gpio95", "gpio96",
>  };
>  static const char * const sdc43_groups[] = {
>  	"gpio92",
> @@ -1093,30 +1073,18 @@ static const char * const sdc43_groups[] = {
>  static const char * const vfr_1_groups[] = {
>  	"gpio92",
>  };
> -static const char * const tsif2_clk_groups[] = {
> -	"gpio93",
> -};
>  static const char * const sdc4_clk_groups[] = {
>  	"gpio93",
>  };
> -static const char * const tsif2_en_groups[] = {
> -	"gpio94",
> -};
>  static const char * const sdc42_groups[] = {
>  	"gpio94",
>  };
>  static const char * const sd_card_groups[] = {
>  	"gpio95",
>  };
> -static const char * const tsif2_data_groups[] = {
> -	"gpio95",
> -};
>  static const char * const sdc41_groups[] = {
>  	"gpio95",
>  };
> -static const char * const tsif2_sync_groups[] = {
> -	"gpio96",
> -};
>  static const char * const sdc40_groups[] = {
>  	"gpio96",
>  };
> @@ -1355,16 +1323,8 @@ static const struct msm_function msm8998_functions[] = {
>  	FUNCTION(tgu_ch1),
>  	FUNCTION(tsense_pwm1),
>  	FUNCTION(tsense_pwm2),
> -	FUNCTION(tsif1_clk),
> -	FUNCTION(tsif1_data),
> -	FUNCTION(tsif1_en),
> -	FUNCTION(tsif1_error),
> -	FUNCTION(tsif1_sync),
> -	FUNCTION(tsif2_clk),
> -	FUNCTION(tsif2_data),
> -	FUNCTION(tsif2_en),
> -	FUNCTION(tsif2_error),
> -	FUNCTION(tsif2_sync),
> +	FUNCTION(tsif0),
> +	FUNCTION(tsif1),
>  	FUNCTION(uim1_clk),
>  	FUNCTION(uim1_data),
>  	FUNCTION(uim1_present),
> @@ -1396,7 +1356,7 @@ static const struct msm_pingroup msm8998_groups[] = {
>  	PINGROUP(6, WEST, blsp_spi8, blsp_uart8_a, blsp_i2c8, _, _, _, _, _, _),
>  	PINGROUP(7, WEST, blsp_spi8, blsp_uart8_a, blsp_i2c8, ddr_bist, _, atest_tsens2, atest_usb1, _, _),
>  	PINGROUP(8, EAST, blsp_spi4, blsp_uart1_b, blsp_uim1_b, _, ddr_bist, _, wlan1_adc1, atest_usb13, bimc_dte1),
> -	PINGROUP(9, EAST, blsp_spi4, blsp_uart1_b, blsp_uim1_b, tsif1_sync, ddr_bist, _, wlan1_adc0, atest_usb12, bimc_dte0),
> +	PINGROUP(9, EAST, blsp_spi4, blsp_uart1_b, blsp_uim1_b, tsif0, ddr_bist, _, wlan1_adc0, atest_usb12, bimc_dte0),
>  	PINGROUP(10, EAST, mdp_vsync_a, blsp_spi4, blsp_uart1_b, blsp_i2c4, ddr_bist, atest_gpsadc1, wlan2_adc1, atest_usb11, bimc_dte1),
>  	PINGROUP(11, EAST, mdp_vsync_a, edp_lcd, blsp_spi4, blsp_uart1_b, blsp_i2c4, dbg_out, atest_gpsadc0, wlan2_adc0, atest_usb10),
>  	PINGROUP(12, EAST, mdp_vsync, m_voc, _, _, _, _, _, _, _),
> @@ -1427,7 +1387,7 @@ static const struct msm_pingroup msm8998_groups[] = {
>  	PINGROUP(37, NORTH, agera_pll, _, _, _, _, _, _, _, _),
>  	PINGROUP(38, WEST, usb_phy, _, _, _, _, _, _, _, _),
>  	PINGROUP(39, WEST, lpass_slimbus, _, _, _, _, _, _, _, _),
> -	PINGROUP(40, EAST, sd_write, tsif1_error, _, _, _, _, _, _, _),
> +	PINGROUP(40, EAST, sd_write, tsif0, _, _, _, _, _, _, _),
>  	PINGROUP(41, EAST, blsp_spi6, blsp_uart3_b, blsp_uim3_b, _, qdss, _, _, _, _),
>  	PINGROUP(42, EAST, blsp_spi6, blsp_uart3_b, blsp_uim3_b, _, qdss, _, _, _, _),
>  	PINGROUP(43, EAST, blsp_spi6, blsp_uart3_b, blsp_i2c6, _, qdss, _, _, _, _),
> @@ -1476,14 +1436,14 @@ static const struct msm_pingroup msm8998_groups[] = {
>  	PINGROUP(86, EAST, blsp_spi5, blsp_uart2_b, blsp_uim2_b, _, _, _, _, _, _),
>  	PINGROUP(87, EAST, blsp_spi5, blsp_uart2_b, blsp_i2c5, _, _, _, _, _, _),
>  	PINGROUP(88, EAST, blsp_spi5, blsp_uart2_b, blsp_i2c5, _, _, _, _, _, _),
> -	PINGROUP(89, EAST, tsif1_clk, phase_flag, _, _, _, _, _, _, _),
> -	PINGROUP(90, EAST, tsif1_en, mdp_vsync0, mdp_vsync1, mdp_vsync2, mdp_vsync3, blsp1_spi, tgu_ch0, qdss_cti1_b, _),
> -	PINGROUP(91, EAST, tsif1_data, sdc4_cmd, tgu_ch1, phase_flag, qdss_cti1_b, _, _, _, _),
> -	PINGROUP(92, EAST, tsif2_error, sdc43, vfr_1, phase_flag, _, _, _, _, _),
> -	PINGROUP(93, EAST, tsif2_clk, sdc4_clk, _, qdss, _, _, _, _, _),
> -	PINGROUP(94, EAST, tsif2_en, sdc42, _, _, _, _, _, _, _),
> -	PINGROUP(95, EAST, tsif2_data, sdc41, _, _, _, _, _, _, _),
> -	PINGROUP(96, EAST, tsif2_sync, sdc40, phase_flag, _, _, _, _, _, _),
> +	PINGROUP(89, EAST, tsif0, phase_flag, _, _, _, _, _, _, _),
> +	PINGROUP(90, EAST, tsif0, mdp_vsync0, mdp_vsync1, mdp_vsync2, mdp_vsync3, blsp1_spi, tgu_ch0, qdss_cti1_b, _),
> +	PINGROUP(91, EAST, tsif0, sdc4_cmd, tgu_ch1, phase_flag, qdss_cti1_b, _, _, _, _),
> +	PINGROUP(92, EAST, tsif1, sdc43, vfr_1, phase_flag, _, _, _, _, _),
> +	PINGROUP(93, EAST, tsif1, sdc4_clk, _, qdss, _, _, _, _, _),
> +	PINGROUP(94, EAST, tsif1, sdc42, _, _, _, _, _, _, _),
> +	PINGROUP(95, EAST, tsif1, sdc41, _, _, _, _, _, _, _),
> +	PINGROUP(96, EAST, tsif1, sdc40, phase_flag, _, _, _, _, _, _),
>  	PINGROUP(97, WEST, _, mdp_vsync_b, ldo_en, _, _, _, _, _, _),
>  	PINGROUP(98, WEST, _, mdp_vsync_b, ldo_update, _, _, _, _, _, _),
>  	PINGROUP(99, WEST, _, _, _, _, _, _, _, _, _),
> -- 
> 2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
