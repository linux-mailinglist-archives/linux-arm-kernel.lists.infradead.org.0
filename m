Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D6E59F4A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 17:47:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=8fhFp4HZ7ERsHhvbne1GoFeRYwCAyn1OYJlf9CHznkg=; b=dZV
	DpjKshRHeVHLXvT4qqw9+paXm8I9jOYTKXjPIsNwHUBVClSYNDq6nqkBueXMkciPC15Ljo9Ozde4g
	x9ml3jTc/xQ9ZEUC45ZT9Kq28Bfivtkylw6eKwKj0l754QIyLuEbvqL7R5VPz0qhJZsv/njlpkzmR
	5Qfggd0ebL4GbTV0YuoVXzm2VSo9lM0E1Md+SdKOtLEN7uxK1iIBMyxg+/gvVLPWAR4ihASa+ntoQ
	a4yhtN2QnTrI6NPKEJxcEs343YkBZJ9fZoZF9OEETvvXno8bIaCGIuOSlj9nveQtcFURfbWaSpD9b
	st6tpl9NnAGjEzqP5vWpEEKJGMnlHkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgt5Z-00080b-AZ; Fri, 28 Jun 2019 15:47:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgt5K-0007yr-8e
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 15:46:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 99FA128;
 Fri, 28 Jun 2019 08:46:45 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 95B6D3F706;
 Fri, 28 Jun 2019 08:46:44 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCHv2 0/3] arm64: stacktrace: improve robustness
Date: Fri, 28 Jun 2019 16:46:36 +0100
Message-Id: <20190628154639.5308-1-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_084646_371072_955DFD2C 
X-CRM114-Status: GOOD (  10.22  )
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

Thanks,
Mark.

[1] http://lists.infradead.org/pipermail/linux-arm-kernel/2018-April/572685.html
[2] git://git.kernel.org/pub/scm/linux/kernel/git/mark/linux.git arm64/robust-stacktrace
[3] https://lore.kernel.org/linux-arm-kernel/20190606125402.10229-1-mark.rutland@arm.com/

Dave Martin (2):
  arm64: stacktrace: Constify stacktrace.h functions
  arm64: stacktrace: Factor out backtrace initialisation

Mark Rutland (1):
  arm64: stacktrace: better handle corrupted stacks

 arch/arm64/include/asm/stacktrace.h | 53 ++++++++++++++++++++++++++++---------
 arch/arm64/kernel/perf_callchain.c  |  7 +----
 arch/arm64/kernel/process.c         |  7 ++---
 arch/arm64/kernel/return_address.c  |  9 +++----
 arch/arm64/kernel/stacktrace.c      | 34 ++++++++++++++----------
 arch/arm64/kernel/time.c            |  7 ++---
 arch/arm64/kernel/traps.c           | 13 +++++----
 7 files changed, 74 insertions(+), 56 deletions(-)

-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
