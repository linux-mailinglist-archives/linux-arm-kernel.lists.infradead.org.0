Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 483BC1DB12A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 13:13:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AaMgKDz9vkn/3Azl8v/tj9v/sM1dC2MC31Jj/JiXbBQ=; b=DzK3+X3i8AJCAG/tdAdMAHiZp3
	Ow0I46Wh9SNsGh3vM4oi6QVST85oyDKfjUA2mJP9yFhOn9nkSUVgBnXCGl6yAzmESFUNHTUfj6/9W
	3U8Z0I66M5u8p0un+JKCr+s2OlQ4N/IXxIKUYdveBzpAGkTy1S9zY7szVEq/BrDS8DkiOnyn1D4D8
	KRW4VlKRaACJw3xVtbjWINKPVSLH7hVBxkX8gp1tzjtiT1PLEB4aSFK86+XcBzQZB0U16mdYoOcdB
	ToBCTHyr9DVS6Nm0ybdZIhTLKAYzBtZMjpoXKmW1ATUYJ/ibtrpW/Gkuj//Z0m9t/cHcUGXHMg+OB
	o1BUnShg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbMer-0004OA-Uo; Wed, 20 May 2020 11:13:09 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbMeZ-0004IL-3y
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 11:12:52 +0000
Received: by mail-pj1-x1044.google.com with SMTP id cx22so1098526pjb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 04:12:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ijhEJD7IduE0U1E8AnSJDUXoqHR53bJuCE3Hju6nI0s=;
 b=aGADS/21PIt44tBDepA8z7JH39hjNazac7GxhdW+KNVWe0A3Hy/0c4bYlV9oSf3BvP
 LCgJNx3/hzoPEak3bXvFApjYrByfQNhAzTXG5QWGS0f9YWJQ/d5zIvHCql8pYNUeH5AB
 KwuWXI952vPjmL4r8O+gG2aHXkvWJj67H1moGsmx5H3+FDhMPIL4n8NFTGOiPj+uDX+P
 e7tbjJDHqLT/H61jYEE4EYXZCQLYRYrkiYnBD8YDRE0tRnAy8r/nOGBwUHcvbIPMWXDC
 JtFTEPl/aeX1mocEmBiGSRNvlcCmOhBfuctZV+oD7NuAApDIrmmWK7YDlqYAjPzUWdT+
 BN7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ijhEJD7IduE0U1E8AnSJDUXoqHR53bJuCE3Hju6nI0s=;
 b=jkEH/LmyBVCdmDpB94cbaSWkwx9rDUHbq39/4h9BIrZhIk+KISD0GddcMCJ59gsXZv
 5XMiFf2Xk2SCQuLA8pGOlSEpV4rib/0LTeRAsXiWMSeKfQ6wh1O6QQquHnROyimJvBoP
 CIpX4Qqz9rWFMhDXcf7nimHzyYfDYmkWiA4G4UeEZVf6c9CzfmZVozNRLyUOBUTpkPEj
 KXUndt8qR9p8uvLB5Us443RcVjxeWvu3IIDjthhZJKTiPkvRbDbc/0Y3kQA3/RpfrhMl
 zTnSF2h6uosm4HhvprJBaHmGj1T6xd/VeYrgUWKVlhNZhWavAdETiUJmKB3JcNc+C/Kf
 oTFA==
X-Gm-Message-State: AOAM531D16dDnNXsEs5/wL1gtHqqQ9jR/I9A/yw1jU98VfFJFUdgxly0
 gp5Fnyi2NL/zqIt8mM4ollxLMN4pi4E=
X-Google-Smtp-Source: ABdhPJzNvSwUoGbq89C1ybvRuntAvjJr6uSw+V7BIYsslChvoR7r5VHqx1MN7bVP2u8IX7evwU3kkg==
X-Received: by 2002:a17:90a:2325:: with SMTP id
 f34mr4619400pje.91.1589973169271; 
 Wed, 20 May 2020 04:12:49 -0700 (PDT)
Received: from localhost.localdomain ([117.252.68.136])
 by smtp.gmail.com with ESMTPSA id q134sm2044974pfc.143.2020.05.20.04.12.42
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 20 May 2020 04:12:48 -0700 (PDT)
From: Sumit Garg <sumit.garg@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/4] arm64: smp: Introduce a new IPI as IPI_CALL_NMI_FUNC
Date: Wed, 20 May 2020 16:41:52 +0530
Message-Id: <1589973115-14757-2-git-send-email-sumit.garg@linaro.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589973115-14757-1-git-send-email-sumit.garg@linaro.org>
References: <1589973115-14757-1-git-send-email-sumit.garg@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_041251_262898_4FE93F96 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sumit Garg <sumit.garg@linaro.org>, daniel.thompson@linaro.org,
 jason@lakedaemon.net, catalin.marinas@arm.com, jason.wessel@windriver.com,
 dianders@chromium.org, linux-kernel@vger.kernel.org, maz@kernel.org,
 kgdb-bugreport@lists.sourceforge.net, tglx@linutronix.de, will@kernel.org,
 julien.thierry.kdev@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introduce a new inter processor interrupt as IPI_CALL_NMI_FUNC that
can be invoked to run special handlers in NMI context. One such handler
example is kgdb_nmicallback() which is invoked in order to round up CPUs
to enter kgdb context.

As currently pseudo NMIs are supported on specific arm64 platforms which
incorporates GICv3 or later version of interrupt controller. In case a
particular platform doesn't support pseudo NMIs, IPI_CALL_NMI_FUNC will
act as a normal IPI which can still be used to invoke special handlers.

Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
---
 arch/arm64/include/asm/hardirq.h |  2 +-
 arch/arm64/include/asm/smp.h     |  1 +
 arch/arm64/kernel/smp.c          | 13 ++++++++++++-
 3 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/hardirq.h b/arch/arm64/include/asm/hardirq.h
index 87ad961..abaa23a 100644
--- a/arch/arm64/include/asm/hardirq.h
+++ b/arch/arm64/include/asm/hardirq.h
@@ -13,7 +13,7 @@
 #include <asm/kvm_arm.h>
 #include <asm/sysreg.h>
 
-#define NR_IPI	7
+#define NR_IPI	8
 
 typedef struct {
 	unsigned int __softirq_pending;
diff --git a/arch/arm64/include/asm/smp.h b/arch/arm64/include/asm/smp.h
index bec6ef0..b4602de 100644
--- a/arch/arm64/include/asm/smp.h
+++ b/arch/arm64/include/asm/smp.h
@@ -106,6 +106,7 @@ extern void secondary_entry(void);
 
 extern void arch_send_call_function_single_ipi(int cpu);
 extern void arch_send_call_function_ipi_mask(const struct cpumask *mask);
+extern void arch_send_call_nmi_func_ipi_mask(const struct cpumask *mask);
 
 #ifdef CONFIG_ARM64_ACPI_PARKING_PROTOCOL
 extern void arch_send_wakeup_ipi_mask(const struct cpumask *mask);
diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
index d29823a..236784e 100644
--- a/arch/arm64/kernel/smp.c
+++ b/arch/arm64/kernel/smp.c
@@ -81,7 +81,8 @@ enum ipi_msg_type {
 	IPI_CPU_CRASH_STOP,
 	IPI_TIMER,
 	IPI_IRQ_WORK,
-	IPI_WAKEUP
+	IPI_WAKEUP,
+	IPI_CALL_NMI_FUNC
 };
 
 #ifdef CONFIG_HOTPLUG_CPU
@@ -802,6 +803,7 @@ static const char *ipi_types[NR_IPI] __tracepoint_string = {
 	S(IPI_TIMER, "Timer broadcast interrupts"),
 	S(IPI_IRQ_WORK, "IRQ work interrupts"),
 	S(IPI_WAKEUP, "CPU wake-up interrupts"),
+	S(IPI_CALL_NMI_FUNC, "NMI function call interrupts"),
 };
 
 static void smp_cross_call(const struct cpumask *target, unsigned int ipinr);
@@ -855,6 +857,11 @@ void arch_irq_work_raise(void)
 }
 #endif
 
+void arch_send_call_nmi_func_ipi_mask(const struct cpumask *mask)
+{
+	smp_cross_call(mask, IPI_CALL_NMI_FUNC);
+}
+
 static void local_cpu_stop(void)
 {
 	set_cpu_online(smp_processor_id(), false);
@@ -949,6 +956,10 @@ static void do_handle_IPI(int ipinr)
 		break;
 #endif
 
+	case IPI_CALL_NMI_FUNC:
+		/* nop, IPI handlers for special features can be added here. */
+		break;
+
 	default:
 		pr_crit("CPU%u: Unknown IPI message 0x%x\n", cpu, ipinr);
 		break;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
