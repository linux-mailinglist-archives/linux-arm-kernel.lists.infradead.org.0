Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B147452B8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:21:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q9Rk73Kon5lXCfq74/aKT62c7D8QFQ0UCrFGAKna/NE=; b=n/feId4KIe3C/I
	oDU/yx0+jWkBEzZJP1jGNxH2fvtpOg38fkEU3zxFwbJLj1tlNciExbiFOHAXPULXHSxwBbm2Mwwfo
	iMvk8eiM6imy+NjGWZUx76Gv6MM+SPTBJkS6HKKMfw7bgwEVVjalkqMnUg1hKAely88Fp988l9HR+
	O/lkSciPG3kRYKCktEPDqN8fx6bcbVm1ejZmiREoYu9RqYzYE7vRjG8cdP3UAw4l/WX3RWenEVHCM
	SW62j5cbRkA+znLeV7VN+MVIkXXMGo0alLqsyW/jbwm75/Aw1xMZHBi3nR2/wrB1jWsTCfy/gH1+I
	X/h6hvqQFnjjZFfFRXVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbclz-0001Kd-ML; Fri, 14 Jun 2019 03:21:03 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbceB-0000gV-Hw
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 03:13:03 +0000
Received: by mail-pg1-x543.google.com with SMTP id f21so682951pgi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:12:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=y7D7di+hWLJT4S7T0euG3Tl4lwmsE/s4d/bbuco5Z4Y=;
 b=tn9ttUjCo/EPvIMutHSe21ptFw26CO8lMLTifKPIv38gL7+JQt+HP8TJghUQmKKFpp
 ZpLfHPaBsCa8fyB29TufhWsnLm1JxOkQqGXQjeEfNqHl3WjYf9Hi3tk2zMM/90BPaJCv
 PK4MM1eqbM5VvFktAiQ4S8uIcW3nVE8Sb0TcB9CJLZ+2C9LNRmiSvf4Gcy/TutPKIDJO
 6oRlTUHT+FdhBjMC+pgPt/ZadHh8hc8RVYcm5dPXTdWWLOaiaxFcRx7YhawcoLH7lJEs
 Z1PptH6hyBln/IZcxEGZcPwBuo4jSo3oywpV2aRUTn9Gn40jGiSFEryl9gCr02qIa/Ut
 I4ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=y7D7di+hWLJT4S7T0euG3Tl4lwmsE/s4d/bbuco5Z4Y=;
 b=tmCejZmMFKrRn4SpXiDlAtPeIIR+RVTfP48zCFv6pNik6D2SJnznM8XBRgZdBF2QDe
 Ng2L4s/npj1pGioge2bsZlj34SQWTHQsNx3sMStVwwnWvL1e/Hts9s1njHX+81R+r5n7
 uZ5AmcwHV4q3VpUllZSlA9EHNoFPu9GxjFdti0uN8dK07SPh621uyo9EkJmx4Rze5UeU
 KCU7Q8+AcRUhUvvYalAOX8SJSkUVadlIGML98Cghk/hubcB363lZrFfq+trSHgt7TvCs
 XaijkDPRJkNMu6M4qi3fzV5cjEebMCn09cqtLlnNVqWVcAh1/mOltECsCeiLuB0I03uO
 sHPA==
X-Gm-Message-State: APjAAAXoQ1OWBYOMTyq58nEJAB5FVk+yHw8um8e9we8MIVCJpEJSO9l4
 DAwsCa9AqddVtdSl/3+DGXXW4plVjMg=
X-Google-Smtp-Source: APXvYqy1XoUqM5zu1PsPirXi5eV1NLgcorVG8nNQhT9EvyDCcgAzjv4/LVlEZkfFxuFNSqYr80p4Ew==
X-Received: by 2002:a63:140c:: with SMTP id u12mr33588467pgl.378.1560481978109; 
 Thu, 13 Jun 2019 20:12:58 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id g5sm1064300pjt.14.2019.06.13.20.12.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 20:12:57 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
 Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 24/45] arm64: cpu_errata: Allow an erratum to be match
 for all revisions of a core
Date: Fri, 14 Jun 2019 08:38:07 +0530
Message-Id: <1b836bac823d576986a9e893e2d2509776ff3565.1560480942.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1560480942.git.viresh.kumar@linaro.org>
References: <cover.1560480942.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_201259_634460_7161F5F4 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Will Deacon <will.deacon@arm.com>,
 stable@vger.kernel.org, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marc Zyngier <marc.zyngier@arm.com>

commit 06f1494f837da8997d670a1ba87add7963b08922 upstream.

Some minor erratum may not be fixed in further revisions of a core,
leading to a situation where the workaround needs to be updated each
time an updated core is released.

Introduce a MIDR_ALL_VERSIONS match helper that will work for all
versions of that MIDR, once and for all.

Acked-by: Thomas Gleixner <tglx@linutronix.de>
Acked-by: Mark Rutland <mark.rutland@arm.com>
Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/kernel/cpu_errata.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index 6c5e9e462629..c05135cd53fe 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -124,6 +124,13 @@ static void  install_bp_hardening_cb(const struct arm64_cpu_capabilities *entry,
 	.midr_range_min = min, \
 	.midr_range_max = max
 
+#define MIDR_ALL_VERSIONS(model) \
+	.def_scope = SCOPE_LOCAL_CPU, \
+	.matches = is_affected_midr_range, \
+	.midr_model = model, \
+	.midr_range_min = 0, \
+	.midr_range_max = (MIDR_VARIANT_MASK | MIDR_REVISION_MASK)
+
 const struct arm64_cpu_capabilities arm64_errata[] = {
 #if	defined(CONFIG_ARM64_ERRATUM_826319) || \
 	defined(CONFIG_ARM64_ERRATUM_827319) || \
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
