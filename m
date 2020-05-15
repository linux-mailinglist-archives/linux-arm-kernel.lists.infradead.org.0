Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F2F1D57CA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 19:28:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HmSXNUFV7KMVkTwWvJrLTw10p4xLCUcqoHCCTiP1/Wg=; b=fjJ+jAl5y2Si80
	JoW+s6/L3UEAg7anN9uKLg3/mcbO9/wftDW3pwN2bw7S+GZPDwgaYCkp8JtrGi3tMXgbRTz0fqPQ5
	pwkH1Wagw85GZ8Wk4OIVmWOSsSh7OvGk/0uF61aXTyeZ65UAbaSFIyiYFC33bPZqXDm495sTVo6PL
	fU/x9fGPO+wKelMn4sn2h4CQ+2Vp6exDfqUNl0b6YWWvWOe3yPPHTky5OzZffAJC6T5Pk6pxwVLxx
	xfp8PIcHvouE5jcGXAeKUu2CVkxCi8rcKxDtJ/niUOXnttK9PpJXhm7h+em5+baUO6ueHqGfTNN5X
	SOO47N/K4kqPyxd7ifJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZe8D-00007m-MB; Fri, 15 May 2020 17:28:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZe7y-00006Q-Q6
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 17:28:10 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 95BE120727;
 Fri, 15 May 2020 17:28:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589563686;
 bh=UhWUiz4i2ua+ePQnkwga76Is6IlUX/kwGgzY/Tlf9Rw=;
 h=From:To:Cc:Subject:Date:From;
 b=i7R/upiPvB13dzbce/7FCK5QI3Jiq/Z5T2Q3J68Qd/A3slV4cLoCuhd4eSBpgVDkD
 jZPNla3o9j8LB1rbB4PwVdTjs6EUjsgfTY3EU4SZPCJWbH1LVmbOBD5BZyO2+sqwxd
 mC+6RXA6dCAuCzZFdOkyHgziEbwGcl+65c0hEz6E=
From: Will Deacon <will@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 0/6] Clean up Shadow Call Stack patches for 5.8
Date: Fri, 15 May 2020 18:27:50 +0100
Message-Id: <20200515172756.27185-1-will@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_102806_881525_62B8DF13 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kernel-team@android.com, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Mark Rutland <mark.rutland@am.com>,
 Sami Tolvanen <samitolvanen@google.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

Here's a series of cleanups I hacked together on top of a modified v13
of the Shadow Call Stack patches from Sami:

  https://lore.kernel.org/r/20200515172355.GD23334@willie-the-truck

The main changes are:

  * Move code out of arch/arm64 and into the core implementation
  * Store the full SCS stack pointer instead of the offset
  * Code simplification and general style things

I'd like to queue this on top early next week so that it can spend some
quality time in linux-next.

Cheers,

Will

Cc: Sami Tolvanen <samitolvanen@google.com>
Cc: Kees Cook <keescook@chromium.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Mark Rutland <mark.rutland@am.com>
Cc: Jann Horn <jannh@google.com>
Cc: Ard Biesheuvel <ardb@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: <kernel-team@android.com>

--->8

Will Deacon (6):
  arm64: scs: Store absolute SCS stack pointer value in thread_info
  scs: Move accounting into alloc/free functions
  arm64: scs: Use 'scs_sp' register alias for x18
  scs: Move scs_overflow_check() out of architecture code
  scs: Remove references to asm/scs.h from core code
  scs: Move DEFINE_SCS macro into core code

 arch/Kconfig                         |  4 +--
 arch/arm64/include/asm/scs.h         | 29 ++++------------
 arch/arm64/include/asm/thread_info.h |  4 +--
 arch/arm64/kernel/asm-offsets.c      |  2 +-
 arch/arm64/kernel/entry.S            | 10 +++---
 arch/arm64/kernel/head.S             |  2 +-
 arch/arm64/kernel/process.c          |  2 --
 arch/arm64/kernel/scs.c              |  6 +---
 include/linux/scs.h                  | 16 +++++----
 kernel/sched/core.c                  |  3 ++
 kernel/scs.c                         | 52 +++++++++++++---------------
 11 files changed, 55 insertions(+), 75 deletions(-)

-- 
2.26.2.761.g0e0b3e54be-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
