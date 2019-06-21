Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DED84EB7D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 17:03:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CFxoczpHs8krm/n4Sbs72R/hSSYITFgw2n2b6Swfxj0=; b=MCY9eWQWGEl2Z2
	NO0nLiNFS4d9dwaSD8zEsYK7ts/CH80GvmhJPLnddePDsqKpPUmPOao7BoQsN80cRf4SSIafk84Vb
	DJXq6ZxXeq2jmIRokYtDoQH2oERfg6BtKAVbwWg0oLWj1ZjRwF3wyCor3+Y44+wPa2g8vvTp00y9n
	ghjaY7oMbjWz6MMwMH8f/DlseLWtz55xKxZ1I6ufSLpy4l5fNrirXhfYvEBi6sDdH0D0F2NW/xJTO
	30UT2qNLkodbAynvmEGD2H4M3zWGb5N9vZOWgLXq4DXbtyxCcOIxiQvXJjkTACQrIWwCMTM0Ekoxn
	uxb+44K4JPWYPk3poMzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heL4Q-0005C7-2o; Fri, 21 Jun 2019 15:03:18 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heL3O-0004Vp-Pe
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 15:02:16 +0000
Received: by mail-wr1-x444.google.com with SMTP id d18so6920632wrs.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Jun 2019 08:02:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YrLivGcQuzCRORO001qD3KWZx8yDGr4VW8kByjQhyLI=;
 b=h3ozZ654DLC58KvzyUm3cL02rDLG+wkPlC3LroL8eOqBMP294aX+nCzBjj5v+7pCex
 x/9E61jJhjm+/wWdNP5xHiKfosrAZkEGTwfQ2fxGyXeI9wuIyTu0qPHi/dsfSLMb05Rf
 BiNKt+/UbdftMDajZnBYgawv74ArJuiiAQ6VFNQGHFI8KhewNK26Q0Jf9+zYq5nzBj3d
 aYN483sfdJZ2ZV4ycwIKdiE6/E2qHP5rtBgYbyHmmcX2LLOwkSpnGt/M8YvgFtV4pxxz
 LaRv0oFTUP6rduFPzfYk1sX+IyXCN1M8VJ/UQuUC3zzgSdbd8qM9lXigXaGu4dBh6F43
 kN1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YrLivGcQuzCRORO001qD3KWZx8yDGr4VW8kByjQhyLI=;
 b=oK2eOmQKdk7qlY3pmG+8f6CMIj8d3pCe3Ynh9OMvXFlviD8/5EecushUSFgjHaPnsI
 MO62ExgJ6j67XI5XwEGCgv+UQYTeKXOZ0ItuTMqqWjWjgaGI/L9kIR10ur6k565GkvpG
 aQg+gCbpGBu1sGuS1TEIrHbwfiHg0ml1zkwf/kLTccl8oYbmqDbuMPQC37In+mb5sk/n
 ys0NnOurF5HcV2Z26nC7rbfv4TfkAx5sIdnFKd4JtTVpyekyY84J0+7Y/jWMfdgexbrz
 cG+dBj3Pc5jA9OuGJDddFuhYWgwR/L/bK+OtYWYnAwxaw1Yy+LqQUgaQoumjZwkHRrhs
 nGGw==
X-Gm-Message-State: APjAAAVorD9CQdKiVfSzvVJnlwQJnejpOEn7sIFpv2SFL74e0SOmA9zZ
 EuB3Uzk6KoH6Ea6pVJy0hv8=
X-Google-Smtp-Source: APXvYqxxLVqBQXTLzyjlvI95xYsfP4eyC/fVGpGAtc91t8WshHndVfuFnsPqeciei5aF9WH8jzx3ow==
X-Received: by 2002:adf:db12:: with SMTP id s18mr43506778wri.335.1561129333071; 
 Fri, 21 Jun 2019 08:02:13 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id o185sm2758735wmo.45.2019.06.21.08.02.12
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 21 Jun 2019 08:02:12 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org
Subject: [GIT PULL 4/5] arm64: tegra: Device tree changes for v5.3-rc1
Date: Fri, 21 Jun 2019 17:02:05 +0200
Message-Id: <20190621150206.19037-4-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190621150206.19037-1-thierry.reding@gmail.com>
References: <20190621150206.19037-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_080214_910962_009BED1D 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM SoC maintainers,

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.3-arm64-dt

for you to fetch changes up to a586c88eab65619f3654194dc90d46c98e712af2:

  arm64: tegra: Enable PCIe slots in P2972-0000 board (2019-06-21 16:06:00 +0200)

Thanks,
Thierry

----------------------------------------------------------------
arm64: tegra: Device tree changes for v5.3-rc1

This contains the bulk of the Tegra changes this cycle. It has a bunch
of improvements across almost all boards. These are mostly small and not
too exciting additions.

Most notably perhaps is the continuation of Jetson Nano support, which
is now mostly on feature parity with Jetson TX1.

----------------------------------------------------------------
Jon Hunter (3):
      arm64: tegra: Fix AGIC register range
      arm64: tegra: Update Jetson TX1 GPU regulator timings
      arm64: tegra: Fix Jetson Nano GPU regulator

Joseph Lo (1):
      arm64: tegra: Add CPU cache topology for Tegra186

Manikanta Maddireddy (1):
      arm64: tegra: Add PEX DPD states as pinctrl properties

Nicolin Chen (1):
      arm64: tegra: Add INA3221 channel info for Jetson TX2

Sameer Pujar (2):
      arm64: tegra: Add ACONNECT, ADMA and AGIC nodes
      arm64: tegra: Enable ACONNECT, ADMA and AGIC

Thierry Reding (18):
      arm64: tegra: Use TEGRA186_ prefix for GPIOs
      dt-bindings: tegra186-gpio: Remove unused definitions
      arm64: tegra: Clarify that P2771 is the Jetson TX2 Developer Kit
      arm64: tegra: Clarify that P3310 is the Jetson TX2
      arm64: tegra: Clarify that P2888 is the Jetson AGX Xavier
      arm64: tegra: Make DT model property consistent
      arm64: tegra: Add VCC supply for GPIO expanders on Jetson TX2
      arm64: tegra: Add pin control states for I2C on Tegra186
      arm64: tegra: Mark architected timer as always on
      arm64: tegra: Don't use architected timer for suspend on Tegra210
      arm64: tegra: Add ID EEPROM for Jetson TX1 module
      arm64: tegra: Add ID EEPROM for Jetson TX1 Developer Kit
      arm64: tegra: Add ID EEPROM for Jetson TX2 module
      arm64: tegra: Add ID EEPROM for Jetson TX2 Developer Kit
      arm64: tegra: Add ID EEPROMs on Jetson Nano
      arm64: tegra: Enable CPU sleep on Jetson Nano
      arm64: tegra: Enable PWM on Jetson Nano
      arm64: tegra: Sort device tree nodes alphabetically

Vidya Sagar (2):
      arm64: tegra: Add P2U and PCIe controller nodes to Tegra194 DT
      arm64: tegra: Enable PCIe slots in P2972-0000 board

 arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts |  75 ++-
 arch/arm64/boot/dts/nvidia/tegra186-p3310.dtsi     |  53 ++-
 arch/arm64/boot/dts/nvidia/tegra186.dtsi           | 176 ++++++-
 arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi     |   4 +-
 arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts |  55 ++-
 arch/arm64/boot/dts/nvidia/tegra194.dtsi           | 509 +++++++++++++++++++++
 arch/arm64/boot/dts/nvidia/tegra210-p2180.dtsi     |  16 +-
 arch/arm64/boot/dts/nvidia/tegra210-p2371-2180.dts |  13 +
 arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts |  52 ++-
 arch/arm64/boot/dts/nvidia/tegra210.dtsi           |  22 +-
 include/dt-bindings/gpio/tegra186-gpio.h           |  41 --
 11 files changed, 937 insertions(+), 79 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
