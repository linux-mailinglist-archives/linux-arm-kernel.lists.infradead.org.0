Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8589CFDF2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 17:43:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tb3dQMea2nGPylHMFiDk6W4i615fhskuHct4N9OqowE=; b=TvvLgP4jQ7Gi3m
	dUssXqqvRIQZhsCl5smq2S1GMDmNkhvlblcJFfMqHyMTGGb0abvcDpbtJYdbNzYgKm8K9iof13HC5
	2S9XqmxUmR9HlKYsQtzWvmBwl/4946S30/olDC3p0xTCj51Jgr/VGnXgFE3u8d5Xo7v35fVIhMvqv
	uT/hClIMt+DA5XcTXYUaLvFgoVsgjdsMyOjeTlViyqW8rYZ3Xt21PGUqchNbpnWEjDx0Urqe4aV3e
	gR+mgSkOrvS/JKz3/dH3lCYx3v0jgPHXfraLrtxYeTu6yxuH6MjPtTDGdxvE1/lwjXRT7ROIUHV2+
	Zws9B33rW7f2g3xPEh4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHrdr-0000v4-Kf; Tue, 08 Oct 2019 15:43:15 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHrb5-0006yE-9i
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 15:40:24 +0000
Received: by mail-wr1-x444.google.com with SMTP id v8so19984870wrt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 08:40:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=w0Ll+cn1Z5T2Pfe8NP5R+UwThO0oMcc1htOSDXSVIpY=;
 b=PxDaDH2HGSTXbe8j2jdQ0F5aNPczREiGJ3IgO4cVYi5hdYsx06jqhLDO7fwYHs0xur
 ML7c+nfBISC0NSKhNveEtvqBHn2vKXEhajIdaHx9YHrhwR+dGhb/P5lhC3welZuuOJO6
 7UO4/a3vjj0km4g5t9hzTLrAjJP6usFbt4FP5q+ZVjgVQVjjGbTqU2JOQLh5Ke7GiZaA
 Bs4W4+EgqqYBy4Qt8LoPFfNJU2MFBfNyFR07aJfxRlRNk+MWmxD/1xsXtHNPUtlOSBGL
 vU1Fi31L+fREo2L+23VSMqS0eThBgPYb4q33QcSuG7NF7TdV+/RDpozRKHY9iOaWc3kH
 0SCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=w0Ll+cn1Z5T2Pfe8NP5R+UwThO0oMcc1htOSDXSVIpY=;
 b=N35aAON3X7oAxMvPgcqaeDVHNLA6ktjBCc+XMN/eq5BjkMzB5Ua5NL4lA3kd5g0Wve
 +DW6bdBL6WwgfFryirA5oQfq6WCZH/6sSNP7hfVyilBIV3LaaZsaG9AqIQOvuUmdqmlL
 cF1CkG3FgpO7JRitV3ONnbWsJToavRbylNpam/5MToTirL2iLBWKrzELN2xe2l/1JIA6
 8hWsnHBfxfS9wQS9TaMCPoSr4SNiDt0n6kx/1A7QGrl1N7sD4K9MxtW4hggcHxAIwg2K
 1xSoWbKy/lvtu+2yaSm4OhS5Tu8pJS5LWJp4O8UuTjBTk7r8Oa1n1ZAEcXAxKqrJknBM
 s+dw==
X-Gm-Message-State: APjAAAUOaYpUtCoFhcDKbtRx0PC777jcT/JcW2kWaJB3/h7G+LbeA/hS
 15DmJtb4tKFtgnrCZd9ZE9jYVgs74+xbNw==
X-Google-Smtp-Source: APXvYqz8QWTEYwm7VRclOdErpep6/Sqp+XboWEGOpbS74+T3zHUStUuTLhddFS25GyXCNBHaTcEbGw==
X-Received: by 2002:a5d:4a01:: with SMTP id m1mr23040139wrq.343.1570549220750; 
 Tue, 08 Oct 2019 08:40:20 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-657-1-83-120.w92-154.abo.wanadoo.fr. [92.154.90.120])
 by smtp.gmail.com with ESMTPSA id x16sm16784723wrl.32.2019.10.08.08.40.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 08:40:19 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH for-stable-v4.19 10/16] arm64: Provide a command line to
 disable spectre_v2 mitigation
Date: Tue,  8 Oct 2019 17:39:24 +0200
Message-Id: <20191008153930.15386-11-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191008153930.15386-1-ard.biesheuvel@linaro.org>
References: <20191008153930.15386-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_084023_397439_FD85AB02 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andre Przywara <andre.przywara@arm.com>, Jonathan Corbet <corbet@lwn.net>,
 linux-doc@vger.kernel.org, Jeremy Linton <jeremy.linton@arm.com>,
 stable@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jeremy Linton <jeremy.linton@arm.com>

[ Upstream commit e5ce5e7267ddcbe13ab9ead2542524e1b7993e5a ]

There are various reasons, such as benchmarking, to disable spectrev2
mitigation on a machine. Provide a command-line option to do so.

Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Reviewed-by: Andre Przywara <andre.przywara@arm.com>
Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
Tested-by: Stefan Wahren <stefan.wahren@i2se.com>
Cc: Jonathan Corbet <corbet@lwn.net>
Cc: linux-doc@vger.kernel.org
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 Documentation/admin-guide/kernel-parameters.txt |  8 ++++----
 arch/arm64/kernel/cpu_errata.c                  | 13 +++++++++++++
 2 files changed, 17 insertions(+), 4 deletions(-)

diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
index e8ddf0ef232e..cc2f5c9a8161 100644
--- a/Documentation/admin-guide/kernel-parameters.txt
+++ b/Documentation/admin-guide/kernel-parameters.txt
@@ -2866,10 +2866,10 @@
 			(bounds check bypass). With this option data leaks
 			are possible in the system.
 
-	nospectre_v2	[X86,PPC_FSL_BOOK3E] Disable all mitigations for the Spectre variant 2
-			(indirect branch prediction) vulnerability. System may
-			allow data leaks with this option, which is equivalent
-			to spectre_v2=off.
+	nospectre_v2	[X86,PPC_FSL_BOOK3E,ARM64] Disable all mitigations for
+			the Spectre variant 2 (indirect branch prediction)
+			vulnerability. System may allow data leaks with this
+			option.
 
 	nospec_store_bypass_disable
 			[HW] Disable all mitigations for the Speculative Store Bypass vulnerability
diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index 10571a378f4c..2394a105ebf4 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -189,6 +189,14 @@ static void qcom_link_stack_sanitization(void)
 		     : "=&r" (tmp));
 }
 
+static bool __nospectre_v2;
+static int __init parse_nospectre_v2(char *str)
+{
+	__nospectre_v2 = true;
+	return 0;
+}
+early_param("nospectre_v2", parse_nospectre_v2);
+
 static void
 enable_smccc_arch_workaround_1(const struct arm64_cpu_capabilities *entry)
 {
@@ -200,6 +208,11 @@ enable_smccc_arch_workaround_1(const struct arm64_cpu_capabilities *entry)
 	if (!entry->matches(entry, SCOPE_LOCAL_CPU))
 		return;
 
+	if (__nospectre_v2) {
+		pr_info_once("spectrev2 mitigation disabled by command line option\n");
+		return;
+	}
+
 	if (psci_ops.smccc_version == SMCCC_VERSION_1_0)
 		return;
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
