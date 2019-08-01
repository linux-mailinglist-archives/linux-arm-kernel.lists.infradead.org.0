Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E8EF7D764
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:22:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k4sdb3m3YsPvZhgvzKrb1gzLiZsysdL1ftEiJLvwzok=; b=OaaJ2E/YSGNJQy
	4geplMCBcKH+6JbqbruLtxlcwhVorvKtMnBfR/lrb316r78OvNajAT84pLxybPtfLo+Xl6ftVKAEp
	MGWWemX6Fh3KMmL+kMkdDoaw20//TnQ7UT7KdeiZ/E3OGOadBN9LPMWdUq/EPV6fVbh5uGW/F4d5Y
	8ZxCLuXFz1MrZvM8+T8o/knD5LP5gT/bJTGKqEQL+XMgYRWum2aubMdxzjWbqm1/fETptvtFVn8p8
	DeFBWjKxnixle2wXpPZe+bHa5mxjjXwJwXLq3hVhkWNB4u+sSGlv0O7eKg9Fl0D+8UeY2JfP2U2Ia
	18x4BvPDDoHIPJylDBxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6Lu-0004oQ-O6; Thu, 01 Aug 2019 08:22:22 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6Jl-0001Cm-5v
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:20:10 +0000
Received: by mail-pf1-x444.google.com with SMTP id r1so33597258pfq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 01:20:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TdEXa/ACn7xvRmbVhm+K3Nf7xZB7iBxOAU/Z5YPY+9w=;
 b=Yc1AA1CJGqSJYLBpPb6+g8zXpFF097IJpE/ujUlSotcolHoh6Y10BNwwJfWdTdJKMs
 /Dlw2wfdWh9TVJ7mGv2zsjbrtaGgR+O375wcrQ5HyBRwIuUBJQf4xfWEonF0z8yGsZ1U
 HzxbcfvgC6DxgjV9aRwgvrwmlM49P4J92MjZ1wPS/8wlr5s+nfyFCM2g+ZLaRbWIjYtE
 txZOPZGuFVQsutVx5gwoLFl/60jilYmI/fOWrIiD7kMj6BT9jRZV2mlzAGt43nPdY85c
 IDRrxRIGx84kE4fcqmVqCPx2MicByt81b5TcVBrsEIWo+MqvzZrp578iEhPlN0HpxEsw
 f0jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TdEXa/ACn7xvRmbVhm+K3Nf7xZB7iBxOAU/Z5YPY+9w=;
 b=YIPAAC3m0iqdPXNNEckOGl501tkA28ZSc4DU/3NA2HUkhPSm3AHgR8ZgvbkdQwCEY/
 5ShlCaI1hc/GooewNWWETTrqngLPh/IwahQKl9nsOeYxDt+2M9GmDqJAxab4IXpxwfoc
 JJdCDvmUOnLVgujgSc0cbmgj3HHrD6zhCe2cgm9k0Fi+D7dObKy2Av6aZk9R4Lxqh2pL
 BDV0nLF0OdpS9O1IIPs87eggP7J8NZzI91UPTiOL8YBajk09WXGD618jgorsNj6/Adg2
 T4x5gZM+bLCmkYK6IcrZembP6DxSv2zN14psi8MQHeMiE+Mqe+48Yh8kJxppVYwOUbZV
 OFTg==
X-Gm-Message-State: APjAAAWunMAOx9bsvq8k+wDxa1ECur0oRxJuOOf94eWT9WmtJmG8cYFr
 rjyt7rOrlK9C4W4HgStBlYFPAHyB8t4=
X-Google-Smtp-Source: APXvYqzg+k1IMsuY/0YlKSVfy0FSYlyP0aAAvifk3LfPZy6nOREz9peYXx0wqLLpaox0jbRn5W145Q==
X-Received: by 2002:a17:90a:2ec1:: with SMTP id
 h1mr7231563pjs.119.1564647606812; 
 Thu, 01 Aug 2019 01:20:06 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id a15sm94846475pfg.102.2019.08.01.01.20.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 01:20:06 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org
Subject: [PATCH ARM32 v4.4 V2 12/47] ARM: bugs: add support for per-processor
 bug checking
Date: Thu,  1 Aug 2019 13:45:56 +0530
Message-Id: <812038dccaf90fed1b1331878beb0354e7e4c1d1.1564646727.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1564646727.git.viresh.kumar@linaro.org>
References: <cover.1564646727.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_012009_252412_4FD40EF2 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

From: Russell King <rmk+kernel@armlinux.org.uk>

Commit 9d3a04925deeabb97c8e26d940b501a2873e8af3 upstream.

Add support for per-processor bug checking - each processor function
descriptor gains a function pointer for this check, which must not be
an __init function.  If non-NULL, this will be called whenever a CPU
enters the kernel via which ever path (boot CPU, secondary CPU startup,
CPU resuming, etc.)

This allows processor specific bug checks to validate that workaround
bits are properly enabled by firmware via all entry paths to the kernel.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
Boot-tested-by: Tony Lindgren <tony@atomide.com>
Reviewed-by: Tony Lindgren <tony@atomide.com>
Acked-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: David A. Long <dave.long@linaro.org>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm/include/asm/proc-fns.h | 4 ++++
 arch/arm/kernel/bugs.c          | 4 ++++
 arch/arm/mm/proc-macros.S       | 3 ++-
 3 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/proc-fns.h b/arch/arm/include/asm/proc-fns.h
index 8877ad5ffe10..f379f5f849a9 100644
--- a/arch/arm/include/asm/proc-fns.h
+++ b/arch/arm/include/asm/proc-fns.h
@@ -36,6 +36,10 @@ extern struct processor {
 	 * Set up any processor specifics
 	 */
 	void (*_proc_init)(void);
+	/*
+	 * Check for processor bugs
+	 */
+	void (*check_bugs)(void);
 	/*
 	 * Disable any processor specifics
 	 */
diff --git a/arch/arm/kernel/bugs.c b/arch/arm/kernel/bugs.c
index 16e7ba2a9cc4..7be511310191 100644
--- a/arch/arm/kernel/bugs.c
+++ b/arch/arm/kernel/bugs.c
@@ -5,6 +5,10 @@
 
 void check_other_bugs(void)
 {
+#ifdef MULTI_CPU
+	if (processor.check_bugs)
+		processor.check_bugs();
+#endif
 }
 
 void __init check_bugs(void)
diff --git a/arch/arm/mm/proc-macros.S b/arch/arm/mm/proc-macros.S
index c671f345266a..212147c78f4b 100644
--- a/arch/arm/mm/proc-macros.S
+++ b/arch/arm/mm/proc-macros.S
@@ -258,13 +258,14 @@
 	mcr	p15, 0, ip, c7, c10, 4		@ data write barrier
 	.endm
 
-.macro define_processor_functions name:req, dabort:req, pabort:req, nommu=0, suspend=0
+.macro define_processor_functions name:req, dabort:req, pabort:req, nommu=0, suspend=0, bugs=0
 	.type	\name\()_processor_functions, #object
 	.align 2
 ENTRY(\name\()_processor_functions)
 	.word	\dabort
 	.word	\pabort
 	.word	cpu_\name\()_proc_init
+	.word	\bugs
 	.word	cpu_\name\()_proc_fin
 	.word	cpu_\name\()_reset
 	.word	cpu_\name\()_do_idle
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
