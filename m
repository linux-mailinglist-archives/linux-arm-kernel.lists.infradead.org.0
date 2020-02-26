Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4379816FF28
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 13:38:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Q/WYLsqjzrXTrqRKtb8rxGhJsSR+fBU9AFvqQ1CA8Rg=; b=CZ65aMpespmVpv
	PgL+WqGbGo2R7uLgpz7TxU2O8FVqklJQrLNDvD7TutGVlP8cStLDVDJwEWX1yPKjau+l6jAk6SkgJ
	d/9ZbEIrkJeEvEJplWEq+MTorom5eaqVDJuFKEZBMAN6GEUMV6YJ/9Ab3qTbceEwCFT5XEhzg07Qq
	fZamt6252slo9WBHgVKc6eM0KvKKYe4O5GB9Rn81gOLfC3DrbBiPSmt9uMmkdc3l5Q6LmAmSjUeiq
	7x97jQqPeXB3VXlL0wVR8G3JM7BsfwKbH/i6gtPy968QweFa6pf6U923cKroVmxuFHKHTtXqQhdWF
	IumPRUgLGPiOfbSB9xaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6vwz-00087Q-BW; Wed, 26 Feb 2020 12:38:05 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6vwr-000875-7R
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 12:37:58 +0000
Received: by mail-wr1-x442.google.com with SMTP id c13so2042378wrq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 04:37:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sl4g8ajpYIserr/BQNDB0ANlrWQPEujK3XWceCDD3wo=;
 b=CKyFnKt8NRqrqLsG2GKUG8spMykbSX80d8lFefHYx/YxDDov4oagC8bD1aeFvtJc+2
 wwG0r+gewGwOiySsrZUq9I87Qe00TXm5MAeyQqpk+1yv1nxjg7uUtDwJL755KPcAZU+h
 Ep7LacYEQ4v/GF2DeINbJb37TNvVw5F2DQBsA48x+HpLKqtGkxOO9VssuVU75Q8rC3Jt
 HZihKw+iQpDDzollv/eLIgf7mVmqC0b9NPdhpXIUziKshpeR9s5dPme4tonP9pz33EkW
 4gtoQ1a+rBbamgBwc+7JcU9A4NwmYocVDhiO8Aa2OCLky2/Yc5swKvtvll24NPrO0y4g
 ooXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sl4g8ajpYIserr/BQNDB0ANlrWQPEujK3XWceCDD3wo=;
 b=gSEd37hsCP7aGvnr7yaXooixzVUwd4ycg8Qfz+LzGVHCTZdpS85enN4jlC4fApzQUF
 1eBonu9LdxSnJ+ehyoL5SVi6gp+sNaukxOM5Ur6uDCaT9H6+0QpNKEMl22L1IaZ7qL2l
 pSqOhl6WaMMYmwRB9Tp/jlRkm34RaDpGy45+u7KKLKPNF/F2uly4X//JR1kwueXRSnY2
 1rwbqupemD5h2+AmOsMhaes+fdTB8+8OLzpZBNE7tGMkcoF6JQnH7A5iDi8WyJzOIBoW
 0b256yfKi/Xq+6kzooN6vVmqxuvHQUKYvgyp8oPPjswXmpxRXCyX/4jG4KXgergPu0ha
 z4NA==
X-Gm-Message-State: APjAAAXJvusQ0S+qyiWgXVETbA3+DXPmmy7I2qbnVMZ+6PnpQsDt/vPw
 nrlZT5kVhbVTm/A++tJ/cd9eJg+hM5M=
X-Google-Smtp-Source: APXvYqyS5pKZ++2YO+at6kjlY0Jri1wlYgGavHcMriREnRs6DsBgA19UTSe8ZMJarqrxlXQEjfMKAw==
X-Received: by 2002:a5d:488c:: with SMTP id g12mr5538501wrq.67.1582720675306; 
 Wed, 26 Feb 2020 04:37:55 -0800 (PST)
Received: from localhost.localdomain
 ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id f1sm3093345wro.85.2020.02.26.04.37.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 04:37:54 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: catalin.marinas@arm.com,
	will@kernel.org
Subject: [PATCH v2] arm64: context: Fix ASID limit in boot warning
Date: Wed, 26 Feb 2020 13:37:38 +0100
Message-Id: <20200226123738.582547-1-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_043757_269647_4D19F93B 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 linux-arm-kernel@lists.infradead.org
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
v1->v2: move warning to arch_initcall(), post capabilities (e.g. E0PD)
        discovery

This change may be a little invasive for just a validation warning, but
it will likely be needed later, in the asid-pinning patch I'd like to
introduce for IOMMU SVA.
---
 arch/arm64/mm/context.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/mm/context.c b/arch/arm64/mm/context.c
index 8ef73e89d514..efe98f0dcc89 100644
--- a/arch/arm64/mm/context.c
+++ b/arch/arm64/mm/context.c
@@ -260,14 +260,23 @@ asmlinkage void post_ttbr_update_workaround(void)
 			CONFIG_CAVIUM_ERRATUM_27456));
 }
 
-static int asids_init(void)
+static int asids_update_limit(void)
 {
-	asid_bits = get_cpu_asid_bits();
 	/*
 	 * Expect allocation after rollover to fail if we don't have at least
 	 * one more ASID than CPUs. ASID #0 is reserved for init_mm.
 	 */
-	WARN_ON(NUM_USER_ASIDS - 1 <= num_possible_cpus());
+	bool kpti = arm64_kernel_unmapped_at_el0();
+	unsigned long num_available_asids = (1UL << (asid_bits - kpti)) - 1;
+
+	WARN_ON(num_available_asids <= num_possible_cpus());
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
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
