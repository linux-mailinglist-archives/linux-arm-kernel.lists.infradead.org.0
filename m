Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFBD038676
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 10:41:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=an3j8AZhP9zWnIIZupz01CjdHLeBMyp1nE05rO+FaU8=; b=sr9hoiHDDJFheXevLNRwpkvtM
	LjODnw8ToeaCJQlP1uARxE2eGsokgSq9kwcxJAgGI2dOCxjE/FEzXwcWG9OmZDqJMbGUskYH3Odrr
	w19nDk2URmK6Hdgw6uoYElHUqGyvqMdDcIeG0TMg7AB5/q+3Oxc8fGJx9BK8javJvZs0aLNqbfVve
	WV8oydrczRB4A45dq2cAQ+TZtt0jh50sX+Fgb5Cx/yRiGe9wU1wYflWp+Tra1kHnKPlpeoq8d1cFj
	SebdkEOX7ail3c9cvaVlgMdIkboJ7jeTOz080KEQ/OCq8Q9nnEkx8lFR9s8axmqiIB9AKAv45shvF
	FDQ0WiwNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZAQu-0006Bq-W9; Fri, 07 Jun 2019 08:41:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hZAQd-0006BR-U2
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 08:40:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3228D344;
 Fri,  7 Jun 2019 01:40:51 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5A3CB3F246;
 Fri,  7 Jun 2019 01:40:50 -0700 (PDT)
Subject: Re: [PATCH] Documentation: coresight: Update the generic device names
To: leo.yan@linaro.org
References: <1559229077-26436-1-git-send-email-suzuki.poulose@arm.com>
 <20190603190133.GA20462@xps15> <99055755-6525-694e-a15d-5de7318a80da@arm.com>
 <20190607022136.GE5970@leoy-ThinkPad-X240s>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <78c98c28-4f3f-825b-18e1-c71fb63a80eb@arm.com>
Date: Fri, 7 Jun 2019 09:40:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190607022136.GE5970@leoy-ThinkPad-X240s>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_014052_017423_7A121FDF 
X-CRM114-Status: GOOD (  15.34  )
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
Cc: coresight@lists.linaro.org, corbet@lwn.net,
 linux-arm-kernel@lists.infradead.org, mathieu.poirier@linaro.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Leo,

>>>>    A Coresight PMU works the same way as any other PMU, i.e the name of the PMU is
>>>>    listed along with configuration options within forward slashes '/'.  Since a
>>>>    Coresight system will typically have more than one sink, the name of the sink to
>>>> -work with needs to be specified as an event option.  Names for sink to choose
>>>> -from are listed in sysFS under ($SYSFS)/bus/coresight/devices:
>>>> +work with needs to be specified as an event option.
>>>> +On newer kernels the available sinks are listed in sysFS under:
>>>> +($SYSFS)/bus/event_source/devices/cs_etm/sinks/
>>>> -	root@linaro-nano:~# ls /sys/bus/coresight/devices/
>>>> -		20010000.etf   20040000.funnel  20100000.stm  22040000.etm
>>>> -		22140000.etm  230c0000.funnel  23240000.etm 20030000.tpiu
>>>> -		20070000.etr     20120000.replicator  220c0000.funnel
>>>> -		23040000.etm  23140000.etm     23340000.etm
>>>> +	root@localhost:/sys/bus/event_source/devices/cs_etm/sinks# ls
>>>> +	tmc_etf0  tmc_etr0  tpiu0
>>>> -	root@linaro-nano:~# perf record -e cs_etm/@20070000.etr/u --per-thread program
>>>> +On older kernels, this may need to be found from the list of coresight devices,
>>>> +available under ($SYSFS)/bus/coresight/devices/:
>>>> +
>>>> +	root@localhost:/sys/bus/coresight/devices# ls
>>>> +	etm0  etm1  etm2  etm3  etm4  etm5  funnel0  funnel1  funnel2  replicator0  stm0 tmc_etf0  tmc_etr0  tpiu0
>>>> +
>>>> +	root@linaro-nano:~# perf record -e cs_etm/@tmc_etr0/u --per-thread program
>>>
>>> On the "older" kernels you are referring to one would find the original naming
>>> convention.  Everything else looks good to me.
>>
>> True, but do we care what we see there ? All we care about is the location,
>> where to find them. I could fix it, if you think thats needed.
> 
> IIUC, either the old kernel or newer kernel, both we can find the event
> from ($SYSFS)/bus/event_source/devices/cs_etm/sinks/; the only
> difference between them is the naming convention.

The cs_etm/sinks was only added with the CPU-wide trace support. So, if someone
refers to this document alone and then tries to do something on on older kernel,
which is quite possible for a production device running a stable kernel, {s,}he
might be surprised.

> 
> So the doc can use the same location to find event for both new and
> old kernel, and explain the naming convention difference?

My question is really, does the naming convention matter ? What you see
under the directory is the name. But yes, I am open to add a section to
explain the fact that we changed the naming scheme, if everyone agrees
to it.

Cheers
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
