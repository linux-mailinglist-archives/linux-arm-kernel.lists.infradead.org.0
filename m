Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E761B1E2430
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 16:35:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2tu0x7GabmyaGuLysIuRoGlKJCTirgnTIyDIFWdIb8U=; b=VIQD9g0zu5WaMF
	RAHCNqpx5Kf7BIfTvB/0i5thouYtawRo+VWJUjeAhAcmmEEHm4tCKx/99Kiz6YAKQKld3sKxnIEvL
	2yx+MYKyzNqFNB9iBAZFvYKyE6mcjnz7gdk6pQ8ktG6Z1pKh3pisDanEUYuShNOAe5m9lfhE3brY7
	lu55rSFyzah/YDboTp4ZjE+eLqUWlblH8kOpNFEML5LxGY22xcHVmQMmP6XprMHdHXtUkPIcoviw8
	zA4hTqZbawmjRUlYjfA/ZM/cADNjlJm1pswVUcvxLzbhBY/pIQ1XUK9E5DegYTTwq6jOiLW2K2P2z
	Iirj4OBSts1fenbwfmvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdafn-0006KT-H9; Tue, 26 May 2020 14:35:19 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdafa-0004qp-5u
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 14:35:07 +0000
Received: by mail-lf1-x144.google.com with SMTP id x22so12451994lfd.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 07:35:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VgPwhgH1AtmYNyCPWt1r/ltOLicvGTVzQfDi+55QEp4=;
 b=xq1mOaMzGVF16QfJ7wjonHQKMnTB+jwelOp7IjJSUk7SFBmzbjfzoXvWEP1MfZhzpw
 XM4v3USn6nWeUdp92PTNMMHNaqNj0gaGWfLOCzfRnpVgyEuO8yNJbVuBxUuY26bSPthh
 LQ+WBAHHGPM8hdFd9jUPKhqDvqWdEF5Majlkbdqk7nKDvYjlP/YGdRB9StxN3sXasVB+
 iN4iwJ/twzbrIPhqz1TIzWTh64V8oLhFMbfJtrnPjqLrBnkUpxwHs10Px4TJ6vDdIdP5
 Blmv587L9NAmFodkIkXrma5Id/KT/nM5x+MwZOlIBDp5lI5uRqYHGXngwJ7YLE+hxI/L
 +ofg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VgPwhgH1AtmYNyCPWt1r/ltOLicvGTVzQfDi+55QEp4=;
 b=MFWKfLeAQxSA/81E6+4GJ55obifX+nfTmqC014nyLVT+pszQ7t20d5tRqu/Ak5m9XF
 Amg3uN9PCW/vV6gVsBKRYpphjBNWQaUmAg5zeRXKfR9A+rR5xVkSXKfqWPNaclElBLGN
 DSg3wRMup2qa4umc+0FqWKcjTZSmjJ+5RkIQq4XJ+fKky+XAgDPdMDNTaOxp1NCeeugq
 mf1+4Yz5D3bG8rLKWHff8VQuVV9uLtxw/9WXZUynEP1eqWZW7np37wNzCwwg83aUXauF
 1XRRUoDDDGcxXiLv3SVT52Af+DPwx7izw4Um55AZ6xr0qhDRC/WvSBMo5hKOY9B/mP1I
 bvPQ==
X-Gm-Message-State: AOAM531iQdTSisivCD5FgduTx0CQpHPuAAWV/tJpoR/9CdxhPyf0MNcO
 +puTkDPZILbHgzy8IydcUGoknFygMjI=
X-Google-Smtp-Source: ABdhPJxBDaqRFRq0WpwHuu+JF/8ZgQkavWaTfM2IIrAgCZkRSdUmPHdHa+7tB7fC+dqRqRONSx8VCA==
X-Received: by 2002:ac2:560f:: with SMTP id v15mr686148lfd.160.1590503700068; 
 Tue, 26 May 2020 07:35:00 -0700 (PDT)
Received: from localhost.localdomain
 (c-8cdb225c.014-348-6c756e10.bbcust.telenor.se. [92.34.219.140])
 by smtp.gmail.com with ESMTPSA id t18sm4734116ljk.134.2020.05.26.07.34.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 07:34:59 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Russell King <linux@armlinux.org.uk>
Subject: [PATCH] ARM: mm: Simplify act_mm macro
Date: Tue, 26 May 2020 16:32:49 +0200
Message-Id: <20200526143249.68202-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_073506_250936_7EAE7E7E 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The act_mm assembly macro is actually partly reimplementing
get_thread_info so let's just use that.

Suggested-by: Russell King <linux@armlinux.org.uk>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/mm/proc-macros.S | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/arch/arm/mm/proc-macros.S b/arch/arm/mm/proc-macros.S
index 60ac7c5999a9..65eaea85d3d6 100644
--- a/arch/arm/mm/proc-macros.S
+++ b/arch/arm/mm/proc-macros.S
@@ -5,7 +5,6 @@
  *  VMA_VM_FLAGS
  *  VM_EXEC
  */
-#include <linux/const.h>
 #include <asm/asm-offsets.h>
 #include <asm/thread_info.h>
 
@@ -31,9 +30,7 @@
  * act_mm - get current->active_mm
  */
 	.macro	act_mm, rd
-	bic	\rd, sp, #(THREAD_SIZE - 1) & ~63
-	bic	\rd, \rd, #63
-	ldr	\rd, [\rd, #TI_TASK]
+	get_thread_info \rd
 	.if (TSK_ACTIVE_MM > IMM12_MASK)
 	add	\rd, \rd, #TSK_ACTIVE_MM & ~IMM12_MASK
 	.endif
-- 
2.25.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
