Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C38577B598
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 00:18:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wl9hspqWN/n+o7gYoWdlEuuxqLeFfc7lFtmYQp3QuAQ=; b=CR2u5n+1iFZ2pZ
	cUGPZ+467EGKs/X/Ayvfl8juhQTlzvYYnM6z8VnV1Ipd5OitnTb5x45tbwHeJ34ycBtnC+hP2yTlC
	Ds0T8VYsCIIrO/OS+7C6YzQDDJv/H6ceB5YmFry+cs9wQR/aFb6jHI3qpNIQS145JNXZG0xE00Qh2
	OlREnsFWLCp/tsnIMaPx0t97BG4E0XLjz/97nWsWUtLLqrgCuhvenfUg2aOdNS1dQdiuPCoqszq03
	jfDq7dipOaeIJiW2j9gCsvK64AsL/mohnqK7jU0qJvFgg8QXZJHHUDQZcoVdfGsgUp/5rZDu2VoE9
	cCpIvsnzUlcEv5EkGUcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsaS0-0002TY-8Z; Tue, 30 Jul 2019 22:18:32 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsaRt-0002SZ-2q
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 22:18:26 +0000
Received: by mail-pf1-x443.google.com with SMTP id c3so7419193pfa.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 15:18:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sxiBOB7zsr4sYYglcbcr65xES486R1b5ubVrYLCx9MI=;
 b=cuH0cvj7FQ+GpEQKL8ugXdx3wyPTXJSpKN9VZSQy/NOZUhCpj/MnEoPIYQWDumfepk
 SXkr29or2GlRyB6D4kGxSM5fqCA0aYmYiF/zHTR6cQuZg5AWtLGfuH6/GuQcHnzL+LZq
 eG4FGz9exx6D+FI7ZOtIl1H9t+gUwZ+JC/XcU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sxiBOB7zsr4sYYglcbcr65xES486R1b5ubVrYLCx9MI=;
 b=Y/TBTtiglUdz+qwY6dVq/fKKdp/eubWpAdc1c/Jt6gDPjKzZfPc6ftiu6DAV9XA1t6
 4F7TmwfuPhuQYMUYP1Ke0voRKNh/e2l3PBko+GU1+6iCfY4pTajKDwpqXS3CvjpKDQtl
 96//RsFyhA2EYBYxG4SWKNBBII4T8jjmPVlQSt1LAsTSkoqDJzxJh61uR1D4aqQtW962
 Y5BqdO7DvpYkrhjbZ2yrEhqKHJfuyDWYKGZZAMNS922DHitusIlXyfzxvser42Jh21rp
 0owqNWs+NUBeU6zMeRFivHWGznKbnvR+EFkv1oVXZnrsIJapwKc5N34bKWVIieR0n4sy
 eSDw==
X-Gm-Message-State: APjAAAUoBbsl/4kM02IwhYG2aAMbgAuP4Ec6pSAZ8vKj84lCm+oxJdna
 awQc76e3MIOk1PpPPLM0GrJ1kA==
X-Google-Smtp-Source: APXvYqwqDLmwcsVdJQqAK5+voPBrSQMRxT/BTbm6YQUKW/crdO6p9v7vxNjvrFFCLR1wwUrOngXA+g==
X-Received: by 2002:a63:dd16:: with SMTP id t22mr79512317pgg.140.1564525102190; 
 Tue, 30 Jul 2019 15:18:22 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id u7sm58455696pfm.96.2019.07.30.15.18.21
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 30 Jul 2019 15:18:21 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Jason Wessel <jason.wessel@windriver.com>,
 Daniel Thompson <daniel.thompson@linaro.org>
Subject: [PATCH] arm64: debug: Make 'btc' and similar work in kdb
Date: Tue, 30 Jul 2019 15:18:00 -0700
Message-Id: <20190730221800.28326-1-dianders@chromium.org>
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_151825_156289_D30FB424 
X-CRM114-Status: GOOD (  19.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 Mark Rutland <mark.rutland@arm.com>, kgdb-bugreport@lists.sourceforge.net,
 Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In kdb when you do 'btc' (back trace on CPU) it doesn't give you the
right info.  This can be seen by this:

 echo SOFTLOCKUP > /sys/kernel/debug/provoke-crash/DIRECT
 # wait 2 seconds
 <sysrq>g

Here's what I see now on rk3399-gru-kevin.  I see the stack crawl for
the CPU that handled the sysrq but everything else just shows me stuck
in __switch_to() which is bogus:

======

[0]kdb> btc
btc: cpu status: Currently on cpu 0
Available cpus: 0, 1-3(I), 4, 5(I)
Stack traceback for pid 0
0xffffff801101a9c0        0        0  1    0   R  0xffffff801101b3b0 *swapper/0
Call trace:
 dump_backtrace+0x0/0x138
 ...
 kgdb_compiled_brk_fn+0x34/0x44
 ...
 sysrq_handle_dbg+0x34/0x5c
Stack traceback for pid 0
0xffffffc0f175a040        0        0  1    1   I  0xffffffc0f175aa30  swapper/1
Call trace:
 __switch_to+0x1e4/0x240
 0xffffffc0f65616c0
Stack traceback for pid 0
0xffffffc0f175d040        0        0  1    2   I  0xffffffc0f175da30  swapper/2
Call trace:
 __switch_to+0x1e4/0x240
 0xffffffc0f65806c0
Stack traceback for pid 0
0xffffffc0f175b040        0        0  1    3   I  0xffffffc0f175ba30  swapper/3
Call trace:
 __switch_to+0x1e4/0x240
 0xffffffc0f659f6c0
Stack traceback for pid 1474
0xffffffc0dde8b040     1474      727  1    4   R  0xffffffc0dde8ba30  bash
Call trace:
 __switch_to+0x1e4/0x240
 __schedule+0x464/0x618
 0xffffffc0dde8b040
Stack traceback for pid 0
0xffffffc0f17b0040        0        0  1    5   I  0xffffffc0f17b0a30  swapper/5
Call trace:
 __switch_to+0x1e4/0x240
 0xffffffc0f65dd6c0

===

The problem is that 'btc' eventually boils down to
  show_stack(task_struct, NULL);

...and show_stack() doesn't work for "running" CPUs because their
registers haven't been stashed.

On x86 things might work better (I haven't tested) because kdb has a
special case for x86 in kdb_show_stack() where it passes the stack
pointer to show_stack().  This wouldn't work on arm64 where the stack
crawling function seems needs the "fp" and "pc", not the "sp" which is
presumably why arm64's show_stack() function totally ignores the "sp"
parameter.

NOTE: we _can_ get a good stack dump for all the cpus if we manually
switch each one to the kdb master and do a back trace.  AKA:
  cpu 4
  bt
...will give the expected trace.  That's because now arm64's
dump_backtrace will now see that "tsk == current" and go through a
different path.

In this patch I fix the problems by stashing the "pt_regs" into the
"cpu_context" when a CPU enters the debugger.  Now all the normal stack
crawling code will be able to find it.  This is possible because:
* When a task is "running" nobody else is using the "cpu_context"
* The task isn't really "running" (it's in the debugger) so there are
  actually some sane registers to save.

This patch works without any extra kgdb API changes by just
implementing the weak kgdb_call_nmi_hook().  I don't try to address
the existing caveat in kgdb_call_nmi_hook() around pt_regs, so I copy
the comment from the generic code.

After this patch the same test shows much more sane stack crawls.  The
idle tasks now show:

Stack traceback for pid 0
0xffffffc0f175b040        0        0  1    3   I  0xffffffc0f175ba30  swapper/3
Call trace:
 cpuidle_enter_state+0x284/0x428
 cpuidle_enter+0x38/0x4c
 do_idle+0x168/0x29c
 cpu_startup_entry+0x24/0x28
 secondary_start_kernel+0x140/0x14c

...and the locked task:

Stack traceback for pid 1603
0xffffffc0d98c7040     1603      724  1    4   R  0xffffffc0d98c7a30  bash
Call trace:
 lkdtm_SOFTLOCKUP+0x1c/0x24
 lkdtm_do_action+0x24/0x44
 direct_entry+0x130/0x178
 full_proxy_write+0x60/0xb4
 __vfs_write+0x54/0x18c
 vfs_write+0xcc/0x174
 ksys_write+0x7c/0xe4
 __arm64_sys_write+0x20/0x2c
 el0_svc_common+0x9c/0x14c
 el0_svc_compat_handler+0x28/0x34
 el0_svc_compat+0x8/0x10

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 arch/arm64/kernel/kgdb.c | 39 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/arch/arm64/kernel/kgdb.c b/arch/arm64/kernel/kgdb.c
index 43119922341f..b666210fbc75 100644
--- a/arch/arm64/kernel/kgdb.c
+++ b/arch/arm64/kernel/kgdb.c
@@ -148,6 +148,45 @@ sleeping_thread_to_gdb_regs(unsigned long *gdb_regs, struct task_struct *task)
 	gdb_regs[32] = cpu_context->pc;
 }
 
+void kgdb_call_nmi_hook(void *ignored)
+{
+	struct pt_regs *regs;
+
+	/*
+	 * NOTE: get_irq_regs() is supposed to get the registers from
+	 * before the IPI interrupt happened and so is supposed to
+	 * show where the processor was.  In some situations it's
+	 * possible we might be called without an IPI, so it might be
+	 * safer to figure out how to make kgdb_breakpoint() work
+	 * properly here.
+	 */
+	regs = get_irq_regs();
+
+	/*
+	 * Some commands (like 'btc') assume that they can find info about
+	 * a task in the 'cpu_context'.  Unfortunately that's only valid
+	 * for sleeping tasks.  ...but let's make it work anyway by just
+	 * writing the registers to the right place.  This is safe because
+	 * nobody else is using the 'cpu_context' for a running task.
+	 */
+	current->thread.cpu_context.x19 = regs->regs[19];
+	current->thread.cpu_context.x20 = regs->regs[20];
+	current->thread.cpu_context.x21 = regs->regs[21];
+	current->thread.cpu_context.x22 = regs->regs[22];
+	current->thread.cpu_context.x23 = regs->regs[23];
+	current->thread.cpu_context.x24 = regs->regs[24];
+	current->thread.cpu_context.x25 = regs->regs[25];
+	current->thread.cpu_context.x26 = regs->regs[26];
+	current->thread.cpu_context.x27 = regs->regs[27];
+	current->thread.cpu_context.x28 = regs->regs[28];
+	current->thread.cpu_context.fp = regs->regs[29];
+
+	current->thread.cpu_context.sp = regs->sp;
+	current->thread.cpu_context.pc = regs->pc;
+
+	kgdb_nmicallback(raw_smp_processor_id(), regs);
+}
+
 void kgdb_arch_set_pc(struct pt_regs *regs, unsigned long pc)
 {
 	regs->pc = pc;
-- 
2.22.0.709.g102302147b-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
