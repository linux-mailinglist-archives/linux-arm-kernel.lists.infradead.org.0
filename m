Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FEBA1FFC3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 08:44:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3aJTAX7xQZFdlwMSZvMQ5JlCCGMDACGp2f1k1zFaN5Y=; b=h7zl5JsSoV8jC7rqKyNELr/yiu
	DP0pLX9pscQsRh2n4u5PKlwo6ngu4ScumaRyRaVH3ujW1WvWDH5YjOYTlC3TetLYUYup+6q7FqRd1
	rCwtsSoDuHoB/nD2EP/hJ8nPro2GE7EtpYOR8Jr8HrI6/uzxGqytEElg+owdXI0dXMehop7es12ob
	rdXcwQ0iPplJjwEAdOS2KumSogsZwVUgoUoWBeNeQ9sGZQvYB2hSqzPxEIQHP1Mr2GzcU+pxYQRgn
	WQSS3aZoW07mwQqeDdDSyZh6WatzplPQola9teaLWreGE6eYA87ASvv3lNlOqPwelW/wuLrl3PJTS
	iSMzsK2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRA7U-0004dL-JF; Thu, 16 May 2019 06:44:00 +0000
Received: from mail-pg1-x535.google.com ([2607:f8b0:4864:20::535])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRA75-0004Jj-PN
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 06:43:38 +0000
Received: by mail-pg1-x535.google.com with SMTP id t22so1042207pgi.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 23:43:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=PQnz2nT/KjUKXeHjaBR81zMUbHzh45bNsq/83y1hyFY=;
 b=NYIYk4Yjkv66dEcU3KgIVlzPX+MS4Dh1JbpbaHYMRZrHb8UswXQgoqFLVAwvBF6fY2
 HiGXQi5PNGKstKPY9zh9H/RWxkCtTtDYbwRNbVKzECD3aJiseJ0R5/O7ukdAdtEYt12Y
 ZrzwhZE1qJqX0/zDOpzIXwzjigFlKvNmMMJ3rSm7zHrvgufbPbTsE8FwMLZ3Z2FKUWX5
 M5ygQdQDLMU9JJvH5x8XmeYTF1z7SvnfAl8481ZCizQdqsJxXZGpW82+7/iHLdTHWRk+
 gQv+XtCw/8SPyyTe7XDm0Ti+IAGKj9vW0hFbSHg8FKPmAcm9LHS4X8f7lKNVQlNywO0i
 Z79A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=PQnz2nT/KjUKXeHjaBR81zMUbHzh45bNsq/83y1hyFY=;
 b=rqp2J+mYfkyii777GIRrvzMrjkavQSlSlkQb8NDK8ddrd6O8TOoe9g20Pd9pLaLG+b
 72ePENcCzSIT+8/s8nhkUSe2sUNY2covTIAhvJjc6jn/78ulAH+SY0hXMBYp1tv1QtUU
 elMcu5/0NkJioc4Z/Sls6eXaoUEX1sPeFrqWTc/neDWmKXzYOmpOhiW9j5N2yFRl3Xiq
 3uYDJdnHBaL4HIC7/8mbG7lRU3sBRIlouV/O4iBHsqLa2bKpl18/U0f/u4NMxSoFA4Ci
 7n5zI2qVJN0esbZQWERRUeYi8oIwuzNPFd7eY11gqMuXLMqM36hzinPXZKn7ljhm14OU
 j9Fg==
X-Gm-Message-State: APjAAAVjkOF6wA99IP5C2bZtrltR24DnjJnK8KRdWEEBuBqt71VHlU5T
 68rcTXGl4GQ9WVqa8G7GbDKAtA==
X-Google-Smtp-Source: APXvYqyaVixdyLVdneqZdfKmvJqCzMfXuFHlfYgDiH4+VC14F/TyNFkNjTkGtNIplKl6Gu9jfwXAdg==
X-Received: by 2002:a63:2cc9:: with SMTP id s192mr6303754pgs.24.1557989014876; 
 Wed, 15 May 2019 23:43:34 -0700 (PDT)
Received: from localhost.localdomain
 (99-152-116-91.lightspeed.sntcca.sbcglobal.net. [99.152.116.91])
 by smtp.gmail.com with ESMTPSA id w194sm11196050pfd.56.2019.05.15.23.43.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 23:43:33 -0700 (PDT)
From: Olof Johansson <olof@lixom.net>
To: torvalds@linux-foundation.org
Subject: [GIT PULL 4/4] ARM: SoC defconfig updates
Date: Wed, 15 May 2019 23:43:04 -0700
Message-Id: <20190516064304.24057-5-olof@lixom.net>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190516064304.24057-1-olof@lixom.net>
References: <20190516064304.24057-1-olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_234336_032772_55267261 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:535 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Olof Johansson <olof@lixom.net>, arm@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

- Mostly the usual churn due to options being reordered or not added
in the right locations.
- Some various enabling of new drivers, etc.

... i.e. the usual updates, nothing particularly sticks out.

----------------------------------------------------------------

The following changes since commit 75ea84dcdb9cc6fa227385e796ea4ae90bb333c8:

  Merge tag 'armsoc-drivers' into HEAD

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-defconfig

for you to fetch changes up to 85200317b324924be3bc72b7bfcce219020ced9c:

  Merge tag 'v5.2-rockchip-defconfig32-1' of git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip into arm/defconfig

----------------------------------------------------------------

Biju Das (3):
      arm64: defconfig: enable RX-8581 config option
      ARM: shmobile: Enable PHY_RCAR_GEN3_USB2 in shmobile_defconfig
      ARM: shmobile: Enable USB [EO]HCI HCD PLATFORM support in shmobile_defconfig

Brian Masney (1):
      ARM: qcom_defconfig: add options for LG Nexus 5 phone

Dinh Nguyen (3):
      arm64: defconfig: enable PCIE_ALTERA
      arm64: defconfig: enable fpga and service layer
      arm64: defconfig: include the Agilex platform to the arm64 defconfig

Enric Balletbo i Serra (1):
      ARM: multi_v7_defconfig: Enable missing drivers for supported Chromebooks

Geert Uytterhoeven (3):
      ARM: shmobile: defconfig: Refresh for v5.1-rc1
      ARM: shmobile: defconfig: Enable support for CFI NOR FLASH
      ARM: multi_v7_defconfig: Enable support for CFI NOR FLASH

Jagan Teki (1):
      arm64: defconfig: Enable SPI_SUN6I

Jon Hunter (2):
      arm64: defconfig: Enable Tegra HDA support
      arm64: defconfig: Add PWM Fan support

Martin Blumenstingl (1):
      ARM: multi_v7_defconfig: enable the Amlogic Meson ADC and eFuse drivers

Olof Johansson (11):
      Merge tag 'amlogic-defconfig' of https://git.kernel.org/.../khilman/linux-amlogic into arm/defconfig
      Merge tag 'arm64_defconfig_for_v5.2' of git://git.kernel.org/.../dinguyen/linux into arm/defconfig
      Merge tag 'multi-v7-defconfig-for-v5.2-signed' of git://git.kernel.org/.../tmlind/linux-omap into arm/defconfig
      Merge tag 'tegra-for-5.2-arm-defconfig' of git://git.kernel.org/.../tegra/linux into arm/defconfig
      Merge tag 'tegra-for-5.2-arm64-defconfig' of git://git.kernel.org/.../tegra/linux into arm/defconfig
      Merge tag 'sunxi-config64-for-5.2' of https://git.kernel.org/.../sunxi/linux into arm/defconfig
      Merge tag 'renesas-arm64-defconfig-for-v5.2' of https://git.kernel.org/.../horms/renesas into arm/defconfig
      Merge tag 'renesas-arm-defconfig-for-v5.2' of https://git.kernel.org/.../horms/renesas into arm/defconfig
      Merge tag 'qcom-defconfig-for-5.2' of git://git.kernel.org/.../agross/linux into arm/defconfig
      Merge tag 'mvebu-arm64-5.2-1' of git://git.infradead.org/linux-mvebu into arm/defconfig
      Merge tag 'v5.2-rockchip-defconfig32-1' of git://git.kernel.org/.../mmind/linux-rockchip into arm/defconfig

Pascal Paillet (1):
      ARM: multi_v7_defconfig: Enable support for STPMIC1

Thierry Reding (4):
      Merge tag 'multi-v7-defconfig-for-v5.2-signed' of git://git.kernel.org/.../tmlind/linux-omap into for-5.2/arm/defconfig
      ARM: tegra: Update default configuration for v5.1-rc1
      ARM: tegra: Enable Trusted Foundations by default
      ARM: Enable Trusted Foundations for multiplatform ARM v7

Thomas Petazzoni (1):
      arm64: defconfig: enable mv-xor driver

Tony Lindgren (2):
      ARM: multi_v7_defconfig: Update for dropped options
      ARM: multi_v7_defconfig: Update for moved options

Valentin Schneider (1):
      arm64: defconfig: Update UFSHCD for Hi3660 soc


 arch/arm/configs/multi_v7_defconfig | 150 +++++++++++++++++--------------
 arch/arm/configs/qcom_defconfig     |  13 ++-
 arch/arm/configs/shmobile_defconfig |  13 ++-
 arch/arm/configs/tegra_defconfig    |  36 ++++----
 arch/arm64/configs/defconfig        | 100 ++++++++++++---------
 5 files changed, 177 insertions(+), 135 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
