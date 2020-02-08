Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E1111563FC
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Feb 2020 12:21:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Unbk8lcx15nUWz9rzxj99h2eeSbbN5X7+Ipets9VqSI=; b=LI0B+UuW2anqUB
	04NrvXs4kyWXKXmu9OOU3Its4sEmD9aHk/OPNSeNlHx95lDVfVEP5HghQ5Hn5Psr/ZWZf7YZjMD3T
	203kcc4Qi6sNMTWb/UgYeWEOpVfYsePhP/oTySLa+1LbsdvppGYrdg8fEean7ZO8SHqr51ukVTW/R
	bifG3mLI5upIbqKlx4J4bm3UwjOWCoC1pVgVSxoi4g74H0L+0ox9se5YgEb/PthfhuZrbJPSiRg2i
	t8HajJw+EbnESILNODE+VndnYmn6SGFosR4S7du/D9RpMtNCw2g5Baz5fzPW6SzQfChW8qWk7rjl1
	7LIjPPlZ9YT90Mzl/rug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0OBE-0002LO-CE; Sat, 08 Feb 2020 11:21:44 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0OAD-0001NY-Uh
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Feb 2020 11:20:43 +0000
Received: by mail-pj1-x1044.google.com with SMTP id d5so2053115pjz.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 08 Feb 2020 03:20:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CLvBYI2Cs8Bqj8AtKjZ3LbYsK+wgnbwS8xmH1fw8LUE=;
 b=nnBhxewMsZOYLOs9Kf6jUrr1OtWph2gM8kCfFDaMZkAQL8fvrRirZ2/ebsWfG3zMJ3
 bfSFqZSWCDyg78v1r2SRvC1YwMCqiR59dvuhCQXDMfrldsfNj3oW79edbNayPUF+KYWm
 RFW9xJfWAjBihO6y6R6E2bZqWEKFShZbBAe1023/fg49g6sCf8ZfgzCEozCpCwsuoIrZ
 0GeZY5+MLCmwiUfJpWe7k4sYUGHlKIUdMhuyW+h54tXWiI6i5Peo3bidVtvB/m/rB+2D
 Y9rZeCYlEdSsM1d7xyvu15SvhTtUSl31l68NKq7wsvtxv77RJ+j5xo0mL09k+01HEZtN
 dg4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CLvBYI2Cs8Bqj8AtKjZ3LbYsK+wgnbwS8xmH1fw8LUE=;
 b=o/0GoplAw3sItaUkvpK8lEyuSeXhZjqQkmNl4v/Qj5mI+YUzb7ZWTmtVqy0y7M6mbr
 aqEd/GYo3gttgmLtN/QkNsQoa4687oNXfuuwJgNIPcUgTnKNcu2UooPP8v+bfo3Yo/SZ
 fMuVsLm1zAQoFkU8/xcCdi1lFkT2B4bftqLSR4Xvv2dczpc7SVeRuDyBM/efAomwKiu8
 rG1p8oe6yrWw+vlFpAid3MXeT+uDcBzyLQo7bikZy8T1chmYJjEJq1keqeYELicmAO+0
 WdZllsfZmsSS8pq+0+GXdLx/kZ1jsoMrzGzm2AH5u7o2IYe9rbGZTnltqCPR7EYLFrP0
 Hk+Q==
X-Gm-Message-State: APjAAAUfky4EmD4wCi9v8c8eMiKCwUB0sD7yQXfNOLFGp83qcfnv5KIO
 Hu3chT7jUUKaFhu7ZquGv9FySw==
X-Google-Smtp-Source: APXvYqwMlHi+v4Nl0O6eC0mwPsXJS+kBanl+5tdDrtHUeA4jtUp8CiywLAerDT9joHBCBNr2OOK2NA==
X-Received: by 2002:a17:902:6ac7:: with SMTP id
 i7mr3305678plt.314.1581160841129; 
 Sat, 08 Feb 2020 03:20:41 -0800 (PST)
Received: from localhost.localdomain
 (99-152-116-91.lightspeed.sntcca.sbcglobal.net. [99.152.116.91])
 by smtp.gmail.com with ESMTPSA id a19sm5707281pju.11.2020.02.08.03.20.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 08 Feb 2020 03:20:39 -0800 (PST)
From: Olof Johansson <olof@lixom.net>
To: torvalds@linux-foundation.org
Subject: [GIT PULL 5/5] ARM: SoC: late updates
Date: Sat,  8 Feb 2020 03:20:18 -0800
Message-Id: <20200208112018.29819-6-olof@lixom.net>
X-Mailer: git-send-email 2.22.GIT
In-Reply-To: <20200208112018.29819-1-olof@lixom.net>
References: <20200208112018.29819-1-olof@lixom.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200208_032042_005716_8F3E3E2B 
X-CRM114-Status: GOOD (  17.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

This is some material that we picked up into our tree late, or that had
more complex dependencies on more than one topic branch that makes sense
to keep separately.

- TI support for secure accelerators and hwrng on OMAP4/5

- TI camera changes for dra7 and am437x and SGX improvement due to better
reset control support on am335x, am437x and dra7

- Davinci moves to proper clocksource on DM365, and regulator/audio
improvements for DM365 and DM644x eval boards

----------------------------------------------------------------

The following changes since commit a1a0cfaf7fb7c1a90201e6b0937f742c8c212d8e:

  Merge tag 'armsoc-defconfig' into HEAD

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-late

for you to fetch changes up to a832eb203ecd34e486bdde0042cf166e687eb227:

  Merge tag 'davinci-for-v5.6/soc' of git://git.kernel.org/pub/scm/linux/kernel/git/nsekhar/linux-davinci into arm/late

----------------------------------------------------------------

Bartosz Golaszewski (3):
      clocksource: davinci: only enable clockevents once tim34 is initialized
      ARM: davinci: dm365: switch to using the clocksource driver
      ARM: davinci: remove legacy timer support

Benoit Parrot (11):
      ARM: dts: dra7: add cam clkctrl node
      ARM: OMAP: DRA7xx: Make CAM clock domain SWSUP only
      ARM: dts: dra7-l4: Add ti-sysc node for CAM
      ARM: dts: DRA72: Add CAL dtsi node
      arm: dts: dra72-evm-common: Add entries for the CSI2 cameras
      arm: dtsi: dra76x: Add CAL dtsi node
      arm: dts: dra76-evm: Add CAL and OV5640 nodes
      ARM: dts: am437x-sk-evm: Add VPFE and OV2659 entries
      ARM: dts: am43x-epos-evm: Add VPFE and OV2659 entries
      ARM: dts: dra7: add vpe clkctrl node
      ARM: dts: dra7: Add ti-sysc node for VPE

Olof Johansson (3):
      Merge tag 'omap-for-v5.6/ti-sysc-drop-pdata-crypto-signed' of git://git.kernel.org/.../tmlind/linux-omap into arm/late
      Merge tag 'omap-for-v5.6/dt-late-signed' of git://git.kernel.org/.../tmlind/linux-omap into arm/late
      Merge tag 'davinci-for-v5.6/soc' of git://git.kernel.org/.../nsekhar/linux-davinci into arm/late

Peter Ujfalusi (2):
      ARM: davinci: dm365-evm: Add Fixed regulators needed for tlv320aic3101
      ARM: davinci: dm644x-evm: Add Fixed regulators needed for tlv320aic33

Tero Kristo (1):
      ARM: dts: am43xx: add support for clkout1 clock

Tony Lindgren (17):
      ARM: dts: Add missing omap4 secure clocks
      ARM: dts: Add missing omap5 secure clocks
      ARM: dts: Configure omap4 rng to probe with ti-sysc
      ARM: dts: Configure omap5 rng to probe with ti-sysc
      ARM: dts: Configure interconnect target module for omap4 sham
      ARM: dts: Configure interconnect target module for omap4 aes
      ARM: dts: Configure interconnect target module for omap4 des
      ARM: OMAP2+: Drop legacy platform data for omap4 aes
      ARM: OMAP2+: Drop legacy platform data for omap4 sham
      ARM: OMAP2+: Drop legacy platform data for omap4 des
      Merge branch 'omap-for-v5.6/ti-sysc-omap45-rng' into omap-for-v5.6/ti-sysc-drop-pdata
      Merge branch 'omap-for-v5.6/ti-sysc-dt-cam' into omap-for-v5.6/dt
      ARM: dts: Configure rstctrl reset for am335x SGX
      ARM: dts: Configure sgx for dra7
      ARM: dts: Configure interconnect target module for am437x sgx
      ARM: dts: motorola-cpcap-mapphone: Configure calibration interrupt
      ARM: dts: omap4-droid4: Enable hdq for droid4 ds250x 1-wire battery nvmem


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
