Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B6D4AA07B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 12:50:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EHRRt3tKdF8fAWkvNupAEkhr1DWBAuu1HtCIJ8kYlko=; b=N3/CxdGASg0Mnc7B5FoQEirkA
	cHE9CHu5MpnfJpL2idQMpMfvUBRU5AGRh8hN+FDiYs+RRwdEko3lCqvzt+8QdXtreZRqinV9RPdiX
	6zE0aseGiMBLYQ9MRFPOlbNIUOifu5b97FTK3ucRvV87IY78ahMHAn1+78fn/Wfhg6VA461zp7wQ5
	UzOV8c6Ix9OAONpPEY0pzdzlrsMsMHHNcz/FcHPHMtLaIWO1o0n9E9XH6Y5BwGoTgdfiLXO9f8mZn
	qoLmKOf9+VW5bJe0bs8CVyW6gJ/S/HTuC8XasmTrKwTh192dvQnFsDt7zTnUdu3gzx/TP/iotZQnk
	gqXtmNI2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5pLk-0006eJ-MA; Thu, 05 Sep 2019 10:50:48 +0000
Received: from hqemgate16.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5pLb-0006dJ-Lj
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 10:50:41 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d70e8820000>; Thu, 05 Sep 2019 03:50:42 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Thu, 05 Sep 2019 03:50:39 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Thu, 05 Sep 2019 03:50:39 -0700
Received: from [10.24.45.110] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 5 Sep
 2019 10:50:34 +0000
Subject: Re: [PATCH V3 0/6] PCI: tegra: Enable PCIe C5 controller of Tegra194
 in p2972-0000 platform
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
References: <20190828172850.19871-1-vidyas@nvidia.com>
 <7751a77d-5812-49b7-0c6b-00e6740e209b@nvidia.com>
 <20190905093444.GA16642@e121166-lin.cambridge.arm.com>
X-Nvconfidentiality: public
From: Vidya Sagar <vidyas@nvidia.com>
Message-ID: <287e3013-9011-79f8-fc1d-56184480cdb7@nvidia.com>
Date: Thu, 5 Sep 2019 16:20:31 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190905093444.GA16642@e121166-lin.cambridge.arm.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL101.nvidia.com (172.20.187.10) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1567680642; bh=VKSLkWMTBZ8TeEsRAG5d5mg7LuR8kaAugx+O7CWKc1w=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=bXBy66CmsWTB1BXHGXjSJeS4s5qpZ5zpQRTF9GAYEixvZwJpaSxwZh5owvuGBXhAq
 GZkVs9hIxA/wBVIG+wHljAkpeUeEg5Yyj7PL1LLazOpwbafcpwQA/ZQRH6UW5Enuez
 hsgU0KKgW55KcoT9TyDdUsoJ4SsKSZz6cM9BJbCWh57crBex34BZ1W3G61hsLeXXNT
 kvvM2ADt6FTzKWLehLfZlgpfDYyeK3RKrKmDLvs60AYxNv86odwzjOYmQdtiOI9d5q
 hipAlFUSU4TEPXZCMYNl3fW1nX9qaAWvAuKGfQAEi95DbnlhB696YAyxgQIsR1sDB+
 Bt1Lc76VspiJw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_035039_720636_EED4F015 
X-CRM114-Status: GOOD (  12.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.65 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, mperttunen@nvidia.com, mmaddireddy@nvidia.com,
 kthota@nvidia.com, gustavo.pimentel@synopsys.com, linux-kernel@vger.kernel.org,
 kishon@ti.com, linux-tegra@vger.kernel.org, robh+dt@kernel.org,
 thierry.reding@gmail.com, linux-pci@vger.kernel.org, bhelgaas@google.com,
 andrew.murray@arm.com, digetx@gmail.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/5/2019 3:04 PM, Lorenzo Pieralisi wrote:
> On Thu, Sep 05, 2019 at 01:44:46PM +0530, Vidya Sagar wrote:
>> Hi Lorenzo / Bjorn,
>> Can you please review this series?
>> I have Reviewed-by and Acked-by from Rob, Thierry and Andrew already.
> 
> Rebase it on top of my pci/tegra branch (it does not apply),
> resend it and I will merge it.
I just sent V4 after rebasing the series on top of pci/tegra.

Thanks,
Vidya Sagar
> 
> Thanks,
> Lorenzo
> 
>> Thanks,
>> Vidya Sagar
>>
>> On 8/28/2019 10:58 PM, Vidya Sagar wrote:
>>> This patch series enables Tegra194's C5 controller which owns x16 slot in
>>> p2972-0000 platform. C5 controller's PERST# and CLKREQ# are not configured as
>>> output and bi-directional signals by default and hence they need to be
>>> configured explicitly. Also, x16 slot's 3.3V and 12V supplies are controlled
>>> through GPIOs and hence they need to be enabled through regulator framework.
>>> This patch series adds required infrastructural support to address both the
>>> aforementioned requirements.
>>> Testing done on p2972-0000 platform
>>> - Able to enumerate devices connected to x16 slot (owned by C5 controller)
>>> - Enumerated device's functionality verified
>>> - Suspend-Resume sequence is verified with device connected to x16 slot
>>>
>>> V3:
>>> * Addressed some more review comments from Andrew Murray and Thierry Reding
>>>
>>> V2:
>>> * Changed the order of patches in the series for easy merging
>>> * Addressed review comments from Thierry Reding and Andrew Murray
>>>
>>> Vidya Sagar (6):
>>>     dt-bindings: PCI: tegra: Add sideband pins configuration entries
>>>     dt-bindings: PCI: tegra: Add PCIe slot supplies regulator entries
>>>     PCI: tegra: Add support to configure sideband pins
>>>     PCI: tegra: Add support to enable slot regulators
>>>     arm64: tegra: Add configuration for PCIe C5 sideband signals
>>>     arm64: tegra: Add PCIe slot supply information in p2972-0000 platform
>>>
>>>    .../bindings/pci/nvidia,tegra194-pcie.txt     | 16 ++++
>>>    .../arm64/boot/dts/nvidia/tegra194-p2888.dtsi | 24 +++++
>>>    .../boot/dts/nvidia/tegra194-p2972-0000.dts   |  4 +-
>>>    arch/arm64/boot/dts/nvidia/tegra194.dtsi      | 38 +++++++-
>>>    drivers/pci/controller/dwc/pcie-tegra194.c    | 94 ++++++++++++++++++-
>>>    5 files changed, 172 insertions(+), 4 deletions(-)
>>>
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
