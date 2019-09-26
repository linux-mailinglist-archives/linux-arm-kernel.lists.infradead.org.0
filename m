Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59968BEBCF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 08:04:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iOd6sUhXQSIEAcJIZNAw/Vt5RfJ8wPw26sm+edIDNR4=; b=IJRyO2s327xZcT
	RRzco4GZ3X+cPBAulfjY8vgP+YO6iWLzG/L8MAjXRfEsNBAxZ3WQFDiuXW8p6XV5NqnreKAzaKQBi
	8ZO+JvbcDEUoyYZTBT8skafLoPBCFCuo0X1Y38gGD5TFKq+B3PLnzhWzH3Wm/aMPgJVJP9JuaKNOL
	CGWzXEjAXRQG7J5gz9iO0WjEZ0wknQucJ65qbyhy68XR2dmZjgWEtTUjiTrKG1i5x5/W9rR5deV7u
	3k8adTUjP4pQBnokroFPMEq++mXdnvrAvu7ATWiwiNo8nKgBhDYQoV1VO1hb4goZckZirfXGJUv5K
	NDVgaZXeAYwpfHaDgEDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDMtA-0002Ds-S0; Thu, 26 Sep 2019 06:04:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDMsw-0002Cx-3A
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 06:04:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 46FC81570;
 Wed, 25 Sep 2019 23:04:12 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 579973F836;
 Wed, 25 Sep 2019 23:06:46 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/4] arm64: vdso32: Address various issues
Date: Thu, 26 Sep 2019 07:03:49 +0100
Message-Id: <20190926060353.54894-1-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190920142738.qlsjwguc6bpnez63@willie-the-truck>
References: <20190920142738.qlsjwguc6bpnez63@willie-the-truck>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_230414_173630_1C46E997 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
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
Cc: ard.biesheuvel@linaro.org, catalin.marinas@arm.com, ndesaulniers@google.com,
 tglx@linutronix.de, vincenzo.frascino@arm.com, will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

this patch series is meant to address the various compilation issues you
reported about arm64 vdso32.

Please let me know if there is still something missing.

Thanks,
Vincenzo

Cc: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Thomas Gleixner <tglx@linutronix.de>

Vincenzo Frascino (4):
  arm64: vdso32: Introduce COMPAT_CC_IS_GCC
  arm64: vdso32: Detect binutils support for dmb ishld
  arm64: vdso32: Fix compilation warning
  arm64: Remove gettimeofday.S

 arch/arm64/Kconfig                           |  5 ++++-
 arch/arm64/Makefile                          | 15 ++-------------
 arch/arm64/include/asm/memory.h              |  5 +++++
 arch/arm64/include/asm/vdso/compat_barrier.h |  2 +-
 arch/arm64/kernel/vdso/gettimeofday.S        |  0
 arch/arm64/kernel/vdso32/Makefile            |  5 ++++-
 6 files changed, 16 insertions(+), 16 deletions(-)
 delete mode 100644 arch/arm64/kernel/vdso/gettimeofday.S

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
