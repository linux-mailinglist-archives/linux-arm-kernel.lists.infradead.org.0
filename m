Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91804366C5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 23:23:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EbAq5hjpyU525I0vXZJKZ7jeiSs+36dZwj3Zzq83ddY=; b=KTahwRavYG1yav
	6VN+y7HmFcUNJ6DbERYHlErmDfrarn/YZXJOMiLdZ6GhdiqaCFPw8wCWJ1ADDvOsRRR336NiJzOtU
	2ZPZK16M9Emc7/4utzlDN9QEM68qfskPKikuKUKB5p46VHar0gLkAKkmFOXGgAlQtm0ep2VL7attL
	jx39P+qqFKA7DdGlvAPdSLB3zX/A9H488p2UQtU5PbOGYmP9+ZDaJVtGWfT4wpn+reDq0zzRJCEag
	T41GG1rf3k0haBKzHb2Z6MFz90SVFmlyFtwX+L2T9kgk95K11K/adZDMtUZICA6aRLZmMb+105ifr
	Xcb257+VH1QUDeJjFnjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYdN4-0000fE-Rm; Wed, 05 Jun 2019 21:22:58 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYdMx-0000ev-QI
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 21:22:53 +0000
Received: by mail-ed1-x541.google.com with SMTP id c26so38769edt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 14:22:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=XYR0qJWfd1D1ufm9G1S7XwxRI+/pUaRAjNUa1IxBLC8=;
 b=eLDsRwOhaZ0avYP5JbU/qyfKGB5DOL//jHeF0QIsj1xnkLpW3HfER5+1gHsFmyizdC
 TuPwJNXIJpeJwU2upcFzFr2gEM64wh1+94uumBqpRcHFkWQutwdt26Yv9sREHRvruvlk
 znKdHE2O7dSxq57NCvmgeA8foqkPAvf6tdKk+a+LkY6ICiZeCziK45J+jM2lAsYvL8tU
 +Q8RJK0GedIjFeQ+8FmqES5ccIjWGHSdcUNJ5Cq529NwrtvIRUY0YNg79G4IDKPEHmSd
 H8/CXuU0qTWRFEgsEUaYHo7abpCchUSLqryQVVOJdl4FKhHRIozaUGG29SyMvtoYQjn2
 iqLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=XYR0qJWfd1D1ufm9G1S7XwxRI+/pUaRAjNUa1IxBLC8=;
 b=jDq5M5vGGRWMT5fNNJ0VKWDLMBM2VhCISEkHH84UZ+lNxg8LpjjRLAEatsmpH1sPsc
 5HnDCV3xqr8/NclHfoF1Wi42+0+Dotct36yVGrcX+IX30iXOfecf5u106Xw2fliznyk1
 WGLK/ZxBr5ehFoG3Xt6gCzd1rK7nq7enYXegcwp40c2cHTkFl2mTAGlQX/hsrrBLC2oI
 0kINjxeP+EtqNnRXhGOCJ/ISWMsYoI5U2dhfM0OFDH8c71isowggUdFJ3e0+5pB84Jd+
 j1rCIS5jhXWLX1vmU9f9qdV3CRZDgvZXU3BvPvbfWnbYKkZFYNPqtpsGeAz95ZJo/t2G
 wxsw==
X-Gm-Message-State: APjAAAWYN1GEv2O8iRwVXsycHSYJAnMe0/DczqfyTCKcVXhArmUulS2a
 OntiTaANwwVPHuCyEuYZoY0=
X-Google-Smtp-Source: APXvYqzyKS0phZCywdwPXToHaq30FkGf9zmLn9+DGARhqy7Cp0rjLbRZrzlUzgkPZspLLdcqpnQe5Q==
X-Received: by 2002:a50:927d:: with SMTP id j58mr11330969eda.230.1559769770516; 
 Wed, 05 Jun 2019 14:22:50 -0700 (PDT)
Received: from localhost ([185.92.221.13])
 by smtp.gmail.com with ESMTPSA id c7sm3853751ejz.71.2019.06.05.14.22.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 05 Jun 2019 14:22:49 -0700 (PDT)
Date: Wed, 5 Jun 2019 21:22:49 +0000
From: Wei Yang <richard.weiyang@gmail.com>
To: David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH v3 07/11] mm/memory_hotplug: Create memory block devices
 after arch_add_memory()
Message-ID: <20190605212249.s7knac6vimealdmx@master>
References: <20190527111152.16324-1-david@redhat.com>
 <20190527111152.16324-8-david@redhat.com>
 <20190604214234.ltwtkcdoju2gxisx@master>
 <f6523d67-cac9-1189-884a-67b6829320ba@redhat.com>
 <9a1d282f-8dd9-a48b-cc96-f9afaa435c62@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9a1d282f-8dd9-a48b-cc96-f9afaa435c62@redhat.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_142251_863384_30213181 
X-CRM114-Status: GOOD (  18.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weiyang[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Reply-To: Wei Yang <richard.weiyang@gmail.com>
Cc: Michal Hocko <mhocko@suse.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Wei Yang <richard.weiyang@gmail.com>,
 linux-mm@kvack.org, Arun KS <arunks@codeaurora.org>,
 Ingo Molnar <mingo@kernel.org>, linux-s390@vger.kernel.org,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Pavel Tatashin <pasha.tatashin@soleen.com>,
 "mike.travis@hpe.com" <mike.travis@hpe.com>, Qian Cai <cai@lca.pw>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 Oscar Salvador <osalvador@suse.de>, Andrew Banman <andrew.banman@hpe.com>,
 Mathieu Malaterre <malat@debian.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Igor Mammedov <imammedo@redhat.com>, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 05, 2019 at 12:58:46PM +0200, David Hildenbrand wrote:
>On 05.06.19 10:58, David Hildenbrand wrote:
>>>> /*
>>>>  * For now, we have a linear search to go find the appropriate
>>>>  * memory_block corresponding to a particular phys_index. If
>>>> @@ -658,6 +670,11 @@ static int init_memory_block(struct memory_block **memory, int block_id,
>>>> 	unsigned long start_pfn;
>>>> 	int ret = 0;
>>>>
>>>> +	mem = find_memory_block_by_id(block_id, NULL);
>>>> +	if (mem) {
>>>> +		put_device(&mem->dev);
>>>> +		return -EEXIST;
>>>> +	}
>>>
>>> find_memory_block_by_id() is not that close to the main idea in this patch.
>>> Would it be better to split this part?
>> 
>> I played with that but didn't like the temporary results (e.g. having to
>> export find_memory_block_by_id()). I'll stick to this for now.
>> 
>>>
>>>> 	mem = kzalloc(sizeof(*mem), GFP_KERNEL);
>>>> 	if (!mem)
>>>> 		return -ENOMEM;
>>>> @@ -699,44 +716,53 @@ static int add_memory_block(int base_section_nr)
>>>> 	return 0;
>>>> }
>>>>
>>>> +static void unregister_memory(struct memory_block *memory)
>>>> +{
>>>> +	if (WARN_ON_ONCE(memory->dev.bus != &memory_subsys))
>>>> +		return;
>>>> +
>>>> +	/* drop the ref. we got via find_memory_block() */
>>>> +	put_device(&memory->dev);
>>>> +	device_unregister(&memory->dev);
>>>> +}
>>>> +
>>>> /*
>>>> - * need an interface for the VM to add new memory regions,
>>>> - * but without onlining it.
>>>> + * Create memory block devices for the given memory area. Start and size
>>>> + * have to be aligned to memory block granularity. Memory block devices
>>>> + * will be initialized as offline.
>>>>  */
>>>> -int hotplug_memory_register(int nid, struct mem_section *section)
>>>> +int create_memory_block_devices(unsigned long start, unsigned long size)
>>>> {
>>>> -	int block_id = base_memory_block_id(__section_nr(section));
>>>> -	int ret = 0;
>>>> +	const int start_block_id = pfn_to_block_id(PFN_DOWN(start));
>>>> +	int end_block_id = pfn_to_block_id(PFN_DOWN(start + size));
>>>> 	struct memory_block *mem;
>>>> +	unsigned long block_id;
>>>> +	int ret = 0;
>>>>
>>>> -	mutex_lock(&mem_sysfs_mutex);
>>>> +	if (WARN_ON_ONCE(!IS_ALIGNED(start, memory_block_size_bytes()) ||
>>>> +			 !IS_ALIGNED(size, memory_block_size_bytes())))
>>>> +		return -EINVAL;
>>>>
>>>> -	mem = find_memory_block(section);
>>>> -	if (mem) {
>>>> -		mem->section_count++;
>>>> -		put_device(&mem->dev);
>>>> -	} else {
>>>> +	mutex_lock(&mem_sysfs_mutex);
>>>> +	for (block_id = start_block_id; block_id != end_block_id; block_id++) {
>>>> 		ret = init_memory_block(&mem, block_id, MEM_OFFLINE);
>>>> 		if (ret)
>>>> -			goto out;
>>>> -		mem->section_count++;
>>>> +			break;
>>>> +		mem->section_count = sections_per_block;
>>>> +	}
>>>> +	if (ret) {
>>>> +		end_block_id = block_id;
>>>> +		for (block_id = start_block_id; block_id != end_block_id;
>>>> +		     block_id++) {
>>>> +			mem = find_memory_block_by_id(block_id, NULL);
>>>> +			mem->section_count = 0;
>>>> +			unregister_memory(mem);
>>>> +		}
>>>> 	}
>>>
>>> Would it be better to do this in reverse order?
>>>
>>> And unregister_memory() would free mem, so it is still necessary to set
>>> section_count to 0?
>> 
>> 1. I kept the existing behavior (setting it to 0) for now. I am planning
>> to eventually remove the section count completely (it could be
>> beneficial to detect removing of partially populated memory blocks).
>
>Correction: We already use it to block offlining of partially populated
>memory blocks \o/

Would you mind letting me know where we leverage this?

>
>> 
>> 2. Reverse order: We would have to start with "block_id - 1", I don't
>> like that better.
>> 
>> Thanks for having a look!
>> 
>
>
>-- 
>
>Thanks,
>
>David / dhildenb

-- 
Wei Yang
Help you, Help me

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
