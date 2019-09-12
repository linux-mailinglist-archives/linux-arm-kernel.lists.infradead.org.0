Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AF76B0B04
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 11:13:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BquwO6L86CEz5kTT5KpKtwNY5gFapcIyrKW87cvmZp8=; b=XyYxZO5jc0TFDZ
	aiawK/H0ADTqG6QNuVf5Km3eM2xPOUCLIjoYLmp67S6yppn4D69dkGDf91FqhTXxV0/Ht82VoNEdH
	rqZ831QdMwYbI+s0OuFYcWZm5wK82l0zJIbRTx9qdrgnWgOEv/RAuSDmArlwx+yFyNe2MZBL1gw+P
	EO+ce8wuXTIE7tmvaujevchwyfdOprqIfx82sBZLBIAnNxj9L2fnx0FfFFU4cWiqP7ns64cyZtC5k
	aIhNmdKb5hMKl+6rIPc1979LkoIYeBPbWy+71XEoRxMJYwbqkLReDMfv88MzxgXHgyxrsC1wuEJEC
	fCNHOupz06Z1lMND0IVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8LAi-00070G-NJ; Thu, 12 Sep 2019 09:13:48 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8LAR-0006zH-Nx; Thu, 12 Sep 2019 09:13:34 +0000
Received: by mail-ed1-x543.google.com with SMTP id o9so23324329edq.0;
 Thu, 12 Sep 2019 02:13:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=V7uM9fzlegp47TmhP3p8DAj2IeNP7sVXm68zda4cRyc=;
 b=qkfdRy4iBMhx3G3vR58+QDnJrA8TheGKTbhXrZr95qjpXP0dxFsNkVl4cjFIlhfF4S
 /CknzC2VNzeVRxeSsDBu8qDYKZdh9IQaFJQJeocKMMqmfsv5U/kEYW8jirVYnO6d46iI
 2pjKIHetreYB/Q1R5KprT+urxRc6B43sFPq2Ui+QmQ0fX9e5Iktig0JaOWRXuS7MPpuE
 /i4p/QbHuEpoxLjj7tB5iJKiwKAzun9iRsevlijboqCWBHTPv5xa7jOdLVskpFp9ywRl
 5uOryYEE9anEfk0HqK4w1VImJpJr25ECqBUDy2CtpEy/+2sz1JPN9N8u6xPt+KLruIPs
 gjEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=V7uM9fzlegp47TmhP3p8DAj2IeNP7sVXm68zda4cRyc=;
 b=D65zTYaNhRldMYhBbMW8OsSovsbxLweOjZwkIsDJuI8YRtNAfhKrkG2XDsOcg9PQta
 BEwFOx3nxqZUvjlX8FlX8z5jgbhYTeLfTnZZXRIY5So1z4dLUsKdt+9fYo4DU2WiV2A3
 UxZm2GiESQZdnB7gkR55ESqdWjshgTMo+h9yFk3A8bOPOKlyEborSmRVpDmB5NRSVOjE
 PtVP9Uz0Sxhr2WELipxOW5OXsw1UExRyhVaB08m0nZNQ36csYglEni2h1RxkmA+EneW/
 VNZD31jXVoBFFtfNpQwumqPiysoVVtJukBtkvsJ3tQJh1VtJdjUjrUL61o/+PJS8z93i
 go+w==
X-Gm-Message-State: APjAAAVApMb6SHew9Obh0pNbHuiU9WoCuMY4w3/05OMyJcgPYp4Vlqdq
 jI45ZGrj8I+EXyep7wqssUR2mSLZbgA=
X-Google-Smtp-Source: APXvYqxC3tlQ07peo3gywigscvXZBbGNBSjba5y1MpjYDD0NAZ6g0IuRbnQdxsuUMk0kjHkAzji34Q==
X-Received: by 2002:a50:d089:: with SMTP id v9mr41974802edd.54.1568279609009; 
 Thu, 12 Sep 2019 02:13:29 -0700 (PDT)
Received: from ziggy.stardust ([37.223.145.190])
 by smtp.gmail.com with ESMTPSA id l1sm4655235edc.11.2019.09.12.02.13.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 12 Sep 2019 02:13:28 -0700 (PDT)
Subject: Re: [PATCH] mfd: mt6360: add pmic mt6360 driver
To: Gene Chen <gene.chen.richtek@gmail.com>, gene_chen@richtek.com,
 Wilma.Wu@mediatek.com, Lee Jones <lee.jones@linaro.org>
References: <1568275837-3560-1-git-send-email-gene.chen.richtek@gmail.com>
From: Matthias Brugger <matthias.bgg@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
 jrHWeQEI2ucSKsNa8FllDmG/fQ==
Message-ID: <be0bbf3b-76f8-9e2a-7c51-d5987263a859@gmail.com>
Date: Thu, 12 Sep 2019 11:13:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1568275837-3560-1-git-send-email-gene.chen.richtek@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_021331_815664_190640B1 
X-CRM114-Status: GOOD (  19.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (matthias.bgg[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Gene Chen <gene_chen@mediatek.corp-partner.google.com>,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Gene Chen,

Please use ./scripts/get_maintainer.pl to find out which are the maintainer(s)
for a specific series/patch.

I added Lee Jones, who is the maintainer of the MTD subsystem.

Right now I have no time to review the patches, sorry.

Regards,
Matthias

On 12/09/2019 10:10, Gene Chen wrote:
> From: Gene Chen <gene_chen@mediatek.corp-partner.google.com>
> 
> ---
>  drivers/mfd/Kconfig       |  12 ++
>  drivers/mfd/Makefile      |   1 +
>  drivers/mfd/mt6360-core.c | 463 ++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 476 insertions(+)
>  create mode 100644 drivers/mfd/mt6360-core.c
> 
> diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
> index f129f96..a422c76 100644
> --- a/drivers/mfd/Kconfig
> +++ b/drivers/mfd/Kconfig
> @@ -862,6 +862,18 @@ config MFD_MAX8998
>  	  additional drivers must be enabled in order to use the functionality
>  	  of the device.
>  
> +config MFD_MT6360
> +	tristate "Mediatek MT6360 SubPMIC"
> +	select MFD_CORE
> +	select REGMAP_I2C
> +	select REGMAP_IRQ
> +	depends on I2C
> +	help
> +	  Say Y here to enable MT6360 PMU/PMIC/LDO functional support.
> +	  PMU part include charger, flashlight, rgb led
> +	  PMIC part include 2-channel BUCKs and 2-channel LDOs
> +	  LDO part include 4-channel LDOs
> +
>  config MFD_MT6397
>  	tristate "MediaTek MT6397 PMIC Support"
>  	select MFD_CORE
> diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
> index f026ada..77a8f0b 100644
> --- a/drivers/mfd/Makefile
> +++ b/drivers/mfd/Makefile
> @@ -241,6 +241,7 @@ obj-$(CONFIG_INTEL_SOC_PMIC)	+= intel-soc-pmic.o
>  obj-$(CONFIG_INTEL_SOC_PMIC_BXTWC)	+= intel_soc_pmic_bxtwc.o
>  obj-$(CONFIG_INTEL_SOC_PMIC_CHTWC)	+= intel_soc_pmic_chtwc.o
>  obj-$(CONFIG_INTEL_SOC_PMIC_CHTDC_TI)	+= intel_soc_pmic_chtdc_ti.o
> +obj-$(CONFIG_MFD_MT6360)	+= mt6360-core.o
>  obj-$(CONFIG_MFD_MT6397)	+= mt6397-core.o
>  
>  obj-$(CONFIG_MFD_ALTERA_A10SR)	+= altera-a10sr.o
> diff --git a/drivers/mfd/mt6360-core.c b/drivers/mfd/mt6360-core.c
> new file mode 100644
> index 0000000..d3580618
> --- /dev/null
> +++ b/drivers/mfd/mt6360-core.c
> @@ -0,0 +1,463 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2019 MediaTek Inc.
> + */
> +
> +#include <linux/i2c.h>
> +#include <linux/init.h>
> +#include <linux/kernel.h>
> +#include <linux/mfd/core.h>
> +#include <linux/module.h>
> +#include <linux/of_irq.h>
> +#include <linux/of_platform.h>
> +#include <linux/version.h>
> +
> +#include <linux/mfd/mt6360.h>
> +#include <linux/mfd/mt6360-private.h>
> +
> +/* reg 0 -> 0 ~ 7 */
> +#define MT6360_CHG_TREG_EVT		(4)
> +#define MT6360_CHG_AICR_EVT		(5)
> +#define MT6360_CHG_MIVR_EVT		(6)
> +#define MT6360_PWR_RDY_EVT		(7)
> +/* REG 1 -> 8 ~ 15 */
> +#define MT6360_CHG_BATSYSUV_EVT		(9)
> +#define MT6360_FLED_CHG_VINOVP_EVT	(11)
> +#define MT6360_CHG_VSYSUV_EVT		(12)
> +#define MT6360_CHG_VSYSOV_EVT		(13)
> +#define MT6360_CHG_VBATOV_EVT		(14)
> +#define MT6360_CHG_VBUSOV_EVT		(15)
> +/* REG 2 -> 16 ~ 23 */
> +/* REG 3 -> 24 ~ 31 */
> +#define MT6360_WD_PMU_DET		(25)
> +#define MT6360_WD_PMU_DONE		(26)
> +#define MT6360_CHG_TMRI			(27)
> +#define MT6360_CHG_ADPBADI		(29)
> +#define MT6360_CHG_RVPI			(30)
> +#define MT6360_OTPI			(31)
> +/* REG 4 -> 32 ~ 39 */
> +#define MT6360_CHG_AICCMEASL		(32)
> +#define MT6360_CHGDET_DONEI		(34)
> +#define MT6360_WDTMRI			(35)
> +#define MT6360_SSFINISHI		(36)
> +#define MT6360_CHG_RECHGI		(37)
> +#define MT6360_CHG_TERMI		(38)
> +#define MT6360_CHG_IEOCI		(39)
> +/* REG 5 -> 40 ~ 47 */
> +#define MT6360_PUMPX_DONEI		(40)
> +#define MT6360_BAT_OVP_ADC_EVT		(41)
> +#define MT6360_TYPEC_OTP_EVT		(42)
> +#define MT6360_ADC_WAKEUP_EVT		(43)
> +#define MT6360_ADC_DONEI		(44)
> +#define MT6360_BST_BATUVI		(45)
> +#define MT6360_BST_VBUSOVI		(46)
> +#define MT6360_BST_OLPI			(47)
> +/* REG 6 -> 48 ~ 55 */
> +#define MT6360_ATTACH_I			(48)
> +#define MT6360_DETACH_I			(49)
> +#define MT6360_QC30_STPDONE		(51)
> +#define MT6360_QC_VBUSDET_DONE		(52)
> +#define MT6360_HVDCP_DET		(53)
> +#define MT6360_CHGDETI			(54)
> +#define MT6360_DCDTI			(55)
> +/* REG 7 -> 56 ~ 63 */
> +#define MT6360_FOD_DONE_EVT		(56)
> +#define MT6360_FOD_OV_EVT		(57)
> +#define MT6360_CHRDET_UVP_EVT		(58)
> +#define MT6360_CHRDET_OVP_EVT		(59)
> +#define MT6360_CHRDET_EXT_EVT		(60)
> +#define MT6360_FOD_LR_EVT		(61)
> +#define MT6360_FOD_HR_EVT		(62)
> +#define MT6360_FOD_DISCHG_FAIL_EVT	(63)
> +/* REG 8 -> 64 ~ 71 */
> +#define MT6360_USBID_EVT		(64)
> +#define MT6360_APWDTRST_EVT		(65)
> +#define MT6360_EN_EVT			(66)
> +#define MT6360_QONB_RST_EVT		(67)
> +#define MT6360_MRSTB_EVT		(68)
> +#define MT6360_OTP_EVT			(69)
> +#define MT6360_VDDAOV_EVT		(70)
> +#define MT6360_SYSUV_EVT		(71)
> +/* REG 9 -> 72 ~ 79 */
> +#define MT6360_FLED_STRBPIN_EVT		(72)
> +#define MT6360_FLED_TORPIN_EVT		(73)
> +#define MT6360_FLED_TX_EVT		(74)
> +#define MT6360_FLED_LVF_EVT		(75)
> +#define MT6360_FLED2_SHORT_EVT		(78)
> +#define MT6360_FLED1_SHORT_EVT		(79)
> +/* REG 10 -> 80 ~ 87 */
> +#define MT6360_FLED2_STRB_EVT		(80)
> +#define MT6360_FLED1_STRB_EVT		(81)
> +#define MT6360_FLED2_STRB_TO_EVT	(82)
> +#define MT6360_FLED1_STRB_TO_EVT	(83)
> +#define MT6360_FLED2_TOR_EVT		(84)
> +#define MT6360_FLED1_TOR_EVT		(85)
> +/* REG 11 -> 88 ~ 95 */
> +/* REG 12 -> 96 ~ 103 */
> +#define MT6360_BUCK1_PGB_EVT		(96)
> +#define MT6360_BUCK1_OC_EVT		(100)
> +#define MT6360_BUCK1_OV_EVT		(101)
> +#define MT6360_BUCK1_UV_EVT		(102)
> +/* REG 13 -> 104 ~ 111 */
> +#define MT6360_BUCK2_PGB_EVT		(104)
> +#define MT6360_BUCK2_OC_EVT		(108)
> +#define MT6360_BUCK2_OV_EVT		(109)
> +#define MT6360_BUCK2_UV_EVT		(110)
> +/* REG 14 -> 112 ~ 119 */
> +#define MT6360_LDO1_OC_EVT		(113)
> +#define MT6360_LDO2_OC_EVT		(114)
> +#define MT6360_LDO3_OC_EVT		(115)
> +#define MT6360_LDO5_OC_EVT		(117)
> +#define MT6360_LDO6_OC_EVT		(118)
> +#define MT6360_LDO7_OC_EVT		(119)
> +/* REG 15 -> 120 ~ 127 */
> +#define MT6360_LDO1_PGB_EVT		(121)
> +#define MT6360_LDO2_PGB_EVT		(122)
> +#define MT6360_LDO3_PGB_EVT		(123)
> +#define MT6360_LDO5_PGB_EVT		(125)
> +#define MT6360_LDO6_PGB_EVT		(126)
> +#define MT6360_LDO7_PGB_EVT		(127)
> +
> +#define MT6360_REGMAP_IRQ_REG(_irq_evt)		\
> +	REGMAP_IRQ_REG(_irq_evt, (_irq_evt) / 8, BIT((_irq_evt) % 8))
> +
> +#define MT6360_MFD_CELL(_name)					\
> +	{							\
> +		.name = #_name,					\
> +		.of_compatible = "mediatek," #_name,		\
> +		.num_resources = ARRAY_SIZE(_name##_resources),	\
> +		.resources = _name##_resources,			\
> +	}
> +
> +static const struct regmap_irq mt6360_pmu_irqs[] =  {
> +	MT6360_REGMAP_IRQ_REG(MT6360_CHG_TREG_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_CHG_AICR_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_CHG_MIVR_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_PWR_RDY_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_CHG_BATSYSUV_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_FLED_CHG_VINOVP_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_CHG_VSYSUV_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_CHG_VSYSOV_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_CHG_VBATOV_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_CHG_VBUSOV_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_WD_PMU_DET),
> +	MT6360_REGMAP_IRQ_REG(MT6360_WD_PMU_DONE),
> +	MT6360_REGMAP_IRQ_REG(MT6360_CHG_TMRI),
> +	MT6360_REGMAP_IRQ_REG(MT6360_CHG_ADPBADI),
> +	MT6360_REGMAP_IRQ_REG(MT6360_CHG_RVPI),
> +	MT6360_REGMAP_IRQ_REG(MT6360_OTPI),
> +	MT6360_REGMAP_IRQ_REG(MT6360_CHG_AICCMEASL),
> +	MT6360_REGMAP_IRQ_REG(MT6360_CHGDET_DONEI),
> +	MT6360_REGMAP_IRQ_REG(MT6360_WDTMRI),
> +	MT6360_REGMAP_IRQ_REG(MT6360_SSFINISHI),
> +	MT6360_REGMAP_IRQ_REG(MT6360_CHG_RECHGI),
> +	MT6360_REGMAP_IRQ_REG(MT6360_CHG_TERMI),
> +	MT6360_REGMAP_IRQ_REG(MT6360_CHG_IEOCI),
> +	MT6360_REGMAP_IRQ_REG(MT6360_PUMPX_DONEI),
> +	MT6360_REGMAP_IRQ_REG(MT6360_CHG_TREG_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_BAT_OVP_ADC_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_TYPEC_OTP_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_ADC_WAKEUP_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_ADC_DONEI),
> +	MT6360_REGMAP_IRQ_REG(MT6360_BST_BATUVI),
> +	MT6360_REGMAP_IRQ_REG(MT6360_BST_VBUSOVI),
> +	MT6360_REGMAP_IRQ_REG(MT6360_BST_OLPI),
> +	MT6360_REGMAP_IRQ_REG(MT6360_ATTACH_I),
> +	MT6360_REGMAP_IRQ_REG(MT6360_DETACH_I),
> +	MT6360_REGMAP_IRQ_REG(MT6360_QC30_STPDONE),
> +	MT6360_REGMAP_IRQ_REG(MT6360_QC_VBUSDET_DONE),
> +	MT6360_REGMAP_IRQ_REG(MT6360_HVDCP_DET),
> +	MT6360_REGMAP_IRQ_REG(MT6360_CHGDETI),
> +	MT6360_REGMAP_IRQ_REG(MT6360_DCDTI),
> +	MT6360_REGMAP_IRQ_REG(MT6360_FOD_DONE_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_FOD_OV_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_CHRDET_UVP_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_CHRDET_OVP_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_CHRDET_EXT_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_FOD_LR_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_FOD_HR_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_FOD_DISCHG_FAIL_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_USBID_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_APWDTRST_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_EN_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_QONB_RST_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_MRSTB_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_OTP_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_VDDAOV_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_SYSUV_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_FLED_STRBPIN_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_FLED_TORPIN_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_FLED_TX_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_FLED_LVF_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_FLED2_SHORT_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_FLED1_SHORT_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_FLED2_STRB_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_FLED1_STRB_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_FLED2_STRB_TO_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_FLED1_STRB_TO_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_FLED2_TOR_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_FLED1_TOR_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_BUCK1_PGB_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_BUCK1_OC_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_BUCK1_OV_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_BUCK1_UV_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_BUCK2_PGB_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_BUCK2_OC_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_BUCK2_OV_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_BUCK2_UV_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_LDO1_OC_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_LDO2_OC_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_LDO3_OC_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_LDO5_OC_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_LDO6_OC_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_LDO7_OC_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_LDO1_PGB_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_LDO2_PGB_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_LDO3_PGB_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_LDO5_PGB_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_LDO6_PGB_EVT),
> +	MT6360_REGMAP_IRQ_REG(MT6360_LDO7_PGB_EVT),
> +};
> +
> +static int mt6360_pmu_handle_post_irq(void *irq_drv_data)
> +{
> +	struct mt6360_pmu_info *mpi = irq_drv_data;
> +
> +	return regmap_update_bits(mpi->regmap,
> +		MT6360_PMU_IRQ_SET, MT6360_IRQ_RETRIG, MT6360_IRQ_RETRIG);
> +}
> +
> +static const struct regmap_irq_chip mt6360_pmu_irq_chip = {
> +	.irqs = mt6360_pmu_irqs,
> +	.num_irqs = ARRAY_SIZE(mt6360_pmu_irqs),
> +	.num_regs = MT6360_PMU_IRQ_REGNUM,
> +	.mask_base = MT6360_PMU_CHG_MASK1,
> +	.status_base = MT6360_PMU_CHG_IRQ1,
> +	.ack_base = MT6360_PMU_CHG_IRQ1,
> +	.init_ack_masked = true,
> +	.use_ack = true,
> +	.handle_post_irq = mt6360_pmu_handle_post_irq,
> +};
> +
> +static const struct regmap_config mt6360_pmu_regmap_config = {
> +	.reg_bits = 8,
> +	.val_bits = 8,
> +	.max_register = MT6360_PMU_MAXREG,
> +};
> +
> +static const struct resource mt6360_adc_resources[] = {
> +	DEFINE_RES_IRQ_NAMED(MT6360_ADC_DONEI, "adc_donei"),
> +};
> +
> +static const struct resource mt6360_chg_resources[] = {
> +	DEFINE_RES_IRQ_NAMED(MT6360_CHG_TREG_EVT, "chg_treg_evt"),
> +	DEFINE_RES_IRQ_NAMED(MT6360_PWR_RDY_EVT, "pwr_rdy_evt"),
> +	DEFINE_RES_IRQ_NAMED(MT6360_CHG_BATSYSUV_EVT, "chg_batsysuv_evt"),
> +	DEFINE_RES_IRQ_NAMED(MT6360_CHG_VSYSUV_EVT, "chg_vsysuv_evt"),
> +	DEFINE_RES_IRQ_NAMED(MT6360_CHG_VSYSOV_EVT, "chg_vsysov_evt"),
> +	DEFINE_RES_IRQ_NAMED(MT6360_CHG_VBATOV_EVT, "chg_vbatov_evt"),
> +	DEFINE_RES_IRQ_NAMED(MT6360_CHG_VBUSOV_EVT, "chg_vbusov_evt"),
> +	DEFINE_RES_IRQ_NAMED(MT6360_CHG_AICCMEASL, "chg_aiccmeasl"),
> +	DEFINE_RES_IRQ_NAMED(MT6360_WDTMRI, "wdtmri"),
> +	DEFINE_RES_IRQ_NAMED(MT6360_CHG_RECHGI, "chg_rechgi"),
> +	DEFINE_RES_IRQ_NAMED(MT6360_CHG_TERMI, "chg_termi"),
> +	DEFINE_RES_IRQ_NAMED(MT6360_CHG_IEOCI, "chg_ieoci"),
> +	DEFINE_RES_IRQ_NAMED(MT6360_PUMPX_DONEI, "pumpx_donei"),
> +	DEFINE_RES_IRQ_NAMED(MT6360_ATTACH_I, "attach_i"),
> +	DEFINE_RES_IRQ_NAMED(MT6360_CHRDET_EXT_EVT, "chrdet_ext_evt"),
> +};
> +
> +static const struct resource mt6360_led_resources[] = {
> +	DEFINE_RES_IRQ_NAMED(MT6360_FLED_CHG_VINOVP_EVT, "fled_chg_vinovp_evt"),
> +	DEFINE_RES_IRQ_NAMED(MT6360_FLED_LVF_EVT, "fled_lvf_evt"),
> +	DEFINE_RES_IRQ_NAMED(MT6360_FLED2_SHORT_EVT, "fled2_short_evt"),
> +	DEFINE_RES_IRQ_NAMED(MT6360_FLED1_SHORT_EVT, "fled1_short_evt"),
> +	DEFINE_RES_IRQ_NAMED(MT6360_FLED2_STRB_TO_EVT, "fled2_strb_to_evt"),
> +	DEFINE_RES_IRQ_NAMED(MT6360_FLED1_STRB_TO_EVT, "fled1_strb_to_evt"),
> +};
> +
> +static const struct resource mt6360_pmic_resources[] = {
> +	DEFINE_RES_IRQ_NAMED(MT6360_BUCK1_PGB_EVT, "buck1_pgb_evt"),
> +	DEFINE_RES_IRQ_NAMED(MT6360_BUCK1_OC_EVT, "buck1_oc_evt"),
> +	DEFINE_RES_IRQ_NAMED(MT6360_BUCK1_OV_EVT, "buck1_ov_evt"),
> +	DEFINE_RES_IRQ_NAMED(MT6360_BUCK1_UV_EVT, "buck1_uv_evt"),
> +	DEFINE_RES_IRQ_NAMED(MT6360_BUCK2_PGB_EVT, "buck2_pgb_evt"),
> +	DEFINE_RES_IRQ_NAMED(MT6360_BUCK2_OC_EVT, "buck2_oc_evt"),
> +	DEFINE_RES_IRQ_NAMED(MT6360_BUCK2_OV_EVT, "buck2_ov_evt"),
> +	DEFINE_RES_IRQ_NAMED(MT6360_BUCK2_UV_EVT, "buck2_uv_evt"),
> +	DEFINE_RES_IRQ_NAMED(MT6360_LDO6_OC_EVT, "ldo6_oc_evt"),
> +	DEFINE_RES_IRQ_NAMED(MT6360_LDO7_OC_EVT, "ldo7_oc_evt"),
> +	DEFINE_RES_IRQ_NAMED(MT6360_LDO6_PGB_EVT, "ldo6_pgb_evt"),
> +	DEFINE_RES_IRQ_NAMED(MT6360_LDO7_PGB_EVT, "ldo7_pgb_evt"),
> +};
> +
> +static const struct resource mt6360_ldo_resources[] = {
> +	DEFINE_RES_IRQ_NAMED(MT6360_LDO1_OC_EVT, "ldo1_oc_evt"),
> +	DEFINE_RES_IRQ_NAMED(MT6360_LDO2_OC_EVT, "ldo2_oc_evt"),
> +	DEFINE_RES_IRQ_NAMED(MT6360_LDO3_OC_EVT, "ldo3_oc_evt"),
> +	DEFINE_RES_IRQ_NAMED(MT6360_LDO5_OC_EVT, "ldo5_oc_evt"),
> +	DEFINE_RES_IRQ_NAMED(MT6360_LDO1_PGB_EVT, "ldo1_pgb_evt"),
> +	DEFINE_RES_IRQ_NAMED(MT6360_LDO2_PGB_EVT, "ldo2_pgb_evt"),
> +	DEFINE_RES_IRQ_NAMED(MT6360_LDO3_PGB_EVT, "ldo3_pgb_evt"),
> +	DEFINE_RES_IRQ_NAMED(MT6360_LDO5_PGB_EVT, "ldo5_pgb_evt"),
> +};
> +
> +static const struct mfd_cell mt6360_devs[] = {
> +	MT6360_MFD_CELL(mt6360_adc),
> +	MT6360_MFD_CELL(mt6360_chg),
> +	MT6360_MFD_CELL(mt6360_led),
> +	MT6360_MFD_CELL(mt6360_pmic),
> +	MT6360_MFD_CELL(mt6360_ldo),
> +	/* tcpc dev */
> +	{
> +		.name = "mt6360_tcpc",
> +		.of_compatible = "mediatek,mt6360_tcpc",
> +	},
> +};
> +
> +static const unsigned short mt6360_slave_addr[MT6360_SLAVE_MAX] = {
> +	MT6360_PMU_SLAVEID,
> +	MT6360_PMIC_SLAVEID,
> +	MT6360_LDO_SLAVEID,
> +	MT6360_TCPC_SLAVEID,
> +};
> +
> +static int mt6360_pmu_probe(struct i2c_client *client,
> +			    const struct i2c_device_id *id)
> +{
> +	struct mt6360_pmu_info *mpi;
> +	unsigned int reg_data = 0;
> +	int i, ret;
> +
> +	mpi = devm_kzalloc(&client->dev, sizeof(*mpi), GFP_KERNEL);
> +	if (!mpi)
> +		return -ENOMEM;
> +	mpi->dev = &client->dev;
> +	i2c_set_clientdata(client, mpi);
> +
> +	/* regmap regiser */
> +	mpi->regmap = devm_regmap_init_i2c(client, &mt6360_pmu_regmap_config);
> +	if (IS_ERR(mpi->regmap)) {
> +		dev_err(&client->dev, "regmap register fail\n");
> +		return PTR_ERR(mpi->regmap);
> +	}
> +	/* chip id check */
> +	ret = regmap_read(mpi->regmap, MT6360_PMU_DEV_INFO, &reg_data);
> +	if (ret < 0) {
> +		dev_err(&client->dev, "device not found\n");
> +		return ret;
> +	}
> +	if ((reg_data & CHIP_VEN_MASK) != CHIP_VEN_MT6360) {
> +		dev_err(&client->dev, "not mt6360 chip\n");
> +		return -ENODEV;
> +	}
> +	mpi->chip_rev = reg_data & CHIP_REV_MASK;
> +	/* irq register */
> +	memcpy(&mpi->irq_chip, &mt6360_pmu_irq_chip, sizeof(mpi->irq_chip));
> +	mpi->irq_chip.name = dev_name(&client->dev);
> +	mpi->irq_chip.irq_drv_data = mpi;
> +	ret = devm_regmap_add_irq_chip(&client->dev, mpi->regmap, client->irq,
> +				       IRQF_TRIGGER_FALLING, 0, &mpi->irq_chip,
> +				       &mpi->irq_data);
> +	if (ret < 0) {
> +		dev_err(&client->dev, "regmap irq chip add fail\n");
> +		return ret;
> +	}
> +	/* new i2c slave device */
> +	for (i = 0; i < MT6360_SLAVE_MAX; i++) {
> +		if (mt6360_slave_addr[i] == client->addr) {
> +			mpi->i2c[i] = client;
> +			continue;
> +		}
> +		mpi->i2c[i] = i2c_new_dummy(client->adapter,
> +					    mt6360_slave_addr[i]);
> +		if (!mpi->i2c[i]) {
> +			dev_err(&client->dev, "new i2c dev [%d] fail\n", i);
> +			ret = -ENODEV;
> +			goto out;
> +		}
> +		i2c_set_clientdata(mpi->i2c[i], mpi);
> +	}
> +	/* mfd cell register */
> +	ret = devm_mfd_add_devices(&client->dev, PLATFORM_DEVID_AUTO,
> +				   mt6360_devs, ARRAY_SIZE(mt6360_devs), NULL,
> +				   0, regmap_irq_get_domain(mpi->irq_data));
> +	if (ret < 0) {
> +		dev_err(&client->dev, "mfd add cells fail\n");
> +		goto out;
> +	}
> +	dev_info(&client->dev, "Successfully probed\n");
> +	return 0;
> +out:
> +	while (--i >= 0) {
> +		if (mpi->i2c[i]->addr == client->addr)
> +			continue;
> +		i2c_unregister_device(mpi->i2c[i]);
> +	}
> +	return ret;
> +}
> +
> +static int mt6360_pmu_remove(struct i2c_client *client)
> +{
> +	struct mt6360_pmu_info *mpi = i2c_get_clientdata(client);
> +	int i;
> +
> +	for (i = 0; i < MT6360_SLAVE_MAX; i++) {
> +		if (mpi->i2c[i]->addr == client->addr)
> +			continue;
> +		i2c_unregister_device(mpi->i2c[i]);
> +	}
> +	return 0;
> +}
> +
> +static int __maybe_unused mt6360_pmu_suspend(struct device *dev)
> +{
> +	struct i2c_client *i2c = to_i2c_client(dev);
> +
> +	if (device_may_wakeup(dev))
> +		enable_irq_wake(i2c->irq);
> +	return 0;
> +}
> +
> +static int __maybe_unused mt6360_pmu_resume(struct device *dev)
> +{
> +
> +	struct i2c_client *i2c = to_i2c_client(dev);
> +
> +	if (device_may_wakeup(dev))
> +		disable_irq_wake(i2c->irq);
> +	return 0;
> +}
> +
> +static SIMPLE_DEV_PM_OPS(mt6360_pmu_pm_ops,
> +			 mt6360_pmu_suspend, mt6360_pmu_resume);
> +
> +static const struct of_device_id __maybe_unused mt6360_pmu_of_id[] = {
> +	{ .compatible = "mediatek,mt6360_pmu", },
> +	{},
> +};
> +MODULE_DEVICE_TABLE(of, mt6360_pmu_of_id);
> +
> +static const struct i2c_device_id mt6360_pmu_id[] = {
> +	{ "mt6360_pmu", 0 },
> +	{},
> +};
> +MODULE_DEVICE_TABLE(i2c, mt6360_pmu_id);
> +
> +static struct i2c_driver mt6360_pmu_driver = {
> +	.driver = {
> +		.name = "mt6360_pmu",
> +		.owner = THIS_MODULE,
> +		.pm = &mt6360_pmu_pm_ops,
> +		.of_match_table = of_match_ptr(mt6360_pmu_of_id),
> +	},
> +	.probe = mt6360_pmu_probe,
> +	.remove = mt6360_pmu_remove,
> +	.id_table = mt6360_pmu_id,
> +};
> +module_i2c_driver(mt6360_pmu_driver);
> +
> +MODULE_AUTHOR("CY_Huang <cy_huang@richtek.com>");
> +MODULE_DESCRIPTION("MT6360 PMU I2C Driver");
> +MODULE_LICENSE("GPL");
> +MODULE_VERSION("1.0.0");
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
