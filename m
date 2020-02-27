Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37FEC1712A1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 09:37:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b9sunEJVuP3hcmFHnas4AuhCi0gDpAzF2yfhSYT2lgw=; b=BKNKOPiRgoLePt
	J7ruCmafm0IFA6o54UPHLIWPdHeBJyl+gqkALn1fEgOYi6lFadXtc/06/Du07bvZpxefRS5Zb9/8m
	H3nKLyaHFXwr6hRNNWWF2vGLXoHvxLGtST41u3dDrgu55UCR6XhTwbNy9z8MxAMoIN+hddDsZ+F9G
	GUOH0Hs4b6j6h4+j1Xgx63LoutmRLh9/UbeSmNI+bkBNC7+NdWwdAtFv3C1Q2iuOEaNQ+kD/0zoaA
	GznrWwVo7X8qqa2AzGPsGLiQ5itNqe4YMruzLwTA1+EAFbvrdWes1Q77M1LowXFDGJqYQEfEUEHzV
	Wj0/tH3/ga1Q9VmPUCvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Efv-0008I0-Pc; Thu, 27 Feb 2020 08:37:43 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7EfZ-0008Hb-NL
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 08:37:23 +0000
Received: by mail-wr1-x441.google.com with SMTP id p18so2181299wre.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 00:37:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lbx0J/OaxZHQq1qELfXJfNJttlj0Ix9A5iZ2OsJQ7zo=;
 b=D3KvMlRRgff7Yh7LZvSkL+Qpx3+m6M/IfERIdVFe2WJrnkcbTNY+dgoIF/ZDWzC8M+
 ECM3pwNVIkxDcGPq4rwdQ6Vgw9bDcT6iyT1rbLIPH5Ldw9nmJXWRRoJ7BNIYRWcUik5j
 7fBCoiMEdyvpetY2mOhGbTnFfhKbQksL73hv7CqGYWc2VgV0+g/9gUsBmjNLhKkGUceu
 XPYdz9IBctqn1epd8ZH+czONJ3y1wRX+06qIml9OKftip1ktvVt3/oXR3JO4ydc2NfT7
 xy0x7yIg2HmwNCqqsolPxRq0Y9p8aBvQrhJ+TDgUuyiOLuBxzLkbZer/tJ9MCxacAiMu
 gh4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lbx0J/OaxZHQq1qELfXJfNJttlj0Ix9A5iZ2OsJQ7zo=;
 b=Tp80eLMjKSxu3FBljPSmdM4kpbs1r/ADE0vwYyElg/arEej+9XHopIIGaf+5i8p2HN
 62j0oJ+HyirPA9EESj1pV1JsEHZ+IYWzgBo1zQWuCi+K7NBEtiY9n2uKex6j2oi/dUUR
 gBjUmPDsHD3duU5uqEWbW0t93pVG+jfgCtoSPNySK9srqBdPbb/AroYAMEsVeVYXI2BQ
 WhIjVWKKZcZO/EMYMa5TPBz7v2dzhV4PRBcS38pxCq16TL0JZJ/92VmSGzZR2iR/XAZ/
 bDr1Fdfot54vInXmkdMb/OMYFbP/amKinAsF1PWGnGc6L6vB1GEoBrpkn4VbRmNXhV6P
 RJTQ==
X-Gm-Message-State: APjAAAU8K05oJqUTp3RXOa2msT4F5fJbX6qvHVrA3Pst2mZmwERCh3IQ
 jryDDQKZ0DUm6pPnY92JWU6ZkG9Tqc0=
X-Google-Smtp-Source: APXvYqzPw2Fmm3TOyoeebL6/RZ+v2o8R02SpV7tJGfRT8TwX50yiZ4ydINaYYy/iDgyc2/AJOb0SxQ==
X-Received: by 2002:adf:e884:: with SMTP id d4mr3696827wrm.12.1582792640180;
 Thu, 27 Feb 2020 00:37:20 -0800 (PST)
Received: from localhost.localdomain
 ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id f11sm6773918wml.3.2020.02.27.00.37.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 00:37:19 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: catalin.marinas@arm.com,
	will@kernel.org
Subject: [PATCH v3] arm64: context: Fix ASID limit in boot messages
Date: Thu, 27 Feb 2020 09:34:47 +0100
Message-Id: <20200227083446.677377-1-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_003721_788347_0B15462E 
X-CRM114-Status: GOOD (  13.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>, vladimir.murzin@arm.com,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since commit f88f42f853a8 ("arm64: context: Free up kernel ASIDs if KPTI
is not in use"), the NUM_USER_ASIDS macro doesn't correspond to the
effective number of ASIDs when KPTI is enabled. Get an accurate number
of available ASIDs in an arch_initcall, once we've discovered all CPUs'
capabilities and know if we still need to halve the ASID space for KPTI.

Fixes: f88f42f853a8 ("arm64: context: Free up kernel ASIDs if KPTI is not in use")
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
v2->v3: move pr_info() as well, make it more readable.
v1->v2: move warning to arch_initcall(), post capabilities (e.g. E0PD)
        discovery.

This change may be a little invasive for just a validation warning, but
it will likely be needed later, in the asid-pinning patch I'd like to
introduce for IOMMU SVA.
---
 arch/arm64/mm/context.c | 20 +++++++++++++++-----
 1 file changed, 15 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/mm/context.c b/arch/arm64/mm/context.c
index 8ef73e89d514..d89bb22589f6 100644
--- a/arch/arm64/mm/context.c
+++ b/arch/arm64/mm/context.c
@@ -260,14 +260,26 @@ asmlinkage void post_ttbr_update_workaround(void)
 			CONFIG_CAVIUM_ERRATUM_27456));
 }
 
-static int asids_init(void)
+static int asids_update_limit(void)
 {
-	asid_bits = get_cpu_asid_bits();
+	unsigned long num_available_asids = NUM_USER_ASIDS;
+
+	if (arm64_kernel_unmapped_at_el0())
+		num_available_asids /= 2;
 	/*
 	 * Expect allocation after rollover to fail if we don't have at least
 	 * one more ASID than CPUs. ASID #0 is reserved for init_mm.
 	 */
-	WARN_ON(NUM_USER_ASIDS - 1 <= num_possible_cpus());
+	WARN_ON(num_available_asids - 1 <= num_possible_cpus());
+	pr_info("ASID allocator initialised with %lu entries\n",
+		num_available_asids);
+	return 0;
+}
+arch_initcall(asids_update_limit);
+
+static int asids_init(void)
+{
+	asid_bits = get_cpu_asid_bits();
 	atomic64_set(&asid_generation, ASID_FIRST_VERSION);
 	asid_map = kcalloc(BITS_TO_LONGS(NUM_USER_ASIDS), sizeof(*asid_map),
 			   GFP_KERNEL);
@@ -282,8 +294,6 @@ static int asids_init(void)
 	 */
 	if (IS_ENABLED(CONFIG_UNMAP_KERNEL_AT_EL0))
 		set_kpti_asid_bits();
-
-	pr_info("ASID allocator initialised with %lu entries\n", NUM_USER_ASIDS);
 	return 0;
 }
 early_initcall(asids_init);
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
