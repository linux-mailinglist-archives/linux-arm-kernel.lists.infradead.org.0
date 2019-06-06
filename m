Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4F553748B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 14:54:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=jZ4rOamCus4fT03RJYaylKUcQXOaRUj6BbU84UE7CVY=; b=JS8
	VnADHhJBv+ML7ROH8uYqTkAuFZfN3B+0XM2HZgOB2HaMvKKtU1+yY4oet0t720whxmfL1MkWshJeg
	Esdru8mOAetH06fNDA8ZlYUBazmMfb0tCGx9BHuSJXE+GPXCBvjv4VXMrb74RdCBxFLLGCher7N8C
	3iM5ZRQh+619+fdixLWUXrNUwMDsqkiVhaOcjpFRhLMaaSSeXkVxP2LklJo9YhTz+TJk4m8fkgoRn
	BJ4qCBnD0XOehygRUEuVGMwWj8a7nRf9R7p4H4A1UvYgma4osrWoMFKoVrWtYDiutXkwf2TRCFCr1
	++mUoZgHystefv7DqkoCNBMUMI+fq/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYruL-0002Ug-W1; Thu, 06 Jun 2019 12:54:18 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYruG-0002UC-2y
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 12:54:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 49C1B374;
 Thu,  6 Jun 2019 05:54:11 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E604D3F5AF;
 Thu,  6 Jun 2019 05:54:09 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/3] arm64: stacktrace: improve robustness
Date: Thu,  6 Jun 2019 13:53:59 +0100
Message-Id: <20190606125402.10229-1-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_055412_131755_7373FC64 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

Thanks,
Mark.

[1] http://lists.infradead.org/pipermail/linux-arm-kernel/2018-April/572685.html
[2] git://git.kernel.org/pub/scm/linux/kernel/git/mark/linux.git arm64/robust-stacktrace

Dave Martin (2):
  arm64: stacktrace: Constify stacktrace.h functions
  arm64: stacktrace: Factor out backtrace initialisation

Mark Rutland (1):
  arm64: stacktrace: better handle corrupted stacks

 arch/arm64/include/asm/stacktrace.h | 55 ++++++++++++++++++++++++++++---------
 arch/arm64/kernel/process.c         |  6 +---
 arch/arm64/kernel/stacktrace.c      | 16 ++++++++++-
 arch/arm64/kernel/time.c            |  6 +---
 arch/arm64/kernel/traps.c           | 13 ++++-----
 5 files changed, 65 insertions(+), 31 deletions(-)

-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
