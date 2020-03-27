Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F3B6194ECD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 03:12:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F7O7ymBgAV3wB5DYgtXGlSDD18/nl4nmiCvYElJrlN0=; b=hBlkdyVklKHIN1
	7MxupWepxVQ/xKlH6+I9rsSmmKvKLTLSsMIe4asgou6zIr99nVhvrEke2Kckor5PVqOCa83CxjNin
	llzdix2yXS40Diks7lnzOwDoI0jifiEoYBG0PtREs99SwgKCxZukuRWtqwo80n9pCayfqw1b8rtkD
	vC4J57qt9/6jox6fCk1pxeMT1MYt6orUL4bvSM5TOBTfngm9joWRgFEpIQzze5GMI2A38yQIEiSAz
	o445xS64ghPIQDG8/H0L1y7/+OZtPeac/zVqW9pAyl2cvcpC1iwxk53OMXKvl4hvYvRMECZG/XOA0
	vhFvlUWyIvHZ1oVsmsxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHeTU-0000B2-R0; Fri, 27 Mar 2020 02:11:56 +0000
Received: from us-smtp-delivery-74.mimecast.com ([63.128.21.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHeTK-0000A0-Vo
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 02:11:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585275104;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=sbvFtCf85KjSulH0Bc2qbNSx5w8nx9pPYQwDbWgAZV8=;
 b=DLen94jUFGe/vuCI1+ez9DMw2F3xm8meCxswTrTjhCmmtShpYM+WhFdGaAFfcgnKJ0ljmb
 soei5Orkd43kfAD8guakJovqSsjvgTa4jWvrLLkFHYX4FZw0okfv+1Vxp/snaPFmnYHMDv
 poIAAwKju85P8uiRAUdbGAEUTvsJslo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-142-NBt8rRX-MWGT0URuP-JueQ-1; Thu, 26 Mar 2020 22:11:40 -0400
X-MC-Unique: NBt8rRX-MWGT0URuP-JueQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 36244107ACC7;
 Fri, 27 Mar 2020 02:11:39 +0000 (UTC)
Received: from localhost (ovpn-12-80.pek2.redhat.com [10.72.12.80])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 6B1E619C70;
 Fri, 27 Mar 2020 02:11:38 +0000 (UTC)
Date: Fri, 27 Mar 2020 10:11:35 +0800
From: Baoquan He <bhe@redhat.com>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH 0/3] kexec/memory_hotplug: Prevent removal and accidental
 use
Message-ID: <20200327021135.GN3039@MiWiFi-R3L-srv>
References: <20200326180730.4754-1-james.morse@arm.com>
MIME-Version: 1.0
In-Reply-To: <20200326180730.4754-1-james.morse@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_191147_096665_E841373B 
X-CRM114-Status: GOOD (  22.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.128.21.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On 03/26/20 at 06:07pm, James Morse wrote:
> Hello!
> 
> arm64 recently queued support for memory hotremove, which led to some
> new corner cases for kexec.
> 
> If the kexec segments are loaded for a removable region, that region may
> be removed before kexec actually occurs. This causes the first kernel to
> lockup when applying the relocations. (I've triggered this on x86 too).

Do you mean you use 'kexec -l /boot/vmlinuz-xxxx --initrd ...' to load a
kernel, next you hot remove some memory regions, then you execute
'kexec -e' to trigger kexec reboot?

I may not get the point clearly, but we usually do the loading and
triggering of kexec-ed kernel at the same time. 

> 
> The first patch adds a memory notifier for kexec so that it can refuse
> to allow in-use regions to be taken offline.
> 
> 
> This doesn't solve the problem for arm64, where the new kernel must
> initially rely on the data structures from the first boot to describe
> memory. These don't describe hotpluggable memory.
> If kexec places the kernel in one of these regions, it must also provide
> a DT that describes the region in which the kernel was mapped as memory.
> (and somehow ensure its always present in the future...)
> 
> To prevent this from happening accidentally with unaware user-space,
> patches two and three allow arm64 to give these regions a different
> name.
> 
> This is a change in behaviour for arm64 as memory hotadd and hotremove
> were added separately.
> 
> 
> I haven't tried kdump.
> Unaware kdump from user-space probably won't describe the hotplug
> regions if the name is different, which saves us from problems if
> the memory is no longer present at kdump time, but means the vmcore
> is incomplete.

Currently, we will monitor udev events of mem hot add/remove, then
reload kdump kernel. That reloading is only update the elfcorehdr,
because crashkernel has to be reserved during 1st kernel bootup. I don't
think this will have problem.

> 
> 
> These patches are based on arm64's for-next/core branch, but can all
> be merged independently.
> 
> Thanks,
> 
> James Morse (3):
>   kexec: Prevent removal of memory in use by a loaded kexec image
>   mm/memory_hotplug: Allow arch override of non boot memory resource
>     names
>   arm64: memory: Give hotplug memory a different resource name
> 
>  arch/arm64/include/asm/memory.h | 11 +++++++
>  kernel/kexec_core.c             | 56 +++++++++++++++++++++++++++++++++
>  mm/memory_hotplug.c             |  6 +++-
>  3 files changed, 72 insertions(+), 1 deletion(-)
> 
> -- 
> 2.25.1
> 
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
