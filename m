Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15BAA1A86F2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 19:07:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bIUPiU1ovR8IoswkWb24yRY9ra6RMvt93L0t/Abqm20=; b=exwlLP3kcNxILi
	1eugjB4NMACmIXvJ2K4FXuF8a6fFNa/QJYg4TqiRi5m2Emb43d91lfKR/7GAgH468R9vSSu4sR5He
	puZH+GNUPJEHhizK8skReKjuWD5erL+i4md1ivDqzFzI8fIakRiiM6nEWp1VNO8GBIjc1hwl6/4nf
	gVNNpAfJT2k+cHPy/r4x3GxpQO1lXB4iuOhHbg/x2HUjz0k7OJB1rMg/jwtaZwHIRG6h/1hCEKxJL
	we1Z5rdpS030fqibGSIUziqcvtr+IcbJrP77v02vuJwJYkiPP+xzB2xB898OB98retAQqfJ3c1O+f
	+e2rUh1qbNWqUYAMGJlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOP1W-0006ii-RX; Tue, 14 Apr 2020 17:06:58 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOOz6-00024s-PJ
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 17:04:32 +0000
Received: by mail-wm1-x341.google.com with SMTP id e26so13824286wmk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 10:04:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GCsqjS+Tnwu1hr3WMvNuD+P9uXkPM0pVKS2lTlLCiJU=;
 b=po6t4my3Go9g7beq4oi5gBqHe0K8I8gLjjolwSf6g7Inuex/2pKCElDmTw05chnprB
 VpcDmTm9mJndKQ44OUnWiFNGWAnRefKxTsOEpgZkGH6fmib0dAJkrwdNZzEReQlfHRLw
 zmHfO/enRYNLngF50Q/ItNGZfOVNZOP1Wjn1Tm/UzlvI3Aq2ub4XSW6+HyraLp5KrRtN
 gUQ66eIR/V7LC06nJlZF2rLHNx0sFnWE5LcK9o3Z9V83oIkL5irCCS39MKos1xZK1qWT
 MZY9xrqkkCHiVCztI/hzFS5XxD5U/SGIE/6AMMBqlAMbF3wtNCRxo5V2z/5fM3LcFagm
 S0GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GCsqjS+Tnwu1hr3WMvNuD+P9uXkPM0pVKS2lTlLCiJU=;
 b=Len22sWaUZQAXNRd0m/vWCBhieeh3ERmwUCh6Sm0nWdEFydoPllVP8/g/mjfwAUur2
 lOWws7X92+SMKbUnJ988U61vB/sLx2Lb4VR1gGnCebwsb8GSgXUU9rEuxGwH3xM3rsSk
 tdFpCx7Gz9aHppOWn7E91zdo+RG4NnL1xgPJdowUfEufGrf5qOHxzRGttNihLtgToDxi
 YPe7LLNiBilSw7zwMS/zBjk7/wx4QL4MSMZqC1eCVKBIEQPOfDeUcI174t7LCHBpVw54
 NfLUgOMaeDI+itlPre9lGSCASzM0DM3CJ2UP/EKGhwB/w3EOi+CqSCL7fGYMJlaITKEl
 F0vA==
X-Gm-Message-State: AGi0PuaxSdzFSugYnqAv/vZ0TUNE8eJ5YFH2vaChSsxd1u/7E2aKaGpv
 8ZCrd755w3wJk7uWHcK5E0AvAdus+wMFIw==
X-Google-Smtp-Source: APiQypItrJFyYm1dKZ3R07kVZC02nj/EnEUI4s9HX58/CnIZwkPk4I7z7a9PSJbV36nuH4swD5HWaA==
X-Received: by 2002:a1c:3281:: with SMTP id y123mr814694wmy.30.1586883867167; 
 Tue, 14 Apr 2020 10:04:27 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226b:54a0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id x18sm19549147wrs.11.2020.04.14.10.04.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 10:04:26 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v5 07/25] arm64: mm: Add asid_gen_match() helper
Date: Tue, 14 Apr 2020 19:02:35 +0200
Message-Id: <20200414170252.714402-8-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200414170252.714402-1-jean-philippe@linaro.org>
References: <20200414170252.714402-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_100428_846034_5900DA79 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>, kevin.tian@intel.com,
 jacob.jun.pan@linux.intel.com, catalin.marinas@arm.com, joro@8bytes.org,
 robin.murphy@arm.com, jgg@ziepe.ca, Jonathan.Cameron@huawei.com,
 zhangfei.gao@linaro.org, xuzaibo@huawei.com, will@kernel.org,
 christian.koenig@amd.com, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a macro to check if an ASID is from the current generation, since a
subsequent patch will introduce a third user for this test.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
v4->v5: new
---
 arch/arm64/mm/context.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/mm/context.c b/arch/arm64/mm/context.c
index 9b26f9a88724f..d702d60e64dab 100644
--- a/arch/arm64/mm/context.c
+++ b/arch/arm64/mm/context.c
@@ -92,6 +92,9 @@ static void set_reserved_asid_bits(void)
 		bitmap_clear(asid_map, 0, NUM_USER_ASIDS);
 }
 
+#define asid_gen_match(asid) \
+	(!(((asid) ^ atomic64_read(&asid_generation)) >> asid_bits))
+
 static void flush_context(void)
 {
 	int i;
@@ -220,8 +223,7 @@ void check_and_switch_context(struct mm_struct *mm, unsigned int cpu)
 	 *   because atomic RmWs are totally ordered for a given location.
 	 */
 	old_active_asid = atomic64_read(&per_cpu(active_asids, cpu));
-	if (old_active_asid &&
-	    !((asid ^ atomic64_read(&asid_generation)) >> asid_bits) &&
+	if (old_active_asid && asid_gen_match(asid) &&
 	    atomic64_cmpxchg_relaxed(&per_cpu(active_asids, cpu),
 				     old_active_asid, asid))
 		goto switch_mm_fastpath;
@@ -229,7 +231,7 @@ void check_and_switch_context(struct mm_struct *mm, unsigned int cpu)
 	raw_spin_lock_irqsave(&cpu_asid_lock, flags);
 	/* Check that our ASID belongs to the current generation. */
 	asid = atomic64_read(&mm->context.id);
-	if ((asid ^ atomic64_read(&asid_generation)) >> asid_bits) {
+	if (!asid_gen_match(asid)) {
 		asid = new_context(mm);
 		atomic64_set(&mm->context.id, asid);
 	}
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
