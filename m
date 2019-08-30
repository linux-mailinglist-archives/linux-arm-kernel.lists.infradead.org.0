Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF82A38AA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 16:00:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Jzq2M90gybe/SrBr7IdoWfqVyB2q3RWTvQH31Bl/OJg=; b=SajTkume1LY/y8
	oml0bDv5u+cQ+4ZPGLRDVE7L79/TNzzsVNKHNE0xCwXonb+DpVZgl+o4mM+d2LYBGyvXL+dOrQrb0
	34mveEmQ0bk+2y8eLS/l6m2DqnCFF+vrv8fPCcAD7HMKdMsXDha1dlki5BzL66Eqf30C+Y4y8s8lA
	ZC5fePIC7r5LLUO2Ik2TYzX+YVyIq20T8arme7eshJGmIXX7KSliPDoLP524wGS+aX5W8PlNotVEn
	QYu1Jwe/M6taY54BHWxvQCDxdR/NDkT6FhMtQd3q2biYBg/Wt1a20CjPSn3Q9miC2GnldQLEQa+rB
	/GjEP6Czx3NFJNbtAEHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3hSD-0006Xf-I7; Fri, 30 Aug 2019 14:00:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3hQt-0004WE-8e
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 13:59:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7773A344;
 Fri, 30 Aug 2019 06:59:14 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E04803F703;
 Fri, 30 Aug 2019 06:59:12 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-kselftest@vger.kernel.org
Subject: [PATCH v2 0/8] vdso: Complete the conversion to 32bit syscalls
Date: Fri, 30 Aug 2019 14:58:54 +0100
Message-Id: <20190830135902.20861-1-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_065919_361922_A7541770 
X-CRM114-Status: UNSURE (   9.16  )
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
Cc: catalin.marinas@arm.com, 0x7f454c46@gmail.com, salyzyn@android.com,
 paul.burton@mips.com, luto@kernel.org, tglx@linutronix.de, will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series is a follow up to "lib/vdso, x86/vdso: Fix fallout
from generic VDSO conversion" [1].

The main purpose is to complete the 32bit vDSOs conversion to use the
legacy 32bit syscalls as a fallback. With the conversion of all the
architectures present in -next complete, this patch series removes as
well the conditional choice in between 32 and 64 bit for 32bit vDSOs.

This series has been rebased on linux-next/master.

[1] https://lkml.org/lkml/2019/7/28/86

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Paul Burton <paul.burton@mips.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Dmitry Safonov <0x7f454c46@gmail.com>
Cc: Andy Lutomirski <luto@kernel.org>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

Vincenzo Frascino (8):
  arm64: compat: vdso: Expose BUILD_VDSO32
  lib: vdso: Build 32 bit specific functions in the right context
  mips: compat: vdso: Use legacy syscalls as fallback
  lib: vdso: Remove VDSO_HAS_32BIT_FALLBACK
  lib: vdso: Remove checks on return value for 32 bit vDSO
  arm64: compat: vdso: Remove unused VDSO_HAS_32BIT_FALLBACK
  mips: vdso: Remove unused VDSO_HAS_32BIT_FALLBACK
  x86: vdso: Remove unused VDSO_HAS_32BIT_FALLBACK

 .../include/asm/vdso/compat_gettimeofday.h    |  2 +-
 arch/mips/include/asm/vdso/gettimeofday.h     | 43 +++++++++++++++++++
 arch/mips/vdso/config-n32-o32-env.c           |  1 +
 arch/x86/include/asm/vdso/gettimeofday.h      |  2 -
 lib/vdso/gettimeofday.c                       | 30 ++++++-------
 5 files changed, 57 insertions(+), 21 deletions(-)

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
