Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DF6336FE0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 11:32:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=1FRRxFFupegkmGgbuEbHsShKiKg2kDWdIcKPHH04SyI=; b=O35
	XyxVgofQz0NsUQkWoVmmOARyyuLK33l0I72SbxeOw5jmlE3Bn50TDZ5WVhLdckwc0pD28cAkMYBWU
	PMJ0YdPm6nOspEt94+Mz3s+6PSaKBbbV3P6odiIY4msXWTpZYPIT+KhIbsYfdd4q2V3/yG1hJNFT4
	nD/BrgNd0pzQoHeXiOs7BortA4XhSdQBwReZh3ancFh7hFdYUwlqie1NKQdez1KH2Z5G3B2J3Ifvy
	l2KR38mqmJJVKAz6d/1YPU+BJ2Ll6AGEvgkZUwAB1VhHhW+8ZnY2tF8UW2BCvreN8h4ZTLgBJNTYv
	YUCOoKxIkTIr5PNRMLw1b0aBk/Qj/Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYokp-0006Rr-14; Thu, 06 Jun 2019 09:32:15 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYokh-0006Qa-Fd
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 09:32:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9D070341;
 Thu,  6 Jun 2019 02:32:04 -0700 (PDT)
Received: from e112298-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 7EB983F690;
 Thu,  6 Jun 2019 02:32:02 -0700 (PDT)
From: Julien Thierry <julien.thierry@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 0/8] arm64: IRQ priority masking and Pseudo-NMI fixes
Date: Thu,  6 Jun 2019 10:31:49 +0100
Message-Id: <1559813517-41540-1-git-send-email-julien.thierry@arm.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_023207_525311_A977E021 
X-CRM114-Status: GOOD (  14.31  )
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
Cc: mark.rutland@arm.com, Julien Thierry <julien.thierry@arm.com>,
 marc.zyngier@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, rostedt@goodmis.org, james.morse@arm.com,
 yuzenghui@huawei.com, wanghaibin.wang@huawei.com, liwei391@huawei.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Version one[1] of this series attempted to fix the issue reported by
Zenghui[2] when using the function_graph tracer with IRQ priority
masking.

Since then, I realized that priority masking and the use of Pseudo-NMIs
was more broken than I thought.

* Patch 1-2 are just some cleanup
* Patch 3 fixes a potential issue with not clobbering condition flags
  in irqflags operations
* Patch 4 fixes an issue where calling C code in Pseudo-NMI before
  entering NMI enter could lead to potential races
* Patch 5 fixes the function_graph issue when using priority masking
* Patch 6 introduces some debug to hopefully avoid breaking things in
  the future
* Patch 7 is a rebased version of the patch sent by Wei Li[3] fixing
  an error that can happen during on some platform using the priority
  masking feature
* Patch 8 re-enables the Pseudo-NMI selection

Changes since V2 [4]:
- Rebase on v5.2-rc3
- clobber conditions flags for asm that needs it as pointed out by Marc Z.
  and Robin M.
- Fix the naming of the new PMR bit value
- Introduce some helper for the debug conditions
- use WARN_ONCE for debug that might be very noisy
- Reenable pseudo NMI.

Changes since V1 [1]:
- Fix possible race condition between NMI and trace irqflags
- Simplify the representation of PSR.I in the PMR value
- Include Wei Li's fix
- Rebase on v5.1-rc7

[1] https://marc.info/?l=linux-arm-kernel&m=155542458004480&w=2
[2] https://www.spinics.net/lists/arm-kernel/msg716956.html
[3] https://www.spinics.net/lists/arm-kernel/msg722171.html
[4] https://lkml.org/lkml/2019/4/29/643

Cheers,

Julien

-->

Julien Thierry (7):
  arm64: Do not enable IRQs for ct_user_exit
  arm64: irqflags: Pass flags as readonly operand to restore instruction
  arm64: irqflags: Add condition flags to inline asm clobber list
  arm64: Fix interrupt tracing in the presence of NMIs
  arm64: Fix incorrect irqflag restore for priority masking
  arm64: irqflags: Introduce explicit debugging for IRQ priorities
  arm64: Allow selecting Pseudo-NMI again

Wei Li (1):
  arm64: fix kernel stack overflow in kdump capture kernel

 arch/arm64/Kconfig                  | 12 +++++-
 arch/arm64/include/asm/arch_gicv3.h |  4 +-
 arch/arm64/include/asm/cpufeature.h |  6 +++
 arch/arm64/include/asm/daifflags.h  | 75 +++++++++++++++++++++------------
 arch/arm64/include/asm/irqflags.h   | 79 +++++++++++++++++-----------------
 arch/arm64/include/asm/kvm_host.h   |  7 ++--
 arch/arm64/include/asm/ptrace.h     | 10 ++++-
 arch/arm64/kernel/entry.S           | 84 +++++++++++++++++++++++++++++--------
 arch/arm64/kernel/irq.c             | 26 ++++++++++++
 arch/arm64/kernel/process.c         |  2 +-
 arch/arm64/kernel/smp.c             |  6 +--
 arch/arm64/kvm/hyp/switch.c         |  2 +-
 drivers/irqchip/irq-gic-v3.c        |  6 +++
 kernel/irq/irqdesc.c                |  8 +++-
 14 files changed, 227 insertions(+), 100 deletions(-)

--
1.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
