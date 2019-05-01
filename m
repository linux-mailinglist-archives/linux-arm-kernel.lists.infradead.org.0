Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E7AC10B41
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 18:23:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aIo/twUvYjVXchwwhaV7jkhbAt2hzgzHddnTkgYfWqE=; b=tk1wXwlKBpQpUlSpjAF6Qx1yu
	oGwNHNxBE8L8JpC7ELdCU2wSr7d/KKlvBZF5779ty2JknLaYfhBsAuxLHTAk6oISWG8M//CkZpF2E
	fnAhWE17H+ZxbxpxVMCxQqZk4rrH9IVXqYUEFm+sUb4zIeAj0waHlEhHolggUKEqsscIUhCO8EkmA
	H2VUyz2t+YHovDT6nR57XypwL/M+l8Z3dzHy5GE/dzi/9b82sma2X42N0QiDMJwo5nQ4fBSryWHRf
	JvI5uHV6E/2uzHLMDk3kvNIIRE1AMCiojQ0Evf4wFh9ItFtBu/EjGLiOnVxaxNyjNeztS9OiS6XuO
	mHv06EzGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLs0r-0000Eb-6H; Wed, 01 May 2019 16:23:17 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLs0i-0000DD-Nc
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 16:23:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4F06DA78;
 Wed,  1 May 2019 09:23:08 -0700 (PDT)
Received: from [192.168.100.241] (usa-sjc-mx-foss1.foss.arm.com
 [217.140.101.70])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 816A03F719;
 Wed,  1 May 2019 09:23:07 -0700 (PDT)
Subject: Re: [PATCH v2 3/5] ACPI/PPTT: Modify node flag detection to find last
 IDENTICAL
To: "Rafael J. Wysocki" <rafael@kernel.org>
References: <20190426220309.55654-1-jeremy.linton@arm.com>
 <20190426220309.55654-4-jeremy.linton@arm.com>
 <CAJZ5v0huzpGwVTwp7rWU5bo4ziP3oRrjoW2cz+KU+A7XfiDwVA@mail.gmail.com>
From: Jeremy Linton <jeremy.linton@arm.com>
Message-ID: <8c627a8f-7322-fe2a-8aec-1e5a882d9366@arm.com>
Date: Wed, 1 May 2019 11:23:06 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <CAJZ5v0huzpGwVTwp7rWU5bo4ziP3oRrjoW2cz+KU+A7XfiDwVA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_092308_781006_61B8AC03 
X-CRM114-Status: GOOD (  33.34  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Will Deacon <will.deacon@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Linuxarm <linuxarm@huawei.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, John Garry <john.garry@huawei.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, Len Brown <lenb@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 4/29/19 3:59 AM, Rafael J. Wysocki wrote:
> On Sat, Apr 27, 2019 at 12:03 AM Jeremy Linton <jeremy.linton@arm.com> wrote:
>>
>> The ACPI specification implies that the IDENTICAL flag should be
>> set on all non leaf nodes where the children are identical.
>> This means that we need to be searching for the last node with
>> the identical flag set rather than the first one.
>>
>> To achieve this with the existing code we need to pass a
>> function through the tree traversal logic so we can check
>> the next node to assure that IDENTICAL isn't set before returning
>> a node with IDENTICAL set.
>>
>> Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
>> ---
>>   drivers/acpi/pptt.c | 62 +++++++++++++++++++++++++++++++++++----------
>>   1 file changed, 48 insertions(+), 14 deletions(-)
>>
>> diff --git a/drivers/acpi/pptt.c b/drivers/acpi/pptt.c
>> index 1865515297ca..39f660d8be0a 100644
>> --- a/drivers/acpi/pptt.c
>> +++ b/drivers/acpi/pptt.c
>> @@ -432,17 +432,51 @@ static void cache_setup_acpi_cpu(struct acpi_table_header *table,
>>          }
>>   }
>>
>> +
>> +typedef bool (*node_check)(struct acpi_table_header *table_hdr,
>> +                          struct acpi_pptt_processor *cpu);
> 
> I would just use a function pointer with the entire arg list in the
> function header(s).  Using this just makes things harder to follow
> IMO.

Ok... that makes the headers a bit big, maybe there is a better way.


> 
>> +static bool flag_package(struct acpi_table_header *table_hdr,
>> +                        struct acpi_pptt_processor *cpu)
>> +{
>> +       return cpu->flags & ACPI_PPTT_PHYSICAL_PACKAGE;
>> +}
>> +
>> +static bool flag_identical(struct acpi_table_header *table_hdr,
>> +                          struct acpi_pptt_processor *cpu)
>> +{
>> +       struct acpi_pptt_processor *next;
>> +
>> +       /* heterogeneous machines must use PPTT revision > 1 */
>> +       if (table_hdr->revision < 2)
>> +               return false;
>> +
>> +       /* Locate the last node in the tree with IDENTICAL set */
>> +       if (cpu->flags & ACPI_PPTT_ACPI_IDENTICAL) {
>> +               next = fetch_pptt_node(table_hdr, cpu->parent);
>> +               if (!(next && next->flags & ACPI_PPTT_ACPI_IDENTICAL))
>> +                       return true;
>> +       }
>> +
>> +       return false;
>> +}
>> +
>> +static bool flag_none(struct acpi_table_header *table_hdr,
>> +                     struct acpi_pptt_processor *cpu)
>> +{
>> +       return false;
>> +}
>> +
>>   /* Passing level values greater than this will result in search termination */
>>   #define PPTT_ABORT_PACKAGE 0xFF
>>
>> -static struct acpi_pptt_processor *acpi_find_processor_package_id(struct acpi_table_header *table_hdr,
>> -                                                                 struct acpi_pptt_processor *cpu,
>> -                                                                 int level, int flag)
>> +static struct acpi_pptt_processor *acpi_find_processor_tag_id(struct acpi_table_header *table_hdr,
>> +                                                             struct acpi_pptt_processor *cpu,
>> +                                                             int level, node_check chk)
>>   {
>>          struct acpi_pptt_processor *prev_node;
>>
>>          while (cpu && level) {
>> -               if (cpu->flags & flag)
>> +               if (chk(table_hdr, cpu))
>>                          break;
>>                  pr_debug("level %d\n", level);
>>                  prev_node = fetch_pptt_node(table_hdr, cpu->parent);
>> @@ -473,15 +507,15 @@ static void acpi_pptt_warn_missing(void)
>>    * Return: Unique value, or -ENOENT if unable to locate CPU
>>    */
>>   static int topology_get_acpi_cpu_tag(struct acpi_table_header *table,
>> -                                    unsigned int cpu, int level, int flag)
>> +                                    unsigned int cpu, int level, node_check chk)
>>   {
>>          struct acpi_pptt_processor *cpu_node;
>>          u32 acpi_cpu_id = get_acpi_id_for_cpu(cpu);
>>
>>          cpu_node = acpi_find_processor_node(table, acpi_cpu_id);
>>          if (cpu_node) {
>> -               cpu_node = acpi_find_processor_package_id(table, cpu_node,
>> -                                                         level, flag);
>> +               cpu_node = acpi_find_processor_tag_id(table, cpu_node,
>> +                                                         level, chk);
>>                  /*
>>                   * As per specification if the processor structure represents
>>                   * an actual processor, then ACPI processor ID must be valid.
>> @@ -498,7 +532,7 @@ static int topology_get_acpi_cpu_tag(struct acpi_table_header *table,
>>          return -ENOENT;
>>   }
>>
>> -static int find_acpi_cpu_topology_tag(unsigned int cpu, int level, int flag)
>> +static int find_acpi_cpu_topology_tag(unsigned int cpu, int level, node_check chk)
>>   {
>>          struct acpi_table_header *table;
>>          acpi_status status;
>> @@ -509,7 +543,7 @@ static int find_acpi_cpu_topology_tag(unsigned int cpu, int level, int flag)
>>                  acpi_pptt_warn_missing();
>>                  return -ENOENT;
>>          }
>> -       retval = topology_get_acpi_cpu_tag(table, cpu, level, flag);
>> +       retval = topology_get_acpi_cpu_tag(table, cpu, level, chk);
>>          pr_debug("Topology Setup ACPI CPU %d, level %d ret = %d\n",
>>                   cpu, level, retval);
>>          acpi_put_table(table);
>> @@ -601,7 +635,7 @@ int cache_setup_acpi(unsigned int cpu)
>>    */
>>   int find_acpi_cpu_topology(unsigned int cpu, int level)
>>   {
>> -       return find_acpi_cpu_topology_tag(cpu, level, 0);
>> +       return find_acpi_cpu_topology_tag(cpu, level, flag_none);
>>   }
>>
>>   /**
>> @@ -658,7 +692,7 @@ int find_acpi_cpu_cache_topology(unsigned int cpu, int level)
>>   int find_acpi_cpu_topology_package(unsigned int cpu)
>>   {
>>          return find_acpi_cpu_topology_tag(cpu, PPTT_ABORT_PACKAGE,
>> -                                         ACPI_PPTT_PHYSICAL_PACKAGE);
>> +                                         flag_package);
>>   }
>>
>>   /**
>> @@ -670,8 +704,8 @@ int find_acpi_cpu_topology_package(unsigned int cpu)
>>    *
>>    * The returned tag can be used to group peers with identical implementation.
>>    *
>> - * The search terminates when a level is found with the identical implementation
>> - * flag set or we reach a root node.
>> + * The search terminates when a level is found without the identical
>> + * implementation flag set following a node with it set, or we reach the root.
>>    *
>>    * Due to limitations in the PPTT data structure, there may be rare situations
>>    * where two cores in a heterogeneous machine may be identical, but won't have
>> @@ -684,5 +718,5 @@ int find_acpi_cpu_topology_package(unsigned int cpu)
>>   int find_acpi_cpu_topology_hetero_id(unsigned int cpu)
>>   {
>>          return find_acpi_cpu_topology_tag(cpu, PPTT_ABORT_PACKAGE,
>> -                                         ACPI_PPTT_ACPI_IDENTICAL);
>> +                                         flag_identical);
>>   }
>> --
> 
> I'm not a super big fan of passing function pointers in general.

Me either really, but it was fairly concise here. We could just switch 
on the flag and opencode the IDENTICAL special case in 
acpi_find_processor_tag_id(). I wouldn't expect there to be too many 
special case flags like this so that may be a better solution.

OTOH, I'm not even sure this patch is the right thing to do, it depends 
on how you read the intention of the spec. That is why I haven't merged 
it with 2/5 and AFAIK, the one machine that was setting the IDENTICAL 
flags everywhere had another problem which is forcing them to update the 
table, and they appear to have also corrected the table to only set it 
on the final identical node.

So, maybe I should drop this piece of the set and wait for someone to 
complain or the spec to be clarified?

> 
> I kind of see how this works for you, but why exactly the flag
> (ACPI_PPTT_ACPI_IDENTICAL in this case) is not sufficient to
> distinguish between the cases?
> 

I guess I'm not clear what your asking here, maybe just a clarification 
of why this patch is needed vs just 2/5? Under that assumption:

The spec reads "A value of 1 indicates that all children processors 
share an identical implementation revision". So AFAIK the intention was 
that it behaves like the Physical package flag, which has an additional 
clarification which reads "Each valid processor must belong to exactly 
one package". Minus that blurb, it seems a valid interpretation is that 
a homogeneous machine can have the IDENTICAL flag set on every non-leaf 
node. Since we are traversing the tree from the leaf to the root 
(because that is the way the tree is structured) we need to find the 
last node along the traversal with the IDENTICAL set in order to return 
the common node closest to the root. With just 2/5 we end up returning 
the node closest the leaf, which means processors which share a 
IDENTICAL node won't necessarily have duplicate tags (which is what we 
need).

If we can assume that there is only a single IDENTICAL flag along the 
path between any given leaf and the root, this patch would not be necessary.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
