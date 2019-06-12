Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61BC8419D2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 03:06:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=O8X3gZqG+mAgQOnXWl/Vj9BAbi4Xoltvjen9CzXqCAg=; b=ExdvbaRjG/fVKv/KwX65zQhrT
	UoonfQmyRrCBTKafiptDRCwKleiPuDpTY2z6bvZyZHhpkDqI/ZvcOjmgydMqqbf+i4O1uroDYQSAr
	zrNK/gNoeXwBzw4YlSowQ8hhxvkw9bJjaNGs637eDag2FaOjheSlu+womEGiz7nvmJgXg3CjNNizc
	1Ev9bGLRFyXrrERGmknmrdHXMP13L0bHB2/qKfpN7ufAF9WHkQh+Ye5cmlksk144ttE5A/zH7aDty
	3ck9sAqir4KUjODLNltXAcjaLuqhH6K5CDTp6QwCMIim/GzpvWsjGHwcukyCQIB/JL0SfHMyCgGUs
	qFkcjJPuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1harij-00082A-1q; Wed, 12 Jun 2019 01:06:33 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haria-00081r-SU
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 01:06:26 +0000
Received: by mail-pf1-x441.google.com with SMTP id x15so8569046pfq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 18:06:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:organization:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding;
 bh=MogpfsEDMN5cINGy9NYc5BobLdtPxSxSh+1uml2YEE4=;
 b=GQnMsjM8WfvHCd2nvoofF6j3WHIWn4KeV6xHyiFVP08PELSGNOvdMir1AHt6KF7bPU
 OfixU6Qgkvtq+LGc8P9OQ0sI+w0blIDkImxCRdF+BrHOKiTpYCDB7fNol6ByR2hXOVl7
 wjJfHrG3NJDqAAgo/foug204XnRFrpeSSP+GtsmYAaS66WCP7c2672G7WhWlhy+2/Yrc
 FvoWZWIB0e5Ou/I6rHgZLNZoaADqHkRPp0LhjOSu6OhbqMZ5K6MAkVyAMCo+jF0Rbgze
 ttW3kS6aiC0RnY/xlOfU+rXrBYmEDXEHJtl9XTOoY9vu92MfNSMg3Z/UK9owvacfjJrP
 OjyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding;
 bh=MogpfsEDMN5cINGy9NYc5BobLdtPxSxSh+1uml2YEE4=;
 b=fs11IEA3nRV6rtAoSoq10qSNJg0CFMrth3GXrzD+5Rh3ZKIvb+77hmaQQ5OW6zLkOa
 sC3LE/SExgbGtRocLv5sn0Q3fvPAGrBdcMYTi+9L52B3l9vQbZ9xm2f+LDP1VBuER07d
 j0ECOE+8BIwEMhXJDg+MkrUEP5xTFci6mF6AcYpP8ANKJsTPUPN/A7br0y0if5jyN7SE
 7WCj/bk21VwUOz3CXhUWsmAXIg6BWiiP3xXbj+zgoPFbe14w4aTnDGLoGGM4co03UwmA
 ES9UexgW33dTDRgI2nmKCviu0pR8gbpYiUnZpIkb0VqvGU8Kdh2Fj7yv4oaJZnX7Gov2
 ndrA==
X-Gm-Message-State: APjAAAWWYJsdDsthnp/DqbwegouUZOV1RRavJIi3/7wOPy7r4m5H4a5c
 EEk+iyZZ3Ttj745TqxFmR4Q=
X-Google-Smtp-Source: APXvYqy096Fat/UGv0A1DkMZjMJLB5J0pXHMFFJm37+yz0PHphj/G+xIoifblGkB8F2xy+sSOEQjgw==
X-Received: by 2002:a17:90a:254e:: with SMTP id
 j72mr30658331pje.11.1560301583425; 
 Tue, 11 Jun 2019 18:06:23 -0700 (PDT)
Received: from [0.0.0.0] (104.129.187.94.16clouds.com. [104.129.187.94])
 by smtp.gmail.com with ESMTPSA id a18sm3530668pjq.0.2019.06.11.18.06.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 18:06:22 -0700 (PDT)
Subject: Re: [PATCH v11 0/3] remain and optimize memblock_next_valid_pfn on
 arm and arm64
To: Hanjun Guo <guohanjun@huawei.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
References: <1534907237-2982-1-git-send-email-jia.he@hxt-semitech.com>
 <CAKv+Gu9u8RcrzSHdgXiqHS9HK1aSrjbPxVUSCP0DT4erAhx0pw@mail.gmail.com>
 <20180907144447.GD12788@arm.com>
 <84b8e874-2a52-274c-4806-968470e66a08@huawei.com>
 <CAKv+Gu9fd2Y7USDYnQdUuYd9L2OD99kU4A1x1JSF442KN96TTA@mail.gmail.com>
 <2de74de9-35b0-5e62-d822-1be59f0ef605@huawei.com>
From: Jia He <hejianet@gmail.com>
Organization: ARM
Message-ID: <8fdf5545-21b7-354c-4c4b-e1e92048864f@gmail.com>
Date: Wed, 12 Jun 2019 09:05:59 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <2de74de9-35b0-5e62-d822-1be59f0ef605@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_180624_950379_DDBBA8E4 
X-CRM114-Status: GOOD (  33.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hejianet[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Michal Hocko <mhocko@suse.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Wei Yang <richard.weiyang@gmail.com>, Linux-MM <linux-mm@kvack.org>,
 James Morse <james.morse@arm.com>, Eugeniu Rosca <erosca@de.adit-jv.com>,
 Petr Tesarik <ptesarik@suse.com>, Nikolay Borisov <nborisov@suse.com>,
 Russell King <linux@armlinux.org.uk>,
 Daniel Jordan <daniel.m.jordan@oracle.com>,
 AKASHI Takahiro <takahiro.akashi@linaro.org>, Mel Gorman <mgorman@suse.de>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, Laura Abbott <labbott@redhat.com>,
 Daniel Vacek <neelx@redhat.com>, Vladimir Murzin <vladimir.murzin@arm.com>,
 Kees Cook <keescook@chromium.org>, Philip Derrin <philip@cog.systems>,
 YASUAKI ISHIMATSU <yasu.isimatu@gmail.com>, Jia He <jia.he@hxt-semitech.com>,
 Ard Biesheuvel <ard.biesheuvel@arm.com>, Kemi Wang <kemi.wang@intel.com>,
 Vlastimil Babka <vbabka@suse.cz>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Steve Capper <steve.capper@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Gioh Kim <gi-oh.kim@profitbricks.com>, Johannes Weiner <hannes@cmpxchg.org>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Hanjun

On 2019/6/11 23:18, Hanjun Guo wrote:
> Hello Ard,
>
> Thanks for the reply, please see my comments inline.
>
> On 2019/6/10 21:16, Ard Biesheuvel wrote:
>> On Sat, 8 Jun 2019 at 06:22, Hanjun Guo <guohanjun@huawei.com> wrote:
>>> Hi Ard, Will,
>>>
>>> This week we were trying to debug an issue of time consuming in mem_init(),
>>> and leading to this similar solution form Jia He, so I would like to bring this
>>> thread back, please see my detail test result below.
>>>
>>> On 2018/9/7 22:44, Will Deacon wrote:
>>>> On Thu, Sep 06, 2018 at 01:24:22PM +0200, Ard Biesheuvel wrote:
>>>>> On 22 August 2018 at 05:07, Jia He <hejianet@gmail.com> wrote:
>>>>>> Commit b92df1de5d28 ("mm: page_alloc: skip over regions of invalid pfns
>>>>>> where possible") optimized the loop in memmap_init_zone(). But it causes
>>>>>> possible panic bug. So Daniel Vacek reverted it later.
>>>>>>
>>>>>> But as suggested by Daniel Vacek, it is fine to using memblock to skip
>>>>>> gaps and finding next valid frame with CONFIG_HAVE_ARCH_PFN_VALID.
>>>>>>
>>>>>> More from what Daniel said:
>>>>>> "On arm and arm64, memblock is used by default. But generic version of
>>>>>> pfn_valid() is based on mem sections and memblock_next_valid_pfn() does
>>>>>> not always return the next valid one but skips more resulting in some
>>>>>> valid frames to be skipped (as if they were invalid). And that's why
>>>>>> kernel was eventually crashing on some !arm machines."
>>>>>>
>>>>>> About the performance consideration:
>>>>>> As said by James in b92df1de5,
>>>>>> "I have tested this patch on a virtual model of a Samurai CPU with a
>>>>>> sparse memory map.  The kernel boot time drops from 109 to 62 seconds."
>>>>>> Thus it would be better if we remain memblock_next_valid_pfn on arm/arm64.
>>>>>>
>>>>>> Besides we can remain memblock_next_valid_pfn, there is still some room
>>>>>> for improvement. After this set, I can see the time overhead of memmap_init
>>>>>> is reduced from 27956us to 13537us in my armv8a server(QDF2400 with 96G
>>>>>> memory, pagesize 64k). I believe arm server will benefit more if memory is
>>>>>> larger than TBs
>>>>>>
>>>>> OK so we can summarize the benefits of this series as follows:
>>>>> - boot time on a virtual model of a Samurai CPU drops from 109 to 62 seconds
>>>>> - boot time on a QDF2400 arm64 server with 96 GB of RAM drops by ~15
>>>>> *milliseconds*
>>>>>
>>>>> Google was not very helpful in figuring out what a Samurai CPU is and
>>>>> why we should care about the boot time of Linux running on a virtual
>>>>> model of it, and the 15 ms speedup is not that compelling either.
>>> Testing this patch set on top of Kunpeng 920 based ARM64 server, with
>>> 384G memory in total, we got the time consuming below
>>>
>>>               without this patch set      with this patch set
>>> mem_init()        13310ms                      1415ms
>>>
>>> So we got about 8x speedup on this machine, which is very impressive.
>>>
>> Yes, this is impressive. But does it matter in the grand scheme of
>> things?
> It matters for this machine, because it's for storage and there is
> a watchdog and the time consuming triggers the watchdog.
>
>> How much time does this system take to arrive at this point
>> from power on?
> Sorry, I don't have such data, as the arch timer is not initialized
> and I didn't see the time stamp at this point, but I read the cycles
> from arch timer before and after the time consuming function to get
> how much time consumed.
>
>>> The time consuming is related the memory DIMM size and where to locate those
>>> memory DIMMs in the slots. In above case, we are using 16G memory DIMM.
>>> We also tested 1T memory with 64G size for each memory DIMM on another ARM64
>>> machine, the time consuming reduced from 20s to 2s (I think it's related to
>>> firmware implementations).
>>>
>> I agree that this optimization looks good in isolation, but the fact
>> that you spotted a bug justifies my skepticism at the time. On the
>> other hand, now that we have several independent reports (from you,
>> but also from the Renesas folks) that the speedup is worthwhile for
>> real world use cases, I think it does make sense to revisit it.
> Thank you very much for taking care of this :)
>
>> So what I would like to see is the patch set being proposed again,
>> with the new data points added for documentation. Also, the commit
>> logs need to crystal clear about how the meaning of PFN validity
>> differs between ARM and other architectures, and why the assumptions
>> that the optimization is based on are guaranteed to hold.
> I think Jia He no longer works for HXT, if don't mind, I can repost
> this patch set with Jia He's authority unchanged.
Ok, I don't mind that, thanks for your followup :)

---
Cheers,
Justin (Jia He)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
