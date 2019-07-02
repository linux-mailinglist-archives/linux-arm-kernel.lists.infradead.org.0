Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB5155D025
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 15:07:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=fPWdet+0xfYzx1OtlsETyXKmp1SS1fB8r4tLiJZMV7I=; b=JXB
	VslXU7OKd+FyDK4abLyNW1KzUsOJ7gkf67Z/0nmrdkXTJEtNinqgH2jgv5YyGVZZGHpAFY1Y0i60Q
	Dx5bgFHL0qqKv46ffyml2rs6VZNSD9FLicD8dSxwU4bM3djP7/su8i+VDIponr9rL5YXlrvSQZSd/
	bkmTL+hselDVj6eoz7LK+3mPnBNWfaD1Omt9N7FdI3y8UcFoWqpCbD7T2D3lIUU4eYVyEZ98YUT48
	RaIEO9kJ9yR6Wdqz1shVokxocQAndnDz+HGyLx3MWiyVnOhqkJ2H0ruS3+EnQlI4OcxHes2TFrhkS
	1AqxMFVEx+jmyZply3XyNFdpZl57PQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiIVi-0005Wu-De; Tue, 02 Jul 2019 13:07:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hiIVU-0005W8-1u
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 13:07:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B18B2344;
 Tue,  2 Jul 2019 06:07:34 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id AB2F73F703;
 Tue,  2 Jul 2019 06:07:33 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCHv3 0/3] arm64: stacktrace: improve robustness
Date: Tue,  2 Jul 2019 14:07:26 +0100
Message-Id: <20190702130729.19615-1-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_060736_138859_22D8E0F5 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, tengfeif@codeaurora.org, catalin.marinas@arm.com,
 will.deacon@arm.com, james.morse@arm.com, dave.martin@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The arm64 stacktrace code is careful to only access valid stack
locations, but in the presence of a corrupted stack where frame records
form a loop, it will never terminate.

This series updates the stacktrace code to terminate in finite time even
when a stack is corrupted. A stacktrace will be terminated if the next
record is at a lower (or equal) address on the current stack, or when
the next record is on a stack we've already completed unwinding.

The first couple of patches come from Dave's prior attempt to fix this
[1], with the final patch relying on infrastructure which has been
introduced in the mean time.

I've given this a quick spin with magic-sysrq L in a KVM guest, and
things look fine, but further testing would be appreciated.

This series (based on v5.2-rc1) can also be found in my
arm64/robust-stracktrace branch on kernel.org [2].

Since v1 [3]:
* Use start_backtrace() consistently
* Don't use tsk in start_backtrace()
* Track the previous FP and type explicitly

Since v2 [4]:
* Move graph to end of stuct stackframe
* Remove prev_info, fix stacks_done
* Accumulate acks
* Add comments

Thanks,
Mark.

[1] http://lists.infradead.org/pipermail/linux-arm-kernel/2018-April/572685.html
[2] git://git.kernel.org/pub/scm/linux/kernel/git/mark/linux.git arm64/robust-stacktrace
[3] https://lore.kernel.org/linux-arm-kernel/20190606125402.10229-1-mark.rutland@arm.com/
[4] https://lore.kernel.org/linux-arm-kernel/20190628154639.5308-1-mark.rutland@arm.com/

Dave Martin (2):
  arm64: stacktrace: Constify stacktrace.h functions
  arm64: stacktrace: Factor out backtrace initialisation

Mark Rutland (1):
  arm64: stacktrace: better handle corrupted stacks

 arch/arm64/include/asm/stacktrace.h | 78 ++++++++++++++++++++++++++++++-------
 arch/arm64/kernel/perf_callchain.c  |  7 +---
 arch/arm64/kernel/process.c         |  7 +---
 arch/arm64/kernel/return_address.c  |  9 ++---
 arch/arm64/kernel/stacktrace.c      | 59 +++++++++++++++++++++-------
 arch/arm64/kernel/time.c            |  7 +---
 arch/arm64/kernel/traps.c           | 13 +++----
 7 files changed, 124 insertions(+), 56 deletions(-)

-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
