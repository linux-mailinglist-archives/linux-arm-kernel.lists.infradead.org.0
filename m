Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A86AF173ED4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 18:48:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pJncIfBz26McMk8TzWKY11qi/yoURMAGodkasgbK4ew=; b=sm+wleE1TwFlwB
	KeZ5il6cV9zFWnTQWw95BzAYUnefuzYq8m3JtCMOwdnhAXGZ67btHLeUZOXVPaC7NUY2Jdl46hVDP
	B59Ol1vBpeE4HJs6svMW8ZayvESCa8yiDvGjJknZAG6GZvneu9/ND5w5lmLRwNkj9laNtjP27DCxD
	AGf5MvN+sHki8eCyHkhyJTvmA0O+GmATKjI5d4DGxq0ndNNJFI9s/NQFuWs6nAcSTVzXJ7rHy1C4p
	iG+Dnzqef6NkYl1GGFnq3H70m1/AFZwHiW16FIC6104z/LZJusM8MXwQa9jhki7i9KwCwQHrqVHgx
	B1fuoESbzBfeBT73PgOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7jka-0007Rh-UV; Fri, 28 Feb 2020 17:48:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7jkR-0007Qy-JZ
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 17:48:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 15C0031B;
 Fri, 28 Feb 2020 09:48:25 -0800 (PST)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3543E3F7B4;
 Fri, 28 Feb 2020 09:48:23 -0800 (PST)
From: James Morse <james.morse@arm.com>
To: linux-mm@kvack.org, linux-acpi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/3] ACPI / APEI: Kick the memory_failure() queue for
 synchronous errors
Date: Fri, 28 Feb 2020 17:48:14 +0000
Message-Id: <20200228174817.74278-1-james.morse@arm.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_094827_730830_ECCF5BFC 
X-CRM114-Status: GOOD (  15.47  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, Tony Luck <tony.luck@intel.com>,
 Xie XiuQi <xiexiuqi@huawei.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Rafael Wysocki <rjw@rjwysocki.net>, Tyler Baicar <tyler@amperecomputing.com>,
 Borislav Petkov <bp@alien8.de>, James Morse <james.morse@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 Naoya Horiguchi <n-horiguchi@ah.jp.nec.com>, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello!

These are the remaining patches from the SDEI series[0] that fix
a race between memory_failure() and user-space re-triggering the error
in ghes.c.


ghes_handle_memory_failure() calls memory_failure_queue() from
IRQ context to schedule memory_failure()s work as it needs to sleep.
Once the GHES machinery returns from the IRQ, it may return to user-space
before memory_failure() runs.

If the error that kicked all this off is specific to user-space, e.g. a
load from corrupted memory, we may find ourselves taking the error
again. If the user-space task is scheduled out, and memory_failure() runs,
the same user-space task may be scheduled in on another CPU, which could
also take the same error.

These lead to exaggerated error counters, which may cause some threshold
to be reached early.

This can happen with any error that causes a Synchronous External Abort
on arm64. I can't see why the same wouldn't happen with a machine-check
handled firmware first on x86.


This series adds a memory_failure_queue_kick() helper to
memory-failure.c, and calls it as task-work before returning to
user-space.


Currently arm64 papers over this problem by ignoring ghes_notify_sea()'s
return code as it knows there is still work to do. arm64 generates its
own signal to user-space, which means the first task to discover an
error will always be killed, even if the error was later handled.
(which is no improvement on the no-RAS behaviour)

As a final piece, arm64 can try to process the irq work queued by
ghes_notify_sea() while its still in the external abort handler. A succesfull
return value here now means the memory_failure() work will be done before we
return to user-space, we no longer need to generate our own signal.
This lets the original task survive the error if memory_failure() can
recover the corrupted memory.

Based on v5.6-rc2. I'm afraid it touches three different trees.
$subject says ACPI as that is where the bulk of the diffstat is.

This series may conflict in arm64 with a series from Mark Rutland to
cleanup the daif/PMR toggling.


This would be v9 of these patches, but after a year I figure I should
start the numbering again. I've dropped any collected tags.

Known issues:
 * arm64's apei_claim_sea() may unwittingly re-enable debug if it takes
   an external-abort from debug context. Patch 3 makes this worse
   instead of fixing it. The fix would make use of helpers from Mark R's
   series.


Thanks,

James


[0] https://lore.kernel.org/linux-arm-kernel/20190129184902.102850-1-james.morse@arm.com/
[1] https://lore.kernel.org/linux-acpi/1506516620-20033-3-git-send-email-xiexiuqi@huawei.com/

James Morse (3):
  mm/memory-failure: Add memory_failure_queue_kick()
  ACPI / APEI: Kick the memory_failure() queue for synchronous errors
  arm64: acpi: Make apei_claim_sea() synchronise with APEI's irq work

 arch/arm64/kernel/acpi.c | 25 +++++++++++++++
 arch/arm64/mm/fault.c    | 12 ++++---
 drivers/acpi/apei/ghes.c | 68 +++++++++++++++++++++++++++++++++-------
 include/acpi/ghes.h      |  3 ++
 include/linux/mm.h       |  1 +
 mm/memory-failure.c      | 15 ++++++++-
 6 files changed, 107 insertions(+), 17 deletions(-)

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
