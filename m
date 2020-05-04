Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD531C3962
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 14:30:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=GiE+8SFRUfoATveUXCZh/5fI4qQf1s59L/QWOY0nf4M=; b=hOC
	BKXWH944Hfe71yiI5bxRa8XfEQ8aPbkHbrvqym5urYKudp9aTOM/tNBc6AsazhBBWHd3rgYa4P71Q
	RQLh9F/zifPE/bW1O4L54QzvwPQ8mnHzYWQ4UTxyJvcwkA6LrqQpSavWTaN19ao6UZzTZ2QbEstZI
	fTMd0LT8h8UVTN+6tYvSVKTrdHUlylgA4IvP2mxZZrrc5CU8dD805H/jVsTFL+0Vh8JyK433E33uL
	ddPy4HFP1V4SLJTDlhVmb7KHIxRlUTjY+X7sBcLhoAqv18D6Kzzv1c66HP6T0L2Yuy+mNN4l+guHX
	pkm+9v9OLO6ib/ju9fDP9gsSAZQGi2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVaFH-0003J5-T9; Mon, 04 May 2020 12:30:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVaF6-0003I9-Uo
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 12:30:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D84F31FB;
 Mon,  4 May 2020 05:30:39 -0700 (PDT)
Received: from p8cg001049571a15.arm.com (unknown [10.163.71.79])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 02DE73F71F;
 Mon,  4 May 2020 05:30:36 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64/cpuinfo: Drop boot_cpu_data
Date: Mon,  4 May 2020 18:00:00 +0530
Message-Id: <1588595400-4560-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_053041_036322_FEAF7526 
X-CRM114-Status: GOOD (  10.93  )
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

A global boot_cpu_data is not really required. Lets drop this. While
here, rename the local variable as boot_cpu_info when it is fetched
for the boot cpu.

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

 arch/arm64/kernel/cpuinfo.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/kernel/cpuinfo.c b/arch/arm64/kernel/cpuinfo.c
index a515d8f3639e..dabcdc132e56 100644
--- a/arch/arm64/kernel/cpuinfo.c
+++ b/arch/arm64/kernel/cpuinfo.c
@@ -31,7 +31,6 @@
  * values depending on configuration at or after reset.
  */
 DEFINE_PER_CPU(struct cpuinfo_arm64, cpu_data);
-static struct cpuinfo_arm64 boot_cpu_data;
 
 static const char *icache_policy_str[] = {
 	[0 ... ICACHE_POLICY_PIPT]	= "RESERVED/UNKNOWN",
@@ -393,15 +392,16 @@ static void __cpuinfo_store_cpu(struct cpuinfo_arm64 *info)
 void cpuinfo_store_cpu(void)
 {
 	struct cpuinfo_arm64 *info = this_cpu_ptr(&cpu_data);
+	struct cpuinfo_arm64 *boot_cpu_info = &per_cpu(cpu_data, 0);
+
 	__cpuinfo_store_cpu(info);
-	update_cpu_features(smp_processor_id(), info, &boot_cpu_data);
+	update_cpu_features(smp_processor_id(), info, boot_cpu_info);
 }
 
 void __init cpuinfo_store_boot_cpu(void)
 {
-	struct cpuinfo_arm64 *info = &per_cpu(cpu_data, 0);
-	__cpuinfo_store_cpu(info);
+	struct cpuinfo_arm64 *boot_cpu_info = &per_cpu(cpu_data, 0);
 
-	boot_cpu_data = *info;
-	init_cpu_features(&boot_cpu_data);
+	__cpuinfo_store_cpu(boot_cpu_info);
+	init_cpu_features(boot_cpu_info);
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
