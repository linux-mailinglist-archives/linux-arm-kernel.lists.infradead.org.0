Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4299F1B075A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 13:23:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hShm/9D/jh25TCn6eluhn3/oZC1x7PRgVxknyEH9I+Y=; b=PI0z6qFFZ5dcP7lkLNQLc/wKb
	IzXVTElqyGuVlyeDsrNV7qonfx4jkqAfOlMlh5+1Rm+gqHQ9fV/XY60e0W/1ZU+sdSCDqSTs8UsI/
	45Eurpf+EkLjqJpKoueLL3fOzDmbcj4dY0R5q/bYd7S2AkSyYuqKNjsDJqIFyL5mK+odNn5gCK3j6
	uswBbNBOiB0aMGacHh8d0fshj5XjLSUT8u08Y12f6d3FiCkOsis5hF/vtnXBZbHbBk8uaV2lqDer3
	S8mU+4yygUsXNx+xDsP360epBVtNHdtSHz5ktp53DXNUizmU4KAsvB3tZO8dRWujLx6SJLdx679LK
	K61X6/iNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQUWg-0007Vy-Op; Mon, 20 Apr 2020 11:23:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQUWP-0007TG-3T
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 11:23:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E465F1FB;
 Mon, 20 Apr 2020 04:23:25 -0700 (PDT)
Received: from [10.57.33.63] (unknown [10.57.33.63])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C0CE33F237;
 Mon, 20 Apr 2020 04:23:24 -0700 (PDT)
Subject: Re: [PATCH] acpi: arm64/iort: Ensure DMA mask does not exceed device
 limit
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Ard Biesheuvel <ardb@kernel.org>
References: <20200420081131.16822-1-ardb@kernel.org>
 <20200420093055.GA7393@e121166-lin.cambridge.arm.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <f71002a8-fc32-f271-1586-807fc6f50107@arm.com>
Date: Mon, 20 Apr 2020 12:23:23 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200420093055.GA7393@e121166-lin.cambridge.arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_042329_196572_44A226B0 
X-CRM114-Status: GOOD (  24.00  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-acpi@vger.kernel.org, guohanjun@huawei.com,
 linux-arm-kernel@lists.infradead.org, sudeep.holla@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-20 10:30 am, Lorenzo Pieralisi wrote:
> [+Robin]
> 
> On Mon, Apr 20, 2020 at 10:11:31AM +0200, Ard Biesheuvel wrote:
>> When calculating the DMA mask from the address limit provided by the
>> firmware, we add one to the ilog2() of the end address, and pass the
>> result to DMA_BIT_MASK().
>>
>> For an end address that is not a power-of-2 minus 1, this will result
>> in the mask to be wider than the limit, and cover memory that is not
>> addressable by the device. Instead, we should add 1 to 'end' before
>> taking the log, so that a limit of, say, 0x3fffffff gets translated
>> to a mask of 30, but any value below it gets translated to 29.
>>
>> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
>> ---
>>   drivers/acpi/arm64/iort.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> Need Robin's feedback on this - I was looking at:
> 
> a7ba70f1787f ("dma-mapping: treat dev->bus_dma_mask as a DMA limit")
> 
> I assume current code is *intended* but I shall let Robin comment
> on this.

The device masks represent what bits the device is capable of driving, 
so rounding up is the correct and intended behaviour - if the 
interconnect address map imposes a non-power-of-two limit, say 3.75GB, 
and the device can physically access all of that, then claiming the 
device can't drive bit 31 and trying to prevent it from accessing the 
upper 1.75GB is nonsense.

Although TBH none of this really matters much any more - as long as the 
limit is set correctly nothing bad will happen, and drivers are expected 
to replace these default masks anyway. In fact ancient drivers that 
still don't explicitly set their masks will be assuming the defaults are 
32-bit, so replacing them with something potentially wider actually 
invites a whole other set of problems. In the case of 
of_dma_configure(), it kept the code that combines (*not* replaces) the 
default device masks with a limit-based mask because it didn't do any 
harm, but equally it should now be entirely unnecessary, and confusion 
like this seems like an argument for finally removing it.

Robin.

> 
> Thanks,
> Lorenzo
> 
>> diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
>> index 7d04424189df..aab2f51eff14 100644
>> --- a/drivers/acpi/arm64/iort.c
>> +++ b/drivers/acpi/arm64/iort.c
>> @@ -1162,7 +1162,7 @@ void iort_dma_setup(struct device *dev, u64 *dma_addr, u64 *dma_size)
>>   		 * firmware.
>>   		 */
>>   		end = dmaaddr + size - 1;
>> -		mask = DMA_BIT_MASK(ilog2(end) + 1);
>> +		mask = DMA_BIT_MASK(ilog2(end + 1));
>>   		dev->bus_dma_limit = end;
>>   		dev->coherent_dma_mask = mask;
>>   		*dev->dma_mask = mask;
>> -- 
>> 2.17.1
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
