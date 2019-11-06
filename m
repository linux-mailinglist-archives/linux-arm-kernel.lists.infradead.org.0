Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36745F1813
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 15:14:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Yb4A9uzxQB0F+VDveG5Bx5kn4o5ep0SJjbRJy6dI6pc=; b=KbB8SjvZ1SS/vK2NULrXFyB1jU
	U/7Dh+g5Egaaf1ngb2Qfbcz4KRernQe7CqHUFYtuLuUTR8Q15db4XF5jszxgV65yw7iUp9TGcahQ9
	b/d0IuSONl7D3TrfaN8qhbPHIGav8GhLXqvODjm2X/fRFl5CCRKCInlHqRmJebWoMWlX8YqTSiNCJ
	7xQZtqOvHE3ThWJpvoaulCo8oE9NC4XvR5w4Orus1v3XOJFkL9/PEtiBOB7A0JnjjK9qHBtS02eOh
	9zl+Wkzh/+J/5Lf+mb5HjMR+m0yS8SaAaxSfoiTv17UCpBPtItlsvj2mSpRwece1kXNYu11M+8GF2
	3DKgmFvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSM4k-0000MS-J4; Wed, 06 Nov 2019 14:14:22 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSM3t-0008A6-Gg
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 14:13:30 +0000
Received: by mail-wm1-x344.google.com with SMTP id x4so3608926wmi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 06:13:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Bz6tm/Oq0JWNumhKoQOUWz+Q8JBAOdsIYOzjRyK0W9o=;
 b=jlbxIkKeL3Kg9sDbtCvzA0n80dNlWQeuKrHjCLy6JkLv+44YWN0XV/6Ri5hrDJmKx7
 RMw4nFFVFEbc3Y43ASQyDevRbQ1KafjwpXr/+E2NcnKi61gvBNO4T5/CoC/aVOJm1lF8
 afbdpOMvBrB1PiyE7mIkTCZmfFEppYlBRLE9bG4/7knt6uyuQCtc6yz3OfqEd7nJhW4y
 GaY42uHnvI3nskibfGwiI5um1+tf3nhRZnrxGC/x4jUZBdRvl7Ux9op1d4aYxNqMN6Yy
 Ugk6EsBMx1LG9OwSj5B/GAIoV5iSi0eBnC1ZNGpu0dDycG59m6by5s72ZnVqiH3P+Yu/
 polQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Bz6tm/Oq0JWNumhKoQOUWz+Q8JBAOdsIYOzjRyK0W9o=;
 b=pqZoO1XXpgFTbpfNiMaAOxtz4JvAfTvBS13l38XTi8HcgwwFoJv9PpvoRwBKsGxMrA
 kVchBlibZ3q5UhiyBsttZ3ZjqtP8AnvTpwTU9yXDTUBHJypAMPAdLl87JsGLOFebURBU
 rtBDuvN4X1H9Lo/S4JbsVnvwk0tCIqtS8+Cdr0dlIEKBj4UHnvaQQs3ly18eopEdGepj
 H7nuAldXgwB7pU/GoSOrFEpuhaduiH7rV0vkw/3OEUTfBS/Rac8zgOJlTu8cc18XoDwv
 oR9xIcK7e1iDgOjoyA91VdL6eb+K1YCtdFPEDegnvATNuAQ0mEDgK0P/utYU/rty2imh
 ICyw==
X-Gm-Message-State: APjAAAXM34Jg+m1MovAo+zyI4yKEZLWabI6spz4nPcI8jMS7uwLhAWNA
 f7zZd1MoYYwgKFbGN+pFEJ8nzw==
X-Google-Smtp-Source: APXvYqx0JMbMKxvkK6MwbV+885ST1BoFA+6H9mqlYYb0WUFjcxzb2zWqAt5vUgOEk43WSZGg8BgArw==
X-Received: by 2002:a05:600c:28c:: with SMTP id
 12mr2652459wmk.25.1573049607535; 
 Wed, 06 Nov 2019 06:13:27 -0800 (PST)
Received: from localhost.localdomain
 (31.red-176-87-122.dynamicip.rima-tde.net. [176.87.122.31])
 by smtp.gmail.com with ESMTPSA id b3sm2837556wma.13.2019.11.06.06.13.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Nov 2019 06:13:27 -0800 (PST)
From: Richard Henderson <richard.henderson@linaro.org>
X-Google-Original-From: Richard Henderson <rth@twiddle.net>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v2 03/10] s390: Remove arch_has_random, arch_has_random_seed
Date: Wed,  6 Nov 2019 15:13:01 +0100
Message-Id: <20191106141308.30535-4-rth@twiddle.net>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191106141308.30535-1-rth@twiddle.net>
References: <20191106141308.30535-1-rth@twiddle.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_061329_581057_ED1A7476 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

These symbols are currently part of the generic archrandom.h
interface, but are currently unused and can be removed.

Signed-off-by: Richard Henderson <rth@twiddle.net>
---
 arch/s390/include/asm/archrandom.h | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/arch/s390/include/asm/archrandom.h b/arch/s390/include/asm/archrandom.h
index c67b82dfa558..9a6835137a16 100644
--- a/arch/s390/include/asm/archrandom.h
+++ b/arch/s390/include/asm/archrandom.h
@@ -21,18 +21,6 @@ extern atomic64_t s390_arch_random_counter;
 
 bool s390_arch_random_generate(u8 *buf, unsigned int nbytes);
 
-static inline bool arch_has_random(void)
-{
-	return false;
-}
-
-static inline bool arch_has_random_seed(void)
-{
-	if (static_branch_likely(&s390_arch_random_available))
-		return true;
-	return false;
-}
-
 static inline bool arch_get_random_long(unsigned long *v)
 {
 	return false;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
