Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35467F1832
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 15:14:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0c2oLgX5bHZKxHj1E+i3rrBO59/ZSCN6uto8BIGCYnw=; b=FF4d2pV/jtB5lMhRjqe89io4Ar
	9r4Tk2l7NPfORQVdmSaHlogG/X5FtnFg8WRlqzfZOo9kXYbEZe4E+KkAqkRof/aVHHc6t+xdXhfn1
	ED2qgcKe1+iCLxfQ+YU7bUwF0ykNuSQGhr7qbThoosqpT1dzY0EinH8ED8uDz0DzR1W2wgqiqM0/6
	ZO8/nZh/TxchDuN9Aecl6hzpM/+VVu71dmXSAtCmFEtiRwZ6p1mf34SaPpv3Wgk8g/YdaoAAZyDDj
	FQzXDLJ5Uyn2qwG7o5e1wWwoEmVo+TEwYEqjRjJKbScSiVuD/W4YBZeX4RWA2pirZdfSx/z3Bf3sJ
	nDtCNwbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSM55-0000og-RP; Wed, 06 Nov 2019 14:14:44 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSM3w-0008EK-5j
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 14:13:33 +0000
Received: by mail-wm1-x343.google.com with SMTP id t26so3523572wmi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 06:13:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=WSWMpSoTK1qPuZQMUXUs+rrNl9psDWT+JwajLc5x63s=;
 b=o3RLE9hugfNMGeayOKXMF63poaTZyNZSixnercrQpPsfWWgoGcVsahZ9wGvxqajkTL
 65VNFHB6mdXVYgOXplvY1kFNexysDEPq5Mte9WIOjqcg1aowVtTrhVDsnT0wub/uMIGv
 9plm99mfCRtSEw63V2+FJEO0avUTLLDH0v6gLjF9DVOTaBg6oIbNyb7sjS7eGkIP45xe
 49mB8MByUP2KQml5xF2ln4ggynO86gSJMmUBV6ZeCzC7nwpX1YYgQOkj2KBMtTdJsDRM
 SSr5E0h3bqcqVqwF535O59szwWAxXieho+zlqJlenhqMZUeXa7L9rW2HfuF4DfbrOvdy
 Hi6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=WSWMpSoTK1qPuZQMUXUs+rrNl9psDWT+JwajLc5x63s=;
 b=BZ4JvNaBPFeDVxl/m+g2hL33e1P3rNaZbETt5Kq48HmcDD/FuiOL2EIF+cewJbpBfF
 /oHCxqG4Sp5M3JW2ZO3O4Hr/xJO6W1w/ZFk2dRx/oUcQcgdLtqpYAJru+pddfYAA+qWT
 qw3slL7e+EanJLuUgpmROmPEhfl3bB7mpAg6y3Uoif1Nj7N9o3+GGg7WqG1Tvc8VdAuK
 mClmz//kOrYbsUcIqlDa9gUA6YPAD6pV0qX1E5MIdMD1sXCaBd6+Ad8fHQOCaOJriHC6
 8mPG78lSR2F2/rV4e3SojU1WRJpnMRpSdpItyypoBLWQRUJlkBjr5CMVGkIMD9Gj7dNG
 jDVQ==
X-Gm-Message-State: APjAAAX4P7avyVJc5PHqjwue9cehPnj2OWkcZsTkxEhlstx0JAFRdaIo
 sxBC/hRnHvikX59I/TKJky6p/Q==
X-Google-Smtp-Source: APXvYqwYT+P4BzTIZpyLp/lptFTQGB4DXq5HOBhfHF4antZVjWqLX7iHjEffS3qreneqv0oqdHj7Hw==
X-Received: by 2002:a1c:9a15:: with SMTP id c21mr2802805wme.93.1573049610656; 
 Wed, 06 Nov 2019 06:13:30 -0800 (PST)
Received: from localhost.localdomain
 (31.red-176-87-122.dynamicip.rima-tde.net. [176.87.122.31])
 by smtp.gmail.com with ESMTPSA id b3sm2837556wma.13.2019.11.06.06.13.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Nov 2019 06:13:30 -0800 (PST)
From: Richard Henderson <richard.henderson@linaro.org>
X-Google-Original-From: Richard Henderson <rth@twiddle.net>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v2 05/10] linux/random.h: Use false with bool
Date: Wed,  6 Nov 2019 15:13:03 +0100
Message-Id: <20191106141308.30535-6-rth@twiddle.net>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191106141308.30535-1-rth@twiddle.net>
References: <20191106141308.30535-1-rth@twiddle.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_061332_271181_F687983D 
X-CRM114-Status: GOOD (  11.85  )
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

Keep the generic fallback versions in sync with the other architecture
specific implementations and use the proper name for false.

Suggested-by: Ard Biesheuvel <ardb@kernel.org>
Signed-off-by: Richard Henderson <rth@twiddle.net>
---
 include/linux/random.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/include/linux/random.h b/include/linux/random.h
index 7fd0360908d2..ea0e2f5f1ec5 100644
--- a/include/linux/random.h
+++ b/include/linux/random.h
@@ -169,19 +169,19 @@ static inline void prandom_seed_state(struct rnd_state *state, u64 seed)
 #else
 static inline bool arch_get_random_long(unsigned long *v)
 {
-	return 0;
+	return false;
 }
 static inline bool arch_get_random_int(unsigned int *v)
 {
-	return 0;
+	return false;
 }
 static inline bool arch_get_random_seed_long(unsigned long *v)
 {
-	return 0;
+	return false;
 }
 static inline bool arch_get_random_seed_int(unsigned int *v)
 {
-	return 0;
+	return false;
 }
 #endif
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
