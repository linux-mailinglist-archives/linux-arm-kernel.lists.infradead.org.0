Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE9C525FF2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 11:00:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YW6GA5FprbL6w0YbtYGWIMVWOyFCUwFgKwroUlHg4OY=; b=CdIIUKl11fzOVz7YfJl4t4l5k
	lalHt4swG65pFhJ1Y2K4x3IgPuFbwh+CwqCMaRkmWXovQwHvxKbrR4ISWzr7uJgkl12oU5OIxRN+3
	Y+euVECCgK/Cygl6bq803RqJsqzdkfIXB/7hJ2TmLIjfGgWc817BCc9vIDxgDNyvccCc1N1Wl0SaZ
	iUASgksnGcQEhvkru33bLIPzKgyaJRf+mcmjP1s/ego+QPBSz2Nu9kRaTQDBTYG2ITcItYDAVhmXZ
	dY803DLQ+mGwm9N/sN2sCV65xeB3fUcsPqVYFSBIszS4IXmr7sHUjDK8lQDrb0drpyJ6kvGbtl9pI
	Ywdr7D4FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTN6T-0001Od-HJ; Wed, 22 May 2019 09:00:05 +0000
Received: from hqemgate16.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTN6I-0001Mw-S1
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 08:59:56 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5ce50f8a0000>; Wed, 22 May 2019 01:59:54 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Wed, 22 May 2019 01:59:54 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Wed, 22 May 2019 01:59:54 -0700
Received: from [10.24.45.128] (172.20.13.39) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 22 May
 2019 08:59:49 +0000
Subject: Re: [PATCH V7 13/15] phy: tegra: Add PCIe PIPE2UPHY support
To: Thierry Reding <thierry.reding@gmail.com>
References: <20190517123846.3708-1-vidyas@nvidia.com>
 <20190517123846.3708-14-vidyas@nvidia.com> <20190521110053.GM29166@ulmo>
X-Nvconfidentiality: public
From: Vidya Sagar <vidyas@nvidia.com>
Message-ID: <ff85f75b-2b4d-eb31-2c9c-44122833b5e3@nvidia.com>
Date: Wed, 22 May 2019 14:29:46 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190521110053.GM29166@ulmo>
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL106.nvidia.com (172.18.146.12) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1558515594; bh=j8nUL7CYBN3ZSo9bQt9cG2C16yOUGsDVML131j+TReM=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=KEGjkhgZ4IGYiJr81sxvF7ROIJV5hZOAAAyoNOT3N3R64IL1IjiYpe1e7a2VMGAp+
 gDcBbDCRMD6xj52cZGirkKwtyaQKp2u15PVY5TfCDAB6efYwHK5WGu462lxpFfa7jD
 U17xB8s8C1XcbW1hs4Hp7nJDoYkuGrr/PxLVEoASViQrk5993GSteP7uqtiZlUAkFe
 oDh4Qroc/slfkPKFkGBGn7DERLLWki7GYkkM1O2ayFbLZcHv4fjuI4hjnYllCQxdvB
 ee+4uhzcUsk7KtsYIEe1CsYgwxHXF1aAJPgfN4QvaclgbJFOQd1mk9uEk4WDkvwbGw
 14JY5mSLixK4A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_015954_913986_E137ABFB 
X-CRM114-Status: GOOD (  13.61  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.65 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On 5/21/2019 4:30 PM, Thierry Reding wrote:
> On Fri, May 17, 2019 at 06:08:44PM +0530, Vidya Sagar wrote:
>> Synopsys DesignWare core based PCIe controllers in Tegra 194 SoC interface
>> with Universal PHY (UPHY) module through a PIPE2UPHY (P2U) module.
>> For each PCIe lane of a controller, there is a P2U unit instantiated at
>> hardware level. This driver provides support for the programming required
>> for each P2U that is going to be used for a PCIe controller.
>>
>> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
>> ---
>> Changes since [v6]:
>> * None
>>
>> Changes since [v5]:
>> * Addressed review comments from Thierry
>>
>> Changes since [v4]:
>> * None
>>
>> Changes since [v3]:
>> * Rebased on top of linux-next top of the tree
>>
>> Changes since [v2]:
>> * Replaced spaces with tabs in Kconfig file
>> * Sorted header file inclusion alphabetically
>>
>> Changes since [v1]:
>> * Added COMPILE_TEST in Kconfig
>> * Removed empty phy_ops implementations
>> * Modified code according to DT documentation file modifications
>>
>>   drivers/phy/tegra/Kconfig             |   7 ++
>>   drivers/phy/tegra/Makefile            |   1 +
>>   drivers/phy/tegra/pcie-p2u-tegra194.c | 109 ++++++++++++++++++++++++++
>>   3 files changed, 117 insertions(+)
>>   create mode 100644 drivers/phy/tegra/pcie-p2u-tegra194.c
>>
>> diff --git a/drivers/phy/tegra/Kconfig b/drivers/phy/tegra/Kconfig
>> index a3b1de953fb7..06d423fa85b4 100644
>> --- a/drivers/phy/tegra/Kconfig
>> +++ b/drivers/phy/tegra/Kconfig
>> @@ -6,3 +6,10 @@ config PHY_TEGRA_XUSB
>>   
>>   	  To compile this driver as a module, choose M here: the module will
>>   	  be called phy-tegra-xusb.
>> +
>> +config PHY_TEGRA194_PCIE_P2U
>> +	tristate "NVIDIA Tegra P2U PHY Driver"
> 
> One more thing: perhaps make this description consistent with the driver
> description in the source file.
Done.
> 
> Thierry
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
