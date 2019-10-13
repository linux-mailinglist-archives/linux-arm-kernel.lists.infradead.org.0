Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B657D558D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 13 Oct 2019 11:52:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mI5sXnRnK5xwjxdMiGqf8CipnvP2K/8rSWtj1QdMEfM=; b=dCf
	DQ0Z94nhCqnUlyED7EXxE/ys/fSp9gU5K5aad3qDzgdXdjAlG3mt4kFkYmLQGYi6KJ0vNFrTfSkZW
	MnWaGAYQ9jmMEHw1sSWVMXkUBRCELLP/Jikj6utG7EkA5mGoiO1Lczmt1Na5SGaSlBNDslqd8Y6rG
	RLWqPpQ9vQtIcHCPqfmm+5D33u1eXqiMf/d31zkm/H6B2dZY1vCjK2vh1bf55ap4/6WO3UBzlTgKP
	6pwU/fphnphRH1bKUmHpiiCAR6F1r/mEQPiUwc+i7jK/mcuydmDRqMDYCyGQyRDyXe6fhON6iynj/
	IzyW7YznsOaQsZontS3uf4NZj5ECrpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJaYW-0007EM-4z; Sun, 13 Oct 2019 09:52:52 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJaYP-0007Du-Ao
 for linux-arm-kernel@lists.infradead.org; Sun, 13 Oct 2019 09:52:46 +0000
Received: by mail-pg1-x543.google.com with SMTP id e10so4349956pgd.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 13 Oct 2019 02:52:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=oVbcWGk35k5Q1qfCCoPLo5OTcQvgf1ti/1rQCVc1eng=;
 b=uMprRuYLykmiHhp5TBKFo3xKrwJZjIfvn/WUUhjJvFw/5EqmHG7xXSBalUKsN8jS6L
 u0ws98BpTp2RcemhERLAMQk2XRBdKJB0O+GgQjFBfu7nsf5HhIwh8Q2qWqQ4CYT6G1pi
 bnEjpA7SuCRPq1zueL/rfz5oFyOC2855zQaFXoLWcT2kFybar8QSxtzY4fj228tWxX0f
 068M4PJBKzA8sL8e2WBTdtSng00VvVtrwQDkfdx1VomYIKBua7OpbA8aKJE5BjF0acyD
 usI4Ir8j15abxFNnqcjuMeNuE6uH+XwnEzhWbNXKoT/Zp8sDkecWVT/sboQCeLfsxQMM
 5dYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=oVbcWGk35k5Q1qfCCoPLo5OTcQvgf1ti/1rQCVc1eng=;
 b=XNPa64Rdzoqrw6PAua2JtADT+QzNJKtEOhq94vmZNh7VwsJ7n5DKJ2BHV/EGBkXZiY
 wCJ2EJsEeoXAplOU0doDipANiIrnrqOW0kzrYe+S/ZLzjANDNSdsT135/+TTpocdgSsN
 GqZ53czHvthV9X05Lv7vgQHQjwgcg+TOy2lwRdXTkSixYL5P0UzY9IoWBm1x4s0wshC7
 4noIqG6bCD88naUn/pFD0wIYoytAhmoMd5O3a09OvMVr+6lhBCZqJfkvWgy+eXE+YUkv
 xzy57EsRRNubLKq0JqfpmHrcRCmxrb8mPsKfx275KNb23kkrO3jg3YBaEqJ/ix7/ZTcn
 qdDQ==
X-Gm-Message-State: APjAAAV03lNB1DW+TwyOk4yJXhwaTw8/d1yr50rfV71WoRemF8uPQTYS
 GrHX25ci1MsOSubQ9pXdMldfjS7r
X-Google-Smtp-Source: APXvYqyEhlVYUi1cjlL9F6YppEzIxRu9WBMCP3njIbsbqOUMH8o3eHPlhqT+QtLOXSZwZuU0M4V8Ew==
X-Received: by 2002:a62:ee01:: with SMTP id e1mr27248354pfi.3.1570960361910;
 Sun, 13 Oct 2019 02:52:41 -0700 (PDT)
Received: from localhost.localdomain ([106.51.243.12])
 by smtp.gmail.com with ESMTPSA id s18sm13205167pji.30.2019.10.13.02.52.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 13 Oct 2019 02:52:41 -0700 (PDT)
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Russell King <linux@armlinux.org.uk>,
 Vladimir Murzin <vladimir.murzin@arm.com>
Subject: [PATCH] ARM: v7m: remove register save to stack before svc
Date: Sun, 13 Oct 2019 15:22:37 +0530
Message-Id: <20191013095237.4413-1-afzal.mohd.ma@gmail.com>
X-Mailer: git-send-email 2.18.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_025245_395807_E08C9FDE 
X-CRM114-Status: GOOD (  10.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (afzal.mohd.ma[at]gmail.com)
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
Cc: linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

r0-r3 & r12 registers are saved & restored, before & after svc
respectively. Intention was to preserve those registers across thread to
handler mode switch.

On v7-M, hardware saves the register context upon exception in AAPCS
complaint way. Restoring r0-r3 & r12 is done from stack location where
hardware saves it, not from the location on stack where these registers
were saved.

To clarify, on stm32f429 discovery board:

1. before svc, sp - 0x90009ff8
2. r0-r3,r12 saved to 0x90009ff8 - 0x9000a00b
3. upon svc, h/w decrements sp by 32 & pushes registers onto stack
4. after svc,  sp - 0x90009fd8
5. r0-r3,r12 restored from 0x90009fd8 - 0x90009feb

Above means r0-r3,r12 is not restored from the location where they are
saved, but since hardware pushes the registers onto stack, the registers
are restored correctly.

Note that during register saving to stack (step 2), it goes past
0x9000a000. And it seems, based on objdump, there are global symbols
residing there, and it perhaps can cause issues on a non-XIP Kernel
(on XIP, data section is setup later).

Based on the analysis above, manually saving registers onto stack is at
best no-op and at worst can cause data section corruption. Hence remove
storing of registers onto stack before svc.

Fixes: b70cd406d7fe ("ARM: 8671/1: V7M: Preserve registers across switch from Thread to Handler mode")

Signed-off-by: afzal mohammed <afzal.mohd.ma@gmail.com>
---
 arch/arm/mm/proc-v7m.S | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/mm/proc-v7m.S b/arch/arm/mm/proc-v7m.S
index efebf4120a0c..1a49d503eafc 100644
--- a/arch/arm/mm/proc-v7m.S
+++ b/arch/arm/mm/proc-v7m.S
@@ -132,7 +132,6 @@ ENDPROC(cpu_cm7_proc_fin)
 	dsb
 	mov	r6, lr			@ save LR
 	ldr	sp, =init_thread_union + THREAD_START_SP
-	stmia	sp, {r0-r3, r12}
 	cpsie	i
 	svc	#0
 1:	cpsid	i
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
