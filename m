Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72BD01CCB46
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 10 May 2020 15:07:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=APTSP5oWPqaAHNQlcfQaDx/a1bgscdCjh/ClCnIB3jo=; b=G56akP3gmxt71C
	N0RGWqrJ6uIhMiHvqKQRAA+iysio7BXLUa3pqqLKcDk3/DqakqkItpL3sMEkP2oWIhDG3Z6mwGH9t
	CRZeslReG3PcOqriVripWfAP04AjqaMHVx6dkbbJpIfuYAtcZHXHckltSVPknYzinJFZslP2TAEfD
	Ojh9AularSNNHLooESoL3eULhuOlMDCixA8rFF5tkCo70RLtrA6U7uPQnLAKUgiBEn59mQPI1On8R
	bGTUQpIQhpyThjpcGgumCl7g5HbXZ6ICMxd+1cqUNopNc5VxmPuFpOeRs/19Wy8uC5+l//6RiJn9l
	//pu21V8X1HHsnu65RnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXlfg-00038n-Sc; Sun, 10 May 2020 13:07:08 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXlfY-00037z-Jw
 for linux-arm-kernel@lists.infradead.org; Sun, 10 May 2020 13:07:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589116018;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=zn8phY1eUuG85M8J+rkrnBbdy6ngc2Zuh3XucQHcmE0=;
 b=G5iUDSqCcwxzXpBH7eBlI1ieoThugqMWcUSztiF6HALG68tQd4PG9/3HUZo+PfBqq2LvnL
 xA/HBJkmwfomKaHzIe6sWajmplwRpOQscdnO90AZPeT7pY/2cjZTM8WA+k5colyRZbFZbr
 zbo9mOgKjxvfwSdBpa3HYeFAJyjv3lc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-166-mDPZA4fiNgK4Zyaaw5aQGQ-1; Sun, 10 May 2020 09:06:56 -0400
X-MC-Unique: mDPZA4fiNgK4Zyaaw5aQGQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0FD0A80058A;
 Sun, 10 May 2020 13:06:55 +0000 (UTC)
Received: from localhost (ovpn-12-30.pek2.redhat.com [10.72.12.30])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B2F3B60BF3;
 Sun, 10 May 2020 13:06:48 +0000 (UTC)
Date: Sun, 10 May 2020 21:06:46 +0800
From: Baoquan He <bhe@redhat.com>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH] kexec: Discard loaded image on memory hotplug
Message-ID: <20200510130646.GA4922@MiWiFi-R3L-srv>
References: <20200501165701.24587-1-james.morse@arm.com>
MIME-Version: 1.0
In-Reply-To: <20200501165701.24587-1-james.morse@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_060700_731404_5424402E 
X-CRM114-Status: GOOD (  24.18  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: David Hildenbrand <david@redhat.com>, kexec@lists.infradead.org,
 linux-mm@kvack.org, Eric Biederman <ebiederm@xmission.com>,
 Dave Young <dyoung@redhat.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,

On 05/01/20 at 05:57pm, James Morse wrote:
> On x86, the kexec payload contains a copy of the current memory map.
> If memory is added or removed, this copy of the memory map becomes
> stale. Getting this wrong may prevent the next kernel from booting.
> The first kernel may die if it tries to re-assemble the next kernel
> in memory that has been removed.
> 
> Discard the loaded kexec image when the memory map changes, user-space
> should reload it.

As we have discarded in your patches thread, adding a kexec service to
reload kexec should fix this. Do you mean there's still another issue
that we need fix? I may not get it clearly.

> 
> Kdump is unaffected, as it is placed within the crashkernel reserved
> memory area and only uses this memory. The stale memory map may affect
> generation of the vmcore, but the kdump kernel should be in a position
> to validate it.
> 
> Signed-off-by: James Morse <james.morse@arm.com>
> ---
> This patch obsoletes:
>  * kexec/memory_hotplug: Prevent removal and accidental use
> https://lore.kernel.org/linux-arm-kernel/20200326180730.4754-1-james.morse@arm.com/
> 
>  kernel/kexec_core.c | 40 ++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 40 insertions(+)
> 
> diff --git a/kernel/kexec_core.c b/kernel/kexec_core.c
> index c19c0dad1ebe..e1901e5bd4b5 100644
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
> @@ -1219,3 +1222,40 @@ void __weak arch_kexec_protect_crashkres(void)
>  
>  void __weak arch_kexec_unprotect_crashkres(void)
>  {}
> +
> +/*
> + * If the memory layout changes, any loaded kexec image should be evicted
> + * as it may contain a copy of the (now stale) memory map. This also means
> + * we don't need to check the memory is still present when re-assembling the
> + * new kernel at machine_kexec() time.
> + */
> +static int mem_change_cb(struct notifier_block *nb, unsigned long action,
> +			 void *data)
> +{
> +	/*
> +	 * Actions are either a change, or a change being cancelled.
> +	 * A second discard for 'cancel's is harmless.
> +	 */
> +
> +	mutex_lock(&kexec_mutex);
> +	if (kexec_image) {
> +		kimage_free(xchg(&kexec_image, NULL));
> +		pr_warn("loaded image discarded due to memory hotplug");
> +	}
> +	mutex_unlock(&kexec_mutex);
> +
> +	return NOTIFY_DONE;
> +}
> +
> +static struct notifier_block mem_change_nb = {
> +	.notifier_call = mem_change_cb,
> +};
> +
> +static int __init register_mem_change_cb(void)
> +{
> +	if (IS_ENABLED(CONFIG_MEMORY_HOTPLUG))
> +		return register_memory_notifier(&mem_change_nb);
> +
> +	return 0;
> +}
> +device_initcall(register_mem_change_cb);
> -- 
> 2.26.1
> 
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
