Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4FB51C5799
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 15:56:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YXsJWFqpeeYuoFpz4OKFJrAir3OAhcxoayRMA+VqqvA=; b=N6D+zHuffVI22xgkErBD5C9tR2
	cRlh+n9VGabtjElLKWwXLVUWkIydw1I5oXUEjmspmMWv+EPm/iwvRmD2TYZJsht8MZZCrCeGrcYmf
	0qS38uVxG67FsUsjQhMOF4q15X+S+JFFMGCqGNgrZJddy765A3d6WndEegUGhYfv8pwY9faDk+PRM
	Tl3VZ69dZS/j8M9umZC6uDUlN/O9oM+vLqi75McX7ZgXq1marhgJzcKfumoHmTFPHnL3Bjk6oideB
	s/vGxkXrF4LYZkHvoO+iwfymb9pk6x3PCRH36mcsnTn/DbHxc2pvTYtbeKpltBEAdtGG26xPTUb7o
	26YQwOiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVy3b-0005kG-Qd; Tue, 05 May 2020 13:56:23 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVy3M-0005hC-8n
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 13:56:09 +0000
Received: by mail-pj1-x1044.google.com with SMTP id a5so1155679pjh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 06:56:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=tNBFhF/ggXZPZwGUiqxzSB760pgCcUxpJ37blThJNEI=;
 b=wutoE5vzHDt141cP+zqKw13AsxyZDmqimG3VCe2kulHk/dcLheB3goxZFqDEPpqLtx
 +2y45IsDhYVBFgtvCZRq43rFlnLr8Hz3ZUgo+chXAJd85QkXjRaAT/LGdcVAqYMt+01C
 Gg14jvUlpkcH2tJqBJFxDROu7sCUcugNbVqJ3Dh9w4Lgz76F5ThR2mnQR8EIceAmkRg8
 ZBA53qVz8Vipf4SyUiJnQTr0b2FT+DlIe7G48uqUT2FrSpNucBisrhkzT2fY9/tH4UAY
 v6cplZvE0huOpeElysBBMsZe3RVlLeYSU0sClPfO5mRug51Hlba9zGAUkDrzW4WBOyGf
 Kowg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=tNBFhF/ggXZPZwGUiqxzSB760pgCcUxpJ37blThJNEI=;
 b=jlBfc1qqEe3FW2GWyj+CmTCBy9dNYEMNw9AtXSa6QwFNlWhwiG1XR9t695qdUW4Z/I
 HoMCfOtSgajlfWNh9AQoXbs1NafHBIjyTjE4aKnT1t1KgYl0YUaUGnvEO59hfjKdl4/8
 AIfVVT0jYKxl5pywcXf88EXNOvToT7sYusFlvagEAIS96zFccCih2nnEgTO5HSQ+XxdC
 vea9JaNevli2b1kF5lxAKmAF67P+VgY7yKwftX8WvuyFMIhQo3RXh+XQJjA+HXXNVotl
 8XV4qVFs++qV2RVkf4aATmN1sVgktLurvvxyFACXbLMaecoaMRFp5uwrZlever0d5G3Y
 g1WQ==
X-Gm-Message-State: AGi0PuYRuXLMEjPwujqIAo71DUZMF9CieY9JSAhejF4wkGSB245ToV8b
 ove2vVwHhClRNDXidzjpmtKiKw==
X-Google-Smtp-Source: APiQypKwZbjoFvZHFkTi/sqRdibF0HSyFnmyfTDs/xFUevEDLWaZ7rJkx5mSRCyfkXmk4NQvg0TvpQ==
X-Received: by 2002:a17:902:d70f:: with SMTP id
 w15mr3387846ply.55.1588686967626; 
 Tue, 05 May 2020 06:56:07 -0700 (PDT)
Received: from localhost ([2400:8904::f03c:91ff:fe8a:bbe4])
 by smtp.gmail.com with ESMTPSA id w2sm2068101pfc.194.2020.05.05.06.56.06
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 05 May 2020 06:56:07 -0700 (PDT)
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
Subject: [PATCH v2 1/3] time/sched_clock: Add new variant
 sched_clock_register_epoch()
Date: Tue,  5 May 2020 21:55:42 +0800
Message-Id: <20200505135544.6003-2-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505135544.6003-1-leo.yan@linaro.org>
References: <20200505135544.6003-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_065608_324263_8B926032 
X-CRM114-Status: GOOD (  15.65  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [2400:8904:0:0:f03c:91ff:fe8a:bbe4 listed in] [zen.spamhaus.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
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

Except the sched clock's raw counter is used by sched clock itself, it
also can be used by other purposes in the same system, e.g. the raw
counter can be injected into hardware tracing data (like Arm's SPE) and
Perf tool can capture trace data and extract the raw counter from it
which finally can be used to generate timestamp.

Perf tool needs a way to convert sched clock's raw counter cycles into a
nanosecond that can be compared against values coming out of sched_clock.

To do this accurately, this patch adds a new variant API
sched_clock_register_epoch() with introducing an extra argument
'epoch_offset', as its naming indicates, this argument contains the
offset time (in nanosecond) for the clock source has been enabled prior
to epoch.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 include/linux/sched_clock.h | 10 ++++++++++
 kernel/time/sched_clock.c   | 13 ++++++++++++-
 2 files changed, 22 insertions(+), 1 deletion(-)

diff --git a/include/linux/sched_clock.h b/include/linux/sched_clock.h
index 0bb04a96a6d4..98965c0c7cd4 100644
--- a/include/linux/sched_clock.h
+++ b/include/linux/sched_clock.h
@@ -10,6 +10,10 @@ extern void generic_sched_clock_init(void);
 
 extern void sched_clock_register(u64 (*read)(void), int bits,
 				 unsigned long rate);
+
+extern void sched_clock_register_epoch(u64 (*read)(void), int bits,
+				       unsigned long rate,
+				       u64 *epoch_offset);
 #else
 static inline void generic_sched_clock_init(void) { }
 
@@ -17,6 +21,12 @@ static inline void sched_clock_register(u64 (*read)(void), int bits,
 					unsigned long rate)
 {
 }
+
+static inline void sched_clock_register_epoch(u64 (*read)(void), int bits,
+					      unsigned long rate,
+					      u64 *epoch_offset)
+{
+}
 #endif
 
 #endif
diff --git a/kernel/time/sched_clock.c b/kernel/time/sched_clock.c
index fa3f800d7d76..b402196afc3f 100644
--- a/kernel/time/sched_clock.c
+++ b/kernel/time/sched_clock.c
@@ -165,7 +165,8 @@ static enum hrtimer_restart sched_clock_poll(struct hrtimer *hrt)
 }
 
 void __init
-sched_clock_register(u64 (*read)(void), int bits, unsigned long rate)
+sched_clock_register_epoch(u64 (*read)(void), int bits, unsigned long rate,
+			   u64 *epoch_offset)
 {
 	u64 res, wrap, new_mask, new_epoch, cyc, ns;
 	u32 new_mult, new_shift;
@@ -204,6 +205,10 @@ sched_clock_register(u64 (*read)(void), int bits, unsigned long rate)
 	rd.epoch_cyc		= new_epoch;
 	rd.epoch_ns		= ns;
 
+	/* Output epoch offset (ns) to clock event driver */
+	if (epoch_offset)
+		*epoch_offset = cyc_to_ns(new_epoch & new_mask, new_mult, new_shift) - ns;
+
 	update_clock_read_data(&rd);
 
 	if (sched_clock_timer.function != NULL) {
@@ -240,6 +245,12 @@ sched_clock_register(u64 (*read)(void), int bits, unsigned long rate)
 	pr_debug("Registered %pS as sched_clock source\n", read);
 }
 
+void __init
+sched_clock_register(u64 (*read)(void), int bits, unsigned long rate)
+{
+	sched_clock_register_epoch(read, bits, rate, NULL);
+}
+
 void __init generic_sched_clock_init(void)
 {
 	/*
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
