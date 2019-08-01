Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C35D47D799
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:28:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZIt3z1TWjfcLtH7IhCQroDGm4JEEDe1Q6UQSouafT7Y=; b=SgTVhCSZbEhBsZ
	NZhe8JU0KYDPVV9KXIcI5K4rl6UBnYENC41LGITJC7iqtOqZSWgKIekFIdrb1JZs2xP77+laYYXRv
	/jmtqJu6QohA8do0IV1u68lxgUkXKgLtYD+SxmQVVeKHYznj8BSjPqC6FvqdMncCeSksDM3lI/n7y
	Vkh4sPb54DySsec80PJm4xRf/xCZDjwEWfnxg2kI8jRYGh4nOlYzBWwToSEv7NAx7mUQgDA71NFO9
	DbQVCOx+yp4Ho9Xx3s3c+hup1LZISg4Bpe5JoequsIlxDmH/mwM6HQCcyVfeM71JsYTgYzoDpEx+9
	TEriHM3HsitUq8w0CkpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6S0-0005yd-HY; Thu, 01 Aug 2019 08:28:40 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6L3-0003oF-NC
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:21:31 +0000
Received: by mail-pg1-x542.google.com with SMTP id l21so33731455pgm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 01:21:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OQQ7xLa0wSJEVHtnIJUBQOen48CMIup3yNRZI8hCHQM=;
 b=oUYvAhHhaGgQYxb7bVSRF/4PxV5nyflrpPmlxaW+Z0f9y4sbb5KYVLE2zZNCcCI8QC
 k6vhSEVq7El7m5wPYxjtWN+N50RBaxgAi75+esakTPx2EM8j8CsaHi6hbRpqZWS8QO6X
 J/25wYqXIe7p4IkEL1rWhx9nKPlX1oVIUTjPCtmlEV2i3zrah/Ba0a7jcMgt+O94BV1M
 NgDePvBcBEtfGbQpdElGyGpl/swofqLnHMPuTtPSERWiJys4+7sFcMZz9PCRPbozZ6/y
 jzqznP9NbpYao0nojWycpAH5xwx+8WyFQnqAJyO/3kxfDNdI4cMMVNIL96CVc6vhGyz3
 +eYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OQQ7xLa0wSJEVHtnIJUBQOen48CMIup3yNRZI8hCHQM=;
 b=pcQvQ3wg4m1vsGnPITPK1qcs0S0TMIPCb2oVnswkYEsNixMPFBQwjfAhIEld5wDNkW
 CNte3dUWP7GZyYbsu3VEZ0Ao+8xoFSTuFNUYULXEfT4D5efn+6JDnB4LpPl0ujoZ+MD0
 xZwXrgUsXEGVYxOa7JduCM7/a47SeB+ofIVf2/e3OWS/P3LoE6e8u2xDx/kpVW8/w4F/
 vNtSGLA/E9scaw0dDvIVhUQk+pUDCCC5myYMsJ5ZEygIGxVysccLjTDxlTLDvfFXHLe9
 6a7wMof7WqLkdWe+eydzRvahKsrMuuSL4uQng6MksfQZJ8MiH4T4eYTCknvdG82yg/z2
 pRTw==
X-Gm-Message-State: APjAAAWGbi96/mpYp7qeZeJtwt5FCeisF/qtU0jXuhTrbD9ryEz90hSX
 mTfnb9S/krNg9DtopUElMQ8nFw==
X-Google-Smtp-Source: APXvYqya+t/VhD0GIZflUZQ26GkCty6MeltN7KGb6H/Xahi+frxD8hl8EQVaSEgY0SyvPt7cNJxFUw==
X-Received: by 2002:a63:5b23:: with SMTP id p35mr5755254pgb.366.1564647688896; 
 Thu, 01 Aug 2019 01:21:28 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id t9sm65393089pgj.89.2019.08.01.01.21.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 01:21:28 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org
Subject: [PATCH ARM32 v4.4 V2 44/47] ARM: 8595/2: apply more __ro_after_init
Date: Thu,  1 Aug 2019 13:46:28 +0530
Message-Id: <dcfb5f1678049c607535772519edd3ab8cf38dfb.1564646727.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1564646727.git.viresh.kumar@linaro.org>
References: <cover.1564646727.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_012129_784292_3EB931BD 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Julien Thierry <Julien.Thierry@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, guohanjun@huawei.com,
 Will Deacon <will.deacon@arm.com>, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Kees Cook <keescook@chromium.org>

Commit 7619751f8c900fa5fdd76db06f4caf095c56de8e upstream.

Guided by grsecurity's analogous __read_only markings in arch/arm,
this applies several uses of __ro_after_init to structures that are
only updated during __init.

Signed-off-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Russell King <rmk+kernel@arm.linux.org.uk>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm/kernel/cpuidle.c |  2 +-
 arch/arm/kernel/setup.c   | 10 +++++-----
 arch/arm/kernel/smp.c     |  2 +-
 arch/arm/lib/delay.c      |  2 +-
 arch/arm/mm/mmu.c         |  2 +-
 5 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm/kernel/cpuidle.c b/arch/arm/kernel/cpuidle.c
index 318da33465f4..68be7d89141d 100644
--- a/arch/arm/kernel/cpuidle.c
+++ b/arch/arm/kernel/cpuidle.c
@@ -19,7 +19,7 @@ extern struct of_cpuidle_method __cpuidle_method_of_table[];
 static const struct of_cpuidle_method __cpuidle_method_of_table_sentinel
 	__used __section(__cpuidle_method_of_table_end);
 
-static struct cpuidle_ops cpuidle_ops[NR_CPUS];
+static struct cpuidle_ops cpuidle_ops[NR_CPUS] __ro_after_init;
 
 /**
  * arm_cpuidle_simple_enter() - a wrapper to cpu_do_idle()
diff --git a/arch/arm/kernel/setup.c b/arch/arm/kernel/setup.c
index 13bda9574e18..8081f88bf636 100644
--- a/arch/arm/kernel/setup.c
+++ b/arch/arm/kernel/setup.c
@@ -112,19 +112,19 @@ EXPORT_SYMBOL(elf_hwcap2);
 
 
 #ifdef MULTI_CPU
-struct processor processor __read_mostly;
+struct processor processor __ro_after_init;
 #endif
 #ifdef MULTI_TLB
-struct cpu_tlb_fns cpu_tlb __read_mostly;
+struct cpu_tlb_fns cpu_tlb __ro_after_init;
 #endif
 #ifdef MULTI_USER
-struct cpu_user_fns cpu_user __read_mostly;
+struct cpu_user_fns cpu_user __ro_after_init;
 #endif
 #ifdef MULTI_CACHE
-struct cpu_cache_fns cpu_cache __read_mostly;
+struct cpu_cache_fns cpu_cache __ro_after_init;
 #endif
 #ifdef CONFIG_OUTER_CACHE
-struct outer_cache_fns outer_cache __read_mostly;
+struct outer_cache_fns outer_cache __ro_after_init;
 EXPORT_SYMBOL(outer_cache);
 #endif
 
diff --git a/arch/arm/kernel/smp.c b/arch/arm/kernel/smp.c
index bafbd29c6e64..c92abf791aed 100644
--- a/arch/arm/kernel/smp.c
+++ b/arch/arm/kernel/smp.c
@@ -79,7 +79,7 @@ enum ipi_msg_type {
 
 static DECLARE_COMPLETION(cpu_running);
 
-static struct smp_operations smp_ops;
+static struct smp_operations smp_ops __ro_after_init;
 
 void __init smp_set_ops(const struct smp_operations *ops)
 {
diff --git a/arch/arm/lib/delay.c b/arch/arm/lib/delay.c
index 8044591dca72..2cef11884857 100644
--- a/arch/arm/lib/delay.c
+++ b/arch/arm/lib/delay.c
@@ -29,7 +29,7 @@
 /*
  * Default to the loop-based delay implementation.
  */
-struct arm_delay_ops arm_delay_ops = {
+struct arm_delay_ops arm_delay_ops __ro_after_init = {
 	.delay		= __loop_delay,
 	.const_udelay	= __loop_const_udelay,
 	.udelay		= __loop_udelay,
diff --git a/arch/arm/mm/mmu.c b/arch/arm/mm/mmu.c
index aead23f15213..36f8c033714f 100644
--- a/arch/arm/mm/mmu.c
+++ b/arch/arm/mm/mmu.c
@@ -243,7 +243,7 @@ __setup("noalign", noalign_setup);
 #define PROT_PTE_S2_DEVICE	PROT_PTE_DEVICE
 #define PROT_SECT_DEVICE	PMD_TYPE_SECT|PMD_SECT_AP_WRITE
 
-static struct mem_type mem_types[] = {
+static struct mem_type mem_types[] __ro_after_init = {
 	[MT_DEVICE] = {		  /* Strongly ordered / ARMv6 shared device */
 		.prot_pte	= PROT_PTE_DEVICE | L_PTE_MT_DEV_SHARED |
 				  L_PTE_SHARED,
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
