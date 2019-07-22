Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A75A76FDE0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 12:33:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=o/Lq8rVun8U1urt97eJ6nJBOTLJSq4fAssB3TH2Nig4=; b=EN8yvN54c9WTTQ
	HPm+u/LxqAr+a4ADr3qEvI2lVHu/Ru8k8ToF3vYE9MzINyrlElS5ud5tbUP2qcNcTW618jLneeqHA
	ucLz7QF2Cybt5AaygP2YzDWWOdpG2w+7WbZ3AzpFQkG9SMSajVNrpTna5xOoO1GVwd06mMPNtW3qb
	ebzVHm388zbfxOoZ7TLUChdGxGlRspUXoCheahWfJNUmPd9lnYfoV8DqOcXczHk6AqN5YsXSm54pB
	5lAr/DaTdb8EB2VYEEmojqYkV8/YFwMfBOw+qyI8Eij91WMdrt8kRPPvPYJnNolpDBfSSJWVyh55K
	QN1JVbGlxrYDbccuAHOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpVdh-000399-Kb; Mon, 22 Jul 2019 10:33:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpVdW-00037n-0x
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 10:33:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8E54728;
 Mon, 22 Jul 2019 03:33:40 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1E90F3F71A;
 Mon, 22 Jul 2019 03:33:39 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: Thomas Gleixner <tglx@linutronix.de>, John Stultz <john.stultz@linaro.org>,
 Pavel Tatashin <pasha.tatashin@soleen.com>, Petr Mladek <pmladek@suse.com>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will.deacon@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 0/3] arm64: Allow early timestamping of kernel log
Date: Mon, 22 Jul 2019 11:33:27 +0100
Message-Id: <20190722103330.255312-1-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_033342_115298_733DAD2A 
X-CRM114-Status: UNSURE (   9.79  )
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

So far, we've let the arm64 kernel start its meaningful time stamping
of the kernel log pretty late, which is caused by sched_clock() being
initialised rather late compared to other architectures.

Pavel Tatashin proposed[1] to move the initialisation of sched_clock
much earlier, which I had objections to. The reason for initialising
sched_clock late is that a number of systems have broken counters, and
we need to apply all kind of terrifying workarounds to avoid time
going backward on the affected platforms. Being able to identify the
right workaround comes pretty late in the kernel boot, and providing
an unreliable sched_clock, even for a short period of time, isn't an
appealing prospect.

To address this, I'm proposing that we allow an architecture to chose
to (1) divorce time stamping and sched_clock during the early phase of
booting, and (2) inherit the time stamping clock as the new epoch the
first time a sched_sched clock gets registered.

(1) would allow arm64 to provide a time stamping clock, however
unreliable it might be, while (2) would allow sched_clock to provide
time stamps that are continuous with the time-stamping clock.

The last patch in the series adds the necessary logic to arm64,
allowing the (potentially unreliable) time stamping of early kernel
messages.

Tested on a bunch of arm64 systems, both bare-metal and in VMs. Boot
tested on a x86 guest.

[1] https://lore.kernel.org/patchwork/patch/1015110/

Marc Zyngier (3):
  printk: Allow architecture-specific timestamping function
  sched/clock: Allow sched_clock to inherit timestamp_clock epoch
  arm64: Allow early time stamping

 arch/arm64/Kconfig          |  3 +++
 arch/arm64/kernel/setup.c   | 44 +++++++++++++++++++++++++++++++++++++
 include/linux/sched/clock.h | 13 +++++++++++
 kernel/printk/printk.c      |  4 ++--
 kernel/time/sched_clock.c   | 10 +++++++++
 5 files changed, 72 insertions(+), 2 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
