Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB88DF252C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 03:19:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TOVDu7D5thHiF6ymcgL6rfQqVF54aKYhWodP1LNUgVE=; b=CXSyPmgAAT4FpG
	b2k/rIZmp6BVO9jtdjcqHY9FKsxPCQ2a7qSkxcLF5Ab7qYbDI89Rf1SN/gFJm8QP+6DhLIvC9pHP1
	GbntB/t3YfVItqRbKb69bDneJHBrtELQXDwWWdh8wnTlpjAecrvS2ArD63fDyrOPfMa4GHg7NuFwE
	IiHQYh+7bZLfgRFLKGaQAcTni26j32izLBTRUS/f2svX/Zz3Pkeif8fB1C/7zRagkjBl1Yqh8wyET
	BDxOUe1jx3kg4ZTkAE1iSyXi+pnbBBLRQeTeEFPGs79xsuUHCRVX6g9XB8Ec7D7dPWxzUyfvkuwv0
	nHnLZD7/g4MAcW590b8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSXOk-00083e-Sn; Thu, 07 Nov 2019 02:19:46 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSXOY-00082J-I8
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 02:19:36 +0000
Received: by mail-pl1-x641.google.com with SMTP id p13so376640pll.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 18:19:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ESzujBJ49FNysqkrVH1S+PaByQD/Q6RQe2i3iP7hmcM=;
 b=CQ+vAjWjwKpOYgW5Xyc54KVd3YtC1W1XfT9E7/13c3afe+Gm2USP4E3PiAbquqxZg7
 /1670zoX75D9BbW6a8xPRRePRFOK+2c+oTAVaom4A0q6A7wXgaxMev9B6Og+bKDLY10C
 Vxz6KZiDCsRmdESG+0qB3MTSl7mQpRUTPjQCpBEhB4/hokqLHFOg5+qySvrDNVUnz/Vh
 6q4iGvc1ftMGWazfBjEs9SRIOPGFu8kzaGpedFlQYnODyT4q1oTNc9qFVxrsGnFgWtGb
 MpXOhIxyyt8pCBLTChlEtAhCNmX5uV3mLjmN0jNrGH4JIvcKbJPHDNRxQPRlIfomwzPc
 UOsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ESzujBJ49FNysqkrVH1S+PaByQD/Q6RQe2i3iP7hmcM=;
 b=en8ecPnt5AWf0GhreV25J6xCyz5Pa5Jj0TvkfdZRxlxO0h9bHvbPpB579ehppxQv9F
 qfvpX+qojdkCELn9RrezL9q8nX6aUgr4EV+f4at/7KIJ0HYSgKr0Fjlsuz60BEuIVx4f
 /jRgwcczkSKMnyX4iboS8UhDIQE/KGRiaUR2nyJvvg/ZZSobfA29/3Dxpv5CXRpYVd1T
 XXJQ9oSDwt9BiZeN1B7HBILe681GB8XR6sEsztWco17ww4S4Y84185sIUA2Tk5az2mj6
 HO45qV08qeNc3JQZzCKV1KHOFAqZvNTxjO1hnF5D+6bzre5BSrnJNiqMKYosJg0gV45U
 fCrA==
X-Gm-Message-State: APjAAAW3Dw5/3C+jAUBXm4dJg/Y0KLa+AcwjsaYTG7/f+R/fekC43rHb
 loCyujmzkGSJ92ijpHwsqsu4Kw==
X-Google-Smtp-Source: APXvYqyTCT2RMDMNz8+2YYJV3LUjn/Klv43+gbS5xwV5bRqIZGp7VCOVlGfe0Z7XNl3ydRk+i1cnmw==
X-Received: by 2002:a17:902:7d8c:: with SMTP id
 a12mr970607plm.221.1573093173408; 
 Wed, 06 Nov 2019 18:19:33 -0800 (PST)
Received: from localhost ([122.171.110.253])
 by smtp.gmail.com with ESMTPSA id a33sm394632pgb.57.2019.11.06.18.19.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 06 Nov 2019 18:19:32 -0800 (PST)
Date: Thu, 7 Nov 2019 07:49:29 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Amit Kucheria <amit.kucheria@linaro.org>
Subject: Re: [PATCH 06/11] thermal: mediatek: Appease the kernel-doc deity
Message-ID: <20191107021929.hsuyzswcl27n7wqt@vireshk-i7>
References: <cover.1573046440.git.amit.kucheria@linaro.org>
 <2961e4ac4b32ea7db8b5f6916751a5c02ee85960.1573046440.git.amit.kucheria@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2961e4ac4b32ea7db8b5f6916751a5c02ee85960.1573046440.git.amit.kucheria@linaro.org>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_181934_602548_66FFCD32 
X-CRM114-Status: GOOD (  19.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, edubezval@gmail.com,
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
> linux.git/drivers/thermal/mtk_thermal.c:374: warning: cannot understand
> function prototype: 'const struct mtk_thermal_data mt8173_thermal_data =
> '
> linux.git/drivers/thermal/mtk_thermal.c:413: warning: cannot understand
> function prototype: 'const struct mtk_thermal_data mt2701_thermal_data =
> '
> linux.git/drivers/thermal/mtk_thermal.c:443: warning: cannot understand
> function prototype: 'const struct mtk_thermal_data mt2712_thermal_data =
> '
> linux.git/drivers/thermal/mtk_thermal.c:499: warning: cannot understand
> function prototype: 'const struct mtk_thermal_data mt8183_thermal_data =
> '
> linux.git/drivers/thermal/mtk_thermal.c:529: warning: Function parameter
> or member 'sensno' not described in 'raw_to_mcelsius'
> 
> Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
> ---
>  drivers/thermal/mtk_thermal.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/thermal/mtk_thermal.c b/drivers/thermal/mtk_thermal.c
> index acf4854cbb8b8..76e30603d4d58 100644
> --- a/drivers/thermal/mtk_thermal.c
> +++ b/drivers/thermal/mtk_thermal.c
> @@ -358,7 +358,7 @@ static const int mt7622_mux_values[MT7622_NUM_SENSORS] = { 0, };
>  static const int mt7622_vts_index[MT7622_NUM_SENSORS] = { VTS1 };
>  static const int mt7622_tc_offset[MT7622_NUM_CONTROLLER] = { 0x0, };
>  
> -/**
> +/*
>   * The MT8173 thermal controller has four banks. Each bank can read up to
>   * four temperature sensors simultaneously. The MT8173 has a total of 5
>   * temperature sensors. We use each bank to measure a certain area of the
> @@ -400,7 +400,7 @@ static const struct mtk_thermal_data mt8173_thermal_data = {
>  	.sensor_mux_values = mt8173_mux_values,
>  };
>  
> -/**
> +/*
>   * The MT2701 thermal controller has one bank, which can read up to
>   * three temperature sensors simultaneously. The MT2701 has a total of 3
>   * temperature sensors.
> @@ -430,7 +430,7 @@ static const struct mtk_thermal_data mt2701_thermal_data = {
>  	.sensor_mux_values = mt2701_mux_values,
>  };
>  
> -/**
> +/*
>   * The MT2712 thermal controller has one bank, which can read up to
>   * four temperature sensors simultaneously. The MT2712 has a total of 4
>   * temperature sensors.
> @@ -484,7 +484,7 @@ static const struct mtk_thermal_data mt7622_thermal_data = {
>  	.sensor_mux_values = mt7622_mux_values,
>  };
>  
> -/**
> +/*
>   * The MT8183 thermal controller has one bank for the current SW framework.
>   * The MT8183 has a total of 6 temperature sensors.
>   * There are two thermal controller to control the six sensor.
> @@ -495,7 +495,6 @@ static const struct mtk_thermal_data mt7622_thermal_data = {
>   * data, and this indeed needs the temperatures of the individual banks
>   * for making better decisions.
>   */
> -
>  static const struct mtk_thermal_data mt8183_thermal_data = {
>  	.auxadc_channel = MT8183_TEMP_AUXADC_CHANNEL,
>  	.num_banks = MT8183_NUM_SENSORS_PER_ZONE,
> @@ -519,7 +518,8 @@ static const struct mtk_thermal_data mt8183_thermal_data = {
>  
>  /**
>   * raw_to_mcelsius - convert a raw ADC value to mcelsius
> - * @mt:		The thermal controller
> + * @mt:	The thermal controller
> + * @sensno:	sensor number
>   * @raw:	raw ADC value

This doesn't look related to $subject

>   *
>   * This converts the raw ADC value to mcelsius using the SoC specific
> -- 
> 2.17.1

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
