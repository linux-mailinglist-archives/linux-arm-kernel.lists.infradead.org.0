Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04A161A860E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 18:55:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UX/oEqitDPMFKJOKj7o4MXJEt8IXDk7vgBICIMw4V7Q=; b=RBgwK1aOnswyZ9
	oAInSzCGvGiKlnx7c1fDzkiPWj+STgZLkqQoxalbl4JTCMrOHIIwtR/alvy2mZttlfbc0EOUQtLd/
	rM5DYFM2YR5xtorgDAwtpzxqKa35eGxaADBn0qqcdE4lpxvHMnME4Z0tcfCL0m+fULTzPPAlWkhmZ
	IeDuW4NcQNyZpxak/ugLO/ClOASMdv4WZ4YFd21JuSrpkqLonoi+j1ctvRdyzjuUryqIOu+0mRjf/
	gvsoH2ZKxRopBgs2Eg9xDjCn0fX75h4p9kIL4dLHwl71w7F0zk/lyRVqL6RO6gFjXLONzuW7ZpFwA
	euf3DJSJhKebBpMefZyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOOqX-0005yP-Hp; Tue, 14 Apr 2020 16:55:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOOqK-0005vM-Tk; Tue, 14 Apr 2020 16:55:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2B60630E;
 Tue, 14 Apr 2020 09:55:24 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9B4863F6C4;
 Tue, 14 Apr 2020 09:55:18 -0700 (PDT)
Subject: Re: [PATCH 1/3] kexec: Prevent removal of memory in use by a loaded
 kexec image
To: David Hildenbrand <david@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>
References: <20200326180730.4754-1-james.morse@arm.com>
 <20200326180730.4754-2-james.morse@arm.com>
 <321e6bf7-e898-7701-dd60-6c25237ff9cd@redhat.com>
 <a21d90ea-2566-a2bc-ad2f-6464a416c97f@arm.com>
 <9cb4ea0d-34c3-de42-4b3f-ee25a59c4835@redhat.com>
 <b0443908-e36f-9bc4-4a8a-4206cb782d4b@arm.com>
 <72672e2c-a57a-8df9-0cff-8035cbce7740@redhat.com>
 <34274b02-60ba-eb78-eacd-6dc1146ed3cd@arm.com>
 <80e4d1d7-f493-3f66-f700-86f18002d692@redhat.com>
 <dfacf85f-d79d-8742-7a13-1ac0a67bad04@arm.com>
 <ba481c82-c69e-043c-4b66-2d2c7732cf07@redhat.com>
 <20200410121013.03b609fd572504c03a666f4a@linux-foundation.org>
 <4ed2fa36-fcd8-7150-03d1-35f15e595ebb@redhat.com>
From: James Morse <james.morse@arm.com>
Message-ID: <2e3419b2-d00c-51c3-9b45-9de114608cdf@arm.com>
Date: Tue, 14 Apr 2020 17:55:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <4ed2fa36-fcd8-7150-03d1-35f15e595ebb@redhat.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_095525_055453_03AAAF8A 
X-CRM114-Status: GOOD (  22.87  )
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
Cc: Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, kexec@lists.infradead.org,
 linux-mm@kvack.org, Eric Biederman <ebiederm@xmission.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi guys,

On 14/04/2020 08:05, David Hildenbrand wrote:
> On 10.04.20 21:10, Andrew Morton wrote:
>> It's unclear (to me) what is the status of this patchset.  But it does appear that
>> an new version can be expected?

> I'd suggest to unqueue the patches until we have a consensus.

Certainly!


> While there are a couple of ideas floating around here, my current
> suggestion would be either
> 
> 1. Indicate all hotplugged memory as "System RAM (hotplugged)" in
> /proc/iomem and the firmware memmap (on all architectures). This will
> require kexec changes,

> but I would have assume that kexec has to be
> updated in lock-step with the kernel

News to me: I was using the version I first built when arm64's support was new. I've only
had to update it once when we had to change user-space.

I don't think debian updates kexec-tools when it updates the kernel.


Making changes to /proc/iomem means updating user-space again, (for kdump). I'd like to
avoid that if its at all possible.


> just like e.g., makedumpfile.
> Modify kexec() to not place the kexec kernel on these areas (easy) but
> still consider them as crash regions to dump. When loading a kexec
> kernel, validate in the kernel that the memory is appropriate.


> 2. Make kexec() reload the the kernel whenever we e.g., get a udev event
> for removal of memory in /sys/devices/system/memory/.

I don't think we can rely on user-space to do something,


> On every remove_memory(), invalidate the loaded kernel in the kernel.

This is an option, ... but its a change of behaviour. If user-space asks for two
impossible things, the second request should fail. Having the first-one disappear is a bit
spooky...

Fortunately user-space checks the 'kexec -l' bit happened before it calls reboot() behind
'kexec -e'. So this works, but is not intuitive.

("Did I load it? What changed and when? oh, half a mile up in dmesg is a message saying
the kernel discarded the kexec kernel last wednesday.")


> As I mentioned somewhere, 1. will be interesting for virtio-mem, where
> we don't want any kexec kernel to be placed on virtio-mem-added memory.

Do these virtio-mem-added regions need to be accessible by kdump?
(do we already need a user-space change for that?)


A third option, along the line of what I posted:

Split the 'offline' and 'removed' ideas, which David mentioned somewhere. We'd end up with
(yet) another notifier chain, that prevents the memory being removed, but you can still
mark it as offline in /sys/. (...I'm not quite sure why you would do that...)

This would need hooking up for ACPI (which covers x86 and arm64), and other architectures
mechanisms for doing this...
arm64 can then switch is arch hook that prevents 'bootmem' being removed to this new
notifier chain, as the kernel can only boot from that was present at boot.


My preference is 3, then 2.

I think 1 is slightly less desirable than a message at kexec time that the memory layout
has changed since load, and this might not work...



Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
