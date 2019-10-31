Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8FA0EB427
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 16:45:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2TaWEqrosMKJOE4SJ2ND+WfA3e1RhbQ1JSh5o0imlkQ=; b=AfaqCx7+IJn9rL
	TWyi91zG1XiTVAIm50dIN3+jqYTLCfp7nxxpEYiV4wiayWQwTUemKG+WQwu8//SqNvh+2ANEcxS/s
	q3nnTFI06uy9lEU2GuQ7H5fmuT7wmwJDQOqEaL9yHq+tJkjz1LBtoCgL/G6U7zuD1JW1iciHbj3pC
	2xDXcrO4nhRcdXGVmOd1wW2CtV/CQvw2N2EB6D4XX6L2FqgT/XIQ/lFLQ3/i4nF8cwKgNLokz66i2
	2TXGWcFXrla/z7TQWDUAXj9w1R4UIa1u1wO8NdVv1pAynXW2f0VBzg59tbZhPe8XOVVBw+/kLRfyp
	duHY6amIAbv9A6+PDF9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQCdx-00063W-5k; Thu, 31 Oct 2019 15:45:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQCdp-00062M-9Q
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 15:45:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8C5E11F1;
 Thu, 31 Oct 2019 08:45:36 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A33BC3F71E;
 Thu, 31 Oct 2019 08:45:35 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/3] arm: Enable unified vDSO
Date: Thu, 31 Oct 2019 15:44:46 +0000
Message-Id: <20191031154449.49757-1-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_084541_375069_CE3D2AF2 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: tglx@linutronix.de, vincenzo.frascino@arm.com, luto@kernel.org,
 linux@armlinux.org.uk, arnd@arndb.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series is a follow up of [1] and enables the unified vDSO
library in the arm architecture.

The porting has been validated using the vdsotest test-suite [2]
extended to cover all the clock ids [3].

[1] https://patchwork.kernel.org/cover/11009649/
[2] https://github.com/nathanlynch/vdsotest
[3] https://github.com/fvincenzo/vdsotest

Cc: Russell King <linux@armlinux.org.uk>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Andy Lutomirski <luto@kernel.org>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

Vincenzo Frascino (3):
  arm: Add support for generic vDSO
  arm: Add clock_getres entry point
  arm: Add clock_gettime64 entry point

 arch/arm/include/asm/vdso/gettimeofday.h |  94 +++++++++
 arch/arm/include/asm/vdso/vsyscall.h     |  71 +++++++
 arch/arm/include/asm/vdso_datapage.h     |  29 +--
 arch/arm/kernel/vdso.c                   |  87 +-------
 arch/arm/mm/Kconfig                      |   3 +
 arch/arm/vdso/Makefile                   |  18 +-
 arch/arm/vdso/note.c                     |  15 ++
 arch/arm/vdso/vdso.lds.S                 |   2 +
 arch/arm/vdso/vgettimeofday.c            | 255 ++---------------------
 9 files changed, 223 insertions(+), 351 deletions(-)
 create mode 100644 arch/arm/include/asm/vdso/gettimeofday.h
 create mode 100644 arch/arm/include/asm/vdso/vsyscall.h
 create mode 100644 arch/arm/vdso/note.c

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
