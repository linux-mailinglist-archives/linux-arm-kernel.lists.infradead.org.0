Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E8C1C579F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 15:57:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FUnvOaPPbRRA5fcsuae+Uo5aFBUto4A2UEfaBH0VdKI=; b=UPu1ScR/+6k40SSNATBts49oj0
	QVpktYjruIORP0JwdeedAFCiDUvyABbPR80wgkuR+45rdjquRFn9JBdzUh+p0n1TYOqM6lLmKX19l
	H2iNF7SSkUUyhDgo9n0+eQqdi1+QiwWJ8RQlFzLZWhGlYwT34C2/XMi2Ghcg5DrQqRWpj5nptZPsF
	99wdFYeptSxDtd2RDFj4PVvJwt716jCYaWSMCsY3/n/2ZFNvA8anE7vwdtODDPYiYkUtQJWVTcLwG
	VpzzO124pw9rTR7sX5Tu/jKcJvHY6/KterrIJCVHHtDW6FQ4ocztj6iBK/I0pAe/9FkoJ7bTFjheA
	9/MUdhyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVy47-0006L8-Dp; Tue, 05 May 2020 13:56:55 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVy3f-00061I-Bb
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 13:56:28 +0000
Received: by mail-pl1-x644.google.com with SMTP id s10so857952plr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 06:56:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=dt4B0z5dYP0Uyr0mcsXM5/WpJpH1f8WRXqVG53zpmTQ=;
 b=o1AKO/HSqppLELU1zsOuB8md57x4ABxWkYQW0v5+SHl8/tgSZb0b5nHEHpDEvrmPpB
 GN7VOqsb4nUUNKhpIO0B9XpQYF9ZeJSAx+0siwZiknoYbdoui8vdgPRjiGg7O0bDXMHX
 tHv+LGww+Zj1vRW6irLa/2F3yBwMUY4+unKr3xgNmnB7kclBKRzKOVFr3f3JpYkLtVqz
 yXykZRTrGwMzyMU1d2WsduT3HrYZVdtA4vHB9y8LAV90ssDyS8Cvsv2YiG6h5wkbZSKY
 xr4xYuGYB7bmlKmUpc5BuN2gFTnYJl1Zws+Py1FkouttXtXAc4OtqXTpD8QIoWop104g
 NZfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=dt4B0z5dYP0Uyr0mcsXM5/WpJpH1f8WRXqVG53zpmTQ=;
 b=DdVStOvDZX8bJxPZUSs/nLXHfgOqjoU6aCNqJ64ynEsjr6//oDr0EIgqnUjq+thGt4
 Q5fB+2ZebXRFkD1TldcuS4dFQCnrZUN+dYr/RfLre8vssCj7yM/NSVX1lwco15TKTq1K
 mbIbrGMxbcB0N1PydXWyHowItlhWPGYUKXoZRcH51/RRD/bvmtkA4SVORzIz4Pz18RDG
 flX+nESbRpPsqWgPVisN5mmOUVbF/vYehzTWylc1/HTAhfup7HRnicja2X9eg0b1f258
 9EiTNOr53k2HnFugQ1k25OMRjXRaFDrehfO8Gpb2EHWpRjDCItpwv+pgfl62dJgDKEtR
 YjjQ==
X-Gm-Message-State: AGi0Pub34Q1GLF+/95HlpcG7GVp+acPQEELXRbJChrqsViUcijRzZNZg
 NDkxebN13aROlKm6kszCaqzL9w==
X-Google-Smtp-Source: APiQypIHysObxDkfTPL5Ld8IioHs66VbL78eaPDd5OTIG6b36V584rOvubMrndPUJ07U5+/saSXr8w==
X-Received: by 2002:a17:90a:80c2:: with SMTP id k2mr3204469pjw.6.1588686986451; 
 Tue, 05 May 2020 06:56:26 -0700 (PDT)
Received: from localhost ([2400:8904::f03c:91ff:fe8a:bbe4])
 by smtp.gmail.com with ESMTPSA id n34sm1724456pgl.43.2020.05.05.06.56.24
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 05 May 2020 06:56:26 -0700 (PDT)
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
Subject: [PATCH v2 3/3] arm64: perf_event: Fix time_offset for arch timer
Date: Tue,  5 May 2020 21:55:44 +0800
Message-Id: <20200505135544.6003-4-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505135544.6003-1-leo.yan@linaro.org>
References: <20200505135544.6003-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_065627_411097_94315A1F 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [2400:8904:0:0:f03c:91ff:fe8a:bbe4 listed in] [zen.spamhaus.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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

'userpg->time_offset' is assigned to the negative 'now', 'now' if the
value of sched clock and this value cannot reflect the time offset for
arch timer's raw counter prior to sched clock's registration.

To fix this issue, this patch invokes arch_timer_get_epoch_offset() to
read time offset prior to sched clock's registration, and assign its
negative value to 'userpg->time_offset'.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 arch/arm64/kernel/perf_event.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
index 4d7879484cec..cbad7bd770fb 100644
--- a/arch/arm64/kernel/perf_event.c
+++ b/arch/arm64/kernel/perf_event.c
@@ -1163,10 +1163,12 @@ static int __init armv8_pmu_driver_init(void)
 device_initcall(armv8_pmu_driver_init)
 
 void arch_perf_update_userpage(struct perf_event *event,
-			       struct perf_event_mmap_page *userpg, u64 now)
+			       struct perf_event_mmap_page *userpg,
+			       u64 __maybe_unused now)
 {
 	u32 freq;
 	u32 shift;
+	u64 offset;
 
 	/*
 	 * Internal timekeeping for enabled/running/stopped times
@@ -1188,5 +1190,7 @@ void arch_perf_update_userpage(struct perf_event *event,
 		userpg->time_mult >>= 1;
 	}
 	userpg->time_shift = (u16)shift;
-	userpg->time_offset = -now;
+
+	offset = arch_timer_get_epoch_offset();
+	userpg->time_offset = -offset;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
