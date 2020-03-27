Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1894E195E88
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 20:22:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CGY9SVrA22u6b02YoEzZDh5bEU8X333DCoBSoOi0rTk=; b=j8QUpWDEskrDYM
	RH34o9C4HxnpcMoOhL1suzzDfJhM+4xMb2xsJ8VO+7xvlxuTSDC8fkCGP3Gn0z1oKlQoUXURwB3ec
	XNq1D5+GG0+Diihwb3zwHeyLj6WjnW6ZLZg90J8PA1X27Wa/AecqceF1lamZbnh/dj6r9cBSmIX3N
	AKtrwQUgDd5T0Py+yS/xpIM2Ok5N9vJI7C35dzlYFGFLoIdttQamhCtU6186Cu7a/ZbFnYvc4UAs/
	S34KLV/TGQNWQZkZTXl07jn8BwvqWZ9QNpfbHXI7b5OoS00WlcL2/vzLNrF9o/mldkjfNPmFOID/r
	0b2lESKYYw9S6edZDFow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHuYT-0002Hs-0l; Fri, 27 Mar 2020 19:22:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHuXi-0001fH-QP
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 19:21:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5481D101E;
 Fri, 27 Mar 2020 12:21:22 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C573A3F71E;
 Fri, 27 Mar 2020 12:21:16 -0700 (PDT)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH 0/5] arm64: Initial BTI kernel support
Date: Fri, 27 Mar 2020 19:21:02 +0000
Message-Id: <20200327192107.18394-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_122122_893483_8EB0247E 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Brown <broonie@kernel.org>, Kees Cook <keescook@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series extends the use of BTI to most kernel executable
code, it does not currently handle BPF or the VDSO - those will be
handled by future updates.  It builds the kernel with annotations for
BTI and then maps the kernel with GP based on the support on the boot
CPU, rejecting secondaries that don't have BTI support.  If there is a
need to handle big.LITTLE systems with mismatched BTI support we will
have to revisit this but no implementations currently exist.

This is just for initial review, it obviously can't be applied until
after the merge window.  It depends on the userspace BTI patches and the
assembler annotation patches.

Since at least some versions of GCC appear to have an issue with
generating incorrect BTI annotations when BTI is used in conjunction
with pointer authentication for leaf functions this version of the
series disables building with GCC entirely.  The issue is still under
investigation, no issues have been seen with clang.

Mark Brown (5):
  arm64: bti: Support building kernel C code using BTI
  arm64: asm: Override SYM_FUNC_START when building the kernel with BTI
  arm64: Set GP bit in kernel page tables to enable BTI for the kernel
  arm64: mm: Mark module text as guarded pages
  arm64: bti: Provide Kconfig for kernel mode BTI

 arch/arm64/Kconfig                    | 18 +++++++++++
 arch/arm64/Makefile                   |  4 +++
 arch/arm64/include/asm/linkage.h      | 46 +++++++++++++++++++++++++++
 arch/arm64/include/asm/pgtable-prot.h |  5 +++
 arch/arm64/kernel/cpufeature.c        |  4 +++
 arch/arm64/mm/mmu.c                   | 24 ++++++++++++++
 arch/arm64/mm/pageattr.c              |  4 +--
 7 files changed, 103 insertions(+), 2 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
