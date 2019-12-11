Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D71311A170
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 03:37:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=H9u824gMkEgnxgi850oDa+R9rcc7VacRfglh4cIAkr4=; b=IWIrzqsDzR0/XAe/jQPfH+SqV
	ff/DahE2P4CtDHlLu3s4gv8RnMu0+Y7AowTOI4anZOdwF0b3PWhXyrWLFtaRrejugftP4ihxtEMJl
	7rAnoopO8TDfWGTlw1k+y4lxYCK1BbYtOcM/Vv45Val5ax4EhLns2a6QHvq5QEu00Jz9RcfCcJt8+
	TY3CQ1t9jxRx7BIFjT8AdEOsSZ7ZYnDU7oA4+oVVaqsdvBnZVsrTgDZajiXmPyljJqDMN5HVrAwDD
	/70EOnT5ORt6Y09qBD/OiBQwJ43sG0/vqiUYFY19x4x9DZIXgbpc1WMe1c6yOg06a/JEJCJBMOyHU
	s3khuvmLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iersC-00078a-UK; Wed, 11 Dec 2019 02:37:08 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iers2-00077k-1S
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 02:36:59 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id C76F92176297C62AADC0;
 Wed, 11 Dec 2019 10:36:50 +0800 (CST)
Received: from [127.0.0.1] (10.173.222.27) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.439.0; Wed, 11 Dec 2019
 10:36:41 +0800
Subject: Re: perf top for arm64?
To: Jiri Olsa <jolsa@redhat.com>, John Garry <john.garry@huawei.com>
References: <1573045254-39833-1-git-send-email-john.garry@huawei.com>
 <20191106140036.GA6259@kernel.org>
 <418023e7-a50d-cb6f-989f-2e6d114ce5d8@huawei.com>
 <20191210163655.GG14123@krava>
 <952dc484-2739-ee65-f41c-f0198850ab10@huawei.com>
 <20191210170841.GA23357@krava>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <0870e660-2511-ced0-7402-5ff389c4c281@huawei.com>
Date: Wed, 11 Dec 2019 10:36:39 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20191210170841.GA23357@krava>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_183658_261163_63531534 
X-CRM114-Status: GOOD (  14.33  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, peterz@infradead.org, wanghaibin.wang@huawei.com,
 Linuxarm <linuxarm@huawei.com>, linux-kernel@vger.kernel.org,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 alexander.shishkin@linux.intel.com, mingo@redhat.com,
 Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>, namhyung@kernel.org,
 will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi John,

On 2019/12/11 1:08, Jiri Olsa wrote:
> On Tue, Dec 10, 2019 at 04:52:52PM +0000, John Garry wrote:
>> On 10/12/2019 16:36, Jiri Olsa wrote:
>>> On Tue, Dec 10, 2019 at 04:13:49PM +0000, John Garry wrote:
>>>> Hi all,
>>>>
>>>> I find to my surprise that "perf top" does not work for arm64:
>>>>
>>>> root@ubuntu:/home/john/linux# tools/perf/perf top
>>>> Couldn't read the cpuid for this machine: No such file or directory
>>>
>>
>> Hi Jirka,
>>
>>> there was recent change that check on cpuid and quits:
>>>     608127f73779 perf top: Initialize perf_env->cpuid, needed by the per arch annotation init routine
>>>
>>
>> ok, this is new code. I obviously didn't check the git history...
>>
>> But, apart from this, there are many other places where get_cpuid() is
>> called. I wonder what else we're missing out on, and whether we should still
>> add it.
> 
> right, I was just wondering how come vendor events are working for you,
> but realized we have get_cpuid_str being called in there ;-)
> 
> I think we should add it as you have it prepared already,
> could you post it with bigger changelog that would explain
> where it's being used for arm?

I've also seen the similar problem when I was looking to add support
for 'perf kvm stat' on arm64 [1] (which though got stuck due to some
other reasons for a very long time :(

It would be great if your patch can address this issue!


[1] https://lore.kernel.org/patchwork/patch/1087531/


Thanks,
Zenghui


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
