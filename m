Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52E1738B59
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 15:16:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DsKl4Goxq2Cv99RAv+8GLhaam8sCDyqTqlHIVGXMAuU=; b=sE6MJ2H+y5A1IMxl7v9LQF7fU
	/CA1rfQgmRVEb9YO8qlsWJKhStTwK42956ypVhN+Obw/caE0ZjixAJ1irWXoLEMuRpQwRfmKnYP6M
	MNlJGIYybWZysJicwsRGCelhBpL1n+xSI9zies9aZ9/mP2JHwnEcIymHhNc987zlWRHvj/cKKORbA
	pKBwgrGF0r6hwuK3r5P85g5WYFV9ywped7Np9KBGR9tbyFRvm+V77hhMhzH+e+yX4kldxEg/MZZSm
	xU50VsbKAAyzrm/l2K6ansID3iSgT0crvGs8AcETao91dPvQ3PXP5NGS6Tt0D5ytFiHQp11LvggSM
	4B1kBPobA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZEiu-000681-PC; Fri, 07 Jun 2019 13:16:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hZEio-00067W-BL
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 13:15:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 51106346;
 Fri,  7 Jun 2019 06:15:51 -0700 (PDT)
Received: from [192.168.100.221] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C20FE3F96A;
 Fri,  7 Jun 2019 06:15:50 -0700 (PDT)
Subject: Re: [PATCH v3 3/5] ACPI/PPTT: Modify node flag detection to find last
 IDENTICAL
To: Sudeep Holla <sudeep.holla@arm.com>
References: <20190503232407.37195-1-jeremy.linton@arm.com>
 <20190503232407.37195-4-jeremy.linton@arm.com>
 <20190607095353.GC2429@e107155-lin>
From: Jeremy Linton <jeremy.linton@arm.com>
Message-ID: <1db40fa0-9834-5607-ec1c-794480e5c514@arm.com>
Date: Fri, 7 Jun 2019 08:15:50 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190607095353.GC2429@e107155-lin>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_061554_484646_EAF83136 
X-CRM114-Status: GOOD (  23.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, will.deacon@arm.com,
 john.garry@huawei.com, rjw@rjwysocki.net, linuxarm@huawei.com,
 linux-acpi@vger.kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, lenb@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Thanks for taking a look at this.

On 6/7/19 4:53 AM, Sudeep Holla wrote:
> On Fri, May 03, 2019 at 06:24:05PM -0500, Jeremy Linton wrote:
>> The ACPI specification implies that the IDENTICAL flag should be
>> set on all non leaf nodes where the children are identical.
>> This means that we need to be searching for the last node with
>> the identical flag set rather than the first one.
>>
>> Since this flag is also dependent on the table revision, we
>> need to add a bit of extra code to verify the table revision,
>> and the next node's state in the traversal. Since we want to
>> avoid function pointers here, lets just special case
>> the IDENTICAL flag.
>>
>> Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
>> ---
>>   drivers/acpi/pptt.c | 28 +++++++++++++++++++++++++---
>>   1 file changed, 25 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/acpi/pptt.c b/drivers/acpi/pptt.c
>> index 1865515297ca..456e1c0a35ae 100644
>> --- a/drivers/acpi/pptt.c
>> +++ b/drivers/acpi/pptt.c
>> @@ -432,17 +432,39 @@ static void cache_setup_acpi_cpu(struct acpi_table_header *table,
>>   	}
>>   }
>>   
>> +static bool flag_identical(struct acpi_table_header *table_hdr,
>> +			  struct acpi_pptt_processor *cpu)
> 
> Not sure if it's email client problem, but I see quite a few mis-alignment
> with parenthesis like above one.

It looks fine in the original editor/text patch, but yes in my email 
client I see it off by one (or two/three now that i'm replying). Its a 
mix of tabs/spaces and I've seen this happen before in my email client 
due to the leading "[>+]"?


> 
>> +{
>> +	struct acpi_pptt_processor *next;
>> +
>> +	/* heterogeneous machines must use PPTT revision > 1 */
>> +	if (table_hdr->revision < 2)
>> +		return false;
>> +
>> +	/* Locate the last node in the tree with IDENTICAL set */
>> +	if (cpu->flags & ACPI_PPTT_ACPI_IDENTICAL) {
>> +		next = fetch_pptt_node(table_hdr, cpu->parent);
>> +		if (!(next && next->flags & ACPI_PPTT_ACPI_IDENTICAL))
>> +			return true;
>> +	}
>> +
>> +	return false;
>> +}
>> +
>>   /* Passing level values greater than this will result in search termination */
>>   #define PPTT_ABORT_PACKAGE 0xFF
>>   
>> -static struct acpi_pptt_processor *acpi_find_processor_package_id(struct acpi_table_header *table_hdr,
>> +static struct acpi_pptt_processor *acpi_find_processor_tag_id(struct acpi_table_header *table_hdr,
>>   								  struct acpi_pptt_processor *cpu,
>>   								  int level, int flag)
>>   {
>>   	struct acpi_pptt_processor *prev_node;
>>   
>>   	while (cpu && level) {
>> -		if (cpu->flags & flag)
>> +		if (flag == ACPI_PPTT_ACPI_IDENTICAL) {
> 
> flag_identical anyways check the flag, so I assume you can drop the above
> check.

? I think that would be a bug because then we would always be returning 
the value of the IDENTICAL flag rather than the other flags passed into 
this routine. This is the special case I think Raphael was asking for 
rather than the function pointer/callback interface.

> 
>> +			if (flag_identical(table_hdr, cpu))
>> +				break;
>> +		} else if (cpu->flags & flag)
>>   			break;
>>   		pr_debug("level %d\n", level);
>>   		prev_node = fetch_pptt_node(table_hdr, cpu->parent);
>> @@ -480,7 +502,7 @@ static int topology_get_acpi_cpu_tag(struct acpi_table_header *table,
>>   
>>   	cpu_node = acpi_find_processor_node(table, acpi_cpu_id);
>>   	if (cpu_node) {
>> -		cpu_node = acpi_find_processor_package_id(table, cpu_node,
>> +		cpu_node = acpi_find_processor_tag_id(table, cpu_node,
>>   							  level, flag);
> 
> 
> Again misaligned, may be that's because of renaming.
> 
> --
> Regards,
> Sudeep
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
