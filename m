Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F293EA190B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:39:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MnN/UtbtyQ6vqtI0IApF4L2a+HoBnjqwxCzFraFlxPo=; b=qALg9FrH9O+LVz
	D1RBXK77MisqR71HTn5jNcL7McozlT/87gUEyIOG5qKysg70jxsut32zUv3A10pKZ/peNAFhyqva8
	JbQ3m0RgbDvasvMkOK/oYfjk2OW969pfgIsKz+Z1iKvojh05TLaLJzty0HB0Mb/9ONaUpWVT6NtDt
	OHYFd+NMt5gXxpvqTsXRwpt7ELL/7jzr3jzsmfXXFxuA/eMnlOgXvEGEfd05POFs/UY4uoItmfldt
	8qk2mGu5/6UzCVpzRaAErTnffbcwZDrd8MI3zw7pmtzZunoGvUxiaX2UY4xUF6BJ6ogh/+mPYJvOU
	LtvqkpEv4ASiw3wm7LYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3ImC-0001Ar-U6; Thu, 29 Aug 2019 11:39:41 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3IiC-0006Om-O5
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:35:34 +0000
Received: by mail-pf1-x443.google.com with SMTP id c81so1850948pfc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 04:35:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=O+J5pz+r7c0NpS1D8X6SYhx9QHuTsDp1UjRErYyLM4s=;
 b=oZTPTec0QCZyIdYWeoFDwwmLFP9g4lc0dbPQ/YV/Da2dsknHe6hU0UrVQ4lKyjcwHL
 ythaQ75viCx336XmpgjZGoZvhFyjdwlsqgHBHvQk9PBGbD8d4drBBMLFsOTWEUWhVV1T
 ad5FhTlYfhoP8xBkXaztzU1nDsDlDYbVbZ0uSEPlqF63pwu15tJl3IxJbzE6xsrg07M2
 mAqCLPLR5a5s5AxsLhfs2ki+B/4gTV8AqSfT1mlyNowc+oBuTifKnCT1XSZAaIFJeGAi
 oPFzIhprwBPwaEt8QRs226mpGYFBXaFhdXyv+O2ggl7op8bq3FLoQ5KncK3dPUrJgaP2
 IIHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=O+J5pz+r7c0NpS1D8X6SYhx9QHuTsDp1UjRErYyLM4s=;
 b=mIbF0BGIEcnjRoOBBBHtxBWaERArP2rv+b5ic/1F0gurmam1tj81V/Cbm7DKNR7n/N
 /TlbBnyB+A9ZwUcAOPiCWUmVB5bNrU0BjoNGfaq6y27kICbXwsIeDFy8s9qY5nV+seME
 TW4ko3lpuVPZBN/vu+F45v2/x4PifGH9YLZaZqOYc3Sm7s8gzqziFG3Q2cnWTleCjupo
 tYmVLJOU6Lb37Yvgv4KOyHoaSjSYOatQvT6St7C2D1R6NMnZAdpbJ7OHb1HwRTUnOTM1
 xgSQAyukJCP+f9HEKB2s7HfWfSgxBG718ar3SJdorqQjryNXbQkFojz2NIm5S9Wd2R/D
 LPHw==
X-Gm-Message-State: APjAAAUZyDf5mNkXkQSD+nMfC6kWfgWRpcmIH9RPDrFgxliKJFZRyDyd
 IjUW3VDoeM1aTHRxf1DIXoXhgQ==
X-Google-Smtp-Source: APXvYqx5cCyndVp1fjZUj19TweYqalLGObVrAA+gqWLeEFI9WssBPr4NWZ3xDid0ZnGQQ+4pZYKEWg==
X-Received: by 2002:a17:90a:77c9:: with SMTP id
 e9mr8828325pjs.141.1567078531812; 
 Thu, 29 Aug 2019 04:35:31 -0700 (PDT)
Received: from localhost ([122.167.132.221])
 by smtp.gmail.com with ESMTPSA id z16sm6800192pfr.136.2019.08.29.04.35.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 04:35:31 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org, Julien Thierry <Julien.Thierry@arm.com>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH ARM64 v4.4 V3 15/44] arm64: Add a helper for parking CPUs in a
 loop
Date: Thu, 29 Aug 2019 17:04:00 +0530
Message-Id: <a990b94f1fa5ec079a180d333e3d0005e2e7f5ed.1567077734.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1567077734.git.viresh.kumar@linaro.org>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_043533_063691_2AB97A3C 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

From: Suzuki K Poulose <suzuki.poulose@arm.com>

Commit c4bc34d20273db698c51951a1951dba0a722e162 upstream.

Adds a routine which can be used to park CPUs (spinning in kernel)
when they can't be killed.

Cc: Mark Rutland <mark.rutland@arm.com>
Acked-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/include/asm/smp.h   | 8 ++++++++
 arch/arm64/kernel/cpufeature.c | 5 +----
 2 files changed, 9 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/include/asm/smp.h b/arch/arm64/include/asm/smp.h
index d9c3d6a6100a..53b53a9b3e5a 100644
--- a/arch/arm64/include/asm/smp.h
+++ b/arch/arm64/include/asm/smp.h
@@ -69,4 +69,12 @@ extern int __cpu_disable(void);
 extern void __cpu_die(unsigned int cpu);
 extern void cpu_die(void);
 
+static inline void cpu_park_loop(void)
+{
+	for (;;) {
+		wfe();
+		wfi();
+	}
+}
+
 #endif /* ifndef __ASM_SMP_H */
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index b7f01bf47988..4adf18307568 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -868,10 +868,7 @@ void cpu_die_early(void)
 	/* Check if we can park ourselves */
 	if (cpu_ops[cpu] && cpu_ops[cpu]->cpu_die)
 		cpu_ops[cpu]->cpu_die(cpu);
-	asm(
-	"1:	wfe\n"
-	"	wfi\n"
-	"	b	1b");
+	cpu_park_loop();
 }
 
 /*
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
