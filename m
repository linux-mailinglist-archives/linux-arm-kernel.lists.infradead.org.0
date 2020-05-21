Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2BB71DCCA8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 14:13:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TVdX0sl3RBdEuk1y95zbMqj8ZJYN/qn8tqaJzCBaPq0=; b=Ush3/3Mh2YD2jy
	vwbOD+2uGt8tMSw9YIU7vSYeT8ACM97WT4OGBcSnjH/bU660lrNetw8ACoNLx/b36ErIHVrHBlj8v
	ZHT1/TCyivUAI5LqiQMQvW3n1CqDuW0ghM9I2Zh0k5KooPLb1uNjwzXXRi3A1EZ0GGhEmtear9OMG
	wbOjUZtJEKmrDiRluN3XrQipruJUlttHwMpvmUGZf5laHhK0eTNeesnCYJTW+7vVvkDlfvaoBiH1d
	xvUIE6CQ2hZi182GjnzN0fSLK5wezvIenz9PBWrg0/B/2RDA8nhqCZax5oMJ0LUoyH77EMsJNqQ63
	Y9McfbkSSgYIxlqM3kNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbk4l-0001Na-N5; Thu, 21 May 2020 12:13:27 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbk4a-0001N3-KT
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 12:13:18 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04LCD6EZ056524;
 Thu, 21 May 2020 07:13:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1590063186;
 bh=3HENkJ17qOrSqmQfjcb0TayRhr8NN9GDpkzIoZgJ91U=;
 h=Subject:From:To:CC:References:Date:In-Reply-To;
 b=RHQYNUl+9sRg1ln9eIDNEsqD5d2EnxEZKOrz5qLQrqGor3xQ8O4i0q/D/mTAaKfH+
 Lkr4hNPkima7UCeUZIHmaTsr/cVVcAtao3CEyVbliseZePOwaluGyfbBNtbf2np0vC
 3pJyZTZCACXc+Dmez6Ms2MzchJdzCf99v+ccBTwA=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04LCD6l7017067
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 21 May 2020 07:13:06 -0500
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 21
 May 2020 07:13:06 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 21 May 2020 07:13:06 -0500
Received: from [10.250.233.85] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04LCD3S4074070;
 Thu, 21 May 2020 07:13:03 -0500
Subject: Re: [PATCH v3 4/4] PCI: cadence: Use "dma-ranges" instead of
 "cdns,no-bar-match-nbits" property
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Rob Herring <robh+dt@kernel.org>
References: <20200508130646.23939-1-kishon@ti.com>
 <20200508130646.23939-5-kishon@ti.com>
 <CAL_JsqJ1Om2CX5e1y32bzeiuv4fAdyFpZ88a346g4Q+jq_Ldcg@mail.gmail.com>
 <162447e2-ac3b-9523-d404-130b93e0860e@ti.com>
Message-ID: <73274652-4a18-e20b-36d1-73529241b9d7@ti.com>
Date: Thu, 21 May 2020 17:43:02 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <162447e2-ac3b-9523-d404-130b93e0860e@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_051316_751088_40A0A767 
X-CRM114-Status: GOOD (  24.71  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
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
 PCI <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tom Joseph <tjoseph@cadence.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM
 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rob,

On 5/21/2020 9:00 AM, Kishon Vijay Abraham I wrote:
> Hi Rob,
> 
> On 5/19/2020 10:41 PM, Rob Herring wrote:
>> On Fri, May 8, 2020 at 7:07 AM Kishon Vijay Abraham I <kishon@ti.com> wrote:
>>>
>>> Cadence PCIe core driver (host mode) uses "cdns,no-bar-match-nbits"
>>> property to configure the number of bits passed through from PCIe
>>> address to internal address in Inbound Address Translation register.
>>> This only used the NO MATCH BAR.
>>>
>>> However standard PCI dt-binding already defines "dma-ranges" to
>>> describe the address ranges accessible by PCIe controller. Add support
>>> in Cadence PCIe host driver to parse dma-ranges and configure the
>>> inbound regions for BAR0, BAR1 and NO MATCH BAR. Cadence IP specifies
>>> maximum size for BAR0 as 256GB, maximum size for BAR1 as 2 GB, so if
>>> the dma-ranges specifies a size larger than the maximum allowed, the
>>> driver will split and configure the BARs.
>>
>> Would be useful to know what your dma-ranges contains now.
>>
>>
>>> Legacy device tree binding compatibility is maintained by retaining
>>> support for "cdns,no-bar-match-nbits".
>>>
>>> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
>>> ---
>>>  .../controller/cadence/pcie-cadence-host.c    | 141 ++++++++++++++++--
>>>  drivers/pci/controller/cadence/pcie-cadence.h |  17 ++-
>>>  2 files changed, 141 insertions(+), 17 deletions(-)
>>>
>>> diff --git a/drivers/pci/controller/cadence/pcie-cadence-host.c b/drivers/pci/controller/cadence/pcie-cadence-host.c
>>> index 6ecebb79057a..2485ecd8434d 100644
>>> --- a/drivers/pci/controller/cadence/pcie-cadence-host.c
>>> +++ b/drivers/pci/controller/cadence/pcie-cadence-host.c
>>> @@ -11,6 +11,12 @@
>>>
>>>  #include "pcie-cadence.h"
>>>
>>> +static u64 cdns_rp_bar_max_size[] = {
>>> +       [RP_BAR0] = _ULL(128 * SZ_2G),
>>> +       [RP_BAR1] = SZ_2G,
>>> +       [RP_NO_BAR] = SZ_64T,
>>> +};
>>> +
>>>  void __iomem *cdns_pci_map_bus(struct pci_bus *bus, unsigned int devfn,
>>>                                int where)
>>>  {
>>> @@ -106,6 +112,117 @@ static int cdns_pcie_host_init_root_port(struct cdns_pcie_rc *rc)
>>>         return 0;
>>>  }
>>>
>>> +static void cdns_pcie_host_bar_ib_config(struct cdns_pcie_rc *rc,
>>> +                                        enum cdns_pcie_rp_bar bar,
>>> +                                        u64 cpu_addr, u32 aperture)
>>> +{
>>> +       struct cdns_pcie *pcie = &rc->pcie;
>>> +       u32 addr0, addr1;
>>> +
>>> +       addr0 = CDNS_PCIE_AT_IB_RP_BAR_ADDR0_NBITS(aperture) |
>>> +               (lower_32_bits(cpu_addr) & GENMASK(31, 8));
>>> +       addr1 = upper_32_bits(cpu_addr);
>>> +       cdns_pcie_writel(pcie, CDNS_PCIE_AT_IB_RP_BAR_ADDR0(bar), addr0);
>>> +       cdns_pcie_writel(pcie, CDNS_PCIE_AT_IB_RP_BAR_ADDR1(bar), addr1);
>>> +}
>>> +
>>> +static int cdns_pcie_host_bar_config(struct cdns_pcie_rc *rc,
>>> +                                    struct resource_entry *entry,
>>> +                                    enum cdns_pcie_rp_bar *index)
>>> +{
>>> +       u64 cpu_addr, pci_addr, size, winsize;
>>> +       struct cdns_pcie *pcie = &rc->pcie;
>>> +       struct device *dev = pcie->dev;
>>> +       enum cdns_pcie_rp_bar bar;
>>> +       unsigned long flags;
>>> +       u32 aperture;
>>> +       u32 value;
>>> +
>>> +       cpu_addr = entry->res->start;
>>> +       flags = entry->res->flags;
>>> +       pci_addr = entry->res->start - entry->offset;
>>> +       size = resource_size(entry->res);
>>> +       bar = *index;
>>> +
>>> +       if (entry->offset) {
>>> +               dev_err(dev, "Cannot map PCI addr: %llx to CPU addr: %llx\n",
>>> +                       pci_addr, cpu_addr);
>>
>> Would be a bit more clear to say PCI addr must equal CPU addr.
>>
>>> +               return -EINVAL;
>>> +       }
>>> +
>>> +       value = cdns_pcie_readl(pcie, CDNS_PCIE_LM_RC_BAR_CFG);
>>> +       while (size > 0) {
>>> +               if (bar > RP_NO_BAR) {
>>> +                       dev_err(dev, "Failed to map inbound regions!\n");
>>> +                       return -EINVAL;
>>> +               }
>>> +
>>> +               winsize = size;
>>> +               if (size > cdns_rp_bar_max_size[bar])
>>> +                       winsize = cdns_rp_bar_max_size[bar];
>>> +
>>> +               aperture = ilog2(winsize);
>>> +
>>> +               cdns_pcie_host_bar_ib_config(rc, bar, cpu_addr, aperture);
>>> +
>>> +               if (bar == RP_NO_BAR)
>>> +                       break;
>>> +
>>> +               if (winsize + cpu_addr >= SZ_4G) {
>>> +                       if (!(flags & IORESOURCE_PREFETCH))
>>> +                               value |= LM_RC_BAR_CFG_CTRL_MEM_64BITS(bar);
>>> +                       value |= LM_RC_BAR_CFG_CTRL_PREF_MEM_64BITS(bar);
>>> +               } else {
>>> +                       if (!(flags & IORESOURCE_PREFETCH))
>>> +                               value |= LM_RC_BAR_CFG_CTRL_MEM_32BITS(bar);
>>> +                       value |= LM_RC_BAR_CFG_CTRL_PREF_MEM_32BITS(bar);
>>> +               }
>>> +
>>> +               value |= LM_RC_BAR_CFG_APERTURE(bar, aperture);
>>> +
>>> +               size -= winsize;
>>> +               cpu_addr += winsize;
>>> +               bar++;
>>> +       }
>>> +       cdns_pcie_writel(pcie, CDNS_PCIE_LM_RC_BAR_CFG, value);
>>> +       *index = bar;
>>> +
>>> +       return 0;
>>> +}
>>> +
>>> +static int cdns_pcie_host_map_dma_ranges(struct cdns_pcie_rc *rc)
>>> +{
>>> +       enum cdns_pcie_rp_bar bar = RP_BAR0;
>>> +       struct cdns_pcie *pcie = &rc->pcie;
>>> +       struct device *dev = pcie->dev;
>>> +       struct device_node *np = dev->of_node;
>>> +       struct pci_host_bridge *bridge;
>>> +       struct resource_entry *entry;
>>> +       u32 no_bar_nbits = 32;
>>> +       int err;
>>> +
>>> +       bridge = pci_host_bridge_from_priv(rc);
>>> +       if (!bridge)
>>> +               return -ENOMEM;
>>> +
>>> +       if (list_empty(&bridge->dma_ranges)) {
>>> +               of_property_read_u32(np, "cdns,no-bar-match-nbits",
>>> +                                    &no_bar_nbits);
>>> +               cdns_pcie_host_bar_ib_config(rc, RP_NO_BAR, 0x0, no_bar_nbits);
>>> +               return 0;
>>> +       }
>>> +
>>> +       resource_list_for_each_entry(entry, &bridge->dma_ranges) {
>>> +               err = cdns_pcie_host_bar_config(rc, entry, &bar);
>>
>> Seems like this should have some better logic to pick which BAR to
>> use. Something like find the biggest region and then find the smallest
>> BAR that it fits in. Then get the next biggest...
> 
> Okay, I'll change this something like for each region, find the smallest BAR
> that it fits in and if there is no BAR big enough to hold the region, split the
> region to see if can be fitted using multiple BARs. I don't see the purpose of
> finding the biggest region first since at all times we'll only use the smallest
> BAR to fit.

Nevermind, I realized finding the biggest region is useful. I have sent a patch
adding support for that.

Thanks
Kishon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
