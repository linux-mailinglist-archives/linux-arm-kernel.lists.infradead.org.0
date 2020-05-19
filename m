Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E52F91D8D4D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 03:54:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rWf4kvWVKuBQOyAIy0daRwFkwhs28G1UAvvysJqfs2Y=; b=HE4qz1axlmDIHlGm7CBvCfsbG
	XpRmL9t1iViQkNWmuMqT1DNDg19f1LY27I+bgC+caLQo4TS9IcM8EXMBfkM660TLQWHLdBhQprlLJ
	1ZCLcb4v+MdMTVkzEAXMxRMJaMJNT6VDzl1a4aXHmTyBdftTMZVQlu7h16bA1xHlreo+kcl8Ffdx5
	M0YrFpCcCqanhz7nQRn1viZhW3HIiJgkbQeXO7067cl8jDIDFE28O7gIceglxDqN24BwY8nXxoUPv
	2XevFKW33aUSpuE3aAB3LKic5AOilrOEeTokJZgjIunkCU5lmfnyhnddEoTc22Pi7Em+ktsieoWlP
	ksmtfnJGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jarST-0001BD-Tb; Tue, 19 May 2020 01:54:17 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jarSL-00017Y-A1
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 01:54:10 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 009121D69D53C958D2B1;
 Tue, 19 May 2020 09:53:52 +0800 (CST)
Received: from [127.0.0.1] (10.166.213.93) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.487.0; Tue, 19 May 2020
 09:53:47 +0800
Subject: Re: [PATCH] firmware: arm_sdei: Put the SDEI table after using it
To: James Morse <james.morse@arm.com>
References: <1589021566-46373-1-git-send-email-guohanjun@huawei.com>
 <946c9fe8-b32c-2926-911c-886169d1f842@arm.com>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <00b8299d-a1a0-13b1-932f-95abd4eab42d@huawei.com>
Date: Tue, 19 May 2020 09:53:47 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <946c9fe8-b32c-2926-911c-886169d1f842@arm.com>
Content-Language: en-GB
X-Originating-IP: [10.166.213.93]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_185409_507920_9F852978 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/5/19 2:59, James Morse wrote:
> Hi Hanjun,
> 
> On 09/05/2020 11:52, Hanjun Guo wrote:
>> The acpi_get_table() should be coupled with acpi_put_table() if
>> the mapped table is not used for runtime after the initialization
>> to release the table mapping, put the SDEI table after using it.
> 
> I thought this didn't really matter once ACPI had switched to its global mapping of the
> tables...
> 
> 
>> diff --git a/drivers/firmware/arm_sdei.c b/drivers/firmware/arm_sdei.c
>> index 334c8be..5c42757 100644
>> --- a/drivers/firmware/arm_sdei.c
>> +++ b/drivers/firmware/arm_sdei.c
>> @@ -1113,6 +1113,7 @@ static bool __init sdei_present_acpi(void)
>>   	if (ACPI_FAILURE(status))
>>   		return false;
>>   
>> +	acpi_put_table(sdei_table_header);
>>   	pdev = platform_device_register_simple(sdei_driver.driver.name, 0, NULL,
>>   					       0);
>>   	if (IS_ERR(pdev))
>>
> 
> 
> This conflicts with Sudeep's patch that moved all this code. I'll rebase and repost it.

Thank you very much!

Regards,
Hanjun


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
