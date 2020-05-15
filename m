Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EAEC1D4CE1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 13:42:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Tv67nebneydDyhHKdF+gbdjS4j/rBK8ukCYlbYQpSI0=; b=gfkrQIUEMCKMfJ
	sruwPYEXEoPOHgK4KBKsBSRG8fwIv46UYhLocSvNduIwkF1UWGPSVFrs0K/Jf4eao36gA/GJ5cdlk
	bMjPNB6HbV9VW23ZtHK6kDNzd0W5kfOwhpiIhB5fF7jVQXechEN6OCrqTCznt0DgVsQ4VNPEfKV9u
	E2o7w+aLCzaXO72Ti0vZ1SVhInKgo3MwzO5K/IqouGTN/hCs9nZcnbGWlUO3vTlM9ugs5pgfCinC2
	ul2fWEoPlq+I14dvPPo+gNtai6UsCkd/Iiblm/3Gwk2cLuZrtmwiq/hzJ+sN6H3taJyZyvoQ6ZnF2
	8feBug6cKoJ/f70tOVrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZYja-00017V-0v; Fri, 15 May 2020 11:42:34 +0000
Received: from mail-lf1-f68.google.com ([209.85.167.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZYht-0008Bt-9l
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 11:40:55 +0000
Received: by mail-lf1-f68.google.com with SMTP id a9so1537698lfb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 04:40:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=aAAXCCNupCeXj5L2cJng4wFA9ICiIPL+Nnm0aLx0jK0=;
 b=qwfvdxH8+Gpl4Yu42uZoSpJMtPLrQlvHdvCk5XVwncmLxPK8XbNVns+0CJYMZNX2kx
 HQyffjuyIv0Kh8g29Cbi7wBRBWce3gtJh6KDRZH2OLegnChKibYNllkQgwq7YYUR2NOn
 MMVKZLVgQm4kLbBRzUVMDO3t2NeXiYtpqCGwZweSiRt755tWH9gxshLzyXf+Vtjn9i20
 r1V+NJAxI9QYdYr4bIM0iL96twI/BItwJ+yFLt7ofZ9D+8+TT4Zl0S9hLk/4oeASI0+u
 G3Kna0RJNd9uwp2SlRAT7DJ6Vi6JembQSfIYeL0B21mJn6vvQ3jAEHvi+QHRVlhZ6EqW
 eScQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=aAAXCCNupCeXj5L2cJng4wFA9ICiIPL+Nnm0aLx0jK0=;
 b=I9hS9yGZJaIFN0FlEMwQketScuS8MmLtqFFm+6+gGsp2FiPKLMbYOI6iLNXtdlX9S8
 snsMihJHsH03/OssIEQHRFO2YJrT/Amk+iXw+o4beOTGBhVArcQa9u26h8YvklQwjDpS
 LhoUDfNmNyflYpualiRM4rtafda8morDRKsCLesx3Do//yQkhzoXEemqoTua4J7c3tLe
 7xpn+o3Cbw8nFgzz3aVtksTN3MLM2E4IeC8/VAdV2P0iLGF1jeEiBSQMCLlF4JTn0P15
 zFEQ6e4GCwCbwwM/9JRAmOgqkRwIcxq0nakZcpA59SYc4lcSDXQdvQnEA5fF9hnTjCYR
 /OZQ==
X-Gm-Message-State: AOAM533xZa4bz85YzXA1i41CqjisNag+MjjhUahTo7elV63dShPXpWd9
 UXqJaKpWZuFBfsEiEVfDibgWJA==
X-Google-Smtp-Source: ABdhPJzsoLSimnZKtTSo+TRxNStQML6vXqbMJTRre2xKhV5wijOqjCjyBWvq4uBZDxdkj/qGjYDBEA==
X-Received: by 2002:a19:644f:: with SMTP id b15mr2196237lfj.28.1589542842015; 
 Fri, 15 May 2020 04:40:42 -0700 (PDT)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id 130sm1218445lfl.37.2020.05.15.04.40.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 May 2020 04:40:41 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Florian Fainelli <f.fainelli@gmail.com>,
 Abbott Liu <liuwenliang@huawei.com>, Russell King <linux@armlinux.org.uk>,
 Ard Biesheuvel <ardb@kernel.org>, Andrey Ryabinin <aryabinin@virtuozzo.com>
Subject: [PATCH 0/5 v9] KASan for Arm
Date: Fri, 15 May 2020 13:40:23 +0200
Message-Id: <20200515114028.135674-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_044049_386611_926E1C66 
X-CRM114-Status: GOOD (  16.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.68 listed in wl.mailspike.net]
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
Cc: Linus Walleij <linus.walleij@linaro.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I fixed and debugged kasan so it is time to post it again!

It can also be picked from my evolving branch which include
the prerequisite commit:
https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-integrator.git/log/?h=kasan

ChangeLog v8->v9:

- Use Drop the custom CP15 manipulation and cache flushing for swapping
  TTBR0 and instead just use cpu_switch_mm() in the initialization
  code (smarter and probably better tested code path).
- Found the bug that was making KASan fail on ARMv4 and ARMv5, see
  the separate patch:
  https://lore.kernel.org/linux-arm-kernel/20200514135737.309146-1-linus.walleij@linaro.org/
- Tested extensively on a whole bunch of ARM systems, both QEMU and
  real hardware: it is quite solid. On the D-Link DNS-313 that has
  only 64 MB of memory, the OOM killer gets upset and start killing
  off processes with a default OpenWrt install but otherwise debugs
  nicely with KASan!

Caveat:

- One remaining issue: if the kernel is booted with attached device
  tree on an odd address, you can get crashes in the DT parser.
  Example: on the Qualcomm APQ8060 DragonBoard the first piece
  of physical address space that can be used by the kernel is at
  0x40200000 so you boot like this:
  fastboot --base 40200000 --cmdline "console=ttyMSM0,115200,n8" boot zImage
  This does *NOT* work but crashes in the DT parser.
  But if you boot on 0x50000000 instead:
  fastboot --base 50000000 --cmdline "console=ttyMSM0,115200,n8" boot zImage
  KASan works fine.
  So something is off when booting with KASan and odd physical memory
  configurations. I am digging into this.

Abbott Liu (1):
  ARM: Define the virtual space of KASan's shadow region

Andrey Ryabinin (4):
  ARM: Disable KASan instrumentation for some code
  ARM: Replace string mem* functions for KASan
  ARM: Initialize the mapping of KASan shadow memory
  ARM: Enable KASan for ARM

 Documentation/arm/memory.rst                  |   5 +
 Documentation/dev-tools/kasan.rst             |   4 +-
 .../features/debug/KASAN/arch-support.txt     |   2 +-
 arch/arm/Kconfig                              |  10 +
 arch/arm/boot/compressed/Makefile             |   1 +
 arch/arm/boot/compressed/string.c             |  19 ++
 arch/arm/include/asm/kasan.h                  |  32 ++
 arch/arm/include/asm/kasan_def.h              |  81 +++++
 arch/arm/include/asm/memory.h                 |   5 +
 arch/arm/include/asm/pgalloc.h                |   9 +-
 arch/arm/include/asm/string.h                 |  21 ++
 arch/arm/include/asm/thread_info.h            |   4 +
 arch/arm/kernel/entry-armv.S                  |   5 +-
 arch/arm/kernel/entry-common.S                |   9 +-
 arch/arm/kernel/head-common.S                 |   7 +-
 arch/arm/kernel/setup.c                       |   2 +
 arch/arm/kernel/unwind.c                      |   6 +-
 arch/arm/lib/memcpy.S                         |   3 +
 arch/arm/lib/memmove.S                        |   5 +-
 arch/arm/lib/memset.S                         |   3 +
 arch/arm/mm/Makefile                          |   5 +
 arch/arm/mm/kasan_init.c                      | 294 ++++++++++++++++++
 arch/arm/mm/mmu.c                             |  18 ++
 arch/arm/mm/pgd.c                             |  15 +-
 arch/arm/vdso/Makefile                        |   2 +
 25 files changed, 552 insertions(+), 15 deletions(-)
 create mode 100644 arch/arm/include/asm/kasan.h
 create mode 100644 arch/arm/include/asm/kasan_def.h
 create mode 100644 arch/arm/mm/kasan_init.c

-- 
2.25.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
