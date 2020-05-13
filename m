Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54EA01D1755
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 16:18:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f1rBaVXXr/tcezQJmwkSRZ4vYAaZ0Hl+YgeVMV4WFJ0=; b=O8exPIWG8qS1F+
	n1eMKqQQqPPiHs4KFj62KcTz+LbkA58y/4GQMeSV9jyyBcajKHYqDU3t3V9t2RlbpL2RdRS7LAaGq
	MOtwV+6szy4g4XlNgpFRU/syAajNAgnbSH7BugZDa3LrIBB9DfYosFDQxOVbGPYqP9fGo+NZUhGTi
	khtN2uQ+i79kIl56kKp90cJ4r01fIyC6WWygihJeon3mw3cOSCwhbXU90mvqqMCq5LstzN6IYTaRB
	+1cg2t7q+zQjLdGOCqFQQs228A2lIQ6auCi5gWq5QXXN3+Rd0cCKAR5UeeYVrjOU4QIjbhav/p8ha
	fWOWBOKKTXeSvBQZ62GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYsDC-00088p-6B; Wed, 13 May 2020 14:18:18 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYsCu-000887-MT
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 14:18:02 +0000
Received: by mail-wr1-x443.google.com with SMTP id e1so7170549wrt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 07:17:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:autocrypt:organization:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=00hkIgqy2TV8FgXbgC8btVc66deFvTlaw+vQ044Y+dc=;
 b=JcDElBEc+piLMqL6G+GM86gdLAnj/1TS0BQwz9eaB2yDmcHjVn7sB2imiROSz2hBls
 ZKF+eV9TbtkBEWv51PBiE1LgBKP9xveMj/mjLxhF3hYA+W8TxCbjxhCcaJ7dFcbxheAk
 Hysx+N3I6IOKoKLnV/mf3gswvUTIkInwFo9UlQkPZDqsXUwu4Mr5daiEjtTg86TJZCL2
 TH8IGUDuB5Wxqjfj6KKWZwPw+3L4yZiPPU4pXqTNZpMy4iate3uekYPVhaDcDyXSDXKY
 7mlDJbds3nUwytt+ojNMIbeEBTnc4g7wL+QkYt3zUxDMSzxPDa6RHUvfqGS+FnrZtbBK
 EZPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=00hkIgqy2TV8FgXbgC8btVc66deFvTlaw+vQ044Y+dc=;
 b=nk/cjCHx7BCFDc8SLvLnsdSW8TwX+BeXPm4VlwST19gYHU4VAnG5PlrTv0B+PoWZMl
 7yflMpFcQXX9klRc7nNcXuhN/Ua/+1zyK92KsOoEAevFu4AytyGs+sN4C60083WZvr3k
 y1R3ud1zOUMP7LMGbfFGsf9DT8/IylDVthbdj9qatvrMcy3XfHFNfUsY8xH0x/ezar3v
 RYVBOeJ2xO+tJJQ6kyxAkinXexCJVcDOk2zCj8I6t93UVgoeWBeGGIi7Md+bAhWNrZHk
 SYCgXLG3Sq+sxDTGATRbZjbGtMd+YWgLyXrf4snf0kXxlqZzAFthAFnOMKkfde83zTKF
 3WJw==
X-Gm-Message-State: AGi0PuaTy3CxYx9w+UANVVQnxxG8WuCpBG5VDvgAzIOuJHMaSG/aPkFj
 TbPVtSwp+3FaHJCx3RDuej3l1kdKkeqnJg==
X-Google-Smtp-Source: APiQypKYTtyutwBonrNiYjKQhDV8kI/nCyjkiNiCUZwlLML1lYpXii9+IbE/H8ZMAB1HTNXfQW+uvg==
X-Received: by 2002:adf:e483:: with SMTP id i3mr29928256wrm.88.1589379478447; 
 Wed, 13 May 2020 07:17:58 -0700 (PDT)
Received: from ?IPv6:2a01:e35:2ec0:82b0:4460:3fd3:382:4a71?
 ([2a01:e35:2ec0:82b0:4460:3fd3:382:4a71])
 by smtp.gmail.com with ESMTPSA id 2sm27830241wre.25.2020.05.13.07.17.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 May 2020 07:17:57 -0700 (PDT)
Subject: Re: [PATCH v3 3/4] soc: amlogic: meson-ee-pwrc: add support for
 Meson8/Meson8b/Meson8m2
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 robh+dt@kernel.org, khilman@baylibre.com, linux-amlogic@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20200420202612.369370-1-martin.blumenstingl@googlemail.com>
 <20200420202612.369370-4-martin.blumenstingl@googlemail.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 BSwxi7g3Mu7u5kUByanqHyA=
Organization: Baylibre
Message-ID: <0a01e65d-5169-d528-49bd-e37ff970c211@baylibre.com>
Date: Wed, 13 May 2020 16:17:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200420202612.369370-4-martin.blumenstingl@googlemail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_071800_829857_01F3A956 
X-CRM114-Status: GOOD (  23.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20/04/2020 22:26, Martin Blumenstingl wrote:
> This adds support for the power domains on Meson8/Meson8b/Meson8m2.
> Meson8 doesn't use any reset lines while Meson8b and Meson8m2 use the
> same set of reset lines (which is different from the newer SoCs).
> Add dedicated compatible strings for Meson8, Meson8b and Meson8m2 to
> support these differences.
> 
> Notable differences between Meson8 and G12A are:
> - there is no HHI_VPU_MEM_PD_REG2 on the 32-bit SoCs
> - the Meson8b datasheet describes an "audio DSP memory" power domain
>   which is used for the hardware audio decoder
> - the "amlogic,ao-sysctrl" only includes the power management related
>   registers on the 32-bit SoCs, meaning the for example the
>   AO_RTI_GEN_PWR_SLEEP0 register is at offset (0x2 << 2) rather than
>   (0x3a << 2). As result of this (0x38 << 2) is subtracted from the
>   register offsets, which is the start of the power management related
>   registers.
> 
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
>  drivers/soc/amlogic/meson-ee-pwrc.c | 72 +++++++++++++++++++++++++++--
>  1 file changed, 69 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/soc/amlogic/meson-ee-pwrc.c b/drivers/soc/amlogic/meson-ee-pwrc.c
> index 3f0261d53ad9..b30868da456a 100644
> --- a/drivers/soc/amlogic/meson-ee-pwrc.c
> +++ b/drivers/soc/amlogic/meson-ee-pwrc.c
> @@ -14,6 +14,7 @@
>  #include <linux/reset-controller.h>
>  #include <linux/reset.h>
>  #include <linux/clk.h>
> +#include <dt-bindings/power/meson8-power.h>
>  #include <dt-bindings/power/meson-g12a-power.h>
>  #include <dt-bindings/power/meson-sm1-power.h>
>  
> @@ -22,6 +23,12 @@
>  #define AO_RTI_GEN_PWR_SLEEP0		(0x3a << 2)
>  #define AO_RTI_GEN_PWR_ISO0		(0x3b << 2)
>  
> +/*
> + * Meson8/Meson8b/Meson8m2 only expose the power management registers of
> + * the AO-bus as syscon. Above register offsets need to subtract this offset.
> + */
> +#define AO_RTI_GEN_MESON8_PMU_OFFSET	(0x38 << 2)

This is weird, I would directly add the MESON8 PWR_SLEEP0 offset directly.

> +
>  /* HHI Offsets */
>  
>  #define HHI_MEM_PD_REG0			(0x40 << 2)
> @@ -73,6 +80,13 @@ static struct meson_ee_pwrc_top_domain g12a_pwrc_vpu = {
>  	.iso_mask = BIT(9),
>  };
>  
> +static struct meson_ee_pwrc_top_domain meson8_pwrc_vpu = {
> +	.sleep_reg = AO_RTI_GEN_PWR_SLEEP0 - AO_RTI_GEN_MESON8_PMU_OFFSET,
> +	.sleep_mask = BIT(8),
> +	.iso_reg = AO_RTI_GEN_PWR_SLEEP0 - AO_RTI_GEN_MESON8_PMU_OFFSET,
> +	.iso_mask = BIT(9),
> +};
> +
>  #define SM1_EE_PD(__bit)					\
>  	{							\
>  		.sleep_reg = AO_RTI_GEN_PWR_SLEEP0, 		\
> @@ -124,10 +138,20 @@ static struct meson_ee_pwrc_mem_domain g12a_pwrc_mem_vpu[] = {
>  	VPU_HHI_MEMPD(HHI_MEM_PD_REG0),
>  };
>  
> -static struct meson_ee_pwrc_mem_domain g12a_pwrc_mem_eth[] = {
> +static struct meson_ee_pwrc_mem_domain meson8_pwrc_mem_eth[] = {
>  	{ HHI_MEM_PD_REG0, GENMASK(3, 2) },
>  };

I would rename it meson_pwrc... since it's the same on all SoCs.

>  
> +static struct meson_ee_pwrc_mem_domain meson8_pwrc_audio_dsp_mem[] = {
> +	{ HHI_MEM_PD_REG0, GENMASK(1, 0) },
> +};
> +
> +static struct meson_ee_pwrc_mem_domain meson8_pwrc_mem_vpu[] = {
> +	VPU_MEMPD(HHI_VPU_MEM_PD_REG0),
> +	VPU_MEMPD(HHI_VPU_MEM_PD_REG1),
> +	VPU_HHI_MEMPD(HHI_MEM_PD_REG0),
> +};
> +
>  static struct meson_ee_pwrc_mem_domain sm1_pwrc_mem_vpu[] = {
>  	VPU_MEMPD(HHI_VPU_MEM_PD_REG0),
>  	VPU_MEMPD(HHI_VPU_MEM_PD_REG1),
> @@ -201,7 +225,27 @@ static bool pwrc_ee_get_power(struct meson_ee_pwrc_domain *pwrc_domain);
>  static struct meson_ee_pwrc_domain_desc g12a_pwrc_domains[] = {
>  	[PWRC_G12A_VPU_ID]  = VPU_PD("VPU", &g12a_pwrc_vpu, g12a_pwrc_mem_vpu,
>  				     pwrc_ee_get_power, 11, 2),
> -	[PWRC_G12A_ETH_ID] = MEM_PD("ETH", g12a_pwrc_mem_eth),
> +	[PWRC_G12A_ETH_ID] = MEM_PD("ETH", meson8_pwrc_mem_eth),
> +};
> +
> +static struct meson_ee_pwrc_domain_desc meson8_pwrc_domains[] = {
> +	[PWRC_MESON8_VPU_ID]  = VPU_PD("VPU", &meson8_pwrc_vpu,
> +				       meson8_pwrc_mem_vpu, pwrc_ee_get_power,
> +				       0, 1),
> +	[PWRC_MESON8_ETHERNET_MEM_ID] = MEM_PD("ETHERNET_MEM",
> +						  meson8_pwrc_mem_eth),
> +	[PWRC_MESON8_AUDIO_DSP_MEM_ID] = MEM_PD("AUDIO_DSP_MEM",
> +						meson8_pwrc_audio_dsp_mem),
> +};
> +
> +static struct meson_ee_pwrc_domain_desc meson8b_pwrc_domains[] = {
> +	[PWRC_MESON8_VPU_ID]  = VPU_PD("VPU", &meson8_pwrc_vpu,
> +				       meson8_pwrc_mem_vpu, pwrc_ee_get_power,
> +				       11, 1),
> +	[PWRC_MESON8_ETHERNET_MEM_ID] = MEM_PD("ETHERNET_MEM",
> +						  meson8_pwrc_mem_eth),
> +	[PWRC_MESON8_AUDIO_DSP_MEM_ID] = MEM_PD("AUDIO_DSP_MEM",
> +						meson8_pwrc_audio_dsp_mem),
>  };
>  
>  static struct meson_ee_pwrc_domain_desc sm1_pwrc_domains[] = {
> @@ -216,7 +260,7 @@ static struct meson_ee_pwrc_domain_desc sm1_pwrc_domains[] = {
>  	[PWRC_SM1_GE2D_ID] = TOP_PD("GE2D", &sm1_pwrc_ge2d, sm1_pwrc_mem_ge2d,
>  				    pwrc_ee_get_power),
>  	[PWRC_SM1_AUDIO_ID] = MEM_PD("AUDIO", sm1_pwrc_mem_audio),
> -	[PWRC_SM1_ETH_ID] = MEM_PD("ETH", g12a_pwrc_mem_eth),
> +	[PWRC_SM1_ETH_ID] = MEM_PD("ETH", meson8_pwrc_mem_eth),
>  };
>  
>  struct meson_ee_pwrc_domain {
> @@ -470,12 +514,34 @@ static struct meson_ee_pwrc_domain_data meson_ee_g12a_pwrc_data = {
>  	.domains = g12a_pwrc_domains,
>  };
>  
> +static struct meson_ee_pwrc_domain_data meson_ee_m8_pwrc_data = {
> +	.count = ARRAY_SIZE(meson8_pwrc_domains),
> +	.domains = meson8_pwrc_domains,
> +};
> +
> +static struct meson_ee_pwrc_domain_data meson_ee_m8b_pwrc_data = {
> +	.count = ARRAY_SIZE(meson8b_pwrc_domains),
> +	.domains = meson8b_pwrc_domains,
> +};
> +
>  static struct meson_ee_pwrc_domain_data meson_ee_sm1_pwrc_data = {
>  	.count = ARRAY_SIZE(sm1_pwrc_domains),
>  	.domains = sm1_pwrc_domains,
>  };
>  
>  static const struct of_device_id meson_ee_pwrc_match_table[] = {
> +	{
> +		.compatible = "amlogic,meson8-pwrc",
> +		.data = &meson_ee_m8_pwrc_data,
> +	},
> +	{
> +		.compatible = "amlogic,meson8b-pwrc",
> +		.data = &meson_ee_m8b_pwrc_data,
> +	},
> +	{
> +		.compatible = "amlogic,meson8m2-pwrc",
> +		.data = &meson_ee_m8b_pwrc_data,
> +	},
>  	{
>  		.compatible = "amlogic,meson-g12a-pwrc",
>  		.data = &meson_ee_g12a_pwrc_data,
> 

With these fixed:
Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
