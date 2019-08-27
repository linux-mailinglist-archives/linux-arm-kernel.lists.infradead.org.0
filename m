Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 682799EC45
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 17:19:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0D4sECmqPT69NyCBDUsdOnaTz/2H8f6UaitnC/oIaWA=; b=b7ttpwKjjU8c9WpcsYseggVE3S
	Mz5PlaMMmz/LMY2m+jh+qfrbbpr5LWYRAtyjK333MKtemZKc37iJ1csEXTdtDdE1QPwOECFhHbS7F
	OeBhLy70DWGMW4Ed+eHxPtvfLGRapbFJ9o4O8Zsz5mjPSBVOVBeqq2RIQJOqejGtoJeVI1cXAWv7D
	mk2SitdlmEExNzzqCeOPSkr9c9nsYTeh40FdrtgPqAMA8DuS9MlfMSC76hSS4awZ6RONxlisrPBGe
	/KGwQmOXSpPM661v5rN0n9EWc+5wXQig0Mhys+x8ze36kKqvxbmz4lcfx94mW3PH+DFLdX6RZhxyq
	MdadVYSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2dFY-0005xV-29; Tue, 27 Aug 2019 15:19:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i2dEo-0005MR-7x
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 15:18:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DEFDB360;
 Tue, 27 Aug 2019 08:18:25 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 3097E3F59C;
 Tue, 27 Aug 2019 08:18:25 -0700 (PDT)
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/3] arm64: smp: Treat unknown boot failures as being 'stuck
 in kernel'
Date: Tue, 27 Aug 2019 16:18:15 +0100
Message-Id: <20190827151815.2160-4-will@kernel.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190827151815.2160-1-will@kernel.org>
References: <20190827151815.2160-1-will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_081826_375176_1AAB47CB 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com,
 Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When we fail to bring a secondary CPU online and it fails in an unknown
state, we should assume the worst and increment 'cpus_stuck_in_kernel'
so that things like kexec() are disabled.

Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/smp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
index 1f8aeb77cba5..dc9fe879c279 100644
--- a/arch/arm64/kernel/smp.c
+++ b/arch/arm64/kernel/smp.c
@@ -147,6 +147,7 @@ int __cpu_up(unsigned int cpu, struct task_struct *idle)
 		default:
 			pr_err("CPU%u: failed in unknown state : 0x%lx\n",
 					cpu, status);
+			cpus_stuck_in_kernel++;
 			break;
 		case CPU_KILL_ME:
 			if (!op_cpu_kill(cpu)) {
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
