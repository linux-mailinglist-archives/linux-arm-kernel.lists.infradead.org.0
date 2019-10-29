Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 639E6E8007
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 07:04:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZHCECAfz1BZKVswO8a5479lTTJp+j2orhIsu2JhisB8=; b=aP3mPiupCu5QeZ
	W0crGcInCEPaQ8nsRqdQ8ALQYIN+Mks35fuAwf0WuPG/V1W9bsX+hsCPl/8pnc+t6MPhYeWVsNxrD
	wywesECgz7bpRWVBsYzvHqG+19Vme+nMBIvCrdGTagE/ditCD9KE9duE1qLuotscSlkIiRT0umJK7
	0ROPSo7wvY4ZsuSEU5jFyZEaX1JJ49t8M6hz6qqi8hsoo5hk0obkcPT2x58meezXhvo2cYscneaop
	78XSW8lRINXw11elkn0psDc329tyTvfAikn+XcecQ4BA6pJFCaCZr1rGmyAQFt6tmkpX6gqmJcUvn
	MvkKqeLiF94jbZ4UVyPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPKca-00037N-14; Tue, 29 Oct 2019 06:04:48 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPKcP-000373-Et
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 06:04:38 +0000
Received: by mail-pg1-x544.google.com with SMTP id 15so8766289pgt.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 23:04:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=W39xK+ySX7H/kO8T3j/KlPzC4OMMNyJJ/QXMm12Hpvo=;
 b=wFrRxMABLQ165DVY6sbzKHMB7LJ758eBnstL/y7tQiTvNJ9qfonFBbEVwfm1VzIvhs
 S8hLdkn+0DTr6yTaAHC5L8W9b3kpDiVc4mfQwg8oO95RSOabs0CO4WrVpZ365J6VX0gV
 on2uKoTVeYVQr9p+1nh+gN3JFQMEPC081QZU8CGnjIihtRlciaDuYCmXQaLntpBK1ce6
 o7VnDWn4v6iHmLBg8J6MkEMLrR3vHk1RB2SSc+ys4dF47ak0gBDS7/xKfkKV1OFtbxI3
 j9c23q+7PiFpC5iotdyjTlXjR4CD39Y+6SGhAfa8+kOpGvl7urHlU/+X9GptTa8zT4xG
 tt7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=W39xK+ySX7H/kO8T3j/KlPzC4OMMNyJJ/QXMm12Hpvo=;
 b=UVj6mts+YEhkO2Yq7m+EXzJPJK/WQcZ/MG/FYWLaOlsBXznjv8ji9IhFXv1JkPokEA
 NNu5poyjdZJHBqhM6ypyrbIcoHV1wFT3E2u9DH6qKZjMdAtd8q/rKZJtPhfx+MqdOIQL
 kyHzVAgbdDenDrxkDfK0miJeosxl6sZqFSlubwq3SfH6aOaDapCUWgygysjjyJOzYRhN
 ZeYhsf75i6YxKD4MhphEL8m1oSWe5aYR6sbtXHIi2yAuHSZyDjR8qwDoTrua22T/6liM
 aJPvPm20D+cLWQat8UoR0Gb/8wXFUkKQqd80dqp6W30030gvFx2HRJmCQRLNVlSjaUrz
 KMfQ==
X-Gm-Message-State: APjAAAXTSBM2BGr+tXa4r5EVyKk+Cx7o182N5Pt4JE3FVcVMgzh/6Euw
 5acVxdJiWzugytMFs9qek01Uhlr0tmQ=
X-Google-Smtp-Source: APXvYqwOn0neNqJeKEUk/f0BRI2tYbCUjSJDkCwqVRLXz8R0SbZ3JB398pufLg4JdNAgA2Ia3mCNHA==
X-Received: by 2002:a17:90b:282:: with SMTP id
 az2mr3930080pjb.23.1572329076618; 
 Mon, 28 Oct 2019 23:04:36 -0700 (PDT)
Received: from localhost.localdomain
 (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id q34sm1338607pjb.15.2019.10.28.23.04.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 23:04:35 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: [PATCH] arm64: cpufeature: Enable Qualcomm erratas
Date: Mon, 28 Oct 2019 23:04:32 -0700
Message-Id: <20191029060432.1208859-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_230437_509329_8F153ED7 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
Cc: linux-arm-msm@vger.kernel.org, stable@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With the introduction of 'cce360b54ce6 ("arm64: capabilities: Filter the
entries based on a given mask")' the Qualcomm erratas are no long
applied.

The result of not applying errata 1003 is that MSM8996 runs into various
RCU stalls and fails to boot most of the times.

Give both 1003 and 1009 a "type" to ensure they are not filtered out in
update_cpu_capabilities().

Fixes: cce360b54ce6 ("arm64: capabilities: Filter the entries based on a given mask")
Cc: stable@vger.kernel.org
Reported-by: Mark Brown <broonie@kernel.org>
Suggested-by: Will Deacon <will@kernel.org>
Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 arch/arm64/kernel/cpu_errata.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index df9465120e2f..cdd8df033536 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -780,6 +780,7 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
 	{
 		.desc = "Qualcomm Technologies Falkor/Kryo erratum 1003",
 		.capability = ARM64_WORKAROUND_QCOM_FALKOR_E1003,
+		.type = ARM64_CPUCAP_SCOPE_LOCAL_CPU,
 		.matches = cpucap_multi_entry_cap_matches,
 		.match_list = qcom_erratum_1003_list,
 	},
@@ -788,6 +789,7 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
 	{
 		.desc = "Qualcomm erratum 1009, ARM erratum 1286807",
 		.capability = ARM64_WORKAROUND_REPEAT_TLBI,
+		.type = ARM64_CPUCAP_SCOPE_LOCAL_CPU,
 		ERRATA_MIDR_RANGE_LIST(arm64_repeat_tlbi_cpus),
 	},
 #endif
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
