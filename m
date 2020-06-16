Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6D151FBE39
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 20:36:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aFNV8ZgMDamNaOvq/taWEsXo/S00rMLYlodaq7OAZrU=; b=lUyYXRWRl5w7Rk
	F96fyqw0kVzbinSdGpI+/W1thNnW6bE9DycLpibnvzOKkqRcZbt4nkPLcXs2+bNNeVbw+vZ8EulQ/
	m+O150xnQejP/6Zawny8EzPC8NryypqqCM0z/svFgI94iqiDpyvtB5uVK8yT6AOZDstAp48+l8zR2
	EuoPrzpXSLGls8qBFIT/YRRo2IXtp/eeTbQUfJH23Emb8aEuEYnBYAfk5+2NeL7OoPcNqEqORWkL3
	S9PoTOgYDuAzzEI2Q+byryw2aRZ/gR0ZmufpV6nBqouwWHQUaNuN1yeTn69xfnk2MaS81nMjSMwLG
	lvduEqiN1O0WQVrD9vsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlGRz-0001nE-Qc; Tue, 16 Jun 2020 18:36:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlGRq-0001lF-AP
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 18:36:39 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 66A05207C4;
 Tue, 16 Jun 2020 18:36:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592332598;
 bh=4NzNIX9HpS79xTiQ0dWJDWJ8fa1+r0RJ3XXw3mKE4+0=;
 h=From:To:Cc:Subject:Date:From;
 b=b8cjVnkGi+Nb+GQYbtzTmvsCmArAqwJMFfgbV2q+CYt16T8UREQ9y+N5y0wFM/2fE
 KgtUogwVjKOYblphCVict1gOPpKxXIkTsZCmjYzJNNrXTsIw/4q1fsivNWT7TvTZtx
 KQnhl0xvYe/mwWV/DJutrI/cbe9wK9Ibeq64TD70=
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: bti: Require clang >= 10.0.1 for in-kernel BTI support
Date: Tue, 16 Jun 2020 19:36:30 +0100
Message-Id: <20200616183630.2445-1-will@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_113638_402339_7156B29D 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Tom Stellard <tstellar@redhat.com>, Will Deacon <will@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com,
 Mark Brown <broonie@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>,
 kernel-team@android.com, Daniel Kiss <daniel.kiss@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Unfortunately, most versions of clang that support BTI are capable of
miscompiling the kernel when converting a switch statement into a jump
table. As an example, attempting to spawn a KVM guest results in a panic:

[   56.253312] Kernel panic - not syncing: bad mode
[   56.253834] CPU: 0 PID: 279 Comm: lkvm Not tainted 5.8.0-rc1 #2
[   56.254225] Hardware name: QEMU QEMU Virtual Machine, BIOS 0.0.0 02/06/2015
[   56.254712] Call trace:
[   56.254952]  dump_backtrace+0x0/0x1d4
[   56.255305]  show_stack+0x1c/0x28
[   56.255647]  dump_stack+0xc4/0x128
[   56.255905]  panic+0x16c/0x35c
[   56.256146]  bad_el0_sync+0x0/0x58
[   56.256403]  el1_sync_handler+0xb4/0xe0
[   56.256674]  el1_sync+0x7c/0x100
[   56.256928]  kvm_vm_ioctl_check_extension_generic+0x74/0x98
[   56.257286]  __arm64_sys_ioctl+0x94/0xcc
[   56.257569]  el0_svc_common+0x9c/0x150
[   56.257836]  do_el0_svc+0x84/0x90
[   56.258083]  el0_sync_handler+0xf8/0x298
[   56.258361]  el0_sync+0x158/0x180

This is because the switch in kvm_vm_ioctl_check_extension_generic()
is executed as an indirect branch to tail-call through a jump table:

ffff800010032dc8:       3869694c        ldrb    w12, [x10, x9]
ffff800010032dcc:       8b0c096b        add     x11, x11, x12, lsl #2
ffff800010032dd0:       d61f0160        br      x11

However, where the target case uses the stack, the landing pad is elided
due to the presence of a paciasp instruction:

ffff800010032e14:       d503233f        paciasp
ffff800010032e18:       a9bf7bfd        stp     x29, x30, [sp, #-16]!
ffff800010032e1c:       910003fd        mov     x29, sp
ffff800010032e20:       aa0803e0        mov     x0, x8
ffff800010032e24:       940017c0        bl      ffff800010038d24 <kvm_vm_ioctl_check_extension>
ffff800010032e28:       93407c00        sxtw    x0, w0
ffff800010032e2c:       a8c17bfd        ldp     x29, x30, [sp], #16
ffff800010032e30:       d50323bf        autiasp
ffff800010032e34:       d65f03c0        ret

Unfortunately, this results in a fatal exception because paciasp is
compatible only with branch-and-link (call) instructions and not simple
indirect branches.

A fix is being merged into Clang 10.0.1 so that a 'bti j' instruction is
emitted as an explicit landing pad in this situation. Make in-kernel
BTI depend on that compiler version when building with clang.

Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>
Cc: Tom Stellard <tstellar@redhat.com>
Cc: Daniel Kiss <daniel.kiss@arm.com>
Link: https://lore.kernel.org/r/20200615105524.GA2694@willie-the-truck
Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 31380da53689..4ae2419c14a8 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1630,6 +1630,8 @@ config ARM64_BTI_KERNEL
 	depends on CC_HAS_BRANCH_PROT_PAC_RET_BTI
 	# https://gcc.gnu.org/bugzilla/show_bug.cgi?id=94697
 	depends on !CC_IS_GCC || GCC_VERSION >= 100100
+	# https://reviews.llvm.org/rGb8ae3fdfa579dbf366b1bb1cbfdbf8c51db7fa55
+	depends on !CC_IS_CLANG || CLANG_VERSION >= 100001
 	depends on !(CC_IS_CLANG && GCOV_KERNEL)
 	depends on (!FUNCTION_GRAPH_TRACER || DYNAMIC_FTRACE_WITH_REGS)
 	help
-- 
2.27.0.290.gba653c62da-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
