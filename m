Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D3921C1231
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 14:31:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PLU7bBkwXZpO3t6FFan9DSr17lPtRO4a2TBS8aAPyRA=; b=koEi1Ii2ZGHG7t+dNTQXu4JE/
	BREiRwrDkOpRFuxmS4CJXs8AGiggCjvuVGvwvVIwPPVmbnUU9AYNqoSkmubAcy2CfVbA4z7xWkD/M
	zLSXtDEPE8KluVHClOKhuPusdZ/VhWNbwt8nUxSnlFZYXLRdmmynq4k72xPg9bCirHuIPmMbtPSoq
	U3ekPcAlEgtL/3d4oRHhwLu8lH01K0+2Of56kc57bwrm274N3XHZeE35ism2EqGgGEl6c7jsu8BKv
	LrILEolH5F0RyEKkLAA/iaA8H1V6a9aF3yU+CnT/TgFHYHjValfzzsZuLXTKuW7eD+hh0MPRSvHo9
	cx1BmKbtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUUpb-00072b-TE; Fri, 01 May 2020 12:31:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUUpU-00071x-FO
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 12:31:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D84D71FB;
 Fri,  1 May 2020 05:31:41 -0700 (PDT)
Received: from [10.57.39.240] (unknown [10.57.39.240])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 74A123F305;
 Fri,  1 May 2020 05:31:40 -0700 (PDT)
Subject: Re: [PATCH RFC 2/2] ACPI/IORT: work around num_ids ambiguity
To: Ard Biesheuvel <ardb@kernel.org>
References: <20200501095843.25401-1-ardb@kernel.org>
 <20200501095843.25401-3-ardb@kernel.org>
 <e3c7bdab-a2b0-d7c9-5c7b-eee680509338@arm.com>
 <CAMj1kXH0mcK3N94=uOuiL2_iy=eWhsnoXhvfiXv_kQ_j=F2a_Q@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <18e01ac7-974e-8308-c18c-67aa3fd7ad4e@arm.com>
Date: Fri, 1 May 2020 13:31:38 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAMj1kXH0mcK3N94=uOuiL2_iy=eWhsnoXhvfiXv_kQ_j=F2a_Q@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_053144_601504_78C62B74 
X-CRM114-Status: GOOD (  29.96  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Pankaj Bansal <pankaj.bansal@nxp.com>, Sudeep Holla <sudeep.holla@arm.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Hanjun Guo <guohanjun@huawei.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-01 12:41 pm, Ard Biesheuvel wrote:
> On Fri, 1 May 2020 at 12:55, Robin Murphy <robin.murphy@arm.com> wrote:
>>
>> On 2020-05-01 10:58 am, Ard Biesheuvel wrote:
>>> The ID mapping table structure of the IORT table describes the size of
>>> a range using a num_ids field carrying the number of IDs in the region
>>> minus one. This has been misinterpreted in the past in the parsing code,
>>> and firmware is known to have shipped where this results in an ambiguity,
>>> where regions that should be adjacent have an overlap of one value.
>>>
>>> So let's work around this by detecting this case specifically: when
>>> resolving an ID translation, allow one that matches right at the end of
>>> a multi-ID region to be superseded by a subsequent one.
>>>
>>> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
>>> ---
>>>    drivers/acpi/arm64/iort.c | 23 +++++++++++++++-----
>>>    1 file changed, 18 insertions(+), 5 deletions(-)
>>>
>>> diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
>>> index 98be18266a73..d826dd9dc4c5 100644
>>> --- a/drivers/acpi/arm64/iort.c
>>> +++ b/drivers/acpi/arm64/iort.c
>>> @@ -316,10 +316,19 @@ static int iort_id_map(struct acpi_iort_id_mapping *map, u8 type, u32 rid_in,
>>>        }
>>>
>>>        if (rid_in < map->input_base ||
>>> -         (rid_in >= map->input_base + map->id_count))
>>> +         (rid_in > map->input_base + map->id_count))
>>>                return -ENXIO;
>>>
>>>        *rid_out = map->output_base + (rid_in - map->input_base);
>>> +
>>> +     /*
>>> +      * Due to confusion regarding the meaning of the id_count field (which
>>> +      * carries the number of IDs *minus 1*), we may have to disregard this
>>> +      * match if it is at the end of the range, and overlaps with the start
>>> +      * of another one.
>>> +      */
>>> +     if (map->id_count > 0 && rid_in == map->input_base + map->id_count)
>>> +             return -EAGAIN;
>>>        return 0;
>>>    }
>>>
>>> @@ -404,7 +413,8 @@ static struct acpi_iort_node *iort_node_map_id(struct acpi_iort_node *node,
>>>        /* Parse the ID mapping tree to find specified node type */
>>>        while (node) {
>>>                struct acpi_iort_id_mapping *map;
>>> -             int i, index;
>>> +             int i, index, rc = 0;
>>> +             u32 out_ref = 0, map_id = id;
>>>
>>>                if (IORT_TYPE_MASK(node->type) & type_mask) {
>>>                        if (id_out)
>>> @@ -438,15 +448,18 @@ static struct acpi_iort_node *iort_node_map_id(struct acpi_iort_node *node,
>>>                        if (i == index)
>>>                                continue;
>>>
>>> -                     if (!iort_id_map(map, node->type, id, &id))
>>> +                     rc = iort_id_map(map, node->type, map_id, &id);
>>> +                     if (!rc)
>>>                                break;
>>
>> This needs a big FW_BUG splat in the case where it did find an overlap.
> 
> Sure, although we did help create the problem in the first place.
> 
>> Ideally we'd also enforce that the other half of must be the first entry
>> of another range, but perhaps we're into diminishing returns by that point.
>>
> 
> That would mean the regions overlap regardless of whether you
> interpret num_ids correctly or not, which means we'll be doing
> validation of general well-formedness of the table rather than
> providing a workaround for this particular issue.

The point was to limit any change in behaviour to the specific case that 
we need to work around. Otherwise a table that was entirely malformed 
rather than just off-by-one on the sizes might go from happening-to-work 
to not working, or vice versa; the diminishing return is in how much we 
care about that.

> I think the fact that we got it wrong initially justifies treating the
> off-by-one case specially, but beyond that, we should make it robust
> without being pedantic imo.

As the #1 search engine hit for "Linux is not a firmware validation 
suite", I can reassure you that we're on the same page in that regard ;)

>> If we silently fix things up, then people will continue to write broken
>> tables without even realising, new OSes will have to implement the same
>> mechanism because vendors will have little interest in changing things
>> that have worked "correctly" with Linux for years, and we've effectively
>> achieved a de-facto redefinition of the spec. Making our end of the
>> interface robust is obviously desirable, but there still needs to be
>> *some* incentive for the folks on the other end to get it right.
>>
> 
> Agreed. But at least we'll be able to detect it and flag it in the
> general case, rather than having a special case for D05/06 only
> (although I suppose splitting the output ranges like those platforms
> do is rather unusual)

Yup, in principle the fixed quirk list gives a nice reassuring sense of 
"we'll work around these early platforms and everyone from now on will 
get it right", but whether reality plays out that way is another matter 
entirely...

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
