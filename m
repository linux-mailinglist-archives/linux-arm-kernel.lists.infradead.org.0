Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDBC618CA7F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 10:36:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=TjIiW0xo/Dx4CmuWX27AXkGd11NlOyQ/Ucd2CFrXzEs=; b=g0z
	qk1OcWHAMcceSFOU2zQhgOsZ7SyHgeMdAXsmPGwnGP9OvaUV3JUkbeSWdvjljkGmmszFsva+hqD0g
	/LzaqJCqIUP87oVeu19iGZkEonXdkn86bTDQ995bB9clWdQQkEDbcdbTLEN/tITdNtIZ1zqpeskTF
	QXBgHra/AXIxGshbvSOJ+kH3alv1a9UIuRPr+4s0RxcLGFJvonQioL0Hj7243UzAdecGrSgO64aIn
	9XEQ53qjV0vMnmMseZci0G2qDXqACfYuktW50E7mjhkRPKejTJHj4+omvXpiX+7AW3V/ZdCbijneD
	c8VzFiPvbhqjf7FLbsgn/6IgROVhriQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFE4v-00044O-TE; Fri, 20 Mar 2020 09:36:33 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFE4m-00043u-5W
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 09:36:25 +0000
Received: by mail-pf1-x444.google.com with SMTP id f206so2936581pfa.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Mar 2020 02:36:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=6OV3MJtnwHmBj9IvKnU2jj48Eg9Ml8gSZFTsDf/nk+o=;
 b=WMiqKpovon8ayUXjyLEzv+OwMEUBJuBJ9hMuktNFhY48Izr1idFbw/MfFmkPOhcj+v
 9xrTbQVEe8K8ivSs5OdJjDBT0a6OKM6QijTie2/86RINbmZPPsZVfOSqmleNzQinxJYM
 doma38WDeC+P0oQdXIaTsD73zWM3+4WL1V616nq8+Uylhqt+oIO/mU5AgZkvm1/6VOsL
 NPLWitsRMMhYzSR1scFRab3D3WAYBssMMfcVEaIkExqRk+W+pDWTb4aE0qGpAbam0yHx
 QFGz7DKIgtXlWY5ysY8OoqQqp95tCHEO7MfsI8+vV8eRzJEahvt40VrH0lAjvloN2rgR
 +caQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=6OV3MJtnwHmBj9IvKnU2jj48Eg9Ml8gSZFTsDf/nk+o=;
 b=PePUFDzorHavY02J+HKqaDKC6Z2HWVL2pS9AvFJKxNm0g7CNOZzLD2WW/rZy9jhqEL
 jJeW+mfuTq3KmZqNCmHBohnKxBpi+5Fbf5Sb9IxDkebZHGRClPkXkgAUaSTHFrNz+3cn
 dL6ysm67farV5bdbdghg5vCoS0gs+WDZfdrNPYuBjhb+FSf5CmdR52OsIxORH6BXAULQ
 LVJ6NopxqkJEsfJ4Vlj5it5uM92rL5ySu5MONRXtdkb65Lfm39eKnI8Pa7GqX7Q6yOiG
 uTMObHncLAFPS8EWh+g2kGvbUc3o0bNWskJqTzcTRphEfovXjUBYvC0OxoUGw63qNsaP
 i6xg==
X-Gm-Message-State: ANhLgQ3vnWazm3F00q456a9XGizTQFFucLDyw6/TRCmtTi64UItSKt84
 yNC9Frb8E17o9fJYzVFYVaVAmg==
X-Google-Smtp-Source: ADFU+vu96g4sr+58Bfq6iUmA7kCu4qTiGLNvmkhrbuyuayATxiGwtwonY7BFIsC+CTiPCHCvDNHBhQ==
X-Received: by 2002:a63:68a:: with SMTP id 132mr7844539pgg.12.1584696982648;
 Fri, 20 Mar 2020 02:36:22 -0700 (PDT)
Received: from localhost ([2400:8904::f03c:91ff:fe8a:bbe4])
 by smtp.gmail.com with ESMTPSA id g11sm4868415pfm.4.2020.03.20.02.36.20
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 20 Mar 2020 02:36:22 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Mike Leach <mike.leach@linaro.org>, Al Grant <Al.Grant@arm.com>,
 James Clark <James.Clark@arm.com>
Subject: [PATCH] arm64: perf_event: Fix time_offset for arch timer
Date: Fri, 20 Mar 2020 17:35:45 +0800
Message-Id: <20200320093545.28227-1-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_023624_222157_D6BFADFA 
X-CRM114-Status: GOOD (  14.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Between the system powering on and kernel's sched clock registration,
the arch timer usually has been enabled at the early time and its
counter is incremented during the period of the booting up.  Thus the
arch timer's counter is not completely accounted into the sched clock,
and has a delta between the arch timer's counter and sched clock.  This
delta value should be stored into userpg->time_offset, which later can
be retrieved by Perf tool in the user space for sample timestamp
calculation.

Now userpg->time_offset is assigned to the negative sched clock with
'-now', this value cannot reflect the delta between arch timer's counter
and sched clock, so Perf cannot use it to calculate the sample time.

To fix this issue, this patch calculate the delta between the arch
timer's and sched clock and assign the delta to userpg->time_offset.
The detailed steps are firstly to convert counter to nanoseconds 'ns',
then the offset is calculated as 'now' minus 'ns'.

        |<------------------- 'ns' ---------------------->|
                                |<-------- 'now' -------->|
        |<---- time_offset ---->|
        |-----------------------|-------------------------|
        ^                       ^                         ^
  Power on system     sched clock registration      Perf starts

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 arch/arm64/kernel/perf_event.c | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
index e40b65645c86..226d25d77072 100644
--- a/arch/arm64/kernel/perf_event.c
+++ b/arch/arm64/kernel/perf_event.c
@@ -1143,6 +1143,7 @@ void arch_perf_update_userpage(struct perf_event *event,
 {
 	u32 freq;
 	u32 shift;
+	u64 count, ns, quot, rem;
 
 	/*
 	 * Internal timekeeping for enabled/running/stopped times
@@ -1164,5 +1165,21 @@ void arch_perf_update_userpage(struct perf_event *event,
 		userpg->time_mult >>= 1;
 	}
 	userpg->time_shift = (u16)shift;
-	userpg->time_offset = -now;
+
+	/*
+	 * Since arch timer is enabled ealier than sched clock registration,
+	 * compuate the delta (in nanosecond unit) between the arch timer
+	 * counter and sched clock, assign the delta to time_offset and
+	 * perf tool can use it for timestamp calculation.
+	 *
+	 * The formula for conversion arch timer cycle to ns is:
+	 *   quot = (cyc >> time_shift);
+	 *   rem  = cyc & ((1 << time_shift) - 1);
+	 *   ns   = quot * time_mult + ((rem * time_mult) >> time_shift);
+	 */
+	count = arch_timer_read_counter();
+	quot = count >> shift;
+	rem = count & ((1 << shift) - 1);
+	ns = quot * userpg->time_mult + ((rem * userpg->time_mult) >> shift);
+	userpg->time_offset = now - ns;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
