Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA52D1C8B43
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 14:47:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jdQsSSeZaZfU/TBLpKxw98NaQK5ajo5DYxcXKSZtv4A=; b=h66Ghp0bNfsJt+
	i84BmIL+bNCALg+6czKsB6lh9Z3mFmo7EE9asY8RBpiv74prhHU3uqD+WOH0Qu2rtfQGa4vL67RJ4
	2e7CQBq0kJiVIz7zFHVL2VGC/XpzyPuIZ7nn5SYQowR6MSPztbuNdH9MqgUa1PNNKlpkEeqn9zooY
	I+JMn6k9glThq34J0cXJ7p2T4HcSRuOUxhqzAiDRePb4xv6C4wfI6DIy2buNXWColostnZgKpdsQi
	cqY62Cf0z470FGYlQM692xzyvFD9SpUlT+/aZ/A7EFW6ttPblsBkM9OH4VEFIFx+WTaMQQvaUVtfl
	mu9zoM+XlHGQzpottoFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWfwD-0003dl-ES; Thu, 07 May 2020 12:47:41 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWfw5-0003dR-DD
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 12:47:37 +0000
Received: by mail-lj1-x243.google.com with SMTP id f11so6189518ljp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 05:47:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lqPn5Uqqqbv3GywvQ9PqZtaNDbBkbD1A2nXmHrANXi8=;
 b=ZxTpW8LwdrsEW7TF6acI3Ig+nEdiigxMzVp2ZbnbBCiV06L8XTkb+3g4rhLr3O2DkT
 hHo112ZStFCw85SFGnRTL1X1kHVA/i15f0lkJ0lwZtFl720f/+ox0sdrIiE8kEu7dx+k
 cztrNruQcdaNrdwJ0VG1iZ0e4fvAwU1g5RWGlucgY8+TkOucFzqvB1qWzyM0dWXc9cYC
 jCfY3xHdVfZlqBGQKsOQdlBe3V2FkV31ENVLI5y2cfu3QlWeoCo0Q2/ERV8vz49ABQ8B
 +C9mwBX030zfaj+lA4kw94je20NhIZpjgJxUc1WR8X2AIk9wr7gul+VOzF1sMPCdsh3g
 bKAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lqPn5Uqqqbv3GywvQ9PqZtaNDbBkbD1A2nXmHrANXi8=;
 b=fwy3vUmBGN4NEVjVKHAlKWf6WXTUtBUTJhGguqW4Bcpp3IPGCUK6V583MxUHLmOAl7
 s18hISRNRuBtegBmCUK8ej2G0i2sNQjeoyJNVxrM6BErP0N2Mm9LQroD+UEV5c1uDC93
 /HAIJXQHi4kytsU50QF9pIIOegkVFB6SZRwfW815xiekVYiy8GEtY0yngjqPWZvxx+U7
 8GSWrgXN4cuzLDJ8Vr77qPqCxnEuX4U45zSACBHQBpsoRA5Ek4GICFTqpkVzznyIyi9I
 4thCxSEyI3VPc6y1Vb5RQobKlMgcJcPiIr97ttkVHWZizEgdbqQzRPE8lu8jCkpgvLwh
 nxgg==
X-Gm-Message-State: AGi0PubInhYRH4FIAwEqkXPfr7gCxqvDAes4B8t4ZyjudVndcIIOm37P
 w+bFSkYxlDlzqQJlgGwKnfzWGQ==
X-Google-Smtp-Source: APiQypIYKBBEjJU53fX1304WuId3o7/LIdiADRwwmw8RZNSGlVTg65i75szsKysSLUD5Nlu6tWGtAw==
X-Received: by 2002:a2e:89cb:: with SMTP id c11mr8521537ljk.121.1588855648916; 
 Thu, 07 May 2020 05:47:28 -0700 (PDT)
Received: from localhost.localdomain
 (c-f3d7225c.014-348-6c756e10.bbcust.telenor.se. [92.34.215.243])
 by smtp.gmail.com with ESMTPSA id b4sm3730126lfo.33.2020.05.07.05.47.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 May 2020 05:47:28 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Florian Fainelli <f.fainelli@gmail.com>,
 Abbott Liu <liuwenliang@huawei.com>, Russell King <linux@armlinux.org.uk>,
 Ard Biesheuvel <ardb@kernel.org>, Andrey Ryabinin <aryabinin@virtuozzo.com>
Subject: [PATCH 0/5 v8] KASan for Arm
Date: Thu,  7 May 2020 14:45:17 +0200
Message-Id: <20200507124522.171323-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_054735_939252_FE329498 
X-CRM114-Status: GOOD (  16.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linus Walleij <linus.walleij@linaro.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It's time to repost this, now that I got it into better shape.

Main changes:
- Restore the series number to v8 following my previous
  "v1" which was actually v7, following Florians versions.
  What was I thinking. :(
- Doesn't crash randomly in QEMU etc. This was because
  mmu.c was instrumented, and when we were lucky this did
  not poke around in memory that crashed us.
- Handle the undefined symbols better (like suggested by
  Ard)
- Fix up documentation.
- Better patch split in logical chunks.

Remaining issues:
- Does it work for you?
- Crash on ARMv5/v5 in v4wbi_flush_user_tlb_range+0x10/0x4c.
  I wonder why. If you know, please tell me, I naturally
  have to fix this.
- The code in kasan_init.c to first back up TTBR0 and then
  restore it looks *fragile* even if it is working. I think
  we need to do something better in a per-proc file such
  as is done in cpu_v7_switch_mm() and other well organized
  MMU manipulation, I certainly feel this should be done
  like that.

Abbott Liu (1):
  ARM: Define the virtual space of KASan's shadow region

Andrey Ryabinin (4):
  ARM: Disable KASan instrumentation for some code
  ARM: Replace string mem* functions for KASan
  ARM: Initialize the mapping of KASan shadow memory
  ARM: Enable KASan for ARM

 Documentation/arm/memory.rst       |   5 +
 Documentation/dev-tools/kasan.rst  |   4 +-
 arch/arm/Kconfig                   |  10 +
 arch/arm/boot/compressed/Makefile  |   1 +
 arch/arm/boot/compressed/string.c  |  19 ++
 arch/arm/include/asm/kasan.h       |  32 +++
 arch/arm/include/asm/kasan_def.h   |  81 ++++++++
 arch/arm/include/asm/memory.h      |   5 +
 arch/arm/include/asm/pgalloc.h     |   9 +-
 arch/arm/include/asm/string.h      |  21 ++
 arch/arm/include/asm/thread_info.h |   4 +
 arch/arm/kernel/entry-armv.S       |   5 +-
 arch/arm/kernel/entry-common.S     |   9 +-
 arch/arm/kernel/head-common.S      |   7 +-
 arch/arm/kernel/setup.c            |   2 +
 arch/arm/kernel/unwind.c           |   6 +-
 arch/arm/lib/memcpy.S              |   3 +
 arch/arm/lib/memmove.S             |   5 +-
 arch/arm/lib/memset.S              |   3 +
 arch/arm/mm/Makefile               |   5 +
 arch/arm/mm/kasan_init.c           | 324 +++++++++++++++++++++++++++++
 arch/arm/mm/mmu.c                  |  18 ++
 arch/arm/mm/pgd.c                  |  15 +-
 arch/arm/vdso/Makefile             |   2 +
 24 files changed, 581 insertions(+), 14 deletions(-)
 create mode 100644 arch/arm/include/asm/kasan.h
 create mode 100644 arch/arm/include/asm/kasan_def.h
 create mode 100644 arch/arm/mm/kasan_init.c

-- 
2.25.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
