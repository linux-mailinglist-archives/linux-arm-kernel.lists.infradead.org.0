Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F09A1F92F6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 11:12:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ChfUixiFyx50TdANYhQcgNfkx0ZEPuOWev/USruORB4=; b=edVdmxIoB/gxuS
	FylV7KWa9lkrGCq+WvSUI/K7t3HAAkf3CKuIHCNh8b2HKl44MnAl8NDCqbEHN6Y7bkufnQMtoJf7w
	UFH9sg4zFVvZMkyVVm/trAt5adIcRJVrHQOJ+hJCD56d42/dRdrhYDict+8U5Jx2OBtCaNJgIDfH1
	RvKdkWLALqDjTypWKUdziIgFFbbuaWUyPopCsZJs1upr1lWHg6V54OfRtHrxz/17tw0L+f3NA7bKP
	4HjQz9Pv7EeUVdQxOMx4XAaXTbHIsuuSK2+FvXrrASIr5A8lbwP8C4inTHFbAePKy6EmeomhJQIjj
	qcNuP8KlSRj6RiKDbW6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jklAg-00034V-8U; Mon, 15 Jun 2020 09:12:50 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkl31-0000h5-Mj
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 09:04:59 +0000
Received: by mail-lj1-x243.google.com with SMTP id e4so18242647ljn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 02:04:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7EPxb0kRYQpuEwHo2iPR5KamrgoRtD6lcaTYymi/96Q=;
 b=YUTRVE4SiX0Qe0CKYEpzFtOwHywFGSOeY0wkkRLDeiRo0N9rB2l72gI0c68/BN00GZ
 sgq9514kmjH+zKycQGa8OeMuieCC370D5xtxha3q7pI0OL/YfVBhYMWcHtanMPCrp3El
 fsWBzkDRuLaySHzP0ZZBZH0gLhpwPyt+rs78xFai49auANYMclJp9+rIy4miIY6y3Pia
 ZIHOOx5J75ch7bgui0wHNpTRJiM0zWXALztlxkNQenP46mU1US/bTbmtltXYcnjib1jB
 75dLauZWbYvk32ojIR2af5vqUXmKzG5Vqi1GLjhM7cKvfitBBnO2BkFrDsJlFxBmgx9L
 ev3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7EPxb0kRYQpuEwHo2iPR5KamrgoRtD6lcaTYymi/96Q=;
 b=J3H5P0CTp8PMjCrVRg/HakVd9P0aG9EhmQVoca2urUiNhbObrHqX8h3pmNf3HCHaG+
 HO5ozm/wzKGszIy317GNmGeMUGU1+IA2p7ZC9CwUXv33yJQA0vlCF7imyVPmQQv/HMOI
 +zrrFafYrUcYTXjK7g+Mil5e8fJ0oj8IMABSnZnNgKFfe3xaLIAZkbpgGwVdJ9bxEult
 0nuy4AnP6fQSoMRi8kJaEumt5gFyy2FoiBNLGC2HScbkd1e6RnbwkZpXcmibj2LRusTm
 dE0xpuoUdyuMp/aC22FrB5CNcRE9DNpOXz+P+v0WIYU6BXop5JiDYtY5ByVDLWIwAqWC
 w9Fg==
X-Gm-Message-State: AOAM530pM6+afYRLF/aX4ouw/S2GW0kxCvQZomlhyNvcm4/edDOjUnc/
 XpO5ANED41WmIKuVE9IZkPXXXQ==
X-Google-Smtp-Source: ABdhPJxto74LKjBpcdihU36VwLgxuQidsh+0lZA8IWVCgKzRqES8ALPK6D2XBq92yF4kQ9wvJlLeew==
X-Received: by 2002:a2e:b5d9:: with SMTP id g25mr13384547ljn.285.1592211891665; 
 Mon, 15 Jun 2020 02:04:51 -0700 (PDT)
Received: from localhost.localdomain
 (c-92d7225c.014-348-6c756e10.bbcust.telenor.se. [92.34.215.146])
 by smtp.gmail.com with ESMTPSA id c78sm5284434lfd.63.2020.06.15.02.04.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 02:04:50 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Florian Fainelli <f.fainelli@gmail.com>,
 Abbott Liu <liuwenliang@huawei.com>, Russell King <linux@armlinux.org.uk>,
 Ard Biesheuvel <ardb@kernel.org>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Mike Rapoport <rppt@linux.ibm.com>
Subject: [PATCH 0/5 v10] KASan for Arm
Date: Mon, 15 Jun 2020 11:02:42 +0200
Message-Id: <20200615090247.5218-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_020455_796203_65C43D8B 
X-CRM114-Status: GOOD (  16.02  )
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
Cc: Linus Walleij <linus.walleij@linaro.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is the v10 version of the KASan patches for ARM.

Mainly a rebase and the initialization was rewritten to conform
to the introduction of p4d visibility in the ARM architecture.

ChangeLog v9->v10:

- Rewrote the memory initialization to be recursive, reuse the
  same functions in early and proper init() and to account for
  the introduction of p4d in the ARM architecture.

Caveat:

The Device Tree problem on Qualcomm APQ8060 and others is still
haunting me. The working assumption is that the memory where the
device tree is stored get corrupted during early boot. It is
unclear why but it could be related to the increased memory
consumption when using KASan.

Most tested platforms from ARMv4 thru ARMv7 work fine.


Abbott Liu (1):
  ARM: Define the virtual space of KASan's shadow region

Andrey Ryabinin (3):
  ARM: Disable KASan instrumentation for some code
  ARM: Replace string mem* functions for KASan
  ARM: Enable KASan for ARM

Linus Walleij (1):
  ARM: Initialize the mapping of KASan shadow memory

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
 arch/arm/include/asm/uaccess-asm.h            |   2 +-
 arch/arm/kernel/entry-armv.S                  |   3 +-
 arch/arm/kernel/entry-common.S                |   9 +-
 arch/arm/kernel/head-common.S                 |   7 +-
 arch/arm/kernel/setup.c                       |   2 +
 arch/arm/kernel/unwind.c                      |   6 +-
 arch/arm/lib/memcpy.S                         |   3 +
 arch/arm/lib/memmove.S                        |   5 +-
 arch/arm/lib/memset.S                         |   3 +
 arch/arm/mm/Makefile                          |   5 +
 arch/arm/mm/kasan_init.c                      | 304 ++++++++++++++++++
 arch/arm/mm/mmu.c                             |  18 ++
 arch/arm/mm/pgd.c                             |  15 +-
 arch/arm/vdso/Makefile                        |   2 +
 26 files changed, 562 insertions(+), 15 deletions(-)
 create mode 100644 arch/arm/include/asm/kasan.h
 create mode 100644 arch/arm/include/asm/kasan_def.h
 create mode 100644 arch/arm/mm/kasan_init.c

-- 
2.25.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
