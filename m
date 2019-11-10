Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B5EF6AC3
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 10 Nov 2019 19:25:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u7Nn4Pc64j166HpElPjHJ60Fzg5A4PqyMOmC50RB+NU=; b=HA7x8NFlAFVgA/
	Rp2pCvr6oP/89BlsvkqJKG9z9BZU3W5BT3idE1S9JjqCW6kwV+Avel8qDmoULGXdOWFAV2ZG9iQm4
	EAoVfLZL7zv2ItIbmdXIW9jGsxogDZR9cen+d6ZdTca2uiWLPrckRs3GVGfvZtV2e2dxjglkW9PMk
	O6QEHUbqhR+U5e9RfnuwdGttoXXslKyNuQ0YiEmS7rxadY0NP7yt9/spsRpM35wqydz9bQY3wm73F
	xS3Qc0d++z2nV3xRamP7D48dODpIqV5jnb12eV01grn6JpM0yYvrkoVxay90WZFRMKgfCBTe/deIi
	0r6XCoKrFN/lKaROoD0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTru0-00044q-OV; Sun, 10 Nov 2019 18:25:32 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTrtt-000442-B0
 for linux-arm-kernel@lists.infradead.org; Sun, 10 Nov 2019 18:25:27 +0000
Received: by mail-lf1-x142.google.com with SMTP id m6so8132049lfl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 10 Nov 2019 10:25:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=l2BnyD6N7ZcbJ6rXM8fCOY30NMfgyP+0HNQN729Mi1M=;
 b=hoFYnGwWiIlUN79CfL1458Egx86yn2011W1GbOz5KrvnM+68zPmerizl6c27zU79q9
 7n0GedelUIbzBdRggt+hAxMWuT1tVEMv++FfCsIB0czxM6TS/zSFXUyti11NHc7proty
 uQugtzsHn1TlhwejQPZSmCvLu0tD9MXwI75/XorbCseKy8Exzo6vT/aII06OnG9vGZad
 PHxdG7FfuUzozixoup5LSmM8P4GK5s3K4owAlPINjwSEkpQIMEenbqKGxbIPzu9O+W6H
 sPIyVbQcVTQ0yYd5N2sOT86jUZBk9p3+tzpEfNQr2bk2kbbz9mDlGmKqfpgZHUU1MNJy
 KdqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=l2BnyD6N7ZcbJ6rXM8fCOY30NMfgyP+0HNQN729Mi1M=;
 b=i78aDTj0HxQsAfQ4xK71zGkXhyIdruyWM/1kqxBPRic8od9w94o/BmyjCXjebkHmRy
 /HKuEsAb7VHobPBVaPtbY+s962NWI4PKtyeggUetVc6hV81OTto48hDtSnDyZyWooPD/
 MlNA4e/PGsMc39Kievv+PZPOG42Gei5QQzmE5t5EFoh3UpHBd3M1iK/zxtK2nwQ5Je96
 rJg1swKUXynWcuc5avBMvV+LCV3VLqrUsV0q4YNEjpcmaVXCEdiqN7z64b2w8EgWicAv
 tGv0oc3ZQF97O1ukJdkkjazqi9XaCj+BB6qhil08LhKEl9XQYoMglO4e4/mWFWxcZGwP
 WP0Q==
X-Gm-Message-State: APjAAAUkpMzeitzh2Cblzz6gjObY31uYueTKcHActr3WufYSAA6oOgJE
 egzaV67kesUVHnM/4bGHCMVcNA==
X-Google-Smtp-Source: APXvYqwhFDigIoPYPsuWKDxPKZk3mKzC2RO5M2X+XFqlY4s6hgEwbqTFAyQMm45l/PT3t2RvOUgUzw==
X-Received: by 2002:a19:ca13:: with SMTP id a19mr12852250lfg.133.1573410316179; 
 Sun, 10 Nov 2019 10:25:16 -0800 (PST)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id k19sm6879114ljg.18.2019.11.10.10.25.14
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 10 Nov 2019 10:25:14 -0800 (PST)
Date: Sun, 10 Nov 2019 10:25:06 -0800
From: Olof Johansson <olof@lixom.net>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] ARM: SoC fixes
Message-ID: <20191110182506.a2o7r5nyoqaz27gc@localhost>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_102525_384831_010BFE46 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: olof@lixom.net, soc@kernel.org, arm@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

The following changes since commit 86ec2e1739aa1d6565888b4b2059fa47354e1a89:

  ARM: dts: stm32: relax qspi pins slew-rate for stm32mp157 (2019-10-25 08:18:23 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fixes

for you to fetch changes up to 002d3c65ee81a604430da61e20de7a5b32a0afd5:

  MAINTAINERS: update Cavium ThunderX2 maintainers (2019-11-06 07:43:19 -0800)

----------------------------------------------------------------
ARM: SoC fixes

A set of fixes that have trickled in over the last couple of weeks:

 - MAINTAINER update for Cavium/Marvell ThunderX2

 - stm32 tweaks to pinmux for Joystick/Camera, and RAM allocation for CAN
   interfaces

 - i.MX fixes for voltage regulator GPIO mappings, fixes voltage scaling
   issues

 - More i.MX fixes for various issues on i.MX eval boards: interrupt
   storm due to u-boot leaving pins in new states, fixing power button
   config, a couple of compatible-string corrections.

 - Powerdown and Suspend/Resume fixes for Allwinner A83-based tablets

 - A few documentation tweaks and a fix of a memory leak in the reset
   subsystem

----------------------------------------------------------------
Adam Ford (1):
      ARM: dts: imx6-logicpd: Re-enable SNVS power key

Amelie Delaunay (2):
      ARM: dts: stm32: remove OV5640 pinctrl definition on stm32mp157c-ev1
      ARM: dts: stm32: change joystick pinctrl definition on stm32mp157c-ev1

Ben Dooks (1):
      soc: imx: gpc: fix initialiser format

Christophe Roullier (1):
      ARM: dts: stm32: Fix CAN RAM mapping on stm32mp157c

Fabio Estevam (1):
      ARM: dts: imx6qdl-sabreauto: Fix storm of accelerometer interrupts

Jayachandran C (1):
      MAINTAINERS: update Cavium ThunderX2 maintainers

Kishon Vijay Abraham I (1):
      reset: Fix memory leak in reset_control_array_put()

Lucas Stach (1):
      arm64: dts: zii-ultra: fix ARM regulator GPIO handle

Olof Johansson (5):
      Merge tag 'reset-fixes-for-v5.5' of git://git.pengutronix.de/git/pza/linux into arm/fixes
      Merge tag 'imx-fixes-5.4-2' of git://git.kernel.org/.../shawnguo/linux into arm/fixes
      Merge tag 'sunxi-fixes-for-5.4-2' of https://git.kernel.org/.../sunxi/linux into arm/fixes
      Merge tag 'imx-fixes-5.4-3' of git://git.kernel.org/.../shawnguo/linux into arm/fixes
      Merge tag 'stm32-dt-for-v5.4-fixes-2' of git://git.kernel.org/.../atorgue/stm32 into arm/fixes

Ondrej Jirman (2):
      ARM: dts: sun8i-a83t-tbs-a711: Fix WiFi resume from suspend
      ARM: sunxi: Fix CPU powerdown on A83T

Patrice Chotard (1):
      ARM: dts: stm32: relax qspi pins slew-rate for stm32mp157

Philipp Zabel (4):
      reset: fix of_reset_simple_xlate kerneldoc comment
      reset: fix of_reset_control_get_count kerneldoc comment
      reset: fix reset_control_lookup kerneldoc comment
      reset: fix reset_control_get_exclusive kerneldoc comment

Randy Dunlap (1):
      reset: fix reset_control_ops kerneldoc comment

Shengjiu Wang (2):
      arm64: dts: imx8mm: fix compatible string for sdma
      arm64: dts: imx8mn: fix compatible string for sdma

Yuantian Tang (1):
      arm64: dts: ls1028a: fix a compatible issue

 .mailmap                                            |  4 ++++
 MAINTAINERS                                         |  1 -
 arch/arm/boot/dts/imx6-logicpd-baseboard.dtsi       |  4 ++++
 arch/arm/boot/dts/imx6qdl-sabreauto.dtsi            |  8 ++++++++
 arch/arm/boot/dts/stm32mp157c-ev1.dts               | 13 ++-----------
 arch/arm/boot/dts/stm32mp157c.dtsi                  |  4 ++--
 arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts           |  1 +
 arch/arm/mach-sunxi/mc_smp.c                        |  6 +++++-
 arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts   |  2 +-
 arch/arm64/boot/dts/freescale/imx8mm.dtsi           |  6 +++---
 arch/arm64/boot/dts/freescale/imx8mn.dtsi           |  6 +++---
 arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi |  2 +-
 drivers/reset/core.c                                |  5 +++--
 drivers/soc/imx/gpc.c                               |  8 ++++----
 include/linux/reset-controller.h                    |  4 ++--
 include/linux/reset.h                               |  2 +-
 16 files changed, 44 insertions(+), 32 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
