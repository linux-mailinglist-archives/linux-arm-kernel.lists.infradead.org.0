Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A50EC55585
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 19:09:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xsiwDe8A8z11r18nnqP1T8M9O1FsKCtTMlLcUC78Chw=; b=nCZJIzYA0Bpl9D
	O5xQcM3X44QMZEvS8Ffcz4NmQS4/W8xWZULBD29t3Adh1WEUu1vaS9UylbFxL/C+GudnqQ/9+/GnU
	QghtdNm+MYRirvQAZJFOENRniNYRrRIzJdBMStszz3wD0BvMngw51xu9BZnMeWKjmUT4WfQ9madSJ
	W8LZZGrqiC5WLDSYivePG4o3ZD8hDkRvoDNk4sdsavCsFOTuZbNuBxPxNbcZwCsDS2L3xivvcvH7Y
	JJnYWu4Q0EFrG975kU8Wz4ulYA9woXhR0bQvomNyRes5A54WSMNC8KyMxyELTRu7Eqsy8Lk0dCSWj
	IUXnBewxeWZRdW+jzKcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfowh-0006Zj-F8; Tue, 25 Jun 2019 17:09:27 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfowW-0006Yv-02
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 17:09:17 +0000
Received: by mail-wr1-x444.google.com with SMTP id r16so18715377wrl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 10:09:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vA1n/ydxvoHzZILQBtLyNCsRaYpD/kQIwg8hSmdk0r0=;
 b=SpM2+XwcFODF7z2RYNIIcu9n1Q8GubLd93fiNq4VWmjQunc3IpxPSmaAdxkN1c34Ix
 NzEwFjFs5lWzFGdXmUo86IywD10lGap8ZQWgimyoS/K0RV4gqMUFubaLzQDxddGqNyEb
 /5Hu4GOWvLFCeJYBUKugDmUcuuJ58eEnaqf2h7iOIuKNpvQ3hDX3jg2ym4+x/P9ATkt4
 3T+BuWzDx9rEYU7dtdqYVvdrMGDUW3ccsQ1KKlafE+U7JFqBCT7U4aFVJ7yC0dFAyfjz
 Bf1t0T/6JSKiOp0nRESQbK/SMTu8Cdh9X2E0rIhxLWVPhKb2Rq8VptZYfCwuYRqZQo+/
 XmDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vA1n/ydxvoHzZILQBtLyNCsRaYpD/kQIwg8hSmdk0r0=;
 b=d1Rw7j3aFVRm0X1/UFJ1w0uyKDIbVvnH79pqO56ICZvNfKLMa60VugYecpVd2Xaczh
 PEGNDG6MgNNbhT/CJfaXj4hCPN+vOHNgOHtDk7tA/kx1SyIZgQkK/1MmYj9A2WaPiXVV
 7y3oPVPFSuNIsO/PZ8ukzJ8Jp0Uv+TYdRRsX2rwZpng27Izjmr3HHEn236Tdt/DPoZHs
 K4byp9fHkDVP52x/xioOUrnuct8gSx8fLBRa0X1KqRLUvjMq8O0xRMkEzBp9Tc/JAdW9
 817qiaLYPSbPgnAAzDqHPQgg2CndvxMBb9yGDtCVVZ4afbEsE7yD4d6IEVjUnlvzakNl
 lmXw==
X-Gm-Message-State: APjAAAXyw3uxslbBKI7WuWWyS3g8uHHkBN86utKvyXPU9tkE2FGdLm9A
 Upy5KM7GMKeDcV1Hkpdsq8xWpTUf5rU=
X-Google-Smtp-Source: APXvYqzckHiJZcXW3oqo1UPCYJFoj0JXkQ5pBxMPhPJWTFSXFYg5JG3nSZI89o7BmVVc2Qut4XiHRA==
X-Received: by 2002:a5d:6449:: with SMTP id d9mr59090265wrw.192.1561482553967; 
 Tue, 25 Jun 2019 10:09:13 -0700 (PDT)
Received: from localhost.localdomain (91-167-84-221.subs.proxad.net.
 [91.167.84.221])
 by smtp.gmail.com with ESMTPSA id b6sm12438429wrx.85.2019.06.25.10.09.12
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 10:09:13 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: kaslr: keep modules inside module region when KASAN is
 enabled
Date: Tue, 25 Jun 2019 19:08:54 +0200
Message-Id: <20190625170855.10250-1-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_100916_038763_6B5A02AA 
X-CRM114-Status: GOOD (  13.88  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: catalin.marinas@arm.com, will@kernel.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When KASLR and KASAN are both enabled, we keep the modules where they
are, and randomize the placement of the kernel so it is within 2 GB
of the module region. The reason for this is that putting modules in
the vmalloc region (like we normally do when KASLR is enabled) is not
possible in this case, given that the entire vmalloc region is already
backed by KASAN zero shadow pages, and so allocating dedicated KASAN
shadow space as required by loaded modules is not possible.

The default module allocation window is set to [_etext - 128MB, _etext]
in kaslr.c, which is appropriate for KASLR kernels booted without a
seed or with 'nokaslr' on the command line. However, as it turns out,
it is not quite correct for the KASAN case, since it still intersects
the vmalloc region at the top, where attempts to allocate shadow pages
will collide with the KASAN zero shadow pages, causing a WARN() and all
kinds of other trouble. So cap the top end to MODULES_END explicitly
when running with KASAN.

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 arch/arm64/kernel/module.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/module.c b/arch/arm64/kernel/module.c
index f713e2fc4d75..da17227d9e51 100644
--- a/arch/arm64/kernel/module.c
+++ b/arch/arm64/kernel/module.c
@@ -32,6 +32,7 @@
 
 void *module_alloc(unsigned long size)
 {
+	u64 module_alloc_end = module_alloc_base + MODULES_VSIZE;
 	gfp_t gfp_mask = GFP_KERNEL;
 	void *p;
 
@@ -39,9 +40,12 @@ void *module_alloc(unsigned long size)
 	if (IS_ENABLED(CONFIG_ARM64_MODULE_PLTS))
 		gfp_mask |= __GFP_NOWARN;
 
+	if (IS_ENABLED(CONFIG_KASAN))
+		/* don't exceed the static module region - see below */
+		module_alloc_end = MODULES_END;
+
 	p = __vmalloc_node_range(size, MODULE_ALIGN, module_alloc_base,
-				module_alloc_base + MODULES_VSIZE,
-				gfp_mask, PAGE_KERNEL_EXEC, 0,
+				module_alloc_end, gfp_mask, PAGE_KERNEL_EXEC, 0,
 				NUMA_NO_NODE, __builtin_return_address(0));
 
 	if (!p && IS_ENABLED(CONFIG_ARM64_MODULE_PLTS) &&
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
