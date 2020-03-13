Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 234D5184D25
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 18:00:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=06vlpN2UUUyiD3r5u/CFASI0cs0iFVTPDhFnOf2v9mY=; b=rrK52BTCZDwPj6
	CdVPzg30avRUf86i4+vvQ1aMp1ABPLu0iiihoALVAmbTSVnR9uv/YscGdq8uCOHxtSEUs/jdMKfhF
	EdE8aSPRt6OG1qlzKdXmz226FIOWgvFjA6nWZNijfVER0JNEcG72ROP9VqZLL3+zv9bqZjN1eEWFe
	lmWTA1Mnsue6DIXa8o8r5Io2lklg7a2EGIcMGdRygXKU5jM0ekXEp6TVzkTTIRbnPEO7R+YRpXaHX
	wRGApnvbnGatjtWt3DGa2e2xoWLifS0rFr5iX9RaP++UsAg1vfec2/e/wuVQ7q6KjNEE+eHGlMAAF
	D59nKTUjEPzuMnUBUsNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCnfu-0001E3-W9; Fri, 13 Mar 2020 17:00:43 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCneN-0008N0-8F
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 16:59:08 +0000
Received: by mail-wr1-x444.google.com with SMTP id a25so13039136wrd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 09:59:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZIfXzv5neGBtpJUqK4oBSOIQcZhZavQRkTZC/ZMF6dw=;
 b=tIurPIPKkWRIAgCHTJkHgVKyubcfxP26ZdQC4118yMSoD4Apt5guOeuyySRDjMM0U8
 CGjY/Z+lMWNvdQXIbfJ4g1k1/pD5RPajpDdx9pO/vbvBaKcudQn4Y3mk1aWBO21MLFtn
 xucA/vDegEfA1boCvlyPFzBcEUcQj45yVvyNJOjsRGWrEr4IRC688xB6XMpiVirVu+uY
 eNdxDMy1hJy/MFuUVDUMPHWcmRajyBK9V9Vwnvj2ahU+WlnJeXl0WEyHAYQMNceFHCIS
 1SMgD7PZcBkFkagdHxlj2s+CMnm1hZ5pQ+SQHdP5C2Nr9248vBcJ8UXEVLjdcfeu36Ll
 dtog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZIfXzv5neGBtpJUqK4oBSOIQcZhZavQRkTZC/ZMF6dw=;
 b=tdFhqVTYbeYlu+STDUfEE74PBOADR8grHn9HVzbpCZiOnLfGkPhLqpQOR6TbRndML3
 6zt9knsl6ueA7ufpF9/r/y+Vqsayxo1Oivu3Qc3Y471BWnH6YGXB+26QQShnOlxx2u/e
 44MrirWKj7jxTBdD+HIQZgOzEJAExiJ/ichX61kE49nTcz7G2FMnTE/3oqrgPDfHPzqA
 /IOtvT5EbrIPEb6D5qUtWd9T7Ci10phjw3Gi9jUupKjD/j98AnLodn1E6LqYqWEQFclR
 04rXUfpppwOsUb92A/8aZocdMYkJVhEs5giZdlwVgytBgDRkTp4mJkiXol/NzrfGTUqc
 0tfQ==
X-Gm-Message-State: ANhLgQ2IhOIpi5T1v0CwuyDEShN8j6t4173Xe7o/onnP8pZFYYbO/SuR
 I0ppsQVthowIHhz7Y0m/hEyJAxK1
X-Google-Smtp-Source: ADFU+vuS6XpW5zBrYRfIm1Mm+Upfw2PLjJU40yeTjvnqRZo7CtK4vDfSPb8FULv+ESumhrun/cuzhQ==
X-Received: by 2002:adf:dfc1:: with SMTP id q1mr18378154wrn.62.1584118745660; 
 Fri, 13 Mar 2020 09:59:05 -0700 (PDT)
Received: from localhost (pD9E516A9.dip0.t-ipconnect.de. [217.229.22.169])
 by smtp.gmail.com with ESMTPSA id s28sm4996272wrb.42.2020.03.13.09.59.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2020 09:59:04 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org,
	soc@kernel.org
Subject: [GIT PULL 06/10] ARM: tegra: Device tree changes for v5.7-rc1
Date: Fri, 13 Mar 2020 17:58:44 +0100
Message-Id: <20200313165848.2915133-6-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200313165848.2915133-1-thierry.reding@gmail.com>
References: <20200313165848.2915133-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_095907_342365_DB562D90 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.7-arm-dt

for you to fetch changes up to bdb2c52a6e564af02b467862097b77941699c698:

  ARM: tegra: Update sound node clocks in device tree (2020-03-13 11:25:44 +0100)

Thanks,
Thierry

----------------------------------------------------------------
ARM: tegra: Device tree changes for v5.7-rc1

Minor fixes and additions for 32-bit Tegra SoC device trees.

----------------------------------------------------------------
JC Kuo (1):
      dt-bindings: phy: tegra: Add Tegra194 support

Nagarjuna Kristam (3):
      dt-bindings: phy: tegra-xusb: Add usb-role-switch
      dt-bindings: usb: Add NVIDIA Tegra XUSB device mode controller binding
      ARM: tegra: Remove USB 2-0 port from Jetson TK1 padctl

Sowjanya Komatineni (6):
      dt-bindings: clock: tegra: Add IDs for OSC clocks
      dt-bindings: tegra: Convert Tegra PMC bindings to YAML
      dt-bindings: soc: tegra-pmc: Add Tegra PMC clock bindings
      dt-bindings: soc: tegra-pmc: Add ID for Tegra PMC 32 kHz blink clock
      ARM: tegra: Add clock-cells property to PMC
      ARM: tegra: Update sound node clocks in device tree

Thierry Reding (1):
      Merge branch 'for-5.7/dt-bindings' into for-5.7/arm/dt

 .../bindings/arm/tegra/nvidia,tegra20-pmc.txt      | 300 -----------------
 .../bindings/arm/tegra/nvidia,tegra20-pmc.yaml     | 354 +++++++++++++++++++++
 .../bindings/phy/nvidia,tegra124-xusb-padctl.txt   |  24 ++
 .../devicetree/bindings/usb/nvidia,tegra-xudc.yaml | 190 +++++++++++
 arch/arm/boot/dts/tegra114-dalmore.dts             |   8 +-
 arch/arm/boot/dts/tegra114.dtsi                    |   4 +-
 arch/arm/boot/dts/tegra124-apalis-v1.2.dtsi        |   8 +-
 arch/arm/boot/dts/tegra124-apalis.dtsi             |   8 +-
 arch/arm/boot/dts/tegra124-jetson-tk1.dts          |  14 +-
 arch/arm/boot/dts/tegra124-nyan.dtsi               |   8 +-
 arch/arm/boot/dts/tegra124-venice2.dts             |   8 +-
 arch/arm/boot/dts/tegra124.dtsi                    |   4 +-
 arch/arm/boot/dts/tegra20.dtsi                     |   4 +-
 arch/arm/boot/dts/tegra30-apalis-v1.1.dtsi         |   8 +-
 arch/arm/boot/dts/tegra30-apalis.dtsi              |   8 +-
 arch/arm/boot/dts/tegra30-beaver.dts               |   8 +-
 arch/arm/boot/dts/tegra30-cardhu.dtsi              |   8 +-
 arch/arm/boot/dts/tegra30-colibri.dtsi             |   8 +-
 arch/arm/boot/dts/tegra30.dtsi                     |   4 +-
 include/dt-bindings/clock/tegra114-car.h           |   4 +-
 include/dt-bindings/clock/tegra124-car-common.h    |   4 +-
 include/dt-bindings/clock/tegra210-car.h           |   4 +-
 include/dt-bindings/clock/tegra30-car.h            |   4 +-
 include/dt-bindings/soc/tegra-pmc.h                |  16 +
 24 files changed, 685 insertions(+), 325 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/tegra/nvidia,tegra20-pmc.txt
 create mode 100644 Documentation/devicetree/bindings/arm/tegra/nvidia,tegra20-pmc.yaml
 create mode 100644 Documentation/devicetree/bindings/usb/nvidia,tegra-xudc.yaml
 create mode 100644 include/dt-bindings/soc/tegra-pmc.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
