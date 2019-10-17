Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E51DB39B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 19:43:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4z4CXB3KJTMjOkUZEOBiOgh2XRsfd3ljJ240H4sRurs=; b=sNMcN5xUVmPadd
	a9//YpVaZIgA9XDWFe18kUtbVVadJRjeZTLwgp5J/VrpApAJe8pqElfTVTWmMF+cE7cRu1rI+1G4N
	vjXnYXa91+jP11eNzC2MhfRu1qmm6q/1YPV9nFLLLdY4ZBJDM/F+EJPLtw71pyY72aIGshZzHzZd8
	LCnfnyBieOQbJSRAC2JCUSXN57inxg7I6lNZfWeLyqO8l9kSHx0CsCfYvf/7tIHEUCjvmp/J2sA1y
	KkNXSGYGj/+P/Ka3KFy9EdfE9dFS9NLdNNIZL8iUb9X8ONythNOabVeZZhg8ulJy4PN51g8JpH0pN
	aQ0hRo0Gk58FNy4wBm9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL9oP-0003Hk-7K; Thu, 17 Oct 2019 17:43:45 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL9o0-00037f-3E
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 17:43:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 89C5C332;
 Thu, 17 Oct 2019 10:43:18 -0700 (PDT)
Received: from eglon.cambridge.arm.com (unknown [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BD08A3F718;
 Thu, 17 Oct 2019 10:43:17 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 3/3] arm64: compat: Workaround Neoverse-N1 #1542419 for
 compat user-space
Date: Thu, 17 Oct 2019 18:43:00 +0100
Message-Id: <20191017174300.29770-4-james.morse@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191017174300.29770-1-james.morse@arm.com>
References: <20191017174300.29770-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_104320_176303_5D3456EC 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 James Morse <james.morse@arm.com>, Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Compat user-space is unable to perform ICIMVAU instructions from
user-space. Instead it uses a compat-syscall. Add the workaround for
Neoverse-N1 #1542419 to this code path.

Signed-off-by: James Morse <james.morse@arm.com>
---
 arch/arm64/kernel/sys_compat.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/kernel/sys_compat.c b/arch/arm64/kernel/sys_compat.c
index f1cb64959427..1d09160fdd25 100644
--- a/arch/arm64/kernel/sys_compat.c
+++ b/arch/arm64/kernel/sys_compat.c
@@ -8,6 +8,7 @@
  */
 
 #include <linux/compat.h>
+#include <linux/cpufeature.h>
 #include <linux/personality.h>
 #include <linux/sched.h>
 #include <linux/sched/signal.h>
@@ -17,6 +18,7 @@
 
 #include <asm/cacheflush.h>
 #include <asm/system_misc.h>
+#include <asm/tlbflush.h>
 #include <asm/unistd.h>
 
 static long
@@ -30,6 +32,15 @@ __do_compat_cache_op(unsigned long start, unsigned long end)
 		if (fatal_signal_pending(current))
 			return 0;
 
+		if (cpus_have_const_cap(ARM64_WORKAROUND_1542419)) {
+			/*
+			 * The workaround requires an inner-shareable tlbi.
+			 * We pick the reserved-ASID to minimise the impact.
+			 */
+			__tlbi(aside1is, 0);
+			dsb(ish);
+		}
+
 		ret = __flush_cache_user_range(start, start + chunk);
 		if (ret)
 			return ret;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
