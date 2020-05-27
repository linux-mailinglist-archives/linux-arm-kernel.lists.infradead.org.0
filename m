Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B06EF1E4203
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 14:24:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ebD8H3hh9ZWzKu/LK0cPiXeAoWkWP4ZN21ZowYU4+LA=; b=BKeMUPEq57FTSw
	1zoAsOgyBdt00mCNswRepHh87nVAm8G8NAyQy3fvaOq+lNHKXvUqA2czYKn5fH9AQyFkx1YRvw+Zd
	FWdOsGA5H4fS6skKuWfGu30e5Hep9XRXABoa9i4CxWU3ge7IXYUiynOV8D83OvehRFQ686UVUdOSm
	hDTYt6K9iPpvc29VdLEEwjrZiQCig2KGRCuX34b9ESpUuAhDyFkz2kKDyjn4ns5QPr+f2DYViohNK
	gVMuheFNPtwL2jBgaFFPYyl9wgZdoFp+CHaT/9cafcFB0vWdbeuTiIZAHE+yCt7FyCQs66Q1E8z64
	ESnCmGyI5WyZ4FGxSyAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdv6Y-0007Ql-SH; Wed, 27 May 2020 12:24:18 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdv6N-0007Py-7C
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 12:24:08 +0000
Received: by mail-lj1-x244.google.com with SMTP id v16so28685225ljc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 05:24:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tM0CgkbzZCppo0/FAsEjCVL3tTByqy9FZRD5jkPNIV8=;
 b=Zp1KwW8gOoQb+N9g2YkDcHkbS0vQS0JpPfvzS6NnZtdVw5ltVE8GYWCHBum6U8/3q0
 zN3wkLqgBAvqTYodizJMPcvBs3fR1gOacvnPVYkW5ZZKNP4fGv8jxjFR1X5JfecmHO92
 FFKZOQWcpQaANUd6Tg3DG+6j/P3DukHUMtlt51Mri0qLJtVIJgT11m8h4iGylOdaLe+Y
 kN7g/s54kmj8J+73MyCFimmlsWiv2/gc1IlbDRHyyYK4RtOnV6lMG+uyHpcKbAquYwNE
 7HSp3+TjD6QzqbkAC3b763/IoYWNexJetcR75qngd8vAXz97o8+vK9AkAdPv5pEDF/42
 54eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tM0CgkbzZCppo0/FAsEjCVL3tTByqy9FZRD5jkPNIV8=;
 b=BlhQC5zw6xXIOgs12DUUxKaFg3J9JneRi2rQyeMp8DP8+wfs3WhzvQdTkOrYKyMr0k
 0ngJ31OLcaVcdoZ+S3c+EA5hxTX4RElRyEhim8LmgywJ5HqcSOalV/X2mlLd5Q/dhx78
 oLcZ1lss1iRf47gvVG4v+DnEFMSlAnvH0DL1p0KJozbo3V1hh3jepZ8chuLx6CoiixCb
 a3NKOW8UXVj/GLr7TyeyZ94EIwG9h1ISKP2gXbkW4EO8BBu51x40kRpLiapsetOTM509
 NOXYnbonpo/oyyCqfzFgTJIZc32eIwpqg383z+5EL4GyXHbED1zn1CPUOBKlhfBAB445
 aPFg==
X-Gm-Message-State: AOAM533mwgaPjV2bZOl9KfSHdbM9CtKrUtY6T4cU1567siE37WYZf6Jo
 W3IMLDWsuq09VbdDpbsXcMDtfQ==
X-Google-Smtp-Source: ABdhPJwrZpYXd4k/FHu7zTppTHGwMqnQk9mk/gubCGBkDW7bmV1J3xDRshy14+kFf5vPSnKLKRWUjg==
X-Received: by 2002:a2e:7c17:: with SMTP id x23mr2714988ljc.307.1590582245404; 
 Wed, 27 May 2020 05:24:05 -0700 (PDT)
Received: from localhost.localdomain
 (c-8cdb225c.014-348-6c756e10.bbcust.telenor.se. [92.34.219.140])
 by smtp.gmail.com with ESMTPSA id t27sm660019ljo.114.2020.05.27.05.24.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 05:24:04 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Russell King <linux@armlinux.org.uk>
Subject: [PATCH] ARM: asm: Rewrite get_thread_info using BIC
Date: Wed, 27 May 2020 14:22:01 +0200
Message-Id: <20200527122201.124090-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_052407_264789_488DC183 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

By using two BIC instructions we can replace the ARM/thumb
split instructions with something that works on either
and also save one instruction.

Based on code from proc-macros.S and an idea from Ard
Biesheuvel.

We need to include <linux/const.h> to expand the
THREAD_SIZE definition properly in the preprocessor.

Suggested-by: Russell King <linux@armlinux.org.uk>
Suggested-by: Ard Biesheuvel <ardb@kernel.org>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/include/asm/assembler.h | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/arch/arm/include/asm/assembler.h b/arch/arm/include/asm/assembler.h
index 99929122dad7..f218e8cf7f88 100644
--- a/arch/arm/include/asm/assembler.h
+++ b/arch/arm/include/asm/assembler.h
@@ -17,6 +17,7 @@
 #error "Only include this from assembly code"
 #endif
 
+#include <linux/const.h>
 #include <asm/ptrace.h>
 #include <asm/domain.h>
 #include <asm/opcodes-virt.h>
@@ -203,10 +204,8 @@
  * Get current thread_info.
  */
 	.macro	get_thread_info, rd
- ARM(	mov	\rd, sp, lsr #THREAD_SIZE_ORDER + PAGE_SHIFT	)
- THUMB(	mov	\rd, sp			)
- THUMB(	lsr	\rd, \rd, #THREAD_SIZE_ORDER + PAGE_SHIFT	)
-	mov	\rd, \rd, lsl #THREAD_SIZE_ORDER + PAGE_SHIFT
+	bic	\rd, sp, #(THREAD_SIZE - 1) & ~63
+	bic	\rd, \rd, #63
 	.endm
 
 /*
-- 
2.25.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
