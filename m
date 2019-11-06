Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F42F1839
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 15:15:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zkqB09xSv2RkHz58W5b5SQCw0ZjhZnwNDlQr/YHK/Io=; b=QWiDDn+0UfYP8yaTjrUsiBdrnz
	4f63RDSnPgM1scAG1BbjpENkYAHKwoC2c1hfWS9d/3sXhfp6Tyie3IqcauAbNDs4BJyczoTfsDWtX
	v+7iyAyD3+8bYGZViT6cIdl2qjjsZHiMmBtGcnhCEIolmQJC7dseHRQM4eOEozzmlghpDpIcRNZuP
	IPK4B3AXTedZFuuI7FkvouBYFzOY6/SwrFROQwRD30xedN33F36qiJ9rh9mAvsV52+eNdPjhorl6y
	edTaE6ovj51NqW+cHBPOhkrribfwxwwsXcMAj0VsGHXKADsesK0UqDXlDkQWxukc5MrMDSyYkEgzn
	R7IQwFcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSM68-00035F-4t; Wed, 06 Nov 2019 14:15:48 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSM42-0008K6-2i
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 14:13:39 +0000
Received: by mail-wr1-x442.google.com with SMTP id j15so5325435wrw.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 06:13:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=fqzAPQhanx5lXrgKjEv9uTOrlBIqmOP4j8raLoO2k80=;
 b=I2POX88ZgDVEIXbxSVYMlxZS/dZ7L9KVhUwt+3VSv9oM/hQnoUVFd/6BdiDiRkN72e
 mb3HIJ8zn335Mrlnm7+1kBy52YQr8iVQF2Ja5iGFzC2aYsdzlXapp9hOL4hr/d25WSIb
 TLlS5LGfym6UNlJ25r+k4XhtiyR+AcOmsf8KxheDxTBSYyezHh6NYY+RQW8omSd+sxht
 EExXnP+uHJklWzU8BZnUIUTZqb1eV8tqpuILEWnzNrXEiuexc65TTdG06IsXsKChYaG2
 M8rk6v6P9kDamxYzI4+MMtDD4T8sy85hVCZM4ztqGTKQTpNvGNLVZNDmZx/i/SqHqgJj
 0d0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=fqzAPQhanx5lXrgKjEv9uTOrlBIqmOP4j8raLoO2k80=;
 b=N8+VhujCK0MYPnQZotzd3ZxbO5LODYSbALp2oj3xgszA7gd2c2AbkqVn+oW8d4BPGC
 KFzmovqCZlcsXk+i9ObSAL3uIt/0Ur+9zKUG/rEPGh3bntkpPFTvcfdPS/SbjMfhdf32
 XlsePIocvdbRIplD4vWcv4Pjgvvq2iUWmVHDV/BOKGUveGnl5n1bsVHjIbKU40c2xwEq
 BDYiKoZ8dGtpvWIW6I1VzA/b4VbL4RLkHdaaJ9uzxOMWK6EJ+kAEvyhDfO9exX6Q7KPO
 XGrzm4PiAQgfuwhW6V3mkf57JW8Kz0u6sDE9kmbHSBEduAnIAVytaSuB51Y77ZSiKoQC
 CRHw==
X-Gm-Message-State: APjAAAW2+AEpZL3cdfDOFKhhHawESd1Qtjnam+WyuHwsxK4GnvRrB07O
 lls66AZ+pnm8RvgYgAu0qr6BXg==
X-Google-Smtp-Source: APXvYqx6m5i8d6WRVdHpkTE7+G9qJitHWAUl7IdCDvjMTeMctINMPoeFa1SZY80r+vkjd7EqisEAzw==
X-Received: by 2002:a05:6000:128c:: with SMTP id
 f12mr3122000wrx.279.1573049615963; 
 Wed, 06 Nov 2019 06:13:35 -0800 (PST)
Received: from localhost.localdomain
 (31.red-176-87-122.dynamicip.rima-tde.net. [176.87.122.31])
 by smtp.gmail.com with ESMTPSA id b3sm2837556wma.13.2019.11.06.06.13.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Nov 2019 06:13:35 -0800 (PST)
From: Richard Henderson <richard.henderson@linaro.org>
X-Google-Original-From: Richard Henderson <rth@twiddle.net>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v2 08/10] powerpc: Use bool in archrandom.h
Date: Wed,  6 Nov 2019 15:13:06 +0100
Message-Id: <20191106141308.30535-9-rth@twiddle.net>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191106141308.30535-1-rth@twiddle.net>
References: <20191106141308.30535-1-rth@twiddle.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_061338_161603_328D23C3 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 herbert@gondor.apana.org.au, x86@kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The generic interface uses bool not int; match that.

Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
Signed-off-by: Richard Henderson <rth@twiddle.net>
---
 arch/powerpc/include/asm/archrandom.h | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/arch/powerpc/include/asm/archrandom.h b/arch/powerpc/include/asm/archrandom.h
index c2ed3b4681f5..7766812e2355 100644
--- a/arch/powerpc/include/asm/archrandom.h
+++ b/arch/powerpc/include/asm/archrandom.h
@@ -6,27 +6,28 @@
 
 #include <asm/machdep.h>
 
-static inline int arch_get_random_long(unsigned long *v)
+static inline bool arch_get_random_long(unsigned long *v)
 {
-	return 0;
+	return false;
 }
 
-static inline int arch_get_random_int(unsigned int *v)
+static inline bool arch_get_random_int(unsigned int *v)
 {
-	return 0;
+	return false;
 }
 
-static inline int arch_get_random_seed_long(unsigned long *v)
+static inline bool arch_get_random_seed_long(unsigned long *v)
 {
 	if (ppc_md.get_random_seed)
 		return ppc_md.get_random_seed(v);
 
-	return 0;
+	return false;
 }
-static inline int arch_get_random_seed_int(unsigned int *v)
+
+static inline bool arch_get_random_seed_int(unsigned int *v)
 {
 	unsigned long val;
-	int rc;
+	bool rc;
 
 	rc = arch_get_random_long(&val);
 	if (rc)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
