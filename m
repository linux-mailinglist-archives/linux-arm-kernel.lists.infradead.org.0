Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80552441BE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 18:17:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=dxLbDxjmXJ250XG1P6DZqDSp/G75kYvHI67AF+gVEC0=; b=GkZ
	LX0Z4auqyUgmJD8PSQ3mtFvQOxnX9tN/FyyrG12yuI6CwGJ12OqPk9vvPNf63ONMoJHFMM5PYKKos
	iC4fPl3hEXKm3xzQBo8B2HE43o9dN7TTf5C6P5BMfgsKzs0LS6HugDD/CDJdjdIx/+f1P3MYXExfR
	wV1Gnup3ropGBfdHDXhempaCAfTDh+f/DIC2QvP/oDQz5pJR9jWE+bozqBV5sg5yE3qDT6redLHnk
	ReMHobG2ACGMNKscDxyJIZ5H2GZN6gu8WcFiM6ZoNlak4Mqk8kU/njjUmVL0QyQS94dpNvbE90azn
	+X7NllYR+aHdTLpF/qYHv0ZccJyRm1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbSPf-00044v-Fd; Thu, 13 Jun 2019 16:17:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbSPP-00043g-Sr
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 16:17:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3C2463EF;
 Thu, 13 Jun 2019 09:17:03 -0700 (PDT)
Received: from e108454-lin.cambridge.arm.com (e108454-lin.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DBD023F694;
 Thu, 13 Jun 2019 09:17:01 -0700 (PDT)
From: Julien Grall <julien.grall@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH v2 0/8] arm64/sve: First steps towards optimizing syscalls
Date: Thu, 13 Jun 2019 17:16:48 +0100
Message-Id: <20190613161656.20765-1-julien.grall@arm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_091703_977021_CDA830CB 
X-CRM114-Status: GOOD (  14.35  )
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
Cc: Anton.Kirilov@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 oleg@redhat.com, zhang.lei@jp.fujitsu.com, Julien Grall <julien.grall@arm.com>,
 alex.bennee@linaro.org, Dave.Martin@arm.com, Daniel.Kiss@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

This is a first attempt to optimize the syscall path when the user
application uses SVE. The patch series is based on v5.2-rc4.

Per the syscall ABI, SVE registers will be unknown after a syscall. In
practice, the kernel will disable SVE and the registers will be zeroed
(except the first 128-bits of each vector) on the next SVE instruction.
In a workload mixing SVE and syscalls, this will result to 2 entry/exit
to the kernel per syscall.

This series aims to avoid the second entry/exit by zeroing the SVE
registers on syscall return with a twist when the task will get
rescheduled.

This implementation will have an impact on application using SVE
only once. SVE will now be turned on until the application terminates
(unless disabling it via ptrace). Cleverer strategies for choosing
between SVE and FPSIMD context switching are possible (see [1]), but
it is difficult to assess the benefit right now. We could improve the
behaviour in the future as a selection of mature hardware platform
emerges that we can benchmark.

It is also possible to optimize the case when the SVE vector-length
is 128-bit (i.e the same size as the FPSIMD vectors). This could be
explored in the future respin of the series.

While developing the series, I have added a series of tracepoint in
the SVE code. They may not be suitable for upstreaming and hence not
included in the series. I can provide them if anyone is interested.

Note that the last patch for the series is is not here to optimize syscall
but SVE trap access by directly converting in hardware the FPSIMD state
to SVE state. If there are an interest to have this optimization earlier,
I can reshuffle the patches in the series.

Comments are welcomed.

Best regards,

[1] https://git.sphere.ly/dtc/kernel_moto_falcon/commit/acc207616a91a413a50fdd8847a747c4a7324167

Julien Grall (8):
  arm64/fpsimd: Update documentation of do_sve_acc
  arm64/signal: Update the comment in preserve_sve_context
  arm64/fpsimdmacros: Allow the macro "for" to be used in more cases
  arm64/fpsimdmacros: Introduce a macro to update ZCR_EL1.LEN
  arm64/sve: Implement an helper to flush SVE registers
  arm64/sve: Implement an helper to load SVE registers from FPSIMD state
  arm64/sve: Don't disable SVE on syscalls return
  arm64/sve: Rework SVE trap access to use TIF_SVE_NEEDS_FLUSH

 arch/arm64/include/asm/fpsimd.h       |  8 +++++
 arch/arm64/include/asm/fpsimdmacros.h | 48 +++++++++++++++++++------
 arch/arm64/include/asm/thread_info.h  |  5 ++-
 arch/arm64/kernel/entry-fpsimd.S      | 29 +++++++++++++++
 arch/arm64/kernel/fpsimd.c            | 67 ++++++++++++++++++++++++++++-------
 arch/arm64/kernel/process.c           |  1 +
 arch/arm64/kernel/ptrace.c            |  7 ++++
 arch/arm64/kernel/signal.c            | 17 +++++++--
 arch/arm64/kernel/syscall.c           | 13 +++----
 9 files changed, 162 insertions(+), 33 deletions(-)

-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
