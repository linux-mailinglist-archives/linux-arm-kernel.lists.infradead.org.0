Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D66CF15A495
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 10:24:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0h87YhK0SiPXgnoyA5cjnpzkOEHZf4ZFxTR2b1YGIyE=; b=qET5iKOQUVJkud
	mb1HieGlSxSxYjVAKGeVSA2i9vBDhXijCjueKRnzn/E7IfS5ProI6FqGLp594irA0GyEPxESQx+zl
	+IXTCRTNj4YNPZyWxxGtPe1pTTKLPYuc3ljxZi+MRCBT8JCD+jr6W9S0+myXQyPEcBrjO6Qa/2Fiz
	TYCrp2n9yMSH2KDONO4eZkKagtAD05/Y+azR5umuDZieUCsNEG69eSZwzvsJ9vU9EpyM3Etows5OH
	ntRVy6Ylt53fz0DXvuMt4ytEdiONikCogZvpLve3qCB8LD0sM5TfWVN50ij0rrVjLbROWS+fbYiF/
	RRSlIQSV2mCX4UVDVO9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1oFc-0007LK-MO; Wed, 12 Feb 2020 09:24:08 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1oFK-0007K1-0E; Wed, 12 Feb 2020 09:23:52 +0000
Received: by mail-wm1-x341.google.com with SMTP id s10so1267504wmh.3;
 Wed, 12 Feb 2020 01:23:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=L57x85werZXY1rABbMYnA/1paBksgYmVggQN40V4WD0=;
 b=Bx40RlCbUtPt0+Cu6eYvtKhRXakdI5RnPauY8IFk5N6hqsP8y3ZAGbsefoaekOYDcR
 c3NkxBSou4gO/4X9u2K7xdZtrsOO7eAjwUpEHNtpMzDfp5EB6KOzTkT86lIbuR6Hg61k
 QRiS1Hr5pVTW3P9P6Zprhil6Id1jOOXc570yUkLNVixcLTjNj2FtTrpmi0TjldiaOwzA
 IN0d1QNlRVDCis8wS1sYl2FwoO3P2eYUX59BjZEDWU7+hgwGE33igMUm2iFKiYe7EGDN
 mCwZOuh0pkSg7JtPfwxCMI6lC9KeenMSfSksslvpOV5Ljk3QOZ5tjXNq14eVpXkBLuR2
 KS7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=L57x85werZXY1rABbMYnA/1paBksgYmVggQN40V4WD0=;
 b=LEdpx3TbvV2PECrnYP5/F/QhLuy6Yok4h+kKaHue/zFHMqnLYwYWefKgG5v7AR+5b/
 VdEES9Qc6QdoxSojpb/1F0YBrEPunkf08KWt/7fYJb1ApgAO1gFB2KQs1CCiV3fZqocJ
 0ChSxz+hB4hSYCwkGgDMCJ515Rlbgj5mzDmjCCrBg0BZL2TTeLBQ/85a3NPqQJ1dPeH0
 2iUe90NJ9wldWzt44tOkUj8M9V57npEYZ2RFwgdg7M8AiHtt4rFkqfx+Kx8LikSlTVP1
 gaefqrOdJoP+koXD0JLC66FKiQ7YVBkUX2mK0QqlJQZeKSji7+1k79/mpgzqBQSSMwjO
 ifOA==
X-Gm-Message-State: APjAAAXaizW5Sp0+/lnfqYOJnMeXYb0UNsseWxgyX3ClIjYaNEtVjHQK
 bPCteZLOgMd4eHbeX+Cj+vg=
X-Google-Smtp-Source: APXvYqw/2+We6t9zptOWXPWyV1J9csXFxrWRui6HezaalaG5uzT1ZHV+4Af1hNXowbhysQPzv5eTgw==
X-Received: by 2002:a1c:6645:: with SMTP id a66mr12275482wmc.121.1581499428106; 
 Wed, 12 Feb 2020 01:23:48 -0800 (PST)
Received: from ziggy.stardust ([37.223.145.31])
 by smtp.gmail.com with ESMTPSA id q124sm10000748wme.2.2020.02.12.01.23.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 12 Feb 2020 01:23:47 -0800 (PST)
Subject: Re: [PATCH v11 04/10] soc: mediatek: Add multiple step bus protection
 control
To: Weiyi Lu <weiyi.lu@mediatek.com>
References: <1576813564-23927-1-git-send-email-weiyi.lu@mediatek.com>
 <1576813564-23927-5-git-send-email-weiyi.lu@mediatek.com>
 <9cafe21c-2bd2-7ee6-9e7f-ce238b935069@gmail.com>
 <1581476150.22901.35.camel@mtksdaap41>
From: Matthias Brugger <matthias.bgg@gmail.com>
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <28bcbd36-c2b9-d69e-55b2-508ad7b63887@gmail.com>
Date: Wed, 12 Feb 2020 10:23:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1581476150.22901.35.camel@mtksdaap41>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_012350_083016_DD38F702 
X-CRM114-Status: GOOD (  25.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [matthias.bgg[at]gmail.com]
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
Cc: Rob Herring <robh@kernel.org>, Nicolas Boichat <drinkcat@chromium.org>,
 srv_heupstream@mediatek.com, James Liao <jamesjj.liao@mediatek.com>,
 linux-kernel@vger.kernel.org, Fan Chen <fan.chen@mediatek.com>,
 linux-mediatek@lists.infradead.org, Sascha Hauer <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 12/02/2020 03:55, Weiyi Lu wrote:
> On Tue, 2020-02-11 at 18:49 +0100, Matthias Brugger wrote:
>>
>> On 20/12/2019 04:45, Weiyi Lu wrote:
>>> Both MT8183 & MT6765 have more control steps of bus protection
>>> than previous project. And there add more bus protection registers
>>> reside at infracfg & smi-common. Also add new APIs for multiple
>>> step bus protection control with more customized arguments.
>>> And then use bp_table for bus protection of all compatibles,
>>> instead of mixing bus_prot_mask and bus_prot_reg_update.
>>>
>>> Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
>>> ---
>>>  drivers/soc/mediatek/Makefile         |   2 +-
>>>  drivers/soc/mediatek/mtk-scpsys-ext.c | 101 +++++++++++++++++++++++++++++
>>>  drivers/soc/mediatek/mtk-scpsys.c     | 117 +++++++++++++++++++++-------------
>>>  drivers/soc/mediatek/scpsys-ext.h     |  67 +++++++++++++++++++
>>>  4 files changed, 240 insertions(+), 47 deletions(-)
>>>  create mode 100644 drivers/soc/mediatek/mtk-scpsys-ext.c
>>>  create mode 100644 drivers/soc/mediatek/scpsys-ext.h
>>>
>>> diff --git a/drivers/soc/mediatek/Makefile b/drivers/soc/mediatek/Makefile
>>> index b017330..b442be9 100644
>>> --- a/drivers/soc/mediatek/Makefile
>>> +++ b/drivers/soc/mediatek/Makefile
>>> @@ -1,5 +1,5 @@
>>>  # SPDX-License-Identifier: GPL-2.0-only
>>>  obj-$(CONFIG_MTK_CMDQ) += mtk-cmdq-helper.o
>>> -obj-$(CONFIG_MTK_INFRACFG) += mtk-infracfg.o
>>> +obj-$(CONFIG_MTK_INFRACFG) += mtk-infracfg.o mtk-scpsys-ext.o
>>
>> It seems that we would need another patch which get's rid of the mtk-infracfg
>> first and then add stuff like the possibility to have different steps.
>>
> 
> Actually I have a PATCH 05/11 to remove the mtk-infracfg.
> In this patch, I have some changes, like calling
> mtk_scpsys_ext_set_bus_protection(...) instead of
> mtk_infracfg_set_bus_protection(...) in scpsys_bus_protect_enable(...)
> and replacing bus_prot_mask by bp_table.
> I thought I should introduce the new method first and remove useless one
> later. What do you think?

Yes, but first patch would be a step to get rid of mtk-infracfg and a second
patch add bp_table and the like.

> 
>>>  obj-$(CONFIG_MTK_PMIC_WRAP) += mtk-pmic-wrap.o
>>>  obj-$(CONFIG_MTK_SCPSYS) += mtk-scpsys.o
>>> diff --git a/drivers/soc/mediatek/mtk-scpsys-ext.c b/drivers/soc/mediatek/mtk-scpsys-ext.c
>>> new file mode 100644
>>> index 0000000..df402ac
>>> --- /dev/null
>>> +++ b/drivers/soc/mediatek/mtk-scpsys-ext.c
>>
>> I'm not quite sure why we should put this into a new file. I suppose the
>> rational behind it is the fact that we access other blocks through regmap.
>>
> 
> Yes, those operation are accross infracfg and smi-common so we put these
> into new files.

Are you exepct other drivers to use this functions? If not I will have to think
again, but I don't see any reason to put it into a new file.

> 
>>> @@ -0,0 +1,101 @@
>>> +// SPDX-License-Identifier: GPL-2.0
>>> +/*
>>> + * Copyright (c) 2018 MediaTek Inc.
>>> + * Author: Owen Chen <Owen.Chen@mediatek.com>
>>> + */
>>> +#include <linux/ktime.h>
>>> +#include <linux/mfd/syscon.h>
>>> +#include <linux/of_device.h>
>>> +#include <linux/regmap.h>
>>> +#include "scpsys-ext.h"
>>> +
>>> +#define MTK_POLL_DELAY_US   10
>>> +#define MTK_POLL_TIMEOUT    USEC_PER_SEC
>>> +
>>> +static int set_bus_protection(struct regmap *map, u32 mask,
>>> +		u32 reg_set, u32 reg_sta, u32 reg_en)
>>> +{
>>> +	u32 val;
>>> +
>>> +	if (reg_set)
>>> +		regmap_write(map, reg_set, mask);
>>> +	else
>>> +		regmap_update_bits(map, reg_en, mask, mask);
>>> +
>>> +	return regmap_read_poll_timeout(map, reg_sta,
>>> +			val, (val & mask) == mask,
>>> +			MTK_POLL_DELAY_US, MTK_POLL_TIMEOUT);
>>> +}
>>> +
>>> +static int clear_bus_protection(struct regmap *map, u32 mask,
>>> +		u32 reg_clr, u32 reg_sta, u32 reg_en, bool ignore_ack)
>>> +{
>>> +	u32 val;
>>> +
>>> +	if (reg_clr)
>>> +		regmap_write(map, reg_clr, mask);
>>> +	else
>>> +		regmap_update_bits(map, reg_en, mask, 0);
>>> +
>>> +	if (ignore_ack)
>>> +		return 0;
>>> +
>>> +	return regmap_read_poll_timeout(map, reg_sta,
>>> +			val, !(val & mask),
>>> +			MTK_POLL_DELAY_US, MTK_POLL_TIMEOUT);
>>> +}
>>> +
>>> +int mtk_scpsys_ext_set_bus_protection(const struct bus_prot *bp_table,
>>> +	struct regmap *infracfg, struct regmap *smi_common)
>>> +{
>>> +	int i;
>>> +
>>> +	for (i = 0; i < MAX_STEPS; i++) {
>>
>> struct bus_prot bp_table = bp_table[i];
>>
> 
> OK, got it.
> 
>>> +		struct regmap *map = NULL;
>>> +		int ret;
>>> +
>>> +		if (bp_table[i].type == INVALID_TYPE)
>>> +			break;
>>> +		else if (bp_table[i].type == IFR_TYPE)
>>> +			map = infracfg;
>>> +		else if (bp_table[i].type == SMI_TYPE)
>>> +			map = smi_common;
>>
>> if (bp_table.type == IFR_TYPE)
>> 	map = infracfg;
>> else if (bp_table.type == SMI_TYPE)
>> 	map = smi_common;
>> else
>> 	break;
>>
> 
> OK, got it.
> 
>>> +
>>> +		ret = set_bus_protection(map,
>>> +				bp_table[i].mask, bp_table[i].set_ofs,
>>> +				bp_table[i].sta_ofs, bp_table[i].en_ofs);
>>
>> passing map and bp_table here makes code much more readable. I always end-up
>> counting the variables when the names in the callee changes.
>>
> 
> OK, I'll fix it.
> 
>>> +
>>> +		if (ret)
>>> +			return ret;
>>> +	}
>>> +
>>> +	return 0;
>>> +}
>>> +
>>> +int mtk_scpsys_ext_clear_bus_protection(const struct bus_prot *bp_table,
>>> +	struct regmap *infracfg, struct regmap *smi_common)
>>> +{
>>> +	int i;
>>> +
>>> +	for (i = MAX_STEPS - 1; i >= 0; i--) {
>>> +		struct regmap *map = NULL;
>>> +		int ret;
>>> +
>>> +		if (bp_table[i].type == INVALID_TYPE)
>>> +			continue;
>>> +		else if (bp_table[i].type == IFR_TYPE)
>>> +			map = infracfg;
>>> +		else if (bp_table[i].type == SMI_TYPE)
>>> +			map = smi_common;
>>> +
>>> +		ret = clear_bus_protection(map,
>>> +				bp_table[i].mask, bp_table[i].clr_ofs,
>>> +				bp_table[i].sta_ofs, bp_table[i].en_ofs,
>>> +				bp_table[i].ignore_clr_ack);
>>> +
>>
>> same here.
>>
> 
> Got it.
> 
>>> +		if (ret)
>>> +			return ret;
>>> +	}
>>> +
>>> +	return 0;
>>> +}
>>> diff --git a/drivers/soc/mediatek/mtk-scpsys.c b/drivers/soc/mediatek/mtk-scpsys.c
>>> index db35a28..763ca58 100644
>>> --- a/drivers/soc/mediatek/mtk-scpsys.c
>>> +++ b/drivers/soc/mediatek/mtk-scpsys.c
>>> @@ -11,7 +11,7 @@
>>>  #include <linux/platform_device.h>
>>>  #include <linux/pm_domain.h>
>>>  #include <linux/regulator/consumer.h>
>>> -#include <linux/soc/mediatek/infracfg.h>
>>> +#include "scpsys-ext.h"
>>>  
>>>  #include <dt-bindings/power/mt2701-power.h>
>>>  #include <dt-bindings/power/mt2712-power.h>
>>> @@ -87,9 +87,9 @@
>>>   * @ctl_offs: The offset for main power control register.
>>>   * @sram_pdn_bits: The mask for sram power control bits.
>>>   * @sram_pdn_ack_bits: The mask for sram power control acked bits.
>>> - * @bus_prot_mask: The mask for single step bus protection.
>>>   * @basic_clk_name: The basic clocks required by this power domain.
>>>   * @caps: The flag for active wake-up action.
>>> + * @bp_table: The mask table for multiple step bus protection.
>>>   */
>>>  struct scp_domain_data {
>>>  	const char *name;
>>> @@ -97,9 +97,9 @@ struct scp_domain_data {
>>>  	int ctl_offs;
>>>  	u32 sram_pdn_bits;
>>>  	u32 sram_pdn_ack_bits;
>>> -	u32 bus_prot_mask;
>>>  	const char *basic_clk_name[MAX_CLKS];
>>>  	u8 caps;
>>> +	struct bus_prot bp_table[MAX_STEPS];
>>>  };
>>>  
>>>  struct scp;
>>> @@ -123,8 +123,8 @@ struct scp {
>>>  	struct device *dev;
>>>  	void __iomem *base;
>>>  	struct regmap *infracfg;
>>> +	struct regmap *smi_common;
>>>  	struct scp_ctrl_reg ctrl_reg;
>>> -	bool bus_prot_reg_update;
>>>  };
>>>  
>>>  struct scp_subdomain {
>>> @@ -138,7 +138,6 @@ struct scp_soc_data {
>>>  	const struct scp_subdomain *subdomains;
>>>  	int num_subdomains;
>>>  	const struct scp_ctrl_reg regs;
>>> -	bool bus_prot_reg_update;
>>>  };
>>>  
>>>  static int scpsys_domain_is_on(struct scp_domain *scpd)
>>> @@ -252,24 +251,16 @@ static int scpsys_bus_protect_enable(struct scp_domain *scpd)
>>>  {
>>>  	struct scp *scp = scpd->scp;
>>>  
>>> -	if (!scpd->data->bus_prot_mask)
>>> -		return 0;
>>> -
>>> -	return mtk_infracfg_set_bus_protection(scp->infracfg,
>>> -			scpd->data->bus_prot_mask,
>>> -			scp->bus_prot_reg_update);
>>> +	return mtk_scpsys_ext_set_bus_protection(scpd->data->bp_table,
>>> +			scp->infracfg, scp->smi_common);
>>
>> Now that's just a wrapper which does add nothing but another indirection. We can
>> call mtk_scpsys_ext_set_bus_protection() directly (also I don't like the name,
>> actually why don't mtk_scpsys_set_bus_protection()?)
>>
> 
> You're right. I'll called mtk_scpsys_ext_set_bus_protection() directly.
> 
>>>  }
>>>  
>>>  static int scpsys_bus_protect_disable(struct scp_domain *scpd)
>>>  {
>>>  	struct scp *scp = scpd->scp;
>>>  
>>> -	if (!scpd->data->bus_prot_mask)
>>> -		return 0;
>>> -
>>> -	return mtk_infracfg_clear_bus_protection(scp->infracfg,
>>> -			scpd->data->bus_prot_mask,
>>> -			scp->bus_prot_reg_update);
>>> +	return mtk_scpsys_ext_clear_bus_protection(scpd->data->bp_table,
>>> +			scp->infracfg, scp->smi_common);
>>>  }
>>>  
>>>  static int scpsys_power_on(struct generic_pm_domain *genpd)
>>> @@ -404,8 +395,7 @@ static int init_basic_clks(struct platform_device *pdev, struct clk **clk,
>>>  
>>>  static struct scp *init_scp(struct platform_device *pdev,
>>>  			const struct scp_domain_data *scp_domain_data, int num,
>>> -			const struct scp_ctrl_reg *scp_ctrl_reg,
>>> -			bool bus_prot_reg_update)
>>> +			const struct scp_ctrl_reg *scp_ctrl_reg)
>>>  {
>>>  	struct genpd_onecell_data *pd_data;
>>>  	struct resource *res;
>>> @@ -419,8 +409,6 @@ static struct scp *init_scp(struct platform_device *pdev,
>>>  	scp->ctrl_reg.pwr_sta_offs = scp_ctrl_reg->pwr_sta_offs;
>>>  	scp->ctrl_reg.pwr_sta2nd_offs = scp_ctrl_reg->pwr_sta2nd_offs;
>>>  
>>> -	scp->bus_prot_reg_update = bus_prot_reg_update;
>>> -
>>>  	scp->dev = &pdev->dev;
>>>  
>>>  	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>>> @@ -448,6 +436,17 @@ static struct scp *init_scp(struct platform_device *pdev,
>>>  		return ERR_CAST(scp->infracfg);
>>>  	}
>>>  
>>> +	scp->smi_common = syscon_regmap_lookup_by_phandle(pdev->dev.of_node,
>>> +			"smi_comm");
>>> +
>>> +	if (scp->smi_common == ERR_PTR(-ENODEV)) {
>>> +		scp->smi_common = NULL;
>>> +	} else if (IS_ERR(scp->smi_common)) {
>>> +		dev_err(&pdev->dev, "Cannot find smi_common controller: %ld\n",
>>> +				PTR_ERR(scp->smi_common));
>>> +		return ERR_CAST(scp->smi_common);
>>> +	}
>>> +
>>>  	for (i = 0; i < num; i++) {
>>>  		struct scp_domain *scpd = &scp->domains[i];
>>>  		const struct scp_domain_data *data = &scp_domain_data[i];
>>> @@ -530,8 +529,11 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>>>  		.name = "conn",
>>>  		.sta_mask = PWR_STATUS_CONN,
>>>  		.ctl_offs = SPM_CONN_PWR_CON,
>>> -		.bus_prot_mask = MT2701_TOP_AXI_PROT_EN_CONN_M |
>>> -				 MT2701_TOP_AXI_PROT_EN_CONN_S,
>>> +		.bp_table = {
>>> +			BUS_PROT(IFR_TYPE, 0, 0, 0x220, 0x228,
>>> +				MT2701_TOP_AXI_PROT_EN_CONN_M |
>>> +				MT2701_TOP_AXI_PROT_EN_CONN_S),
>>> +		},
>>>  		.caps = MTK_SCPD_ACTIVE_WAKEUP,
>>>  	},
>>>  	[MT2701_POWER_DOMAIN_DISP] = {
>>> @@ -540,7 +542,10 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>>>  		.ctl_offs = SPM_DIS_PWR_CON,
>>>  		.sram_pdn_bits = GENMASK(11, 8),
>>>  		.basic_clk_name = {"mm"},
>>> -		.bus_prot_mask = MT2701_TOP_AXI_PROT_EN_MM_M0,
>>> +		.bp_table = {
>>> +			BUS_PROT(IFR_TYPE, 0, 0, 0x220, 0x228,
>>> +				MT2701_TOP_AXI_PROT_EN_MM_M0),
>>> +		},
>>>  		.caps = MTK_SCPD_ACTIVE_WAKEUP,
>>>  	},
>>>  	[MT2701_POWER_DOMAIN_MFG] = {
>>> @@ -675,7 +680,10 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>>>  		.sram_pdn_bits = GENMASK(8, 8),
>>>  		.sram_pdn_ack_bits = GENMASK(16, 16),
>>>  		.basic_clk_name = {"mfg"},
>>> -		.bus_prot_mask = BIT(14) | BIT(21) | BIT(23),
>>> +		.bp_table = {
>>> +			BUS_PROT(IFR_TYPE, 0x260, 0x264, 0x220, 0x228,
>>> +				BIT(14) | BIT(21) | BIT(23)),
>>> +		},
>>>  		.caps = MTK_SCPD_ACTIVE_WAKEUP,
>>>  	},
>>>  	[MT2712_POWER_DOMAIN_MFG_SC1] = {
>>> @@ -747,7 +755,10 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>>>  		.sram_pdn_bits = GENMASK(8, 8),
>>>  		.sram_pdn_ack_bits = GENMASK(12, 12),
>>>  		.basic_clk_name = {"mm"},
>>> -		.bus_prot_mask = (BIT(1) | BIT(2)),
>>> +		.bp_table = {
>>> +			BUS_PROT(IFR_TYPE, 0, 0, 0x220, 0x228,
>>> +				BIT(1) | BIT(2)),
>>> +		},
>>>  	},
>>>  	[MT6797_POWER_DOMAIN_AUDIO] = {
>>>  		.name = "audio",
>>> @@ -794,7 +805,10 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>>>  		.ctl_offs = SPM_ETHSYS_PWR_CON,
>>>  		.sram_pdn_bits = GENMASK(11, 8),
>>>  		.sram_pdn_ack_bits = GENMASK(15, 12),
>>> -		.bus_prot_mask = MT7622_TOP_AXI_PROT_EN_ETHSYS,
>>> +		.bp_table = {
>>> +			BUS_PROT(IFR_TYPE, 0, 0, 0x220, 0x228,
>>> +				MT7622_TOP_AXI_PROT_EN_ETHSYS),
>>> +		},
>>>  		.caps = MTK_SCPD_ACTIVE_WAKEUP,
>>>  	},
>>>  	[MT7622_POWER_DOMAIN_HIF0] = {
>>> @@ -804,7 +818,10 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>>>  		.sram_pdn_bits = GENMASK(11, 8),
>>>  		.sram_pdn_ack_bits = GENMASK(15, 12),
>>>  		.basic_clk_name = {"hif_sel"},
>>> -		.bus_prot_mask = MT7622_TOP_AXI_PROT_EN_HIF0,
>>> +		.bp_table = {
>>> +			BUS_PROT(IFR_TYPE, 0, 0, 0x220, 0x228,
>>> +				MT7622_TOP_AXI_PROT_EN_HIF0),
>>> +		},
>>>  		.caps = MTK_SCPD_ACTIVE_WAKEUP,
>>>  	},
>>>  	[MT7622_POWER_DOMAIN_HIF1] = {
>>> @@ -814,7 +831,10 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>>>  		.sram_pdn_bits = GENMASK(11, 8),
>>>  		.sram_pdn_ack_bits = GENMASK(15, 12),
>>>  		.basic_clk_name = {"hif_sel"},
>>> -		.bus_prot_mask = MT7622_TOP_AXI_PROT_EN_HIF1,
>>> +		.bp_table = {
>>> +			BUS_PROT(IFR_TYPE, 0, 0, 0x220, 0x228,
>>> +				MT7622_TOP_AXI_PROT_EN_HIF1),
>>> +		},
>>>  		.caps = MTK_SCPD_ACTIVE_WAKEUP,
>>>  	},
>>>  	[MT7622_POWER_DOMAIN_WB] = {
>>> @@ -823,7 +843,10 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>>>  		.ctl_offs = SPM_WB_PWR_CON,
>>>  		.sram_pdn_bits = 0,
>>>  		.sram_pdn_ack_bits = 0,
>>> -		.bus_prot_mask = MT7622_TOP_AXI_PROT_EN_WB,
>>> +		.bp_table = {
>>> +			BUS_PROT(IFR_TYPE, 0, 0, 0x220, 0x228,
>>> +				MT7622_TOP_AXI_PROT_EN_WB),
>>> +		},
>>>  		.caps = MTK_SCPD_ACTIVE_WAKEUP | MTK_SCPD_FWAIT_SRAM,
>>>  	},
>>>  };
>>> @@ -837,8 +860,11 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>>>  		.name = "conn",
>>>  		.sta_mask = PWR_STATUS_CONN,
>>>  		.ctl_offs = SPM_CONN_PWR_CON,
>>> -		.bus_prot_mask = MT2701_TOP_AXI_PROT_EN_CONN_M |
>>> -				 MT2701_TOP_AXI_PROT_EN_CONN_S,
>>> +		.bp_table = {
>>> +			BUS_PROT(IFR_TYPE, 0, 0, 0x220, 0x228,
>>> +				MT2701_TOP_AXI_PROT_EN_CONN_M |
>>> +				MT2701_TOP_AXI_PROT_EN_CONN_S),
>>> +		},
>>>  		.caps = MTK_SCPD_ACTIVE_WAKEUP,
>>>  	},
>>>  	[MT7623A_POWER_DOMAIN_ETH] = {
>>> @@ -903,8 +929,11 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>>>  		.sram_pdn_bits = GENMASK(11, 8),
>>>  		.sram_pdn_ack_bits = GENMASK(12, 12),
>>>  		.basic_clk_name = {"mm"},
>>> -		.bus_prot_mask = MT8173_TOP_AXI_PROT_EN_MM_M0 |
>>> -			MT8173_TOP_AXI_PROT_EN_MM_M1,
>>> +		.bp_table = {
>>> +			BUS_PROT(IFR_TYPE, 0, 0, 0x220, 0x228,
>>> +				MT8173_TOP_AXI_PROT_EN_MM_M0 |
>>> +				MT8173_TOP_AXI_PROT_EN_MM_M1),
>>> +		},
>>>  	},
>>>  	[MT8173_POWER_DOMAIN_VENC_LT] = {
>>>  		.name = "venc_lt",
>>> @@ -950,10 +979,13 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>>>  		.ctl_offs = SPM_MFG_PWR_CON,
>>>  		.sram_pdn_bits = GENMASK(13, 8),
>>>  		.sram_pdn_ack_bits = GENMASK(21, 16),
>>> -		.bus_prot_mask = MT8173_TOP_AXI_PROT_EN_MFG_S |
>>> -			MT8173_TOP_AXI_PROT_EN_MFG_M0 |
>>> -			MT8173_TOP_AXI_PROT_EN_MFG_M1 |
>>> -			MT8173_TOP_AXI_PROT_EN_MFG_SNOOP_OUT,
>>> +		.bp_table = {
>>> +			BUS_PROT(IFR_TYPE, 0, 0, 0x220, 0x228,
>>> +				MT8173_TOP_AXI_PROT_EN_MFG_S |
>>> +				MT8173_TOP_AXI_PROT_EN_MFG_M0 |
>>> +				MT8173_TOP_AXI_PROT_EN_MFG_M1 |
>>> +				MT8173_TOP_AXI_PROT_EN_MFG_SNOOP_OUT),
>>> +		},
>>>  	},
>>>  };
>>>  
>>> @@ -969,7 +1001,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>>>  		.pwr_sta_offs = SPM_PWR_STATUS,
>>>  		.pwr_sta2nd_offs = SPM_PWR_STATUS_2ND
>>>  	},
>>> -	.bus_prot_reg_update = true,
>>>  };
>>>  
>>>  static const struct scp_soc_data mt2712_data = {
>>> @@ -981,7 +1012,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>>>  		.pwr_sta_offs = SPM_PWR_STATUS,
>>>  		.pwr_sta2nd_offs = SPM_PWR_STATUS_2ND
>>>  	},
>>> -	.bus_prot_reg_update = false,
>>>  };
>>>  
>>>  static const struct scp_soc_data mt6797_data = {
>>> @@ -993,7 +1023,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>>>  		.pwr_sta_offs = SPM_PWR_STATUS_MT6797,
>>>  		.pwr_sta2nd_offs = SPM_PWR_STATUS_2ND_MT6797
>>>  	},
>>> -	.bus_prot_reg_update = true,
>>>  };
>>>  
>>>  static const struct scp_soc_data mt7622_data = {
>>> @@ -1003,7 +1032,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>>>  		.pwr_sta_offs = SPM_PWR_STATUS,
>>>  		.pwr_sta2nd_offs = SPM_PWR_STATUS_2ND
>>>  	},
>>> -	.bus_prot_reg_update = true,
>>>  };
>>>  
>>>  static const struct scp_soc_data mt7623a_data = {
>>> @@ -1013,7 +1041,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>>>  		.pwr_sta_offs = SPM_PWR_STATUS,
>>>  		.pwr_sta2nd_offs = SPM_PWR_STATUS_2ND
>>>  	},
>>> -	.bus_prot_reg_update = true,
>>>  };
>>>  
>>>  static const struct scp_soc_data mt8173_data = {
>>> @@ -1025,7 +1052,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
>>>  		.pwr_sta_offs = SPM_PWR_STATUS,
>>>  		.pwr_sta2nd_offs = SPM_PWR_STATUS_2ND
>>>  	},
>>> -	.bus_prot_reg_update = true,
>>>  };
>>>  
>>>  /*
>>> @@ -1066,8 +1092,7 @@ static int scpsys_probe(struct platform_device *pdev)
>>>  
>>>  	soc = of_device_get_match_data(&pdev->dev);
>>>  
>>> -	scp = init_scp(pdev, soc->domains, soc->num_domains, &soc->regs,
>>> -			soc->bus_prot_reg_update);
>>> +	scp = init_scp(pdev, soc->domains, soc->num_domains, &soc->regs);
>>>  	if (IS_ERR(scp))
>>>  		return PTR_ERR(scp);
>>>  
>>> diff --git a/drivers/soc/mediatek/scpsys-ext.h b/drivers/soc/mediatek/scpsys-ext.h
>>> new file mode 100644
>>> index 0000000..458b2c5
>>> --- /dev/null
>>> +++ b/drivers/soc/mediatek/scpsys-ext.h
>>> @@ -0,0 +1,67 @@
>>> +/* SPDX-License-Identifier: GPL-2.0 */
>>> +#ifndef __SOC_MEDIATEK_SCPSYS_EXT_H
>>> +#define __SOC_MEDIATEK_SCPSYS_EXT_H
>>> +
>>> +#define MAX_STEPS	4
>>> +
>>> +#define _BUS_PROT(_type, _set_ofs, _clr_ofs,			\
>>> +		_en_ofs, _sta_ofs, _mask, _ignore_clr_ack) {	\
>>> +		.type = _type,					\
>>> +		.set_ofs = _set_ofs,				\
>>> +		.clr_ofs = _clr_ofs,				\
>>> +		.en_ofs = _en_ofs,				\
>>> +		.sta_ofs = _sta_ofs,				\
>>> +		.mask = _mask,					\
>>> +		.ignore_clr_ack = _ignore_clr_ack,		\
>>> +	}
>>> +
>>> +#define BUS_PROT(_type, _set_ofs, _clr_ofs,		\
>>> +		_en_ofs, _sta_ofs, _mask)		\
>>> +		_BUS_PROT(_type, _set_ofs, _clr_ofs,	\
>>> +		_en_ofs, _sta_ofs, _mask, false)
>>> +
>>> +#define BUS_PROT_IGN(_type, _set_ofs, _clr_ofs,	\
>>> +		_en_ofs, _sta_ofs, _mask)		\
>>> +		_BUS_PROT(_type, _set_ofs, _clr_ofs,	\
>>> +		_en_ofs, _sta_ofs, _mask, true)
>>> +
>>> +#define MT2701_TOP_AXI_PROT_EN_MM_M0		BIT(1)
>>> +#define MT2701_TOP_AXI_PROT_EN_CONN_M		BIT(2)
>>> +#define MT2701_TOP_AXI_PROT_EN_CONN_S		BIT(8)
>>> +
>>> +#define MT7622_TOP_AXI_PROT_EN_ETHSYS		(BIT(3) | BIT(17))
>>> +#define MT7622_TOP_AXI_PROT_EN_HIF0		(BIT(24) | BIT(25))
>>> +#define MT7622_TOP_AXI_PROT_EN_HIF1		(BIT(26) | BIT(27) | \
>>> +						 BIT(28))
>>> +#define MT7622_TOP_AXI_PROT_EN_WB		(BIT(2) | BIT(6) | \
>>> +						 BIT(7) | BIT(8))
>>> +
>>> +#define MT8173_TOP_AXI_PROT_EN_MM_M0		BIT(1)
>>> +#define MT8173_TOP_AXI_PROT_EN_MM_M1		BIT(2)
>>> +#define MT8173_TOP_AXI_PROT_EN_MFG_S		BIT(14)
>>> +#define MT8173_TOP_AXI_PROT_EN_MFG_M0		BIT(21)
>>> +#define MT8173_TOP_AXI_PROT_EN_MFG_M1		BIT(22)
>>> +#define MT8173_TOP_AXI_PROT_EN_MFG_SNOOP_OUT	BIT(23)
>>> +
>>> +enum regmap_type {
>>> +	INVALID_TYPE = 0,
>>> +	IFR_TYPE,
>>> +	SMI_TYPE,
>>> +};
>>> +
>>> +struct bus_prot {
>>> +	enum regmap_type type;
>>> +	u32 set_ofs;
>>> +	u32 clr_ofs;
>>
>> Please try to keep variable names consistent. You change for example set_ofs to
>> reg_set. That makes the code more difficult to read and understand.
>>
> 
> OK, I'll keep those names consistent.
> 
>>> +	u32 en_ofs;
>>> +	u32 sta_ofs;
>>> +	u32 mask;
>>> +	bool ignore_clr_ack;
>>> +};
>>> +
>>> +int mtk_scpsys_ext_set_bus_protection(const struct bus_prot *bp_table,
>>> +	struct regmap *infracfg, struct regmap *smi_common);
>>> +int mtk_scpsys_ext_clear_bus_protection(const struct bus_prot *bp_table,
>>> +	struct regmap *infracfg, struct regmap *smi_common);
>>> +
>>> +#endif /* __SOC_MEDIATEK_SCPSYS_EXT_H */
>>>
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
