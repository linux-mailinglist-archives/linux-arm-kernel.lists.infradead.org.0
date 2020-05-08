Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 067AB1CB1B6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 16:25:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Y5CGR/j1KucrrTEI6t1MHxNtBoPW2+y+Vdwd6tzdjVg=; b=mMfqFyS2V5LbkM
	I5CqOsrhXn/Zr4suEoRaVyBUrmYUtjsXW/Wr4rDh99C7GBCVyeXIOHvNcW34uRm6mVAECrmeFIY85
	Sk6rIhzTpp/jrO6OBrCA/koIWnMbi7itsHaRJsApgIn1PR694Y77Um40Y8aO85L1ZmskWwfL5yJ84
	5+kZ4eJ79xOLFx+XSW/00l4xznZ4NP7ZwYXcumF7mcUZPsqoaVfarGVnhabG6fs5rL+zVgeeleqR3
	i//xvtctV+9+5MPND9kYYSputcHPj7SN8grLB0eAL7wmHPfyHJYlZgXiLUQiCaV+SXKdGACoaHu7A
	VpEHvHCqXPAHeWpmHQOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX3wD-0005YS-7Y; Fri, 08 May 2020 14:25:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX3vy-0004cY-Nm
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 14:25:04 +0000
Received: from localhost.localdomain (NE2965lan1.rev.em-net.ne.jp
 [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A861424954;
 Fri,  8 May 2020 14:24:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588947901;
 bh=1L390ZlzW+T338vHbYoOog6Isii+Mo0lwCGOSbNRxC4=;
 h=From:To:Cc:Subject:Date:From;
 b=NJFrQWS+h7Y0+pYeYuDhkDVyF+g8+Vpj7AZrIj05ORkRKqVvMS6yiW5KkxDRMN9Bp
 y2l2jIfJxXwwDXv0Y5o7BK6xF0jt5JSb5NcI7rw3IcHnT09ghnOwGxcsORL8oy1W+s
 kF6QauU5fNE54gVCRvxZ2GEZ3WOFyU0NYXOriA74=
From: Masami Hiramatsu <mhiramat@kernel.org>
To: LKML <linux-kernel@vger.kernel.org>
Subject: [RFC PATCH v2 0/3] kprobes: Support nested kprobes
Date: Fri,  8 May 2020 23:24:55 +0900
Message-Id: <158894789510.14896.13461271606820304664.stgit@devnote2>
X-Mailer: git-send-email 2.20.1
User-Agent: StGit/0.17.1-dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_072502_836264_D9F9F582 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Wang Nan <wangnan0@huawei.com>, Song Liu <songliubraving@fb.com>,
 Martin KaFai Lau <kafai@fb.com>, Daniel Borkmann <daniel@iogearbox.net>,
 Russell King <linux@armlinux.org.uk>,
 Network Development <netdev@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Will Deacon <will@kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Yonghong Song <yhs@fb.com>,
 bpf <bpf@vger.kernel.org>, Andrii Nakryiko <andriin@fb.com>,
 Ingo Molnar <mingo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Eelco Chaudron <echaudro@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Here is the 2nd version of the series to add nested-kprobes support
to x86, arm64 and arm. This makes kprobes to accept 1-level nesting
instead of incrementing missed count.

In this version, I fixed a mistake for the kprobes on ftrace on x86
and dump nested probes when we detect an unrecoverable kprobe.

Nested Kprobes
--------------

Any kprobes hits in kprobes pre/post handler context can be nested
at once. If the other kprobes hits in the nested pre/post handler
context or in the single-stepping context, that will be still
missed.

The nest level is actually easily extended, but too many nest
level can lead the overflow of the kernel stack (for each nest,
the stack will be consumed by saving registers, handling kprobes
and pre/post handlers.) Thus, at this moment it allows only one
level nest.

This feature allows BPF or ftrace user to put a kprobe on BPF
jited code or ftrace internal code running in the kprobe context
for debugging.

We can test this feature on the kernel with
CONFIG_KPROBE_EVENTS_ON_NOTRACE=y as below.

  # cd /sys/kernel/debug/tracing
  # echo p ring_buffer_lock_reserve > kprobe_events
  # echo p vfs_read >> kprobe_events
  # echo stacktrace > events/kprobes/p_ring_buffer_lock_reserve_0/trigger
  # echo 1 > events/kprobes/enable
  # cat trace
  ...
               cat-151   [000] ...1    48.669190: p_vfs_read_0: (vfs_read+0x0/0x160)
               cat-151   [000] ...2    48.669276: p_ring_buffer_lock_reserve_0: (ring_buffer_lock_reserve+0x0/0x400)
               cat-151   [000] ...2    48.669288: <stack trace>
   => kprobe_dispatcher
   => opt_pre_handler
   => optimized_callback
   => 0xffffffffa0002331
   => ring_buffer_lock_reserve
   => kprobe_trace_func
   => kprobe_dispatcher
   => opt_pre_handler
   => optimized_callback
   => 0xffffffffa00023b0
   => vfs_read
   => load_elf_phdrs
   => load_elf_binary
   => search_binary_handler.part.0
   => __do_execve_file.isra.0
   => __x64_sys_execve
   => do_syscall_64
   => entry_SYSCALL_64_after_hwframe
  
To check unoptimized code, disable optprobe and dump the log.

  # echo 0 > /proc/sys/debug/kprobes-optimization
  # echo > trace
  # cat trace
               cat-153   [000] d..1   140.581433: p_vfs_read_0: (vfs_read+0x0/0x160)
               cat-153   [000] d..2   140.581780: p_ring_buffer_lock_reserve_0: (ring_buffer_lock_reserve+0x0/0x400)
               cat-153   [000] d..2   140.581811: <stack trace>
   => kprobe_dispatcher
   => aggr_pre_handler
   => kprobe_int3_handler
   => do_int3
   => int3
   => ring_buffer_lock_reserve
   => kprobe_trace_func
   => kprobe_dispatcher
   => aggr_pre_handler
   => kprobe_int3_handler
   => do_int3
   => int3
   => vfs_read
   => load_elf_phdrs
   => load_elf_binary
   => search_binary_handler.part.0
   => __do_execve_file.isra.0
   => __x64_sys_execve
   => do_syscall_64
   => entry_SYSCALL_64_after_hwframe

So we can see the kprobe can be nested.

Thank you,

---

Masami Hiramatsu (3):
      x86/kprobes: Support nested kprobes
      arm64: kprobes: Support nested kprobes
      arm: kprobes: Support nested kprobes


 arch/arm/include/asm/kprobes.h     |    5 +-
 arch/arm/probes/kprobes/core.c     |   83 +++++++++++++++---------------
 arch/arm/probes/kprobes/core.h     |   30 +++++++++++
 arch/arm/probes/kprobes/opt-arm.c  |    6 +-
 arch/arm64/include/asm/kprobes.h   |    5 +-
 arch/arm64/kernel/probes/kprobes.c |   79 +++++++++++++++++-----------
 arch/x86/include/asm/kprobes.h     |    5 +-
 arch/x86/kernel/kprobes/common.h   |   39 +++++++++++++-
 arch/x86/kernel/kprobes/core.c     |  100 ++++++++++++++++--------------------
 arch/x86/kernel/kprobes/ftrace.c   |    6 +-
 arch/x86/kernel/kprobes/opt.c      |   13 +++--
 kernel/kprobes.c                   |    1 
 12 files changed, 226 insertions(+), 146 deletions(-)

--
Masami Hiramatsu (Linaro) <mhiramat@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
