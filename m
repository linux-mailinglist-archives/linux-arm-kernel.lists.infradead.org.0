Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 654001948D1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 21:28:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h/PCcSiXneI3gxDHvQumjap7qXjgIbQGnTZQ4aZXXEI=; b=YkAW9fncEgwy5y
	t6uxCWo4sUFUo2oO1FVzJNKZdAIwlilt48IYCuOY037Qx78N0EUb2qcqgqaqgktg6MAGWK2TTCFtf
	9lVFo9CjhxEUaXiUMmwC8YmHn3R2ds8I4TEoCdBsvxasHaBWbtYcEPfKwtNzpIyB2TWYIlFwdbucE
	F3ZvUQtCL0I5jlz/MYL8kYWikmrCJi1Qqb4tdHGEFZL0jcn8SwqSy6uSYHAQwMWDdS8qLjfGOlgVY
	vfk8W4faQM/QV1lD4CRW9+rExSYdNoqbqocvR32Ye/bIQNFOz6P1SmlROJKkdvIQC3yTQimq7pGw3
	czuHrysRzzMI0s/+gdnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHZ6X-0000GN-Or; Thu, 26 Mar 2020 20:27:53 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHZ6O-0000Fb-2D
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 20:27:45 +0000
Received: by mail-wm1-x342.google.com with SMTP id a81so9073524wmf.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 13:27:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=jktZmsbVaYfCQgFOQaxsmSKFGgjNxgTE596K7P299tE=;
 b=NW6aBYcPaS+mV12mZI3RwuGwl661E+UeEa0aLD0xlene0yT8jFuQjiyMO8Egf9E1/J
 hW5U6XeM9hERkrwd9JblHkbFP/0Pd/TA5sixZ8NXNoA7UTXPJTjRjvCSqBZGo6ZC98mD
 8U0G0eT/ySTliP/NyqtRXcichG/ZtK3sg0q0E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=jktZmsbVaYfCQgFOQaxsmSKFGgjNxgTE596K7P299tE=;
 b=ZAgCuy1Y/9glGYx++MWIjv3JApoQpmSKX2gjJjLbbM1uDYz5hIQ+AztDcBu+Oip/UE
 Tq88nMOXK4/z4b1fEQQ3dsKo5cqV4PAXpMckHycsQZ+UmdMyC049q08RUZSUe+o2Ve7a
 kUPRcsUUn/AfTG6LycX45ZN8Q4Z3rSdbXJS3FryvEW/3uwA12Bxb0MWw25uBYACtDVB0
 bp7ZHS1RuL9Vjhx5O04u9FWyxqx8TgOXBhB909ExoYjwRg3kVwbJO5cUV4s9WG60oO/J
 8OvePSlORTmtemd7bJJtaElBqHcaIUG3rfo7PbADnhblpyYfMvOPeS/U93aKRfFVcxNp
 HjCg==
X-Gm-Message-State: ANhLgQ3Iwr62Phe4OW+wT1pB0hB8mgY0TwS4Dm/bMgtJ1xY40MP6EerL
 +ZP8n0dG4WzIBA7S4th2WgCRvw==
X-Google-Smtp-Source: ADFU+vtPU+HGPWL46bllQ2v2aFSum+2CVfuDGlxDWR+RJJM/9IcDZhej6z0Z7gBtu6+LExlU9PYARw==
X-Received: by 2002:adf:d4ce:: with SMTP id w14mr11426931wrk.101.1585254461368; 
 Thu, 26 Mar 2020 13:27:41 -0700 (PDT)
Received: from [10.230.26.36] ([192.19.224.250])
 by smtp.gmail.com with ESMTPSA id f14sm5010601wmb.3.2020.03.26.13.27.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 26 Mar 2020 13:27:40 -0700 (PDT)
Subject: Re: [PATCH 1/3] PCI: iproc: fix out of bound array access
To: Bjorn Helgaas <helgaas@kernel.org>,
 Srinath Mannam <srinath.mannam@broadcom.com>
References: <20200326194810.GA11112@google.com>
From: Ray Jui <ray.jui@broadcom.com>
Message-ID: <4a836faf-645d-a1ab-d525-738a318758a0@broadcom.com>
Date: Thu, 26 Mar 2020 13:27:36 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200326194810.GA11112@google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_132744_110684_6B1692D0 
X-CRM114-Status: GOOD (  29.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Bharat Gooty <bharat.gooty@broadcom.com>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 bcm-kernel-feedback-list@broadcom.com, Ray Jui <rjui@broadcom.com>,
 Andrew Murray <andrew.murray@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bjorn,

On 3/26/2020 12:48 PM, Bjorn Helgaas wrote:
> Change subject to match convention, e.g.,
> 
>   PCI: iproc: Fix out-of-bound array accesses
> 
> On Thu, Mar 26, 2020 at 12:37:25PM +0530, Srinath Mannam wrote:
>> From: Bharat Gooty <bharat.gooty@broadcom.com>
>>
>> Declare the full size array for all revisions of PAX register sets
>> to avoid potentially out of bound access of the register array
>> when they are being initialized in the 'iproc_pcie_rev_init'
>> function.
> 
> s/the 'iproc_pcie_rev_init' function/iproc_pcie_rev_init()/
> 
> It's outside the scope of this patch, but I'm not really a fan of the
> pcie->reg_offsets[] scheme this driver uses to deal with these
> differences.  There usually seems to be *something* that keeps the
> driver from referencing registers that don't exist, but it doesn't
> seem like the mechanism is very consistent or robust:
> 
>   - IPROC_PCIE_LINK_STATUS is implemented by PAXB but not PAXC.
>     iproc_pcie_check_link() avoids using it if "ep_is_internal", which
>     is set for PAXC and PAXC_V2.  Not an obvious connection.
> 
>   - IPROC_PCIE_CLK_CTRL is implemented for PAXB and PAXC_V1, but not
>     PAXC_V2.  iproc_pcie_perst_ctrl() avoids using it ep_is_internal",
>     so it *doesn't* use it for PAXC_V1, which does implement it.
>     Maybe a bug, maybe intentional; I can't tell.
> 
>   - IPROC_PCIE_INTX_EN is only implemented by PAXB (not PAXC), but
>     AFAICT, we always call iproc_pcie_enable() and rely on
>     iproc_pcie_write_reg() silently drop the write to it on PAXC.
> 
>   - IPROC_PCIE_OARR0 is implemented by PAXB and PAXB_V2 and used by
>     iproc_pcie_map_ranges(), which is called if "need_ob_cfg", which
>     is set if there's a "brcm,pcie-ob" DT property.  No clear
>     connection to PAXB.
> 
> I think it would be more readable if we used a single variant
> identifier consistently, e.g., the "pcie->type" already used in
> iproc_pcie_msi_steer(), or maybe a set of variant-specific function
> pointers as pcie-qcom.c does.
> 

It is not possible to use a single variant identifier consistently,
i.e., 'pcie->type'. Many of these features are controller revision
specific, and certain revisions of the controllers may all have a
certain feature, while other revisions of the controllers do not. In
addition, there are overlap in features across different controllers.

IMO, it makes sense to have feature specific flags or booleans, and have
those features enabled or disabled based on 'pcie->type', which is what
the current driver does, but like you pointed out, what the driver
failed is to do this consistently.

The IPROC_PCIE_INTX_EN example you pointed out is a good example. I
agree with you that we shouldn't rely on iproc_pcie_write_reg to
silently drop the operation for PAXC. We should add code to make it
explictly obvious that legacy interrupt is not supported in all PAXC
controllers.

pcie->pcie->reg_offsets[] scheme was not intended to be used to silently
drop register access that are activated based on features. It's a
mistake that should be fixed if some code in the driver is done that
way, as you pointed out. The intention of reg_offsets[] is to allow many
of the code in this driver be made generic, and shared between different
revisions of the driver.

Thanks,

Ray

>> Fixes: 06324ede76cdf ("PCI: iproc: Improve core register population")
>> Signed-off-by: Bharat Gooty <bharat.gooty@broadcom.com>
>> ---
>>  drivers/pci/controller/pcie-iproc.c | 10 +++++-----
>>  1 file changed, 5 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/pci/controller/pcie-iproc.c b/drivers/pci/controller/pcie-iproc.c
>> index 0a468c7..6972ca4 100644
>> --- a/drivers/pci/controller/pcie-iproc.c
>> +++ b/drivers/pci/controller/pcie-iproc.c
>> @@ -307,7 +307,7 @@ enum iproc_pcie_reg {
>>  };
>>  
>>  /* iProc PCIe PAXB BCMA registers */
>> -static const u16 iproc_pcie_reg_paxb_bcma[] = {
>> +static const u16 iproc_pcie_reg_paxb_bcma[IPROC_PCIE_MAX_NUM_REG] = {
>>  	[IPROC_PCIE_CLK_CTRL]		= 0x000,
>>  	[IPROC_PCIE_CFG_IND_ADDR]	= 0x120,
>>  	[IPROC_PCIE_CFG_IND_DATA]	= 0x124,
>> @@ -318,7 +318,7 @@ static const u16 iproc_pcie_reg_paxb_bcma[] = {
>>  };
>>  
>>  /* iProc PCIe PAXB registers */
>> -static const u16 iproc_pcie_reg_paxb[] = {
>> +static const u16 iproc_pcie_reg_paxb[IPROC_PCIE_MAX_NUM_REG] = {
>>  	[IPROC_PCIE_CLK_CTRL]		= 0x000,
>>  	[IPROC_PCIE_CFG_IND_ADDR]	= 0x120,
>>  	[IPROC_PCIE_CFG_IND_DATA]	= 0x124,
>> @@ -334,7 +334,7 @@ static const u16 iproc_pcie_reg_paxb[] = {
>>  };
>>  
>>  /* iProc PCIe PAXB v2 registers */
>> -static const u16 iproc_pcie_reg_paxb_v2[] = {
>> +static const u16 iproc_pcie_reg_paxb_v2[IPROC_PCIE_MAX_NUM_REG] = {
>>  	[IPROC_PCIE_CLK_CTRL]		= 0x000,
>>  	[IPROC_PCIE_CFG_IND_ADDR]	= 0x120,
>>  	[IPROC_PCIE_CFG_IND_DATA]	= 0x124,
>> @@ -363,7 +363,7 @@ static const u16 iproc_pcie_reg_paxb_v2[] = {
>>  };
>>  
>>  /* iProc PCIe PAXC v1 registers */
>> -static const u16 iproc_pcie_reg_paxc[] = {
>> +static const u16 iproc_pcie_reg_paxc[IPROC_PCIE_MAX_NUM_REG] = {
>>  	[IPROC_PCIE_CLK_CTRL]		= 0x000,
>>  	[IPROC_PCIE_CFG_IND_ADDR]	= 0x1f0,
>>  	[IPROC_PCIE_CFG_IND_DATA]	= 0x1f4,
>> @@ -372,7 +372,7 @@ static const u16 iproc_pcie_reg_paxc[] = {
>>  };
>>  
>>  /* iProc PCIe PAXC v2 registers */
>> -static const u16 iproc_pcie_reg_paxc_v2[] = {
>> +static const u16 iproc_pcie_reg_paxc_v2[IPROC_PCIE_MAX_NUM_REG] = {
>>  	[IPROC_PCIE_MSI_GIC_MODE]	= 0x050,
>>  	[IPROC_PCIE_MSI_BASE_ADDR]	= 0x074,
>>  	[IPROC_PCIE_MSI_WINDOW_SIZE]	= 0x078,
>> -- 
>> 2.7.4
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
