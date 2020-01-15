Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 190E113BE6F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 12:30:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=82mBA4t7ofY2BHLMTRUwkgfDUd6SMBijkVNDY8ry3LY=; b=jMtH41umjEH7RU
	mApr9l2jgtDVbFwBhCdLjOpBwicTn/wodVWBSUerWquEfnTkK23SjDME4ZWc+ky3XfANWN4W4wYx+
	zepsl8nuKMCvp+TPtMNJL4seq8YaEKdioC1/2OnMjtPKLJ3ghCLnkHXwu5zIMxBy7xCf//Y96ITCX
	7HMwwCE8lgp1zrLB/vixKAc0HxQIDDGMd/zpDlC4WietUWwjmssEKOvFyY2YcdkmHwhO+6By8ESto
	vXaUjx7yfJ+mqDpFOdQLS5SEmRJfrUzYtRgyOUldr+Q4XjVE4udxaOJ7kOHqDhm8tVbqZzMcmDRd+
	j7n+3yLKMj2SOndFHJgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irgsd-0001bT-3q; Wed, 15 Jan 2020 11:30:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irgsI-0001Yc-KG
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 11:30:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 27AFB31B;
 Wed, 15 Jan 2020 03:30:13 -0800 (PST)
Received: from arrakis.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 694823F6C4;
 Wed, 15 Jan 2020 03:30:12 -0800 (PST)
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/2] arm64: Simplify gas LSE support detection
Date: Wed, 15 Jan 2020 11:30:06 +0000
Message-Id: <20200115113008.3334-1-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.25.0.rc1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_033014_720085_57AE8967 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Vladimir Murzin <vladimir.murzin@arm.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Version two of the patch series moving the LSE assembler support
detection from Makefile to Kconfig.

Changes since v1 [1]:

- Re-introduce the Makefile warning if the .config contains
  CONFIG_ARM64_USE_LSE_ATOMICS but the assembler does not support the
  feature, disabling CONFIG_ARM64_LSE_ATOMICS.

[1] http://lkml.kernel.org/r/20200109174948.48211-1-catalin.marinas@arm.com

Catalin Marinas (2):
  kbuild: Add support for 'as-instr' to be used in Kconfig files
  arm64: Move the LSE gas support detection to Kconfig

 arch/arm64/Kconfig                    |  5 +++++
 arch/arm64/Makefile                   | 11 ++++-------
 arch/arm64/include/asm/atomic_ll_sc.h |  2 +-
 arch/arm64/include/asm/lse.h          |  6 +++---
 arch/arm64/kernel/cpufeature.c        |  4 ++--
 scripts/Kconfig.include               |  4 ++++
 6 files changed, 19 insertions(+), 13 deletions(-)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
