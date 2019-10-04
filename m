Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A866CCBA0B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 14:11:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9m8n7FQfyimfwSOj7XAFBVktNmEtLTKl8zQ+kzHxsfc=; b=cZ4G63bGAWgCPa
	gyefEWo2dq6+gmPRIDhZC48U23ZBqJqBB1m1S8EdRIYtLoIVpx3L05ryFAgQ6qY7JdfqenVY3usm5
	z6QTJxxtX/TSzurNvc6iLEmbNpvcaduQ763VvokqgZzFMAyrCBWcp5P8KGnKDodpLfGYmwq+PNwoq
	tNc+RGOKauTyRSY343e0Wwp/BVFtJZ6G/AqHcUdGPGM+bbwIb0P20ekrp8nyey+I0T5XU2wtY1IsF
	JOW8xIRqIRx95exfLr487iWin8VDLBv21T/TLlgLTC2dorKqAlDjYpBMvSGWobMf3nR3AJ2DLWSKm
	AWapiho/B+sOTMcfcGVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGMQf-0001V8-Qb; Fri, 04 Oct 2019 12:11:25 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGMKI-0001sc-HS
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 12:04:55 +0000
Received: by mail-wr1-x444.google.com with SMTP id o18so6814663wrv.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 05:04:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=suth/yl7C9uDuKnFfHGvtaLYw1nAU2JE6foMZrBU1qQ=;
 b=u7JSTFaB3+6rww5bw+3zAh8GYbUYNGvNJBk1J9hUrtPLM7vZElrKeGjaaUd1XJ8PDd
 euAnU9ckEGTlg7UuDgpIborMmJESaMf9DasD+8yHhFRglwvviGUjeXTpNSZaoXjIAXUU
 Im3yyNR3PSVhsLhSW3KBut6GiRLjRlEx8HBXG7tTyUYdj6+glb3/aShDgyR8hscPSZ7t
 s1lEPWbGZ0Vclg5qDq14T1u/BJbqXNN2WwxgVILo1ebNKtqAUauCdBqEKXRONWDpIFq/
 TcNXNspgq3oSHlbs/GcR1NeqUhZsD6YLQvRCz16zvaVNMHCPleM68EET/mVU8eGscQ50
 Q+XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=suth/yl7C9uDuKnFfHGvtaLYw1nAU2JE6foMZrBU1qQ=;
 b=O+PIgZ2KSRmi0c2rTVrEuhwNobKTGwlk1t2c/UHj4DFEl/WGpxKe/DsMAQf/Uc+iXY
 MfPFIl1O9ZsfQoxEekzAHVryP8GvSCj2RZNuopxXfzk5C7+XDtTCOucOrsq2I0UqVcUE
 8qRpas4WZWeP3e9KyfOrgNwWZM8xJLB9+0ShcEDqkQ428+wn0R1mbjMTLJy8iDhgtaLj
 lROWxMa/gBfys/bhNqUpHPQwBIz9sHRtGIKSjDSW0e5Jz2Xc0/8woe11t+18FVLDPaUb
 2MyRoVj3AZRfdd9SATwtBqUHDwH1YR7BZ7PqdB0H+6JjTDlbjoreoEXffLJ8ZISJFWIT
 ZtJw==
X-Gm-Message-State: APjAAAWjgatxdAY8c/9f7IOX4Fq7Ds2+TUi52ibegODWHer5cbH6EZBZ
 lXervIqWXhXYpC3l2wYUI4CB78fHcAN8fr7h
X-Google-Smtp-Source: APXvYqyY9s67nKyPhoAmHbDhr4NeD9R/VMYYs5ICoX9odFWy6lJ8OkI9K04wXpCG7oQAaWEbrkuGtw==
X-Received: by 2002:adf:f58c:: with SMTP id f12mr8665663wro.38.1570190687975; 
 Fri, 04 Oct 2019 05:04:47 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:b51e:3d9d:ec16:def5])
 by smtp.gmail.com with ESMTPSA id f8sm5019628wmb.37.2019.10.04.05.04.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 04 Oct 2019 05:04:47 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC/RFT PATCH 09/16] arm64: Provide a command line to disable
 spectre_v2 mitigation
Date: Fri,  4 Oct 2019 14:04:23 +0200
Message-Id: <20191004120430.11929-10-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191004120430.11929-1-ard.biesheuvel@linaro.org>
References: <20191004120430.11929-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_050450_623323_8FA6A289 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Stefan Wahren <stefan.wahren@i2se.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-doc@vger.kernel.org,
 Jeremy Linton <jeremy.linton@arm.com>, Andre Przywara <andre.przywara@arm.com>,
 Marc Zyngier <maz@kernel.org>, Will Deacon <will.deacon@arm.com>,
 Jonathan Corbet <corbet@lwn.net>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jeremy Linton <jeremy.linton@arm.com>

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
(cherry picked from commit e5ce5e7267ddcbe13ab9ead2542524e1b7993e5a)
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
index 3758ba538a43..5a7fa90c668f 100644
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
