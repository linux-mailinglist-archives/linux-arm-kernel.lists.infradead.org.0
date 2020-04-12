Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFEAF1A5BA0
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Apr 2020 02:26:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=shzDB5jYlAccM3neIjz7u452msZdpAG4OzJTil+gOlw=; b=ObnbnI1Duwg8eQ
	3zxG9bAWCaawfr5sKlw7tprEZaiabrtUbPON1iVPUmv55k7BrqzgOruSq2ZK+Kq8hCTKPPt3Om+os
	Kaa3vXokBoxVq5rz31f22cqkwhN6kRKGr1K06URSUOptsNnIuVYQDoCM/hRNhlw/l5OUbx7UszhSM
	RBHEpNnRtafEHeuh/hqPoBVv33wOEWMRhP4H+co4idSe/kL4kbi1dqdL9+52DLG16Ar1kdank9QtF
	0pv37F/iA2w/SqjMkqx3GqrrerwuXlUKjvwW4kInQyg0eKk6J0+DccaTmXVQjHVMwxj62pHnHHpo9
	r1NA7YrTN5DUIeSRS0JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNQSC-0003Na-Vt; Sun, 12 Apr 2020 00:26:29 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNQS5-0003N2-H8
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Apr 2020 00:26:24 +0000
Received: by mail-lj1-x243.google.com with SMTP id q19so5400882ljp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 11 Apr 2020 17:26:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nSSgT4EGfbw56/Wui+XfYhltEz1GFekJnaYBOkdFIYM=;
 b=hQlG4+zEySeQClesTODbCcpNxIaEWcCZVAtdQ2HJwR/S0x5no5sLRhAUChL5JW2UvR
 StBL/22rmn3ycD8he5M2/dR11oBl7h38a8ijDBhDUFjl4gLTILaKeBcGKNZ7C/AUa7/o
 9+M2I1NZBy9h2P5U6cszB93tVcPnVZy+08yWm9mEU2NJBI6bV6bQ18diIf0kp/EoRa/L
 2tA2+Ur5BvfVTIHooJWo91Y1bzUYmyqzGo7e+LWIVjx/feORT2mBgpgMqP8BCMBqkARe
 lqxKJXaCam0QDmwhGQPImipA7RPw1uZ6XV+/enqwAagPLU7uIYb4Y+s4KDM+uaM5cmQW
 oH/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nSSgT4EGfbw56/Wui+XfYhltEz1GFekJnaYBOkdFIYM=;
 b=Ucl2S5V+IgnKeWpHaCQkNDHKo8FBWRCXt9tNb+WUM5T4MrLC2oJzmijR4/6XIWi+tD
 tDByNDELbQVwd8iOFmTHdavVwMwVXc3z2CUQmsYQj3MwfF4rjEDCsYerN16qRYMEyHpB
 XXGQr5KA4nMvzTEnZSNxx3QSGrNyZ2QhqCaDl3bj3pm+CxTSvGrQebc8SCRz6KqifL19
 DrCZM+HoHfayCL3mIJ/V+Axdt5YQo+933DkHBRhypd57jdx4TegRX1SooDqGLbXpvqWi
 VWbbPBngh7PupP2usoPHIcwSkkH6ELTlZRdoBr+otFnA918KEN/iuMQRvIP9E31X0czt
 nWBQ==
X-Gm-Message-State: AGi0PubMFoBUgZJyfbLW/BphhRPAeeBphAizULAhjDuTuyUZIX8jOwLI
 a51W1Oz8WwFKFDOTwU8/VyvULQ==
X-Google-Smtp-Source: APiQypLAtC2EB9j7HzKlSg/D4gBXb3BmUhAi0hD2l8rZJed8vHjua06o6oUD3glotihk4AwUpz/GaA==
X-Received: by 2002:a2e:9907:: with SMTP id v7mr6392663lji.199.1586651177879; 
 Sat, 11 Apr 2020 17:26:17 -0700 (PDT)
Received: from localhost.localdomain
 (c-f3d7225c.014-348-6c756e10.bbcust.telenor.se. [92.34.215.243])
 by smtp.gmail.com with ESMTPSA id x29sm4907345lfn.64.2020.04.11.17.26.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 11 Apr 2020 17:26:16 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Florian Fainelli <f.fainelli@gmail.com>,
 Abbott Liu <liuwenliang@huawei.com>, Russell King <linux@armlinux.org.uk>,
 Ard Biesheuvel <ardb@kernel.org>, Andrey Ryabinin <aryabinin@virtuozzo.com>
Subject: [PATCH 0/5 v2] KASan for ARM
Date: Sun, 12 Apr 2020 02:24:02 +0200
Message-Id: <20200412002407.396790-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_172622_889003_2AFA55B7 
X-CRM114-Status: GOOD (  15.96  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I am trying to pick up this series.

I rebased it on what is soon v5.7-rc1 and fixed some bug
or two (see individual ChangeLog on the patches).

The main thing I need to fix here is the usage of TTBR0
in patch 4. This isn't working for machines without
TTBR0 obviously. I need help with the right approach
here.

I want to support all ARM CPUs that we support with the
kernel and it is not far off: I tried it in Faraday's
FA526 and it mostly works until we reach userspace
and my guess is that that is because of the TTBR0
shortcut it is taking.

What is interesting is that if I compile in the KASan
test module into the kernel, it performs most of the
tests correctly even on this old platform, so we only
have a few things to fix.

Abbott Liu (1):
  ARM: Define the virtual space of KASan's shadow region

Andrey Ryabinin (4):
  ARM: Disable KASan instrumentation for some code
  ARM: Replace memory functions for KASan
  ARM: Initialize the mapping of KASan shadow memory
  ARM: Enable KASan for ARM

 Documentation/dev-tools/kasan.rst     |   4 +-
 arch/arm/Kconfig                      |  10 +
 arch/arm/boot/compressed/Makefile     |   3 +
 arch/arm/include/asm/kasan.h          |  32 +++
 arch/arm/include/asm/kasan_def.h      |  81 +++++++
 arch/arm/include/asm/memory.h         |   5 +
 arch/arm/include/asm/pgalloc.h        |   9 +-
 arch/arm/include/asm/string.h         |  17 ++
 arch/arm/include/asm/thread_info.h    |   4 +
 arch/arm/kernel/entry-armv.S          |   5 +-
 arch/arm/kernel/entry-common.S        |   9 +-
 arch/arm/kernel/head-common.S         |   7 +-
 arch/arm/kernel/setup.c               |   2 +
 arch/arm/kernel/unwind.c              |   6 +-
 arch/arm/lib/memcpy.S                 |   3 +
 arch/arm/lib/memmove.S                |   5 +-
 arch/arm/lib/memset.S                 |   3 +
 arch/arm/mm/Makefile                  |   4 +
 arch/arm/mm/kasan_init.c              | 324 ++++++++++++++++++++++++++
 arch/arm/mm/mmu.c                     |   7 +-
 arch/arm/mm/pgd.c                     |  14 ++
 arch/arm/vdso/Makefile                |   2 +
 drivers/firmware/efi/libstub/Makefile |   5 +-
 23 files changed, 546 insertions(+), 15 deletions(-)
 create mode 100644 arch/arm/include/asm/kasan.h
 create mode 100644 arch/arm/include/asm/kasan_def.h
 create mode 100644 arch/arm/mm/kasan_init.c

-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
