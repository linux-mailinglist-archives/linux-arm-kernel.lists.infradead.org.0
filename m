Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9967A84CD1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 15:22:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gusjxId2h5qGRPz9LH00+O84ShnsRK4X+3vvF5aSmgU=; b=NVq2WvibDWtlFZ
	hjTEBnEX5YbguTHhQD/PH5OwCV0+bMP4iVmdAluyDcdPf91gU8odRdTE31q8smJ1wjlJtV+IsRbW8
	x3CivEpJ717Y2aobVJyqjWrAf1M6/O3ZumrCSr4Usxk/IrDa4TxHDNyhnBDOx5cBm/NIkKCvy3SGj
	0OVfH/tzEiDISvf2NI9B8UGECLsNMIlSlpHtDNtASdhZyfW+TQuA7NnGJahBMcRkdfALTRGlhFKsP
	zF+YV+eOqFEQ2J4Ks+wkn77oepvqtRM5+MRaaxpqcFLX9yv3CS7wAQ/i6x4eQgXNeWZMhvaZyrl0o
	6f8xh4CZFSHr48kqgivg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvLtC-00038E-2Y; Wed, 07 Aug 2019 13:22:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvLsu-00037L-Nh
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 13:21:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8AC0128;
 Wed,  7 Aug 2019 06:21:43 -0700 (PDT)
Received: from [10.1.196.133] (e112269-lin.cambridge.arm.com [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B93843F706;
 Wed,  7 Aug 2019 06:21:41 -0700 (PDT)
Subject: Re: [PATCH 1/9] KVM: arm64: Document PV-time interface
To: Christophe de Dinechin <christophe.de.dinechin@gmail.com>
References: <20190802145017.42543-1-steven.price@arm.com>
 <20190802145017.42543-2-steven.price@arm.com> <m1mugnmv0x.fsf@dinechin.org>
From: Steven Price <steven.price@arm.com>
Message-ID: <ff2d038d-d866-65fa-655d-b9865bf14016@arm.com>
Date: Wed, 7 Aug 2019 14:21:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <m1mugnmv0x.fsf@dinechin.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_062144_866242_1F291FAA 
X-CRM114-Status: GOOD (  24.71  )
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
Cc: =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?= <rkrcmar@redhat.com>, kvm@vger.kernel.org,
 Suzuki K Pouloze <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-doc@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, Marc Zyngier <maz@kernel.org>,
 Paolo Bonzini <pbonzini@redhat.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/08/2019 17:40, Christophe de Dinechin wrote:
> 
> Steven Price writes:
> 
>> Introduce a paravirtualization interface for KVM/arm64 based on the
>> "Arm Paravirtualized Time for Arm-Base Systems" specification DEN 0057A.
>>
>> This only adds the details about "Stolen Time" as the details of "Live
>> Physical Time" have not been fully agreed.
>>
> [...]
> 
>> +
>> +Stolen Time
>> +-----------
>> +
>> +The structure pointed to by the PV_TIME_ST hypercall is as follows:
>> +
>> +  Field       | Byte Length | Byte Offset | Description
>> +  ----------- | ----------- | ----------- | --------------------------
>> +  Revision    |      4      |      0      | Must be 0 for version 0.1
>> +  Attributes  |      4      |      4      | Must be 0
>> +  Stolen time |      8      |      8      | Stolen time in unsigned
>> +              |             |             | nanoseconds indicating how
>> +              |             |             | much time this VCPU thread
>> +              |             |             | was involuntarily not
>> +              |             |             | running on a physical CPU.
> 
> I know very little about the topic, but I don't understand how the spec
> as proposed allows an accurate reading of the relation between physical
> time and stolen time simultaneously. In other words, could you draw
> Figure 1 of the spec from within the guest? Or is it a non-objective?

Figure 1 is mostly attempting to explain Live Physical Time (LPT), which
is not part of this patch series. But it does touch on stolen time by
the difference between "live physical time" and "virtual time".

I'm not sure what you mean by "from within the guest". From the
perspective of the guest the parts of the diagram where the guest isn't
running don't exist (therefore there are discontinuities in the
"physical time" and "live physical time" lines).

This patch series doesn't attempt to provide the guest with a view of
"physical time" (or LPT) - but it might be able to observe that by
consulting something external (e.g. an NTP server, or an emulated RTC
which reports wall-clock time).

What it does provide is a mechanism for obtaining the difference (as
reported by the host) between "live physical time" and "virtual time" -
this is reported in nanoseconds in the above structure.

> For example, if you read the stolen time before you read CNTVCT_EL0,
> isn't it possible for a lengthy event like a migration to occur between
> the two reads, causing the stolen time to be obsolete and off by seconds?

"Lengthy events" like migration are represented by the "paused" state in
the diagram - i.e. it's the difference between "physical time" and "live
physical time". So stolen time doesn't attempt to represent that.

And yes, there is a race between reading CNTVCT_EL0 and reading stolen
time - but in practice this doesn't really matter. The usual pseudo-code
way of using stolen time is:

  * scheduler captures stolen time from structure and CNTVCT_EL0:
      before_timer = CNTVCT_EL0
      before_stolen = stolen
  * schedule in process
  * process is pre-empted (or blocked in some way)
  * scheduler captures stolen time from structure and CNTVCT_EL0:
      after_timer = CNTVCT_EL0
      after_stolen = stolen
      time = to_nsecs(after_timer - before_timer) -
             (after_stolen - before_stolen)

The scheduler can then charge the process for "time" nanoseconds of
time. This ensures that a process isn't unfairly penalised if the host
doesn't schedule the VCPU while it is supposed to be running.

The race is very small in comparison to the time the process is running,
and in the worst case just means the process is charged slightly more
(or less) than it should be.

I guess if you're really worried about it, you could do a dance like:

	do {
		before = stolen
		timer = CNTVCT_EL0
		after = stolen
	} while (before != after);

But I don't see the need to have such an accurate view of elapsed time
that the VCPU was scheduled. And of course at the moment (without this
series) the guest has no idea about time stolen by the host.

Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
