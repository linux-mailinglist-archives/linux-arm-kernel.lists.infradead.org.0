Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE01D17235B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 17:28:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6A+n21EfcfuYO7kodFWFsjUhBASv2Mr2U8mmCEg8FqE=; b=gnmqQN1Mp50vYs
	s94+TE1oyWBBZToRFsPG7OtbJHqmemcRVQlR93o7egN3fEvk6INFt+X3xr6WKNcCcwuGipyPhRevD
	bWCq3olNRXG1Pexe6S+e13Gera+fbR6Lpanq94Pnt0KcTTIbWhrYDuuG56ITKizOoRX3KoLefnrRr
	ntmpZLxydD12bX45OGoau/vO65BYdZgz3KCTvuDqln5ZibEzH3WgrMlqHPEyA18RjgHvmIqw+tThP
	4SSQNJ665FKXkA6j34jL+jfFko7fqlN7ajB0LtRJgHSWDqyiUcLW0efw+x9xuxspMeI/fOoSlOvmJ
	vLIUFfSHmm0E8jRs7QBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7M1c-00075s-EF; Thu, 27 Feb 2020 16:28:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7M18-0006ti-SM
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 16:28:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2DCD61FB;
 Thu, 27 Feb 2020 08:28:04 -0800 (PST)
Received: from [10.0.8.126] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7C6DF3F7B4;
 Thu, 27 Feb 2020 08:28:02 -0800 (PST)
Subject: Re: [PATCH 1/2] sched/topology: Don't enable EAS on SMT systems
To: Quentin Perret <qperret@google.com>,
 Valentin Schneider <valentin.schneider@arm.com>
References: <20200226164118.6405-1-valentin.schneider@arm.com>
 <20200226164118.6405-2-valentin.schneider@arm.com>
 <20200227130001.GA107011@google.com>
From: Dietmar Eggemann <dietmar.eggemann@arm.com>
Message-ID: <7ce12aa2-1925-f991-a85f-5bd81ba668fb@arm.com>
Date: Thu, 27 Feb 2020 16:28:01 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200227130001.GA107011@google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_082806_959116_B053EDFE 
X-CRM114-Status: GOOD (  15.29  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, kernel-team@android.com,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Ingo Molnar <mingo@kernel.org>, Will Deacon <will@kernel.org>,
 morten.rasmussen@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 27.02.20 13:00, Quentin Perret wrote:
> On Wednesday 26 Feb 2020 at 16:41:17 (+0000), Valentin Schneider wrote:
>> EAS already requires asymmetric CPU capacities to be enabled, and mixing
>> this with SMT is an aberration, but better be safe than sorry.
>>
>> Signed-off-by: Valentin Schneider <valentin.schneider@arm.com>
> 
> Acked-by: Quentin Perret <qperret@google.com>
> 
> Thanks,
> Quentin
> 
>> ---
>>  kernel/sched/topology.c | 4 ++++
>>  1 file changed, 4 insertions(+)
>>
>> diff --git a/kernel/sched/topology.c b/kernel/sched/topology.c
>> index 00911884b7e7..76cd0a370b9a 100644
>> --- a/kernel/sched/topology.c
>> +++ b/kernel/sched/topology.c
>> @@ -360,6 +360,10 @@ static bool build_perf_domains(const struct cpumask *cpu_map)
>>  		goto free;
>>  	}
>>  
>> +	/* EAS definitely does *not* handle SMT */
>> +	if (sched_smt_active())

Can you add a pr_warn() and use the current comment as the warning
message? Since we have one for !Asym CPU capacity and !schedutil.

>> +		goto free;
>> +

[...]

There is this 'EAS can be used ...' list of currently 4 items in the
build_perf_domains() function header. You could include 'X. No SMT
support' there.
 ;-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
