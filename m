Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 656ED177E4F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 19:14:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gANsP/5OkKbmekwZ6j+xlNvetsvvGUjNd7BlX4Twwl8=; b=JAbXhlfNq0n+7lvKl48sG614R
	BNx+T6H5tHPU/TkmDQOPY4TP3cWI4NGJEGjxK3wZ0HymaXzdvfNrHlf4Ph/hUku8+dSNrktRw7q0E
	YhZFDXavm56J1rLkmAUzyiO9Xl7j0JxIIH/RTszSDeOvL4Ym8QAGTvkXrjD3dzNJe/GjZLgabJki5
	2vu3vo1arcM/Z4x6OgiahtKeDQOEyZVzpHmDmnBouaYWKUhIwbr9tfKGGsxRSTO9Lt1Oxd2iByjT0
	pTFkzlN4vBe0IjwED7XezkqeeopeLDJwLqynMWc5az62Ixm4xGBj1fWGyPcD4PQw+Q7wq4/4IVFj2
	VTQDJvVDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9C3d-0007BL-Va; Tue, 03 Mar 2020 18:14:17 +0000
Received: from hqnvemgate25.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9C3S-0007Az-8k
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 18:14:07 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate25.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5e5e9e450000>; Tue, 03 Mar 2020 10:13:25 -0800
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Tue, 03 Mar 2020 10:14:06 -0800
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Tue, 03 Mar 2020 10:14:06 -0800
Received: from [10.25.75.175] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 3 Mar
 2020 18:14:01 +0000
Subject: Re: [PATCH V4 0/5] Add support for PCIe endpoint mode in Tegra194
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
References: <20200303105418.2840-1-vidyas@nvidia.com>
 <20200303170103.GA9641@e121166-lin.cambridge.arm.com>
X-Nvconfidentiality: public
From: Vidya Sagar <vidyas@nvidia.com>
Message-ID: <d1e3a42f-c179-fd03-fac0-7cd449580e5b@nvidia.com>
Date: Tue, 3 Mar 2020 23:43:58 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200303170103.GA9641@e121166-lin.cambridge.arm.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL101.nvidia.com (172.20.187.10) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1583259205; bh=3LnLpivKc9OM9v6zIN6nnfGAUgWdkTbhy7nEOq/+B0s=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=B/CFMRuv7JlCYSA0Wkq/F0VWN5UFk8YsJJ7+/5gB9YNb3BHV0EEUhjRvSDFlhPE1+
 Qzlh1b1H8U5n9iTNleElru4F59pcRXY5ojnQzn277lQ0PXavk+os4CSAZHsXssjK2Z
 XMbEXXdI+HHCdX5El0mcj9kZTqAJDyoP//b7sXv52C2ZxMJjTKQBUrgjm9ShFosZek
 mLwUKDWXtWL13U5LU5A2S8ipJtX1bd361lpvufMmPwRKFAv8zdIDJ38Rj+lmRBxjQL
 PUS9x+kLY/Kfr2FbVOONBTxn8QoYolUksOn2WytXKafC/2/3tcH4qGyz9pMFJdpZgo
 vuBkUZAx1fn4A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_101406_320981_24A6ECEE 
X-CRM114-Status: GOOD (  16.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, mmaddireddy@nvidia.com, kthota@nvidia.com,
 gustavo.pimentel@synopsys.com, linux-kernel@vger.kernel.org, kishon@ti.com,
 linux-tegra@vger.kernel.org, robh+dt@kernel.org, thierry.reding@gmail.com,
 linux-pci@vger.kernel.org, bhelgaas@google.com, andrew.murray@arm.com,
 jonathanh@nvidia.com, linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 3/3/2020 10:31 PM, Lorenzo Pieralisi wrote:
> External email: Use caution opening links or attachments
> 
> 
> On Tue, Mar 03, 2020 at 04:24:13PM +0530, Vidya Sagar wrote:
>> Tegra194 has three (C0, C4 & C5) dual mode PCIe controllers that can operate
>> either in root port mode or in end point mode but only in one mode at a time.
>> Platform P2972-0000 supports enabling endpoint mode for C5 controller. This
>> patch series adds support for PCIe endpoint mode in both the driver as well as
>> in DT.
>> This patch series depends on the changes made for Synopsys DesignWare endpoint
>> mode subsystem that are recently accepted.
>> @ https://patchwork.kernel.org/project/linux-pci/list/?series=202211
>> which in turn depends on the patch made by Kishon
>> @ https://patchwork.kernel.org/patch/10975123/
>> which is also under review.
>>
>> V4:
>> * Started using threaded irqs instead of kthreads
> 
> Hi Vidya,
> 
> sorry for the bother, may I ask you to rebase the series (after
> answering Thierry's query) on top of my pci/endpoint branch please ?
> 
> Please resend it and I will merge patches {1,2,5} then.
Sure.
I just sent V5 series rebasing patches on top of your pci/endpoint branch.

Thanks,
Vidya Sagar
> 
> Thanks,
> Lorenzo
> 
>> V3:
>> * Re-ordered patches in the series to make the driver change as the last patch
>> * Took care of Thierry's review comments
>>
>> V2:
>> * Addressed Thierry & Bjorn's review comments
>> * Added EP mode specific binding documentation to already existing binding documentation file
>> * Removed patch that enables GPIO controller nodes explicitly as they are enabled already
>>
>> Vidya Sagar (5):
>>    soc/tegra: bpmp: Update ABI header
>>    dt-bindings: PCI: tegra: Add DT support for PCIe EP nodes in Tegra194
>>    arm64: tegra: Add PCIe endpoint controllers nodes for Tegra194
>>    arm64: tegra: Add support for PCIe endpoint mode in P2972-0000
>>      platform
>>    PCI: tegra: Add support for PCIe endpoint mode in Tegra194
>>
>>   .../bindings/pci/nvidia,tegra194-pcie.txt     | 125 +++-
>>   .../boot/dts/nvidia/tegra194-p2972-0000.dts   |  18 +
>>   arch/arm64/boot/dts/nvidia/tegra194.dtsi      |  99 +++
>>   drivers/pci/controller/dwc/Kconfig            |  30 +-
>>   drivers/pci/controller/dwc/pcie-tegra194.c    | 681 +++++++++++++++++-
>>   include/soc/tegra/bpmp-abi.h                  |  10 +-
>>   6 files changed, 918 insertions(+), 45 deletions(-)
>>
>> --
>> 2.17.1
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
