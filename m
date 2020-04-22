Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 980BE1B45DA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 15:07:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gQU6OlMMLSwyS2FxMQpQvgzOravA3H/m7xkmAaLWWOE=; b=OF9pYQVsSwO3j4
	cZZ0HtLH6tS7Si/QA3ncRHvQjhOxldgQWvPvUZGYokDtNqQISsT/0Oj8XDjjrojMuu0hfWz8TpJIk
	XxLlN/yDPICnaotYyEg5StxWq2C1hKkrX+K/9RTZ4PfytK8tCI2tOBQQ3K54+7q/lkdafqMn+M+kx
	RNqoIq9mbTMaUXYVqqaKwzvqUUpISpF5YMoS/5h6lpbhzzWOTn4LqCHGh3MDqNjTDaZMKwd2LTca/
	W43yTTI9x5ZPbPKEIYPjLV4/0zFmKB39/PVZN+/PWID8K9ytEvgrpZAr8Rxs1ea3XyrLBOg2IOBa0
	YtexkNsO1AYyiGxOQ2BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRF6N-0001YV-3e; Wed, 22 Apr 2020 13:07:43 +0000
Received: from out01.mta.xmission.com ([166.70.13.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRF6D-0001Wg-AR; Wed, 22 Apr 2020 13:07:36 +0000
Received: from in01.mta.xmission.com ([166.70.13.51])
 by out01.mta.xmission.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.90_1)
 (envelope-from <ebiederm@xmission.com>)
 id 1jRF6A-0003p3-Ji; Wed, 22 Apr 2020 07:07:30 -0600
Received: from ip68-227-160-95.om.om.cox.net ([68.227.160.95]
 helo=x220.xmission.com) by in01.mta.xmission.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.87)
 (envelope-from <ebiederm@xmission.com>)
 id 1jRF68-0008QH-QG; Wed, 22 Apr 2020 07:07:30 -0600
From: ebiederm@xmission.com (Eric W. Biederman)
To: James Morse <james.morse@arm.com>
References: <20200326180730.4754-1-james.morse@arm.com>
 <87sgh4h4r7.fsf@x220.int.ebiederm.org>
 <59b74cc5-89aa-83fa-5532-8e64d6382fdd@arm.com>
Date: Wed, 22 Apr 2020 08:04:21 -0500
In-Reply-To: <59b74cc5-89aa-83fa-5532-8e64d6382fdd@arm.com> (James Morse's
 message of "Wed, 22 Apr 2020 13:14:10 +0100")
Message-ID: <87a7333c4q.fsf@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-XM-SPF: eid=1jRF68-0008QH-QG; ; ; mid=<87a7333c4q.fsf@x220.int.ebiederm.org>;
 ; ; hst=in01.mta.xmission.com; ; ; ip=68.227.160.95; ; ;
 frm=ebiederm@xmission.com; ; ; spf=neutral
X-XM-AID: U2FsdGVkX1/ra3iwlduIF4VL59HMBxh40IUHL7vSMrU=
X-SA-Exim-Connect-IP: 68.227.160.95
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa05.xmission.com
X-Spam-Level: **
X-Spam-Status: No, score=2.0 required=8.0 tests=ALL_TRUSTED,BAYES_50,
 DCC_CHECK_NEGATIVE,T_TM2_M_HEADER_IN_MSG,T_TooManySym_01,XMNoVowels,
 XMSubLong autolearn=disabled version=3.4.2
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
 *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
 *      [score: 0.4995]
 *  1.5 XMNoVowels Alpha-numberic number with no vowels
 *  0.7 XMSubLong Long Subject
 *  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
 * -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
 *      [sa05 1397; Body=1 Fuz1=1 Fuz2=1]
 *  0.0 T_TooManySym_01 4+ unique symbols in subject
X-Spam-DCC: XMission; sa05 1397; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: **;James Morse <james.morse@arm.com>
X-Spam-Relay-Country: 
X-Spam-Timing: total 863 ms - load_scoreonly_sql: 0.06 (0.0%),
 signal_user_changed: 11 (1.3%), b_tie_ro: 10 (1.2%), parse: 1.28
 (0.1%), extract_message_metadata: 15 (1.7%), get_uri_detail_list: 3.5
 (0.4%), tests_pri_-1000: 5 (0.6%), tests_pri_-950: 1.34 (0.2%),
 tests_pri_-900: 1.03 (0.1%), tests_pri_-90: 89 (10.4%), check_bayes:
 88 (10.2%), b_tokenize: 10 (1.2%), b_tok_get_all: 11 (1.2%),
 b_comp_prob: 3.2 (0.4%), b_tok_touch_all: 61 (7.0%), b_finish: 0.86
 (0.1%), tests_pri_0: 719 (83.3%), check_dkim_signature: 0.62 (0.1%),
 check_dkim_adsp: 6 (0.7%), poll_dns_idle: 0.28 (0.0%), tests_pri_10:
 3.0 (0.3%), tests_pri_500: 13 (1.5%), rewrite_mail: 0.00 (0.0%)
Subject: Re: [PATCH 0/3] kexec/memory_hotplug: Prevent removal and accidental
 use
X-Spam-Flag: No
X-SA-Exim-Version: 4.2.1 (built Thu, 05 May 2016 13:38:54 -0600)
X-SA-Exim-Scanned: Yes (on in01.mta.xmission.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_060733_387540_493130E5 
X-CRM114-Status: GOOD (  22.14  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [166.70.13.231 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [166.70.13.231 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 linux-mm@kvack.org, Andrew Morton <akpm@linux-foundation.org>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

James Morse <james.morse@arm.com> writes:

> Hi Eric,
>
> On 15/04/2020 21:29, Eric W. Biederman wrote:
>> James Morse <james.morse@arm.com> writes:
>> 
>>> Hello!
>>>
>>> arm64 recently queued support for memory hotremove, which led to some
>>> new corner cases for kexec.
>>>
>>> If the kexec segments are loaded for a removable region, that region may
>>> be removed before kexec actually occurs. This causes the first kernel to
>>> lockup when applying the relocations. (I've triggered this on x86 too).
>>>
>>> The first patch adds a memory notifier for kexec so that it can refuse
>>> to allow in-use regions to be taken offline.
>>>
>>>
>>> This doesn't solve the problem for arm64, where the new kernel must
>>> initially rely on the data structures from the first boot to describe
>>> memory. These don't describe hotpluggable memory.
>>> If kexec places the kernel in one of these regions, it must also provide
>>> a DT that describes the region in which the kernel was mapped as memory.
>>> (and somehow ensure its always present in the future...)
>>>
>>> To prevent this from happening accidentally with unaware user-space,
>>> patches two and three allow arm64 to give these regions a different
>>> name.
>>>
>>> This is a change in behaviour for arm64 as memory hotadd and hotremove
>>> were added separately.
>>>
>>>
>>> I haven't tried kdump.
>>> Unaware kdump from user-space probably won't describe the hotplug
>>> regions if the name is different, which saves us from problems if
>>> the memory is no longer present at kdump time, but means the vmcore
>>> is incomplete.
>>>
>>>
>>> These patches are based on arm64's for-next/core branch, but can all
>>> be merged independently.
>> 
>> So I just looked through these quickly and I think there are real
>> problems here we can fix, and that are worth fixing.
>> 
>> However I am not thrilled with the fixes you propose.
>
> Sure. Unfortunately /proc/iomem is the only trick arm64 has to keep the existing
> kexec-tools working.
> (We've had 'unthrilling' patches like this before to prevent user-space from loading the
> kernel over the top of the in-memory firmware tables.)
>
> arm64 expects the description of memory to come from firmware, be that UEFI for memory
> present at boot, or the ACPI AML methods for memory that was added
> later.
>
> On arm64 there is no standard location for memory. The kernel has to be handed a pointer
> to the firmware tables that describe it. The kernel expects to boot from memory that was
> present at boot.

What do you do when the firmware is wrong?  Does arm64 support the
mem=xxx@yyy kernel command line options?

If you want to handle the general case of memory hotplug having a
limitation that you have to boot from memory that was present at boot is
a bug, because the memory might not be there.

> Modifying the firmware tables at runtime doesn't solve the problem as we may need to move
> the firmware-reserved memory region that describes memory. User-space may still load and
> kexec either side of that update.
>
> Even if we could modify the structures at runtime, we can't update a loaded kexec image.
> We have no idea which blob from userspace is the DT. It may not even be linux that has
> been loaded.

What can be done and very reasonably so is on memory hotplug:
- Unloaded any loaded kexec image.
- Block loading any new image until the hotplug operation completes.

That is simple and generic, and can be done for all architectures.

This doesn't apply to kexec on panic kernel because it fundamentally
needs to figure out how to limp along (or reliably stop) when it has the
wrong memory map.

> We can't emulate parts of UEFI's handover because kexec's purgatory
> isn't an EFI program.

Plus much of EFI is unusable after ExitBootServices is called.

> I can't see a path through all this. If we have to modify existing user-space, I'd rather
> leave it broken. We can detect the problem in the arch code and print a warning at load time.

The weirdest thing to me in all of this is that you have been wanting to
handle memory hotplug.  But you don't want to change or deal with the
memory map changing when hotplug occurs.  The memory map changing is
fundamentally memory hotplug does.

So I think it is fundamental to figure out how to pass the updated
memory map.  Either through command line mem=xxx@yyy command line
options or through another option.

If you really want to keep the limitation that you have to have the
kernel in the initial memory map you can compare that map to the
efi tables when selecting the load address.

Expecting userspace to reload the loaded kernel after memory hotplug is
completely reasonable.

Unless I am mistaken memory hotplug is expected to be a rare event not
something that happens every day, certainly not something that happens
every minute.

Eric



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
