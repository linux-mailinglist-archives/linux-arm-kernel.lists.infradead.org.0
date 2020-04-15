Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF2891A935E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 08:40:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=vGcsJ4Hr8Bukp5BtkQo3fShBUGzLRINw0GDxLd3y/T4=; b=jGV
	jyysKffLbTePMcTGeUL/1SCTKObDOhxb0UbIeZuc70VUaM296dUH2ut8u6A8KDjkaScNTW3ZYcEMm
	RsmFAoFAhEzNEBLh9SPz/5pR5TULQKiVN3rcmW9Na1wmrpH+nZKYlXMBYfRuZYPomkbT70zvvOpUe
	iWrWaIJgILjXqS6wfdfhEgUm6drxacouxkYaCJXNQqMy1NUH5Q8MkGhh0oiReflf3vAOhhG5lutMD
	JP4jBe+neTiWRo9Psrv4ERZeTnCK+A4ut0GJUijqgWDefqw1GdT5YCUHVLwLhFs0OVGBWH8fiCeJ8
	jrzu6fWIvs69E+hMkeGyLKhH4EC3AsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jObig-00007e-1r; Wed, 15 Apr 2020 06:40:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jObiY-00006w-5J
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 06:40:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9FFDD31B;
 Tue, 14 Apr 2020 23:40:12 -0700 (PDT)
Received: from p8cg001049571a15.arm.com (unknown [10.163.1.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 3062E3F73D;
 Tue, 14 Apr 2020 23:44:16 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-mm@kvack.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/2] arm64/hotplug: Process MEM_OFFLINE and MEM_CANCEL_OFFLINE
 events
Date: Wed, 15 Apr 2020 12:09:42 +0530
Message-Id: <1586932784-16315-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_234014_246913_844F1A47 
X-CRM114-Status: GOOD (  12.30  )
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
Cc: mark.rutland@arm.com, Michal Hocko <mhocko@suse.com>, will@kernel.com,
 Anshuman Khandual <anshuman.khandual@arm.com>, catalin.marinas@arm.com,
 David Hildenbrand <david@redhat.com>, Steve Capper <steve.capper@arm.com>,
 linux-kernel@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Hsin-Yi Wang <hsinyi@chromium.org>, akpm@linux-foundation.org,
 Dan Williams <dan.j.williams@intel.com>, Yu Zhao <yuzhao@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series improves arm64 memory event notifier (hot remove) robustness by
enabling it to detect potential problems (if any) in the future. But first
it enumerates memory isolation failure reasons that can be sent across a
notifier. This series does not go beyond arm64 to explore if these failure
reason codes could be used in other existing registered memory notifiers.
Please do let me know if there is any other potential use cases, will be
happy to incorporate next time around. Also should we add similar failure
reasons for online_pages() as well ?

This series has been tested on arm64, boot tested on x86 and build tested
on multiple other platforms.

This series applies on v5.7-rc1.

Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Michal Hocko <mhocko@suse.com>
Cc: Dan Williams <dan.j.williams@intel.com>
Cc: David Hildenbrand <david@redhat.com>
Cc: Yu Zhao <yuzhao@google.com>
Cc: Hsin-Yi Wang <hsinyi@chromium.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Steve Capper <steve.capper@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-mm@kvack.org
Cc: linux-kernel@vger.kernel.org

Anshuman Khandual (2):
  mm/hotplug: Enumerate memory range offlining failure reasons
  arm64/hotplug: Process MEM_OFFLINE and MEM_CANCEL_OFFLINE

 arch/arm64/mm/mmu.c    | 52 ++++++++++++++++++++++++++++++++++++++----
 drivers/base/memory.c  |  9 ++++++++
 include/linux/memory.h | 27 ++++++++++++++++++++++
 mm/memory_hotplug.c    | 24 ++++++++++++-------
 4 files changed, 99 insertions(+), 13 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
