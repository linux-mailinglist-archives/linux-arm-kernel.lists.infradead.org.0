Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF6985920D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 05:38:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zjvzbCCNC+0pdgl7SrW3pTcNAdacekEmC4FUAO+BEAI=; b=eKmLrhnD3j385IBRPS0Ene7BS
	ssn+/KUpcGxRHuG59MG7VpNTLlwxJ775661eVAHY1tdOkbWcf7LW4lOIBODrR5P4fE0gWH+a53pew
	FGb0uegInyZpQ0WiQWVH3GdF4Nazsyi6D99rl1rcbVtyJzWpMcJzoF4d6crYK/1VKNLwx1ujems0O
	0/VQnwSnx41+rsLyBLQdX83/07qEcfNGdy6RHKnkovbDT8CIPLP/PsKridc5tM5Wy/ZS4yruhLWWi
	pHFkXIsXgH4Pbk896JYz/5YTwXsPBvb/IRnpw1zWTLjpQkUz1Gog+QnIpCYYG86c2jwJ6Bocl/OI2
	kJrbaqTwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hghiW-0001Wm-3c; Fri, 28 Jun 2019 03:38:28 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hghiD-0001WP-Cj
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 03:38:10 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5S3c3sP008526;
 Thu, 27 Jun 2019 22:38:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1561693083;
 bh=dzmOZZff9xHTE8ZakTRvyW2vPBFPMXEZjI/07/tzJdY=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=PmTFMMrFC0XpLwzqjUEL99pdWFb5xuITGQNnRtjaNWfs6PkLQk5p4AInIwbgfDvQO
 qEK44L9+NeiThBMQ/KTdxbg3pMdQGxzLkCOz2w1K4RYZL78Jn0JuUH4TU/PGNhMXtj
 wYQl7Y+mlO72LTLWVNITvQtr+MGIG6VdR1bNrjR8=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5S3c3bh058049
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 27 Jun 2019 22:38:03 -0500
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 27
 Jun 2019 22:38:03 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 27 Jun 2019 22:38:03 -0500
Received: from [172.24.191.45] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5S3c0s2064279;
 Thu, 27 Jun 2019 22:38:01 -0500
Subject: Re: [PATCH v2] arm64: Kconfig.platforms: Enable GPIO_DAVINCI for
 ARCH_K3
To: Nishanth Menon <nm@ti.com>
References: <20190627110920.15099-1-j-keerthy@ti.com>
 <20190627143208.eeca4xyygml7s4n3@kahuna>
From: Keerthy <j-keerthy@ti.com>
Message-ID: <39f5e726-8542-b650-3bdb-7542e8fab8ac@ti.com>
Date: Fri, 28 Jun 2019 09:08:37 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190627143208.eeca4xyygml7s4n3@kahuna>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_203809_512024_EAB1EF2B 
X-CRM114-Status: GOOD (  17.72  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: lokeshvutla@ti.com, catalin.marinas@arm.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 27/06/19 8:02 PM, Nishanth Menon wrote:
> On 16:39-20190627, Keerthy wrote:
>> Enable GPIO_DAVINCI and related configs for TI K3 AM6 platforms.
>>
>> Signed-off-by: Keerthy <j-keerthy@ti.com>
>> ---
>>
>> Changes in v2:
>>
>>    * Enabling configs in Kconfig.platforms file instead of defconfig.
>>    * Removed GPIO_DEBUG config.
>>
>>   arch/arm64/Kconfig.platforms | 2 ++
>>   1 file changed, 2 insertions(+)
>>
>> diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
>> index 4778c775de1b..6e43a0995ed4 100644
>> --- a/arch/arm64/Kconfig.platforms
>> +++ b/arch/arm64/Kconfig.platforms
>> @@ -97,6 +97,8 @@ config ARCH_K3
>>   	select TI_SCI_PROTOCOL
>>   	select TI_SCI_INTR_IRQCHIP
>>   	select TI_SCI_INTA_IRQCHIP
>> +	select GPIO_SYSFS
>> +	select GPIO_DAVINCI
> 
> 
> Could you help explain the logic of doing this? commit message is
> basically the diff in English. To me, this does NOT make sense.
> 
> I understand GPIO_DAVINCI is the driver compatible, but we cant do this for
> every single SoC driver that is NOT absolutely mandatory for basic
> functionality.

In case of ARM64 could you help me find the right place to enable
such SoC specific configs?

> 
> Also keep in mind the impact to arm64/configs/defconfig -> every single
> SoC in the arm64 world will be now rebuild with GPIO_SYSFS.. why force
> that?

This was the practice in arm32 soc specific configs like 
omap2plus_defconfig. GPIO_SYSFS was he only way to validate. Now i 
totally understand your concern about every single SoC rebuilding but 
now where do we need to enable the bare minimal GPIO_DAVINCI config?

v1 i received feedback from Tero to enable in Kconfig.platforms. Hence i 
shifted to this approach.

> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
