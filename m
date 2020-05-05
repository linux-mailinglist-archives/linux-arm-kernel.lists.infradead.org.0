Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1EDC1C579E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 15:56:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zXCFjSBy++3q4Cv8CZFW8N6h1Luck4mh67FczluJxN8=; b=qGz1LVjBA1/NrThR9ixjUJ9UbI
	/2p6Hyrl6rxsEeblgnXqmdV3ZO8HJ9o8qc4wBIbXFYlgvhIn4C4LqcZrRQnK1KeAwQeE6VYKwvz3L
	jBAJGpDUPS2w7941u1Q8u+otqDdD2Rqo2erQgKIFm+dvRcZfE5nKAXUOzx0FtQXY50sQho3mlb5R4
	dmyLgVzG/TqUqleh24BRh4eqs+Pf0I5kzHTyo5gsJb3kJLroUyJXXcoJ9aCmErq0deXNNb5wj1yil
	H+YdSnbnftIZyJF/ZFSK8mpj9msi/JQqxt8mkfga1wkbnJru2c75hsCfvfByA6VudcjJqn5jh8N2A
	gGd6PnCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVy3r-000641-Eg; Tue, 05 May 2020 13:56:39 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVy3V-0005rC-Dn
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 13:56:22 +0000
Received: by mail-pl1-x643.google.com with SMTP id f8so854385plt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 06:56:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=SUqpwl4dX7jj+lLGJIm4d2JPI0kCLiGuhtY6NV9FT/c=;
 b=L7XU/uh6V5tz6vktKYXmi/XwxORUtcF15+kxdkEn3S/K3YhYvAAdOTqTsOeyZl8P6o
 uVoCOooPY44m+si/AOD7EZ9wT6f/v6Gs9mZEHBRRmoGIkmLfdfv3zBoayQTR9iKM6AeC
 QcGboVdr61cK16ErRdrDxEWVSnLxHjr/F5B7VFxBmqja6YhoNOamBbs0e4LzVZ2B7u6m
 zl3YsK1Y36SLblwFRbESgqhZO/LEBiW+pmsXtyOfQ62dUjG7DbUJM8F92HrwgAjXXapS
 5PWzixm65+OyB4KkY4A3V2DYUSVRzgmb/VuJBfSdrj+3ktlPHT7scxVu7z15M2kxfueW
 5R4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=SUqpwl4dX7jj+lLGJIm4d2JPI0kCLiGuhtY6NV9FT/c=;
 b=pgoWSjO/sCoNyM72QnIo2JR31uJrzau5UMWcePc4gDq1jZ+cbTgV9lsFLslFHa8DRF
 xZ0H65CuMdDRWvue24gS3anV1524/4j2b30q3E8x18RSAD9Mv12ICeq7yKlyf+4+hccS
 b3bH3C4uJxYjfowxU+oIm4UMNFm8bZIrqf8b19vxc3EpNjixCuw8XE5DMKyZxOVapyk5
 xFIOI/dByKT2z0D2LhnxCBeDCruCQv7oVVyzWOAThT4vOEFlQe8C5k0bZfDoYBqyCEU/
 KpEpNa0KgaDKqwnPeKG66sFb8XrYh63TZeQwdV9U7CRt3AywKl8Y87WmruIMNrZ7lBrl
 6bDA==
X-Gm-Message-State: AGi0PuaCdoc+3KEqoPmO+iBaATWkrZ3RRumQG4hFONLAUf5ndiPZtsc/
 /e7GVepoWB/wD5TjsjDwHtmduA==
X-Google-Smtp-Source: APiQypIQVZ59e8r8wEOVk5i2Y1mP2Z7kLyRUi51y3D4HDuLkwu7L/BYWmpDbtRn1Eg1F2AdjGnnhWA==
X-Received: by 2002:a17:902:b682:: with SMTP id
 c2mr3331870pls.144.1588686976387; 
 Tue, 05 May 2020 06:56:16 -0700 (PDT)
Received: from localhost ([2400:8904::f03c:91ff:fe8a:bbe4])
 by smtp.gmail.com with ESMTPSA id z60sm2226453pjj.14.2020.05.05.06.56.15
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 05 May 2020 06:56:15 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Peter Zijlstra <peterz@infradead.org>, Will Deacon <will@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Ingo Molnar <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 Enrico Weigelt <info@metux.net>,
 "Ahmed S. Darwish" <a.darwish@linutronix.de>,
 Paul Cercueil <paul@crapouillou.net>,
 "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/3] clocksource/drivers/arm_arch_timer: Handle time offset
 prior to epoch
Date: Tue,  5 May 2020 21:55:43 +0800
Message-Id: <20200505135544.6003-3-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505135544.6003-1-leo.yan@linaro.org>
References: <20200505135544.6003-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_065617_484462_BE5C8BB4 
X-CRM114-Status: GOOD (  15.78  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [2400:8904:0:0:f03c:91ff:fe8a:bbe4 listed in] [zen.spamhaus.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since arch timer can be enabled at any time during boot, this patch
changes to invoke variant sched_clock_register_epoch() so it can
retrieve time offset prior to epoch (in nanosecond).

Arch timer driver doesn't directly use this time offset, but it needs to
pass this value to Perf framework to allow Perf tool to use it for
timestamp calibration.  For this purpose, this patch introduces an API
arch_timer_get_epoch_offset() which returns the time offset for arch
timer's counter.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 drivers/clocksource/arm_arch_timer.c | 10 +++++++++-
 include/clocksource/arm_arch_timer.h |  6 ++++++
 2 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/clocksource/arm_arch_timer.c b/drivers/clocksource/arm_arch_timer.c
index 2204a444e801..10d0b15a7674 100644
--- a/drivers/clocksource/arm_arch_timer.c
+++ b/drivers/clocksource/arm_arch_timer.c
@@ -78,6 +78,8 @@ static enum vdso_clock_mode vdso_default = VDSO_CLOCKMODE_NONE;
 static cpumask_t evtstrm_available = CPU_MASK_NONE;
 static bool evtstrm_enable = IS_ENABLED(CONFIG_ARM_ARCH_TIMER_EVTSTREAM);
 
+static u64 epoch_offset;
+
 static int __init early_evtstrm_cfg(char *buf)
 {
 	return strtobool(buf, &evtstrm_enable);
@@ -942,6 +944,11 @@ u32 arch_timer_get_rate(void)
 	return arch_timer_rate;
 }
 
+u64 arch_timer_get_epoch_offset(void)
+{
+	return epoch_offset;
+}
+
 bool arch_timer_evtstrm_available(void)
 {
 	/*
@@ -1009,7 +1016,8 @@ static void __init arch_counter_register(unsigned type)
 			 &cyclecounter, start_count);
 
 	/* 56 bits minimum, so we assume worst case rollover */
-	sched_clock_register(arch_timer_read_counter, 56, arch_timer_rate);
+	sched_clock_register_epoch(arch_timer_read_counter, 56,
+				   arch_timer_rate, &epoch_offset);
 }
 
 static void arch_timer_stop(struct clock_event_device *clk)
diff --git a/include/clocksource/arm_arch_timer.h b/include/clocksource/arm_arch_timer.h
index 1d68d5613dae..a566e82a40ba 100644
--- a/include/clocksource/arm_arch_timer.h
+++ b/include/clocksource/arm_arch_timer.h
@@ -83,6 +83,7 @@ struct arch_timer_mem {
 #ifdef CONFIG_ARM_ARCH_TIMER
 
 extern u32 arch_timer_get_rate(void);
+extern u64 arch_timer_get_epoch_offset(void);
 extern u64 (*arch_timer_read_counter)(void);
 extern struct arch_timer_kvm_info *arch_timer_get_kvm_info(void);
 extern bool arch_timer_evtstrm_available(void);
@@ -94,6 +95,11 @@ static inline u32 arch_timer_get_rate(void)
 	return 0;
 }
 
+static inline u64 arch_timer_get_epoch_offset(void)
+{
+	return 0;
+}
+
 static inline u64 arch_timer_read_counter(void)
 {
 	return 0;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
