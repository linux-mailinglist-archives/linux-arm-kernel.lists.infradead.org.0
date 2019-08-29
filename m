Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94685A190F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:40:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D7NFC9Ca9GatUEXvrfqbzQoYo+1NwZc+qWDO4h76LAI=; b=rhMdERRfFiBY/E
	YZPzY3rzwQXCJF3Jl6QOI2gjxMobMyn67Dp22RKW92+lz5tIrLQ22WKz1wUjTBOZa8RPzH+w0/AfL
	XbJIHnh4KEsC2tz19cQT0RPnp9egX9ITXHWE+6d+nWyKm76oKA6k8Smjb/2XWI4zo9q6sYnQFbfds
	er2CyWBuIEfhEV6tvQvavpMSgrti3un7iVh4GB5EbauDj9cFv5T0ZbAEj/AxzP0fwRXMtnY3+fImd
	dpMxCyC9DD8MkaLnFszfjIRNnlUMgkLjr+pfzjp6t69tBE4fdhwpj0w++fKV7aCBozuRoCyQgUnm2
	3yd6Xl9UYWaW3SNWgTPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3In7-000344-GJ; Thu, 29 Aug 2019 11:40:37 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3IiJ-0006UW-EA
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:35:41 +0000
Received: by mail-pg1-x543.google.com with SMTP id n4so1457598pgv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 04:35:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NiMpS2GtyMwnZTpxG4MhAWhnIU6AXgssIk4MKZtthvc=;
 b=DkQ5KEtwOugRSGpIbnGMVx5+YOPlvoYR36xfUhOaGYeT/642RhAsocGr8Th/WUdMoN
 pbfbTIupvPLeeF4eKA0gaKKiNUTTfiqhng3jRi2/mesaUlM8FfUJy60fPPQpbrvOa6dx
 tMRZdPSiZ1j0Xc/nULVnSBaO1iH6JZhw197vA46m/frrCrXLwCMMvtlqnZ3xqBMQiu+S
 5ZbtLepugDfLjhmtjtIRmPSyk/oggkBM3WYWa5xzYdmHf2jZKc5EfOkbVQZxFz9r4UEs
 ZgeJdVjak8guvMbbkgganKHwSDHdDfxiubAwJ2M3zedEYn+hdITSrp3gZWc61k6TEcuK
 sw2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NiMpS2GtyMwnZTpxG4MhAWhnIU6AXgssIk4MKZtthvc=;
 b=ONyHz4sd5UMKj47L/JDlb9XIgVfOFG/+TkoI69ee/Ce0uZLdama0cPHY+JiZf8Jn4X
 jU5OSQHrSdloKw21Mzu8056Q7w2Br86mM6B6eCaR/fIE4IivIP48SOQuAbpotc0jSqoT
 cBsKBVWS6TetQg89Ge+yKJuSCCXpZISno5/9lekSdPd7mr2dLHs9Uf8ngweC6SgKon9d
 zIlrapQyq6iAs95teTrxRa0Oj4Ebi9k/LWJJ3DCHvG6a7o+OkSLl4zuwlkIr5Co78yvf
 qBaEyHy+gzlIKwlzgEawt8qTipLInYWePiIZ6lqmz012rXIHMQUqZYjL3SRSkNsIWCHG
 jRNA==
X-Gm-Message-State: APjAAAWBIQMcU/POL34JMrHv7uwZ2zCkz/B4+nPeKC2Ci8PxzuFg2gW3
 ouDpJiACL/9C0jG5esojtoXqnw==
X-Google-Smtp-Source: APXvYqwmURVSuLg/ase0fyn7iRT7UmlDDNv+cMigrGIzWasm1pmN7jVx9NKSdlN1Ted+/DI99yu6xg==
X-Received: by 2002:a63:d23:: with SMTP id c35mr7876121pgl.376.1567078538027; 
 Thu, 29 Aug 2019 04:35:38 -0700 (PDT)
Received: from localhost ([122.167.132.221])
 by smtp.gmail.com with ESMTPSA id e3sm2298962pjr.9.2019.08.29.04.35.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 04:35:36 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org, Julien Thierry <Julien.Thierry@arm.com>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH ARM64 v4.4 V3 17/44] arm64: Verify CPU errata work arounds on
 hotplugged CPU
Date: Thu, 29 Aug 2019 17:04:02 +0530
Message-Id: <97b4e62862a368bd9eb87df8f48f7b95368e2479.1567077734.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1567077734.git.viresh.kumar@linaro.org>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_043539_524638_F02F4F3C 
X-CRM114-Status: GOOD (  14.03  )
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
