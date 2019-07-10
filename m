Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E51D4645BA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 13:27:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ipGKgOI0NnUK0/7pKrWeI2doHOy4RnTyEjtuU3C+FIY=; b=iW8PCpqlbZb4d1+pCiKTuIyzm
	6Mw4bSBFSE4u00AkK7lFtxdLAGBxw79AtqYtTjXpkwq1p1e5tMqLxLtBdnE7WHNXZwCFiRlYjf3wP
	jI80lVM0Sj4VWJ/GT4G7zrclV4N7oXrejF+Htt4cYYbj5IQGMgHF+oHQmeDS47mysjKkWSc9q7Msp
	zo+YiVEH/KX+KHR43eqBwJ9Y9OOZiHmFVVxX3cNTAYlAmSEo4BwEWH1NKB2L1oZu+WxeAp5Yuy5C7
	u5ZSwF1i55cM7AypGZoEt4zjM7EgSvruumiEJErFTOqgMESobzK6WAIwSmnzSHAHwhUVmbibIjCOd
	dvbhBjN1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlAlD-0000Ug-HC; Wed, 10 Jul 2019 11:27:43 +0000
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlAl4-0000RR-Bp
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 11:27:36 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d25cba90000>; Wed, 10 Jul 2019 04:27:37 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Wed, 10 Jul 2019 04:27:32 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Wed, 10 Jul 2019 04:27:32 -0700
Received: from [10.24.44.109] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 10 Jul
 2019 11:27:26 +0000
Subject: Re: [PATCH V13 05/12] PCI: dwc: Add ext config space capability
 search API
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
References: <20190710062212.1745-1-vidyas@nvidia.com>
 <20190710062212.1745-6-vidyas@nvidia.com>
 <20190710103709.GA4063@e121166-lin.cambridge.arm.com>
X-Nvconfidentiality: public
From: Vidya Sagar <vidyas@nvidia.com>
Message-ID: <fd1fc10e-47d0-aaac-158d-1c19363ec8d3@nvidia.com>
Date: Wed, 10 Jul 2019 16:57:23 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190710103709.GA4063@e121166-lin.cambridge.arm.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL108.nvidia.com (172.18.146.13) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1562758057; bh=qS3f23rc6PRI4/MEpYT+5T67cBOKXa874wiiveHkTCg=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=EafiB/JafsAB4XgIv+kuhmSXzMjX8sEGmlmAPi297oiwRYe1EDvopt11WEQtv62Kn
 P68kRduwYVtqcruwVZoDE+bv+o6glEr4k5MEemu1JREu99Uv8eElpYiB3Vg8nPbdDZ
 d78YkyqQPbJHVqijZK2PPUcS/6p+l5ZtSTORRqiBGIkLoPxbRAk0iF82Sf9XC0qT30
 DumRDWAYLCXhaiAEXazW9kQD5mohJOTHpEn07lqEgVO6/VpWY4op6rRwppYCFLpGZF
 JVw6UBBHAtVIU9UfrRX1elmEDBUfNc0ZKI1o5qEYFmdMH42RrXJkMAwlthNEQrTvI3
 SVopVCiyORfew==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_042734_425537_1E4F7975 
X-CRM114-Status: GOOD (  17.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, mperttunen@nvidia.com,
 mmaddireddy@nvidia.com, linux-pci@vger.kernel.org, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, kthota@nvidia.com,
 kishon@ti.com, linux-tegra@vger.kernel.org, robh+dt@kernel.org,
 thierry.reding@gmail.com, gustavo.pimentel@synopsys.com, jingoohan1@gmail.com,
 bhelgaas@google.com, digetx@gmail.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 7/10/2019 4:07 PM, Lorenzo Pieralisi wrote:
> On Wed, Jul 10, 2019 at 11:52:05AM +0530, Vidya Sagar wrote:
>> Add extended configuration space capability search API using struct dw_pcie *
>> pointer
> 
> Sentences are terminated with a period and this is v13 not v1, which
> proves that you do not read the commit logs you write.
> 
> I need you guys to understand that I can't rewrite commit logs all
> the time, I do not want to go as far as not accepting your patches
> anymore so please do pay attention to commit log details they
> are as important as the code itself.
> 
> https://lore.kernel.org/linux-pci/20171026223701.GA25649@bhelgaas-glaptop.roam.corp.google.com/
My sincere apologies.
Since I didn't touch this patch much all through this series, I missed it.
I'll make a point to not make such mistakes again.
Do you want me to send a new version fixing it?

Thanks,
Vidya Sagar

> 
> Thanks,
> Lorenzo
> 
>> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
>> Acked-by: Gustavo Pimentel <gustavo.pimentel@synopsys.com>
>> Acked-by: Thierry Reding <treding@nvidia.com>
>> ---
>> V13:
>> * None
>>
>> V12:
>> * None
>>
>> V11:
>> * None
>>
>> V10:
>> * None
>>
>> V9:
>> * Added Acked-by from Thierry
>>
>> V8:
>> * Changed data types of return and arguments to be inline with data being returned
>>    and passed.
>>
>> V7:
>> * None
>>
>> V6:
>> * None
>>
>> V5:
>> * None
>>
>> V4:
>> * None
>>
>> V3:
>> * None
>>
>> V2:
>> * This is a new patch in v2 series
>>
>>   drivers/pci/controller/dwc/pcie-designware.c | 41 ++++++++++++++++++++
>>   drivers/pci/controller/dwc/pcie-designware.h |  1 +
>>   2 files changed, 42 insertions(+)
>>
>> diff --git a/drivers/pci/controller/dwc/pcie-designware.c b/drivers/pci/controller/dwc/pcie-designware.c
>> index 7818b4febb08..181449e342f1 100644
>> --- a/drivers/pci/controller/dwc/pcie-designware.c
>> +++ b/drivers/pci/controller/dwc/pcie-designware.c
>> @@ -53,6 +53,47 @@ u8 dw_pcie_find_capability(struct dw_pcie *pci, u8 cap)
>>   }
>>   EXPORT_SYMBOL_GPL(dw_pcie_find_capability);
>>   
>> +static u16 dw_pcie_find_next_ext_capability(struct dw_pcie *pci, u16 start,
>> +					    u8 cap)
>> +{
>> +	u32 header;
>> +	int ttl;
>> +	int pos = PCI_CFG_SPACE_SIZE;
>> +
>> +	/* minimum 8 bytes per capability */
>> +	ttl = (PCI_CFG_SPACE_EXP_SIZE - PCI_CFG_SPACE_SIZE) / 8;
>> +
>> +	if (start)
>> +		pos = start;
>> +
>> +	header = dw_pcie_readl_dbi(pci, pos);
>> +	/*
>> +	 * If we have no capabilities, this is indicated by cap ID,
>> +	 * cap version and next pointer all being 0.
>> +	 */
>> +	if (header == 0)
>> +		return 0;
>> +
>> +	while (ttl-- > 0) {
>> +		if (PCI_EXT_CAP_ID(header) == cap && pos != start)
>> +			return pos;
>> +
>> +		pos = PCI_EXT_CAP_NEXT(header);
>> +		if (pos < PCI_CFG_SPACE_SIZE)
>> +			break;
>> +
>> +		header = dw_pcie_readl_dbi(pci, pos);
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +u16 dw_pcie_find_ext_capability(struct dw_pcie *pci, u8 cap)
>> +{
>> +	return dw_pcie_find_next_ext_capability(pci, 0, cap);
>> +}
>> +EXPORT_SYMBOL_GPL(dw_pcie_find_ext_capability);
>> +
>>   int dw_pcie_read(void __iomem *addr, int size, u32 *val)
>>   {
>>   	if (!IS_ALIGNED((uintptr_t)addr, size)) {
>> diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
>> index d8c66a6827dc..11c223471416 100644
>> --- a/drivers/pci/controller/dwc/pcie-designware.h
>> +++ b/drivers/pci/controller/dwc/pcie-designware.h
>> @@ -252,6 +252,7 @@ struct dw_pcie {
>>   		container_of((endpoint), struct dw_pcie, ep)
>>   
>>   u8 dw_pcie_find_capability(struct dw_pcie *pci, u8 cap);
>> +u16 dw_pcie_find_ext_capability(struct dw_pcie *pci, u8 cap);
>>   
>>   int dw_pcie_read(void __iomem *addr, int size, u32 *val);
>>   int dw_pcie_write(void __iomem *addr, int size, u32 val);
>> -- 
>> 2.17.1
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
