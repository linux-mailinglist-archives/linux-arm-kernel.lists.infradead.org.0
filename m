Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BEB2197C5F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 15:01:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vET0UAxQxzHkrh58nj/UkaEZq0I4KsYvnrCU/Y+tFnE=; b=ou2zxMUtuGfa09
	0y36oEIBM5FtU8AuOib8gk0udIqOH7CcxD4lUMCNOVt4jDnZ24YJ9YfLs/uYi+Vl9jFmb+5er2F+F
	XMcjdyaKJUbwRy82EMKmL+f8990dGAnDWvuNYpC7AlFZbKde6YwWYeERh+ryrmsew9SQ2ohpW+1SL
	q1+PymiJUiZHA/IZxWRjzg4xbveYxZRLHFk2K2MwmdztqRFbGAviQ2qw4uDRFt+pp+khUGdruVAjf
	VUvL8ov868BiUesXqsPs1Eg1Z9fLU16TPrbDJ5EKMbxts/6XEghjuj1Fr8tzbDRqwW+JZE4f1SM0T
	Pwy/KdiD2cqRS0+XK4+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIu2X-0007EB-EG; Mon, 30 Mar 2020 13:01:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIu2K-0007Cz-V3; Mon, 30 Mar 2020 13:01:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 660BC30E;
 Mon, 30 Mar 2020 06:01:03 -0700 (PDT)
Received: from [172.16.1.108] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A4CA33F71E;
 Mon, 30 Mar 2020 06:01:01 -0700 (PDT)
Subject: Re: [PATCH 1/3] kexec: Prevent removal of memory in use by a loaded
 kexec image
To: David Hildenbrand <david@redhat.com>
References: <20200326180730.4754-1-james.morse@arm.com>
 <20200326180730.4754-2-james.morse@arm.com>
 <321e6bf7-e898-7701-dd60-6c25237ff9cd@redhat.com>
 <a21d90ea-2566-a2bc-ad2f-6464a416c97f@arm.com>
 <9cb4ea0d-34c3-de42-4b3f-ee25a59c4835@redhat.com>
 <b0443908-e36f-9bc4-4a8a-4206cb782d4b@arm.com>
 <72672e2c-a57a-8df9-0cff-8035cbce7740@redhat.com>
From: James Morse <james.morse@arm.com>
Openpgp: preference=signencrypt
Message-ID: <34274b02-60ba-eb78-eacd-6dc1146ed3cd@arm.com>
Date: Mon, 30 Mar 2020 14:00:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <72672e2c-a57a-8df9-0cff-8035cbce7740@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_060105_087664_4EADC632 
X-CRM114-Status: GOOD (  29.16  )
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
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi David,

On 3/27/20 6:52 PM, David Hildenbrand wrote:
>>> 2. You do the kexec. The kexec kernel will only operate on a reserved
>>> memory region (reserved via e.g., kernel cmdline crashkernel=128M).
>>
>> I think you are merging the kexec and kdump behaviours.
>> (Wrong terminology? The things behind 'kexec -l Image' and 'kexec -p Image')
> 
> Oh, I see - I think your example below clarifies things. Something like
> that should go in the cover letter if we end up in this patch being
> required :)

Do you mean the commit message? I think its far too long...

Adding a sentence about the way kexec load works may help, the first paragraph
would read:

| Kexec allows user-space to specify the address that the kexec image should be
| loaded to. Because this memory may be in use, an image loaded for kexec is not
| stored in place, instead its segments are scattered through memory, and are
| re-assembled when needed. In the meantime, the target memory may have been
| removed.

Do you think thats clearer?


> (I missed that the problematic part is "random" addresses passed by user
> space to the kernel, where it wants data to be loaded to on kexec -e)

[...]

>> Load kexec:
>> | root@vm:/sys/devices/system/memory# kexec -l /root/bzImage --reuse-cmdline
>>
> 
> I assume this will trigger
> 
> kexec_load -> do_kexec_load -> kimage_load_segment ->
> kimage_load_normal_segment -> kimage_alloc_page -> kimage_alloc_pages
> 
> Which will just allocate a bunch of pages and mark them reserved.
> 
> Now, AFAIKs, all allocations will be unmovable. So none of the kexec
> segment allocations will actually end up on your DIMM (as it is onlined
> online_movable).
> 
> So, the loaded image (with its segments) from user won't be problematic
> and not get placed on your DIMM.
> 
> 
> Now, the problematic part is (via man kexec_load) "mem and memsz specify
> a physical address range that is the target of the copy."
> 
> So the place where the image will be "assembled" at when doing the
> reboot. Understood :)

Yup.

[...]

> I wonder if we should instead make the "kexec -e" fail. It tries to
> touch random system memory.

Heh, isn't touching random system memory what kexec does?!

Its all described to user-space as 'System RAM'. Teaching it to probe
/sys/devices/memory/... would require a user-space change.


> Denying to offline MOVABLE memory should be avoided - and what kexec
> does here sounds dangerous to me (allowing it to write random system
> memory).

> Roughly what I am thinking is this:
> 
> diff --git a/kernel/kexec_core.c b/kernel/kexec_core.c
> index ba1d91e868ca..70c39a5307e5 100644
> --- a/kernel/kexec_core.c
> +++ b/kernel/kexec_core.c
> @@ -1135,6 +1135,10 @@ int kernel_kexec(void)
>                 error = -EINVAL;
>                 goto Unlock;
>         }
> +       if (!kexec_image_validate()) {
> +               error = -EINVAL;
> +               goto Unlock;
> +       }
> 
>  #ifdef CONFIG_KEXEC_JUMP
>         if (kexec_image->preserve_context) {
> 
> 
> kexec_image_validate() would go over all segments and validate that the
> involved pages are actual valid memory (pfn_to_online_page()).
> 
> All we have to do is protect from memory hotplug until we switch to the
> new kernel.

(migrate_to_reboot_cpu() can sleep), I think you'd end up with something like
this patch, but only while kexec_in_progress. I don't think letting kexec fail
if the events occur in a different order is good for user-space.


> Will probably need some thought. But it will actually also bail out when
> user space passes wrong physical memory addresses, instead of
> triple-faulting silently.

With this change, the reboot(LINUX_REBOOT_CMD_KEXEC), call would fail. This
thing doesn't usually return, so we're likely to trigger error-handling that has
never run before.

(Last time I debugged one of these, it turned out kexec had taken the network
interfaces down, meaning the nfsroot was no longer accessible)

How can user-space know whether kexec is going to succeed, or fail like this?
Any loaded kexec kernel could secretly be in this broken state.

Can user-space know what caused this to become unreliable? (without reading the
kernel source)


Given kexec can be unloaded by user-space, I think its better to prevent us
getting into the broken state, preferably giving the hint that kexec us using
that memory. The user can 'kexec -u', then retry removing the memory.

I think forbidding the memory-offline is simpler for user-space to deal with.


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
