Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 799D91263DF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 14:46:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bWnNg9WO1jaLT7+MYar1yOKGDe1eV7UNUIcqe01EBAA=; b=BFJAV/9UYFeppK
	i0+tPA1CYB6f5NGEnao/WGQLiyA1Q7Zt5/DDseMcclZI2a53tdtd+vvubeZm5UCzPtAFrKtbNBccx
	Eajm1rOxaEutWfnhLeIXq9vfIypcQX5jN6UTHu6V37GxtfljXNu7gRH11L3l5RU25YpxWIIE67HkY
	yeyPmykOZpgLsYZY2d4wevpxKXjL34xblutKnXLT+DhOA+D8z5UAav5RdnDGHtoO6UOYCo5KOlFM0
	itwXJ2e13tiW0ys3UCoXCIkMlxCnpa0LeCG92Dz6FBd8SpQ0HBy43JKJQ6arrOIjhhoXOTOqgtKr7
	I0sh9356V6PqSKwNfosQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihw8O-0003sw-2m; Thu, 19 Dec 2019 13:46:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihw8G-0003s5-Np
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 13:46:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E151131B;
 Thu, 19 Dec 2019 05:46:22 -0800 (PST)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A8C063F6CF;
 Thu, 19 Dec 2019 05:46:20 -0800 (PST)
Subject: Re: [PATCH 7/7] KVM: arm/arm64: Elide CMOs when unmapping a range
To: Marc Zyngier <maz@kernel.org>
References: <20191213182503.14460-1-maz@kernel.org>
 <20191213182503.14460-8-maz@kernel.org>
 <0c832b27-7041-a6c8-31c0-d71a25c6f5b8@arm.com>
 <de462fe29fb40fb1644e6a071e6c0c69@www.loen.fr>
From: James Morse <james.morse@arm.com>
Message-ID: <01c9439f-0de1-78ca-632b-f662876cc4a1@arm.com>
Date: Thu, 19 Dec 2019 13:46:19 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <de462fe29fb40fb1644e6a071e6c0c69@www.loen.fr>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_054624_818696_44F99A68 
X-CRM114-Status: GOOD (  13.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: kvm-ppc@vger.kernel.org, Wanpeng Li <wanpengli@tencent.com>,
 kvm@vger.kernel.org, =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?= <rkrcmar@redhat.com>,
 James Hogan <jhogan@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-mips@vger.kernel.org,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 Paul Mackerras <paulus@ozlabs.org>, linux-arm-kernel@lists.infradead.org,
 Paolo Bonzini <pbonzini@redhat.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 18/12/2019 15:30, Marc Zyngier wrote:
> On 2019-12-18 15:07, James Morse wrote:
>> On 13/12/2019 18:25, Marc Zyngier wrote:
>>> If userspace issues a munmap() on a set of pages, there is no
>>> expectation that the pages are cleaned to the PoC.

>>> So let's
>>> not do more work than strictly necessary, and set the magic
>>> flag that avoids CMOs in this case.
>>
>> I think this assumes the pages went from anonymous->free, so no-one
>> cares about the contents.
>>
>> If the pages are backed by a file, won't dirty pages will still get
>> written back before the page is free? (e.g. EFI flash 'file' mmap()ed in)
> 
> I believe so. Is that a problem?

If we skipped the dcache maintenance on unmap, when the the dirty page is later reclaimed
the clean+stale lines are written back to the file. File-backed dirty pages will stick
around in the page cache in the hope someone else needs them.

This would happen for a guest:device-mapping that is written to, but is actually backed by
a mmap()d file. I think the EFI flash emulation does exactly this.


>> What if this isn't the only mapping of the page? Can't it be swapped
>> out from another VMA? (tenuous example, poor man's memory mirroring?)
> 
> Swap-out wouldn't trigger this code path, as it would use a different
> MMU notifier event (MMU_NOTIFY_CLEAR vs MMU_NOTIFY_UNMAP), I believe.

This was a half thought-through special case of the above. The sequence would be:

VM-A and VM-B both share a mapping of $page.

1. VM-A writes to $page through a device mapping
2. The kernel unmaps $page from VM-A for swap. KVM does the maintenance

3. VM-B writes to $page through a device mapping
4. VM-B exits, KVM skips the maintenance, $page may have clean+stale lines

5. Swap finds no further mappings, and writes $page and its clean+stale lines to disk.

Two VMs with a shared mapping is the 'easy' example. I think you just need a second
mapping for this to happen: it means the page isn't really free after the VM has exited.



Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
