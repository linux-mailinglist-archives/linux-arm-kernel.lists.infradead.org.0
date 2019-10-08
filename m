Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B25D2CFDF3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 17:43:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+zc9exYzRBhLWWY8P7rNFyB4pKgzRTFimjLSyqFMRzQ=; b=IL8g43+zpswSVk
	FQ3phfDh+eXEDep/JZZ+/KhD8LKBPrlaMPyLkd0rEe5n4aqAMYBG9kvkJah3gs2Ic41eH+bR5vuBx
	GmkwrrMJTv/K6KBkb2WGYJGlTModE38nECZbwN/dqFXqNBlb1AeBI+cZJu1v+X4oZO6zb0u0zT5N2
	csiH1f4WP2/0KbxwgL/dCvs7zdoS74WsJojj8YKa5LdUheG0oRrteoZe/nzdGPzrRQH2cV8cIcn8L
	Z73HtF65jT/Ku524Xs0bbjkgQGLn4ClA+4SCPIGzHmrjTeO8xXZys106tKL9vZHOnfxMxanwJv5O1
	X7PT/wd7F8dUOGcW4c0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHreA-000177-J2; Tue, 08 Oct 2019 15:43:34 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHrb9-00072R-UE
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 15:40:29 +0000
Received: by mail-wr1-x441.google.com with SMTP id r3so19999817wrj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 08:40:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xVW9YVfjij9vCoDvPQUdIJ4SaHECQBvveZX1DwTyL70=;
 b=CkH3V+Bg52IIiejwB7MJHrut8r0ZNm/pGILs03lNlE/a/HfmcdZspkl0VlLvPve04Z
 rFjR4bEabYl6kAu3KdPXO3SMd9wGbj8wnvGhpicK2sxxyu0cBi5Wcr9QFs2uaRmx5Gtn
 /Xu+1Le5EZmEZIrb80P3rhiAB+73kHsnCsfrO5wJQmfpe/WxaLxFz4gm94RwlGCjQkfL
 yhPCi2wQtSHA0uQ3UXcJyHASuZv8P4mnAb5DNXSKLaNRCohQFf4uCWKrul1znbjNqjQF
 lTjEK5b1HzS52S2OuNQJOUGgw87xRKyuZ7R7IxwixKcUg42UQgG/F1ZpXwARnPKkrqbj
 XU2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xVW9YVfjij9vCoDvPQUdIJ4SaHECQBvveZX1DwTyL70=;
 b=j5bUO82IuNkiVhIuhvUIcE8A1CZav3J99l3L0P83ggkLkiOEHrvmqQV76kJbWChTVP
 DzNBLJ/JrxinVQaFsQHgdm01ERMfS18nxAgiqsGZH/fqso1yj2ROopX5R4Jf7OQikMnR
 KxP+3k77Uoff9McRBWaj7H5ntdmXQD87CiqsJPh1/eTSSiMgZDFYQEDdsacV6RUEOfUC
 z9ZTOGK7+SFoR2f/BcMOm7IJJduyudt10+oPI+tDP6DQ58UJNvEyI9k7hZNchKq9AAEj
 T9/ynC0vX/ArvfS5DW+ScMuqyHCDYH7kxRF9vRGsZs6xQPLSc+47fFRxdVr4FDi9nBFz
 EINA==
X-Gm-Message-State: APjAAAVds6zXie0pMemMNB2LoaTFlDqk2jhrA3NRR3Bd8FR0y4EJ5Niu
 kW64pGn8uLPpZQVNe66aZWlL+os0nLQPdA==
X-Google-Smtp-Source: APXvYqxY7FvHpXzJq5ystEi0wfi4ZtwP/LXHDf5gXkYHV+IYHsw8WJxXWk2V+v3Auzj4gvXkzeFLjg==
X-Received: by 2002:a5d:4043:: with SMTP id w3mr28849130wrp.318.1570549226179; 
 Tue, 08 Oct 2019 08:40:26 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-657-1-83-120.w92-154.abo.wanadoo.fr. [92.154.90.120])
 by smtp.gmail.com with ESMTPSA id x16sm16784723wrl.32.2019.10.08.08.40.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 08:40:25 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH for-stable-v4.19 13/16] arm64: add sysfs vulnerability show
 for spectre-v2
Date: Tue,  8 Oct 2019 17:39:27 +0200
Message-Id: <20191008153930.15386-14-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191008153930.15386-1-ard.biesheuvel@linaro.org>
References: <20191008153930.15386-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_084028_091487_F930EEE5 
X-CRM114-Status: GOOD (  14.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Andre Przywara <andre.przywara@arm.com>, Will Deacon <will.deacon@arm.com>,
 Jeremy Linton <jeremy.linton@arm.com>, stable@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jeremy Linton <jeremy.linton@arm.com>

[ Upstream commit d2532e27b5638bb2e2dd52b80b7ea2ec65135377 ]

Track whether all the cores in the machine are vulnerable to Spectre-v2,
and whether all the vulnerable cores have been mitigated. We then expose
this information to userspace via sysfs.

Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
Reviewed-by: Andre Przywara <andre.przywara@arm.com>
Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
Tested-by: Stefan Wahren <stefan.wahren@i2se.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 arch/arm64/kernel/cpu_errata.c | 27 +++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index 96b0319dd0d6..b29d0b3b18b2 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -480,6 +480,10 @@ has_cortex_a76_erratum_1463225(const struct arm64_cpu_capabilities *entry,
 	.type = ARM64_CPUCAP_LOCAL_CPU_ERRATUM,			\
 	CAP_MIDR_RANGE_LIST(midr_list)
 
+/* Track overall mitigation state. We are only mitigated if all cores are ok */
+static bool __hardenbp_enab = true;
+static bool __spectrev2_safe = true;
+
 /*
  * Generic helper for handling capabilties with multiple (match,enable) pairs
  * of call backs, sharing the same capability bit.
@@ -522,6 +526,10 @@ static const struct midr_range spectre_v2_safe_list[] = {
 	{ /* sentinel */ }
 };
 
+/*
+ * Track overall bp hardening for all heterogeneous cores in the machine.
+ * We are only considered "safe" if all booted cores are known safe.
+ */
 static bool __maybe_unused
 check_branch_predictor(const struct arm64_cpu_capabilities *entry, int scope)
 {
@@ -543,6 +551,8 @@ check_branch_predictor(const struct arm64_cpu_capabilities *entry, int scope)
 	if (!need_wa)
 		return false;
 
+	__spectrev2_safe = false;
+
 	if (!IS_ENABLED(CONFIG_HARDEN_BRANCH_PREDICTOR)) {
 		pr_warn_once("spectrev2 mitigation disabled by kernel configuration\n");
 		__hardenbp_enab = false;
@@ -552,11 +562,14 @@ check_branch_predictor(const struct arm64_cpu_capabilities *entry, int scope)
 	/* forced off */
 	if (__nospectre_v2) {
 		pr_info_once("spectrev2 mitigation disabled by command line option\n");
+		__hardenbp_enab = false;
 		return false;
 	}
 
-	if (need_wa < 0)
+	if (need_wa < 0) {
 		pr_warn_once("ARM_SMCCC_ARCH_WORKAROUND_1 missing from firmware\n");
+		__hardenbp_enab = false;
+	}
 
 	return (need_wa > 0);
 }
@@ -753,3 +766,15 @@ ssize_t cpu_show_spectre_v1(struct device *dev, struct device_attribute *attr,
 {
 	return sprintf(buf, "Mitigation: __user pointer sanitization\n");
 }
+
+ssize_t cpu_show_spectre_v2(struct device *dev, struct device_attribute *attr,
+		char *buf)
+{
+	if (__spectrev2_safe)
+		return sprintf(buf, "Not affected\n");
+
+	if (__hardenbp_enab)
+		return sprintf(buf, "Mitigation: Branch predictor hardening\n");
+
+	return sprintf(buf, "Vulnerable\n");
+}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
