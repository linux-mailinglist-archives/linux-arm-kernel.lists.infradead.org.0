Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB436C2A65
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 01:11:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gRTHqkPAA0khuA6VnltRnXZ3qZbNgrEbwoj6YgV9GDE=; b=qBFY25cMIhw+x2O+jzpijCBn+
	beJAuqHtpNzdoiLOnYUZNNd2BWwsmw6nFD09XrgyN55DoQrd80XUixUuBai6HUQGNfVI7AA1Lz9LI
	woeVkQ9PGU6AhGdxjwNLUc72JdTKRvcuDL30Gyizmd5+iJaV+UVcpvtB9uq7U5n1oAkdY4vVLV6h7
	oFrOXsb6cX7zw9KPYoqoJXArKF3FF4lWxM/CLzN/3x8Sd2akXCUtqKKL+0IoXrTi4F/WvkC2RwhxP
	A7z9168h2Qat1PGXP5tLMXaQsqRi4nGx93tqs+4P7TphPYs6IpEdYfVI7SVklsv0Vozpp2mwhBR00
	AvMKYXw8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF4p1-0007tN-8t; Mon, 30 Sep 2019 23:11:15 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF4on-0007st-8E
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 23:11:02 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x8UNAnGS039746;
 Mon, 30 Sep 2019 18:10:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1569885049;
 bh=OUHywMUtej7GlrP6k5IHpcQZlK4jvSX03Oy+36G5YdY=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=HCBY20MxGKQCMraorRHsqfQFekbPqI8q5nNNbRNw/hjMBrGrYpW8z2HmpPf9J45S9
 VkpG2EoEL+a/zFdOWbTfybj7JMVz3KRpccnUO5eoUBZbiItl1YbVt21xB9shEmROiO
 f8GoKfvVKOGm5dErjP11p5aCFYzmAtYSkH4CiY0s=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x8UNAnBT005434
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 30 Sep 2019 18:10:49 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 30
 Sep 2019 18:10:39 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 30 Sep 2019 18:10:39 -0500
Received: from [10.250.197.80] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8UNAkNV118782;
 Mon, 30 Sep 2019 18:10:47 -0500
Subject: Re: [PATCH v2 linux-next 4/4] arm64: configs: defconfig: Change
 CONFIG_REMOTEPROC from m to y
To: Olof Johansson <olof@lixom.net>, Will Deacon <will@kernel.org>
References: <20190920075946.13282-1-j-keerthy@ti.com>
 <20190920075946.13282-5-j-keerthy@ti.com>
 <20190930134856.umdoeq7k6ukmajij@willie-the-truck>
 <CAOesGMgs7rKOVnimDwSpeGTAf93Er+Ymzy9-R-mKkQK6MQcF3Q@mail.gmail.com>
From: keerthy <j-keerthy@ti.com>
Message-ID: <0c8dcf78-6f9e-f47f-1175-90b716cdad84@ti.com>
Date: Tue, 1 Oct 2019 04:40:47 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAOesGMgs7rKOVnimDwSpeGTAf93Er+Ymzy9-R-mKkQK6MQcF3Q@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_161101_417646_D3B3BD6A 
X-CRM114-Status: GOOD (  15.72  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-omap <linux-omap@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Tony Lindgren <tony@atomide.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Sekhar Nori <nsekhar@ti.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Tero Kristo <t-kristo@ti.com>,
 hch@lst.de, Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 10/1/2019 12:16 AM, Olof Johansson wrote:
> On Mon, Sep 30, 2019 at 6:49 AM Will Deacon <will@kernel.org> wrote:
>>
>> On Fri, Sep 20, 2019 at 01:29:46PM +0530, Keerthy wrote:
>>> Commit 6334150e9a36 ("remoteproc: don't allow modular build")
>>> changes CONFIG_REMOTEPROC to a boolean from a tristate config
>>> option which inhibits all defconfigs marking CONFIG_REMOTEPROC as
>>> a module in compiling the remoteproc and dependent config options.
>>>
>>> So fix the defconfig to have CONFIG_REMOTEPROC built in.
>>>
>>> Fixes: 6334150e9a36 ("remoteproc: don't allow modular build")
>>> Signed-off-by: Keerthy <j-keerthy@ti.com>
>>> ---
>>>   arch/arm64/configs/defconfig | 2 +-
>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
>>> index 8e05c39eab08..c9a867ac32d4 100644
>>> --- a/arch/arm64/configs/defconfig
>>> +++ b/arch/arm64/configs/defconfig
>>> @@ -723,7 +723,7 @@ CONFIG_TEGRA_IOMMU_SMMU=y
>>>   CONFIG_ARM_SMMU=y
>>>   CONFIG_ARM_SMMU_V3=y
>>>   CONFIG_QCOM_IOMMU=y
>>> -CONFIG_REMOTEPROC=m
>>> +CONFIG_REMOTEPROC=y
>>>   CONFIG_QCOM_Q6V5_MSS=m
>>>   CONFIG_QCOM_Q6V5_PAS=m
>>>   CONFIG_QCOM_SYSMON=m
>>
>> Acked-by: Will Deacon <will@kernel.org>
>>
>> This fixes the following annoying warning from "make defconfig" on arm64:
>>
>>    arch/arm64/configs/defconfig:726:warning: symbol value 'm' invalid for REMOTEPROC
>>
>> I'm assuming the fix will go via arm-soc, but I can take it otherwise
>> (please just let me know).
> 
> Thanks, I'll pick this up, but I'll squash the 4 one-line changes into
> one commit instead of separate patches.

Thanks Olof.

> 
> 
> -Olof
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
