Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5169E56C9B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 16:48:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=t8e1WeESwDp1gOlSM8AqhtFUqk4yAh/VfdKqXSHR2M4=; b=Yxoq823cXbcfk0dbEnVqDxEPVH
	2kqz1gJIFpHhPGu9UqcB+VKySPVnRvuKQ0JxUVci6SnYv8SJeDoY65KPn3pHjp8A/jsUSOE9aKi/O
	3tLRR6U+udhCUgUM4VOlZEeln6UXdTbt+6bu5l8s632mQRAvdOwH1UP+jAnmyqCGxU7IEv3qIF3Ps
	yVoYhj7bFwzEGQCKYUc+kXFdsfTW2g46L9+tKEruwA5v4S91GHgO8T8zu0UmIXfnvLnMoYJmWoDA5
	GMw89F+C+mMUFVA6AA2o2cBb4oa38mhLRXCmf7YKfVsozxLiq1cwti+wrXJIxZqQhJgXXPZ0T5xSu
	kdfeoS+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg9De-0002lK-OV; Wed, 26 Jun 2019 14:48:19 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg9Ci-00029T-7X
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 14:47:21 +0000
Received: by mail-wr1-x442.google.com with SMTP id v14so3074659wrr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 07:47:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=GnURz9uBDl/JIVDRIJyHSxWewLcsuwU4f5F+HbyZmEk=;
 b=KQ5btisTZtuBgX3s5dqhAy9z1WRj8n9/5MKEJo4MF5cUOEuJVWT59lzvSJli34Ae21
 iV7BM1IiLxpZjlXc4U/PSvZ0uTGm9C1OZag5uvgAmapx1x4Z+V0pcz3mdcWVQiyefhE/
 pJOaSeG9yj1LRqoqtf/oUXu4I8DMt8P9IC8Ti3lz+/yJeUME9lJAGcMBF/L2i2WF5yWm
 NTQeR3ueMzafid23YxD4WI0WnHBygKBjhcibBdd836MnpUbCNQ6ELTN7KeiQW6f42nTX
 7qXi5g5P7fzqqBl2oX8lGke2ZK1QriMJLHGxHDpiwjEB6jG6B/W6SfU/gQWUU1T8wCTD
 B7ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=GnURz9uBDl/JIVDRIJyHSxWewLcsuwU4f5F+HbyZmEk=;
 b=tFGO2vgBOBTZvr3uk0Dy1NxagbHruqAdJ/VYRRSK9boXtFqMm0ebIlLStSVKWMaU0Q
 SdnDt3iAINJ21YXf4EuevDO3TRceYsXVD0eXWGJLdRD2zgZZYl5C8tN03vksZM9tJZ1n
 pRNdyGp7itlal7BfYL+uoFPQ1JoHhG30X6o9+ISTizb9cp3SDW0N4ef11GQxNy1yethW
 dRpzJN1JY4mi5SOA5QMjZrJaCJE68bi+S62gl7p+wwrajVPrEVvdLl1AGpV3l5CW93BW
 pf3hm5o9iPwYo9jv1avWKwYkbCqB0hl3B9Zt/FHhSDDoqWZX0douCw12QuFPTEdiNeG1
 cfdQ==
X-Gm-Message-State: APjAAAVzn8fx4d1BFsVmRn5rZm48HshQkSVIuOjFd7l7tk3iYSIJqa4l
 LT6c37umJmmma2vGC0k5ipZaJw==
X-Google-Smtp-Source: APXvYqwwouIsWhDWc6BkFntC79BsmzDpRrHtrTK+mkPNbfBFrxQaW7YY2H0Ua1xIsJZ/0Bwx0wvhpA==
X-Received: by 2002:adf:ce88:: with SMTP id r8mr4325093wrn.42.1561560438445;
 Wed, 26 Jun 2019 07:47:18 -0700 (PDT)
Received: from mai.imgcgcw.net (26.92.130.77.rev.sfr.net. [77.130.92.26])
 by smtp.gmail.com with ESMTPSA id h84sm2718557wmf.43.2019.06.26.07.47.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Jun 2019 07:47:17 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: tglx@linutronix.de
Subject: [PATCH 04/25] clocksource/drivers/exynos_mct: Increase priority over
 ARM arch timer
Date: Wed, 26 Jun 2019 16:46:30 +0200
Message-Id: <20190626144651.16742-4-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190626144651.16742-1-daniel.lezcano@linaro.org>
References: <adba7d03-e9bd-9542-60bc-0f2d4874a40e@linaro.org>
 <20190626144651.16742-1-daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_074720_326027_6AB694AC 
X-CRM114-Status: GOOD (  14.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "moderated list:ARM/SAMSUNG EXYNOS ARM ARCHITECTURES"
 <linux-samsung-soc@vger.kernel.org>, Guo Ren <ren_guo@c-sky.com>,
 Peter Zijlstra <peterz@infradead.org>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Anju T Sudhakar <anju@linux.vnet.ibm.com>, Joseph Lo <josephl@nvidia.com>,
 Kukjin Kim <kgene@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 "moderated list:ARM/SAMSUNG EXYNOS ARM ARCHITECTURES"
 <linux-arm-kernel@lists.infradead.org>, "Kulkarni,
 Ganapatrao" <Ganapatrao.Kulkarni@cavium.com>,
 Lucas Stach <l.stach@pengutronix.de>, Borislav Petkov <bp@suse.de>,
 Hoan Tran <Hoan@os.amperecomputing.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marek Szyprowski <m.szyprowski@samsung.com>

Exynos SoCs based on CA7/CA15 have 2 timer interfaces: custom Exynos MCT
(Multi Core Timer) and standard ARM Architected Timers.

There are use cases, where both timer interfaces are used simultanously.
One of such examples is using Exynos MCT for the main system timer and
ARM Architected Timers for the KVM and virtualized guests (KVM requires
arch timers).

Exynos Multi-Core Timer driver (exynos_mct) must be however started
before ARM Architected Timers (arch_timer), because they both share some
common hardware blocks (global system counter) and turning on MCT is
needed to get ARM Architected Timer working properly.

To ensure selecting Exynos MCT as the main system timer, increase MCT
timer rating. To ensure proper starting order of both timers during
suspend/resume cycle, increase MCT hotplug priority over ARM Archictected
Timers.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
Reviewed-by: Chanwoo Choi <cw00.choi@samsung.com>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 drivers/clocksource/exynos_mct.c | 4 ++--
 include/linux/cpuhotplug.h       | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/clocksource/exynos_mct.c b/drivers/clocksource/exynos_mct.c
index 34bd250d46c6..6aa10cbc1d59 100644
--- a/drivers/clocksource/exynos_mct.c
+++ b/drivers/clocksource/exynos_mct.c
@@ -209,7 +209,7 @@ static void exynos4_frc_resume(struct clocksource *cs)
 
 static struct clocksource mct_frc = {
 	.name		= "mct-frc",
-	.rating		= 400,
+	.rating		= 450,	/* use value higher than ARM arch timer */
 	.read		= exynos4_frc_read,
 	.mask		= CLOCKSOURCE_MASK(32),
 	.flags		= CLOCK_SOURCE_IS_CONTINUOUS,
@@ -464,7 +464,7 @@ static int exynos4_mct_starting_cpu(unsigned int cpu)
 	evt->set_state_oneshot_stopped = set_state_shutdown;
 	evt->tick_resume = set_state_shutdown;
 	evt->features = CLOCK_EVT_FEAT_PERIODIC | CLOCK_EVT_FEAT_ONESHOT;
-	evt->rating = 450;
+	evt->rating = 500;	/* use value higher than ARM arch timer */
 
 	exynos4_mct_write(TICK_BASE_CNT, mevt->base + MCT_L_TCNTB_OFFSET);
 
diff --git a/include/linux/cpuhotplug.h b/include/linux/cpuhotplug.h
index 5c6062206760..87c211adf49e 100644
--- a/include/linux/cpuhotplug.h
+++ b/include/linux/cpuhotplug.h
@@ -116,10 +116,10 @@ enum cpuhp_state {
 	CPUHP_AP_PERF_ARM_ACPI_STARTING,
 	CPUHP_AP_PERF_ARM_STARTING,
 	CPUHP_AP_ARM_L2X0_STARTING,
+	CPUHP_AP_EXYNOS4_MCT_TIMER_STARTING,
 	CPUHP_AP_ARM_ARCH_TIMER_STARTING,
 	CPUHP_AP_ARM_GLOBAL_TIMER_STARTING,
 	CPUHP_AP_JCORE_TIMER_STARTING,
-	CPUHP_AP_EXYNOS4_MCT_TIMER_STARTING,
 	CPUHP_AP_ARM_TWD_STARTING,
 	CPUHP_AP_QCOM_TIMER_STARTING,
 	CPUHP_AP_TEGRA_TIMER_STARTING,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
