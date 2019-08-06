Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E12829DF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 05:05:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DSlnKoiQrWU5xZB59k6m8JGashcMG109aMBpGtK7XNA=; b=mxDZtkazXRjMLL
	XWjfcPPHgNei0zPBI0xKLbF8yNxFR7ayVhtA++fMvRlkWP7aWOUzVyKwLHy7hi20ayFvEFBeKAfhA
	Zyq+zp31BSkkPBzuZA52UziGXR1dI67Wi3jqKMNA4lvn5c/ddtLo59sxmhlKP8M1gH+JQ7d42qu25
	mi4Xk7QUCg+waUI+FvFwxZQZS3HzgeDBT9uSJSnUBiCWzZ80MoYtRJfbczCPMt4L/HGgdqxqsju0K
	6jO4L4xbXhM2WRmbz1ZFgeCdvqOLvtGUjULyiLHE3gfu9X0K1F2AV4PEudDH30kH/vU70orQayRwM
	dss6u5cIVuwfFHnnQP8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hupmv-0003ef-Kz; Tue, 06 Aug 2019 03:05:25 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hupmn-0003eI-Mh
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 03:05:19 +0000
Received: by mail-qt1-x841.google.com with SMTP id d17so4218432qtj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 20:05:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PyvuAycN0W7JrDx3dUfXKO7/FDDYlxGkKJhnNFbl+Qo=;
 b=haLVWJVZHX58MY+5/AxQGIuz/IAD+SOxcyhpUofD684Gyjqc+/Zk+t4Vz9XImOm7Qf
 nwAXh/JpsapL6n55M0UPxAjiS+Zar79YScfY+eGLRiRAzNUB+EkjIPlC4d/gfLLP7Pyr
 OldecaVOr2KbtJWvGOLoxk1CfEUWb+0Aj7KvTH+AuWcNkCPq8wZKeXnkbQKkTmCbmwjC
 YA3I3gedGvZjINpM7OqFTbn/FmWHBY2VwuxQ634E9FnI7xOVl7f+7j8QBMyFywIfqpju
 ppLvfIy3HTrL1NVP43XfLMqmOkIWf0jZUV1mNbiT1fygm/PKqF6UBpEwnq3p802grxZW
 grBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PyvuAycN0W7JrDx3dUfXKO7/FDDYlxGkKJhnNFbl+Qo=;
 b=b0dqnNiMNsZsmqCwwGi2WzNdzmRsAT/pHsb1zQKZrAZJgwCraOzaZYAowYxuTNgX40
 cQ2sAG78kbW4DXUOb+fVq3cQJSHB/XK1+DxfhqFV0dciGcdZpFJdPt2696zG2RV9D04+
 c05Uk4kL62wdBbA3sCdyKAeGBl8zXOWUn9bOYjrLe+dXPUAnIDqAOk9QAy4ELMTS3Nuk
 m8pHUabu97V25ZDpS+Ud9bENC9RU2N36S67V1IIzLNNbMIPLKX1CDUUkLGnnUrEoFCME
 uW3pFTdKvc/6Ehyc91d5jzDmCFg3B35FXQFuWVZygJ3phEoaM4Zm5/gz3T/7SVZeSSFf
 DpEQ==
X-Gm-Message-State: APjAAAXeNIsvhXqYneL2LUom6v8wgoCXmUxNYe8OnmUOkdkoUPcodLE6
 OTBYkf1kX1WnnhJCp0IcEEJ51g==
X-Google-Smtp-Source: APXvYqyQHY2lzxrxYaWxWvSLlKXKRgWIivDNAfo/0lKfpW9wImOssr3JY3nj/MOZ1d63fldC9mJqbA==
X-Received: by 2002:aed:39e7:: with SMTP id m94mr1223027qte.0.1565060716457;
 Mon, 05 Aug 2019 20:05:16 -0700 (PDT)
Received: from ovpn-120-115.rdu2.redhat.com
 (pool-71-184-117-43.bstnma.fios.verizon.net. [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id u4sm37185800qkb.16.2019.08.05.20.05.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 05 Aug 2019 20:05:15 -0700 (PDT)
From: Qian Cai <cai@lca.pw>
To: will@kernel.org,
	catalin.marinas@arm.com
Subject: [PATCH v3] arm64/prefetch: fix a -Wtype-limits warning
Date: Mon,  5 Aug 2019 23:05:03 -0400
Message-Id: <20190806030503.1178-1-cai@lca.pw>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_200517_769153_A6178D61 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: rrichter@cavium.com, Qian Cai <cai@lca.pw>, robin.murphy@arm.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The commit d5370f754875 ("arm64: prefetch: add alternative pattern for
CPUs without a prefetcher") introduced MIDR_IS_CPU_MODEL_RANGE() to be
used in has_no_hw_prefetch() with rv_min=0 which generates a compilation
warning from GCC,

In file included from ./arch/arm64/include/asm/cache.h:8,
               from ./include/linux/cache.h:6,
               from ./include/linux/printk.h:9,
               from ./include/linux/kernel.h:15,
               from ./include/linux/cpumask.h:10,
               from arch/arm64/kernel/cpufeature.c:11:
arch/arm64/kernel/cpufeature.c: In function 'has_no_hw_prefetch':
./arch/arm64/include/asm/cputype.h:59:26: warning: comparison of
unsigned expression >= 0 is always true [-Wtype-limits]
_model == (model) && rv >= (rv_min) && rv <= (rv_max);  \
                        ^~
arch/arm64/kernel/cpufeature.c:889:9: note: in expansion of macro
'MIDR_IS_CPU_MODEL_RANGE'
return MIDR_IS_CPU_MODEL_RANGE(midr, MIDR_THUNDERX,
       ^~~~~~~~~~~~~~~~~~~~~~~

Fix it by converting MIDR_IS_CPU_MODEL_RANGE to a static inline
function.

Signed-off-by: Qian Cai <cai@lca.pw>
---

v3: Convert MIDR_IS_CPU_MODEL_RANGE to a static inline function.
v2: Use "s32" for "rv", so "variant 0/revision 0" can be covered.

 arch/arm64/include/asm/cputype.h | 21 +++++++++++----------
 arch/arm64/kernel/cpufeature.c   |  2 +-
 2 files changed, 12 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/include/asm/cputype.h b/arch/arm64/include/asm/cputype.h
index e7d46631cc42..b1454d117cd2 100644
--- a/arch/arm64/include/asm/cputype.h
+++ b/arch/arm64/include/asm/cputype.h
@@ -51,14 +51,6 @@
 #define MIDR_CPU_MODEL_MASK (MIDR_IMPLEMENTOR_MASK | MIDR_PARTNUM_MASK | \
 			     MIDR_ARCHITECTURE_MASK)
 
-#define MIDR_IS_CPU_MODEL_RANGE(midr, model, rv_min, rv_max)		\
-({									\
-	u32 _model = (midr) & MIDR_CPU_MODEL_MASK;			\
-	u32 rv = (midr) & (MIDR_REVISION_MASK | MIDR_VARIANT_MASK);	\
-									\
-	_model == (model) && rv >= (rv_min) && rv <= (rv_max);		\
- })
-
 #define ARM_CPU_IMP_ARM			0x41
 #define ARM_CPU_IMP_APM			0x50
 #define ARM_CPU_IMP_CAVIUM		0x43
@@ -159,10 +151,19 @@ struct midr_range {
 #define MIDR_REV(m, v, r) MIDR_RANGE(m, v, r, v, r)
 #define MIDR_ALL_VERSIONS(m) MIDR_RANGE(m, 0, 0, 0xf, 0xf)
 
+static inline bool midr_is_cpu_model_range(u32 midr, u32 model, u32 rv_min,
+					   u32 rv_max)
+{
+	u32 _model = midr & MIDR_CPU_MODEL_MASK;
+	u32 rv = midr & (MIDR_REVISION_MASK | MIDR_VARIANT_MASK);
+
+	return _model == model && rv >= rv_min && rv <= rv_max;
+}
+
 static inline bool is_midr_in_range(u32 midr, struct midr_range const *range)
 {
-	return MIDR_IS_CPU_MODEL_RANGE(midr, range->model,
-				 range->rv_min, range->rv_max);
+	return midr_is_cpu_model_range(midr, range->model,
+				       range->rv_min, range->rv_max);
 }
 
 static inline bool
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index d19d14ba9ae4..95201e5ff5e1 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -886,7 +886,7 @@ static bool has_no_hw_prefetch(const struct arm64_cpu_capabilities *entry, int _
 	u32 midr = read_cpuid_id();
 
 	/* Cavium ThunderX pass 1.x and 2.x */
-	return MIDR_IS_CPU_MODEL_RANGE(midr, MIDR_THUNDERX,
+	return midr_is_cpu_model_range(midr, MIDR_THUNDERX,
 		MIDR_CPU_VAR_REV(0, 0),
 		MIDR_CPU_VAR_REV(1, MIDR_REVISION_MASK));
 }
-- 
2.20.1 (Apple Git-117)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
