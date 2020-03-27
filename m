Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 699A7194F17
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 03:35:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ev+4sfmejXOqR4xZzcAAbffIO8iYbq7iSbbxwgxBG28=; b=Z2dC+TOFQObEeP
	mdX7yAXV7RC3JZfgxWx0C7OU+K0KpqgESLYrReEsUdaHYen1zYH7txwLZxD5MbaFg/Cqi396a2Wvr
	ie4qSlxKtLUodCu8cOvGmE5t572RcF1QHyhxom5NiHKSgJcPeLfepwhJEtUEV2EVPGmshvJ8C5Hee
	goLjIhrp4MhpgD+6aA52D+BchyEm4gOKseIblu3SMiyIqamH1cw2LXWA8iUlKBjnyj7wApq5YT3Y5
	tHeWIBLozyyWhQMds78uHrLtKYsDNbq6xbrstfHM8F6vMf+iroaC9lnaaDlxPjC9IzMabCPNWvBSJ
	97DJTyfxHfZXKgzq1vng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHepm-0008Jw-AK; Fri, 27 Mar 2020 02:34:58 +0000
Received: from us-smtp-delivery-74.mimecast.com ([63.128.21.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHepb-0008J5-98
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 02:34:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585276486;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fV94Jr1a00Ad+U5YFGLNM6S9xxbC/3ub7oqPk8qByeE=;
 b=YITPYQ583boCgF729kH8kvqJohnBpn6t6kWbyLK5wMPFvBn5Jsws2j0OryUDz2LXF9g2Br
 7NEI3VVZQdOG/ctQK2LAfkEj7h48+zjNC7kt9/Oqcqjxr/6tWGk/PKgHMH6UfvZ40CweQ3
 fmW+NBuTxyfCCTTvHcCBpv19xh0Y3/4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-422-e7K05RUdPkODT17ZFxXtXg-1; Thu, 26 Mar 2020 22:34:44 -0400
X-MC-Unique: e7K05RUdPkODT17ZFxXtXg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 17A3F1005509;
 Fri, 27 Mar 2020 02:34:43 +0000 (UTC)
Received: from localhost (ovpn-12-80.pek2.redhat.com [10.72.12.80])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 474C55C219;
 Fri, 27 Mar 2020 02:34:41 +0000 (UTC)
Date: Fri, 27 Mar 2020 10:34:39 +0800
From: Baoquan He <bhe@redhat.com>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH 1/3] kexec: Prevent removal of memory in use by a loaded
 kexec image
Message-ID: <20200327023439.GO3039@MiWiFi-R3L-srv>
References: <20200326180730.4754-1-james.morse@arm.com>
 <20200326180730.4754-2-james.morse@arm.com>
MIME-Version: 1.0
In-Reply-To: <20200326180730.4754-2-james.morse@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_193447_401794_0ADA8D9F 
X-CRM114-Status: GOOD (  19.56  )
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
> An image loaded for kexec is not stored in place, instead its segments
> are scattered through memory, and are re-assembled when needed. In the
> meantime, the target memory may have been removed.
> 
> Because mm is not aware that this memory is still in use, it allows it
> to be removed.
> 
> Add a memory notifier to prevent the removal of memory regions that
> overlap with a loaded kexec image segment. e.g., when triggered from the
> Qemu console:
> | kexec_core: memory region in use
> | memory memory32: Offline failed.

As I replied to the cover letter, usually we do loading and juming of
kexec-ed kernel at one time. If we expect to do both of them at
different time, I agree we should do something to make thing safer if
someone really want to do since it's allowed, can we do anything with
the existing notifier?

Mem hotplug has got a notifier to notice it will offline a memory
region.
memory_notify(MEM_OFFLINE, &arg);

> 
> Signed-off-by: James Morse <james.morse@arm.com>
> ---
>  kernel/kexec_core.c | 56 +++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 56 insertions(+)
> 
> diff --git a/kernel/kexec_core.c b/kernel/kexec_core.c
> index c19c0dad1ebe..ba1d91e868ca 100644
> --- a/kernel/kexec_core.c
> +++ b/kernel/kexec_core.c
> @@ -12,6 +12,7 @@
>  #include <linux/slab.h>
>  #include <linux/fs.h>
>  #include <linux/kexec.h>
> +#include <linux/memory.h>
>  #include <linux/mutex.h>
>  #include <linux/list.h>
>  #include <linux/highmem.h>
> @@ -22,10 +23,12 @@
>  #include <linux/elf.h>
>  #include <linux/elfcore.h>
>  #include <linux/utsname.h>
> +#include <linux/notifier.h>
>  #include <linux/numa.h>
>  #include <linux/suspend.h>
>  #include <linux/device.h>
>  #include <linux/freezer.h>
> +#include <linux/pfn.h>
>  #include <linux/pm.h>
>  #include <linux/cpu.h>
>  #include <linux/uaccess.h>
> @@ -1219,3 +1222,56 @@ void __weak arch_kexec_protect_crashkres(void)
>  
>  void __weak arch_kexec_unprotect_crashkres(void)
>  {}
> +
> +/*
> + * If user-space wants to offline memory that is in use by a loaded kexec
> + * image, it should unload the image first.
> + */
> +static int mem_remove_cb(struct notifier_block *nb, unsigned long action,
> +			 void *data)
> +{
> +	int rv = NOTIFY_OK, i;
> +	struct memory_notify *arg = data;
> +	unsigned long pfn = arg->start_pfn;
> +	unsigned long nr_segments, sstart, send;
> +	unsigned long end_pfn = arg->start_pfn + arg->nr_pages;
> +
> +	might_sleep();
> +
> +	if (action != MEM_GOING_OFFLINE)
> +		return NOTIFY_DONE;
> +
> +	mutex_lock(&kexec_mutex);
> +	if (kexec_image) {
> +		nr_segments = kexec_image->nr_segments;
> +
> +		for (i = 0; i < nr_segments; i++) {
> +			sstart = PFN_DOWN(kexec_image->segment[i].mem);
> +			send = PFN_UP(kexec_image->segment[i].mem +
> +				      kexec_image->segment[i].memsz);
> +
> +			if ((pfn <= sstart && sstart < end_pfn) ||
> +			    (pfn <= send && send < end_pfn)) {
> +				pr_warn("Memory region in use\n");
> +				rv = NOTIFY_BAD;
> +				break;
> +			}
> +		}
> +	}
> +	mutex_unlock(&kexec_mutex);
> +
> +	return rv;
> +}
> +
> +static struct notifier_block mem_remove_nb = {
> +	.notifier_call = mem_remove_cb,
> +};
> +
> +static int __init register_mem_remove_cb(void)
> +{
> +	if (IS_ENABLED(CONFIG_MEMORY_HOTPLUG))
> +		return register_memory_notifier(&mem_remove_nb);
> +
> +	return 0;
> +}
> +device_initcall(register_mem_remove_cb);
> -- 
> 2.25.1
> 
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
