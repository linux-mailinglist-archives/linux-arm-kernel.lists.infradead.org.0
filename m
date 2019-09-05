Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A176A9CB1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 10:15:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VQMNwfKV+U5ydv6H1Rb8gn8k0FaCI9gzpnrnZDYslRw=; b=ltqLLvk4Ae63msijbCEuo6wOB
	hg7dLUnWEiBtof5bC1cEj3d6RTZV6SQHDnvMbnXkkloyyQ6emKo0g2vgrGUPvmnkGf52ROpUTxtA5
	cxWF6a/9Vm9I6jCh+SOhwpffW1c4eepU9MvJwoc9tKcs2d2EefOZ9QMFoWH+hkMn05qkG5reoBNGk
	7+P5TWRF8APsfFKj5Kd0olOebgu7J8dvz/+mAJbrBf+PSvgK0UCwa9BblUgMw3wxTz+vbgMjcmgRB
	j8ImU1c4e4ivFKiV1WPWos0G4Hr1qdY6RwlEPFmFbkClCje/W7SqbwXOzu9fRZdluRYeqeXDoG9by
	XypMFaU8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5mvF-0008B2-8I; Thu, 05 Sep 2019 08:15:17 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5mv1-0007XL-5q
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 08:15:04 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d70c3ff0000>; Thu, 05 Sep 2019 01:14:55 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Thu, 05 Sep 2019 01:14:54 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Thu, 05 Sep 2019 01:14:54 -0700
Received: from [10.24.45.110] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 5 Sep
 2019 08:14:49 +0000
Subject: Re: [PATCH V3 0/6] PCI: tegra: Enable PCIe C5 controller of Tegra194
 in p2972-0000 platform
To: <lorenzo.pieralisi@arm.com>, <bhelgaas@google.com>, <robh+dt@kernel.org>, 
 <thierry.reding@gmail.com>, <jonathanh@nvidia.com>, <andrew.murray@arm.com>
References: <20190828172850.19871-1-vidyas@nvidia.com>
X-Nvconfidentiality: public
From: Vidya Sagar <vidyas@nvidia.com>
Message-ID: <7751a77d-5812-49b7-0c6b-00e6740e209b@nvidia.com>
Date: Thu, 5 Sep 2019 13:44:46 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190828172850.19871-1-vidyas@nvidia.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL111.nvidia.com (172.20.187.18) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1567671295; bh=PhBJxOMrfevbbVmLua/ziqr5zxQ+sCG62W4DYI/Bgpo=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=faj0pebruq92ZjPws0k6DdY21Mz3rgNGoE0m7xwpk6hVdEl2wk3kMoSovWx/x/o64
 /iM7ABBr57k5e+bIUGoD/aJnbPCJnF9jW0Zhm11eY5bIDiaaCqyi8XFcQYYFK3C+VF
 m6q8GOBWo3D8uP72yBRwDZ4gDP7XlazfiGdbN2WxcnyfKCSwAN7NMDWEFWpZeahdgB
 bRmBFzQlhN9q8iCcYlnrDaYjLPj5rywGSi+DDgWQ1z9M3UVD48TMZYsuYC1zg0EEzA
 9y+e+wQYi/8W7oomavqJzHRtoOY8SzMDL23ry2TiweI5R6ejfHda+tXY3Zw9e/19uD
 T7VpBgRy94rGA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_011503_276786_E60E5F39 
X-CRM114-Status: GOOD (  12.86  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 gustavo.pimentel@synopsys.com, linux-kernel@vger.kernel.org,
 mperttunen@nvidia.com, linux-pci@vger.kernel.org, linux-tegra@vger.kernel.org,
 digetx@gmail.com, kishon@ti.com, linux-arm-kernel@lists.infradead.org,
 sagar.tv@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Lorenzo / Bjorn,
Can you please review this series?
I have Reviewed-by and Acked-by from Rob, Thierry and Andrew already.

Thanks,
Vidya Sagar

On 8/28/2019 10:58 PM, Vidya Sagar wrote:
> This patch series enables Tegra194's C5 controller which owns x16 slot in
> p2972-0000 platform. C5 controller's PERST# and CLKREQ# are not configured as
> output and bi-directional signals by default and hence they need to be
> configured explicitly. Also, x16 slot's 3.3V and 12V supplies are controlled
> through GPIOs and hence they need to be enabled through regulator framework.
> This patch series adds required infrastructural support to address both the
> aforementioned requirements.
> Testing done on p2972-0000 platform
> - Able to enumerate devices connected to x16 slot (owned by C5 controller)
> - Enumerated device's functionality verified
> - Suspend-Resume sequence is verified with device connected to x16 slot
> 
> V3:
> * Addressed some more review comments from Andrew Murray and Thierry Reding
> 
> V2:
> * Changed the order of patches in the series for easy merging
> * Addressed review comments from Thierry Reding and Andrew Murray
> 
> Vidya Sagar (6):
>    dt-bindings: PCI: tegra: Add sideband pins configuration entries
>    dt-bindings: PCI: tegra: Add PCIe slot supplies regulator entries
>    PCI: tegra: Add support to configure sideband pins
>    PCI: tegra: Add support to enable slot regulators
>    arm64: tegra: Add configuration for PCIe C5 sideband signals
>    arm64: tegra: Add PCIe slot supply information in p2972-0000 platform
> 
>   .../bindings/pci/nvidia,tegra194-pcie.txt     | 16 ++++
>   .../arm64/boot/dts/nvidia/tegra194-p2888.dtsi | 24 +++++
>   .../boot/dts/nvidia/tegra194-p2972-0000.dts   |  4 +-
>   arch/arm64/boot/dts/nvidia/tegra194.dtsi      | 38 +++++++-
>   drivers/pci/controller/dwc/pcie-tegra194.c    | 94 ++++++++++++++++++-
>   5 files changed, 172 insertions(+), 4 deletions(-)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
