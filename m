Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C3866665F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 07:37:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D7NFC9Ca9GatUEXvrfqbzQoYo+1NwZc+qWDO4h76LAI=; b=BYQFCJd2O6LjVJ
	1nz/3j3cdn5S0c1tpmNsDpT8KMO4XdbjzP5l9i+HQpWZOMq9QZY/OXr1PofLShb2LRuvyWRCvY0+B
	nVkAokWS3wu94LBWEC1aTSoIqLIwhugAHWB5JBovKURI3g4+LkBedmQuy+nEYWVtPIMvAkjsG0lho
	1WYlMk8GTooJyla/hsKmkiTHcdB2VZ50E7aVp2I9W5Mp7TJh/OZoIfNGUkr6G1WZkr4UBumXtKqJ3
	Qiz8sINELFZq6zXM5TdJ0vtnWq8taNb2yIf6x60estKLlfYCvFtbSPn7EYNvfBKtfQbiEMhV736Zz
	BYTLAn0YscDGIYye96Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hloF6-00075u-Q4; Fri, 12 Jul 2019 05:37:13 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlo7q-0000lH-VZ
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 05:29:44 +0000
Received: by mail-pf1-x444.google.com with SMTP id y15so3795568pfn.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 22:29:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NiMpS2GtyMwnZTpxG4MhAWhnIU6AXgssIk4MKZtthvc=;
 b=ZxWyb/8VZoLdoUn2uKUudf3sdZhjRD6a7pJM14TVwK7g/vHOIHZfykI1dtfLhHIfYn
 3cSWJiC6CWJC6W1uMbsdf6OYsFlIxC64jvs4VHLK9L5lIWKJ8/JQAM/NV7qhXlQP4aMQ
 YY6r4gKLHQwZzJBywyvMiJPxbDmJ5WJF1z+CF5F8cyZRRtgISkKLkQ7pTx4QGi8Q9r/4
 zas1OTYOclfwi531Lep+sfcTpCDvGycbUzp1Id0F1FOMJWc6d1ZrGlWDS8k9FXU1Rqvu
 rdQqv2AtNzI9gcxIvkDftOsnSlr139CUY3GegXmenTrJ9g96NbW2QGGTmBARNxkXD9my
 jzag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NiMpS2GtyMwnZTpxG4MhAWhnIU6AXgssIk4MKZtthvc=;
 b=EVSv8iRZwc7Ql5fz5j0j73iivdLroMirYUQbCWm91ohcYHyLBxjOaMCKLOjZA13aeM
 WoKIWX6vNb5tZJwJ8nMmoaxVKxo0ml6BuO6qcAHV7jxd9Ny2i8WUq4ZCHsRRoi245xhe
 ztmgRfES26bR97zBLIStBrYMmYmD4UPmmqpfRb/m/+VBeq7kmz1Zp5ES/5vY1KZPyoFH
 lZysuo4mcRsaeTXlYummcN5Y5IGTvCU66rlqXU/o0rOiTRVRg2mLop20Uj/nmKONKvCS
 Kff2eGBXb0/8D50nUWjMm8OLcUciywLoQpzci/B6zVFUwxtxbi4Hl/jUrAeRL9vCCb+v
 o29w==
X-Gm-Message-State: APjAAAVIS3rG/T2amWDfPNF6TvAGANWZ/TRN6cXYar88xOhLQUZzjaO2
 mJ671nGXZwwfKo8BVoI6/fuKqQ==
X-Google-Smtp-Source: APXvYqx/Tk4AViCSWTjUMRe/TZvkHhLkrEkE3+RlS2ORyipfV5gjtHSPq5lheadSb5cU+/DklVHmmA==
X-Received: by 2002:a63:4185:: with SMTP id o127mr8346896pga.82.1562909382331; 
 Thu, 11 Jul 2019 22:29:42 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id r13sm8444561pfr.25.2019.07.11.22.29.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 22:29:41 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org,
	Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 V2 16/43] arm64: Verify CPU errata work arounds on
 hotplugged CPU
Date: Fri, 12 Jul 2019 10:58:04 +0530
Message-Id: <69ba9cb57c88ef7c15651a3f474a209dabe9d89b.1562908075.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1562908074.git.viresh.kumar@linaro.org>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_222943_093881_9E54B9DE 
X-CRM114-Status: GOOD (  14.16  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
 mark.brown@arm.com, Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Suzuki K Poulose <suzuki.poulose@arm.com>

commit 6a6efbb45b7d95c84840010095367eb06a64f342 upstream.

CPU Errata work arounds are detected and applied to the
kernel code at boot time and the data is then freed up.
If a new hotplugged CPU requires a work around which
was not applied at boot time, there is nothing we can
do but simply fail the booting.

Cc: Will Deacon <will.deacon@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Andre Przywara <andre.przywara@arm.com>
Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
[ Viresh: Resolved rebase conflict ]
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/include/asm/cpufeature.h |  2 ++
 arch/arm64/kernel/cpu_errata.c      | 20 ++++++++++++++++++++
 arch/arm64/kernel/cpufeature.c      |  2 ++
 3 files changed, 24 insertions(+)

diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
index 4c31e14c0f0e..dd1aab8e52aa 100644
--- a/arch/arm64/include/asm/cpufeature.h
+++ b/arch/arm64/include/asm/cpufeature.h
@@ -173,6 +173,8 @@ void update_cpu_capabilities(const struct arm64_cpu_capabilities *caps,
 			    const char *info);
 void check_local_cpu_errata(void);
 
+void verify_local_cpu_errata(void);
+
 #ifdef CONFIG_HOTPLUG_CPU
 void verify_local_cpu_capabilities(void);
 #else
diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index 0971d80d3623..a3567881c01b 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -116,6 +116,26 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
 	}
 };
 
+/*
+ * The CPU Errata work arounds are detected and applied at boot time
+ * and the related information is freed soon after. If the new CPU requires
+ * an errata not detected at boot, fail this CPU.
+ */
+void verify_local_cpu_errata(void)
+{
+	const struct arm64_cpu_capabilities *caps = arm64_errata;
+
+	for (; caps->matches; caps++)
+		if (!cpus_have_cap(caps->capability) &&
+			caps->matches(caps, SCOPE_LOCAL_CPU)) {
+			pr_crit("CPU%d: Requires work around for %s, not detected"
+					" at boot time\n",
+				smp_processor_id(),
+				caps->desc ? : "an erratum");
+			cpu_die_early();
+		}
+}
+
 void check_local_cpu_errata(void)
 {
 	update_cpu_capabilities(arm64_errata, "enabling workaround for");
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index a0273cd8be51..9a4b638b1c18 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -872,6 +872,8 @@ void verify_local_cpu_capabilities(void)
 	if (!sys_caps_initialised)
 		return;
 
+	verify_local_cpu_errata();
+
 	caps = arm64_features;
 	for (i = 0; caps[i].matches; i++) {
 		if (!cpus_have_cap(caps[i].capability) || !caps[i].sys_reg)
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
