Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65B2A1D60ED
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 May 2020 14:50:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XuwNMAaEl5MdU1TMBsaoIStDYRBPjvo6Ev+GB31Erms=; b=uot+LGl6dgSWXP
	7Cqr4sFlEEmHsxdbmPSB2Gd+5ODqNKjq+4A2tbALCA4ZVdTR1XheCiLqHfHAT4unfsyDsjh0y2wMm
	HDpLX8K51+iAP4MhCVEzk/iRmWolQcGg7BWGq7G0PgtPJYNX/Bl6Swl+b/avcuT7/m8nuoVMRv7OY
	EMtifn3WiJt8it2OHQkN+rhSpfxR/YpDL559Xqa2ok11tNzya9xV2BLA847p7Edi9K1iZeslNR8i5
	wr8umZISTrWH+fj8Qy6jJ5hNi4DLuCm6agIiTmd014vZ1iFb+dACAIVMFJiRiY8vb1XuV/nGWdqzd
	FpGEBSxiLReW2po5NtBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZwH0-0003KN-Uf; Sat, 16 May 2020 12:50:38 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZwGU-00037T-Cp; Sat, 16 May 2020 12:50:08 +0000
Received: by mail-pl1-x642.google.com with SMTP id x10so2084903plr.4;
 Sat, 16 May 2020 05:50:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=M/VElStb6fjAYbZ4B7vgbZVnEhth0ws2lGWe8fvBxrg=;
 b=SCJnrewntUekgCrLrPYKTjDyWUiaT6tukJ7ghZCp/+OlBZYuLFZdo2vx6iAo08VGqN
 HA9FU+E4IuYzi3E4RLgOGtcsrMKaIVhKfJk8juuPDehu3XUNZEfCnrFKPBAZKCX4xGqb
 hs1nFDZ67Bdf0zkzStFPU4wszli+z8hWwt3+8E2+bCSZh+E2Bm66Im4l8o0Ips+Flf/n
 FFQ1sO1tqv4qIv2PgbVNPXtzzz4QFerAN3CxpgNEm3uUPTzlh/z8jL8/4qLXPiJzRbeb
 PGGA/oywLbZkAycUIqB9G9+4YBpewcErpSWjLaYM/h/L6u16827k/r8aJfYhCa2S8oPu
 y4ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=M/VElStb6fjAYbZ4B7vgbZVnEhth0ws2lGWe8fvBxrg=;
 b=N8UO1BNd/X8AkvNOHhOceN2cTZULU7gon2FQmreU6w9+0w/cMer2TEGL68yAIk8CUk
 qVovPXJuyqTqpnhmsLLkvms9jgie35B2PXnrAT267CnkqaR7M0XSy+OfEYusJTioJvye
 IvK5ZJyyFBEcWwiUWex8KMYkjD6goRMLB7/eEKFOEmx7lSUWFmb9YWLR1RfKnSYnpS1W
 HAUL6RX87pGyFWINbGp/ifi/hz6icHrCzs1i0KyJmFAPOwm/jOmkChnKOGXkhvjNJZBh
 ZAq7phaPzz7jMGiIJ3xgdCrvXQ59wqAFFXLfEZYdPKbEWhUAQNCWmAgA5DA7mvJI8gYv
 SQRA==
X-Gm-Message-State: AOAM531jDT3dNX25SA7YqNnf8MqL0JftdN/XWyQf67S5YCJW/FJB5LZm
 FM3TAwU9mwXaiDN9t20bHBk=
X-Google-Smtp-Source: ABdhPJzcs64HJTWzTse+oOBspVOEV5XzRGG9wrG7svjtS4HdTsyk3E3hIOd9b+hUCGQIn9WnzsqeTQ==
X-Received: by 2002:a17:90a:7349:: with SMTP id
 j9mr9123258pjs.196.1589633405850; 
 Sat, 16 May 2020 05:50:05 -0700 (PDT)
Received: from localhost.localdomain (61-228-240-171.dynamic-ip.hinet.net.
 [61.228.240.171])
 by smtp.gmail.com with ESMTPSA id k27sm3768323pgb.30.2020.05.16.05.50.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 May 2020 05:50:05 -0700 (PDT)
From: Lecopzer Chen <lecopzer@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] arm_pmu: Add support for perf NMI interrupts registration
Date: Sat, 16 May 2020 20:48:55 +0800
Message-Id: <20200516124857.75004-2-lecopzer@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200516124857.75004-1-lecopzer@gmail.com>
References: <20200516124857.75004-1-lecopzer@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_055006_437714_FCBB72A1 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lecopzer[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, lecopzer.chen@mediatek.com,
 Lecopzer Chen <lecopzer@gmail.com>, alexander.shishkin@linux.intel.com,
 catalin.marinas@arm.com, jolsa@redhat.com, acme@kernel.org,
 peterz@infradead.org, mingo@redhat.com, linux-mediatek@lists.infradead.org,
 matthias.bgg@gmail.com, namhyung@kernel.org, will@kernel.org,
 yj.chiang@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Register perf interrupts by request_nmi()/percpu_nmi() when both
ARM64_PSEUDO_NMI and ARM64_PSEUDO_NMI_PERF are enabled and nmi
cpufreature is active.

Signed-off-by: Lecopzer Chen <lecopzer.chen@mediatek.com>
---
 drivers/perf/arm_pmu.c       | 51 +++++++++++++++++++++++++++++++-----
 include/linux/perf/arm_pmu.h |  6 +++++
 2 files changed, 51 insertions(+), 6 deletions(-)

diff --git a/drivers/perf/arm_pmu.c b/drivers/perf/arm_pmu.c
index df352b334ea7..fa37b72d19e2 100644
--- a/drivers/perf/arm_pmu.c
+++ b/drivers/perf/arm_pmu.c
@@ -559,6 +559,48 @@ void armpmu_free_irq(int irq, int cpu)
 	per_cpu(cpu_irq, cpu) = 0;
 }
 
+static void armpmu_prepare_percpu_nmi_other(void *info)
+{
+	/*
+	 * We don't need to disable preemption since smp_call_function()
+	 * did this for us.
+	 */
+	prepare_percpu_nmi((uintptr_t) info);
+}
+
+static int _armpmu_request_irq(unsigned int irq, irq_handler_t handler,
+			       unsigned long flags, int cpu)
+{
+	if (armpmu_support_nmi())
+		return request_nmi(irq, handler, flags, "arm-pmu",
+				   per_cpu_ptr(&cpu_armpmu, cpu));
+	return request_irq(irq, handler, flags, "arm-pmu",
+			   per_cpu_ptr(&cpu_armpmu, cpu));
+}
+
+static int _armpmu_request_percpu_irq(unsigned int irq, irq_handler_t handler)
+{
+	if (armpmu_support_nmi()) {
+		int err;
+
+		err = request_percpu_nmi(irq, handler, "arm-pmu",
+					 &cpu_armpmu);
+		if (err)
+			return err;
+
+		preempt_disable();
+		err = prepare_percpu_nmi(irq);
+		if (err) {
+			return err;
+			preempt_enable();
+		}
+		smp_call_function(armpmu_prepare_percpu_nmi_other,
+				  (void *)(uintptr_t) irq, true);
+		preempt_enable();
+	}
+	return request_percpu_irq(irq, handler, "arm-pmu",
+				  &cpu_armpmu);
+}
+
 int armpmu_request_irq(int irq, int cpu)
 {
 	int err = 0;
@@ -582,12 +624,9 @@ int armpmu_request_irq(int irq, int cpu)
 			    IRQF_NO_THREAD;
 
 		irq_set_status_flags(irq, IRQ_NOAUTOEN);
-		err = request_irq(irq, handler, irq_flags, "arm-pmu",
-				  per_cpu_ptr(&cpu_armpmu, cpu));
-	} else if (armpmu_count_irq_users(irq) == 0) {
-		err = request_percpu_irq(irq, handler, "arm-pmu",
-					 &cpu_armpmu);
-	}
+		err = _armpmu_request_irq(irq, handler, irq_flags, cpu);
+	} else if (armpmu_count_irq_users(irq) == 0)
+		err = _armpmu_request_percpu_irq(irq, handler);
 
 	if (err)
 		goto err_out;
diff --git a/include/linux/perf/arm_pmu.h b/include/linux/perf/arm_pmu.h
index 5b616dde9a4c..5b878b5a22aa 100644
--- a/include/linux/perf/arm_pmu.h
+++ b/include/linux/perf/arm_pmu.h
@@ -160,6 +160,12 @@ int arm_pmu_acpi_probe(armpmu_init_fn init_fn);
 static inline int arm_pmu_acpi_probe(armpmu_init_fn init_fn) { return 0; }
 #endif
 
+static inline bool armpmu_support_nmi(void)
+{
+	return IS_ENABLED(CONFIG_ARM64_PSEUDO_NMI_PERF) &&
+	       system_uses_irq_prio_masking();
+}
+
 /* Internal functions only for core arm_pmu code */
 struct arm_pmu *armpmu_alloc(void);
 struct arm_pmu *armpmu_alloc_atomic(void);
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
