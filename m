Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A83AE1A11A0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 18:38:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N9xC6L+OLsiV9g36sIQaALL75VLP/ZmO45WodMDFYQY=; b=mAnDxy9gJunhlt
	CMqvXLxD0IkKcJS0z6e2TEtq1598zdzuRcwt8PeJuc9JRQev1dWmm/NbIGtj2HSHhsFZ+ITtfDoLr
	c8JoSMBlTU7edHxmb83R6j2ec1LvmzD55LzPJvUeDJuwbg7sz4xgIkh68tmv4SB17lwiQebyP/E2+
	M2yWKIa2gEYkATBLLpP30ypzINO3/0BxV9vtZb/Fe3rZamZHHnZK8Jr/yRbeySCGo0RPkTTk3r+/f
	qfK53ZOBFYyxA2H7accUyx30S5pbu+Ikd0/1Vv9IQNpqFR76Ta2QbeiwvzBb8TsOVZt4/1jvr7AHu
	At3mXAe3tAVEFT+Q1UZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLrEd-0004i0-2J; Tue, 07 Apr 2020 16:37:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLrEA-0004ZY-Gy
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 16:37:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BAF111045;
 Tue,  7 Apr 2020 09:37:29 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AF3553F52E;
 Tue,  7 Apr 2020 09:37:28 -0700 (PDT)
Subject: Re: Question about SEA handling process happened in user space
To: Xiaofei Tan <tanxiaofei@huawei.com>
References: <5E81EFCD.6020605@huawei.com>
 <2b0e5507-ad75-9af1-6afe-aa87d8cf597f@arm.com> <5E8587A3.6030101@huawei.com>
From: James Morse <james.morse@arm.com>
Message-ID: <558ffd42-74d7-e364-2b79-93ab0998ab6e@arm.com>
Date: Tue, 7 Apr 2020 17:37:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <5E8587A3.6030101@huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_093730_617043_9A2A92EF 
X-CRM114-Status: GOOD (  14.20  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Linuxarm <linuxarm@huawei.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org, Shiju Jose <shiju.jose@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Xiaofei,

On 02/04/2020 07:35, Xiaofei Tan wrote:
> On 2020/3/31 0:49, James Morse wrote:
>> If the CPU doesn't tell us the address, we can't tell user-space what it is. The
>> alternative is to upgrade to SIGKILL in that case.
>>
>>
>> If you see this instead of the address provided via firmware-first, there is a
>> series to improve that here:
>> https://lore.kernel.org/linux-acpi/20200228174817.74278-1-james.morse@arm.com/
>>
>> (We skip this signal code of APEI promises it did all the work. This lets you
>> take the signal from memory_failure() instead, which may have better information.)

> There may be an competition issue.
> APEI run memory_failure() in an bottom half for memory errors. Then it may be not finished
> before here SEA handling end, and application process may back to run.

I'm not sure what you mean by 'bottom half', isn't this a softirq term?

With that series, it runs in process-context as task-work. memory_failure() needs to
sleep, so it has to run in process-context. Doing it as task-work means it runs before the
thread returns to user-space.


If another thread in the same process accesses the affected memory, I'd expect to take a
second external abort. If another process had the page mapped, it could access the
affected memory, again taking an external abort.

These two could happen while the first CPU was in firmware generating the CPER records, so
its not a race we can fix. It should be harmless, the recovery action is the same, its
just the error counters that count more events than errors. If you actually see it happen,
we can try and make it smaller...


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
