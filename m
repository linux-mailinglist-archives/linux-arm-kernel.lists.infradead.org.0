Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E50D1C395E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 14:30:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=30+8dk8ZQy+geIkFWf+m1aUOqfCt2xbDSxFanxep/8Y=; b=iGA
	FNBo9nIpjeH1Ij5lJY/fi/D12bUI5CySfystbPf/PK7SDysPu4erPhvfjCPomxpTfQT2wgxlH2XC6
	gzA7QOqvkhzCfLnJwcmEs7pbZkR/UllPdBjVLPl4MRmOLoaa2OoY7dBGggV65h5oDGzvth19e5to/
	cOCJGnNhrLu8+5M0nyOZQuSDk+kieL4hZGHyKJpiQCSjkjAA6CuU5jLq3ea+0ai5qhRwuPv9tYBsR
	xEp5xDi30BDTxHro0vaJ+EyUCboezTTaLyQG5b5JpbpWT5k7WvRKZnwNwk3xLBQ+p6zsmJ41TvWkx
	+eOzL7Kss1idLMOOI498JipYDJSjtKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVaEt-00032Z-Td; Mon, 04 May 2020 12:30:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVaEn-000319-30
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 12:30:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 56C611FB;
 Mon,  4 May 2020 05:30:19 -0700 (PDT)
Received: from p8cg001049571a15.arm.com (unknown [10.163.71.79])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 66F253F71F;
 Mon,  4 May 2020 05:30:16 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64/cpuinfo: Move device_initcall() near cpuinfo_regs_init()
Date: Mon,  4 May 2020 17:59:37 +0530
Message-Id: <1588595377-4503-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_053021_177626_69E9AD8A 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This moves device_initcall() near cpuinfo_regs_init() making the calling
sequence clear. Besides it is a standard practice to have device_initcall()
(any __initcall for that matter) just after the function it actually calls.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Mark Brown <broonie@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Suzuki Poulose <suzuki.poulose@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org

Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
Based on 5.7-rc4

 arch/arm64/kernel/cpuinfo.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/cpuinfo.c b/arch/arm64/kernel/cpuinfo.c
index 86136075ae41..a515d8f3639e 100644
--- a/arch/arm64/kernel/cpuinfo.c
+++ b/arch/arm64/kernel/cpuinfo.c
@@ -311,6 +311,8 @@ static int __init cpuinfo_regs_init(void)
 	}
 	return 0;
 }
+device_initcall(cpuinfo_regs_init);
+
 static void cpuinfo_detect_icache_policy(struct cpuinfo_arm64 *info)
 {
 	unsigned int cpu = smp_processor_id();
@@ -403,5 +405,3 @@ void __init cpuinfo_store_boot_cpu(void)
 	boot_cpu_data = *info;
 	init_cpu_features(&boot_cpu_data);
 }
-
-device_initcall(cpuinfo_regs_init);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
