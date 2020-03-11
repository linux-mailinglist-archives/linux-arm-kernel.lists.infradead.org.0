Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E52181CCA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 16:48:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3lX59THgjXqDyxzuPFtx1WFeuGGMBC1aQ5XvMDrQUwY=; b=hNIhZVXo+dYfRSvd/NJmSzaVw
	n1oPTAhM5JVIh/bTiSsgUu6fi/IFx5OAGp+GDmQRRzRe5k/D4ExyD/n4Ti12WFuHv3KGCno10El+X
	kbmXmKHnVTGabYEh7CTwzW+iuo2/l648A6z6E95uw7pl+tyjAuaQNQSfYgfF2LPNnOURAa8L90PCn
	tjBW07mPVR+qpObK5MId95Q4YdOiQh3dhrj+x9DKPhh2JijVtXcTdC1xAmRKytyipRvvlHlw53MvS
	ObZHQc7ek68VsbJzTRwWZ1cY0ZogU1PtY+dWpsPH90C8ZepxbuGB72ZxY6Xl3llVAPaxBldK5GNUq
	Ru2PIkj6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC3ao-0007bj-1S; Wed, 11 Mar 2020 15:48:22 +0000
Received: from hqnvemgate25.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC3ad-0007b7-K3
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 15:48:13 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate25.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5e69080d0001>; Wed, 11 Mar 2020 08:47:25 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Wed, 11 Mar 2020 08:48:10 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Wed, 11 Mar 2020 08:48:10 -0700
Received: from [10.25.76.193] (172.20.13.39) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 11 Mar
 2020 15:48:05 +0000
Subject: Re: [PATCH V5 0/5] Add support for PCIe endpoint mode in Tegra194
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, <thierry.reding@gmail.com>
References: <20200303181052.16134-1-vidyas@nvidia.com>
 <20200311105141.GA30083@e121166-lin.cambridge.arm.com>
X-Nvconfidentiality: public
From: Vidya Sagar <vidyas@nvidia.com>
Message-ID: <e49b3c8d-f669-007b-5d35-b8ec4f0529aa@nvidia.com>
Date: Wed, 11 Mar 2020 21:18:02 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200311105141.GA30083@e121166-lin.cambridge.arm.com>
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL107.nvidia.com (172.20.187.13) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1583941645; bh=ywvixbNO+/N+yt4O8EWdBUGbwryGxLJH9bz6Oivel4E=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=FUr9rm3ZDnaGkISW2fqFeQV6c9pGe4voXCRhfLm6YSBXRi1w8HYJNa8/I8bfNPJZ0
 hrvJzdioW7B0VV1xDJZl38c+TJcJV+KIjyRryJyYj+nF9IqXosGb48Ru5Rzl7X9PuQ
 xeqi9ruu0zODcJlLs68teXh/cON40ntYNfdx1DuZAkFrt9DKr8AE0NVAcbdP9PcPEg
 y0TF7XWWQpo73L1oNJfHpDQX3qHnrJJ8qYBxYrWerdWJ6trWhksnPj6k/0qaZdNTVF
 PkPHL/U5VcNEI8kIWQRmXkUai/qB8i/kSr2X+0RJw+0Am0rEg3tMthMIaAg/ooMlGN
 n1/Ibsjw1TkiQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_084811_949819_7F234B36 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, mmaddireddy@nvidia.com, kthota@nvidia.com,
 gustavo.pimentel@synopsys.com, linux-kernel@vger.kernel.org, kishon@ti.com,
 linux-tegra@vger.kernel.org, robh+dt@kernel.org, linux-pci@vger.kernel.org,
 bhelgaas@google.com, andrew.murray@arm.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 3/11/2020 4:22 PM, Lorenzo Pieralisi wrote:
> External email: Use caution opening links or attachments
> 
> 
> On Tue, Mar 03, 2020 at 11:40:47PM +0530, Vidya Sagar wrote:
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
>> V5:
>> * Rebased patch-2 on top of Lorenzo's pci/endpoint branch
>> * Removed unwanted header files inclusion in patch-5
> 
> Applied patches 1,2,5 to pci/endpoint for v5.7, please let me know
> if something is missing.
Thanks Lorenzo and Thierry.

Thanks,
Vidya Sagar

> 
> Thanks,
> Lorenzo
> 
>> V4:
>> * Started using threaded irqs instead of kthreads
>>
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
>>   drivers/pci/controller/dwc/pcie-tegra194.c    | 679 +++++++++++++++++-
>>   include/soc/tegra/bpmp-abi.h                  |  10 +-
>>   6 files changed, 916 insertions(+), 45 deletions(-)
>>
>> --
>> 2.17.1
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
