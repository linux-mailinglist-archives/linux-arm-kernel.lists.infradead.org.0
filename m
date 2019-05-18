Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD5922580
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 May 2019 00:51:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0nB7yrgp13/EE4FEQ+VCA4VZPMg/NS9r8j8nCWK9IC0=; b=BSGVTMbNlMZpAb
	Flf4VYuEzmR7VJTVRn3khgfFw1F9URklfWxq9nxuJzn3z3HcwaEmPiRnYsg8oUvZ+1OfQcL299pdu
	w2YbFSm/7+HJF3oNmjfMQhAY4GQCcKAZ/kU8A8NmF78I6y8oj8/iFVYHxEY9j1uPXTABoRVL2Mt0m
	JRjd0E+H5LwFCZ+R0yC2YVjk0McWHvXkoes0YqO+hlB38CLz/guipn9fQxmbjhGw5eTpMlZlGPjTH
	QP/WL0tNU3FwA90mQuS42S/9mwyXmLGupY8llIVeU5Ti3elOJAb47vmoSONLznw0/65zvLnCQ+nxO
	MpJ/MctO5sjJoKtqKF7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hS8BF-00012U-Az; Sat, 18 May 2019 22:51:53 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hS8B7-00011e-Oa
 for linux-arm-kernel@lists.infradead.org; Sat, 18 May 2019 22:51:47 +0000
Received: by mail-lf1-x12b.google.com with SMTP id y13so7699121lfh.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 18 May 2019 15:51:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=DH514z9aZ3H7U/0FSBgVq0iZjpE2oj7hKUPNpKf5WjU=;
 b=nRbRAwMxBefuFWhOvmci98mAdcK24vs88zQbxNSmm7KH4cGQ0KjtQSmzEVST07Ha/A
 4rUHk5UJU5otFOm3PNnilBBd1yxg9I9RN4v8m67MINg1n3QGRv5qAnFQz/RKygBg03lp
 4YpNnFYnKIl2FQT++NoVOTKvWntyNnRwLrl4J9dzdQhTtGVxRgHQZEuMOPnMRNINw4Bp
 iWqj5SBHi9tZY6DDYxrnxAxk500P6RGab34kTaEpCu19Z4hRIFbzQOPUoxRu+ALMmIS/
 j9pR9lVeyico6j60UmZtKy/2sdA8LT5/MESOGquxts/9stDw/iyXvliDI4N16v6LZPTh
 adKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=DH514z9aZ3H7U/0FSBgVq0iZjpE2oj7hKUPNpKf5WjU=;
 b=Uu+sE2i1b68/ZETarm/JeCjooPrPsHUphp0wqv8Bm2T12l6Ck6dK81+2aeUuRTnRHH
 VOzaC1WuzIqIfMaMlSacLwxpJOCWqeXFY45dLxmNh+mbBGy5Svry7zdk278VNHkRUlAw
 j0O6zcRYZA9fxrvdXfm2ilyijYVXh7TpHYBPO+lXQzpdqRqlxqIWBX1YVL40Oq/KHoIw
 AraQP2vPGEbkw354UKICToapK6ZvX8W31tbicdwMGozDjVRCHL8I4EHZYNvq4Vhvkl4u
 c+w82t6OnWP60ofKwuhw4hGY+ZizIVIDlD4Tufm3grPX+ITgwJ5cWCxpPdUNil7JAIK3
 RDWQ==
X-Gm-Message-State: APjAAAXe6hao5sY5fKZrXe7te6YZquuxFwCldOF+pQpnoT7VC7Cl4m+o
 x5z8Jk8qKw53uOVYASx2A5dXtQ==
X-Google-Smtp-Source: APXvYqxsy9iGSMpHIWTCK/33V0sHiXZsWnqKRLy1zUlbBTPMUktT19NsVaj6ODE1GaCOocyWIqdTNA==
X-Received: by 2002:ac2:528f:: with SMTP id q15mr13949958lfm.37.1558219901524; 
 Sat, 18 May 2019 15:51:41 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id v11sm2863221lfb.68.2019.05.18.15.51.39
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 18 May 2019 15:51:39 -0700 (PDT)
Date: Sat, 18 May 2019 15:51:31 -0700
From: Olof Johansson <olof@lixom.net>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] ARM: SoC late updates
Message-ID: <20190518225131.2lyysevggfbyqfl6@localhost>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190518_155145_850848_E3AB5B74 
X-CRM114-Status: GOOD (  16.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12b listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: olof@lixom.net, arm@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

The following changes since commit ab02888e39212af2d1dddc565cd67192548b9fd8:

  Merge tag 'armsoc-defconfig' of git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc (2019-05-16 09:35:26 -0700)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-late

for you to fetch changes up to 15d574fbd3f8ec7705896ed14b74eae482cadd4e:

  arm64: dts: sprd: Add clock properties for serial devices (2019-05-16 14:43:33 -0700)

----------------------------------------------------------------
ARM: SoC: late updates

This is some material that we picked up into our tree late. Most of it
are smaller fixes and additions, some defconfig updates due to recent
development, etc.

Code-wise the largest portion is a series of PM updates for the at91
platform, and those have been in linux-next a while through the at91
tree before we picked them up.

----------------------------------------------------------------
Aaro Koskinen (1):
      ARM: OMAP1: ams-delta: fix early boot crash when LED support is disabled

Adam Ford (1):
      ARM: dts: logicpd-som-lv: Fix MMC1 card detect

Alan Tull (1):
      ARM: socfpga_defconfig: enable LTC2497

Andrey Zhizhikin (1):
      ARM: socfpga_defconfig: enable support for large block devices

Arnd Bergmann (1):
      amba: tegra-ahb: Mark PM functions as __maybe_unused

Baolin Wang (1):
      arm64: dts: sprd: Add clock properties for serial devices

Chris Packham (1):
      ARM: mvebu: kirkwood: remove error message when retrieving mac address

Claudiu Beznea (8):
      ARM: at91: pm: introduce at91_soc_pm structure
      dt-bindings: arm: atmel: add binding for SAM9X60 SoC
      ARM: at91: pm: initial PM support for SAM9X60
      ARM: at91: pm: keep at91_pm_backup_init() only for SAMA5D2 SoCs
      ARM: at91: pm: add support for per SoC wakeup source configuration
      ARM: at91: pm: add ULP1 support for SAM9X60
      ARM: at91: pm: disable RC oscillator in ULP0
      ARM: at91: pm: do not disable/enable PLLA for ULP modes

Dan Carpenter (2):
      soc/fsl/qe: Fix an error code in qe_pin_request()
      soc: ixp4xx: qmgr: Fix an NULL vs IS_ERR() check in probe

Jonathan Hunter (1):
      arm64: tegra: Fix insecure SMMU users for Tegra186

Marc Gonzalez (1):
      Opt out of scripts/get_maintainer.pl

Nicholas Mc Guire (1):
      ARM: mvebu: drop return from void function

Nicolas Ferre (1):
      ARM: at91: remove HAVE_FB_ATMEL for sama5 SoC as they use DRM

Olof Johansson (9):
      Merge tag 'omap-for-v5.1/fixes-rc6' of git://git.kernel.org/.../tmlind/linux-omap into arm/late
      Merge tag 'mvebu-arm-5.2-1' of git://git.infradead.org/linux-mvebu into arm/late
      Merge tag 'soc-fsl-fix-v5.1' of git://git.kernel.org/.../leo/linux into arm/late
      Merge tag 'socfpga_arm32_defconfig_for_v5.2' of git://git.kernel.org/.../dinguyen/linux into arm/late
      Merge tag 'tegra-for-5.2-bus-fixes' of git://git.kernel.org/.../tegra/linux into arm/late
      Merge tag 'tegra-for-5.2-arm64-soc-fixes' of git://git.kernel.org/.../tegra/linux into arm/late
      Merge tag 'tegra-for-5.2-arm64-dt-fixes' of git://git.kernel.org/.../tegra/linux into arm/late
      Merge tag 'at91-5.2-defconfig' of git://git.kernel.org/.../at91/linux into arm/late
      Merge tag 'at91-5.2-soc' of git://git.kernel.org/.../at91/linux into arm/late

Sameer Pujar (1):
      arm64: tegra: Select ARM_GIC_PM

Stefan Agner (2):
      ARM: mvebu: drop unnecessary label
      ARM: mvebu: prefix coprocessor operand with p

Thierry Reding (2):
      arm64: tegra: Enable SMMU translation for PCI on Tegra186
      arm64: tegra: Disable XUSB support on Jetson TX2

Tudor Ambarus (1):
      ARM: at91: sama5: make ov2640 as a module

Wen Yang (1):
      ARM: mvebu: fix a leaked reference by adding missing of_node_put

YueHaibing (1):
      ARM: ixp4xx: Remove duplicated include from common.c

 .get_maintainer.ignore                             |   1 +
 .../devicetree/bindings/arm/atmel-at91.txt         |   1 +
 arch/arm/boot/dts/logicpd-som-lv-baseboard.dtsi    |   2 +-
 arch/arm/configs/sama5_defconfig                   |   2 +-
 arch/arm/configs/socfpga_defconfig                 |   3 +-
 arch/arm/mach-at91/Kconfig                         |   3 -
 arch/arm/mach-at91/at91sam9.c                      |  18 ++
 arch/arm/mach-at91/generic.h                       |   2 +
 arch/arm/mach-at91/pm.c                            | 193 ++++++++++++++-------
 arch/arm/mach-at91/pm_suspend.S                    | 111 ++++++++----
 arch/arm/mach-ixp4xx/common.c                      |   1 -
 arch/arm/mach-mvebu/board-v7.c                     |   1 -
 arch/arm/mach-mvebu/coherency_ll.S                 |   2 +-
 arch/arm/mach-mvebu/kirkwood.c                     |   2 -
 arch/arm/mach-mvebu/pm-board.c                     |  11 +-
 arch/arm/mach-mvebu/pmsu_ll.S                      |   3 +-
 arch/arm/mach-omap1/board-ams-delta.c              |   2 +-
 arch/arm64/Kconfig.platforms                       |   1 +
 arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts |   4 +-
 arch/arm64/boot/dts/nvidia/tegra186.dtsi           |   7 +
 arch/arm64/boot/dts/sprd/whale2.dtsi               |  16 +-
 drivers/amba/tegra-ahb.c                           |   6 +-
 drivers/soc/fsl/qe/gpio.c                          |   4 +-
 drivers/soc/ixp4xx/ixp4xx-qmgr.c                   |   4 +-
 include/linux/clk/at91_pmc.h                       |   1 +
 25 files changed, 277 insertions(+), 124 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
