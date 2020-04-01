Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DCC919A4C0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 07:36:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XGNmJI1l6siHDZwh0e52O7bCI2M9MdZzODbjWBmlNV0=; b=US2ftqwRTBEV2O
	LwMeM63gzGTAxfi/li8TCmyjvM4cTIuA+ehzBhgHV+hz1UjVNnzo2EKolDQk61gjAHhVvGnW5v4Ac
	R8jZr8Vw1uDpQNe+51A8jnOOevrpWZT1k08ZqcptkOD/mOR5CKanyEwBTRKWEkBEEgk2XnAfhG/sL
	U7etj9b9UPbfUIGb9glWoRcUGvrRoV35d1ULpUKrTcvSiYioUoPVBAAnN04rrtxXtI49Dp+ddSvGY
	NK0nqi7v9OyG3k2TiRZIMGs15gXsfPoYWcKYuHkVONYDtqAS4ERh2tmi08KIx8ZSLAfw6SZ7haiVM
	7n6JgNTrrGSCc6uIJtLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJW3J-0007kR-Sx; Wed, 01 Apr 2020 05:36:37 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJW3C-0007jm-Vm
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 05:36:33 +0000
Received: by mail-qk1-x744.google.com with SMTP id u4so25835139qkj.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 22:36:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dTLHd+ljprL9Sw57RX/KQS0sSljDmATmVTa7Eftn9nY=;
 b=jqUmzHSbQy960O0bj19LoLcZ7Vi0soTgVr7Az1EyLkPnJIXeuPiQ51LKCcGUS8t6Oy
 x1Ov/s4gKt99lbV4rCsR3AK34IU2owK9aqigORy+kfaw318K8+FGPW3UNex2x+uI/iA0
 /OfzM27g9+Ad29SMxal3k96S943mHbT80l5ANMKDeF0XyeIVWoSEDq0n4R0CAz3CiSvJ
 EO9nc5+XMGe3K6FSKlQ0X7bAUSYL4R1pmXTCjrWYXDJUIxvkAssx4xY0VGxKc2wHBDxz
 2963A0W/R73XcZTbvWq0hj3lGfLx4jOBrTtewYICtwMlsn+EXj3Cyz+/Jzqzg7UbLYTY
 1fFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dTLHd+ljprL9Sw57RX/KQS0sSljDmATmVTa7Eftn9nY=;
 b=mxhbhF6NEH6F6p03t7EBsgGcL7qEvI2U78F695NliPWcLPteyDHHr50cf3rmIPCKUC
 wlN/HWcfYJQSOknWtBsD9r1lwmXR3zL6K72ZZAOqM3NnJjxwbs/Xv1uqIqYVtEZy/rl3
 zwwbPnoqLeh0pv0s+XMPhkXZw5eICJuS8Z5e+FudzvPYcBy8cC6JeMYww5CyKVBes7LX
 BhP9JbKftuK3cVNPbYq9zq9HvTeYh9r8oVm93ErvLJQx0Uvr8/ltYeixbwiJRxpLyktp
 IncGMW3Yw2wU+5RwAux9lVQdtXAvGssf+yCGkDD3T9KynWNqG6BRfAEUJD7vuNzWHCPX
 QRqA==
X-Gm-Message-State: ANhLgQ1LP0US4wH2jy42LtPh9eDWiWjg7IXusytm/DKPnPdGj8qlQQrZ
 zk/9fS+PTe56iEOjPKCQNeki5Osrw9U=
X-Google-Smtp-Source: ADFU+vuIJq8HSxb/csZ+DvwOyrAqqFgYrIpa62vJPWdMGcbUUxFPeHgWVpcqVEclqT7tX+TMgkGQ2Q==
X-Received: by 2002:a05:620a:1282:: with SMTP id
 w2mr7948339qki.444.1585719389204; 
 Tue, 31 Mar 2020 22:36:29 -0700 (PDT)
Received: from pek-lpggp6.wrs.com (unknown-105-123.windriver.com.
 [147.11.105.123])
 by smtp.gmail.com with ESMTPSA id c14sm811944qtv.32.2020.03.31.22.36.26
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 31 Mar 2020 22:36:28 -0700 (PDT)
From: Kevin Hao <haokexin@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: entry: Update the IRQ tracing before debug exception
 unmasked
Date: Wed,  1 Apr 2020 13:21:07 +0800
Message-Id: <20200401052107.36076-1-haokexin@gmail.com>
X-Mailer: git-send-email 2.25.1.377.g2d2118b814c1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_223631_047227_B3C08C44 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [haokexin[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When running the kgdb test suite, we get the following call trace:
  # echo kgdbts=V1 > /sys/module/kgdbts/parameters/kgdbts

  DEBUG_LOCKS_WARN_ON(current->hardirqs_enabled)
  WARNING: CPU: 10 PID: 697 at kernel/locking/lockdep.c:4793 check_flags.part.0+0x15c/0x180
  Modules linked in:
  CPU: 10 PID: 697 Comm: sh Not tainted 5.6.0-next-20200331-yoctodev-standard+ #341
  Hardware name: Marvell OcteonTX CN96XX board (DT)
  pstate: 604003c9 (nZCv DAIF +PAN -UAO)
  pc : check_flags.part.0+0x15c/0x180
  lr : check_flags.part.0+0x15c/0x180
  sp : ffff800017d0f830
  x29: ffff800017d0f830 x28: ffff000b936c0000
  x27: 00000000c28f5c29 x26: 00000000ffffffff
  x25: 00000000000003c0 x24: ffff800011af8dd0
  x23: 0000000000000000 x22: ffff8000119afdc0
  x21: ffff80001198bbe8 x20: ffff800011400018
  x19: ffff800012655000 x18: 0000000000000001
  x17: 0000000000000000 x16: 0000000000000000
  x15: ffff000b936c0470 x14: ffffffffffffffff
  x13: 0000000000000000 x12: ffff800012655000
  x11: ffff800017d0f830 x10: ffff800017d0f830
  x9 : 00000000000003c0 x8 : 6e655f7371726964
  x7 : 7261683e2d746e65 x6 : ffff8000126552fe
  x5 : 0000000000000000 x4 : 0000000000000000
  x3 : 00000000ffffffff x2 : 0000000000000000
  x1 : bbf8ef1cf7dda200 x0 : 0000000000000000
  Call trace:
   check_flags.part.0+0x15c/0x180
   lock_is_held_type+0xf0/0x120
   rcu_read_lock_sched_held+0x74/0x98
   trace_rcu_dyntick+0x1b8/0x1e0
   rcu_nmi_enter+0x7c/0xb8
   debug_exception_enter+0x68/0xe8
   do_debug_exception+0x60/0x150
   el1_sync_handler+0xd8/0xf8
   el1_sync+0x7c/0x100
   el1_irq+0x78/0x180
   kgdbts_break_test+0x0/0x40
   param_set_kgdbts_var+0x68/0xe8
   param_attr_store+0xb8/0x120
   module_attr_store+0x2c/0x48
   sysfs_kf_write+0x54/0x80
   kernfs_fop_write+0x154/0x248
   __vfs_write+0x24/0x50
   vfs_write+0xec/0x1d8
   ksys_write+0x74/0x100
   __arm64_sys_write+0x24/0x30
   do_el0_svc+0x8c/0x1e8
   el0_sync_handler+0x11c/0x198
   el0_sync+0x158/0x180
  irq event stamp: 76505
  hardirqs last  enabled at (76505): [<ffff80001009f9ec>] debug_exception_exit+0x54/0x68
  hardirqs last disabled at (76504): [<ffff80001009fb04>] debug_exception_enter+0xac/0xe8
  softirqs last  enabled at (76498): [<ffff8000100817b4>] __do_softirq+0x5a4/0x5ec
  softirqs last disabled at (76439): [<ffff8000100b6ff4>] irq_exit+0x13c/0x150

The reason is that an IRQ is emitted when doing the single step debug,
but in the IRQ handler we would enable the debug exception before
updating the IRQ tracing flags. This will cause the debug exception
running in an context which the IRQ state and IRQ tracing flags are
mismatched. And the debug exception handler only update the IRQ tracing
flag to off when it think that the debug emit in a IRQ enabled context.
Then we would get the above call trace if any code like check_flags()
is called in the debug exception handler's path. So we have to update
the IRQ tracing to the correct status before the debug exception unmasked.

Signed-off-by: Kevin Hao <haokexin@gmail.com>
---
 arch/arm64/kernel/entry.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index ddcde093c433..0cc65b7b9e1a 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -592,7 +592,6 @@ SYM_CODE_END(el1_sync)
 SYM_CODE_START_LOCAL_NOALIGN(el1_irq)
 	kernel_entry 1
 	gic_prio_irq_setup pmr=x20, tmp=x1
-	enable_da_f
 
 #ifdef CONFIG_ARM64_PSEUDO_NMI
 	test_irqs_unmasked	res=x0, pmr=x20
@@ -605,6 +604,7 @@ SYM_CODE_START_LOCAL_NOALIGN(el1_irq)
 	bl	trace_hardirqs_off
 #endif
 
+	enable_da_f
 	irq_handler
 
 #ifdef CONFIG_PREEMPTION
-- 
2.25.1.377.g2d2118b814c1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
