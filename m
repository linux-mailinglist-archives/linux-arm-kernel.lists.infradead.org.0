Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C1971563F9
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Feb 2020 12:21:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fjC2BkqJAgJhQ2cbSVJDCJ61hGrGAbYPtqC+8R8kG74=; b=aTKJRRvXALCGz/
	3ldHn+4BmCaPNCu5z2iqnCDYTL9kvbduBh1gKDngr62royJbG9c3tcuLMWUL7ltWVh2CoPWlH+RqG
	nDfG3flSE0rHzk2sHlqAql1L3l1kvrMI0Fv6Ca0L0KqxFzCelyQR5NdRwNzWv0i8uv8zF+h0XcBKu
	tPLwn4TFMRqHfCo0JnGpxiFjyKuZcILTV1ABUQnNJMDF9oNv2+D3EYU4juu9aFzfdfi6lpZWj7eCJ
	jwf84NLobHn2TD/Y5bVV8bPrGB3DUDmD+zQH1T5JFAbarEV6gSLcjq27jSiB553JJzTd3E3bntd9C
	KRuQ7PfRwv+ZMmR1oXlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0OAb-0001hR-Ux; Sat, 08 Feb 2020 11:21:05 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0OA9-0001Ik-VY
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Feb 2020 11:20:39 +0000
Received: by mail-pl1-x644.google.com with SMTP id j7so854395plt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 08 Feb 2020 03:20:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tqOCfGmc24SMcvo9QfZYNC/dA0GyzzcRlwuea8hRFMw=;
 b=OqaDX8gDNZL7bzywbFeSnDV+PtO4S7hYYKnuWVX/uraVfLte8jworWXCZhFgRjQZnS
 f3wzGbRcbYAI4v8++onBGyVQkPK5u0xyaNeomOSQj7NOgK+1XldDxEfmuuKb75CrmuSc
 XOxN5VP7uUAiHc3CnXwdO7nNesP6JAOe+pV0k1F7KMXlrv00z/0FULCKj4JVkRmfvF3a
 tMrnnIxermPR29FRF1skIUgjkIyI4v2MnnMnHfnQAUT+XHhZ7JXw7B+x3lrWexVq1XTT
 myGJz2SItmq9CSLKPsaydYQ89j+LJQVzRipoTybRJ7tvlkNk9v9A2aPnOrwZzvIKEbOJ
 tuNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tqOCfGmc24SMcvo9QfZYNC/dA0GyzzcRlwuea8hRFMw=;
 b=TNfN7yNKBwGOFkXxET9e9HwfPXiFoNOOk7Gu9FrI7RNFHHSyiZanOsxLqc10Hbtukz
 qLDR4TjMMdSPKLuUw5sTSVTgdCumijFLG5NVlw8D71dnrAJOocYlPdVOA1CEJ2TGobah
 LQUOaZ7mAZgU/Mj3m4hhrqXd/PLZKVh+53CSkV7+zeERFJlpNK++m1EEDH78p3I6evnG
 PM27gGfZovmlVeQpPCAqy1OzCC2zUm+GChpRU2FTED8XLsATIEGhodSI4oLm0f7ZNdpZ
 MszX5tPjB0jve/FESVBv0wZOWFhPTFqKonXwMU47KqhU7GrLhTiReNHHTOcERV2FpKBY
 ELAA==
X-Gm-Message-State: APjAAAX/B8K+IkMYDi85Qnn1kCtl5v5LNFYl6Lqklm9IKw2QcxSe/vvE
 ToI996uADdHt8X8Ggi4faxib7Q==
X-Google-Smtp-Source: APXvYqxe8hGUD4x10nmC2TNmnq+AB1g80fNxoA/xjcTn+r5/Z1yD2tbxM/klYVLPrsGHEtyLqNm3Ww==
X-Received: by 2002:a17:90a:7342:: with SMTP id
 j2mr9363054pjs.92.1581160837356; 
 Sat, 08 Feb 2020 03:20:37 -0800 (PST)
Received: from localhost.localdomain
 (99-152-116-91.lightspeed.sntcca.sbcglobal.net. [99.152.116.91])
 by smtp.gmail.com with ESMTPSA id a19sm5707281pju.11.2020.02.08.03.20.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 08 Feb 2020 03:20:36 -0800 (PST)
From: Olof Johansson <olof@lixom.net>
To: torvalds@linux-foundation.org
Subject: [GIT PULL 3/5] ARM: SoC-related driver updates
Date: Sat,  8 Feb 2020 03:20:16 -0800
Message-Id: <20200208112018.29819-4-olof@lixom.net>
X-Mailer: git-send-email 2.22.GIT
In-Reply-To: <20200208112018.29819-1-olof@lixom.net>
References: <20200208112018.29819-1-olof@lixom.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200208_032038_023445_42174A29 
X-CRM114-Status: GOOD (  16.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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
Cc: Olof Johansson <olof@lixom.net>, soc@kernel.org, arm@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Various driver updates for platforms:

- Nvidia: Fuse support for Tegra194, continued memory controller pieces
for Tegra30

- NXP/FSL: Refactorings of QuickEngine drivers to support ARM/ARM64/PPC

- NXP/FSL: i.MX8MP SoC driver pieces

- TI Keystone: ring accelerator driver

- Qualcomm: SCM driver cleanup/refactoring + support for new SoCs.

- Xilinx ZynqMP: feature checking interface for firmware. Mailbox
communication for power management

- Overall support patch set for cpuidle on more complex hierarchies
(PSCI-based)

+ Misc cleanups, refactorings of Marvell, TI, other platforms.



Conflicts:

drivers/soc/tegra/fuse/tegra-apbmisc.c:

This branch has one conflict due to ioremap_nocache() removal touching
same lines as some error path fixes for tegra.  Keep the ioremap()
version of the call, but the rest from this side.

----------------------------------------------------------------

The following changes since commit a1a0cfaf7fb7c1a90201e6b0937f742c8c212d8e:

  Merge tag 'armsoc-defconfig' into HEAD

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-drivers

for you to fetch changes up to 88b4750151a2739761bb1af7fedeae1ff5d9aed9:

  Merge tag 'zynqmp-soc-for-v5.6' of https://github.com/Xilinx/linux-xlnx into arm/drivers

----------------------------------------------------------------


 arch/arm/boot/dts/am33xx.dtsi                   |  25 ++
 arch/arm/boot/dts/am4372.dtsi                   |  20 +
 arch/arm/boot/dts/am437x-sk-evm.dts             |  27 +-
 arch/arm/boot/dts/am43x-epos-evm.dts            |  23 +-
 arch/arm/boot/dts/am43xx-clocks.dtsi            |  54 +++
 arch/arm/boot/dts/dra7-l4.dtsi                  |  71 +++-
 arch/arm/boot/dts/dra7.dtsi                     |  18 +
 arch/arm/boot/dts/dra72-evm-common.dtsi         |  31 ++
 arch/arm/boot/dts/dra72x.dtsi                   |  42 ++
 arch/arm/boot/dts/dra76-evm.dts                 |  35 ++
 arch/arm/boot/dts/dra76x.dtsi                   |  42 ++
 arch/arm/boot/dts/dra7xx-clocks.dtsi            |  32 +-
 arch/arm/boot/dts/motorola-cpcap-mapphone.dtsi  |   5 +-
 arch/arm/boot/dts/motorola-mapphone-common.dtsi |  19 +
 arch/arm/boot/dts/omap4-l4.dtsi                 |  49 ++-
 arch/arm/boot/dts/omap4.dtsi                    | 110 +++--
 arch/arm/boot/dts/omap44xx-clocks.dtsi          |  11 +-
 arch/arm/boot/dts/omap5-l4.dtsi                 |  20 +-
 arch/arm/boot/dts/omap54xx-clocks.dtsi          |  10 +-
 arch/arm/mach-davinci/Makefile                  |   3 +-
 arch/arm/mach-davinci/board-dm365-evm.c         |  20 +
 arch/arm/mach-davinci/board-dm644x-evm.c        |  20 +
 arch/arm/mach-davinci/devices-da8xx.c           |   1 -
 arch/arm/mach-davinci/devices.c                 |  19 -
 arch/arm/mach-davinci/dm365.c                   |  22 +-
 arch/arm/mach-davinci/include/mach/common.h     |  17 -
 arch/arm/mach-davinci/include/mach/time.h       |  33 --
 arch/arm/mach-davinci/time.c                    | 400 -------------------
 arch/arm/mach-omap2/clockdomains7xx_data.c      |   2 +-
 arch/arm/mach-omap2/omap_hwmod_44xx_data.c      | 135 -------
 drivers/clk/ti/clk-44xx.c                       |  13 +
 drivers/clk/ti/clk-54xx.c                       |  13 +
 drivers/clocksource/timer-davinci.c             |   8 +-
 include/dt-bindings/clock/omap4.h               |  11 +
 include/dt-bindings/clock/omap5.h               |  11 +
 35 files changed, 697 insertions(+), 675 deletions(-)
 delete mode 100644 arch/arm/mach-davinci/include/mach/time.h
 delete mode 100644 arch/arm/mach-davinci/time.c

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
