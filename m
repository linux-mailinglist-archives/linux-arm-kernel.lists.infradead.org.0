Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C7DA1C1D0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 07:27:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2BKi86FzOV4Q3eF2ecqbIBuKuRTs7be7FmS4tV3KIdQ=; b=Ssc7iFKeb1vOQ3wVwg0pqM33t
	sPziDbV+ASDfis5S3SmLHxk22b+BDI3/W3f2SSzRL9i4SVu91apQECdc/blDdfAAmn10hDKucZki5
	uMDMoq5iCfuEI+Edi64A7TDCwuKstvbn04OS0mObIfjdaEUia5jzkkpdTRbPGuzkwM1A9pTULMEGt
	wreD4zJR9zeaty4nLFUsIkmTEb+WzHLV5hFpwPriutZ0robeIgnJaM5jl7fThryowN/t4yV3XJY4z
	UhNy9Zwengalv9svLFJtBkPReO5GL12VFdwa0eWh0XdOPWejfXqhCwfrixx/JvJPdWHMfD1TNU/YX
	mtAgwUrQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQPyC-000763-KE; Tue, 14 May 2019 05:27:20 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQPy5-00075S-3f
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 05:27:14 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5cda51b60000>; Mon, 13 May 2019 22:27:19 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Mon, 13 May 2019 22:27:12 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Mon, 13 May 2019 22:27:12 -0700
Received: from [10.24.47.172] (10.124.1.5) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 14 May
 2019 05:27:06 +0000
Subject: Re: [PATCH V6 06/15] dt-bindings: PCI: designware: Add binding for
 CDM register check
To: Rob Herring <robh@kernel.org>
References: <20190513050626.14991-1-vidyas@nvidia.com>
 <20190513050626.14991-7-vidyas@nvidia.com> <20190513151038.GA30653@bogus>
X-Nvconfidentiality: public
From: Vidya Sagar <vidyas@nvidia.com>
Message-ID: <bdffcc1e-062a-a39e-1a3d-bc48e78f9668@nvidia.com>
Date: Tue, 14 May 2019 10:57:04 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190513151038.GA30653@bogus>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL101.nvidia.com (172.20.187.10) To
 HQMAIL101.nvidia.com (172.20.187.10)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1557811639; bh=Dq8qnb1ysO5RsRvY1YBGjeDlfEbkkUSeJAsfidt5wpQ=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=GWsXtVm0irwfCt46TdsXdVGHhKZ9q888BDruFt5aAi9LxMNGaaumFAq7MIX/j2Ed+
 EeQx0ggPp1kqnzq/M1zeYmDAU3f8dgCu43hjNwZbLbJeJE3BvFxQ/hjLwBUg9SXgYs
 Ao0UdVfoAkAHe0h9G+rpfQp4l8Kxl4IoRj/KMr4ddnaOiHzjKpTq24d4kUt2cN86fY
 zLQ4wEo/Sqj/8v9ys5GwXNjXNVH+W+xtI8/CiItwIw2tyXDwaIriMmsxGpWclU9NHg
 IwPPAp7xxXyay8xLmm+kolhyLoQemXTdisK6RM2j7m3CDMR+71rFljtXg3ka8QLUsa
 ym5Aix8T+vEFg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_222713_163326_01BEFDA6 
X-CRM114-Status: GOOD (  12.86  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 thierry.reding@gmail.com, gustavo.pimentel@synopsys.com, jingoohan1@gmail.com,
 bhelgaas@google.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/13/2019 8:40 PM, Rob Herring wrote:
> On Mon, May 13, 2019 at 10:36:17AM +0530, Vidya Sagar wrote:
>> Add support to enable CDM (Configuration Dependent Module) registers check
>> for any data corruption. CDM registers include standard PCIe configuration
>> space registers, Port Logic registers and iATU and DMA registers.
>> Refer Section S.4 of Synopsys DesignWare Cores PCI Express Controller Databook
>> Version 4.90a
>>
>> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
>> ---
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
>> * Changed flag name from 'cdm-check' to 'enable-cdm-check'
>> * Added info about Port Logic and DMA registers being part of CDM
>>
>> Changes since [v1]:
>> * This is a new patch in v2 series
>>
>>   Documentation/devicetree/bindings/pci/designware-pcie.txt | 5 +++++
>>   1 file changed, 5 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/pci/designware-pcie.txt b/Documentation/devicetree/bindings/pci/designware-pcie.txt
>> index 5561a1c060d0..85b872c42a9f 100644
>> --- a/Documentation/devicetree/bindings/pci/designware-pcie.txt
>> +++ b/Documentation/devicetree/bindings/pci/designware-pcie.txt
>> @@ -34,6 +34,11 @@ Optional properties:
>>   - clock-names: Must include the following entries:
>>   	- "pcie"
>>   	- "pcie_bus"
>> +- enable-cdm-check: This is a boolean property and if present enables
>> +   automatic checking of CDM (Configuration Dependent Module) registers
>> +   for data corruption. CDM registers include standard PCIe configuration
>> +   space registers, Port Logic registers, DMA and iATU (internal Address
>> +   Translation Unit) registers.
> 
> snps,enable-cdm-check
Ok. Done.

> 
>>   RC mode:
>>   - num-viewport: number of view ports configured in hardware. If a platform
>>     does not specify it, the driver assumes 2.
>> -- 
>> 2.17.1
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
