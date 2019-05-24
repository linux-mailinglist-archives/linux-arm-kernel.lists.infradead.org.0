Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B1A29A3A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 16:46:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qfK1ivCkiHEDUBm8cCLa9lbT6riF4Zn0MDYWZYY+Tb0=; b=QoRXoiQOxvqmmK2cWV1N0cfF3
	2ZHFs+VxqPgZ+/cfPv/vPRzK4pqO0/RFsc54IUOfdiPPnxmgmLX373YTdcpfbvnsqi5lFKwrPPJKk
	V64y2t5L8xjur+dcwt3mjqQ9086vFLS8GR/xmxraAQVLQOW/XPl4Jl8et26WxlDdjXSaBIzkQTDwp
	mICVCgg/2s1Z/bLsn0nUVdn6x6Nj9wHj6NECKRY9zMuGQj7XZ8Q/9iGW+GSWdJfWjlq2BEkedG+Ja
	B3GjmW0P7l1b66VeTGl+Nme1f/nss0RMdruvw61biXLi1RvtLVi6BMkopqDhg9faKTjqQoDg6C3qO
	+IHNh+DHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUBSj-0005gM-Py; Fri, 24 May 2019 14:46:25 +0000
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUBSa-0005eh-8x
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 14:46:17 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5ce803af0000>; Fri, 24 May 2019 07:46:07 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Fri, 24 May 2019 07:46:12 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Fri, 24 May 2019 07:46:12 -0700
Received: from [10.25.75.99] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 24 May
 2019 14:46:07 +0000
Subject: Re: [PATCH V7 04/15] PCI: dwc: Move config space capability search API
To: Bjorn Helgaas <helgaas@kernel.org>
References: <20190517123846.3708-1-vidyas@nvidia.com>
 <20190517123846.3708-5-vidyas@nvidia.com> <20190521211757.GF57618@google.com>
 <fd164d1f-cf99-fe81-c368-46e3a3742a59@nvidia.com>
 <20190522140235.GB79339@google.com>
X-Nvconfidentiality: public
From: Vidya Sagar <vidyas@nvidia.com>
Message-ID: <fcd437d6-1bf8-9247-9453-d7769f430cb7@nvidia.com>
Date: Fri, 24 May 2019 20:16:04 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190522140235.GB79339@google.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL105.nvidia.com (172.20.187.12) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1558709167; bh=7gQdgrdEH6mUJp+DZg0whOMryAQmbUGCSVJvsmfrn80=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=AP800U3TqwiZEhIKSf/MMHAE4tT2L+6Lh7TylCmBvdpziSNQtgwc19+kqyKzl+u+W
 IPy/3sFkQudDemRovVMMRvH5Nn8lgEXzzEiw+KpMSbuscFaCwIdxflr3itSzYWZFAd
 SrbjnQ+sLMjgp9VzleeJP/acStCIHmDfAw9veb0vP6gguPwnWOk875gtaaKLhbqRBz
 FZu/2cYtLpZJ1pG5Fvd9XdPGMcnSX9YN/eAW+uSRYMy+3j4qHBu7zFmgUqcpZy0oNF
 yZ6PoK4DEgRIJD7HATD1aLF8usXnZug1p0JLy/wpGiax65BrMk2aBwAb2qMZrwyEe5
 UB0KhBxh3UaJA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_074616_327294_DD8F9E83 
X-CRM114-Status: GOOD (  20.36  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
 robh+dt@kernel.org, kishon@ti.com, kthota@nvidia.com, thierry.reding@gmail.com,
 gustavo.pimentel@synopsys.com, jingoohan1@gmail.com,
 linux-tegra@vger.kernel.org, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/22/2019 7:32 PM, Bjorn Helgaas wrote:
> On Wed, May 22, 2019 at 02:26:08PM +0530, Vidya Sagar wrote:
>> On 5/22/2019 2:47 AM, Bjorn Helgaas wrote:
>>> On Fri, May 17, 2019 at 06:08:35PM +0530, Vidya Sagar wrote:
>>>> Move PCIe config space capability search API to common DesignWare file
>>>> as this can be used by both host and ep mode codes.
> 
>>>>    .../pci/controller/dwc/pcie-designware-ep.c   | 37 +----------------
>>>>    drivers/pci/controller/dwc/pcie-designware.c  | 40 +++++++++++++++++++
>>>>    drivers/pci/controller/dwc/pcie-designware.h  |  2 +
>>>>    3 files changed, 44 insertions(+), 35 deletions(-)
> 
>>>> --- a/drivers/pci/controller/dwc/pcie-designware.c
>>>> +++ b/drivers/pci/controller/dwc/pcie-designware.c
>>>> @@ -14,6 +14,46 @@
>>>>    #include "pcie-designware.h"
>>>> +/*
>>>> + * These APIs are different from standard pci_find_*capability() APIs in the
>>>> + * sense that former can only be used post device enumeration as they require
>>>> + * 'struct pci_dev *' pointer whereas these APIs require 'struct dw_pcie *'
>>>> + * pointer and can be used before link up also.
>>>
>>> I think this comment is slightly misleading because it suggests the
>>> reason we need these DW interfaces is because we're doing something
>>> before a pci_dev pointer is available.
>>>
>>> But these DW interfaces are used on devices that will *never* have a
>>> pci_dev pointer because they are not PCI devices.  They're used on
>>> host controller devices, which have a PCIe link on the downstream
>>> side, but the host controller driver operates them using their
>>> upstream, non-PCI interfaces.  Logically, I think they would be
>>> considered parts of Root Complexes, not Root Ports.
>>>
>>> There's actually no reason why that upstream interface should look
>>> anything like PCI; it doesn't need to organize registers into
>>> capability lists at all.  It might be convenient for the hardware to
>>> do that and share things with a Root Port device, which *is* a PCI
>>> device, but it's not required.
>>>
>>> It also really has nothing to do with whether the link is up.  This
>>> code operates on hardware that is upstream from the link, so we can
>>> reach it regardless of the link.
>>
>> I added this comment after receiving a review comment to justify why
>> standard pci_find_*capability() APIs can't be used here. Hence added
>> this.  I understand your comment that DW interface need not have to
>> be a PCI device, but what is present in the hardware is effectively
>> a root port implementation and post enumeration, we get a 'struct
>> pci_dev' created for it, hence I thought it is fine to bring 'struct
>> pci_dev' into picture.
> 
> This code operates on the host controller.  It configures the bridge
> that leads *to* PCI devices.  Since that bridge is not a PCI device,
> the PCI specs don't say anything about how to program it.
> 
> The fact that the host controller programming interface happens to
> resemble the PCI programming interface is purely coincidental.
> 
>> Also, I agree that mention of 'link up' is unwarranted and could be
>> reworded in a better way.
>>
>> Do you suggest to remove this comment altogether or reword it s/and
>> can be used before link up also/and can be used before 'struct
>> pci_dev' is available/ ?
> 
> Maybe something like this?
> 
>      These interfaces resemble the pci_find_*capability() interfaces,
>      but these are for configuring host controllers, which are bridges
>      *to* PCI devices but are not PCI devices themselves.
Ok. Done.

> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
