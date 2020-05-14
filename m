Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E6D1D3201
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 16:00:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lF8PzfXN0KpxXNChCYVFYkoOO/dKmUYU0yBGHkjwC8E=; b=hqRmEctrH+SH4m
	QYlLNe2hZx2MjJPUpP5LadK5UezOuf35ldgxw/zXTTi/au9aRYAy4DIadiU8yOJ2v3Zc4TsmuvHGX
	yRZIRhYyXEiC1s4eOciJfj/iN1PQVUin4JhUtdUgDqoR6iRYZNVsaT/7dSmNLZy8mzTLQkVVxCeYU
	lAn/oAojvtC10+t3B31IB+DIyzQ58J8eW2+xTqeWjE028LGhDXq5+D1HpyHcjI0ECa7wjJG8uN/+r
	DccLU7naVcWtLv62CCcYo1iUfbGCbYcw+IlX1FT2xr2ScZsb1bx9/t1fMZY6MV8HP7lwnuryix/H4
	zznyrQK9SB/wi/obYIPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZEPL-0005sX-Ma; Thu, 14 May 2020 14:00:19 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZEOz-0005n2-LC
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 13:59:58 +0000
Received: by mail-lf1-x144.google.com with SMTP id a4so2674246lfh.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 06:59:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WnUlDnNzK7+DJG5UDSFcI3cqSSVjMPaMCZ8HGFvgL0A=;
 b=j0/EQNSZeUa7CnzIMdNb87qe0v/vcP7VtiRL0DXsHWNEYc4BgDWXupJWbZCuYg+ZIy
 dr1cAEKVwXBZ3AFd2sc/fPQ3DQKiF8ufWgGNxOXADnxZi3c773hJ3n9wh+0wPRpZBD3z
 lQA3xdl24mpUUq50ANqsbtO5PWZb5mQFnyIYWQc4o9H/702yoWw136PUEJI3kpUTUp1p
 5/BwuTjvncKPbmjcMmNBO3zNIGFErR0cidmY0ny9vMnGzuXDBOFhEv4WD3kypehHSXLp
 VUfoRoigSov1qX8RIWWCcEgXB36ML3Vge2tTdtvG2SdCmWYiLP6tQ9sum/b3TJXx3T4U
 9wew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WnUlDnNzK7+DJG5UDSFcI3cqSSVjMPaMCZ8HGFvgL0A=;
 b=Qs5ot+zeFIc/aYPcuAfW9JOoB7QYLF680pRhHtY9Y7RGPeUMbta2wDpf7N4O5KRXg+
 rUdze6CGwnpYflaU7QaRZtPPo2kreqKjwwOpvTWAjGf51t2tA3bupm+LfOFgJAWLdffS
 DfWup6ZI4VoGiNMyFSIqse6qHLU04FZRTLtm+Pxkg9m8vEhXH8GQyir6gA5h6LHLxTnB
 L8/j+tGMYtwyxmKOiHkeKM3b1E5kP9KCqtEsfpafvHJTyQ0gg2I+JNAniVq4jBPf2HCG
 AVcbm8JECEVNLfVF6zs20QHNZgT6gdKDLLMxI70V+sDH4Bh8RMGpxnn7TyUtryKjdsCV
 zMSw==
X-Gm-Message-State: AOAM532R73gL/48h+r/jtQbSsAG2p/0wudqv85kr/pdrMdjHkJ0ESlY9
 I37siini13ptyzzv39bjaKR49Q==
X-Google-Smtp-Source: ABdhPJwwgrTPqACpxvL6S97uRjm1Y2QKV8phAvRYzfXVwrBBqf3VldlbAkvNyemQS+iu5UVZkNfxyw==
X-Received: by 2002:ac2:5f03:: with SMTP id 3mr3400096lfq.200.1589464794960;
 Thu, 14 May 2020 06:59:54 -0700 (PDT)
Received: from localhost.localdomain
 (c-f3d7225c.014-348-6c756e10.bbcust.telenor.se. [92.34.215.243])
 by smtp.gmail.com with ESMTPSA id 125sm1941171lfc.75.2020.05.14.06.59.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 06:59:54 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Russell King <linux@armlinux.org.uk>
Subject: [PATCH] ARM: mm: make act_mm() respect THREAD_SIZE_ORDER
Date: Thu, 14 May 2020 15:57:37 +0200
Message-Id: <20200514135737.309146-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_065957_702054_5A546756 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Recent work with KASan exposed the folling hard-coded bitmask
in arch/arm/mm/proc-macros.S:

  bic     \rd, sp, #8128
  bic     \rd, \rd, #63

This forms the bitmask 0x1FFF that is coinciding with
(PAGE_SIZE << THREAD_SIZE_ORDER) - 1, this code was assuming
that THREAD_SIZE is always 8K (8192).

As KASan was increasing THREAD_SIZE_ORDER to 2, I ran into
this bug.

Fix it by this little oneline suggested by Ard:

  bic     \rd, sp, #(4095 << THREAD_SIZE_ORDER) & ~63

Cc: Ard Biesheuvel <ardb@kernel.org>
Cc: Florian Fainelli <f.fainelli@gmail.com>
Suggested-by: Ard Biesheuvel <ardb@kernel.org>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
I'm sending this as a separate preparatory fix as it is
a nice fix in its own right. I am now testing KASan on
ARMv4 and ARMv5 and with some minimal busybox userspace
it is quite possible to run it on even really small
devices like the Gemini-based routers and NAS from
D-Link.
---
 arch/arm/mm/proc-macros.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mm/proc-macros.S b/arch/arm/mm/proc-macros.S
index 5461d589a1e2..ba100b2d0ac2 100644
--- a/arch/arm/mm/proc-macros.S
+++ b/arch/arm/mm/proc-macros.S
@@ -30,7 +30,7 @@
  * act_mm - get current->active_mm
  */
 	.macro	act_mm, rd
-	bic	\rd, sp, #8128
+	bic	\rd, sp, #(4095 << THREAD_SIZE_ORDER) & ~63
 	bic	\rd, \rd, #63
 	ldr	\rd, [\rd, #TI_TASK]
 	.if (TSK_ACTIVE_MM > IMM12_MASK)
-- 
2.25.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
