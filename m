Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A0DEB24FE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 20:21:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=gx+0i6/7bPcT2zEMeWEtBqOQ7PNbJS6IncF4DqXpH1k=; b=RK1
	i+lqwOK8vjCFBwkBpDnS9F5WwYHK5FuTcqvReDYQUeYOeGaQw9BJfHjpkBrzy04K2F+xlFB8XvcxW
	AvOdbhz5hf/86c6c2UqILbRl12Kz/Kx+nyyDUAIIou9orompPXGIMo6K7z2TSOqJ3+8HNC0ZmpABw
	jczFQIDNiPLfEJRqEbZ6+N0KeKpB+BcHK9dB6XjKbaEAV5lusTBdBsV5+koRDM9UvM9IToJSqq7uu
	VOiYLBrgUTHcplibt/HXhn4HOISkt/kCpvMtQVNQUSVR1sXeMNF52RjQYLFQ4o1A48cysVQMsKyu3
	M7mSzBBpK5qSyLbv7H0dUeP208dwAYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8qBr-0004wY-4o; Fri, 13 Sep 2019 18:21:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8qBc-0004uy-2I
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 18:20:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 217FE28;
 Fri, 13 Sep 2019 11:20:45 -0700 (PDT)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A48663F71F;
 Fri, 13 Sep 2019 11:20:42 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kernel@vger.kernel.org
Subject: [RFC PATCH v2 00/12] Unify SMP stop generic logic to common code
Date: Fri, 13 Sep 2019 19:19:41 +0100
Message-Id: <20190913181953.45748-1-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_112048_198125_4F2EC8C1 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arch@vger.kernel.org, mark.rutland@arm.com,
 sparclinux@vger.kernel.org, dzickus@redhat.com, ehabkost@redhat.com,
 peterz@infradead.org, catalin.marinas@arm.com, x86@kernel.org,
 linux@armlinux.org.uk, davem@davemloft.net, hch@infradead.org,
 takahiro.akashi@linaro.org, mingo@redhat.com, james.morse@arm.com,
 hidehiro.kawai.ez@hitachi.com, tglx@linutronix.de, will@kernel.org,
 dave.martin@arm.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

the logic underlying SMP stop and kexec crash procedures, beside containing
some arch-specific bits, is mostly generic and common across all archs:
despite this fact, such logic is now scattered across all architectures and
on some of them is flawed, in such a way that, under some specific
conditions, you can end up with a CPU left still running after a panic and
possibly lost across a subsequent kexec crash reboot. [1]

Beside the flaws on some archs, there is anyway lots of code duplication,
so this patch series attempts to move into common code all the generic SMP
stop and crash logic, fixing observed issues, and leaving only the arch
specific bits inside properly provided arch-specific helpers.

An architecture willing to rely on this SMP common logic has to define its
own helpers and set CONFIG_ARCH_USE_COMMON_SMP_STOP=y.

This series wire this up for arm64, x86, arm, sparc64.

Behaviour is not changed for architectures not adopting this new common
logic.

In v2 the SMP common stop/crash code is generalized a bit more to address
the needs of the newly ported architectures (x86, arm, sparc64).

Tested as follows:

- arm64:
 1. boot/reboot/emergency reboot
 2. panic on a starting CPU within a 2 CPUs system (freezing properly)
 3. kexec reboot after a panic like 2. (not losing any CPU on reboot)
 4. kexec reboot after a panic like 2. and a simultaneous reboot
    (instrumenting code to delay the stop messages transmission
     to have time to inject a reboot -f)

- x86:
 1. boot/reboot/emergency reboot/emergency reboot with VMX enabled
 2. panic on a starting CPU within a 2 CPUs system
 2. panic sysrq 4-CPus
 3. kexec reboot after a panic

- arm:
1. boot

- sparc64:
1. build

A couple more of still to be done potential enhancements have been noted
on specific commits, and a lot more of testing remains surely to be done
as of now, but, in the context of this RFC, any thoughts on this approach
in general ?

Thanks,

Cristian


Changes:
--------

v1-->v2:
- rebased on v5.3-rc8
- moved common Kconfig bits to arch/Kconfig
- extended SMP common stop/crash generic code to address new architectures
  needs: custom wait/timeouts, max_retries, attempt numbers.
- ported x86 to SMP common stop/crash code
- ported arm to SMP common stop/crash code
- ported sparc64 to SMP common stop code


[1]

[root@arch ~]# echo 1 > /sys/devices/system/cpu/cpu1/online
[root@arch ~]# [  152.583368] ------------[ cut here ]------------
[  152.583872] kernel BUG at arch/arm64/kernel/cpufeature.c:852!
[  152.584693] Internal error: Oops - BUG: 0 [#1] PREEMPT SMP
[  152.585228] Modules linked in:
[  152.586040] CPU: 1 PID: 0 Comm: swapper/1 Not tainted 5.3.0-rc5-00001-gcabd12118c4a-dirty #2
[  152.586218] Hardware name: Foundation-v8A (DT)
[  152.586478] pstate: 000001c5 (nzcv dAIF -PAN -UAO)
[  152.587260] pc : has_cpuid_feature+0x35c/0x360
[  152.587398] lr : verify_local_elf_hwcaps+0x6c/0xf0
[  152.587520] sp : ffff0000118bbf60
[  152.587605] x29: ffff0000118bbf60 x28: 0000000000000000
[  152.587784] x27: 0000000000000000 x26: 0000000000000000
[  152.587882] x25: ffff00001167a010 x24: ffff0000112f59f8
[  152.587992] x23: 0000000000000000 x22: 0000000000000000
[  152.588085] x21: ffff0000112ea018 x20: ffff000010fe5518
[  152.588180] x19: ffff000010ba3f30 x18: 0000000000000036
[  152.588285] x17: 0000000000000000 x16: 0000000000000000
[  152.588380] x15: 0000000000000000 x14: ffff80087a821210
[  152.588481] x13: 0000000000000000 x12: 0000000000000000
[  152.588599] x11: 0000000000000080 x10: 00400032b5503510
[  152.588709] x9 : 0000000000000000 x8 : ffff000010b93204
[  152.588810] x7 : 00000000800001d8 x6 : 0000000000000005
[  152.588910] x5 : 0000000000000000 x4 : 0000000000000000
[  152.589021] x3 : 0000000000000000 x2 : 0000000000008000
[  152.589121] x1 : 0000000000180480 x0 : 0000000000180480
[  152.589379] Call trace:
[  152.589646]  has_cpuid_feature+0x35c/0x360
[  152.589763]  verify_local_elf_hwcaps+0x6c/0xf0
[  152.589858]  check_local_cpu_capabilities+0x88/0x118
[  152.589968]  secondary_start_kernel+0xc4/0x168
[  152.590530] Code: d53801e0 17ffff58 d5380600 17ffff56 (d4210000)
[  152.592215] ---[ end trace 80ea98416149c87e ]---
[  152.592734] Kernel panic - not syncing: Attempted to kill the idle task!
[  152.593173] Kernel Offset: disabled
[  152.593501] CPU features: 0x0004,20c02008
[  152.593678] Memory Limit: none
[  152.594208] ---[ end Kernel panic - not syncing: Attempted to kill the idle task! ]---
[root@arch ~]# bash: echo: write error: Input/output error
[root@arch ~]#
[root@arch ~]#
[root@arch ~]# echo HELO
HELO


Cristian Marussi (12):
  smp: add generic SMP-stop support to common code
  smp: unify crash_ and smp_send_stop() logic
  smp: coordinate concurrent crash/smp stop calls
  smp: address races of starting CPUs while stopping
  arm64: smp: use generic SMP stop common code
  arm64: smp: use SMP crash-stop common code
  arm64: smp: add arch specific cpu parking helper
  x86: smp: use generic SMP stop common code
  x86: smp: use SMP crash-stop common code
  arm: smp: use generic SMP stop common code
  arm: smp: use SMP crash-stop common code
  sparc64: smp: use generic SMP stop common code

 arch/Kconfig                    |   7 ++
 arch/arm/Kconfig                |   1 +
 arch/arm/kernel/machine_kexec.c |  27 ++---
 arch/arm/kernel/smp.c           |  18 +---
 arch/arm64/Kconfig              |   1 +
 arch/arm64/include/asm/smp.h    |   2 -
 arch/arm64/kernel/smp.c         | 127 +++++++-----------------
 arch/sparc/Kconfig              |   1 +
 arch/sparc/kernel/smp_64.c      |  15 +--
 arch/x86/Kconfig                |   1 +
 arch/x86/include/asm/reboot.h   |   2 +
 arch/x86/include/asm/smp.h      |   6 --
 arch/x86/kernel/crash.c         |  27 +----
 arch/x86/kernel/reboot.c        |  50 ++++++----
 arch/x86/kernel/smp.c           |  98 ++++++++----------
 include/linux/smp.h             | 109 ++++++++++++++++++++
 kernel/panic.c                  |  26 -----
 kernel/smp.c                    | 170 ++++++++++++++++++++++++++++++++
 18 files changed, 418 insertions(+), 270 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
