Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE38213675C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 07:23:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x0ZgFP8kSkQX90DEo494lipgqXC+xOgOoc9pbmdz330=; b=VYkmXj1zCKTXki
	bjaw2xhddllp7yZfh8b76aaClvIQvRJQ60ecZVRay/NcMig8veLdGXS/35t1sXGea9rkUQ7+JDERn
	HiUsPTRB/Pt9ktTRbwg7Kig2Neni15Z6IUEk83lsmlKDzmtnSxeS2Y2ZnY3Cvez7/RBH6biqADZ7C
	nAf0iVXIPxRXt3HSKMYhV4sOdGyRLV+7BHa8prEu0XI/hSCjdxuFwKSmAqiaq0YfHDaKh/1ky7bHV
	wmIrZAAWbih0c3cRJuVLvf7Ch5/1v90rRWeR6+sNn9LsH66F6acyrj6gsUccI5uzjRan9p/KGEt+N
	OpQ5mFOxntQCurm3cp4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipnhH-0002IJ-QK; Fri, 10 Jan 2020 06:23:03 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipnh9-0002H6-VU
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 06:22:58 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id C5869A7AE2945C902281;
 Fri, 10 Jan 2020 14:22:41 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.439.0; Fri, 10 Jan 2020
 14:22:33 +0800
Subject: Re: [PATCH v1] ACPI/IORT: Workaround for IORT ID count "minus one"
 issue
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Robin Murphy
 <robin.murphy@arm.com>
References: <1577708824-4873-1-git-send-email-guohanjun@huawei.com>
 <2ce224b2-d926-67b0-f9dd-85ac53d967c5@arm.com>
 <20200109160220.GA27079@e121166-lin.cambridge.arm.com>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <4cee4a91-6459-819b-d4d4-f5e8899103b9@huawei.com>
Date: Fri, 10 Jan 2020 14:22:22 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <20200109160220.GA27079@e121166-lin.cambridge.arm.com>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_222256_193240_6A358875 
X-CRM114-Status: GOOD (  27.18  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
 Pankaj Bansal <pankaj.bansal@nxp.com>, John Garry <john.garry@huawei.com>,
 linuxarm@huawei.com, linux-acpi@vger.kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/1/10 0:02, Lorenzo Pieralisi wrote:
> On Mon, Jan 06, 2020 at 05:19:32PM +0000, Robin Murphy wrote:
>> On 30/12/2019 12:27 pm, Hanjun Guo wrote:
>>> The IORT spec [0] says Number of IDs = The number of IDs in the range minus
>>> one, it is confusing but it was written down in the first version of the
> 
> Why is it confusing ? Because we botched the kernel code :) ?

I think 'minus one' is not bringing any benefit :)

> 
>>> IORT spec. But the IORT ID mapping function iort_id_map() did something
>>> wrong from the start, which bails out if:
>>>
>>> the request ID >= the input base + number of IDs
>>>
>>> This is wrong because it ignored the "minus one", and breaks some valid
>>> usecases such as ID mapping to contain single device mapping without
>>> single mapping flag set.
>>>
>>> Pankaj Bansal proposed a solution to fix the issue [1], which bails
>>> out if:
>>>
>>> the request ID > the input base + number of IDs
> 
> Add a Link: tag, when I read a commit log I want to have a reference
> to the patches relevant to the commit in question (which in turn
> will help understand what Pankaj suggested).
> 
>>> This works as the spec defined, unfortunately some firmware didn't
>>> minus one for the number of IDs in the range, and the propoased
>>> solution will break those systems in this way:
>>>
>>> PCI hostbridge mapping entry 1:
>>> Input base:  0x1000
>>> ID Count:    0x100
>>> Output base: 0x1000
>>> Output reference: 0xC4  //ITS reference
>>>
>>> PCI hostbridge mapping entry 2:
>>> Input base:  0x1100
>>> ID Count:    0x100
>>> Output base: 0x2000
>>> Output reference: 0xD4  //ITS reference
>>>
>>> Two mapping entries which the second entry's Input base = the first
>>> entry's Input base + ID count, so for requester ID 0x1100 will map
>>> to ITS 0xC4 not 0xD4 if we update '>=' to '>'.
>>>
>>> So introduce a workaround to match the IORT's OEM information for
>>> the broken firmware, also update the logic of the ID mapping for
>>> firmwares report the number of IDs as the IORT spec defined, to
>>> make the code compatible for both kinds of system.
>>>
>>> I checked the ACPI tables in the tianocore/edk2-platforms [2], only
>>> HiSilicon HIP07/08 did wrong, so just add HIP07/08 to the workaround
>>> info table, if we break other platforms, we can add that later.
>>>
>>> [0]: http://infocenter.arm.com/help/topic/com.arm.doc.den0049d/DEN0049D_IO_Remapping_Table.pdf
>>> [1]: https://patchwork.kernel.org/patch/11292823/
> 
> Add a Link: tag to a message-ID
> 
>>> [2]: https://github.com/tianocore/edk2-platforms
> 
> It is useless in a commit log - this is a moving target.
> 
> I can rewrite this commit log if you think it is faster.

That will be very helpful, please do so, thanks!

> 
>>>
>>> Cc: Pankaj Bansal <pankaj.bansal@nxp.com>
>>> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
>>> Signed-off-by: Hanjun Guo <guohanjun@huawei.com>
>>> ---
>>>
>>> RFC->v1:
>>> - Print warning when matched the workaround info, suggested by Pankaj.
>>>
>>>   drivers/acpi/arm64/iort.c | 55 ++++++++++++++++++++++++++++++++++++++++++++---
>>>   1 file changed, 52 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
>>> index 33f7198..60eb10d 100644
>>> --- a/drivers/acpi/arm64/iort.c
>>> +++ b/drivers/acpi/arm64/iort.c
>>> @@ -298,6 +298,42 @@ static acpi_status iort_match_node_callback(struct acpi_iort_node *node,
>>>   	return status;
>>>   }
>>> +struct iort_workaround_oem_info {
>>> +	char oem_id[ACPI_OEM_ID_SIZE + 1];
>>> +	char oem_table_id[ACPI_OEM_TABLE_ID_SIZE + 1];
>>> +	u32 oem_revision;
>>> +};
>>> +
>>> +static bool apply_id_count_workaround;
>>> +
>>> +static struct iort_workaround_oem_info wa_info[] __initdata = {
>>> +	{
>>> +		.oem_id		= "HISI  ",
>>> +		.oem_table_id	= "HIP07   ",
>>> +		.oem_revision	= 0,
>>> +	}, {
>>> +		.oem_id		= "HISI  ",
>>> +		.oem_table_id	= "HIP08   ",
>>> +		.oem_revision	= 0,
>>> +	}
>>> +};
>>> +
>>> +static void __init
>>> +iort_check_id_count_workaround(struct acpi_table_header *tbl)
>>> +{
>>> +	int i;
>>> +
>>> +	for (i = 0; i < ARRAY_SIZE(wa_info); i++) {
>>> +		if (!memcmp(wa_info[i].oem_id, tbl->oem_id, ACPI_OEM_ID_SIZE) &&
>>> +		    !memcmp(wa_info[i].oem_table_id, tbl->oem_table_id, ACPI_OEM_TABLE_ID_SIZE) &&
>>> +		    wa_info[i].oem_revision == tbl->oem_revision) {
>>> +			apply_id_count_workaround = true;
>>> +			pr_warn(FW_BUG "ID count for ID mapping entry is wrong, applying workaround\n");
>>> +			break;
>>> +		}
>>> +	}
>>> +}
>>> +
>>>   static int iort_id_map(struct acpi_iort_id_mapping *map, u8 type, u32 rid_in,
>>>   		       u32 *rid_out)
>>>   {
>>> @@ -314,9 +350,21 @@ static int iort_id_map(struct acpi_iort_id_mapping *map, u8 type, u32 rid_in,
>>>   		return -ENXIO;
>>>   	}
>>> -	if (rid_in < map->input_base ||
>>> -	    (rid_in >= map->input_base + map->id_count))
>>> -		return -ENXIO;
>>> +	/*
>>> +	 * IORT spec says Number of IDs = The number of IDs in the range minus
> 
> Section, page, table number please, "IORT spec says" is too vague.
> 
>>> +	 * one, but the IORT code ingored the "minus one", and some firmware
> 
> s/ingored/ignored/
> 
>>> +	 * did that too, so apply a workaround here to keep compatible with
>>> +	 * both new and old versions of the firmware.
> 
> It is not "new" vs "old" it is spec compliant vs non-spec compliant.

Agreed.

> 
>>> +	 */
>>> +	if (apply_id_count_workaround) {
>>> +		if (rid_in < map->input_base ||
>>> +			(rid_in >= map->input_base + map->id_count))
>>> +			return -ENXIO;
>>> +	} else {
>>> +		if (rid_in < map->input_base ||
>>> +			(rid_in > map->input_base + map->id_count))
>>> +			return -ENXIO;
>>> +	}
>>
>> This seems needlessly repetitive and convoluted... how about refactoring to
>> something like:
> 
> +1
> 
>>
>> 	map_max = map->input_base + map->id_count;
>> 	if (apply_id_count_workaround)
>> 		map_max--;
> 
> You can even turn it into an inline function (ie iort_get_map_max())
> with the comment above in it so that the quirk is isolated instead
> of having it in the middle of iort_id_map().

I vote for this one, it's self-contained.

> 
> I am fine either way. We need test coverage since I feel this may
> break a number of systems (ie I don't think it should be merged as
> a fix).

Will you resend this patch with commit log and the updated code? or
let me do that? Both are ok to me, let's get it tested for longer time
if we merge it ASAP.

Thanks
Hanjun


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
