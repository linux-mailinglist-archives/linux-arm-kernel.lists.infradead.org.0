Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FEF57D762
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:22:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DY/aL89vvATAFb7pwcAdJAZSKAVFaTbbDB6CbhdWvxA=; b=RqJi3NJKqcenG4
	duuuCVETnFZxhUjRsPHgqNwuUAfqO7vghWwr+lWyc2SUu/scuPORFg6XC+lH4KFXaWEEwIuMZwsBX
	TJEkSEUAC9ZPeRD04bgaQyupZmdt/MOkXR8ZJu79wqFi/MMZ8uVYJAFGToLcPKK9erJPAHXTXFA6l
	5bC4Wv2NsuyOrN/Vrzro9HLPjNXi7QSYQwwmhKmfODAtXw1YYk9d7xCV6mH+wtzlr2i7D8U1GGS2q
	rJD58e6o7NQOXlzNSrOR6g3KSiSrDoa2CrK9p1b5QTpviEcY3oWRsY0dALE/OB+5AejSms/D5NnCO
	4P3F52RhajRAYT4dO3aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6LY-0004Mq-R8; Thu, 01 Aug 2019 08:22:00 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6Jh-0000qP-DB
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:20:08 +0000
Received: by mail-pg1-x543.google.com with SMTP id o13so33715818pgp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 01:20:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=X5q/embD7eXIzs5RT/nIptjidKOY81lXVOsi7bVlsas=;
 b=h+PuW0lEZY8T/ZZSwYcmqS9Be9NSD84V+yeP0216GYwk6bRO15/K6tS+k7m+kmYupA
 0JtVTHhkqr4MqThyhhe15Tr/RvX0NBStrad4AO09QPjN1W0Fpnb3vcGKhTbnFWmwhkVf
 PDXheBxfY+SrGqDbQn69QmYa0oDZMcsCwhpPLa2+3aAp1x0fFWwErRzhlY7xYLIAbovm
 oNrcN0Dx7h8cx112E5tWi4qqCX8rXkANYfSrxrZOcrqENPoXmPGPkdutnFSJrTg2uE6F
 qt1AuXCict0LQkqKiIc/thfAcWghJFlIq836lYmT9Twij6OOzf0xZnJxVWARLqbXJ8Xu
 rhKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=X5q/embD7eXIzs5RT/nIptjidKOY81lXVOsi7bVlsas=;
 b=TR7i5NPUOuWZHbhDgLPNtTiyBedcrNtT7ssbl3K9RTHDt9AXk/i+s9hlLJNoancVe4
 RqpgdDqN5JDc0mmhDQnJKiK7K4q4DuV5v3PI4wDb36q3xdiO6OPSl6ectgtNC5OOx+r1
 w8oesMUAGaE/r624goVP2TU3NdiErwLj8y+E6KkZfl27UA2Lb1KkSr7HCyVIxoAEasNs
 ZBE0WqxB2el+DMnKPIRO8eHGCVX9pnRzt+Sf+yavmbVBotQmmVxMAg8J/14NbOhcgb5p
 NgZP1n1zr3k7b+4PVfjjy9cpTpkMdCqcV/6nLgUJEgb7CxqUGyFWvVFO+Ba/O6tuZQOH
 tgXg==
X-Gm-Message-State: APjAAAWVQ/jbt3wq7do/wktbymqAukE/p61jvKsAor7wkS4Q4F54uWi+
 jO9/JDhyzO31LVYg/R/ta0P1/w==
X-Google-Smtp-Source: APXvYqyWK08+WjQP1VLDl7IvK9pwIh19X0SAufMgR31Cy7cJh22fhyV6le/+wCVq0ulNjX8HRd37MQ==
X-Received: by 2002:a17:90a:d343:: with SMTP id
 i3mr7511467pjx.15.1564647603787; 
 Thu, 01 Aug 2019 01:20:03 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id s22sm78451239pfh.107.2019.08.01.01.20.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 01:20:03 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org
Subject: [PATCH ARM32 v4.4 V2 11/47] ARM: bugs: hook processor bug checking
 into SMP and suspend paths
Date: Thu,  1 Aug 2019 13:45:55 +0530
Message-Id: <98b601c1241fbdfff7d7f1e30de696055441d24b.1564646727.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1564646727.git.viresh.kumar@linaro.org>
References: <cover.1564646727.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_012005_488736_E67EDA62 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

Commit 26602161b5ba795928a5a719fe1d5d9f2ab5c3ef upstream.

Check for CPU bugs when secondary processors are being brought online,
and also when CPUs are resuming from a low power mode.  This gives an
opportunity to check that processor specific bug workarounds are
correctly enabled for all paths that a CPU re-enters the kernel.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
Boot-tested-by: Tony Lindgren <tony@atomide.com>
Reviewed-by: Tony Lindgren <tony@atomide.com>
Acked-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: David A. Long <dave.long@linaro.org>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm/include/asm/bugs.h | 2 ++
 arch/arm/kernel/bugs.c      | 5 +++++
 arch/arm/kernel/smp.c       | 4 ++++
 arch/arm/kernel/suspend.c   | 2 ++
 4 files changed, 13 insertions(+)

diff --git a/arch/arm/include/asm/bugs.h b/arch/arm/include/asm/bugs.h
index ed122d294f3f..73a99c72a930 100644
--- a/arch/arm/include/asm/bugs.h
+++ b/arch/arm/include/asm/bugs.h
@@ -14,8 +14,10 @@ extern void check_writebuffer_bugs(void);
 
 #ifdef CONFIG_MMU
 extern void check_bugs(void);
+extern void check_other_bugs(void);
 #else
 #define check_bugs() do { } while (0)
+#define check_other_bugs() do { } while (0)
 #endif
 
 #endif
diff --git a/arch/arm/kernel/bugs.c b/arch/arm/kernel/bugs.c
index 88024028bb70..16e7ba2a9cc4 100644
--- a/arch/arm/kernel/bugs.c
+++ b/arch/arm/kernel/bugs.c
@@ -3,7 +3,12 @@
 #include <asm/bugs.h>
 #include <asm/proc-fns.h>
 
+void check_other_bugs(void)
+{
+}
+
 void __init check_bugs(void)
 {
 	check_writebuffer_bugs();
+	check_other_bugs();
 }
diff --git a/arch/arm/kernel/smp.c b/arch/arm/kernel/smp.c
index 0f1c11861147..bafbd29c6e64 100644
--- a/arch/arm/kernel/smp.c
+++ b/arch/arm/kernel/smp.c
@@ -29,6 +29,7 @@
 #include <linux/irq_work.h>
 
 #include <linux/atomic.h>
+#include <asm/bugs.h>
 #include <asm/smp.h>
 #include <asm/cacheflush.h>
 #include <asm/cpu.h>
@@ -396,6 +397,9 @@ asmlinkage void secondary_start_kernel(void)
 	 * before we continue - which happens after __cpu_up returns.
 	 */
 	set_cpu_online(cpu, true);
+
+	check_other_bugs();
+
 	complete(&cpu_running);
 
 	local_irq_enable();
diff --git a/arch/arm/kernel/suspend.c b/arch/arm/kernel/suspend.c
index 9a2f882a0a2d..134f0d432610 100644
--- a/arch/arm/kernel/suspend.c
+++ b/arch/arm/kernel/suspend.c
@@ -1,6 +1,7 @@
 #include <linux/init.h>
 #include <linux/slab.h>
 
+#include <asm/bugs.h>
 #include <asm/cacheflush.h>
 #include <asm/idmap.h>
 #include <asm/pgalloc.h>
@@ -34,6 +35,7 @@ int cpu_suspend(unsigned long arg, int (*fn)(unsigned long))
 		cpu_switch_mm(mm->pgd, mm);
 		local_flush_bp_all();
 		local_flush_tlb_all();
+		check_other_bugs();
 	}
 
 	return ret;
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
