Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA5ECFDFD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 17:44:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0jBWxJq9qFq3miajBJcbUVtjJz2iHj89m6eeeYC2Ro8=; b=bdhaNJmQdIGRCa
	V+T7DRsuY+WjEOQzxX3QR4elAlQeUIPkuZEtDl9FQMlTXucMwtcZcPMmT4vM8LLjunw52heguB+V6
	yZ25fq1c7/TjZgutTVqSPHH+IYXbN1iOwyWccZyEF4Mav8bB53kVchmqbuCZ18yzJI8lZAKLnAUBU
	lYgoOPvwdLGbNXcj3mi+/RmmK4i1SzlVk4mzI84vflBVO81EngfijtsKZcHmSb7KJSp7pGiiD0u0h
	S0jwUdTYlUulvEWXQ68g/GqcAw8OPAY7XlIQh0yb0V07dr9MeJMuTGvG0MGR+8m98ewHeNZ8dHN1a
	rHHVWJaSTBc/roXJ5J3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHrfQ-0002Hi-SU; Tue, 08 Oct 2019 15:44:52 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHrbC-00074U-Pp
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 15:40:35 +0000
Received: by mail-wr1-x442.google.com with SMTP id b9so20010379wrs.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 08:40:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=O18xZOEMMJydjKMD80TyT8oRhz4SapCait5DnLCUfdg=;
 b=zwctIF/ukmMnoeE7TiEtLzRgjRx1h+0miKYBzh8SxwqVgoLeEnVrS1vnd+kTLJIeS3
 wGt06XJKluONW8oBFsmSVORQ8/6dl33wDmQqFFQtuHK1GRZ92Q/Q2EcTtYA4SgtjOwgq
 hSPKNC9jM5vADNrq8yj4lUMT/h+ssjjcwW5gRupYIxBxzpQLLOEOBtEibjfk22CET88x
 wNwSimuXSoaqRaoa5cXG/bbQ47xof/pD7xMIEbc3e2Z8Xe8VTvmd+Gf/YBXXufxNc/P/
 IzkTwKsxKxTWCE7Aq5yrNLhGtK/9+SKni7O7wVx0Kwe+nvMMENEipiQ/1KnodvzrylcG
 0gsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=O18xZOEMMJydjKMD80TyT8oRhz4SapCait5DnLCUfdg=;
 b=Ngzswvc51CmDkaS0Wd3swKIUASg7U65DLyyvhotrgBukuGIv1WKJOZVhgx04nzUZs6
 PqV5GHwcqSxbYbE+nNppDJt44u+JA+Ynrw5bxnzN5vsbEFW1O4WXFgloc4xUgLobfUSY
 fhwR0IognFoQidQbmk06znTP92NzJG37/lXvYCYlLdwuwC4Q2wzsSr0rBFeyRNYDZXv9
 d8o3IIDD4FzHscfJSvrnBN4052v75mw126mCYfWcW1a2mqjlqDcnOYK5j9fFdXOnEyXb
 SmDxPxzftPj2MH5OdHhB6W2D4WnyREg22hOE9vYIVHDTbI1KDbp6w+951jQOEr70/I5s
 87UQ==
X-Gm-Message-State: APjAAAVqvBDQUksYbmm53iCEHE+k9r7Lhs8lLNMU1NCcMSnweqrGgfS9
 qv3R6MYmnnExY6yiVqjg5FC3u4FKI8APUQ==
X-Google-Smtp-Source: APXvYqypH7JrYxjtBRHUzeS8ZMlhq3WMnbVCetS1pPun1EDOh7twRNxqiTyq0fUcyCfaGoz7cmEFdg==
X-Received: by 2002:a5d:670f:: with SMTP id o15mr26513389wru.242.1570549228737; 
 Tue, 08 Oct 2019 08:40:28 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-657-1-83-120.w92-154.abo.wanadoo.fr. [92.154.90.120])
 by smtp.gmail.com with ESMTPSA id x16sm16784723wrl.32.2019.10.08.08.40.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 08:40:27 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH for-stable-v4.19 15/16] arm64: ssbs: Don't treat CPUs with
 SSBS as unaffected by SSB
Date: Tue,  8 Oct 2019 17:39:29 +0200
Message-Id: <20191008153930.15386-16-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191008153930.15386-1-ard.biesheuvel@linaro.org>
References: <20191008153930.15386-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_084031_051077_FD2117EE 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Cc: Will Deacon <will.deacon@arm.com>, stable@vger.kernel.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Will Deacon <will.deacon@arm.com>

[ Upstream commit eb337cdfcd5dd3b10522c2f34140a73a4c285c30 ]

SSBS provides a relatively cheap mitigation for SSB, but it is still a
mitigation and its presence does not indicate that the CPU is unaffected
by the vulnerability.

Tweak the mitigation logic so that we report the correct string in sysfs.

Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 arch/arm64/kernel/cpu_errata.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index 0ce4a6aaf6fc..292625fcba04 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -341,15 +341,17 @@ static bool has_ssbd_mitigation(const struct arm64_cpu_capabilities *entry,
 
 	WARN_ON(scope != SCOPE_LOCAL_CPU || preemptible());
 
+	/* delay setting __ssb_safe until we get a firmware response */
+	if (is_midr_in_range_list(read_cpuid_id(), entry->midr_range_list))
+		this_cpu_safe = true;
+
 	if (this_cpu_has_cap(ARM64_SSBS)) {
+		if (!this_cpu_safe)
+			__ssb_safe = false;
 		required = false;
 		goto out_printmsg;
 	}
 
-	/* delay setting __ssb_safe until we get a firmware response */
-	if (is_midr_in_range_list(read_cpuid_id(), entry->midr_range_list))
-		this_cpu_safe = true;
-
 	if (psci_ops.smccc_version == SMCCC_VERSION_1_0) {
 		ssbd_state = ARM64_SSBD_UNKNOWN;
 		if (!this_cpu_safe)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
