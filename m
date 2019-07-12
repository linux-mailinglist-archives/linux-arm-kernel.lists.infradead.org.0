Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE7B66660
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 07:37:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Rb948h2ch+H9+nXYB8ck1K3XRYg9SnKSxG04wR7YYA=; b=r14AqxkmMtk02Y
	vesc9aHlzfezbbxKJ+6GfAITiHEv5va1AUyftFRdS7dPTcn/UVHLwU89RspPAmvw5EsUoY8qZcYAc
	tDraWjqTxctiyUQUGXU80CwyT89AwiLCdMhtdAjYfNYkufOhEwbp0MOgiBS/xNH2F+fDJJf+1WsE2
	HBL/AWS9TCaQjT2QQ1VrF0y8nHrNxcnEgZcHyOJyxVTPSzs/ezY/CgJ0xEWHMcWuAJ4PXpyMP9kT4
	1BrQddgf1QILf3nNKphnL3oUXUJ4VRnUFJG6rEfCBV//5BGbhEiPJjbarC1/x4+ZZmMBMHs9iOOJx
	mIXjHTSIJfSijWYlihQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hloFR-0007KP-MY; Fri, 12 Jul 2019 05:37:33 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlo7t-0000oP-FC
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 05:29:47 +0000
Received: by mail-pg1-x543.google.com with SMTP id w10so4000313pgj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 22:29:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dewjZZw0HbdCyicLrnA8hjXb53SKvhtBESHu+qhlc+Y=;
 b=RraxYDI8rY3l8FCEiAHhEo/jF2VRtW7EBwuN6QgOaJIetId+svx39XqypWhLfmUrTT
 lTIXBkKHpJceOZybH0cw3Eb3/RF9TuEyx/WZjJXkcrZ9j3BqvInbX96hRhyfSGAwmXIS
 Q2Pvdeop95+IxxRgIsz7iUyv2FNy4qu/Mw9SNHC8/Ru1wH11OhpzxbHfqyCEwQH2p0ou
 Eg/FVPW33VEGUjG8VhkxeyfPzNcYZ1sj8w4zti03EN7k1EKz1tYHqBVhPFrXt+G1mRQR
 3411PQD6zmrFhxAX+x0cFlNSCABaWrV9JQR9E+nAoRhxVTKPs7BYN6DE+ed9FfE+DY+4
 FYlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dewjZZw0HbdCyicLrnA8hjXb53SKvhtBESHu+qhlc+Y=;
 b=fjA5LMJWw+p85jrasLW14GlUW/p4d/sIlY86oheQPEDGKqOQgTaZuNkaJ+zBEfASLt
 sVPqC3LSU54UIm6jkTBnjlwfkd+OGRDszykuY2Rp20JIqjYGS79g92MIubOP1muT+tA+
 DpahoouJgS6TugdK0xko2UJuYuwjSKcDkVkQbeKq2KCkzHKXuHyJgZ1TrOpQslGJsz8g
 kAAJ2orrn2k+r7lWZMn5QFv6cqveOKBBt/9X+udHWrNbGVn+pQxm0vlRWGpqLHtL+Jy0
 r5Q1FNhHgck2cojOD82dm71BamtSzTbwKMAK3Mu1YKCBfLqlopIY6+OF8KkKRSVzkOtX
 nypQ==
X-Gm-Message-State: APjAAAVigibBLNYL1qnt8kai/LX8RWQxJlUMLUjBZG9EqC+Z4kI/rVx8
 L1cN74w9rCeZEkbUCRxY8BKS5A==
X-Google-Smtp-Source: APXvYqyMo3XAs9GwgMxTcl9YI3nCgf+EBRCPRE5Oaum2NkKdQ5PH1OGrvSHfZOy0sp2jXh2nNhaCHA==
X-Received: by 2002:a63:6507:: with SMTP id z7mr8252553pgb.186.1562909384890; 
 Thu, 11 Jul 2019 22:29:44 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id o130sm12919010pfg.171.2019.07.11.22.29.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 22:29:44 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org,
	Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 V2 17/43] arm64: errata: Calling enable functions for CPU
 errata too
Date: Fri, 12 Jul 2019 10:58:05 +0530
Message-Id: <1916064968526bf98d502a4f286c951db52eef80.1562908075.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1562908074.git.viresh.kumar@linaro.org>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_222945_593382_99619AD1 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

From: Andre Przywara <andre.przywara@arm.com>

commit 8e2318521bf5837dae093413f81292b59d49d030 upstream.

Currently we call the (optional) enable function for CPU _features_
only. As CPU _errata_ descriptions share the same data structure and
having an enable function is useful for errata as well (for instance
to set bits in SCTLR), lets call it when enumerating erratas too.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/include/asm/cpufeature.h | 2 ++
 arch/arm64/kernel/cpu_errata.c      | 5 +++++
 arch/arm64/kernel/cpufeature.c      | 3 ++-
 3 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
index dd1aab8e52aa..0267bab6ac18 100644
--- a/arch/arm64/include/asm/cpufeature.h
+++ b/arch/arm64/include/asm/cpufeature.h
@@ -171,7 +171,9 @@ void __init setup_cpu_features(void);
 
 void update_cpu_capabilities(const struct arm64_cpu_capabilities *caps,
 			    const char *info);
+void enable_cpu_capabilities(const struct arm64_cpu_capabilities *caps);
 void check_local_cpu_errata(void);
+void __init enable_errata_workarounds(void);
 
 void verify_local_cpu_errata(void);
 
diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index a3567881c01b..d9f095439011 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -140,3 +140,8 @@ void check_local_cpu_errata(void)
 {
 	update_cpu_capabilities(arm64_errata, "enabling workaround for");
 }
+
+void __init enable_errata_workarounds(void)
+{
+	enable_cpu_capabilities(arm64_errata);
+}
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 9a4b638b1c18..7773bea6927e 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -820,7 +820,7 @@ void update_cpu_capabilities(const struct arm64_cpu_capabilities *caps,
  * Run through the enabled capabilities and enable() it on all active
  * CPUs
  */
-static void enable_cpu_capabilities(const struct arm64_cpu_capabilities *caps)
+void enable_cpu_capabilities(const struct arm64_cpu_capabilities *caps)
 {
 	int i;
 
@@ -923,6 +923,7 @@ void __init setup_cpu_features(void)
 
 	/* Set the CPU feature capabilies */
 	setup_feature_capabilities();
+	enable_errata_workarounds();
 	setup_cpu_hwcaps();
 
 	/* Advertise that we have computed the system capabilities */
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
