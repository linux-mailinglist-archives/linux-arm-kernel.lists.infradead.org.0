Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C131D1C94
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 19:50:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PAQGvPhqAc/QRfhOxZKnhdlJvqAMx4d0gBPbPYRVvwE=; b=sFA9qcCzGm7N1b
	L27bCGTuaSsbbDTUp0if91R4p698EV+xEO8Gm0yzyQxSi/KVRDPJI3AjZtnm+NLuWCJ8CI4+nS2LR
	8WEyp7M31azqa+RIOxjNaxmSKFsWDTIyr4qJrBmYOTQ8ClbWbZkVyIwv6UKite4RXuY7WYn+VbOVi
	Oeno0ntg0Pq7D90aZ49jtqU1kls+Hi2wlAp2ABsLAJwpkrqj7k1QbMJ7ZAvY5/4RfkPSBjpZfcKg9
	0F2KcOgTIDk7K0+rNZINyAsUE78DQJcHAOiy8DNyeYRDxxeMTAefunm7NVTeWlQczHKetWcHXukzs
	EYWxmEcDc6iH2JVoOfzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYvW4-0002PP-T1; Wed, 13 May 2020 17:50:00 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYvVx-0002Od-7o
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 17:49:54 +0000
Received: by mail-ot1-x342.google.com with SMTP id q11so90227oti.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 10:49:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=6SJk5cSDZ3gmDlinxJJEPvGWzl7E54YlRe5edO2o3KQ=;
 b=SlP0TChLWScf4ZLqjKfS6u/iPkrjPmw4ki2TAkvdGl7JCpdkyKEo3KlH7Jb8FfFVrp
 LLqWHBjzbcHDYmPjlJ001rBb900gXfZixJc5IkX+wvh9E7YkAZGsyvxyjtQDFlZQmXZ/
 oclBEhs/7rDkWYeyU0pVBH1oki+wArHTxEjHxdkiAhxIgLBPQ8fasPaW317EQOYZXc7i
 wouUmTGeLhdbajWmjSxc1JhUVA5cwN8aLjqMEO4MS3xOCO5+/6ztoyKGoJO1LKBlgPjB
 ZWfW/R8oW+X0CmuVtGJosZ144LsYeigYp4+/61HBNlucnjGAe55eKbNOfb0k3gVjmCOa
 ZN+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=6SJk5cSDZ3gmDlinxJJEPvGWzl7E54YlRe5edO2o3KQ=;
 b=PGEiJHdUvQZE7uV18OlIQWqIo4a66dJ/T3rY5oiBIv7kqLCEKGrwtJR3TkazQRGPYr
 OHQ4FonCkgwxy+NCdHsqHTIymLpXVmafNsE+jkoJnflIDelZeXm5Jb4PBeFLFWqkMMbM
 xu7ihvsqWZmK74oxsdIDIlzDy5XqgrOTdMfyhKoSNLFnKYjqFU8txI9AjmC7+bEYGJjE
 OXX6JVlWm/TNEf5eLdbugf1IZ2rZFWdoxJd1NAH8mLV/0X477OWRHVwgO+gfnDcRFHFs
 JwEksQ1uauunxu+pRNNRh3zZ24ZEJd+90PtdDl51IvAPAb26B+WsE2ROTpv4vg0BAyCR
 kwUA==
X-Gm-Message-State: AOAM530ROPejK2CnfTjYnzhmxJNWrpC5qF3ouTDBeVJ5T84Ziz5Ogp/J
 cPayEZGLgDjOFGJnT7/cg9SJiGSkasxT8zTNeg==
X-Google-Smtp-Source: ABdhPJyk9lXTLPWfTrSyRjYrSIiC8YGsbh099C+toj8HH8Po4lSNLaPVY4hUFvVmNKJUU0c6DqqkkEsFdtaUWLJ7Jgs=
X-Received: by 2002:a9d:63da:: with SMTP id e26mr430359otl.107.1589392192172; 
 Wed, 13 May 2020 10:49:52 -0700 (PDT)
MIME-Version: 1.0
From: Rob Herring <robherring2@gmail.com>
Date: Wed, 13 May 2020 12:49:41 -0500
Message-ID: <CAL_JsqK5Gxf1xuNkttzpndYU-5ncpw0E_EiE6Uv3HMdpqRZQjQ@mail.gmail.com>
Subject: [GIT PULL v2] VExpress modularization
To: SoC Team <soc@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_104953_282720_B9646766 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
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

This updated PR fixes CONFIG_CLK_VEXPRESS_OSC being tristate.

Rob

The following changes since commit ae83d0b416db002fe95601e7f97f64b59514d936:

  Linux 5.7-rc2 (2020-04-19 14:35:30 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git
tags/vexpress-modules-for-soc-v2

for you to fetch changes up to 848685c25da99d871bbd87369f3c3d6eead661ac:

  ARM: vexpress: Don't select VEXPRESS_CONFIG (2020-05-13 12:42:47 -0500)

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
 drivers/clk/versatile/Kconfig            |  26 +--
 drivers/clk/versatile/clk-vexpress-osc.c |  20 +-
 drivers/mfd/Kconfig                      |   5 +-
 drivers/mfd/vexpress-sysreg.c            |  99 +--------
 drivers/misc/Kconfig                     |   9 -
 drivers/misc/Makefile                    |   1 -
 drivers/misc/vexpress-syscfg.c           | 280 ------------------------
 include/linux/vexpress.h                 |  30 ---
 20 files changed, 355 insertions(+), 522 deletions(-)
 delete mode 100644 drivers/misc/vexpress-syscfg.c

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
