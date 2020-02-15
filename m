Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD8A160052
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Feb 2020 20:49:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=iRHXqlHNVfr2ZesJrZk7Te2JwIaCDrN6B4o9BpbaHI4=; b=aeS
	JwummErRAjFUE1dFwVr7tlAdSajooqS7MXBtmw/HrPxKkbr3vThbl+FOubw5w/ds3OFN9q8XSFCl5
	nHkyTXclaIXLfz/kxOQvdfcltVGnVYW08PywbXadkUlFbSZ7lcGfWutLuCgkfD0gORMOU/xUk8Tdu
	0p8Wn265+4ecCR0QeEbkr0SvTVpn6PVTDuhRPHtt6fmIeVhBoP+7PsyBaiU0ex0FaJn/P3BgCv48N
	z8Wp9hw+p/GaksPTXiHxhOo+luAr9r/MzABlNXeZwjcNEfzPa5O4WXEQbzGzUsm830FQRjJBarvs4
	t/KS5ZYWmHLL0X6tvXptM3f3MvUC9KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j33RS-0004dh-BH; Sat, 15 Feb 2020 19:49:30 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j33RK-0004dD-Gy
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Feb 2020 19:49:24 +0000
Received: by mail-lj1-x243.google.com with SMTP id w1so14406035ljh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 15 Feb 2020 11:49:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :content-transfer-encoding:user-agent;
 bh=+jGJTXJE5uxAW7727uFygAR1k6UQ7Fe+Mfr4AYT7cvw=;
 b=0yOtJwkidkegSoBVcque+HJM2Gdbk1BMCtiqjk/CjQ4HpwMZoBlX7M0ZLl+mDWEMd7
 kFNez4MIG16UBHCoVFPZLZappNA5Wlufnk7Vp26KqE5/lRqW6Wzm220ssN4j656qJHdQ
 kvC39+kVnhLGGDtD3A/+hhzKhKGxuXIODX7ydSR4aLi8SZC/+jA9Bl64m3SB9YqBmaAA
 n2HEA0t/ZE6twuz0uCf3Xzg8UihVBqsZs+mobqf4Is58I+yNyQkXjCtKzsgUKcPSD7yM
 TNzStpOPzqidgH9jm4LM0hrAWULVdmiqPHrSESHQ1Eu7t8LE7sbRLmUDNwjZIZ2SP7KL
 xiQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:content-transfer-encoding:user-agent;
 bh=+jGJTXJE5uxAW7727uFygAR1k6UQ7Fe+Mfr4AYT7cvw=;
 b=M/pNPCi3k+n9QbT06R9HyyyIl0rVr8TLFJVzeQGLLNwXYMyUVcCrFvQEE0159EVO/B
 zVlCEA3GPSUFhnDy3i8prQUh0Lq8JVN3RLip55t3o9/v7H5bg2qL9NtmnpFP9Rqwj2RQ
 5D0CQmM0YSzR1rcaWLyHFAuod/40vDOgML6mO8GFlsVghrRs6wYyRtuYEgrka6cI2GeZ
 I8Dab2+3ab8b5ngahKffzuTOUkpFyTMXJq4IiNQdr4i3TSCO+sbHXScdG4v9qgql3Tfj
 XYGhzFTXANkQjcUMD8R5nVC0F4Qha4kld1FswgZd6wKHMLT+Iesy43gQfIh7J2giUTDr
 Da8g==
X-Gm-Message-State: APjAAAV05o13qNnAI8lVDGCza4XHzVomWC/hHLsy9QV6wTK06Q113FT/
 b59P0oFD7XY8lwo/BVudijxDqg==
X-Google-Smtp-Source: APXvYqzNYMV8X9A5VdM1P4f/bomCxn/rLnVRdxZxCuvTWt/Yk8OF+myP3RG9xJI28OT4AoBNmASV0w==
X-Received: by 2002:a2e:880a:: with SMTP id x10mr5735386ljh.211.1581796160174; 
 Sat, 15 Feb 2020 11:49:20 -0800 (PST)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id j7sm4759869lfh.25.2020.02.15.11.49.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 15 Feb 2020 11:49:18 -0800 (PST)
Date: Sat, 15 Feb 2020 11:49:10 -0800
From: Olof Johansson <olof@lixom.net>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] ARM: SoC fixes
Message-ID: <20200215194910.jmvolzk6xsngpcbr@localhost>
MIME-Version: 1.0
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200215_114922_621288_9958AF1F 
X-CRM114-Status: GOOD (  14.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: olof@lixom.net, soc@kernel.org, arm@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5654115626533426262=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============5654115626533426262==
Content-Type: text/plain; charset=unknown-8bit
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi Linus,

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fixes

for you to fetch changes up to 3bf3c9744694803bd2d6f0ee70a6369b980530fd:

  bus: moxtet: fix potential stack buffer overflow (2020-02-15 10:33:19 -0800)

----------------------------------------------------------------
ARM: SoC fixes

A handful of fixes that have come in since the merge window:

 - Fix of PCI interrupt map on arm64 fast model (SW emulator)

 - Fixlet for sound on ST platforms and a small cleanup of deprecated DT properties

 - A stack buffer overflow fix for moxtet

 - Fuse driver build fix for Tegra194

 - A few config updates to turn on new drivers merged this cycle

----------------------------------------------------------------
Jagan Teki (1):
      arm64: defconfig: Enable DRM_SUN6I_DSI

Krzysztof Kozlowski (2):
      ARM: npcm: Bring back GPIOLIB support
      ARM: configs: Cleanup old Kconfig options

Kuninori Morimoto (1):
      ARM: dts: sti: fixup sound frame-inversion for stihxxx-b2120.dtsi

Marc Zyngier (1):
      arm64: dts: fast models: Fix FVP PCI interrupt-map property

Marek Behún (1):
      bus: moxtet: fix potential stack buffer overflow

Nicolas Saenz Julienne (1):
      arm64: defconfig: Set bcm2835-dma as built-in

Olof Johansson (6):
      Merge tag 'juno-fix-5.6' of git://git.kernel.org/.../sudeep.holla/linux into arm/fixes
      Merge tag 'v5.6-rc1' into arm/fixes
      Merge tag 'sunxi-config64-for-5.6-2' of https://git.kernel.org/.../sunxi/linux into arm/fixes
      Merge tag 'sunxi-config-for-5.6-2' of https://git.kernel.org/.../sunxi/linux into arm/fixes
      Merge tag 'arm-soc/for-5.6/defconfig-arm64-fixes' of https://github.com/Broadcom/stblinux into arm/fixes
      Merge tag 'sti-dt-for-5.7-round1' of git://git.kernel.org/.../pchotard/sti into arm/fixes

Patrice Chotard (1):
      ARM: dts: sti: Remove deprecated snps PHY properties for stih410-b2260

Thierry Reding (1):
      soc/tegra: fuse: Fix build with Tegra194 configuration

Yangtao Li (2):
      ARM: sunxi: Enable CONFIG_SUN8I_THERMAL
      arm64: defconfig: Enable CONFIG_SUN8I_THERMAL

 arch/arm/boot/dts/stih410-b2260.dts       | 3 ---
 arch/arm/boot/dts/stihxxx-b2120.dtsi      | 2 +-
 arch/arm/configs/am200epdkit_defconfig    | 2 --
 arch/arm/configs/axm55xx_defconfig        | 1 -
 arch/arm/configs/clps711x_defconfig       | 1 -
 arch/arm/configs/cns3420vb_defconfig      | 2 +-
 arch/arm/configs/colibri_pxa300_defconfig | 1 -
 arch/arm/configs/collie_defconfig         | 2 --
 arch/arm/configs/davinci_all_defconfig    | 2 --
 arch/arm/configs/efm32_defconfig          | 2 --
 arch/arm/configs/ep93xx_defconfig         | 1 -
 arch/arm/configs/eseries_pxa_defconfig    | 2 --
 arch/arm/configs/ezx_defconfig            | 1 -
 arch/arm/configs/h3600_defconfig          | 2 --
 arch/arm/configs/h5000_defconfig          | 1 -
 arch/arm/configs/imote2_defconfig         | 1 -
 arch/arm/configs/imx_v4_v5_defconfig      | 2 --
 arch/arm/configs/lpc18xx_defconfig        | 4 ----
 arch/arm/configs/magician_defconfig       | 2 --
 arch/arm/configs/moxart_defconfig         | 1 -
 arch/arm/configs/mxs_defconfig            | 2 --
 arch/arm/configs/omap1_defconfig          | 2 --
 arch/arm/configs/palmz72_defconfig        | 2 --
 arch/arm/configs/pcm027_defconfig         | 2 --
 arch/arm/configs/pleb_defconfig           | 2 --
 arch/arm/configs/realview_defconfig       | 1 -
 arch/arm/configs/sama5_defconfig          | 3 ---
 arch/arm/configs/stm32_defconfig          | 2 --
 arch/arm/configs/sunxi_defconfig          | 1 +
 arch/arm/configs/u300_defconfig           | 2 --
 arch/arm/configs/vexpress_defconfig       | 2 --
 arch/arm/configs/viper_defconfig          | 1 -
 arch/arm/configs/zeus_defconfig           | 2 --
 arch/arm/configs/zx_defconfig             | 1 -
 arch/arm/mach-npcm/Kconfig                | 2 +-
 arch/arm64/boot/dts/arm/fvp-base-revc.dts | 8 ++++----
 arch/arm64/configs/defconfig              | 4 +++-
 drivers/bus/moxtet.c                      | 2 +-
 drivers/soc/tegra/fuse/fuse-tegra30.c     | 3 ++-
 39 files changed, 14 insertions(+), 65 deletions(-)


--===============5654115626533426262==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5654115626533426262==--
