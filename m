Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B28C157EA4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 16:21:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eeu/JVB/Xd3BnL82k+5EuMjuGlsamAAA/+nyJ1yEe1c=; b=FgK+10nkT+Kkt7
	fLcjhNXWFjV0+47aTg4QvRHNgMag+pHu5trRil8KM9UG+8qdEC1GAX9dGtFHw+CWpuqO+oLdNch9G
	2TVw+1LHPdk7uPhskaRjgyfkywk5HIbkgGHyB7Xm7tRc9005lTs3CcgRxduWRRBDKvyLP2TL5vX7T
	aWaVW9gkoI7VkYbBFAZVZNiWJ6HM1F2IL9EHMR8yVrNd1Ma2IKuGanAGd+9NrCfG3ciXerbTolJ5S
	wsjT7JtSZqwWmcTkXiq0fhvM+zQujwfZfDLG96132/UFipnlRtPDWgk+Lj5DB2gIjMzKsra5mRj7m
	kumgmk8HqyCj96Rmfkpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1AsN-0004sP-4c; Mon, 10 Feb 2020 15:21:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Arw-0004gd-Tz
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 15:21:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 821611FB;
 Mon, 10 Feb 2020 07:21:01 -0800 (PST)
Received: from [192.168.0.7] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AB2533F68E;
 Mon, 10 Feb 2020 07:21:00 -0800 (PST)
Subject: Re: [PATCH] drivers base/arch_topology: Remove 'struct sched_domain'
 forward declaration
To: Sudeep Holla <sudeep.holla@arm.com>
References: <20200207114913.3052-1-dietmar.eggemann@arm.com>
 <20200207154855.GA5529@bogus>
From: Dietmar Eggemann <dietmar.eggemann@arm.com>
Message-ID: <e52903f6-4515-011e-b095-b30f347e3124@arm.com>
Date: Mon, 10 Feb 2020 16:20:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200207154855.GA5529@bogus>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_072105_010269_44721EF4 
X-CRM114-Status: GOOD (  11.98  )
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
Cc: Juri Lelli <juri.lelli@redhat.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07/02/2020 16:48, Sudeep Holla wrote:
> On Fri, Feb 07, 2020 at 12:49:13PM +0100, Dietmar Eggemann wrote:
>> The sched domain pointer argument from topology_get_freq_scale() and
>> topology_get_cpu_scale() got removed by commit 7673c8a4c75d
>> ("sched/cpufreq: Remove arch_scale_freq_capacity()'s 'sd' parameter")
>> and commit 8ec59c0f5f49 ("sched/topology: Remove unused 'sd' parameter
>> from arch_scale_cpu_capacity()").
>>
>> So the 'struct sched_domain' forward declaration is no longer needed.
>> Remove it.
>>
>> W/o the sched domain pointer argument the storage class and inline
>> definition as well as the return type, function name and parameter list
>> fit all into one line.
> 
> Looks simple and good to me. I don't want to ask you split the patch as
> $subject indicates only one of the 2 changes in the patch. I am fine with
> it as it but if anyone else shout for that, go for the split.
> 
> Either way,
> 
> Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
> 
> You have not added Greg who generally picks up the patch. Can you repost
> with him in cc and my reviewed-by so that he can pick it up.

Will do. I'll keep the patch like it is. Thanks for the review!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
