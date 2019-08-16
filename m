Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A538F943
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 04:54:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tDneVNcHkZHGIoiJ442WIdjp3CX9aTPWn6w2jesS+t8=; b=G8UYn+J4gyAY+g
	tF43l3Us488+8NOa9MZx6ilPjVHGNEtDy6ZWyuIqfm/fhn74A6MkEk+zE9yALgMNYWV3Jr9RQQCyU
	WDEAiHTWPftidRyX4L0qjYDMmnzugqw9VmAuTmdGzCO45jwnToTH9WCYOI6cdIvR06vb6QXye5Kpa
	y4LVwOz3RPYK2Ffke0DIQ6MpXQHS9qH8fR0kMNCHmPnoy3jYtdIM8GchvEQZTRHZSCUvAaC3AtwGF
	EKNYaJ+xk8U7pjSCQdcyblJdeVP41Zy7SnbJWne6uo0POug9/jV3YrHDbDvtEe5zk/elv8iUug5p6
	+Dp7JTYCLDcFPekvuGKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hySNq-0000iz-1R; Fri, 16 Aug 2019 02:54:30 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hySNb-0000hT-Nn
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 02:54:17 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 666EC81327D11A6D831C
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 16 Aug 2019 10:54:00 +0800 (CST)
Received: from [127.0.0.1] (10.63.139.185) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.439.0; Fri, 16 Aug 2019
 10:53:53 +0800
Subject: Re: [PATCH] arm64: defconfig: Enable CONFIG_ACPI_APEI_PCIEAER
To: Wei Xu <xuwei5@hisilicon.com>, <xuwei5@huawei.com>
References: <1564363944-208181-1-git-send-email-wangzhou1@hisilicon.com>
 <5D561543.3040505@hisilicon.com>
From: Zhou Wang <wangzhou1@hisilicon.com>
Message-ID: <5D561AC0.5000401@hisilicon.com>
Date: Fri, 16 Aug 2019 10:53:52 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <5D561543.3040505@hisilicon.com>
X-Originating-IP: [10.63.139.185]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_195415_949711_294296BB 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linuxarm@huawei.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019/8/16 10:30, Wei Xu wrote:
> Hi Zhou,
> 
> On 2019/7/29 9:32, Zhou Wang wrote:
>> HiSilicon D06 board needs this config to support PCIe AER error report.
>>
>> Signed-off-by: Zhou Wang <wangzhou1@hisilicon.com>
> 
> Thanks!
> Patch applied and the commit message changed as follows:
> 
>     Enable the ACPI_APEI_PCIEAER configuration to support PCIe AER error report
>     for the Hisilicon D06 board and the dependencies PCIEAER and ACPI_APEI have
>     been enabled in the default config.

Thanks and Best,
Zhou

> 
> Best Regards,
> Wei
> 
>> ---
>>   arch/arm64/configs/defconfig | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
>> index 74f0a19..8167d6f 100644
>> --- a/arch/arm64/configs/defconfig
>> +++ b/arch/arm64/configs/defconfig
>> @@ -119,6 +119,7 @@ CONFIG_IMX_SCU_PD=y
>>   CONFIG_ACPI=y
>>   CONFIG_ACPI_APEI=y
>>   CONFIG_ACPI_APEI_GHES=y
>> +CONFIG_ACPI_APEI_PCIEAER=y
>>   CONFIG_ACPI_APEI_MEMORY_FAILURE=y
>>   CONFIG_ACPI_APEI_EINJ=y
>>   CONFIG_VIRTUALIZATION=y
> 
> 
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
