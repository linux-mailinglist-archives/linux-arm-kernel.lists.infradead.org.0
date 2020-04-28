Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2AE1BCCDD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 21:59:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OfIYADgg5CsMDui186B64E9/G92JI8y6oYZkDV/WWh8=; b=Zyezr260VKLF1k
	PV4wuZ3U5qPZmvoI1t5qMq+LeTwgJVjfXqxU6zi594nvLZjeNGR8XOWrCo0PU+sEKLWLpHMzTWjqj
	zDf6BWLMtgVhQ9R9h6eQurSORC3ltjnDp+NwbfFMqYceLxMbRkrcuAa/5LGD58rxX2tvKDU9CPnBi
	VkEjyilGqPxQRVuEMLjQkEDhjWtsLYwT7TsawsPr/R3nus9YzCiSBV7vDc73Zl+lJm1XLSABFOGit
	iUuAFVA+YKyvxl4i8fPHgSEqGz4j7iJEMOsBUiMt4fEPbFi25pK1XEEgS43kWGuOHlxXhtU68pDhb
	thKnoiFp6muUnVNAvtig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTWOF-0001TT-Rk; Tue, 28 Apr 2020 19:59:35 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTWNz-0001QE-A0
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 19:59:22 +0000
Received: by mail-lj1-x243.google.com with SMTP id e25so56278ljg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 12:59:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=KUK6ZEMdvWQeqTiazJ8Nxa0ItsJ1GH3G6pwNGgrayNQ=;
 b=ov/YEXHJQ7BZqzu5o2pyXRg+sRpJO2/e2rtCW1EX+US798rOXVV7DgyIii0cU0Q+Bn
 nHHahfkDggk3oDkYzMnAs2WFTMi+pup9gdyU/OVnb0tiIGd7UCe6HK6mAA9LjWtA6Nnr
 QehDxBdmmmdqSdOkS5Is4RNwQQvVY4yXjiwyPQAi5PvwUsyRXhLVfariCWr9aeVfX1aM
 vRdD3w7GYqqwJzQdfjqByeyELv5YgrXv/LznFB1s5HeTq2USU5HZVryatT9Xq78U3hhu
 rn8jgKmj8uwFJ8N7wztF4sTwulOTVWahZKyFqT9VgY9DTYcxSf/ENKrggMt7aUrjDQcn
 5tVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=KUK6ZEMdvWQeqTiazJ8Nxa0ItsJ1GH3G6pwNGgrayNQ=;
 b=IaCQwDtKydJhBbighyLsHGO9vF8mpXVTOJ0OVRjiak7my9wWx/10nqHDiejZx51Pya
 T6satFasbBh1lolnOMRy8NlERVDwuEAj5MnPAW2z8MYhtCRESrVJxOLhaTemi52DeYjf
 zKTylhB7aVluC0CcINb+ZzgiW3qDNYFma4aCFUkoiRdrAz9xMyWJId+dWeCe30n2nSPy
 4i1sMfIv9pDgNn2J4TQHEAcCMiSunywyMihpxnEZPPNwN6+LG1rkco9BORYB7EImR4O5
 F+zYjZEGP2krNahpIlTxtAWK07rfgE+dSL3X38LtOfEJmPl+eXrbuK0q+gXjGH7zWA73
 LwBw==
X-Gm-Message-State: AGi0Pubg9T18dkMOWmbykleiYIOS0Wy9pEMr45Th/f3Oc55oY31jPMCB
 G0y0MnM0LMGAQA+kOmbws0YBDCcUcyTA3ejY8QW+sQ==
X-Google-Smtp-Source: APiQypIouj5D88SNLTZhk1tjRpJtWoJXdRKhE0i4Ui/a3BtcInU5fH9nzl8TqY0Mox9yWjv6iDPyuEvIE1vZZUxpdrk=
X-Received: by 2002:a2e:8087:: with SMTP id i7mr17214931ljg.99.1588103956781; 
 Tue, 28 Apr 2020 12:59:16 -0700 (PDT)
MIME-Version: 1.0
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 28 Apr 2020 21:59:05 +0200
Message-ID: <CACRpkdZR5LnnvrCnXodaTsam9-BuW+LkYSc+6jq-EisrRsq2eQ@mail.gmail.com>
Subject: [GIT PULL] Versatile changes for v5.8 take 1
To: arm-soc <arm@kernel.org>, SoC Team <soc@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_125920_699156_693CF1E3 
X-CRM114-Status: GOOD (  18.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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
Cc: Rob Herring <robh@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi SoC maintainers,

here is a first set of patches for the Versatile platforms for v5.8.
It affects Integrator, plat-versatile, RealView and Versatile.

The main goodie is replacing some platform code in the Integrator
with a bus driver and migrating these things to device tree,
and we got rid of the sched_clock() code in plat-versatile.

We may send more changes depending on the status of Rob's
modularization patches that are coming along.

The MAINTAINERS update is tagged for MTD but it affects
only the entry for these platforms so it belongs in this pull
reques.

A separate DTS file pull request will follow soon.

Please pull it in!

Yours,
Linus Walleij

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-integrator.git
tags/versatile-v5.8-1

for you to fetch changes up to 899895fb6dba6e7f45449665e3456899d88201d8:

  MAINTAINERS: adjust to renaming physmap_of_versatile.c (2020-04-28
21:50:20 +0200)

----------------------------------------------------------------
Versatile family updates for the v5.8 kernel series:

- Drop unneeded SPARSE_IRQ selection.
- Drop a bunch of other unneed selections already
  selected by multiplatform overall Kconfig.
- Remove the dead sched_clock() code in plat-versatile.
- Drop the mapping of the IB2 registers. Now handled
  by the PL11x DRM driver.
- Add a bus driver for the Integrator/AP logic modules,
  along with its device tree bindings.
- Retire the LM and IM-PD1 boardfile code: we now handle
  this with the bus driver and device tree.
- Select some Integrator features needed for boot in
  its KConfig.
- Fix a minor MAINTAINERS entry.

----------------------------------------------------------------
Geert Uytterhoeven (2):
      ARM: integrator: Drop unneeded select of SPARSE_IRQ
      ARM: realview: Drop unneeded select of multi-platform features

Linus Walleij (4):
      bus: Add DT bindings for Integrator/AP logic modules
      bus: Add driver for Integrator/AP logic modules
      ARM: integrator: Retire LM and IM-PD1 boardfile code
      ARM: integrator: Add some Kconfig selections

Lukas Bulwahn (1):
      MAINTAINERS: adjust to renaming physmap_of_versatile.c

Rob Herring (2):
      ARM: versatile: Remove dead sched_clock code
      ARM: versatile: Drop mapping IB2 module registers

 .../bindings/bus/arm,integrator-ap-lm.yaml         |  83 ++++
 MAINTAINERS                                        |   3 +-
 arch/arm/Kconfig                                   |   1 -
 arch/arm/mach-integrator/Kconfig                   |   8 +-
 arch/arm/mach-integrator/Makefile                  |   3 +-
 arch/arm/mach-integrator/impd1.c                   | 475 ---------------------
 arch/arm/mach-integrator/impd1.h                   |  15 -
 arch/arm/mach-integrator/integrator_ap.c           |  31 --
 arch/arm/mach-integrator/lm.c                      |  96 -----
 arch/arm/mach-integrator/lm.h                      |  24 --
 arch/arm/mach-realview/Kconfig                     |   9 -
 arch/arm/mach-versatile/versatile_dt.c             |   5 -
 arch/arm/plat-versatile/Kconfig                    |   7 -
 arch/arm/plat-versatile/Makefile                   |   1 -
 arch/arm/plat-versatile/include/plat/sched_clock.h |   7 -
 arch/arm/plat-versatile/sched-clock.c              |  28 --
 drivers/bus/Kconfig                                |   9 +
 drivers/bus/Makefile                               |   2 +-
 drivers/bus/arm-integrator-lm.c                    | 128 ++++++
 19 files changed, 228 insertions(+), 707 deletions(-)
 create mode 100644
Documentation/devicetree/bindings/bus/arm,integrator-ap-lm.yaml
 delete mode 100644 arch/arm/mach-integrator/impd1.c
 delete mode 100644 arch/arm/mach-integrator/impd1.h
 delete mode 100644 arch/arm/mach-integrator/lm.c
 delete mode 100644 arch/arm/mach-integrator/lm.h
 delete mode 100644 arch/arm/plat-versatile/Kconfig
 delete mode 100644 arch/arm/plat-versatile/include/plat/sched_clock.h
 delete mode 100644 arch/arm/plat-versatile/sched-clock.c
 create mode 100644 drivers/bus/arm-integrator-lm.c

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
