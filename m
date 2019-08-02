Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C48E57FC52
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 16:36:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UbHAV9MJgNpqdNmEwVFDVUgxf7JGH1r16lgiN9UKXDk=; b=F1OCuYuboasTm2
	ltsF2Bkcy3btv8JSAqlOMTqhL26aMyNqCI30CJ/Nk2eVbPDAduT0WVkuVNQqL/5VVSij8lrc3Ml6e
	U0acPcDfTZMQPQEZTjdOVy6UHfdAf5ZJwRTpYhWXc+DlCHjWiL6lCH7Db2HP7uF954j6vX5ZIDB3p
	BzNqOjgHinIpvNF8tWt2OIG0vr8GOLjWASFrWDwP850Yug7TXVndi8aHf87SCfNUEyQP0jUtxZGFV
	CpHGTRY3JEkg+4LZOZb06bbgA3dGOC1n8AmfO3cAUrOLHiaX2xyJVynLBOIpoF9E5svNGUp+xMzXz
	9tDS79dZG0j8K97PnlgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htYfS-0004qH-Th; Fri, 02 Aug 2019 14:36:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1htYfN-0004px-KG
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 14:36:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CA4B21596;
 Fri,  2 Aug 2019 07:36:20 -0700 (PDT)
Received: from [10.1.197.45] (e112298-lin.cambridge.arm.com [10.1.197.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EAD923F575;
 Fri,  2 Aug 2019 07:36:18 -0700 (PDT)
Subject: Re: [PATCH v4 4/9] arm: perf: Remove Remove PMU locking
To: Will Deacon <will@kernel.org>
References: <1563351432-55652-1-git-send-email-julien.thierry@arm.com>
 <1563351432-55652-5-git-send-email-julien.thierry@arm.com>
 <20190801130640.4ed5bcy2rdgdtztq@willie-the-truck>
From: Julien Thierry <julien.thierry@arm.com>
Message-ID: <613ebf21-2761-c045-f30d-c1893c3e235e@arm.com>
Date: Fri, 2 Aug 2019 15:36:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190801130640.4ed5bcy2rdgdtztq@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_073621_712196_AFD7F3C8 
X-CRM114-Status: GOOD (  17.09  )
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
Cc: mark.rutland@arm.com, peterz@infradead.org, liwei391@huawei.com,
 will.deacon@arm.com, Russell King <linux@armlinux.org.uk>, acme@kernel.org,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, namhyung@kernel.org,
 sthotton@marvell.com, jolsa@redhat.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 01/08/2019 14:06, Will Deacon wrote:
> [extra 'Remove' in subject]
> 
> On Wed, Jul 17, 2019 at 09:17:07AM +0100, Julien Thierry wrote:
>> Since the PMU interrupt saves and restores the value of the selector
>> register, there is no need to serialize register accesses against the
>> interrupt contexts.
>>
>> For operations that can be called with interrupts enabled, preemption
>> still needs to be disabled to ensure the programming of the PMU is
>> done on the expected CPU and not migrated mid-programming.
>>
>> Signed-off-by: Julien Thierry <julien.thierry@arm.com>
>> Cc: Will Deacon <will.deacon@arm.com>
>> Cc: Mark Rutland <mark.rutland@arm.com>
>> Cc: Peter Zijlstra <peterz@infradead.org>
>> Cc: Ingo Molnar <mingo@redhat.com>
>> Cc: Arnaldo Carvalho de Melo <acme@kernel.org>
>> Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
>> Cc: Jiri Olsa <jolsa@redhat.com>
>> Cc: Namhyung Kim <namhyung@kernel.org>
>> Cc: Russell King <linux@armlinux.org.uk>
>> ---
>>  arch/arm/kernel/perf_event_v7.c | 54 ++---------------------------------------
>>  1 file changed, 2 insertions(+), 52 deletions(-)
> 
> I'm struggling to see why this patch is needed or, if it is, why we're not
> doing something similar for v6 and xscale.

We can't do a similar things for v6 because it doesn't have set/clear
registers for event enabling/disabling. To do that on v6 we must do
read-modify-write, so we need to keep a spinlock.

For v7 we can do without it.

Thanks,

-- 
Julien Thierry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
