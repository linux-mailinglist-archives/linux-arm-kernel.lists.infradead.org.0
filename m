Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A44FCA1910
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:41:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Rb948h2ch+H9+nXYB8ck1K3XRYg9SnKSxG04wR7YYA=; b=KrZaED7N21MjJ4
	+KB2veF5+n22oisirEdxL4JYY5n9YSRG2x66EpLcpgDswzYB/uWDofZ345ZP7v7A4zfMlCOF5FZtd
	5zLYwFr+QC3eF5VQjkxxd49nicJUMTBTOn0WFg66m53MMs/OUfSnKeyjRHoQq8t0QDu//9plNnDM1
	667wLccLB0eeY292Wn6uYSnFVBsq/BFE5fVxFmTFC5r5BWXMcZbI243xYusedvM2e+Qz2U/n6n+DB
	VmDhW6JFGpWE1g56hFQ0p3yhgJQX4FEgGUv120t5fESC0r5c2ys+3ICj14jXtVNy1LRdTcf8rwHeW
	wqrqBw0AUwTvqQjnG1fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3InN-0003IU-Po; Thu, 29 Aug 2019 11:40:54 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3IiL-0006Ww-5R
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:35:44 +0000
Received: by mail-pf1-x442.google.com with SMTP id d85so1880935pfd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 04:35:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dewjZZw0HbdCyicLrnA8hjXb53SKvhtBESHu+qhlc+Y=;
 b=lIExeLrhz8lGFteYnUQGXqUT/vKMdDZ+m5DwGlBy1q2p8zFsU1ELB6LPa/By6x1CZD
 uTDBAPSQdfhFkOm+UIeg6yuVbvYSGxcd0n9/5KlzKCaBSDc67t0jDk9IhGkuHAj7bUpi
 1jF4m8faXjqozOcmI+BwZ9qXQk/8cRh35d6J9mhXZEIQEc2huML5kncdAHkx3Tc1SYwP
 E2znsQH4RK9ad3AZpCOI90Ih6vxDZtfWfiVaxaCm3glRjJhc4mFQ1deqLHgW/wrSuh07
 NU4PW6+2jP7wmUgDfgi2hg1jdEVXPOa1s53ifhgWvwCoswbYZuTzdVyvnPaTSbmu8pus
 of5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dewjZZw0HbdCyicLrnA8hjXb53SKvhtBESHu+qhlc+Y=;
 b=KhUxYA1Vx9q5iY6cFFpn1oGnHdFQRQFaZdiLQ4uGxe89FMNyqOcQt05DuA90vExVAV
 znGVQQ1ly22lbxNMXKH3e7pvlmmvk8STxcPMjNKLUpFJfka5dBww3hFco7J/YYmCow/b
 /1eNhD5w+vuyMq6NnNNDo2F0L77r8xCKVghJsdJbWgdkhZR/4u6JWLlRSw/ZcR7ddvOO
 8j5OaSYqlKZ5aCTmA3qcLDtPxUNuz/ubqSE14TEFdK6qSVhbb+Sv+gZtb4e0QwmnxdhR
 eBRDU82o0frgPXY3TQtfQtnCKOyyuAaaPI0LIvCxz7a5kXpPru4smcle1vr26GhRBcZl
 ya2g==
X-Gm-Message-State: APjAAAVnMM9NYwx0Lk/2UotA/1MISog78G0y2lrBkTZ7XVdPZodsYYmN
 KqjsKAYue88bgBwYSnJKj9ITwA==
X-Google-Smtp-Source: APXvYqxoKgb7SNfBlsZvZscecZMbMzxLH57ty0yVul4EL/Q54E1w20FKuoPKMtZ5EKefwhY1rV1dMw==
X-Received: by 2002:a17:90a:1b0d:: with SMTP id
 q13mr9408117pjq.102.1567078540625; 
 Thu, 29 Aug 2019 04:35:40 -0700 (PDT)
Received: from localhost ([122.167.132.221])
 by smtp.gmail.com with ESMTPSA id e66sm6395757pfe.142.2019.08.29.04.35.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 04:35:40 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org, Julien Thierry <Julien.Thierry@arm.com>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH ARM64 v4.4 V3 18/44] arm64: errata: Calling enable functions
 for CPU errata too
Date: Thu, 29 Aug 2019 17:04:03 +0530
Message-Id: <5fa6a176c115529bb675f9b4b33462ae362dcdb3.1567077734.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1567077734.git.viresh.kumar@linaro.org>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_043541_802644_D847A06C 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Marc Zyngier <marc.zyngier@arm.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Will Deacon <will.deacon@arm.com>, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andre Przywara <andre.przywara@arm.com>

commit 8e2318521bf5837dae093413f81292b59d49d030 upstream.

Currently we call the (optional) enable function for CPU _features_
only. As CPU _errata_ descriptions share the same data structure and
having an enable function is useful for errata as well (for instance
to set bits in SCTLR), lets call it when enumerating erratas too.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/include/asm/cpufeature.h | 2 ++
 arch/arm64/kernel/cpu_errata.c      | 5 +++++
 arch/arm64/kernel/cpufeature.c      | 3 ++-
 3 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
index dd1aab8e52aa..0267bab6ac18 100644
--- a/arch/arm64/include/asm/cpufeature.h
+++ b/arch/arm64/include/asm/cpufeature.h
@@ -171,7 +171,9 @@ void __init setup_cpu_features(void);
 
 void update_cpu_capabilities(const struct arm64_cpu_capabilities *caps,
 			    const char *info);
+void enable_cpu_capabilities(const struct arm64_cpu_capabilities *caps);
 void check_local_cpu_errata(void);
+void __init enable_errata_workarounds(void);
 
 void verify_local_cpu_errata(void);
 
diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index a3567881c01b..d9f095439011 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -140,3 +140,8 @@ void check_local_cpu_errata(void)
 {
 	update_cpu_capabilities(arm64_errata, "enabling workaround for");
 }
+
+void __init enable_errata_workarounds(void)
+{
+	enable_cpu_capabilities(arm64_errata);
+}
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 9a4b638b1c18..7773bea6927e 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -820,7 +820,7 @@ void update_cpu_capabilities(const struct arm64_cpu_capabilities *caps,
  * Run through the enabled capabilities and enable() it on all active
  * CPUs
  */
-static void enable_cpu_capabilities(const struct arm64_cpu_capabilities *caps)
+void enable_cpu_capabilities(const struct arm64_cpu_capabilities *caps)
 {
 	int i;
 
@@ -923,6 +923,7 @@ void __init setup_cpu_features(void)
 
 	/* Set the CPU feature capabilies */
 	setup_feature_capabilities();
+	enable_errata_workarounds();
 	setup_cpu_hwcaps();
 
 	/* Advertise that we have computed the system capabilities */
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
