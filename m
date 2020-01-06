Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A1C131521
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 16:48:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LZg5VQbwOOlo264WnFxpgBz5Qk0tVpD9aIzWoLAOIqQ=; b=JxNnDK5c0Vm+UF
	YZIQudo+nGTI75acfosb6LVZdt472B+QWvSDyta7k2Sx5P5CStwDnn3Q/ztHwq5EKijwNR9xQF3kH
	4vWYe9onAM2rZFAAR21HvDv9XFNzYqvWEu6xMUqPfoWXyUU+NTBCYq7k3hI7sOLpcqJFmhKGXMM1C
	KrROVNNPscPfRfTD+c92VdkgUOdonYn3xmJKgGbmobENsvaX1Km0SYtZLVsakyuP6M7yD5404i+Px
	gc6oYAhp33hvvM3f/nvPomXLO74yLtmlSJu8PsjcL7Z6yNX0GET7LveOfwnaikvAVKTAPr9iUX+HP
	S+aixnbYqQXgx1ZzXTdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioUcN-0008BX-7k; Mon, 06 Jan 2020 15:48:35 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioUcG-0008B0-17
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 15:48:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578325706;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0eu0mqm9VOScBHtEc/NIyPA5j+hZ0W1aSfm/aRuoupk=;
 b=Pejo27buketlT8Gd9Qd2q9MPRWEDzIlYckiXbPGDriMjMMZvrzujb+xN79rX+lpenaHjmH
 spv0W6uQes5ZWDo1Ro3vWV00NWKMIqdP/EgbBI3I3F1qN1xrRQzoYoG0xirHAMAYrBW4fT
 DbMDgiWeNSMETHwYgpqtaMFB6LJaj+c=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-90-dDdDuHUTNfevb3mrvnBG4w-1; Mon, 06 Jan 2020 10:48:20 -0500
X-MC-Unique: dDdDuHUTNfevb3mrvnBG4w-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A294E18B414A;
 Mon,  6 Jan 2020 15:48:17 +0000 (UTC)
Received: from llong.remote.csb (dhcp-17-59.bos.redhat.com [10.18.17.59])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E49687C00D;
 Mon,  6 Jan 2020 15:48:15 +0000 (UTC)
Subject: Re: [PATCH v8 0/5] Add NUMA-awareness to qspinlock
To: Alex Kogan <alex.kogan@oracle.com>, linux@armlinux.org.uk,
 peterz@infradead.org, mingo@redhat.com, will.deacon@arm.com, arnd@arndb.de,
 linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, tglx@linutronix.de, bp@alien8.de,
 hpa@zytor.com, x86@kernel.org, guohanjun@huawei.com, jglauber@marvell.com
References: <20191230194042.67789-1-alex.kogan@oracle.com>
From: Waiman Long <longman@redhat.com>
Organization: Red Hat
Message-ID: <13cde730-34c1-8b99-6990-1f64cc78670d@redhat.com>
Date: Mon, 6 Jan 2020 10:48:15 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20191230194042.67789-1-alex.kogan@oracle.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_074828_144572_228DD62E 
X-CRM114-Status: GOOD (  22.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dave.dice@oracle.com, steven.sistare@oracle.com, daniel.m.jordan@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/30/19 2:40 PM, Alex Kogan wrote:
> Minor changes from v7 based on feedback from Longman:
> -----------------------------------------------------
>
> - Move __init functions from alternative.c to qspinlock_cna.h
>
> - Introduce enum for return values from cna_pre_scan(), for better
> readability.
>
> - Add/revise a few comments to improve readability.
>
>
> Summary
> -------
>
> Lock throughput can be increased by handing a lock to a waiter on the
> same NUMA node as the lock holder, provided care is taken to avoid
> starvation of waiters on other NUMA nodes. This patch introduces CNA
> (compact NUMA-aware lock) as the slow path for qspinlock. It is
> enabled through a configuration option (NUMA_AWARE_SPINLOCKS).
>
> CNA is a NUMA-aware version of the MCS lock. Spinning threads are
> organized in two queues, a main queue for threads running on the same
> node as the current lock holder, and a secondary queue for threads
> running on other nodes. Threads store the ID of the node on which
> they are running in their queue nodes. After acquiring the MCS lock and
> before acquiring the spinlock, the lock holder scans the main queue
> looking for a thread running on the same node (pre-scan). If found (call
> it thread T), all threads in the main queue between the current lock
> holder and T are moved to the end of the secondary queue.  If such T
> is not found, we make another scan of the main queue after acquiring 
> the spinlock when unlocking the MCS lock (post-scan), starting at the
> node where pre-scan stopped. If both scans fail to find such T, the
> MCS lock is passed to the first thread in the secondary queue. If the
> secondary queue is empty, the MCS lock is passed to the next thread in the
> main queue. To avoid starvation of threads in the secondary queue, those
> threads are moved back to the head of the main queue after a certain
> number of intra-node lock hand-offs.
>
> More details are available at https://arxiv.org/abs/1810.05600.
>
> The series applies on top of v5.5.0-rc2, commit ea200dec51.
> Performance numbers are available in previous revisions
> of the series.
>
> Further comments are welcome and appreciated.
>
> Alex Kogan (5):
>   locking/qspinlock: Rename mcs lock/unlock macros and make them more
>     generic
>   locking/qspinlock: Refactor the qspinlock slow path
>   locking/qspinlock: Introduce CNA into the slow path of qspinlock
>   locking/qspinlock: Introduce starvation avoidance into CNA
>   locking/qspinlock: Introduce the shuffle reduction optimization into
>     CNA
>
>  .../admin-guide/kernel-parameters.txt         |  18 +
>  arch/arm/include/asm/mcs_spinlock.h           |   6 +-
>  arch/x86/Kconfig                              |  20 +
>  arch/x86/include/asm/qspinlock.h              |   4 +
>  arch/x86/kernel/alternative.c                 |   4 +
>  include/asm-generic/mcs_spinlock.h            |   4 +-
>  kernel/locking/mcs_spinlock.h                 |  20 +-
>  kernel/locking/qspinlock.c                    |  82 +++-
>  kernel/locking/qspinlock_cna.h                | 400 ++++++++++++++++++
>  kernel/locking/qspinlock_paravirt.h           |   2 +-
>  10 files changed, 537 insertions(+), 23 deletions(-)
>  create mode 100644 kernel/locking/qspinlock_cna.h
>
I have reviewed this patch series. Besides a few minor nits, the rests
look solid to me. So you can put my review tag.

Reviewed-by: Waiman Long <longman@redhat.com>

Peter and Will, would you mind taking a look to see if you have anything
to add?

Thanks,
Longman


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
