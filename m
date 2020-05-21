Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A6C21DCE1E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 15:33:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VncdgluxR9Wt8VRshVgksdXDgwArJSYI1lWZnpataHw=; b=oxJvxKx5/59hFa
	N3W8PXko8JqHCowqRw5/GrD+MEMqeaOuUI6l7ZMxAgndL96jZ8P+fEz2WZNsRZR7S2z0RdkeQEMe3
	9cXjZk/xEY5m/xkpK+pjjhj+BYhKrVAqfBmsuUVU5inthZetWbuvpfGDp5dhj42BE4wEhgevVphUK
	SV9bKbT6M9wUpM5u0abMAiAub74m7Oe9audwlSfbfthOdfltpVW2gU3PKMYtuHLdB9K24i9aJ5/LF
	uTdvP9gFLzYfGADL0CeEHV5B3bL56Si5ognHdK9qAu1vWLb0HsRn+88Bon2JdX7IzArxK+B9++6VH
	1DEIYzz+9netz8DmnP4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jblKO-0004Ew-Re; Thu, 21 May 2020 13:33:40 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jblKF-0004E6-Eq
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 13:33:33 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04LDXJmg077067;
 Thu, 21 May 2020 08:33:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1590067999;
 bh=pIH2fVTWjlGjL7gngSKgJjMkSbsoCQ/O5bKvxJc4rP8=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=Dr6L788V8crSRNjoyvrsMqPBiTfvHG5japxUVEYhUcE138Qa0SKUbEkNzquQJTXmC
 I9sDUDkNyaHXQQ4L3sRX0LtGeO79Odaf9iJzUq3RbPD+EoCBft7/MU0bd5mAaof3Th
 3egN3U9NcA1bZPZeXvf8TEuKlz8e8sipZfJwlacw=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04LDXJmt018834
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 21 May 2020 08:33:19 -0500
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 21
 May 2020 08:33:19 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 21 May 2020 08:33:19 -0500
Received: from [10.250.233.85] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04LDXFFj119241;
 Thu, 21 May 2020 08:33:16 -0500
Subject: Re: [PATCH v4 03/14] PCI: cadence: Add support to use custom read and
 write accessors
To: Rob Herring <robh@kernel.org>
References: <20200506151429.12255-1-kishon@ti.com>
 <20200506151429.12255-4-kishon@ti.com> <20200520220724.GA636352@bogus>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <37d2d6c3-232d-adb8-4e0b-e0c699ec435a@ti.com>
Date: Thu, 21 May 2020 19:03:15 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200520220724.GA636352@bogus>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_063331_578211_7F7D38CE 
X-CRM114-Status: GOOD (  21.52  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Tom Joseph <tjoseph@cadence.com>,
 linux-pci@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On 5/21/2020 3:37 AM, Rob Herring wrote:
> On Wed, May 06, 2020 at 08:44:18PM +0530, Kishon Vijay Abraham I wrote:
>> Add support to use custom read and write accessors. Platforms that
>> don't support half word or byte access or any other constraint
>> while accessing registers can use this feature to populate custom
>> read and write accessors. These custom accessors are used for both
>> standard register access and configuration space register access of
>> the PCIe host bridge.
>>
>> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
>> ---
>>  drivers/pci/controller/cadence/pcie-cadence.h | 107 +++++++++++++++---
>>  1 file changed, 94 insertions(+), 13 deletions(-)
> 
> Actually, take back my R-by...
> 
>>
>> diff --git a/drivers/pci/controller/cadence/pcie-cadence.h b/drivers/pci/controller/cadence/pcie-cadence.h
>> index df14ad002fe9..70b6b25153e8 100644
>> --- a/drivers/pci/controller/cadence/pcie-cadence.h
>> +++ b/drivers/pci/controller/cadence/pcie-cadence.h
>> @@ -223,6 +223,11 @@ enum cdns_pcie_msg_routing {
>>  	MSG_ROUTING_GATHER,
>>  };
>>  
>> +struct cdns_pcie_ops {
>> +	u32	(*read)(void __iomem *addr, int size);
>> +	void	(*write)(void __iomem *addr, int size, u32 value);
>> +};
>> +
>>  /**
>>   * struct cdns_pcie - private data for Cadence PCIe controller drivers
>>   * @reg_base: IO mapped register base
>> @@ -239,7 +244,7 @@ struct cdns_pcie {
>>  	int			phy_count;
>>  	struct phy		**phy;
>>  	struct device_link	**link;
>> -	const struct cdns_pcie_common_ops *ops;
>> +	const struct cdns_pcie_ops *ops;
>>  };
>>  
>>  /**
>> @@ -299,69 +304,145 @@ struct cdns_pcie_ep {
>>  /* Register access */
>>  static inline void cdns_pcie_writeb(struct cdns_pcie *pcie, u32 reg, u8 value)
>>  {
>> -	writeb(value, pcie->reg_base + reg);
>> +	void __iomem *addr = pcie->reg_base + reg;
>> +
>> +	if (pcie->ops && pcie->ops->write) {
>> +		pcie->ops->write(addr, 0x1, value);
>> +		return;
>> +	}
>> +
>> +	writeb(value, addr);
>>  }
>>  
>>  static inline void cdns_pcie_writew(struct cdns_pcie *pcie, u32 reg, u16 value)
>>  {
>> -	writew(value, pcie->reg_base + reg);
>> +	void __iomem *addr = pcie->reg_base + reg;
>> +
>> +	if (pcie->ops && pcie->ops->write) {
>> +		pcie->ops->write(addr, 0x2, value);
>> +		return;
>> +	}
>> +
>> +	writew(value, addr);
>>  }
> 
> cdns_pcie_writeb and cdns_pcie_writew are used, so remove them.
> 
>>  
>>  static inline void cdns_pcie_writel(struct cdns_pcie *pcie, u32 reg, u32 value)
>>  {
>> -	writel(value, pcie->reg_base + reg);
>> +	void __iomem *addr = pcie->reg_base + reg;
>> +
>> +	if (pcie->ops && pcie->ops->write) {
>> +		pcie->ops->write(addr, 0x4, value);
>> +		return;
>> +	}
>> +
>> +	writel(value, addr);
> 
> writel isn't broken for you, so you don't need this either.
> 
>>  }
>>  
>>  static inline u32 cdns_pcie_readl(struct cdns_pcie *pcie, u32 reg)
>>  {
>> -	return readl(pcie->reg_base + reg);
>> +	void __iomem *addr = pcie->reg_base + reg;
>> +
>> +	if (pcie->ops && pcie->ops->read)
>> +		return pcie->ops->read(addr, 0x4);
>> +
>> +	return readl(addr);
> 
> And neither is readl.

Sure, I'll remove all the unused functions and avoid using ops for readl and
writel.
> 
>>  }
>>  
>>  /* Root Port register access */
>>  static inline void cdns_pcie_rp_writeb(struct cdns_pcie *pcie,
>>  				       u32 reg, u8 value)
>>  {
>> -	writeb(value, pcie->reg_base + CDNS_PCIE_RP_BASE + reg);
>> +	void __iomem *addr = pcie->reg_base + CDNS_PCIE_RP_BASE + reg;
>> +
>> +	if (pcie->ops && pcie->ops->write) {
>> +		pcie->ops->write(addr, 0x1, value);
>> +		return;
>> +	}
>> +
>> +	writeb(value, addr);
>>  }
>>  
>>  static inline void cdns_pcie_rp_writew(struct cdns_pcie *pcie,
>>  				       u32 reg, u16 value)
>>  {
>> -	writew(value, pcie->reg_base + CDNS_PCIE_RP_BASE + reg);
>> +	void __iomem *addr = pcie->reg_base + CDNS_PCIE_RP_BASE + reg;
>> +
>> +	if (pcie->ops && pcie->ops->write) {
>> +		pcie->ops->write(addr, 0x2, value);
>> +		return;
>> +	}
>> +
>> +	writew(value, addr);
> 
> You removed 2 out of 3 calls to this. I think I'd just make the root 
> port writes always be 32-bit. It is all just one time init stuff 
> anyways.
> 
> Either rework the calls to assemble the data into 32-bits or keep these 
> functions and do the RMW here.

The problem with assembling data into 32-bits is we have to read/write with
different offsets. We'll give PCI_VENDOR_ID offset for modifying deviceID,
PCI_INTERRUPT_LINE for modifying INTERRUPT_PIN which might get non-intuitive.
Similarly in endpoint we read and write to MSI_FLAGS (which is at offset 2) we
have to directly use MSI capability offset.

And doing RMW in the accessors would mean the same RMW op is repeated. So if we
just have cdns_pcie_rp_writeb() and cdns_pcie_rp_writew(), the same code will
be repeated here twice.

IMHO using ops is a lot cleaner for these cases. IMHO except for removing
unused functions and not changing readl/writel, others should use ops.

Kindly let me know what you think.

Thanks
Kishon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
