Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7021D4E0B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 14:48:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=40WMbQ9Ewc+EnYEx9lt0M2e+tnKwc0KycAsYQeYBw+w=; b=SbNa0kLYG+HS9w
	dJvE8XkKpkbk6YA76QZoDDDogugpxXS7SsObgrXB1J/HAr01yoI3CjymVhal80ZGqDwRAzeak/uXJ
	UGyZ6ivR37/J4asnZLyf+JprNDM9GEQ3jkZ+ohdsutY+tpV9ZmvahFiq59F2UzKlhgKxIM7X64WYS
	WIibABfOddStsXtatXFPoy9zVoVUk33055R/W+dsnqogFAdOvN8MNdVxHXsjxDgJoW2zR6FwtuuxV
	ALziR1MswMBBwX3KT4hjXyB6S/VTnjZKhqq7UK2kuUFoADDC+T8OlVIsDGfKNnJlUDSH+tiRkMSsV
	33lzDvvlYUEJdlYtZ3Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZZlL-0006QY-4x; Fri, 15 May 2020 12:48:27 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZZl9-0006Py-Mh
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 12:48:20 +0000
Received: by mail-lf1-x144.google.com with SMTP id a4so1687975lfh.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 05:48:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uqY2abGn+lyV/Dt0onFieNOaXpKp3YHHE7+m9a6mwsA=;
 b=OowItSuSg0n07rH4ZNMfniE9xJOGGem9u3F+sZ/X0ZQNizjXi7KlconzHGEw4Teqjq
 f2u+rT/aBQXQOk7rK/ac3X+o9kngU/fdd/mQWqPfDQa/xUwZs5dQmTj4kzGvC6moVcx/
 MVOazR6qzjkMgue5COFQWKGYlWLE8twGqA5/BBA0Vt4XsvwrdHnY+/DVfSchZnjbTVSX
 zjIDHuJAqEVTABWnUN60jMzHSKetXlfYOc9aMR79j94mwroZECQD/38KbbKsGqUd3J2r
 wdA4Nw4OT4RShYuHFx+n91lxePzD3Ji9tJyfE48QlNRQBqBKRvenJXBjXbyxfDqY2LdA
 uobg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uqY2abGn+lyV/Dt0onFieNOaXpKp3YHHE7+m9a6mwsA=;
 b=ZuFbGeuubWiSDA63funm4OosgBHpkOeDht6urYqq8JLi++Qn+iH9OMeNW/7cefThDL
 gNNuBiahXMgwJskIKF4gk/8h7b2DHH8NmiL6hOtlvGmUoUo8UJBlI+2+D8N4ltZU0UMs
 4X9OsmVBpgpqpICBcA2HCHI8i5GDEEfyp+POpc0N9Z8DIkGBAlUvqMIboAAH8O9HWWX5
 Hw2NU0hPyk6d3qZSgfcCdTrD92UwK2imK82DX/1MHJV+4U4cNTnZDKW5JhvC/MG7TvTI
 InZ2fcwHRfJZg8nstzVPtRhLQsdhc6iQjJY7vzADVGTNOoDeR2LX9RTHVrZ2ZTekbsEt
 o7NQ==
X-Gm-Message-State: AOAM533/OKJLhrPFISubkeC3LslLITu7/GLhQeb4W3EjPVXZ7ZvNhu/u
 GrfDxW5ynYr2RbweeOQFGYBeyA==
X-Google-Smtp-Source: ABdhPJxsw2F26iysuLI/GaHJDjukZEyHPLDTwf9l1JjFHtB2tP+Pe42+66BYyuo5dyYgfZp718qx6w==
X-Received: by 2002:a19:f00b:: with SMTP id p11mr2347383lfc.210.1589546893463; 
 Fri, 15 May 2020 05:48:13 -0700 (PDT)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id x11sm1115352ljj.15.2020.05.15.05.48.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 May 2020 05:48:12 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Russell King <linux@armlinux.org.uk>
Subject: [PATCH v2] ARM: mm: make act_mm() respect THREAD_SIZE
Date: Fri, 15 May 2020 14:48:08 +0200
Message-Id: <20200515124808.213538-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_054816_125152_7B140560 
X-CRM114-Status: GOOD (  11.47  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

  bic     \rd, sp, #(THREAD_SIZE - 1) & ~63

Where THREAD_SIZE is defined using THREAD_SIZE_ORDER.

We have to also include <linux/const.h> since the THREAD_SIZE
expands to use the _AC() macro.

Cc: Ard Biesheuvel <ardb@kernel.org>
Cc: Florian Fainelli <f.fainelli@gmail.com>
Suggested-by: Ard Biesheuvel <ardb@kernel.org>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v1->v2:
- Change from using THREAD_SIZE_ORDER with a hardcoded
  page size constant to just using THREAD_SIZE - 1
  for the mask.
---
 arch/arm/mm/proc-macros.S | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mm/proc-macros.S b/arch/arm/mm/proc-macros.S
index 5461d589a1e2..60ac7c5999a9 100644
--- a/arch/arm/mm/proc-macros.S
+++ b/arch/arm/mm/proc-macros.S
@@ -5,6 +5,7 @@
  *  VMA_VM_FLAGS
  *  VM_EXEC
  */
+#include <linux/const.h>
 #include <asm/asm-offsets.h>
 #include <asm/thread_info.h>
 
@@ -30,7 +31,7 @@
  * act_mm - get current->active_mm
  */
 	.macro	act_mm, rd
-	bic	\rd, sp, #8128
+	bic	\rd, sp, #(THREAD_SIZE - 1) & ~63
 	bic	\rd, \rd, #63
 	ldr	\rd, [\rd, #TI_TASK]
 	.if (TSK_ACTIVE_MM > IMM12_MASK)
-- 
2.25.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
