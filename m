Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2744BF439
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 15:39:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c3UzMF8QoSH9Ch7D/LCYKn577eFveZ4BIxSXFH5C044=; b=uf0MnMP8Z2cGld
	QVYPESbL55YEZWjkWrbxDwtvo+MRro+ewEZYYluPu5QMzWUt2GdR4i92gdIkSXI2L/h+7Tnm7qtuD
	KKSP7TewSHKmbOQLTvOg1XqQWwYvyCKnUnEjEAkDXXK5vRqtjRFuOYc7uyndmF67gnWvgvW9iQGG0
	4j8ND/lNLHkQJliEsHGVeJTkrkeaP2vX0IylenNnKPMsMkcpEdrRL55EnTh+qWBtdSifM2VF0dM5U
	OTWbnVFVfSF/s5u3xyloWPihkST5wnJw/dw0lX+WrmSIo6GsUxqTlK9AnELHrYAXxjef4iZDMphCz
	I8t1jOjlGIlGyIh3w81g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDTzQ-00074g-VQ; Thu, 26 Sep 2019 13:39:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDTyn-0006zn-IE
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 13:38:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BD8DC142F;
 Thu, 26 Sep 2019 06:38:44 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9EDAA3F534;
 Thu, 26 Sep 2019 06:38:43 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/4] arm64: vdso32: Address various issues
Date: Thu, 26 Sep 2019 14:38:01 +0100
Message-Id: <20190926133805.52348-1-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190920142738.qlsjwguc6bpnez63@willie-the-truck>
References: <20190920142738.qlsjwguc6bpnez63@willie-the-truck>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_063845_641765_DBCD4AA7 
X-CRM114-Status: UNSURE (   9.93  )
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
Cc: ard.biesheuvel@linaro.org, catalin.marinas@arm.com, ndesaulniers@google.com,
 tglx@linutronix.de, vincenzo.frascino@arm.com, will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

this patch series is meant to address the various compilation issues you
reported about arm64 vdso32. (This time for real I hope ;))

Please let me know if there is still something missing.

Thanks,
Vincenzo

Cc: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Thomas Gleixner <tglx@linutronix.de>

---

v2:
   - Fixed binutils detection
   - Addressed review comments

Vincenzo Frascino (4):
  arm64: vdso32: Introduce COMPAT_CC_IS_GCC
  arm64: vdso32: Detect binutils support for dmb ishld
  arm64: vdso32: Fix compilation warning
  arm64: Remove gettimeofday.S

 arch/arm64/Kbuild                            |  6 ++++++
 arch/arm64/Kconfig                           |  5 ++++-
 arch/arm64/Makefile                          | 15 ++-------------
 arch/arm64/include/asm/memory.h              |  5 +++++
 arch/arm64/include/asm/vdso/compat_barrier.h |  2 +-
 arch/arm64/kernel/vdso/gettimeofday.S        |  0
 arch/arm64/kernel/vdso32/Makefile            |  9 +++++++++
 7 files changed, 27 insertions(+), 15 deletions(-)
 delete mode 100644 arch/arm64/kernel/vdso/gettimeofday.S

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
