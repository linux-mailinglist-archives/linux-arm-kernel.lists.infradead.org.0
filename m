Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0624AC88B8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 14:36:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=/xVHr+646cE4r8UqUBVHDqodZHsAHFGUfT1/so1IiNk=; b=sBf
	IvqyNAjyO+OiwgykDcTP+WQdLb34O8suOojdEAcEb2TFYtU1FW0qYsEw1Y80EmrdXsscPevAGptiJ
	wytTzQdK0efkl2MfRd6WfhLVuBkS3bPps7Vm+WtBzS/Uqigs6UJrKk8OV+zktQmu76EM1Fk0eVqFV
	8CKVTjbEJ1UTqvpNt570Er1HvGFKbr8nNB3ww4gvf3M1rNONn5NldgxD4UYnvhoehcv5kYH52dw/D
	55L006Wu0i8MNLQvomBaNXYC7GsJZBnAd8Y+Iv8/pWDNPqMXDphY1pT9CSLTEpLY4pO7xiOwfkpOE
	cRsXSmwzt+B7yTl41gYvTQ96xrBRB4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFdrD-0004dm-U5; Wed, 02 Oct 2019 12:35:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFdr6-0004cy-Eo
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 12:35:46 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5F6C72133F;
 Wed,  2 Oct 2019 12:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570019744;
 bh=RtvZ/jtXrdXaMZJweoBj5d73QB9VhlxmXyuMM+MoeO0=;
 h=From:To:Cc:Subject:Date:From;
 b=V8fsWYj0FqgWwPoFt5oiFr9IJ03REQSB1IW38olIu1/Xt3v6zu4bB440fLa2tuqCM
 VkX7fp/WAXyIx3CMY20+yBaCpLpR3Ku9wxzmNL/VhfC0NSJEeR5a5r+uknazRUkLJm
 QNDkZC88QphnaVKDyQGv/RopBWjvanfBnpZJ7d6c=
From: Will Deacon <will@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] panic: Ensure preemption is disabled during panic()
Date: Wed,  2 Oct 2019 13:35:38 +0100
Message-Id: <20191002123538.22609-1-will@kernel.org>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_053544_514859_0C994BAC 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kees Cook <keescook@chromium.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, contact@xogium.me,
 Russell King <linux@armlinux.org.uk>, stable@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, Andrew Morton <akpm@linux-foundation.org>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Calling 'panic()' on a kernel with CONFIG_PREEMPT=y can leave the
calling CPU in an infinite loop, but with interrupts and preemption
enabled. From this state, userspace can continue to be scheduled,
despite the system being "dead" as far as the kernel is concerned. This
is easily reproducible on arm64 when booting with "nosmp" on the command
line; a couple of shell scripts print out a periodic "Ping" message
whilst another triggers a crash by writing to /proc/sysrq-trigger:

  | sysrq: Trigger a crash
  | Kernel panic - not syncing: sysrq triggered crash
  | CPU: 0 PID: 1 Comm: init Not tainted 5.2.15 #1
  | Hardware name: linux,dummy-virt (DT)
  | Call trace:
  |  dump_backtrace+0x0/0x148
  |  show_stack+0x14/0x20
  |  dump_stack+0xa0/0xc4
  |  panic+0x140/0x32c
  |  sysrq_handle_reboot+0x0/0x20
  |  __handle_sysrq+0x124/0x190
  |  write_sysrq_trigger+0x64/0x88
  |  proc_reg_write+0x60/0xa8
  |  __vfs_write+0x18/0x40
  |  vfs_write+0xa4/0x1b8
  |  ksys_write+0x64/0xf0
  |  __arm64_sys_write+0x14/0x20
  |  el0_svc_common.constprop.0+0xb0/0x168
  |  el0_svc_handler+0x28/0x78
  |  el0_svc+0x8/0xc
  | Kernel Offset: disabled
  | CPU features: 0x0002,24002004
  | Memory Limit: none
  | ---[ end Kernel panic - not syncing: sysrq triggered crash ]---
  |  Ping 2!
  |  Ping 1!
  |  Ping 1!
  |  Ping 2!

The issue can also be triggered on x86 kernels if CONFIG_SMP=n, otherwise
local interrupts are disabled in 'smp_send_stop()'.

Disable preemption in 'panic()' before re-enabling interrupts.

Cc: Russell King <linux@armlinux.org.uk>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Kees Cook <keescook@chromium.org>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: <stable@vger.kernel.org>
Link: https://lore.kernel.org/r/BX1W47JXPMR8.58IYW53H6M5N@dragonstone
Reported-by: Xogium <contact@xogium.me>
Signed-off-by: Will Deacon <will@kernel.org>
---
 kernel/panic.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/kernel/panic.c b/kernel/panic.c
index 47e8ebccc22b..f470a038b05b 100644
--- a/kernel/panic.c
+++ b/kernel/panic.c
@@ -180,6 +180,7 @@ void panic(const char *fmt, ...)
 	 * after setting panic_cpu) from invoking panic() again.
 	 */
 	local_irq_disable();
+	preempt_disable_notrace();
 
 	/*
 	 * It's possible to come here directly from a panic-assertion and
-- 
2.23.0.444.g18eeb5a265-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
