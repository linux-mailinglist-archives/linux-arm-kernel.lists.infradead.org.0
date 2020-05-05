Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE1E1C5FCC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 20:13:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cfzkAvk4EZ2I7qKQAa/CUw6BhD0/gf2xm6zpIDESuis=; b=Mf4fxB2aCIqjJJ
	dp4RWS9b4hDSNOEC+4rFQeVpLuI+HZnnWFYjN78sF54vely2fTo/Q8h83s6A/4jmulyZpxb5c7bpZ
	oKsbeSC80J6yDnppaa56yY23E8juXrPQvuy1TDkRUfAqMJI7x2AuQCf4AvqyYpXcictLrb2jDRQMz
	1l7N8USosKZcNGQXOLUelm+v6aFSuxVKqiNaska6swNOgghOPOgKA10OHN4pNGW4cRtZd3H1KVYOL
	e3DI6lX0xkFD9FT4YncBoKZ4tBTXyMIxbhYw83xWdNtXbgCl2nwxgVkAPhjilF5CPAjO9vavS0Mer
	C8xXPTvlE+uezfm6zZ4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW24Z-0000la-IW; Tue, 05 May 2020 18:13:39 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW24S-0000lF-Oa
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 18:13:34 +0000
Received: by mail-oi1-x241.google.com with SMTP id r66so2817857oie.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 11:13:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=HXmtSejYEBTpQIDp8Wdf/nqxrs7gzn093Xj2LXXp5Ms=;
 b=VvnvMKSraEsaF24MqZoYSsidEnlMWAN8Ai9Ej2h1fPwQH/fhVGCXbVwZSEY/DaUuHp
 MWxxmfE+HSZ8+0AcFRFFy7EC3bs2+lk8hD0K4MuVT0xUW6/kHjjXd6cfEAv+AF0LFGn7
 yO+zftywJAntf7QvoCpiE/dG98/f0Y57zJojSuutRSua3FnZLzyb9CMZPaOXeR83P9iC
 0P1DcUcu0/P3Cg5uyn2fJdKx6GjugE3yMhcZ+fUWqSwlG16TErCBl4lTEce7PK9pilLm
 oMsmBnN6eqMaI6mK4GM3f8eH7iu8zLtxTObfLwa4G7xi4WLDhWo0msfmxGOdjAWIoj4x
 sddQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=HXmtSejYEBTpQIDp8Wdf/nqxrs7gzn093Xj2LXXp5Ms=;
 b=pquttO4JK+hPJwSUZ8yjhdq4dRYLHjAy2+RQDok7P7+FDgVIhUURt6j+XLumnmVjoD
 ALkzFSvG9BS7Zg3laEzwwfq7yUXxGrLeNs0g/xQvLxE7lGNXBxFczP4vhwDk1J9YE2An
 vpKjh3PHwUm9eI3ok499H3CxUknkBuGWx9xhuJQmnQ9ZLknj5xAbBVLFPq/nrct8Z+q2
 xTJnnE/cYN11vbFmQn+AxmxsdXwLh3x5H8zZLx8lWtPe2CjYv8qllm6lg4i38WSwPaBa
 GSmx822gKcbptygxHRxNGYavSxKHPh2N4rHvhXpcwXf/tk8FvTQgcUurVA/HB82/I/eA
 dyPQ==
X-Gm-Message-State: AGi0PubcnJj3KjvO9k6M5Wo3HeSr8F087fdH9EsKaY5if4CfplffkaG2
 Y6EFqNZwYNNXqpbBIVvFphiPJBh7fvr/hRgi9Q==
X-Google-Smtp-Source: APiQypLAq9dbV9yLo32EdrTSCxhvySACBvh5EAy6jqNT6a1thGF8kAoEMVdfsO0OsET6uXStKelWLx0u3ZYfCq3k47A=
X-Received: by 2002:aca:1904:: with SMTP id l4mr3480716oii.106.1588702411747; 
 Tue, 05 May 2020 11:13:31 -0700 (PDT)
MIME-Version: 1.0
From: Rob Herring <robherring2@gmail.com>
Date: Tue, 5 May 2020 13:13:20 -0500
Message-ID: <CAL_Jsq+qsuYWaJi2B7=Wt_F4MhHVE8QNKbykR4JTGFsbb28hCg@mail.gmail.com>
Subject: [GIT PULL] VExpress modularization
To: SoC Team <soc@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_111332_849601_9C0ABE75 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, Sudeep Holla <Sudeep.Holla@arm.com>,
 Lee Jones <lee.jones@linaro.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Arnd, Olof,

Sudeep suggested I just send this series direct to you, so please pull.

Rob


The following changes since commit ae83d0b416db002fe95601e7f97f64b59514d936:

  Linux 5.7-rc2 (2020-04-19 14:35:30 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git
tags/vexpress-modules-for-soc

for you to fetch changes up to e8f46b9aa6955c904178712261d254b44f577696:

  ARM: vexpress: Don't select VEXPRESS_CONFIG (2020-05-05 11:45:49 -0500)

----------------------------------------------------------------
VExpress modularization

This series enables building various Versatile Express platform drivers
as modules. The primary target is the Fast Model FVP which is supported
in Android. As Android is moving towards their GKI, or generic kernel,
the hardware support has to be in modules. Currently ARCH_VEXPRESS
enables several built-in only drivers. Some of these are needed, but
some are only needed for older 32-bit VExpress platforms and can just
be disabled.

----------------------------------------------------------------
Rob Herring (16):
      ARM: vexpress: Move vexpress_flags_set() into arch code
      arm64: vexpress: Don't select CONFIG_POWER_RESET_VEXPRESS
      amba: Retry adding deferred devices at late_initcall
      clk: versatile: Rework kconfig structure
      clk: versatile: Only enable SP810 on 32-bit by default
      clk: vexpress-osc: Use the devres clock API variants
      clk: vexpress-osc: Support building as a module
      mfd: vexpress-sysreg: Drop selecting CONFIG_CLKSRC_MMIO
      mfd: vexpress-sysreg: Drop unused syscon child devices
      mfd: vexpress-sysreg: Use devres API variants
      mfd: vexpress-sysreg: Support building as a module
      bus: vexpress-config: Merge vexpress-syscfg into vexpress-config
      bus: vexpress-config: simplify config bus probing
      vexpress: Move setting master site to vexpress-config bus
      bus: vexpress-config: Support building as module
      ARM: vexpress: Don't select VEXPRESS_CONFIG

 arch/arm/mach-integrator/Kconfig         |   1 -
 arch/arm/mach-realview/Kconfig           |   1 -
 arch/arm/mach-versatile/Kconfig          |   1 -
 arch/arm/mach-vexpress/Kconfig           |   4 -
 arch/arm/mach-vexpress/core.h            |   1 +
 arch/arm/mach-vexpress/dcscb.c           |   1 +
 arch/arm/mach-vexpress/v2m.c             |  23 ++
 arch/arm64/Kconfig.platforms             |   3 -
 drivers/amba/bus.c                       |  14 +-
 drivers/bus/Kconfig                      |   2 +-
 drivers/bus/vexpress-config.c            | 354 +++++++++++++++++++++++++------
 drivers/clk/Makefile                     |   2 +-
 drivers/clk/versatile/Kconfig            |  24 ++-
 drivers/clk/versatile/clk-vexpress-osc.c |  20 +-
 drivers/mfd/Kconfig                      |   5 +-
 drivers/mfd/vexpress-sysreg.c            |  99 +--------
 drivers/misc/Kconfig                     |   9 -
 drivers/misc/Makefile                    |   1 -
 drivers/misc/vexpress-syscfg.c           | 280 ------------------------
 include/linux/vexpress.h                 |  30 ---
 20 files changed, 354 insertions(+), 521 deletions(-)
 delete mode 100644 drivers/misc/vexpress-syscfg.c

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
