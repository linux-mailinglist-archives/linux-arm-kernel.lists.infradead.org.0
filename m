Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4098C99726
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 16:43:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=afWbgyZlLWKGIhZ4dXGVjRfhQ4dVZazzbJTywq1jzig=; b=gMmD//B53i06aV9STBzce6skGL
	VF9NtEbif+YK+4BSg6sDbPpwbwY5ZohxMtPmO8IMjieiL0aVWdz4B4cO7ESloQoAPbvVJ4P/nFUSc
	vCSQxbSllZAHmEiqLPbrbtvS3WrrBftf9zGGc1P1yiJn7Qhah2FUpCSsrAAnpzYcE1Jd7mGTWedhx
	OEc1uIoD9PKLydEI5HFeiLwkuhGZGlg8rOMBW2wr5W/yxZg0d6/VSSuCaVAFsjupKZCeSqem4tMNH
	Hiac+KWVjrSetgDX9c0ZBR2elePr6OEMY11iB6B4TkJ3WJT606z4GlsQiDKLavUAl5OsFfhcqL4Pz
	OA6jwBOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0oJ2-0004iM-64; Thu, 22 Aug 2019 14:43:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i0oIM-0004OR-Mg
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 14:42:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2F1B015A2;
 Thu, 22 Aug 2019 07:42:34 -0700 (PDT)
Received: from e121650-lin.cambridge.arm.com (e121650-lin.cambridge.arm.com
 [10.1.196.120])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CDFA73F706;
 Thu, 22 Aug 2019 07:42:32 -0700 (PDT)
From: Raphael Gault <raphael.gault@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 2/7] arm64: cpu: Add accessor for boot_cpu_data
Date: Thu, 22 Aug 2019 15:42:15 +0100
Message-Id: <20190822144220.27860-3-raphael.gault@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190822144220.27860-1-raphael.gault@arm.com>
References: <20190822144220.27860-1-raphael.gault@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_074234_779196_FD5207E3 
X-CRM114-Status: UNSURE (   9.72  )
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
Cc: mark.rutland@arm.com, raph.gault+kdev@gmail.com, peterz@infradead.org,
 catalin.marinas@arm.com, will.deacon@arm.com, acme@kernel.org,
 Raphael Gault <raphael.gault@arm.com>, mingo@redhat.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Mark boot_cpu_data as read-only after initialization.
Define accessor to read boot_cpu_data from outside of boot_cpu_data.

Signed-off-by: Raphael Gault <raphael.gault@arm.com>
---
 arch/arm64/include/asm/cpu.h | 2 +-
 arch/arm64/kernel/cpuinfo.c  | 7 ++++++-
 2 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/cpu.h b/arch/arm64/include/asm/cpu.h
index d72d995b7e25..6abc2faf1a64 100644
--- a/arch/arm64/include/asm/cpu.h
+++ b/arch/arm64/include/asm/cpu.h
@@ -62,5 +62,5 @@ void __init cpuinfo_store_boot_cpu(void);
 void __init init_cpu_features(struct cpuinfo_arm64 *info);
 void update_cpu_features(int cpu, struct cpuinfo_arm64 *info,
 				 struct cpuinfo_arm64 *boot);
-
+struct cpuinfo_arm64 *get_boot_cpu_data(void);
 #endif /* __ASM_CPU_H */
diff --git a/arch/arm64/kernel/cpuinfo.c b/arch/arm64/kernel/cpuinfo.c
index 876055e37352..ffa00b3a148b 100644
--- a/arch/arm64/kernel/cpuinfo.c
+++ b/arch/arm64/kernel/cpuinfo.c
@@ -31,7 +31,7 @@
  * values depending on configuration at or after reset.
  */
 DEFINE_PER_CPU(struct cpuinfo_arm64, cpu_data);
-static struct cpuinfo_arm64 boot_cpu_data;
+static struct cpuinfo_arm64 boot_cpu_data __ro_after_init;
 
 static char *icache_policy_str[] = {
 	[0 ... ICACHE_POLICY_PIPT]	= "RESERVED/UNKNOWN",
@@ -395,4 +395,9 @@ void __init cpuinfo_store_boot_cpu(void)
 	init_cpu_features(&boot_cpu_data);
 }
 
+struct cpuinfo_arm64 *get_boot_cpu_data(void)
+{
+	return &boot_cpu_data;
+}
+
 device_initcall(cpuinfo_regs_init);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
