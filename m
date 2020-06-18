Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B5541FF86B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 18:00:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=neKRukysrhWv+IhV7Dp7ZcEZnBRlfPd4Ay4BeC3/r4g=; b=LS6qxPRtttGYny
	mO6aLTqIkQjU9SnIc2tcgqLI4o0R1W7hGjED0mlZwI+CmngM8vxRFU2DR7rTq9ueSMyQ64mkv8F5H
	INuajQgeJGSxPCVdK6NMLc0i6fuCwawZ57Fx7TKa041hsk0Fe6sONSsFp3USIVKCFwLwuCaAJmVDC
	TfEPTp93H5sNvQlR0gmAsvPyqfXhw5C/moX2/SbQe9/CqgHFnZ/SxXGG1owBjmQ+4+x1iqYIZJfka
	J4egQ93zVum7+S/W9ymLtOD9GDJKsqzsn4WAHzMZ7O49bAfeweP8JPt0ziu/RV3YWgAB9tGWcnMTz
	IKRs36Miw46xqTb5chTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlwxs-0004Rt-Cs; Thu, 18 Jun 2020 16:00:32 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlwxU-00038y-I7; Thu, 18 Jun 2020 16:00:11 +0000
Received: by mail-wr1-x442.google.com with SMTP id x6so6589338wrm.13;
 Thu, 18 Jun 2020 09:00:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=x3LA7sp3dOy30DhOnl4vpK+38g2VcseF6kbs7o6qdjU=;
 b=n9cuHroTaFNZCY7THCnqo0RHhaYu1VILKqV9Ta+oZGnTyGLAn3KCcu3YReAqfvpV1q
 N7VVJpTcGduU9REUvFc7RUIEe/TM1wowrVm4XJmaELRjI+oapelT979yU22XzwXnSCXT
 aWdGGRhKscciAHpGv+174b81TiDq4ja9JTBtXGpgqUocWGYsQUGBlEec8WOOGkwsE9FQ
 nibMp7KLfce4L4ze7oR5sZgieTUOcKIAFZJi4EiS506QpiFha5N31jTE+s0zv82XNUXC
 W1Bi5gmfmwqqvwHtmmdsISqdJHA6nI6uYu5jXODGN+LFBL0VyAJx4y5jUlT/63TFjjK7
 fiIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=x3LA7sp3dOy30DhOnl4vpK+38g2VcseF6kbs7o6qdjU=;
 b=g/BCgt8O2pfZQAc9po1iskF87tCLEt6/WEJ/nW6nKQTRA0Z3rkPVyyu21LC1oZ322U
 KnqK+aD6JuTTa1OL/K5TfTRULyIR4xknvVC0laiWSJ5AieWMLMwUaXw5jYNelWX+F024
 idc/yacSoN/7uplXO3nxx7k922ty1fjpcVjwMVXQqK2enVQ+1brt8sWmzOo0952+yd04
 c/AQInN2yFV045LQO30cuglK+ix2lSPe86ycvTvHsVoGF2tRKa4MdJIDoZklV1C32fA1
 3GGyfrbIe1NvwLZj+//2gdeqRm6ccttb+GphuNiGrR8e1C70gXPYuOXSkSW4Pthd1WD3
 XKzg==
X-Gm-Message-State: AOAM530K/Niq7kVXNc56OSN4b1dN+sMSD+sy8Ts9Gk1ALkaRl4kUxOMd
 c/DU7UFPlryXAay7e3wsagE=
X-Google-Smtp-Source: ABdhPJz+7F0EbRzsmpp//fFKGQX4eSnlBsnREIubb7/IkgjJyYeYoA5oBjWwUsxu479ZxwsrZTgfzQ==
X-Received: by 2002:a5d:6b8c:: with SMTP id n12mr5343092wrx.61.1592496007103; 
 Thu, 18 Jun 2020 09:00:07 -0700 (PDT)
Received: from ziggy.stardust (81.172.57.81.dyn.user.ono.com. [81.172.57.81])
 by smtp.gmail.com with ESMTPSA id
 b187sm4062266wmd.26.2020.06.18.09.00.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 18 Jun 2020 09:00:06 -0700 (PDT)
Subject: Re: [PATCH v4 7/7] iommu/mediatek: Add mt6779 basic support
To: chao hao <Chao.Hao@mediatek.com>
References: <20200617030029.4082-1-chao.hao@mediatek.com>
 <20200617030029.4082-8-chao.hao@mediatek.com>
 <64f63ccc-92a4-191c-3566-de00c9e04ca2@gmail.com>
 <1592481247.12647.9.camel@mbjsdccf07>
From: Matthias Brugger <matthias.bgg@gmail.com>
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <9618cc95-99ac-63d0-f502-335e38819842@gmail.com>
Date: Thu, 18 Jun 2020 18:00:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <1592481247.12647.9.camel@mbjsdccf07>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_090008_720552_9FB5ABF3 
X-CRM114-Status: GOOD (  25.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [matthias.bgg[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, FY Yang <fy.yang@mediatek.com>,
 wsd_upstream@mediatek.com, Joerg Roedel <joro@8bytes.org>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Yong Wu <yong.wu@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 18/06/2020 13:54, chao hao wrote:
> On Wed, 2020-06-17 at 11:33 +0200, Matthias Brugger wrote:
>>
>> On 17/06/2020 05:00, Chao Hao wrote:
>>> 1. Start from mt6779, INVLDT_SEL move to offset=0x2c, so we add
>>>    REG_MMU_INV_SEL_GEN2 definition and mt6779 uses it.
>>> 2. Change PROTECT_PA_ALIGN from 128 byte to 256 byte.
>>> 3. For REG_MMU_CTRL_REG register, we only need to change bit[2:0],
>>>    others bits keep default value, ex: enable victim tlb.
>>> 4. Add mt6779_data to support mm_iommu HW init.
>>>
>>> Change since v3:
>>> 1. When setting MMU_CTRL_REG, we don't need to include mt8173.
>>>
>>> Cc: Yong Wu <yong.wu@mediatek.com>
>>> Signed-off-by: Chao Hao <chao.hao@mediatek.com>
>>> ---
>>>  drivers/iommu/mtk_iommu.c | 20 ++++++++++++++++++--
>>>  drivers/iommu/mtk_iommu.h |  1 +
>>>  2 files changed, 19 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
>>> index c706bca6487e..def2e996683f 100644
>>> --- a/drivers/iommu/mtk_iommu.c
>>> +++ b/drivers/iommu/mtk_iommu.c
>>> @@ -37,6 +37,11 @@
>>>  #define REG_MMU_INVLD_START_A			0x024
>>>  #define REG_MMU_INVLD_END_A			0x028
>>>  
>>> +/* In latest Coda, MMU_INV_SEL's offset is changed to 0x02c.
>>> + * So we named offset = 0x02c to "REG_MMU_INV_SEL_GEN2"
>>> + * and offset = 0x038 to "REG_MMU_INV_SEL_GEN1".
>>> + */
>>
>> Please delete the comment, this should be understandable from the git history
> 
> ok, thanks
> 
>>
>>> +#define REG_MMU_INV_SEL_GEN2			0x02c
>>>  #define REG_MMU_INV_SEL_GEN1			0x038
>>>  #define F_INVLD_EN0				BIT(0)
>>>  #define F_INVLD_EN1				BIT(1)
>>> @@ -98,7 +103,7 @@
>>>  #define F_MMU_INT_ID_LARB_ID(a)			(((a) >> 7) & 0x7)
>>>  #define F_MMU_INT_ID_PORT_ID(a)			(((a) >> 2) & 0x1f)
>>>  
>>> -#define MTK_PROTECT_PA_ALIGN			128
>>> +#define MTK_PROTECT_PA_ALIGN			256
>>
>> Do we need 512 bytes for all gen2 IOMMUs?
>> I'm not sure if we should add this in plat_data or if we should just bump up the
>> value for all SoCs.
>> In both cases this should be a separate patch.
>>
> From mt6779, MTK_PROTECT_PA_ALIGN is extend to 256 bytes and don't be
> changed for a long time from our HW designer comment. The legacy iommu
> also can use it, mabye it doesn't set it by platform.
> 

Ok then just bump it to 256 in a new patch. Thanks for clarification.

> 
>>>  
>>>  /*
>>>   * Get the local arbiter ID and the portid within the larb arbiter
>>> @@ -543,11 +548,12 @@ static int mtk_iommu_hw_init(const struct mtk_iommu_data *data)
>>>  		return ret;
>>>  	}
>>>  
>>> +	regval = readl_relaxed(data->base + REG_MMU_CTRL_REG);
>>>  	if (data->plat_data->m4u_plat == M4U_MT8173)
>>>  		regval = F_MMU_PREFETCH_RT_REPLACE_MOD |
>>>  			 F_MMU_TF_PROT_TO_PROGRAM_ADDR_MT8173;
>>>  	else
>>> -		regval = F_MMU_TF_PROT_TO_PROGRAM_ADDR;
>>> +		regval |= F_MMU_TF_PROT_TO_PROGRAM_ADDR;
>>
>> Why do we change this, is it that the bootloader for mt6779 set some values in
>> the register we have to keep? In this case I think we should update the regval
>> accordingly.
> 
> For REG_MMU_CTRL_REG, bit[12] represents victim_tlb_en feature and
> victim_tlb is enable defaultly(bit[12]=1),but if we use "regval =
> F_MMU_TF_PROT_TO_PROGRAM_ADDR", victim_tlb will disable, it will drop
> iommu performace for mt6779
> 

Got it. Please put that in a separate patch then.

Regards,
Matthias

> 
>>
>>>  	writel_relaxed(regval, data->base + REG_MMU_CTRL_REG);
>>>  
>>>  	regval = F_L2_MULIT_HIT_EN |
>>> @@ -797,6 +803,15 @@ static const struct mtk_iommu_plat_data mt2712_data = {
>>>  	.larbid_remap   = {{0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}},
>>>  };
>>>  
>>> +static const struct mtk_iommu_plat_data mt6779_data = {
>>> +	.m4u_plat      = M4U_MT6779,
>>> +	.has_sub_comm  = true,
>>> +	.has_wr_len    = true,
>>> +	.has_misc_ctrl = true,
>>> +	.inv_sel_reg   = REG_MMU_INV_SEL_GEN2,
>>> +	.larbid_remap  = {{0}, {1}, {2}, {3}, {5}, {7, 8}, {10}, {9}},
>>> +};
>>> +
>>>  static const struct mtk_iommu_plat_data mt8173_data = {
>>>  	.m4u_plat     = M4U_MT8173,
>>>  	.has_4gb_mode = true,
>>> @@ -815,6 +830,7 @@ static const struct mtk_iommu_plat_data mt8183_data = {
>>>  
>>>  static const struct of_device_id mtk_iommu_of_ids[] = {
>>>  	{ .compatible = "mediatek,mt2712-m4u", .data = &mt2712_data},
>>> +	{ .compatible = "mediatek,mt6779-m4u", .data = &mt6779_data},
>>>  	{ .compatible = "mediatek,mt8173-m4u", .data = &mt8173_data},
>>>  	{ .compatible = "mediatek,mt8183-m4u", .data = &mt8183_data},
>>>  	{}
>>> diff --git a/drivers/iommu/mtk_iommu.h b/drivers/iommu/mtk_iommu.h
>>> index 9971cedd72ea..fb79e710c8d9 100644
>>> --- a/drivers/iommu/mtk_iommu.h
>>> +++ b/drivers/iommu/mtk_iommu.h
>>> @@ -31,6 +31,7 @@ struct mtk_iommu_suspend_reg {
>>>  enum mtk_iommu_plat {
>>>  	M4U_MT2701,
>>>  	M4U_MT2712,
>>> +	M4U_MT6779,
>>>  	M4U_MT8173,
>>>  	M4U_MT8183,
>>>  };
>>>
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
