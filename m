Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B7D3184D28
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 18:01:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PSkWI5vg3wiNIk/JmdrR8U38Pgq/Qj/VJ0idwV1OcAk=; b=F9SqftsRllXJEq
	r5S5Yx8tl7xWh1tzEeg/+uKe4RrxFZiaffQuyJvREuGhCi2+qFdPYt9ISrYtFUwPjKUHbBgp6ErUG
	IXxPXy+clJCLSQoWul2A0I4ESRh0WfvXOoQoECc2rKFHCVz7kUN7RXtOUEx5cvbwi3WunOH6LwsZm
	uWsKHlm8jmRmW5KuLYAh9VEwk3T24djgR9niDckzYKi87MqQfLLl+Iuypo5fOmxCJcMn9R1FX39JG
	1KADyMlKA2seATOzzQRFof7uts/ktZfqE873LYz5odUJNt8QhYhJh6JFw/L2rgGtbNAIN8X/uZjZ1
	CekV+rqYlQPtQodkQh3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCngM-0002rs-OR; Fri, 13 Mar 2020 17:01:10 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCneQ-0008Qf-VX
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 16:59:13 +0000
Received: by mail-wr1-x432.google.com with SMTP id d5so12685521wrc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 09:59:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=y7E/7I3UwnoYO4kboIxPPunVUq6lzAu3iTHHuSklZrw=;
 b=hg9jxfVBhWx9OFfJIBsDeZGL8xTFUmDYN4ffVvtSmy1Xq/kAZqoWXPIoiTtUgChgee
 2qPUhSCrZAtIcbZehU5jH4TZojxHtisu9hS7qVs6LK8c5GOapg7QPRc4NIvTRGPnDIoh
 u0W6zSGv3De1+qjxPUkABOfvFd/K4JcOnvYnLOpIFmuGKSo+7tsd7l7OdDlHA0upmG8H
 BDmzlVz5LNlgrNWaI9a/Qg6m2bV54IVUm3U5Ly6GeNDe+djG936PhDqjWnIYaP9u+IsJ
 4O3LbRDJVMy5/DvG76ihrEkg1KHIwnuU1PdEgoQXKa3NTkAs1gBdehfWiUwmE4WFC1s7
 FadQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=y7E/7I3UwnoYO4kboIxPPunVUq6lzAu3iTHHuSklZrw=;
 b=bWHNNB/4O1evL6uCcZWYo7mSjFn1iGoLANYNGEq0TnvlMWdEhIfCTXB0PlrIMkZ29f
 tFmPlgY6iFZ2uNhvFcPnEQM+xB85HM3ufyyWkVdAMDPa/1zdBs8yV0NuJr8T+iI5ovhH
 kW3+wumWzCHf0pTRlFmLlwebxsHeOamf68LrM1Sl+JRMAF3uTFx4JET4Nrw8hjAXJBYg
 Y5ZawX01AN4U2BqQnYV8YfCTo6aE0XGszFpxgtn5FG/OlSegD/qxNrJlz+LiQlD7jfwY
 SUA/OtD301Yeg4YzNWSfnkGLNMu0meVkvLjdFuftVulME6i1IBI8rkKY6vMKEpxGyy61
 Bjfg==
X-Gm-Message-State: ANhLgQ2Zw69IfCF2uEof3C7BkCP6mviLgWItXjSHpEgdhpM88E8dofwc
 7DmmqOmKMafOHkKS8vTZRg8=
X-Google-Smtp-Source: ADFU+vssbO4TufJR7WDKRLhsy6jm8DZzzwhkYunqFuhHpdXgYbkPqO4pibw89cfm5vrGAhM2E2R4Sw==
X-Received: by 2002:adf:ec88:: with SMTP id z8mr3131265wrn.61.1584118749224;
 Fri, 13 Mar 2020 09:59:09 -0700 (PDT)
Received: from localhost (pD9E516A9.dip0.t-ipconnect.de. [217.229.22.169])
 by smtp.gmail.com with ESMTPSA id s13sm28875891wrw.29.2020.03.13.09.59.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2020 09:59:08 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org,
	soc@kernel.org
Subject: [GIT PULL 08/10] arm64: tegra: Device tree changes for v5.7-rc1
Date: Fri, 13 Mar 2020 17:58:46 +0100
Message-Id: <20200313165848.2915133-8-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200313165848.2915133-1-thierry.reding@gmail.com>
References: <20200313165848.2915133-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_095911_170100_CBAA5009 
X-CRM114-Status: GOOD (  15.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:432 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM SoC maintainers,

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.7-arm64-dt

for you to fetch changes up to 84eaaf7500036f292f5563b39a983c492d5b12ae:

  arm64: tegra: Add support for PCIe endpoint mode in P2972-0000 platform (2020-03-12 12:14:31 +0100)

Thanks,
Thierry

----------------------------------------------------------------
arm64: tegra: Device tree changes for v5.7-rc1

These changes add support for the XUSB pad controller, as well as the
XUSB controller on Tegra194. Furthermore, USB device mode is supported
across Tegra210 and Tegra186 boards. PCIe endpoint mode support is added
for the Jetson AGX Xavier platform.

Various minor fixes eliminate warnings on boot related to missing power
supplies for some devices.

----------------------------------------------------------------
JC Kuo (2):
      arm64: tegra: Add XUSB and pad controller on Tegra194
      arm64: tegra: Enable XUSB host in P2972-0000 board

Jon Hunter (5):
      arm64: tegra: Fix Tegra194 PCIe compatible string
      arm64: tegra: Enable I2C controller for EEPROM
      arm64: tegra: Add EEPROM supplies
      arm64: tegra: Fix Tegra186 SOR supply
      arm64: tegra: Populate LP8557 backlight regulator

Nagarjuna Kristam (8):
      arm64: tegra: Update OTG port entries for Jetson TX1
      arm64: tegra: Update OTG port entries for Jetson TX2
      arm64: tegra: Add XUDC node for Tegra210
      arm64: tegra: Enable XUDC on Jetson TX1
      arm64: tegra: Add XUDC node for Tegra186
      arm64: tegra: Enable XUDC node on Jetson TX2
      arm64: tegra: Update OTG port entries for Jetson Nano
      arm64: tegra: Enable XUDC node on Jetson Nano

Sowjanya Komatineni (6):
      dt-bindings: clock: tegra: Add IDs for OSC clocks
      dt-bindings: tegra: Convert Tegra PMC bindings to YAML
      dt-bindings: soc: tegra-pmc: Add Tegra PMC clock bindings
      dt-bindings: soc: tegra-pmc: Add ID for Tegra PMC 32 kHz blink clock
      arm64: tegra: Add clock-cells property to Tegra PMC node
      arm64: tegra: smaug: Change clk_out_2 provider to PMC

Thierry Reding (2):
      Merge branch 'for-5.7/dt-bindings' into for-5.7/arm64/dt
      arm64: tegra: Add ethernet alias on Jetson TX1

Vidya Sagar (2):
      arm64: tegra: Add PCIe endpoint controllers nodes for Tegra194
      arm64: tegra: Add support for PCIe endpoint mode in P2972-0000 platform

 .../bindings/arm/tegra/nvidia,tegra20-pmc.txt      | 300 -----------------
 .../bindings/arm/tegra/nvidia,tegra20-pmc.yaml     | 354 +++++++++++++++++++++
 .../bindings/pci/nvidia,tegra194-pcie.txt          |   2 +-
 arch/arm64/boot/dts/nvidia/tegra132.dtsi           |   4 +-
 arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts |  26 +-
 arch/arm64/boot/dts/nvidia/tegra186-p3310.dtsi     |   1 +
 arch/arm64/boot/dts/nvidia/tegra186.dtsi           |  19 ++
 arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi     |  36 ++-
 arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts |  81 +++++
 arch/arm64/boot/dts/nvidia/tegra194.dtsi           | 250 ++++++++++++++-
 arch/arm64/boot/dts/nvidia/tegra210-p2180.dtsi     |   3 +
 arch/arm64/boot/dts/nvidia/tegra210-p2371-2180.dts |   2 +
 arch/arm64/boot/dts/nvidia/tegra210-p2597.dtsi     |  45 ++-
 arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts |  24 +-
 arch/arm64/boot/dts/nvidia/tegra210-smaug.dts      |   2 +-
 arch/arm64/boot/dts/nvidia/tegra210.dtsi           |  25 +-
 include/dt-bindings/clock/tegra114-car.h           |   4 +-
 include/dt-bindings/clock/tegra124-car-common.h    |   4 +-
 include/dt-bindings/clock/tegra210-car.h           |   4 +-
 include/dt-bindings/clock/tegra30-car.h            |   4 +-
 include/dt-bindings/soc/tegra-pmc.h                |  16 +
 21 files changed, 883 insertions(+), 323 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/tegra/nvidia,tegra20-pmc.txt
 create mode 100644 Documentation/devicetree/bindings/arm/tegra/nvidia,tegra20-pmc.yaml
 create mode 100644 include/dt-bindings/soc/tegra-pmc.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
