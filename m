Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF20EF1815
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 15:14:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wMhvH2yuO5k2T3Doi7Cu0gfBfAdWoqlGUdyoLYQDTk0=; b=bEqWTEs0VU1zuj/4wUC41RC8Mt
	CmLt7IOEwe96+dN7CaYAlPMNxRSiEgfaG7PT+9ABlJNROH9WkjR536OFBYSMPL1oeP6mJeqf1Huql
	BxtkwLN52aGS4DCGEdHvtjGoGbDyi+uYVo7EzkvWvjAXXEPKZaIM1pcUEneAP4YZFcWL33fz8K695
	+F3hgbP0IG7rRjQJrRY2H2x4vbiIMsZYFQtJfr0ya5xPlKk67/d7o2fyqL1y5o2dSJATRJ/5UJrvK
	VaSHEVHbMkHEAAucvaJpfdKZW3A3xMsUAvZkB53lHrZE5OrFDDxIUnxLypmOX+WGSjlwWWEFWabOv
	eAdUSdpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSM4s-0000dR-OO; Wed, 06 Nov 2019 14:14:30 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSM3v-0008CU-EX
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 14:13:32 +0000
Received: by mail-wm1-x343.google.com with SMTP id 8so3553812wmo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 06:13:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=QNZ1kA4q8aBB50NVJWu8PbKcs9AjHNKMK3pxZ9fNJP4=;
 b=Xf2Ks/Jq/ihGwNCma8VLqakFtNZHKXIuWjUMxPXRRbJUiPMCjNJdWtn/qgWP/5sax7
 Ujfw6TL3LrTHr+uDBhPChxFljQzS5xgGpRxtwOO3Cwx5CN9yZ8J+CA955DxnUVBtrQY9
 UQ1bY0WghbSRoxyO+YnPSEFpDzUjl87KqEH5SgdaSVeeYvhaF4C+6ymBYsygd0tMpK+B
 v1Ysb6J+hZxqg7dNd/kemAXJbzAWO4QDbjPoSV2WnuX18FdLVu+FkYfbLwr3DTApGJwK
 qos9OGs4AuUlU8h/o/Y+yYw2NPn+omvenj9islnObpixtFKklAt0n2mEtWosrHsO99wv
 YyoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=QNZ1kA4q8aBB50NVJWu8PbKcs9AjHNKMK3pxZ9fNJP4=;
 b=NGcZs+wTInEh8MUDH9LAf4mfR0pJFgVw6/d+NYVQUNi+Szk0rPlkVWLIi9j+Tg+XEP
 JIvR3IptAXOuruy3LRkjTcMBHHonZLzgLNAJKyz8c9jOA+LFGQcWXxWknDTfI/Rhm/zP
 +r/CVzyOxK7msjOJMVo50cTPymRZuYPfIGviqBQ7pHw3gUBmRc35IfSXNCek1hkwp8E0
 oTqnnifFn1yI7LYJL8G+QtdsBlGLCZxdwVDwDH3LiyMQZ8lYtQhM2Lzvk0cvc/sLJVsS
 KqELaKZnWumRhOvuufz0g+xg4Ur/t1qxR6Ps1fQGT9bWMpcY8tdteMhLl+mLa/6mWmVq
 VUVg==
X-Gm-Message-State: APjAAAWsgWjIsOlfQobwDPsZAM60VbvWL2elMOxM61Hm8hjXn69t8+rA
 SZdn0ywSxBiyvDbd2lwUHhYVng==
X-Google-Smtp-Source: APXvYqxlrxPHyV7WtfZwm6qyJvzgfUOUugHAQxtpX4eBnKipnxbgOwtoZZo0ZBiVDsCnO8UnT+Wz5A==
X-Received: by 2002:a1c:544b:: with SMTP id p11mr2802294wmi.46.1573049609122; 
 Wed, 06 Nov 2019 06:13:29 -0800 (PST)
Received: from localhost.localdomain
 (31.red-176-87-122.dynamicip.rima-tde.net. [176.87.122.31])
 by smtp.gmail.com with ESMTPSA id b3sm2837556wma.13.2019.11.06.06.13.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Nov 2019 06:13:28 -0800 (PST)
From: Richard Henderson <richard.henderson@linaro.org>
X-Google-Original-From: Richard Henderson <rth@twiddle.net>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v2 04/10] linux/random.h: Remove arch_has_random,
 arch_has_random_seed
Date: Wed,  6 Nov 2019 15:13:02 +0100
Message-Id: <20191106141308.30535-5-rth@twiddle.net>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191106141308.30535-1-rth@twiddle.net>
References: <20191106141308.30535-1-rth@twiddle.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_061331_569856_40716EAE 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

The arm64 version of archrandom.h will need to be able to test for
support and read the random number without preemption, so a separate
query predicate is not practical.

Since this part of the generic interface is unused, remove it.

Signed-off-by: Richard Henderson <rth@twiddle.net>
---
 include/linux/random.h | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/include/linux/random.h b/include/linux/random.h
index f189c927fdea..7fd0360908d2 100644
--- a/include/linux/random.h
+++ b/include/linux/random.h
@@ -175,10 +175,6 @@ static inline bool arch_get_random_int(unsigned int *v)
 {
 	return 0;
 }
-static inline bool arch_has_random(void)
-{
-	return 0;
-}
 static inline bool arch_get_random_seed_long(unsigned long *v)
 {
 	return 0;
@@ -187,10 +183,6 @@ static inline bool arch_get_random_seed_int(unsigned int *v)
 {
 	return 0;
 }
-static inline bool arch_has_random_seed(void)
-{
-	return 0;
-}
 #endif
 
 /* Pseudo random number generator from numerical recipes. */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
