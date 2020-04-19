Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC541AFC72
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 19:08:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1oYHGI1Ds+cF+Uu9NUcoOImjkOFX/gAurRSgztLM3mQ=; b=Mbl1FI1/qJ5oLG
	/DdJPWGYAn5ilxMsLCcPVsswqzne65E34ut+OR2qvH3XVMgwOyHFw6CSBtJsgf6J5BbDfHQqV4e8Z
	1XXMo3Xoe5Q4eQjuPXlO3jZQMduU73XcTXAq3HJKpLZC/IRa3fhcM8Bf5RrKlzvexpjro7OexU23C
	Oa4dZBZAtNjLBjisZ4O6zJoMKIHfZnM61fYgDvXzRBpMqzdCRu9++ZqXxZ9NUKQGWwJlH0q/W9VfT
	9mPyPtFXif0VnzoXZl6lojJzz4/po6tc/sIlve/2pLpIaHkqgxO4MNYId5qsAnpD6x3jGM/s46r87
	U8X3PslfyNn2q0FDaRdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQDQl-0001ha-Q4; Sun, 19 Apr 2020 17:08:31 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQDQV-0001gH-7G
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 17:08:16 +0000
Received: by mail-oi1-f194.google.com with SMTP id a2so2125457oia.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 10:08:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UkOoxFPOZSwtkQ3jPPRPGnUUdj04yB+81AESCw0IP4I=;
 b=Fc4RIOQqpOXDi8CsbRb6CNM0j7dtTKn8QdOQ/zgVPnEZKMa/14zkX68upcPTwjmfFU
 F1FJpkisApP6V0F/fH4G5SscucZ6qnrT+9ukEgIMNYzTY3uEV98K/l2qBdpeYiKiQWnf
 yxbyDMX3KlRGfqco4Pcu6s427jvTn4n/XzdxE2w5d72rbTzS4tEC73Tt5Rhkex4O0Kpk
 CZ6V2QDiQ7VReRmuvLCEJykf7ImG8v7ddcrEuxEA3zkrF/AaUSARXUnzyxsTrE3uGhbr
 WFgXpAtUFCXtdg+yXUomLa1ICVQDdvDiVAzATXG86pH08jyCGLpO2ySVFMCUCOOIrNgE
 XmEA==
X-Gm-Message-State: AGi0PubrpEyNosomG3FsITmaQC+LR8/rBcj6iUMyZ7lW30RATu78t+IV
 g21VCXHJlTMeLD8x+ZJR/g==
X-Google-Smtp-Source: APiQypLvLmvAdngacB2FLvtvW5eNlzo5ELiTv5EubT9pBJI0uhxmO0n9BcSwRiYhZN8jJTtJ8BYXXA==
X-Received: by 2002:aca:ad87:: with SMTP id w129mr7844827oie.173.1587316092388; 
 Sun, 19 Apr 2020 10:08:12 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id u205sm9661938oia.37.2020.04.19.10.08.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Apr 2020 10:08:11 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>,
 Liviu Dudau <liviu.dudau@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH 00/17] Modularizing Versatile Express
Date: Sun, 19 Apr 2020 12:07:53 -0500
Message-Id: <20200419170810.5738-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_100815_262328_A72ED8E7 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>, Sebastian Reichel <sre@kernel.org>,
 Will Deacon <will@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series enables building various Versatile Express platform drivers
as modules. The primary target is the Fast Model FVP which is supported
in Android. As Android is moving towards their GKI, or generic kernel,
the hardware support has to be in modules. Currently ARCH_VEXPRESS
enables several built-in only drivers. Some of these are needed, but
some are only needed for older 32-bit VExpress platforms and can just
be disabled. For FVP, the pl111 display driver is needed. The pl111
driver depends on vexpress-osc clocks which had a dependency chain of
vexpress-config --> vexpress-syscfg --> vexpress-sysreg. These
components relied on fixed initcall ordering and didn't support deferred
probe which would have complicated making them modules. All these levels
of abstraction are needlessly complicated, so this series simplifies
things a bit by merging the vexpress-config and vexpress-syscfg
functionality.

There's a couple of other pieces to this which I've sent out separately
as they don't have dependencies with this series. The cross subsystem
dependencies in this series are mainly the ordering of enabling drivers
as modules.

A complete git branch is here[1]. Tested on Fast Model FVP Rev C.

Rob

[1] git://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git vexpress-modules-v3

Rob Herring (17):
  ARM: vexpress: Move vexpress_flags_set() into arch code
  arm64: vexpress: Don't select CONFIG_POWER_RESET_VEXPRESS
  arm64: vexpress: Don't select CONFIG_VEXPRESS_CONFIG
  power/reset: vexpress: Support building as a module
  clk: versatile: Kill CONFIG_COMMON_CLK_VERSATILE
  clk: versatile: Only enable SP810 on 32-bit by default
  clk: vexpress-osc: Use the devres clock API variants
  clk: vexpress-osc: Support building as a module
  mfd: vexpress-sysreg: Drop selecting CONFIG_CLKSRC_MMIO
  mfd: vexpress-sysreg: Drop unused syscon child devices
  mfd: vexpress-sysreg: Use devres API variants
  mfd: vexpress-sysreg: Support building as a module
  bus: vexpress-config: Merge vexpress-syscfg into vexpress-config
  bus: vexpress-config: simplify config bus probing
  vexpress: Move site master init to vexpress-config bus
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
 drivers/bus/Kconfig                      |   2 +-
 drivers/bus/vexpress-config.c            | 354 ++++++++++++++++++-----
 drivers/clk/Makefile                     |   2 +-
 drivers/clk/versatile/Kconfig            |  15 +-
 drivers/clk/versatile/clk-vexpress-osc.c |  20 +-
 drivers/mfd/Kconfig                      |   5 +-
 drivers/mfd/vexpress-sysreg.c            |  99 +------
 drivers/misc/Kconfig                     |   9 -
 drivers/misc/Makefile                    |   1 -
 drivers/misc/vexpress-syscfg.c           | 280 ------------------
 drivers/power/reset/Kconfig              |   2 +-
 drivers/power/reset/vexpress-poweroff.c  |  10 +-
 include/linux/vexpress.h                 |  30 --
 21 files changed, 338 insertions(+), 526 deletions(-)
 delete mode 100644 drivers/misc/vexpress-syscfg.c

--
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
