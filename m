Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9381EF8CC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 15:18:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0057PM4KIfHLFquqGeZtwKDHBOYzp0RFywIhYeCsZEQ=; b=dk/0gIRbTV27EP
	hUQEZTRUm2OghU9VC+kRm4JJF964G/y/ly9nSz0BY6ryDWBtSWkNwxjsVwGMSskmE4EPj5q73vde4
	1okdss4O2CKyOxZrMm0hDOAo2T/Zcg9/uDGlzwKx/UZRRz9M7c5yHuYw0gSV8NFCJ/SHJBG3rGpS1
	A2KbMFKmf2U5h2Bm4C3KNVmaYdvh205oErkQGgNC3B5Kx7NlC35qBLTABGU+SjOhiVADseBLAjOlo
	TEzwjDtJRSeKkkSYOOR+Z1qnK5fQha1vZlBCP4occLarxiMZGFb8FQKr6iyv7RptbK5WPYK4O2rbt
	d8j8MHs/y19HwTJFwgUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhCFH-0001ub-Pf; Fri, 05 Jun 2020 13:18:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhCF8-0001tm-0h
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 13:18:43 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 230382067B;
 Fri,  5 Jun 2020 13:18:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591363121;
 bh=E8zd1k6lBfh5hIPxsN+yGGvhFntauwXqOH2qSc+8OZs=;
 h=From:To:Cc:Subject:Date:From;
 b=dsehpjipT9kRadH9vpuX2x9bB2RzPipHtTjY39kJjrKcVGyYdGMD+GicGsXVuDIpT
 vVOiO9+6anGy9UeKbKG6cVwOQ9RgeATahOztbS7J5L6xWQ+dRJU2+VXKZHq4RqxTMl
 9BxBCqdu4W5bvYwdr8sp/N8DyGCdIP3cEVBzza4k=
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH 0/5] arm64: vdso: getcpu() support
Date: Fri,  5 Jun 2020 14:11:26 +0100
Message-Id: <20200605131131.16491-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_061842_101796_9DE02CE9 
X-CRM114-Status: GOOD (  17.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Brown <broonie@kernel.org>, Andrei Vagin <avagin@gmail.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some applications, especially tracing ones, benefit from avoiding the
syscall overhead for getcpu() so it is common for architectures to have
vDSO implementations. Add one for arm64, using TPIDRRO_EL0 to pass a
pointer to per-CPU data rather than just store the immediate value in
order to allow for future extensibility.

It is questionable if something TPIDRRO_EL0 based is worthwhile at all
on current kernels, since v4.18 we have had support for restartable
sequences which can be used to provide a sched_getcpu() implementation
with generally better performance than the vDSO approach on
architectures which have that[1].  Work is ongoing to implement this for
glibc:

    https://lore.kernel.org/lkml/20200527185130.5604-3-mathieu.desnoyers@efficios.com/

but is not yet merged and will need similar work for other userspaces.
The main advantages for the vDSO implementation are the node parameter
(though this is a static mapping to CPU number so could be looked up
separately when processing data if it's needed, it shouldn't need to be
in the hot path) and ease of implementation for users.  

This is currently not compatible with KPTI due to what Will suggests is
a misunderstanding on my part about the use of TPIDRRO_EL0 by the KPTI
trampoline, since this posting is mainly for discussion of the approach
as a whole and Will only just mentioned this that's not been addressed
here.

Since we currently only have a single data page for the vDSO this will
also only currently work for lower numbered CPUs, this restriction will
be addressed separately.

There is some overlap with an in flight patch series from Andrei Vagin
supporting time namespaces in the vDSO, there shouldn't be a fundamental
issue integrating the two serieses.

This builds on work done by Kristina Martsenko some time ago but is a
new implementation.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=d7822b1e24f2df5df98c76f0e94a5416349ff759

Mark Brown (5):
  arm64: vdso: Provide a define when building the vDSO
  arm64: vdso: Add per-CPU data
  arm64: vdso: Initialise the per-CPU vDSO data
  arm64: vdso: Add getcpu() implementation
  selftests: vdso: Support arm64 in getcpu() test

 arch/arm64/include/asm/processor.h            | 12 +----
 arch/arm64/include/asm/vdso/datapage.h        | 54 +++++++++++++++++++
 arch/arm64/kernel/process.c                   | 26 ++++++++-
 arch/arm64/kernel/vdso.c                      | 33 +++++++++++-
 arch/arm64/kernel/vdso/Makefile               |  4 +-
 arch/arm64/kernel/vdso/vdso.lds.S             |  1 +
 arch/arm64/kernel/vdso/vgetcpu.c              | 48 +++++++++++++++++
 .../testing/selftests/vDSO/vdso_test_getcpu.c | 10 ++++
 8 files changed, 172 insertions(+), 16 deletions(-)
 create mode 100644 arch/arm64/include/asm/vdso/datapage.h
 create mode 100644 arch/arm64/kernel/vdso/vgetcpu.c

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
