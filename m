Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB77194F47
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 03:55:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4om/PVI435QUgxjQG2/o0okYkoJXDPtr4YNp30hfvPA=; b=BMCNFa4YYQ+C8P
	rglhWjFvACalsBZ9DB1be5xjF0Dc7rmDkzBsx3I2OhkF4xSA0MVLOHHaWMBBatyWMTvsNF6VW3iR4
	Jmez6eg02xEcE5JpAGs7FYA8gokioVGrTN0TnrItyFSzPmOE3LZgZK18Qy+i/PsHvhP3sDZhCoRrc
	NdlZTl5sFm0/Syitt7PwyXbzWtYU+MX++pt5w+f/AcjmQ/4N2gDMrYDfz1KAH0S9fcHFyqaQY0dUA
	Cl55AajCab2EPuE4Y3YeEYp5p3JSC6Qig7ipluQih6sDrbm1IQkoQ4orrTaQTtux8EtE/YHMONcSQ
	okczXlRKjjrhR81E+kUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHf9U-0000Z1-U8; Fri, 27 Mar 2020 02:55:20 +0000
Received: from us-smtp-delivery-74.mimecast.com ([63.128.21.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHf9L-0000Gw-56
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 02:55:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585277708;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RXXhjv8XaV5MoXTlfuTHZa0hm43kWbxrZ9f07+CK+9c=;
 b=drFsBz8W10A/TjG0YwjEw2F8igDTqe4nv1KDigsHPEROeLV21twnlVLB7lJCDc6XwxgSe3
 AnBEEFzyK6PDm1ws1cHe+LkrUblaraxeYDCHR7+rY+GMqJgKaUyB9FWJIrXz8hUI2uB8lT
 n+ko59Wbc8i55Uqj5Qlc17eOcMxNKmk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-366-f_uJsXkmO_i5WLjxFF676A-1; Thu, 26 Mar 2020 22:55:05 -0400
X-MC-Unique: f_uJsXkmO_i5WLjxFF676A-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 977A7800EBD;
 Fri, 27 Mar 2020 02:55:03 +0000 (UTC)
Received: from localhost (ovpn-12-80.pek2.redhat.com [10.72.12.80])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id CD4A360C18;
 Fri, 27 Mar 2020 02:55:02 +0000 (UTC)
Date: Fri, 27 Mar 2020 10:54:59 +0800
From: Baoquan He <bhe@redhat.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH 1/3] kexec: Prevent removal of memory in use by a loaded
 kexec image
Message-ID: <20200327025459.GP3039@MiWiFi-R3L-srv>
References: <20200326180730.4754-1-james.morse@arm.com>
 <20200326180730.4754-2-james.morse@arm.com>
 <c4764e40-96d5-e2e4-6479-dc8d167e25e0@arm.com>
MIME-Version: 1.0
In-Reply-To: <c4764e40-96d5-e2e4-6479-dc8d167e25e0@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_195511_279120_BA04194B 
X-CRM114-Status: GOOD (  25.41  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, kexec@lists.infradead.org,
 linux-mm@kvack.org, James Morse <james.morse@arm.com>,
 Eric Biederman <ebiederm@xmission.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03/27/20 at 06:13am, Anshuman Khandual wrote:
> 
> 
> On 03/26/2020 11:37 PM, James Morse wrote:
> > An image loaded for kexec is not stored in place, instead its segments
> > are scattered through memory, and are re-assembled when needed. In the
> > meantime, the target memory may have been removed.
> > 
> > Because mm is not aware that this memory is still in use, it allows it
> > to be removed.
> 
> Why the isolation process does not fail when these pages are currently
> being used by kexec ?

That is trick of kexec implementaiton. When loading kexec-ed kernel, it
just reads in the kenrel image in user space, then searches a place
where it's going to put kernel image in the whole system RAM, but won't
put kernel image in the searched region immediately, just book ahead a
room. When you execute 'kexec -e' to trigger kexec jumping, it will copy
kernel image into the booked room. So the booking is only recorded in
kexec's own data structure.

> 
> > 
> > Add a memory notifier to prevent the removal of memory regions that
> > overlap with a loaded kexec image segment. e.g., when triggered from the
> > Qemu console:
> > | kexec_core: memory region in use
> > | memory memory32: Offline failed.
> 
> Yes this is definitely an added protection for these kexec loaded kernels
> memory areas from being offlined but I would have expected the preceding
> offlining to have failed as well.
> 
> > 
> > Signed-off-by: James Morse <james.morse@arm.com>
> > ---
> >  kernel/kexec_core.c | 56 +++++++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 56 insertions(+)
> > 
> > diff --git a/kernel/kexec_core.c b/kernel/kexec_core.c
> > index c19c0dad1ebe..ba1d91e868ca 100644
> > --- a/kernel/kexec_core.c
> > +++ b/kernel/kexec_core.c
> > @@ -12,6 +12,7 @@
> >  #include <linux/slab.h>
> >  #include <linux/fs.h>
> >  #include <linux/kexec.h>
> > +#include <linux/memory.h>
> >  #include <linux/mutex.h>
> >  #include <linux/list.h>
> >  #include <linux/highmem.h>
> > @@ -22,10 +23,12 @@
> >  #include <linux/elf.h>
> >  #include <linux/elfcore.h>
> >  #include <linux/utsname.h>
> > +#include <linux/notifier.h>
> >  #include <linux/numa.h>
> >  #include <linux/suspend.h>
> >  #include <linux/device.h>
> >  #include <linux/freezer.h>
> > +#include <linux/pfn.h>
> >  #include <linux/pm.h>
> >  #include <linux/cpu.h>
> >  #include <linux/uaccess.h>
> > @@ -1219,3 +1222,56 @@ void __weak arch_kexec_protect_crashkres(void)
> >  
> >  void __weak arch_kexec_unprotect_crashkres(void)
> >  {}
> > +
> > +/*
> > + * If user-space wants to offline memory that is in use by a loaded kexec
> > + * image, it should unload the image first.
> > + */
> 
> Probably this would need kexec user manual and related system call man pages
> update as well.
> 
> > +static int mem_remove_cb(struct notifier_block *nb, unsigned long action,
> > +			 void *data)
> > +{
> > +	int rv = NOTIFY_OK, i;
> > +	struct memory_notify *arg = data;
> > +	unsigned long pfn = arg->start_pfn;
> > +	unsigned long nr_segments, sstart, send;
> > +	unsigned long end_pfn = arg->start_pfn + arg->nr_pages;
> > +
> > +	might_sleep();
> 
> Required ?
> 
> > +
> > +	if (action != MEM_GOING_OFFLINE)
> > +		return NOTIFY_DONE;
> > +
> > +	mutex_lock(&kexec_mutex);
> > +	if (kexec_image) {
> > +		nr_segments = kexec_image->nr_segments;
> > +
> > +		for (i = 0; i < nr_segments; i++) {
> > +			sstart = PFN_DOWN(kexec_image->segment[i].mem);
> > +			send = PFN_UP(kexec_image->segment[i].mem +
> > +				      kexec_image->segment[i].memsz);
> > +
> > +			if ((pfn <= sstart && sstart < end_pfn) ||
> > +			    (pfn <= send && send < end_pfn)) {
> > +				pr_warn("Memory region in use\n");
> > +				rv = NOTIFY_BAD;
> > +				break;
> > +			}
> > +		}
> > +	}
> > +	mutex_unlock(&kexec_mutex);
> > +
> > +	return rv;
> 
> Variable 'rv' is redundant, should use NOTIFY_[BAD|OK] directly instead.
> 
> > +}
> > +
> > +static struct notifier_block mem_remove_nb = {
> > +	.notifier_call = mem_remove_cb,
> > +};
> > +
> > +static int __init register_mem_remove_cb(void)
> > +{
> > +	if (IS_ENABLED(CONFIG_MEMORY_HOTPLUG))
> 
> Should not all these new code here be wrapped with CONFIG_MEMORY_HOTREMOVE
> to reduce the scope as well as final code size when the config is disabled.
> 
> > +		return register_memory_notifier(&mem_remove_nb);
> > +
> > +	return 0;
> > +}
> > +device_initcall(register_mem_remove_cb);
> > 
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
