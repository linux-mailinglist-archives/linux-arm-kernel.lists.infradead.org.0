Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53570F269E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 05:41:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+1XP+7SlWox3qkfaZgEoYyQ8uz5FWYsFatZk7B3GsiQ=; b=UMxpadQMIqipO0sQE2R2ZyzAw
	3/HrEGb9awQAA9An1K6epL/frD3GPO3enUgPlU4BmIHtfV9wRsUS42AC8+0cVJSkLcRgkY3+zPWWh
	CJjHP82bHGijz12TZYdGvC/kvhREsigSOT77fMA/AvKcluDWCugYcwG8/tkU/j4qKu6W8aFa1eZH9
	z86EvVt3r+aj6y6lZ3XotrwVw39ynjWHCLHFOeHfVtV9B3nWS7QNGpkUxiOpY+IwujfM/C0gkOxbc
	5mv0+HdMfcDIrExnMdyKFziJM/4FnayF1HUepx8Up+c0TX/r+jRhGatS683O3LShHMQ3eMXd2cpDa
	wd4y5NAGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSZbi-0005Aa-4B; Thu, 07 Nov 2019 04:41:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSZbZ-00059e-Kn
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 04:41:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 069AE7A7;
 Wed,  6 Nov 2019 20:41:01 -0800 (PST)
Received: from [10.162.42.33] (a075563-lin.blr.arm.com [10.162.42.33])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 430353F71A;
 Wed,  6 Nov 2019 20:40:56 -0800 (PST)
Subject: Re: [PATCHv2 1/8] ftrace: add ftrace_init_nop()
To: Mark Rutland <mark.rutland@arm.com>
References: <20191029165832.33606-1-mark.rutland@arm.com>
 <20191029165832.33606-2-mark.rutland@arm.com>
 <daad0785-a33f-3cfb-cf0f-657b6c677257@arm.com>
 <20191104133657.GE45140@lakrids.cambridge.arm.com>
 <8e68de1f-f961-752d-9c07-ce41ce624d35@arm.com>
 <20191106141530.GC50610@lakrids.cambridge.arm.com>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <77ba9a77-7971-77b6-c3f9-e3e0adf6cf54@arm.com>
Date: Thu, 7 Nov 2019 10:10:52 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20191106141530.GC50610@lakrids.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_204109_724706_F5421BF8 
X-CRM114-Status: GOOD (  17.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: jthierry@redhat.com, linux-parisc@vger.kernel.org, peterz@infradead.org,
 catalin.marinas@arm.com, deller@gmx.de, jpoimboe@redhat.com,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 James.Bottomley@HansenPartnership.com, takahiro.akashi@linaro.org,
 will@kernel.org, mingo@redhat.com, james.morse@arm.com, jeyu@kernel.org,
 svens@stackframe.org, duwe@suse.de, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 11/6/19 7:45 PM, Mark Rutland wrote:
> On Tue, Nov 05, 2019 at 12:17:26PM +0530, Amit Kachhap wrote:
>> On 11/4/19 7:06 PM, Mark Rutland wrote:
>>> On Sat, Nov 02, 2019 at 05:49:00PM +0530, Amit Daniel Kachhap wrote:
>>>> On 10/29/19 10:28 PM, Mark Rutland wrote:
>>>>> +/**
>>>>> + * ftrace_init_nop - initialize a nop call site
>>>>> + * @mod: module structure if called by module load initialization
>>>>> + * @rec: the call site record (e.g. mcount/fentry)
>>>>> + *
>>>>> + * This is a very sensitive operation and great care needs
>>>>> + * to be taken by the arch.  The operation should carefully
>>>>> + * read the location, check to see if what is read is indeed
>>>>> + * what we expect it to be, and then on success of the compare,
>>>>> + * it should write to the location.
>>>>> + *
>>>>> + * The code segment at @rec->ip should contain the contents created by
>>>>> + * the compiler
>>>> Nit: Will it be better to write it as "@rec->ip should store the adjusted
>>>> ftrace entry address of the call site" or something like that.
>>>
>>> This was the specific wording requested by Steve, and it's trying to
>>> describe the instructions at rec->ip, rather than the value of rec->ip,
>>> so I think it's better to leave this as-is.
>> ok Its fine this way too. Actually from the comment, I could not understand
>> which one of the compiler contents this points to as in this case there are
>> 2 nops.
> 
> We can't say what the compiler contents will be. An architecture may use
> this callback if it's using mcount, mfentry, patchable-function-entry,
> or some other mechanism we're not aware of today. Depending on the
> architecture and mechanism, the callsite could contain a number of
> distinct things.
> 
> All the comment is trying to say is that when ftrace_init_nop() is
> called, the callsite has not been modified in any way since being
> compiled, so we can expect the contents to be whatever the compiler
> generated.

ok. Your details seems reasonable.

Thanks,
Amit Daniel
> 
> Thanks,
> Mark.
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
