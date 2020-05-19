Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A45231D9A32
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 16:41:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DD9VOpXAIGG8P96FMlYCbOdbT5GBsYlot5LzDewIG9g=; b=urjl1J8wTsIjP2
	Iyiw5VH+XPsMbbauoxgJIs1xj0W2McvUSLjG7eAk16gz1vuDD5D0n9zdwQLrh/pQy334ZFVUi4tQS
	qSN/V4eA+ZK1nFMT2PS4TcrmxsNgajz6cD6Q8Wex4tWttJfHtHFWvub7PsT31vKsROueUx5i+Irvr
	224FLm3MDGXxCmXLKmX6si4ExBOcgoNbcLWiKkniPsNHP29YyrgOP4+sQxxYqP+jQ9Jyrub2ThhVi
	qacToq/UDZ+1VGmPrTwUOn+0T5hM7rUU56lCLERjmO94gu8ZUFiDzyxEn22C7UksH8cpDb02ZaVZl
	WzYg6eWOnsTKTabSwqwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb3Qu-0002FY-3d; Tue, 19 May 2020 14:41:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb3IQ-0006p9-OY
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 14:32:44 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2783220709;
 Tue, 19 May 2020 14:32:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589898761;
 bh=8dRoY75gctTa3FpzlxULfGi/mY+xKfG+ht4//YeYnwE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uyXZhbfNBn5T/oaMo0WvrPoYavYZP3al02qsZk9krMsP9VtmmbuJI9pnvMzay0zzK
 7oymW7k/g2FTN0NqZ20t6w8BMj8n4JHfVb12qtGHsKdqMzrhCtWKrVb2khqjdwp+uq
 vYk9gYlzYVgt04c1muZ6aZ20Yg5gj2QF3tg39fs8=
Date: Tue, 19 May 2020 16:32:39 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH 21/23] coresight: etm4x: Fix use-after-free of per-cpu
 etm drvdata
Message-ID: <20200519143239.GA704887@kroah.com>
References: <20200518180242.7916-1-mathieu.poirier@linaro.org>
 <20200518180242.7916-22-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200518180242.7916-22-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_073242_908101_78983EE9 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 12:02:40PM -0600, Mathieu Poirier wrote:
> From: Suzuki K Poulose <suzuki.poulose@arm.com>
> 
> etm probe could be deferred due to the dependency in the trace
> path chain and may be retried. We need to clear the per-cpu
> etmdrvdata entry for the etm in case of a failure to avoid
> use-after-free cases as reported below:
> 
> KASAN use-after-free bug in etm4_cpu_pm_notify():
> 
> [    8.574566] coresight etm0: CPU0: ETM v4.2 initialized
> [    8.581920] BUG: KASAN: use-after-free in etm4_cpu_pm_notify+0x580/0x2024
> [    8.581925] Read of size 8 at addr ffffff813304f8c8 by task swapper/3/0
> [    8.581927]
> [    8.581934] CPU: 3 PID: 0 Comm: swapper/3 Tainted: G S      W         5.4.28 #314
> [    8.587775] coresight etm1: CPU1: ETM v4.2 initialized
> [    8.594195] Call trace:
> [    8.594205]  dump_backtrace+0x0/0x188
> [    8.594209]  show_stack+0x20/0x2c
> [    8.594216]  dump_stack+0xdc/0x144
> [    8.594227]  print_address_description+0x3c/0x494
> [    8.594232]  __kasan_report+0x144/0x168
> [    8.601598] coresight etm2: CPU2: ETM v4.2 initialized
> [    8.602563]  kasan_report+0x10/0x18
> [    8.602568]  check_memory_region+0x1a4/0x1b4
> [    8.602572]  __kasan_check_read+0x18/0x24
> [    8.602577]  etm4_cpu_pm_notify+0x580/0x2024
> [    8.665945]  notifier_call_chain+0x5c/0x90
> [    8.670166]  __atomic_notifier_call_chain+0x90/0xf8
> [    8.675182]  cpu_pm_notify+0x40/0x6c
> [    8.678858]  cpu_pm_enter+0x38/0x80
> [    8.682451]  psci_enter_idle_state+0x34/0x70
> [    8.686844]  cpuidle_enter_state+0xb8/0x20c
> [    8.691143]  cpuidle_enter+0x38/0x4c
> [    8.694820]  call_cpuidle+0x3c/0x68
> [    8.698408]  do_idle+0x1a0/0x280
> [    8.701729]  cpu_startup_entry+0x24/0x28
> [    8.705768]  secondary_start_kernel+0x15c/0x170
> [    8.710423]
> [    8.711972] Allocated by task 242:
> [    8.715473]  __kasan_kmalloc+0xf0/0x1ac
> [    8.719426]  kasan_slab_alloc+0x14/0x1c
> [    8.723375]  __kmalloc_track_caller+0x23c/0x388
> [    8.728040]  devm_kmalloc+0x38/0x94
> [    8.731632]  etm4_probe+0x48/0x3c8
> [    8.735140]  amba_probe+0xbc/0x158
> [    8.738645]  really_probe+0x144/0x408
> [    8.742412]  driver_probe_device+0x70/0x140
> [    8.746716]  __device_attach_driver+0x9c/0x110
> [    8.751287]  bus_for_each_drv+0x90/0xd8
> [    8.755236]  __device_attach+0xb4/0x164
> [    8.759188]  device_initial_probe+0x20/0x2c
> [    8.763490]  bus_probe_device+0x34/0x94
> [    8.767436]  device_add+0x34c/0x3e0
> [    8.771029]  amba_device_try_add+0x68/0x440
> [    8.775332]  amba_deferred_retry_func+0x48/0xc8
> [    8.779997]  process_one_work+0x344/0x648
> [    8.784127]  worker_thread+0x2ac/0x47c
> [    8.787987]  kthread+0x128/0x138
> [    8.791313]  ret_from_fork+0x10/0x18
> [    8.794993]
> [    8.796532] Freed by task 242:
> [    8.799684]  __kasan_slab_free+0x15c/0x22c
> [    8.803897]  kasan_slab_free+0x10/0x1c
> [    8.807761]  kfree+0x25c/0x4bc
> [    8.810913]  release_nodes+0x240/0x2b0
> [    8.814767]  devres_release_all+0x3c/0x54
> [    8.818887]  really_probe+0x178/0x408
> [    8.822661]  driver_probe_device+0x70/0x140
> [    8.826963]  __device_attach_driver+0x9c/0x110
> [    8.831539]  bus_for_each_drv+0x90/0xd8
> [    8.835487]  __device_attach+0xb4/0x164
> [    8.839431]  device_initial_probe+0x20/0x2c
> [    8.843732]  bus_probe_device+0x34/0x94
> [    8.847678]  device_add+0x34c/0x3e0
> [    8.851274]  amba_device_try_add+0x68/0x440
> [    8.855576]  amba_deferred_retry_func+0x48/0xc8
> [    8.860240]  process_one_work+0x344/0x648
> [    8.864366]  worker_thread+0x2ac/0x47c
> [    8.868228]  kthread+0x128/0x138
> [    8.871557]  ret_from_fork+0x10/0x18
> [    8.875231]
> [    8.876782] The buggy address belongs to the object at ffffff813304f800
> [    8.876782]  which belongs to the cache kmalloc-1k of size 1024
> [    8.889632] The buggy address is located 200 bytes inside of
> [    8.889632]  1024-byte region [ffffff813304f800, ffffff813304fc00)
> [    8.901761] The buggy address belongs to the page:
> [    8.906695] page:ffffffff04ac1200 refcount:1 mapcount:0 mapping:ffffff8146c03800 index:0x0 compound_mapcount: 0
> [    8.917047] flags: 0x4000000000010200(slab|head)
> [    8.921799] raw: 4000000000010200 dead000000000100 dead000000000122 ffffff8146c03800
> [    8.929753] raw: 0000000000000000 0000000000100010 00000001ffffffff 0000000000000000
> [    8.937703] page dumped because: kasan: bad access detected
> [    8.943433]
> [    8.944974] Memory state around the buggy address:
> [    8.949903]  ffffff813304f780: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
> [    8.957320]  ffffff813304f800: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
> [    8.964742] >ffffff813304f880: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
> [    8.972157]                                               ^
> [    8.977886]  ffffff813304f900: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
> [    8.985298]  ffffff813304f980: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
> [    8.992713] ==================================================================
> 
> Fixes: f188b5e76aae9 ( "coresight: etm4x: Save/restore state across CPU low power states ")

Nit, this should be:
Fixes: f188b5e76aae ("coresight: etm4x: Save/restore state across CPU low power states")

The extra ' ' characters messed with my script checks :(

I'll fix it up by hand...

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
