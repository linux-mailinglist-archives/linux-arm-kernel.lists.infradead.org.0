Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0CDD25666
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 19:14:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8fkFtWvDS0fLH9kTjnYtuI/v4fQSaqJjhdYob6maT1U=; b=VWarPmANAGTMZneGnq2O0WRgB
	W+lDePrX/s+NCHZOzXpedFegNvoTx11P7x2+hPoYh40fNd67IS/AvX3YfWgzgGlQHUCcvflCXPrSS
	LZLCywOM+oDzqhQv2MbhfhtPiFT/GfyAyby+jtwB47xQpEut6V6xNi+z3b4w9O5M6tVr6vKR6pD/a
	VrWaTyPiFwJWAy17seuUc5V5b7T2R6lwFCc0dIW5kOdxGCDSjpE4gY/QMzuKH4hbAJzQi3mMbbmSP
	Txd2RkAEr+Uv9z5kNKFxaIiD4K3MgxsrhtkVdcoQRVEEeM/Hoeu6oLeY1+Ct+2NJ4qHmtWa1Tc8WK
	A9ArnskNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT8LD-0006pr-2R; Tue, 21 May 2019 17:14:19 +0000
Received: from hqemgate16.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT8L6-0006pY-Lf
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 17:14:14 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5ce431e40002>; Tue, 21 May 2019 10:14:12 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Tue, 21 May 2019 10:14:12 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Tue, 21 May 2019 10:14:12 -0700
Received: from [10.25.72.115] (172.20.13.39) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 21 May
 2019 17:14:06 +0000
Subject: Re: [PATCH V7 05/15] PCI: dwc: Add ext config space capability search
 API
To: Thierry Reding <thierry.reding@gmail.com>
References: <20190517123846.3708-1-vidyas@nvidia.com>
 <20190517123846.3708-6-vidyas@nvidia.com> <20190521103629.GE29166@ulmo>
X-Nvconfidentiality: public
From: Vidya Sagar <vidyas@nvidia.com>
Message-ID: <d70ac7e8-d04e-5195-3808-fca520ad23f6@nvidia.com>
Date: Tue, 21 May 2019 22:44:04 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190521103629.GE29166@ulmo>
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL103.nvidia.com (172.20.187.11) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1558458852; bh=BcyBWuXsiZPLocS6gKpgICDF6NfMYJFTJoNUnlHyJbA=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=At4Xdpw0Zrn5NsJ2CRKYABUSOeeEfKMEt9N1cZC7IFh4aB1Xzp5/eiDTcuV0z5mjP
 +Rbrzd8Fajyae9wCzljeqfSzm5JLySCJAff9YBdPaLgv2ZH/aThQlJ/9cnr+rFQnbi
 zNiOaCci50OPFXQ1eukzFALbhyGokGYgBpkANGMkwOuYTK3SpNSszTSDZWWI4ri6oX
 +iCI/vHaoU+/DiFzRcflgqoK+oD4Fnik1RKZzbqptYuA+Keb4XnZ22V/s9bkkTGs8k
 4TyGgUsgh/YnX95Pd9LfGJKmgUAfAZnW0LaisxnZ5WbcGLvIN0Tf0wMI53UXAIPeSK
 McpPwR6MFnj9Q==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_101412_723550_0BB81C51 
X-CRM114-Status: GOOD (  16.30  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, linux-pci@vger.kernel.org,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 kthota@nvidia.com, kishon@ti.com, linux-tegra@vger.kernel.org,
 robh+dt@kernel.org, gustavo.pimentel@synopsys.com, jingoohan1@gmail.com,
 bhelgaas@google.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/21/2019 4:06 PM, Thierry Reding wrote:
> On Fri, May 17, 2019 at 06:08:36PM +0530, Vidya Sagar wrote:
>> Add extended configuration space capability search API using struct dw_pcie *
>> pointer
>>
>> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
>> Acked-by: Gustavo Pimentel <gustavo.pimentel@synopsys.com>
>> ---
>> Changes since [v6]:
>> * None
>>
>> Changes since [v5]:
>> * None
>>
>> Changes since [v4]:
>> * None
>>
>> Changes since [v3]:
>> * None
>>
>> Changes since [v2]:
>> * None
>>
>> Changes since [v1]:
>> * This is a new patch in v2 series
>>
>>   drivers/pci/controller/dwc/pcie-designware.c | 41 ++++++++++++++++++++
>>   drivers/pci/controller/dwc/pcie-designware.h |  1 +
>>   2 files changed, 42 insertions(+)
>>
>> diff --git a/drivers/pci/controller/dwc/pcie-designware.c b/drivers/pci/controller/dwc/pcie-designware.c
>> index 8f53ce63d17e..3b7d50888caa 100644
>> --- a/drivers/pci/controller/dwc/pcie-designware.c
>> +++ b/drivers/pci/controller/dwc/pcie-designware.c
>> @@ -54,6 +54,47 @@ u8 dw_pcie_find_capability(struct dw_pcie *pci, u8 cap)
>>   }
>>   EXPORT_SYMBOL_GPL(dw_pcie_find_capability);
>>   
>> +static int dw_pcie_find_next_ext_capability(struct dw_pcie *pci, int start,
>> +					    int cap)
> 
> Perhaps make this more consistent with the existing regular
> configuration space capability search API? Something like this perhaps:
> 
> 	static u16 dw_pcie_find_next_ext_capability(struct dw_pcie *pci,
> 						    u16 start, u8 cap)
> 
> ? I guess your variant above is consistent with the existing generic
> capability search API, so another alternative might be to make the old
> dw_pcie_find_capability() API consistent with everything else. It's
> confusing if we keep having to jump between the two variants.
Ok. I'll change it to the format being followed in this file i.e. using u16 and u8

> 
> Thierry
> 
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
>> +int dw_pcie_find_ext_capability(struct dw_pcie *pci, int cap)
>> +{
>> +	return dw_pcie_find_next_ext_capability(pci, 0, cap);
>> +}
>> +EXPORT_SYMBOL_GPL(dw_pcie_find_ext_capability);
>> +
>>   int dw_pcie_read(void __iomem *addr, int size, u32 *val)
>>   {
>>   	if (!IS_ALIGNED((uintptr_t)addr, size)) {
>> diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
>> index 6cb978132469..fff284098117 100644
>> --- a/drivers/pci/controller/dwc/pcie-designware.h
>> +++ b/drivers/pci/controller/dwc/pcie-designware.h
>> @@ -252,6 +252,7 @@ struct dw_pcie {
>>   		container_of((endpoint), struct dw_pcie, ep)
>>   
>>   u8 dw_pcie_find_capability(struct dw_pcie *pci, u8 cap);
>> +int dw_pcie_find_ext_capability(struct dw_pcie *pci, int cap);
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
