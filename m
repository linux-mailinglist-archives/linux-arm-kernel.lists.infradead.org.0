Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0E64D2F67
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 19:15:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6hpoNxH3UD9ikV2R1aQ4/AXONDE2CBXlND82bLcWXNE=; b=YsPshL5fUhsrNW
	9xliCRScZUMXcGZEXhnx9+Tu15rP/sikOSBZ2pFyxfD6+7f5veNO/UqRsyRpbBCfYL7iIqK2QkqsL
	1piekMezNkTqyEwRsqDRriiy89Mv8A4fuewlrQptdj5JFtTzSYSnOzBbe7EJCOhXoaVnPZoCC/jmi
	2hLG5uv3NltUxa/q1eUEwhM6UA/6oH+AKXFoeWdh45LMoHXnE8HuQiHnPS1+JmbQ1hJtO3b3BQBZl
	HCs8Th8h40Xil//QJWq8xHHytZdAwDt6F8cnv4nsqrLm+ef9CDTuflXRPeE3O7/lsdkmnRrz8HsL6
	7MPRsXYQUpuCs2ZKgMkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIc2T-0007VM-6h; Thu, 10 Oct 2019 17:15:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIc2J-0007Tx-Kq
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 17:15:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4252928;
 Thu, 10 Oct 2019 10:15:34 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 3EA723F71A;
 Thu, 10 Oct 2019 10:15:33 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/3] arm64: Fix support for systems without FP/SIMD
Date: Thu, 10 Oct 2019 18:15:14 +0100
Message-Id: <20191010171517.28782-1-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_101535_728939_6040CEB3 
X-CRM114-Status: GOOD (  10.89  )
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
Cc: mark.rutland@arm.com, Suzuki K Poulose <suzuki.poulose@arm.com>,
 catalin.marinas@arm.com, linux-kernel@vger.kernel.org, will@kernel.org,
 dave.martin@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series fixes the original support for systems without FP/SIMD.
We have three set of issues with the current code :

1) We detect the absence of FP/SIMD after the SMP cpus are brought
online (i.e, SYSTEM scope). This means, some of the early kernel threads
could run with their TIF_FOREIGN_FPSTATE flag set which might be
inherited by applications forked by them (e.g, modprobe from initramfs).

Also we allow a hotplugged CPU to boot successfully even if it doesn't
have the FP/SIMD when we have decided otherwise at boot and have now
advertised the ELF HWCAP for the userspace.
Fix this by turning this to a BOOT_RESTRICTED_CPU_LOCAL feature to
allow the detection of the feature the very moment a CPU turns up
without FP/SIMD and also prevent a conflict after SMP boot.

2) As mentioned above, some tasks could have the TIF flag set,
which will never be cleared after we detect the capability.
Thus they could get stuck indefinitely in do_notfiy_resume().
Fix this by clearing the TIF flag for such tasks but continuing
to avoid the save/restore of the FP state.

3) The compat ELF_HWCAP bits are statically initialised to indicate
that the FP/SIMD support is available. This must be updated dynamically
to provide the correct flags to the userspace.

Tested with a 32bit Debian Jessie fs on Fast model (with and without
FP support).

Suzuki K Poulose (3):
  arm64: cpufeature: Fix the type of no FP/SIMD capability
  arm64: nofpsmid: Clear TIF_FOREIGN_FPSTATE flag for early tasks
  arm64: cpufeature: Set the FP/SIMD compat HWCAP bits properly

 arch/arm64/kernel/cpufeature.c | 39 ++++++++++++++++++++++++++++++----
 arch/arm64/kernel/fpsimd.c     | 26 ++++++++++++++---------
 2 files changed, 51 insertions(+), 14 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
