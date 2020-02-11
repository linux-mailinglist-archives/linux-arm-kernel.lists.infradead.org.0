Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62697159344
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 16:36:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tyK9kgzpYGkJ+W+ADoS6vtdxfoJjDmyBt2deij/3I1M=; b=MSJXFQlFdCKSZExHMFR3iz5y6
	aYakrahsNX/by+vnhKahGbATdH3jb71Hq8kp0Jwp4mvHvb2Oftl4vfzPcYNxJHmhovRwkhXeQ4+kJ
	L8XDCgRSrfE6mBHWcfv9zeRgne1Wczeoz1BPRIQ+Jb1ki5hgZHkCU7tOmi1M3/PO6TR8BH8Qy9pkO
	3kW9BCdDww6Vg1nkJS6QMIQkXPqx8o0csmrWlcaavNYKcqarz2FHV60oyWcacEeMX+NDSUoQEXezc
	dTv84iFhPEttLdRixPlNJ8P0FR0K3eJtLjxfObqFXOyoig2KHi4GVJrg609dblPU8mewoTNb39pry
	FPuVyXPZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Xam-0006PB-Ei; Tue, 11 Feb 2020 15:36:52 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Xae-0006OB-LD
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 15:36:46 +0000
Received: from lhreml707-cah.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id 1FBCFC341D361AE824A0;
 Tue, 11 Feb 2020 15:36:41 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 lhreml707-cah.china.huawei.com (10.201.108.48) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 11 Feb 2020 15:36:40 +0000
Received: from [127.0.0.1] (10.202.226.45) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Tue, 11 Feb
 2020 15:36:40 +0000
Subject: Re: [PATCH RFC 4/7] perf pmu: Rename uncore symbols to include system
 PMUs
To: Jiri Olsa <jolsa@redhat.com>
References: <1579876505-113251-1-git-send-email-john.garry@huawei.com>
 <1579876505-113251-5-git-send-email-john.garry@huawei.com>
 <20200210120715.GC1907700@krava>
 <fac99c40-dace-3e2e-c8f4-b2afed8b7c61@huawei.com>
 <20200211144308.GC93194@krava>
From: John Garry <john.garry@huawei.com>
Message-ID: <52e18a50-1e62-f2fa-7639-f96268c5d243@huawei.com>
Date: Tue, 11 Feb 2020 15:36:39 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20200211144308.GC93194@krava>
Content-Language: en-US
X-Originating-IP: [10.202.226.45]
X-ClientProxiedBy: lhreml720-chm.china.huawei.com (10.201.108.71) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_073644_843680_A3E7E7C6 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, ak@linux.intel.com, suzuki.poulose@arm.com,
 peterz@infradead.org, robin.murphy@arm.com, linuxarm@huawei.com,
 acme@kernel.org, linux-kernel@vger.kernel.org, zhangshaokun@hisilicon.com,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, james.clark@arm.com,
 namhyung@kernel.org, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/02/2020 14:43, Jiri Olsa wrote:
>> root@(none)$ pwd
>> /sys/bus/event_source/devices/smmuv3_pmcg_100020
>> root@(none)$ ls -l
>> total 0
>> -r--r--r--    1 root     root          4096 Feb 10 14:50 cpumask
>> drwxr-xr-x    2 root     root             0 Feb 10 14:50 events
>> drwxr-xr-x    2 root     root             0 Feb 10 14:50 format
>> -rw-r--r--    1 root     root          4096 Feb 10 14:50
>> perf_event_mux_interval_ms
>> drwxr-xr-x    2 root     root             0 Feb 10 14:50 power
>> lrwxrwxrwx    1 root     root             0 Feb 10 14:50 subsystem ->
>> ../../bus/event_source
>> -r--r--r--    1 root     root          4096 Feb 10 14:50 type
>> -rw-r--r--    1 root     root          4096 Feb 10 14:50 uevent
>>
>>
>> Other PMU drivers which I have checked in drivers/perf also have the same.
>>
>> Indeed I see no way to differentiate whether a PMU is an uncore or system.
>> So that is why I change the name to cover both. Maybe there is a better name
>> than the verbose pmu_is_uncore_or_sys().
>>
>>> I don't see the connection here with the sysid or '_sys' checking,
>>> that's just telling which ID to use when looking for an alias, no?
>> So the connection is that in perf_pmu__find_map(), for a given PMU, the
>> matching is now extended from only core or uncore PMUs to also these system
>> PMUs. And I use the sysid to find an aliasing table for any system PMUs
>> present.

Hi Jirka,

 > I see.. can't we just check sysid for uncore PMUs?

x86 will still alias PMUs (uncore or CPU) based on an alias table 
matched to the cpuid, as it is today. x86 has the benefit of fixed 
uncore PMUs for a given cpuid.

For other archs whose uncore or system PMUs are not fixed for a given 
CPU - like arm - we will support matching uncore and system PMUs on 
cpuid or sysid.

Uncore PMUs are a grey area for arm, as they may or may not be tied to a 
specific cpuid, so we will need to support both matching methods.

because
 > that's what the code is doing, right?

Not exactly.

The code will match on an alias table matched to the cpuid and also an 
alias table matched to the sysid (if perf could actually get a sysid and 
there is a table matching that sysid).

I hope that this makes sense....

having pmu_is_uncore_or_sys
 > makes me think there's some sysid-type PMU
 >
 > jirka
 >

Thanks,
John

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
