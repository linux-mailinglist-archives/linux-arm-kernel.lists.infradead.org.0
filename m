Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACAF8F1835
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 15:15:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uP1+9tRIwTwlXeAhuGbDldWCfcvZL7oSUB3Ji0cy0HM=; b=MsXm+ZZ06FRG4o2RiABNBzp9xn
	Uk7z9JwsZXJQL1xYhDq3biE3T4O54wktAsiFZJRZqXgQas2EjGzwg86nwY3xYWmTla5vwuTGIxwU0
	0cyfITwY2zMeCxjiCRE6SDrLCxJv9y4X8RwKGXi/s/GeA8+Mn3A6W0fHAIb13V/n/eLgcrecLd6NO
	gny5v83aVQhaXWcPPkVRSSY4JWpSFfvGxVM5Zf24dbvT9Yvo4CxpCbLXd0m7nJjJJ6KQsu20snkcC
	H8/gAcuyh4ev0VpWphZCwxtzmGI0quNlujZEUaQOiT+4kg0UYGQxdilZdyPN7MhFzPgKfK5aCHzZ1
	sq0VSE1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSM5s-0002sZ-O5; Wed, 06 Nov 2019 14:15:32 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSM43-0008Ln-3m
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 14:13:41 +0000
Received: by mail-wm1-x342.google.com with SMTP id f3so3494148wmc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 06:13:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=d0srGooF0rUVSStaoSaPVl4d3tRFVDopwGFjT5DN+Wg=;
 b=Zt7Gm1T+U7ZFk4dp2KJZ4ivQM/cx3tQpRMnDTSvYsTCPaOs14OPmmARgBVQFEc+lD0
 wYz0WNdI63E1W72X/zcnwS74mw7NVDXzTtQkjtu03sHH5Tm2+jJJn8rorasVu2SPgGSa
 FXCvlLKDVIhnLqiwjxdmyrineQ1dQ8I/2Byaia80R9wHg/FW+fui6G2yTLgOEMsGu+94
 M+8Z2PiVw8Kk3wLLnI9gVlIlrXpzhhk5KjTYVkMAqTNit8YehzmBakPJCHH0g0XOT5+r
 EvOn6Zv32u5W8323sPpA6JDD/iM0DyWGqIGVDMHA+zaXXVcYLV1HROnbbjEYRp4JYyfT
 BHHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=d0srGooF0rUVSStaoSaPVl4d3tRFVDopwGFjT5DN+Wg=;
 b=Ug/pQlddeURaYgfoD+G4AlET/SczjwYdIcP1fMhdVhbq7CR3XhDcS/RdTTV/SYMc38
 UrlhNk2ZFsrjBCBLlO5qHS4GW5OR0lebJPJmfXyt0R07nZaKangSonOmwg8UKF1tT1vm
 NoPxG7jYCUXcVolbbANnn4eIYBoWicsY0EnlO07UUlySLGrnf9aRwn9ZP0TCDRqmW2an
 cbh+7UmzQ6FR/unf7VzoQMmX93pp4bHliQ6y/YfQFYGFaluGVm4WB9JqfRwZcbWriE6A
 cLRYd7GGQubSopQsVpAM958WvqfdHx/G3nri9SHsFwOZbjbyEH4AlYmWPYn5uZU1KA3T
 MMFg==
X-Gm-Message-State: APjAAAUjQG1fJsRkFAJhWV043PYpMtktiTCaiyRz5xdOQvByaxoSJgH2
 qwKDfIGMzpqQzDBT+Ij/OycRMg==
X-Google-Smtp-Source: APXvYqxNBDVKYhSw+hLyjEH+eUfDn+GxBE+Ubwz+XzjWaTbr9XmBN5lE9yxYUoj4EN0dp1g806RW4w==
X-Received: by 2002:a1c:2b82:: with SMTP id r124mr2757815wmr.112.1573049617471; 
 Wed, 06 Nov 2019 06:13:37 -0800 (PST)
Received: from localhost.localdomain
 (31.red-176-87-122.dynamicip.rima-tde.net. [176.87.122.31])
 by smtp.gmail.com with ESMTPSA id b3sm2837556wma.13.2019.11.06.06.13.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Nov 2019 06:13:37 -0800 (PST)
From: Richard Henderson <richard.henderson@linaro.org>
X-Google-Original-From: Richard Henderson <rth@twiddle.net>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v2 09/10] powerpc: Mark archrandom.h functions __must_check
Date: Wed,  6 Nov 2019 15:13:07 +0100
Message-Id: <20191106141308.30535-10-rth@twiddle.net>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191106141308.30535-1-rth@twiddle.net>
References: <20191106141308.30535-1-rth@twiddle.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_061339_172435_FD037C6F 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

We must not use the pointer output without validating the
success of the random read.

Acked-by: Michael Ellerman <mpe@ellerman.id.au>
Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
Signed-off-by: Richard Henderson <rth@twiddle.net>
---
 arch/powerpc/include/asm/archrandom.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/powerpc/include/asm/archrandom.h b/arch/powerpc/include/asm/archrandom.h
index 7766812e2355..60b8ad798743 100644
--- a/arch/powerpc/include/asm/archrandom.h
+++ b/arch/powerpc/include/asm/archrandom.h
@@ -6,17 +6,17 @@
 
 #include <asm/machdep.h>
 
-static inline bool arch_get_random_long(unsigned long *v)
+static inline bool __must_check arch_get_random_long(unsigned long *v)
 {
 	return false;
 }
 
-static inline bool arch_get_random_int(unsigned int *v)
+static inline bool __must_check arch_get_random_int(unsigned int *v)
 {
 	return false;
 }
 
-static inline bool arch_get_random_seed_long(unsigned long *v)
+static inline bool __must_check arch_get_random_seed_long(unsigned long *v)
 {
 	if (ppc_md.get_random_seed)
 		return ppc_md.get_random_seed(v);
@@ -24,7 +24,7 @@ static inline bool arch_get_random_seed_long(unsigned long *v)
 	return false;
 }
 
-static inline bool arch_get_random_seed_int(unsigned int *v)
+static inline bool __must_check arch_get_random_seed_int(unsigned int *v)
 {
 	unsigned long val;
 	bool rc;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
