Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C06091FD064
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 17:10:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W3azw8pa7FmskFcMKfgnGGrknHM5jwHM9OH0dfTROWM=; b=QhnfVHBn/zh2hY
	sd9/l1tNC97wvZdzCOw1raVivgqp2l0auuA8uLwYgDgjix9vS43rCMdvAlr3Xnj7FhnKPVopSQUF9
	TOz9lOZN40xeTQXo3VgJSk8A2vkvcX/4H45oAGtaEccrn3BNG74OikE7tC6vkqoAi7MRaOAJWCT3J
	CniW6i3h/0bsEMsUz3mtPGb2Hiwtjo3Ahae9hfeao/FSruh0kkEN2kMmSL3j1KWhmSTnY0aSmEodr
	8e75Hco7WfIUz9nZd4lMn6bdzprbKyxZ0U14wxbBI4oAU+VQOTxn3TR+EmR+JaH9J75rXuH9uex1k
	S6xm+ni98svdDT9Is/Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlZhU-0002PW-RN; Wed, 17 Jun 2020 15:10:04 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlZgP-0001Tc-33
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 15:08:58 +0000
Received: by mail-wr1-x442.google.com with SMTP id x6so2689212wrm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 08:08:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=+VNaCgKeSAnsN+2G9TGu/G00Sb3RTAWKbG0yrAPTqfc=;
 b=PjRd+YJaVQBUHQNA2/1ldZGAZDRGPLRJx6vn4bQ/rNkgw9VAr96cilJKYUFZfEaDA+
 HzU3AK3wJJQUDymlKwFpdQU8KjP99QeVmcn0bJsycQ7Wq5D+9EtJX0t2wxQ9iKJUqtbY
 tx+yLFVYPNGBR+uRQxD/S1Rez637Q7fxDxX81mpy6WoiSnRsothG21jfzqCrGGP5bkqy
 0GzHx/6bP6bsZjd8PkZSKBQpPddWd2Udbro03r3t9L7GMOohEYk3boX0FZsEtZ4ewoB8
 zXP8f2QUPfY9jxga/X7alS3BShywjSYVxo2Sty0oyjTNRupb+B3rgvceGjh8LZWY2PMt
 xrqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+VNaCgKeSAnsN+2G9TGu/G00Sb3RTAWKbG0yrAPTqfc=;
 b=WSmaFK65tV05SraXwFcj4PsfbfJfGpdW0HO/+W/EizIfXkXDiwaZf4lMTESokLWveL
 Y1VHoBPKsIcZPwWkY3igZsdPL4XQctCpL+lW4CrjwCzV7bULpXmHJfQ/sxBo+cooHzYd
 /3dUpr9lEmq/YQ+acJXNXLCkeFHZAG9HnuLSgM9vjSXcPyt+wVAZLVzMB5u9nXhFhxG8
 F0X9KCbi44mjlPBJC+dnJ4lLIdhFnOWbu9MvG2p5B864guhnJFKGLKqXI26L6V7PacE8
 E/2oJj9cvRYGO1DQvm9eF3SMeGbh49n7yGpQxp/6MyKF95i1P7L3yqvUTLIT9FaWjtlG
 uP0Q==
X-Gm-Message-State: AOAM533UjsWi68F0hqtLHdEbTU7pJ/VP8Ep5hBDDmAAPOqcIvpjCwU5p
 8dUtwHq/vq0GzWXIx+ZWMfiRtA==
X-Google-Smtp-Source: ABdhPJxX7JM0uX3X/Kwlok22E/PAQtWSfiY6CgMnhY7NTYOH/rojgKo8V80hqDPFuNDj3usNnCAXbA==
X-Received: by 2002:a5d:4a4d:: with SMTP id v13mr1522923wrs.142.1592406534608; 
 Wed, 17 Jun 2020 08:08:54 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id j18sm35640740wrn.59.2020.06.17.08.08.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 08:08:53 -0700 (PDT)
Date: Wed, 17 Jun 2020 16:08:50 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 00/17] Modularizing Versatile Express
Message-ID: <20200617150850.t23gwj3p2qnduq2a@holly.lan>
References: <20200429205825.10604-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429205825.10604-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_080857_231761_323F7C86 
X-CRM114-Status: GOOD (  19.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>, Liviu Dudau <liviu.dudau@arm.com>,
 Sebastian Reichel <sre@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Lee Jones <lee.jones@linaro.org>,
 Will Deacon <will@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 03:58:09PM -0500, Rob Herring wrote:
> This series enables building various Versatile Express platform drivers
> as modules. The primary target is the Fast Model FVP which is supported
> in Android. As Android is moving towards their GKI, or generic kernel,
> the hardware support has to be in modules. Currently ARCH_VEXPRESS
> enables several built-in only drivers. Some of these are needed, but
> some are only needed for older 32-bit VExpress platforms and can just
> be disabled. For FVP, the pl111 display driver is needed. The pl111
> driver depends on vexpress-osc clocks which had a dependency chain of
> vexpress-config --> vexpress-syscfg --> vexpress-sysreg. These
> components relied on fixed initcall ordering and didn't support deferred
> probe which would have complicated making them modules. All these levels
> of abstraction are needlessly complicated, so this series simplifies
> things a bit by merging the vexpress-config and vexpress-syscfg
> functionality.
> 
> There's a couple of other pieces to this which I've sent out separately
> as they don't have dependencies with this series. The cross subsystem
> dependencies in this series are mainly the ordering of enabling drivers
> as modules.

This series results in the vexpress-a15 console not coming up until very
late in the boot process because the console arch_initcall() ends up
being deferred because it's dependencies are no longer use
core_initcall() to ensure they get in first.

Is there a problem registering vexpress-osc, vexpress-sysreg and
vexpress-config as core_initcall's so the console behaves nicely
when they are all compiled as built-ins?


Daniel.




> 
> A complete git branch is here[1]. Tested on Fast Model FVP Rev C.
> 
> v2:
> The major change is a boot fix for 32-bit VExpress platforms with patch 3.
> I also dropped 'power/reset: vexpress: Support building as a module' as it
> was incomplete and not needed for this series.
> 
> Rob
> 
> [1] git://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git vexpress-modules-v4
> 
> Rob Herring (16):
>   ARM: vexpress: Move vexpress_flags_set() into arch code
>   arm64: vexpress: Don't select CONFIG_POWER_RESET_VEXPRESS
>   amba: Retry adding deferred devices at late_initcall
>   clk: versatile: Rework kconfig structure
>   clk: versatile: Only enable SP810 on 32-bit by default
>   clk: vexpress-osc: Use the devres clock API variants
>   clk: vexpress-osc: Support building as a module
>   mfd: vexpress-sysreg: Drop selecting CONFIG_CLKSRC_MMIO
>   mfd: vexpress-sysreg: Drop unused syscon child devices
>   mfd: vexpress-sysreg: Use devres API variants
>   mfd: vexpress-sysreg: Support building as a module
>   bus: vexpress-config: Merge vexpress-syscfg into vexpress-config
>   bus: vexpress-config: simplify config bus probing
>   vexpress: Move setting master site to vexpress-config bus
>   bus: vexpress-config: Support building as module
>   ARM: vexpress: Don't select VEXPRESS_CONFIG
> 
>  arch/arm/mach-integrator/Kconfig         |   1 -
>  arch/arm/mach-realview/Kconfig           |   1 -
>  arch/arm/mach-versatile/Kconfig          |   1 -
>  arch/arm/mach-vexpress/Kconfig           |   4 -
>  arch/arm/mach-vexpress/core.h            |   1 +
>  arch/arm/mach-vexpress/dcscb.c           |   1 +
>  arch/arm/mach-vexpress/v2m.c             |  23 ++
>  arch/arm64/Kconfig.platforms             |   3 -
>  drivers/amba/bus.c                       |  14 +-
>  drivers/bus/Kconfig                      |   2 +-
>  drivers/bus/vexpress-config.c            | 354 ++++++++++++++++++-----
>  drivers/clk/Makefile                     |   2 +-
>  drivers/clk/versatile/Kconfig            |  24 +-
>  drivers/clk/versatile/clk-vexpress-osc.c |  20 +-
>  drivers/mfd/Kconfig                      |   5 +-
>  drivers/mfd/vexpress-sysreg.c            |  99 +------
>  drivers/misc/Kconfig                     |   9 -
>  drivers/misc/Makefile                    |   1 -
>  drivers/misc/vexpress-syscfg.c           | 280 ------------------
>  include/linux/vexpress.h                 |  30 --
>  20 files changed, 354 insertions(+), 521 deletions(-)
>  delete mode 100644 drivers/misc/vexpress-syscfg.c
> 
> 
> base-commit: 8f3d9f354286745c751374f5f1fcafee6b3f3136
> ---
> 2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
