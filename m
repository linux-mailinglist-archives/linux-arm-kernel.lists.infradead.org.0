Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E9D12F6A9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 11:17:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nFfteRqvqScCOjwmteqVansk4Uy1Kjnw8uyWJYOgEg4=; b=R8cfb7gECVAZWm
	IfDw0eTmTJ6bZze+aweuA1RHW9jkEIBvLM0VkfFyqojqygn5oFq5No2kJMwVVkCFuG+LecwbEgXCD
	gSv0pL48niFjMZfMfXTTUnYmaF6AZD85V1QhhtehvOvPYjQQbUsdqCrxV4NhbqRM+aDEa6N9XghoG
	PD8iNgR+xEeKG4G7R/cNqpvRCPY8OKBX857AoLSP+qAEyadsBC3sx6q3IYXrI0+A8BjLiMMC9dW/C
	zuHO1sSaZ6On7Ha7+q2CnwOGVxNgTo8YJhez5TVcNnVGqtbWkCZKJsPvsAi9WOcMsjK0Zaw6K5q2k
	f7VzHOk4cCQHHztCceOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inK1E-0002bb-Cl; Fri, 03 Jan 2020 10:17:24 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inK16-0002ap-T1
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 10:17:19 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 72A20D0FA716A3920038;
 Fri,  3 Jan 2020 18:17:03 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0; Fri, 3 Jan 2020
 18:16:57 +0800
Subject: Re: [RFC PATCH 2/2] ACPI/IORT: Workaround for IORT ID count "minus
 one" issue
To: Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 "Lorenzo Pieralisi" <lorenzo.pieralisi@arm.com>, Sudeep Holla
 <sudeep.holla@arm.com>, "Rafael J. Wysocki" <rafael@kernel.org>, Pankaj
 Bansal <pankaj.bansal@nxp.com>, Erik Schmauss <erik.schmauss@intel.com>
References: <1577092997-9852-1-git-send-email-guohanjun@huawei.com>
 <1577092997-9852-2-git-send-email-guohanjun@huawei.com>
 <ea7d6a0d1b804982909ffa43b48ccee2@huawei.com>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <999f5557-f6f9-828e-4d6b-c7865d00e43e@huawei.com>
Date: Fri, 3 Jan 2020 18:14:42 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <ea7d6a0d1b804982909ffa43b48ccee2@huawei.com>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_021717_112858_A75C9F92 
X-CRM114-Status: GOOD (  18.08  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 Linuxarm <linuxarm@huawei.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/1/2 18:20, Shameerali Kolothum Thodi wrote:
> Hi Hanjun,
> 
>> -----Original Message-----
>> From: Linuxarm [mailto:linuxarm-bounces@huawei.com] On Behalf Of Hanjun
>> Guo
>> Sent: 23 December 2019 09:23
>> To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>; Sudeep Holla
>> <sudeep.holla@arm.com>; Rafael J. Wysocki <rafael@kernel.org>; Pankaj
>> Bansal <pankaj.bansal@nxp.com>; Erik Schmauss <erik.schmauss@intel.com>
>> Cc: linux-acpi@vger.kernel.org; Linuxarm <linuxarm@huawei.com>;
>> linux-arm-kernel@lists.infradead.org
>> Subject: [RFC PATCH 2/2] ACPI/IORT: Workaround for IORT ID count "minus
>> one" issue
>>
>> The IORT spec [0] says Number of IDs = The number of IDs in the range minus
>> one, it is confusing but it was written down in the first version of the
>> IORT spec. But the IORT ID mapping function iort_id_map() did something
>> wrong from the start, which bails out if:
>>
>> the request ID >= the input base + number of IDs
>>
>> This is wrong because it ignored the "minus one", and breaks some valid
>> usecases such as ID mapping to contain single device mapping without
>> single mapping flag set.
>>
>> Pankaj Bansal proposed a solution to fix the issue [1], which bails
>> out if:
>>
>> the request ID > the input base + number of IDs
>>
>> This works as the spec defined, unfortunately some firmware didn't
>> minus one for the number of IDs in the range, and the propoased
>> solution will break those systems in this way:
>>
>> PCI hostbridge mapping entry 1:
>> Input base:  0x1000
>> ID Count:    0x100
>> Output base: 0x1000
>> Output reference: 0xC4  //ITS reference
>>
>> PCI hostbridge mapping entry 2:
>> Input base:  0x1100
>> ID Count:    0x100
>> Output base: 0x2000
>> Output reference: 0xD4  //ITS reference
>>
>> Two mapping entries which the second entry's Input base = the first
>> entry's Input base + ID count, so for requester ID 0x1100 will map
>> to ITS 0xC4 not 0xD4 if we update '>=' to '>'.
>>
>> So introduce a workaround to match the IORT's OEM information for
>> the broken firmware, also update the logic of the ID mapping for
>> firmwares report the number of IDs as the IORT spec defined, to
>> make the code compatible for both kinds of system.
>>
>> I checked the ACPI tables in the tianocore/edk2-platforms [2], only
>> HiSilicon HIP07/08 did wrong, so just add HIP07/08 to the workaround
>> info table, if we break other platforms, we can add that later.
>>
>> [0]:
>> http://infocenter.arm.com/help/topic/com.arm.doc.den0049d/DEN0049D_IO_
>> Remapping_Table.pdf
>> [1]: https://patchwork.kernel.org/patch/11292823/
>> [2]: https://github.com/tianocore/edk2-platforms
>>
>> Cc: Pankaj Bansal <pankaj.bansal@nxp.com>
>> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
>> Signed-off-by: Hanjun Guo <guohanjun@huawei.com>
>> ---
>>  drivers/acpi/arm64/iort.c | 54
>> ++++++++++++++++++++++++++++++++++++++++++++---
>>  1 file changed, 51 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
>> index 33f7198..112b1b0 100644
>> --- a/drivers/acpi/arm64/iort.c
>> +++ b/drivers/acpi/arm64/iort.c
>> @@ -298,6 +298,41 @@ static acpi_status iort_match_node_callback(struct
>> acpi_iort_node *node,
>>  	return status;
>>  }
>>
>> +struct iort_workaround_oem_info {
>> +	char oem_id[ACPI_OEM_ID_SIZE + 1];
>> +	char oem_table_id[ACPI_OEM_TABLE_ID_SIZE + 1];
>> +	u32 oem_revision;
>> +};
>> +
>> +static bool apply_id_count_workaround;
>> +
>> +static struct iort_workaround_oem_info wa_info[] __initdata = {
>> +	{
>> +		.oem_id		= "HISI  ",
>> +		.oem_table_id	= "HIP07   ",
>> +		.oem_revision	= 0,
>> +	}, {
>> +		.oem_id		= "HISI  ",
>> +		.oem_table_id	= "HIP08   ",
>> +		.oem_revision	= 0,
>> +	}
>> +};
>> +
>> +static void __init
>> +iort_check_id_count_workaround(struct acpi_table_header *tbl)
>> +{
>> +	int i;
>> +
>> +	for (i = 0; i < ARRAY_SIZE(wa_info); i++) {
>> +		if (!memcmp(wa_info[i].oem_id, tbl->oem_id, ACPI_OEM_ID_SIZE)
>> &&
>> +		    !memcmp(wa_info[i].oem_table_id, tbl->oem_table_id,
>> ACPI_OEM_TABLE_ID_SIZE) &&
>> +		    wa_info[i].oem_revision == tbl->oem_revision) {
>> +			apply_id_count_workaround = true;
>> +			break;
>> +		}
>> +	}
>> +}
>> +
> 
> Can we get rid of the above and instead use acpi_match_platform_list() ? Please 
> take a look at the pmcg_plat_info used for the HIP08 SMMUv3 PMCG erratum.

Thanks for the reminding, I noticed acpi_match_platform_list() before but I
thought it was a little overkill (get the table header for each OEM info),
I will take a look further to see if I can consolidate the OEM information retrieve.

Thanks
Hanjun


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
