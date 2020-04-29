Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E4581BE962
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 22:58:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MowkGMDQ5OrUNZws8hlPHD4+x5gW7vz85C5O99AcLzg=; b=ps26GHFnZ/ledC
	IIBjPeCiQrfusYj3XFma4SUyWWSV0WyGb9mjM1bdD3p8DZ/UJcQq/fAS65RxmFmU3RMI2WA6eFIc0
	xlmuMVymOi45dYlMZ7fGMeoUWErEuuQBUTDaArIVrlqWP6WCwc3qUg58YR5xDrt00v+fZZ/p2dFzp
	KCpyvbYXKSj0TPCSCqctAqECoFlTGI+plfUdmcXnXVgI89zlWf5uVEjudmzT9Fgm+Dnk94CBRaCpa
	fgvn/6XHW1depsdMTx2F1doxkeoLthqeZDmpEcd0olNFNuNZhVY+yuOlgI7sw2NwF2vGoa+NDaao0
	0gCh5lMhBUb37m3+Anew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTtn1-000530-Ko; Wed, 29 Apr 2020 20:58:43 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTtmn-00052J-0A
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 20:58:30 +0000
Received: by mail-ot1-f65.google.com with SMTP id j26so3009082ots.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 13:58:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MnHANIm3Lt/vh28RWXjD/MDMuUK3kNL3Hz3uh0uBuNk=;
 b=YNa6rLduXMJ1esULXPp0enf2/wcvs8nxejX+sAPfapydMUeGPSkdHveOxo5Dx+tUJo
 nAYGClRtNERyyFOAY6LFZvaYfyGAGGqhpjSD815BfDFp7M2l1Hyj7oE6GBNCU42nbD0v
 ftjrnFTwz1tqAzkQaG6eSkLoEm8Hxf1lKKVusV+AFPu7GQZ3r4VVPvpzfmRcIuPahClu
 /FRvWQkAeC3vT4YdVlV/Ad3KjwYIURLZxVO65vDSZ95+WwLY1+ir64ieE7eR4DONg4Li
 OJSYo27vhDBJbSdZ2sLApD9+oJF8ZXdbvaX49n90nebwOYgNr9/8mOL5zeY2gqvc5BFo
 Xaew==
X-Gm-Message-State: AGi0PuaDzk2i+egVvgYONXTiB05J97z7BALpjodI1/RMlrYZXQQu72cd
 BazRqO1SDjxr1RO+xnWZpA==
X-Google-Smtp-Source: APiQypIrHRKHQtFy0c/K7pk+j4P/vsiyNqYsBEwDCGgpoagGDyB7Mio4YrRyWmBtS8KUovUwq+wDbw==
X-Received: by 2002:a9d:6b13:: with SMTP id g19mr2806662otp.249.1588193907789; 
 Wed, 29 Apr 2020 13:58:27 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id z13sm653162oth.10.2020.04.29.13.58.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 13:58:27 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>,
 Liviu Dudau <liviu.dudau@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH v2 00/17] Modularizing Versatile Express
Date: Wed, 29 Apr 2020 15:58:09 -0500
Message-Id: <20200429205825.10604-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_135829_041067_49DC0812 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

v2:
The major change is a boot fix for 32-bit VExpress platforms with patch 3.
I also dropped 'power/reset: vexpress: Support building as a module' as it
was incomplete and not needed for this series.

Rob

[1] git://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git vexpress-modules-v4

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
 drivers/bus/vexpress-config.c            | 354 ++++++++++++++++++-----
 drivers/clk/Makefile                     |   2 +-
 drivers/clk/versatile/Kconfig            |  24 +-
 drivers/clk/versatile/clk-vexpress-osc.c |  20 +-
 drivers/mfd/Kconfig                      |   5 +-
 drivers/mfd/vexpress-sysreg.c            |  99 +------
 drivers/misc/Kconfig                     |   9 -
 drivers/misc/Makefile                    |   1 -
 drivers/misc/vexpress-syscfg.c           | 280 ------------------
 include/linux/vexpress.h                 |  30 --
 20 files changed, 354 insertions(+), 521 deletions(-)
 delete mode 100644 drivers/misc/vexpress-syscfg.c


base-commit: 8f3d9f354286745c751374f5f1fcafee6b3f3136
--
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
