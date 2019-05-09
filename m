Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5771835F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 03:47:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SvfGwEhk997W1wjRKmuzNJ9QLyteN7wMA6I5TLjB/aM=; b=MLg26r5rKncj1RBhoPXnkRI1bE
	8UH25zMyor2S0VUZ3VNeQDS/i1BPDCQtc961Ttbhc9eHeJ0dn3OtwCw/0LjwDN51wZqFOvvBUEJZn
	vgCeKzd9Bh6IhWaejlmzeh8Np/OF1gkdALAqY0KouFq0FA7Wn3M7sN9/p2BWljLalbxXb2FWot6T4
	anRWQJiCohB+uD868N2bzCxMGugNQMcSYezbGyxlTDjIGsW3SOCf4A4+uq0L8CTK/1kl6TuxCofS5
	poTBeGhu5BMBnasZ+BCltSR23HFylHzWWYScUpm4A0KSwJrz3NYRU3vBE2agT3Qc6Fia2tr6q1bdR
	0wBcSKQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOY9i-0001m8-Ox; Thu, 09 May 2019 01:47:30 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOY9a-0001lk-Rf
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 01:47:24 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 88F8A6081E; Thu,  9 May 2019 01:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557366442;
 bh=9rdLCUt1L7AFehmpyE7HdkJhWiTHmika/QMX7/o7pCg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=RwjDRorZwpBgD6+a7BfemykODFvTIegs5vhmQoZq7/4n9dZjQSdkQe0cBSxAM+xF4
 jOwS18X2Rfzp90CZ9C1v8/0s3zstKwuKDuoy4hTX6TuG4xutMPDEVG2c5YzbVrN9AF
 RqjEItoOdn9uOZ7d1t2xotukGU8z7Ku7RqGTrbEo=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from th-lint-015.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: psodagud@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 384526081E;
 Thu,  9 May 2019 01:47:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557366441;
 bh=9rdLCUt1L7AFehmpyE7HdkJhWiTHmika/QMX7/o7pCg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ar31+3M3z/rN7xzmoojW/GP84szDsT2hCoebyuYeHRucoaAzTK75bNIE/9iJ3jyaN
 Et3cl14q13+IHNT+8x6aM+u7ogOVQBVPlKiqhsYE2/Zu0gaaETnixJwvD1sS1pVC1h
 VLx5VLvWfWTRGeGyvvI21HQRlZ9/ULhJLKyCb1n0=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 384526081E
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=psodagud@codeaurora.org
From: Prasad Sodagudi <psodagud@codeaurora.org>
To: sudeep.holla@arm.com, julien.thierry@arm.com, will.deacon@arm.com,
 catalin.marinas@arm.com, mark.rutland@arm.com, lorenzo.pieralisi@arm.com,
 akpm@linux-foundation.org
Subject: [PATCH] kernel/panic: Use SYSTEM_RESET2 command for warm reset
Date: Wed,  8 May 2019 18:47:12 -0700
Message-Id: <1557366432-352469-1-git-send-email-psodagud@codeaurora.org>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <ce0b66f5d00e760f87ddeeacbc40b956@codeaurora.org>
References: <ce0b66f5d00e760f87ddeeacbc40b956@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_184722_933894_DA730597 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Prasad Sodagudi <psodagud@codeaurora.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some platforms may need warm reboot support when kernel crashed
for post mortem analysis instead of cold reboot. So use config
CONFIG_WARM_REBOOT_ON_PANIC and SYSTEM_RESET2 psci command
support for warm reset.

Signed-off-by: Prasad Sodagudi <psodagud@codeaurora.org>
---
 kernel/panic.c    |  4 ++++
 lib/Kconfig.debug | 10 ++++++++++
 2 files changed, 14 insertions(+)

diff --git a/kernel/panic.c b/kernel/panic.c
index c1fcaad..6ab6675 100644
--- a/kernel/panic.c
+++ b/kernel/panic.c
@@ -198,6 +198,10 @@ void panic(const char *fmt, ...)
 
 	console_verbose();
 	bust_spinlocks(1);
+#ifdef CONFIG_WARM_REBOOT_ON_PANIC
+	/* Configure for warm reboot instead of cold reboot. */
+	reboot_mode = REBOOT_WARM;
+#endif
 	va_start(args, fmt);
 	len = vscnprintf(buf, sizeof(buf), fmt, args);
 	va_end(args);
diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index d695ec1..2a727d8 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -1000,6 +1000,16 @@ config PANIC_TIMEOUT
 	  value n > 0 will wait n seconds before rebooting, while a timeout
 	  value n < 0 will reboot immediately.
 
+config WARM_REBOOT_ON_PANIC
+	bool "Warm reboot instead of cold reboot for panic"
+	default n
+	help
+	  Some vendor platform may need warm reboot instead of cold reboot
+	  for debugging. Before vendor specific power off driver is
+	  probed, platform always gets cold reset. By setting Y here and
+	  support for PSCI V1.1 is present from firmware, platform would
+	  get warm reset instead of cold reset.
+
 config SCHED_DEBUG
 	bool "Collect scheduler debugging info"
 	depends on DEBUG_KERNEL && PROC_FS
-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,\na Linux Foundation Collaborative Project


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
