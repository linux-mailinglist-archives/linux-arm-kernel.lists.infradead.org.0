Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B0042B9E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 18:01:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=fhVzK5d65dJiMOF4WqbPKJBmoHVeBDMBecgysh3K6hU=; b=JTK
	LOxWcph8xI5FDuHyDZbbYPnBTFYnRMEjfGDg5ylfJ/quT2ADepNgY2QmjqKw99TT69h2VR5UgxWnh
	UjmiiS7oDJFMIH8Jj2yomOtlXyjwmNwgIoruOrJgmQALqDDZovhdFUQEzyCFYzHL4flAohVn8czcR
	7vmn8KbcG2Un/QjeUNRw84PQ8eGxRShHZtxCDeE+GESU2aDrqe2o88efgF73wYBZXJe9oSeBhwKuj
	KwdvkJSte1E/fsaq/BHuBfLTQaRE1FifsE5oQDCIjWuOSZB2mUY/1JMSbLxO1l+a1edVDnA8hWBW/
	+ZQMe8cDx/66PhlVoZxF5MOnb/Um31Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb5gK-0007EW-K9; Wed, 12 Jun 2019 16:01:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hb5g1-0007Bo-Qw
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 16:00:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 49B412B;
 Wed, 12 Jun 2019 09:00:41 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 0EA383F73C;
 Wed, 12 Jun 2019 09:00:39 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/3] arm64/sve: Fix mutating register endianness on
 big-endian
Date: Wed, 12 Jun 2019 17:00:31 +0100
Message-Id: <1560355234-25516-1-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_090041_936060_35A1EE89 
X-CRM114-Status: GOOD (  11.02  )
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
Cc: Peter Maydell <peter.maydell@linaro.org>, gdb@sourceware.org,
 Alan Hayward <alan.hayward@arm.com>, Will Deacon <will.deacon@arm.com>,
 Zhang Lei <zhang.lei@jp.fujitsu.com>, Julien Grall <julien.grall@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 =?UTF-8?q?Alex=20Benn=C3=A9e?= <alex.bennee@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is a respin of [1], swapping the first two patches so that (new)
patch 1 can go to stable stand-alone without depending on patch 2.

I've also smuggled in a new trivial patch 3, that just replaces a
couple of magic numbers for which there is now a suitable #define to
use, which have been bugging me for a while.

Original blurb:

By inspection while debugging something else, I noticed that the byte
order of FPSIMD V-register stores and SVE Z-register stores is not the
same when running on big-endian.

This is not properly taken into account when moving between the FPSIMD
and SVE register views inside the kernel, resulting in the bytes of a
V-register getting spontaneously reversed in some situations, from
userspace's point of view.  The signal frame and ptrace interface are
also affected.  The KVM ABI forbids mixing the two views and so should
not be affected.

See patch 2 for details.

Patch 1 does some trivial preparatory refactoring.

gdb may or may not be affected by this, depending on how it uses the
NT_PRFPREG and NT_ARM_SVE regsets.  I'll leave it to the developers to
assess that.


[1] [PATCH 0/2] arm64/sve: Fix mutating register endianness on big-endian
http://lists.infradead.org/pipermail/linux-arm-kernel/2019-June/657824.html


Dave Martin (3):
  arm64/sve: Fix missing SVE/FPSIMD endianness conversions
  arm64/sve: Factor out FPSIMD to SVE state conversion
  arm64/sve: Fix a couple of magic numbers for the Z-reg count

 Documentation/arm64/sve.txt              | 16 +++++++++++
 arch/arm64/include/uapi/asm/kvm.h        |  7 +++++
 arch/arm64/include/uapi/asm/ptrace.h     |  4 +++
 arch/arm64/include/uapi/asm/sigcontext.h | 14 +++++++++
 arch/arm64/kernel/fpsimd.c               | 49 ++++++++++++++++++++++++--------
 5 files changed, 78 insertions(+), 12 deletions(-)

-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
