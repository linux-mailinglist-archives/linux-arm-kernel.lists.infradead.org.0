Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 405881E35C2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 04:39:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bjxWOp/6iqbOzSGj1bqOPUw+HENaWi+R5i1ReRn3Mpg=; b=B+M0MU1K1o+dPF
	8/WTEDuzaMydR0EBCF60pQD/vyChuiVkBwnwxqWecBeLQwc0OAv2o5F+Sx73ajcgwy0siwJT1oQin
	tKXK/FWzRPvHAfHpI2HvA1sg4LK4Zxnt4fwlDNHNL7v348aCIzkNO8dA7ImB00iQr5a5hvWZgY5XK
	aUO9x3E5jKFEr+Qio5Qx6rmLjFxQKQB+orqeKJdO9EdBmpw/3lBFE/kDOqED6+7NXRwSlZ6oAXU96
	g+olrVJ7qbCuLXt54WJ+Xg8lOxKaN+1ZUQeHkIWA8ljoAIsvvl3a20QBgM6FPoNt2eCSd4wlzz7Po
	Ooy0dAKvkMtZiuKRxWug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdlyn-00012O-Vd; Wed, 27 May 2020 02:39:41 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdlyd-00011a-Sq
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 02:39:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590547168;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=OSB4MQ0sSc72lQAw+UxZAF+ryvkbXacyBfPHDaEQ7+0=;
 b=LfimCiEpU0GqUfDLW41knd0ZF9rM9tQSfZODinOURTsMxOzV3rvGKJTPfIUCu5I++ZQRnl
 R7LkDoKjoWb7l0uVu6JHtraUjfw4s/4Pz5CRLZEzoVQk8tia2Z9cFp0mHFw14KNet+woPJ
 Ak7mk22mxJ74/uiobaWR3rAxV6mp/Tk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-196-y0cRexijNpynYVGTrN8pPQ-1; Tue, 26 May 2020 22:39:21 -0400
X-MC-Unique: y0cRexijNpynYVGTrN8pPQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1558E100CCC0;
 Wed, 27 May 2020 02:39:20 +0000 (UTC)
Received: from localhost.localdomain (vpn2-54-130.bne.redhat.com
 [10.64.54.130])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A927F6FB86;
 Wed, 27 May 2020 02:39:12 +0000 (UTC)
Subject: Re: [PATCH RFCv2 0/9] kvm/arm64: Support Async Page Fault
To: Mark Rutland <mark.rutland@arm.com>
References: <20200508032919.52147-1-gshan@redhat.com>
 <20200526130927.GH1363@C02TD0UTHF1T.local>
From: Gavin Shan <gshan@redhat.com>
Message-ID: <987785b2-2533-c3d8-8f6a-4193aa82d502@redhat.com>
Date: Wed, 27 May 2020 12:39:09 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200526130927.GH1363@C02TD0UTHF1T.local>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_193932_008627_EF2D5028 
X-CRM114-Status: GOOD (  30.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.139.110.120 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Reply-To: Gavin Shan <gshan@redhat.com>
Cc: aarcange@redhat.com, drjones@redhat.com, suzuki.poulose@arm.com,
 maz@kernel.org, linux-kernel@vger.kernel.org, eric.auger@redhat.com,
 james.morse@arm.com, shan.gavin@gmail.com, catalin.marinas@arm.com,
 pbonzini@redhat.com, will@kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On 5/26/20 11:09 PM, Mark Rutland wrote:
> At a high-level I'm rather fearful of this series. I can see many ways
> that this can break, and I can also see that even if/when we get things
> into a working state, constant vigilance will be requried for any
> changes to the entry code.
> 
> I'm not keen on injecting non-architectural exceptions in this way, and
> I'm also not keen on how deep the PV hooks are injected currently (e.g.
> in the ret_to_user path).
> 

First of all, thank you for your time and providing your comments continuously.
Since the series is tagged as RFC, it's not a surprise to see something is
obviously broken. However, Could you please provide more details? With more
details, I can figure out the solutions. If I'm correct, you're talking about
the added entry code and the injected PV hooks. Anyway, please provide more
details about your concerns so that I can figure out the solutions.

Let me briefly explain why we need the injected PV hooks in ret_to_user: There
are two fashions of wakeup and I would call them as direct wakeup and delayed
wakeup. The sleeping process is waked up directly when received PAGE_READY
notification from the host, which is the process of direct wakeup. However there
are some cases the direct wakeup can't be carried out. For example, the sleeper
and the waker are same process or the (CFS) runqueue has been locked by somebody
else. In these cases, the wakeup is delayed until the idle process is running or
in ret_to_user. It's how delayed wakeup works.

> I see a few patches have preparator cleanup that I think would be
> worthwhile regardless of this series; if you could factor those out and
> send them on their own it would get that out of the way and make it
> easier to review the series itself. Similarly, there's some duplication
> of code from arch/x86 which I think can be factored out to virt/kvm
> instead as preparatory work.
> 

Yep, I agree there are several cleanup patches can be posted separately
and merged in advance. I will do that and thanks for the comments.

About the shared code between arm64/x86, I need some time to investigate.
Basically, I agree to do so. I also included Paolo here to check his opnion.

It's no doubt these are all preparatory work, to make the review a bit
easier as you said :)

> Generally, I also think that you need to spend some time on commit
> messages and/or documentation to better explain the concepts and
> expected usage. I had to reverse-engineer the series by reviewing it in
> entirety before I had an idea as to how basic parts of it strung
> together, and a more thorough conceptual explanation would make it much
> easier to critique the approach rather than the individual patches.
> 

Yes, sure. I will do this in the future. Sorry about having taken you
too much to do the reverse-engineering. In next revision, I might put
more information in the cover letter and commit log to explain how things
are designed and working :)

> On Fri, May 08, 2020 at 01:29:10PM +1000, Gavin Shan wrote:
>> Testing
>> =======
>> The tests are carried on the following machine. A guest with single vCPU
>> and 4GB memory is started. Also, the QEMU process is put into memory cgroup
>> (v1) whose memory limit is set to 2GB. In the guest, there are two threads,
>> which are memory bound and CPU bound separately. The memory bound thread
>> allocates all available memory, accesses and them free them. The CPU bound
>> thread simply executes block of "nop".
> 
> I appreciate this is a microbenchmark, but that sounds far from
> realistic.
> 
> Is there a specitic real workload that's expected to be representative
> of?
> 
> Can you run tests with a real workload? For example, a kernel build
> inside the VM?
> 

Yeah, I agree it's far from a realistic workload. However, it's the test case
which was suggested when async page fault was proposed from day one, according
to the following document. On the page#34, you can see the benchmark, which is
similar to what we're doing.

https://www.linux-kvm.org/images/a/ac/2010-forum-Async-page-faults.pdf

Ok. I will test with the workload to build kernel or another better one to
represent the case.

>> The test is carried out for 5 time
>> continuously and the average number (per minute) of executed blocks in the
>> CPU bound thread is taken as indicator of improvement.
>>
>>     Vendor: GIGABYTE   CPU: 224 x Cavium ThunderX2(R) CPU CN9975 v2.2 @ 2.0GHz
>>     Memory: 32GB       Disk: Fusion-MPT SAS-3 (PCIe3.0 x8)
>>
>>     Without-APF: 7029030180/minute = avg(7559625120 5962155840 7823208540
>>                                          7629633480 6170527920)
>>     With-APF:    8286827472/minute = avg(8464584540 8177073360 8262723180
>>                                          8095084020 8434672260)
>>     Outcome:     +17.8%
>>
>> Another test case is to measure the time consumed by the application, but
>> with the CPU-bound thread disabled.
>>
>>     Without-APF: 40.3s = avg(40.6 39.3 39.2 41.6 41.2)
>>     With-APF:    40.8s = avg(40.6 41.1 40.9 41.0 40.7)
>>     Outcome:     +1.2%
> 
> So this is pure overhead in that case?
> 

Yes, It's the pure overhead, which is mainly contributed by the injected
PV code in ret_to_user.

> I think we need to see a real workload that this benefits. As it stands
> it seems that this is a lot of complexity to game a synthetic benchmark.
> 
> Thanks,
> Mark.
> 
>> I also have some code in the host to capture the number of async page faults,
>> time used to do swapin and its maximal/minimal values when async page fault
>> is enabled. During the test, the CPU-bound thread is disabled. There is about
>> 30% of the time used to do swapin.
>>
>>     Number of async page fault:     7555 times
>>     Total time used by application: 42.2 seconds
>>     Total time used by swapin:      12.7 seconds   (30%)
>>           Minimal swapin time:      36.2 us
>>           Maximal swapin time:      55.7 ms
>>

[...]

Thanks,
Gavin


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
