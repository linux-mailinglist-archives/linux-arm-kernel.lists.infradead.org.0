Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F34319CD05
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 00:45:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YcMbwVRARwByoZsh1csuRZ9PWM49BuPtDsrCssg2bLI=; b=s3AYd/S3H7Ybm3
	UeHaIDRd9Pxskg3tPOgDh6c/SE9WeLxwYKKzUgNzw6DM4zPiCJICtP2fFP/4s7wqUZ2bkwnNCe70u
	8mF3X/G0zhd8urNev6zOULThMmCj+NBeDHrSXbGjSfjXDP/vPly8Te4Q0Lst1LlvGToMaGk3m/Cmc
	yOhrCm2iRk0PhJ1Pm8BYZIKaYsFC/dCTnMJ5henvm1dRvVQlJlWaDe0Z9Cv1f05NyvKjPLGP154NK
	OGRosNO8H1alR6eT9mi7mdCo9aR6ObuMEDUa3Iu3oh9l/B9vsuC/PzrqJUEYhw0/KOjPOb3zjn0uq
	ARgk3Z7QEJ2T+izRp+7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK8aN-0007jY-41; Thu, 02 Apr 2020 22:45:19 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK8aD-0006vG-Ak; Thu, 02 Apr 2020 22:45:11 +0000
Received: by mail-wm1-x343.google.com with SMTP id d202so5618193wmd.1;
 Thu, 02 Apr 2020 15:45:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=DBNlItfPSN5deW/LZcyZ+6282u2jwuwd5v8DH2PcVqw=;
 b=Kp5gztrcevKUq9zu5mmKdYBYYdxWQ+Mi4wUMo/JvXWcdJXEHx1JTJpdRgsi/GKOIHg
 wk9mL+8dOOE2G4cvyQHz/CXxItxLS5jJ9WLNTcEJUxpHvQQ6vVTI/Qp+lN4usKvs1rMx
 kP9nD0xcliF8YO4jfICgR/wxx+89sOjWXdf9rp39+fk/bqy4oz5X8OLCCFNnPYrTGhR5
 9baT/4ByZHHXsXpNNs3C8su3+5L8QBU/5aEKNuovtu6wxows+iZkS3NJ6dE6Imw8QEy2
 Dvfhz2bRKu5P9TCGElcli9hKhXdXaVh290fPD5CPdDZoeXxrno+PeX+P/9k1Z84jS76L
 wwhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=DBNlItfPSN5deW/LZcyZ+6282u2jwuwd5v8DH2PcVqw=;
 b=a1urfcJ9PTWf1/zv9uSB5Df7Ij4W4DfouWLjocRcBf2HyMFXqVlno+1CI1Dauk6czZ
 8+qYqcnMsJfWZmnSzZPy2a3zFq2dVP1+ZSUuBUgbUSeqY8GJNpSNP5Y1FGK8tdlowu2B
 N3WD2s39hsbwppFXwFmr/JcLf1dHmxjblAtMH3gspMXVo5I7A6m0CZDBARsIoU1o0IdY
 x15thLWBaYRrZR/XlCJEtkBMdOI/HXeuKtdTJM5imESMa+JwjRtAhUA8v4vDlV7dwkQ/
 /LFRdqSo2QUdn+Hd5c+/KVjYrPLgSSDhO8jsPfPAlJohMNOn+3VMHVlw2uaFgcX5uAbc
 KrWg==
X-Gm-Message-State: AGi0PuYfRTrEoGKOcasqV+UNHgLNmXgzLPG89L0Q/ocZngOse1dx4Xip
 ZgMSaxIiM+HYvKFZ5odZPAc=
X-Google-Smtp-Source: APiQypLUXifz1fxiWxQmHW27W+Ahi0ehVFQOa82Ub+c7Rb7XckIz8rH9WccKd9NhMgxqeLaUUZ6KGA==
X-Received: by 2002:a7b:cf02:: with SMTP id l2mr3134678wmg.4.1585867507772;
 Thu, 02 Apr 2020 15:45:07 -0700 (PDT)
Received: from ziggy.stardust ([213.195.113.243])
 by smtp.gmail.com with ESMTPSA id r11sm9669496wrn.24.2020.04.02.15.45.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 02 Apr 2020 15:45:06 -0700 (PDT)
Subject: Re: [PATCH 2/2] thermal: mediatek: add tsensor support for MT7622 SoC
To: Henry Yen <henry.yen@mediatek.com>, Zhang Rui <rui.zhang@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>
References: <1584611693-3553-1-git-send-email-henry.yen@mediatek.com>
 <1584611693-3553-3-git-send-email-henry.yen@mediatek.com>
From: Matthias Brugger <matthias.bgg@gmail.com>
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <6ddd607d-a55b-2607-4e0c-e97b1d69afed@gmail.com>
Date: Fri, 3 Apr 2020 00:45:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <1584611693-3553-3-git-send-email-henry.yen@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_154509_424548_3023C0F1 
X-CRM114-Status: GOOD (  24.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [matthias.bgg[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Steven Liu <steven.liu@mediatek.com>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Michael Kao <michael.kao@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 19/03/2020 10:54, Henry Yen wrote:
> This patch adds the support for version 2 thermal system(e.g., MT7622 SoC).
> The changes include the way of reading calibration data, the way of
> converting temperature and hardware initialization specific for version 2
> thermal system.
> 
> Signed-off-by: Henry Yen <henry.yen@mediatek.com>
> ---
>  drivers/thermal/mtk_thermal.c | 100 +++++++++++++++++++++++++++++++++-
>  1 file changed, 98 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/thermal/mtk_thermal.c b/drivers/thermal/mtk_thermal.c
> index 13e17c31ba3b..9e6807f6abd4 100644
> --- a/drivers/thermal/mtk_thermal.c
> +++ b/drivers/thermal/mtk_thermal.c
> @@ -38,6 +38,7 @@
>  #define TEMP_MONIDET0		0x014
>  #define TEMP_MONIDET1		0x018
>  #define TEMP_MSRCTL0		0x038
> +#define TEMP_MSRCTL1		0x03c
>  #define TEMP_AHBPOLL		0x040
>  #define TEMP_AHBTO		0x044
>  #define TEMP_ADCPNP0		0x048
> @@ -133,6 +134,20 @@
>  #define CALIB_BUF0_O_SLOPE_SIGN_V1(x)	(((x) >> 7) & 0x1)
>  #define CALIB_BUF1_ID_V1(x)		(((x) >> 9) & 0x1)
>  
> +/*
> + * Layout of the fuses providing the calibration data
> + * These macros could be used for MT7622.
> + */
> +#define CALIB_BUF0_ADC_OE_V2(x)		(((x) >> 22) & 0x3ff)
> +#define CALIB_BUF0_ADC_GE_V2(x)		(((x) >> 12) & 0x3ff)
> +#define CALIB_BUF0_DEGC_CALI_V2(x)	(((x) >> 6) & 0x3f)
> +#define CALIB_BUF0_O_SLOPE_V2(x)	(((x) >> 0) & 0x3f)
> +#define CALIB_BUF1_VTS_TS1_V2(x)	(((x) >> 23) & 0x1ff)
> +#define CALIB_BUF1_VTS_TS2_V2(x)	(((x) >> 14) & 0x1ff)
> +#define CALIB_BUF1_VTS_TSABB_V2(x)	(((x) >> 5) & 0x1ff)
> +#define CALIB_BUF1_VALID_V2(x)		(((x) >> 4) & 0x1)
> +#define CALIB_BUF1_O_SLOPE_SIGN_V2(x)	(((x) >> 3) & 0x1)
> +
>  enum {
>  	VTS1,
>  	VTS2,
> @@ -266,8 +281,10 @@ struct mtk_thermal {
>  
>  	/* Calibration values */
>  	s32 adc_ge;
> +	s32 adc_oe;
>  	s32 degc_cali;
>  	s32 o_slope;
> +	s32 o_slope_sign;
>  	s32 vts[MAX_NUM_VTS];
>  
>  	const struct mtk_thermal_data *conf;
> @@ -367,7 +384,9 @@ static const int mt7622_vts_index[MT7622_NUM_SENSORS] = { VTS1 };
>  static const int mt7622_tc_offset[MT7622_NUM_CONTROLLER] = { 0x0, };
>  
>  static int mtk_thermal_extract_efuse_v1(struct mtk_thermal *mt, u32 *buf);
> +static int mtk_thermal_extract_efuse_v2(struct mtk_thermal *mt, u32 *buf);
>  static int raw_to_mcelsius_v1(struct mtk_thermal *mt, int sensno, s32 raw);
> +static int raw_to_mcelsius_v2(struct mtk_thermal *mt, int sensno, s32 raw);
>  
>  /*
>   * The MT8173 thermal controller has four banks. Each bank can read up to
> @@ -503,8 +522,8 @@ static const struct mtk_thermal_data mt7622_thermal_data = {
>  	.adcpnp = mt7622_adcpnp,
>  	.sensor_mux_values = mt7622_mux_values,
>  	.version = MTK_THERMAL_V2,
> -	.extract = mtk_thermal_extract_efuse_v1,
> -	.convert = raw_to_mcelsius_v1,
> +	.extract = mtk_thermal_extract_efuse_v2,
> +	.convert = raw_to_mcelsius_v2,

Hm, does this mean that patch 1/2 get's fixed here? Please reorganize your
patches so that they are correct in the first place and do not needed to be
fixed in the same series.

Regards,
Matthias

>  };
>  
>  /*
> @@ -566,6 +585,36 @@ static int raw_to_mcelsius_v1(struct mtk_thermal *mt, int sensno, s32 raw)
>  	return mt->degc_cali * 500 - tmp;
>  }
>  
> +static int raw_to_mcelsius_v2(struct mtk_thermal *mt, int sensno, s32 raw)
> +{
> +	s32 format_1 = 0;
> +	s32 format_2 = 0;
> +	s32 g_oe = 1;
> +	s32 g_gain = 1;
> +	s32 g_x_roomt = 0;
> +	s32 tmp = 0;
> +
> +	if (raw == 0)
> +		return 0;
> +
> +	raw &= 0xfff;
> +	g_gain = 10000 + (((mt->adc_ge - 512) * 10000) >> 12);
> +	g_oe = mt->adc_oe - 512;
> +	format_1 = mt->vts[VTS2] + 3105 - g_oe;
> +	format_2 = (mt->degc_cali * 10) >> 1;
> +	g_x_roomt = (((format_1 * 10000) >> 12) * 10000) / g_gain;
> +
> +	tmp = (((((raw - g_oe) * 10000) >> 12) * 10000) / g_gain) - g_x_roomt;
> +	tmp = tmp * 10 * 100 / 11;
> +
> +	if (mt->o_slope_sign == 0)
> +		tmp = tmp / (165 - mt->o_slope);
> +	else
> +		tmp = tmp / (165 + mt->o_slope);
> +
> +	return (format_2 - tmp) * 100;
> +}
> +
>  /**
>   * mtk_thermal_get_bank - get bank
>   * @bank:	The bank
> @@ -831,6 +880,23 @@ static int mtk_thermal_extract_efuse_v1(struct mtk_thermal *mt, u32 *buf)
>  	return 0;
>  }
>  
> +static int mtk_thermal_extract_efuse_v2(struct mtk_thermal *mt, u32 *buf)
> +{
> +	if (!CALIB_BUF1_VALID_V2(buf[1]))
> +		return -EINVAL;
> +
> +	mt->adc_oe = CALIB_BUF0_ADC_OE_V2(buf[0]);
> +	mt->adc_ge = CALIB_BUF0_ADC_GE_V2(buf[0]);
> +	mt->degc_cali = CALIB_BUF0_DEGC_CALI_V2(buf[0]);
> +	mt->o_slope = CALIB_BUF0_O_SLOPE_V2(buf[0]);
> +	mt->vts[VTS1] = CALIB_BUF1_VTS_TS1_V2(buf[1]);
> +	mt->vts[VTS2] = CALIB_BUF1_VTS_TS2_V2(buf[1]);
> +	mt->vts[VTSABB] = CALIB_BUF1_VTS_TSABB_V2(buf[1]);
> +	mt->o_slope_sign = CALIB_BUF1_O_SLOPE_SIGN_V2(buf[1]);
> +
> +	return 0;
> +}
> +
>  static int mtk_thermal_get_calibration_data(struct device *dev,
>  					    struct mtk_thermal *mt)
>  {
> @@ -900,6 +966,28 @@ static const struct of_device_id mtk_thermal_of_match[] = {
>  };
>  MODULE_DEVICE_TABLE(of, mtk_thermal_of_match);
>  
> +static void mtk_thermal_turn_on_buffer(void __iomem *apmixed_base)
> +{
> +	int tmp;
> +
> +	tmp = readl(apmixed_base + APMIXED_SYS_TS_CON1);
> +	tmp &= ~(0x37);
> +	tmp |= 0x1;
> +	writel(tmp, apmixed_base + APMIXED_SYS_TS_CON1);
> +	udelay(200);
> +}
> +
> +static void mtk_thermal_release_periodic_ts(struct mtk_thermal *mt,
> +					    void __iomem *auxadc_base)
> +{
> +	int tmp;
> +
> +	writel(0x800, auxadc_base + AUXADC_CON1_SET_V);
> +	writel(0x1, mt->thermal_base + TEMP_MONCTL0);
> +	tmp = readl(mt->thermal_base + TEMP_MSRCTL1);
> +	writel((tmp & (~0x10e)), mt->thermal_base + TEMP_MSRCTL1);
> +}
> +
>  static int mtk_thermal_probe(struct platform_device *pdev)
>  {
>  	int ret, i, ctrl_id;
> @@ -908,6 +996,7 @@ static int mtk_thermal_probe(struct platform_device *pdev)
>  	struct resource *res;
>  	u64 auxadc_phys_base, apmixed_phys_base;
>  	struct thermal_zone_device *tzdev;
> +	void __iomem *apmixed_base, *auxadc_base;
>  
>  	mt = devm_kzalloc(&pdev->dev, sizeof(*mt), GFP_KERNEL);
>  	if (!mt)
> @@ -942,6 +1031,7 @@ static int mtk_thermal_probe(struct platform_device *pdev)
>  		return -ENODEV;
>  	}
>  
> +	auxadc_base = of_iomap(auxadc, 0);
>  	auxadc_phys_base = of_get_phys_base(auxadc);
>  
>  	of_node_put(auxadc);
> @@ -957,6 +1047,7 @@ static int mtk_thermal_probe(struct platform_device *pdev)
>  		return -ENODEV;
>  	}
>  
> +	apmixed_base = of_iomap(apmixedsys, 0);
>  	apmixed_phys_base = of_get_phys_base(apmixedsys);
>  
>  	of_node_put(apmixedsys);
> @@ -982,6 +1073,11 @@ static int mtk_thermal_probe(struct platform_device *pdev)
>  		goto err_disable_clk_auxadc;
>  	}
>  
> +	if (mt->conf->version == MTK_THERMAL_V2) {
> +		mtk_thermal_turn_on_buffer(apmixed_base);
> +		mtk_thermal_release_periodic_ts(mt, auxadc_base);
> +	}
> +
>  	for (ctrl_id = 0; ctrl_id < mt->conf->num_controller ; ctrl_id++)
>  		for (i = 0; i < mt->conf->num_banks; i++)
>  			mtk_thermal_init_bank(mt, i, apmixed_phys_base,
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
