Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A12122617
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 09:01:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cmFuVruYHJsLmpsJ7yd5Yjc9Slr2bH3lGZjjjdVXa6I=; b=Z+k7TvJIVaLLWP
	m0OG72UJxTsByojjvZm4Sb3OzryWoMVHuZy7WxstqGvD2mbXP/Z9sdqnJ6FXkLSusLazUe47LyadZ
	oXeKVN6+CDgNJPOXZyvUNfcFHVRqtEEmjUjBf733amFgCHnRCWCr+0fVVgvY9oUby0QjN0WBLxBFu
	vQx/SjTZ1A7SSIvSib24+ad8lUEDznVIpuq51NVBXvmt//Z/D3X8h8A4/Wz1Aqd+91jW+VboV5cMM
	744Gw2tXLf6b/oyH0IW319bpTfvYInskWca5aPOrlx9chIXmlRkcS1s2oU7xVwMonMNaBUPQARq7x
	/1eXyHfh7EZUTj7jKaOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih7nQ-0003Fw-Je; Tue, 17 Dec 2019 08:01:32 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih7mz-00032y-4d
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 08:01:06 +0000
Received: by mail-lf1-x144.google.com with SMTP id 9so6250992lfq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 00:01:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=T2hAV6T0SoU9RE4QUFlFaUDYkKCiBGQ/+KL4OS2oxRE=;
 b=GFeasXIhlmOZAvDrCVeoLeMIliq4ltI8161rcUH6oQdyiPXvPemIK/rXfLgagKrzaF
 a2FfVoH0wdHmgVFLo66NoVOls0vxKGN71fc1K39sWlbuJfub10VKcgNMAV6TEpZEf30v
 v6D+0I6NTDZ4iLnx6hZTXL9eN7d08x5ErpsiIc3b5zLsL4b7WjSAhf4xQoVZrPixB0x/
 mM+sbBIVvObvi5Rd+Uh3mB0eqT1fJUQL8fQ/TWCMz6HPzhLZ/UbWhUCNN5G8yJCjKlQc
 RnFBvMEOw6ZUoxDaV4LZl/fu1tR35DFf4DhgH8HYw2fqblPShTX5VVBtxgdNjg3MPWTJ
 DSSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=T2hAV6T0SoU9RE4QUFlFaUDYkKCiBGQ/+KL4OS2oxRE=;
 b=aotrk1q7lidJYygHPwmHu/NAF4vYHEOX6tpP7zkPcPmwGYVURd5wEeG66/c4FIQYcs
 4e0B3X0RmxokXLVgJqcj5VuZ4vBF7InNAkLimBYZKnLKGs0NdSNtUQLuWHW4tBG7gNbZ
 /CIIdOIl/oIk5wJXbHAWNnyc/toHe3u8xu4yDCkt6K9qD2IOZwcGFNwG7jBT3J/Y17eD
 UEQjOlY/SA6qtb0OC2lEdSpSNr87eL6liUcEL1ATXNiDsRu34Z5d3+ZOLVeUehImV+Ze
 tiF2b3L7Vk6s7/sbAS0GxmpdEEkxIIfyC7eLWq83EkBNatbRX0Y2CXuj2bneZdnApSja
 7u5Q==
X-Gm-Message-State: APjAAAVRCtmlJZ1yYsLLUhiwOBHiNRubZNe/KDqP2vUO+X/DGSJpaOFw
 HrWHZmpD6bGmXdpeyN9sN1mFADiFl3xHKtk2lwu50Q==
X-Google-Smtp-Source: APXvYqz83h2KLIAN+HcuxDIED1AiATq4C/oNR/Z0DY3Q6pDnfQVylCmQeL1p4k0v+Z+gTceG/ppMNyh1MyCLDl14ey0=
X-Received: by 2002:ac2:55a8:: with SMTP id y8mr1875529lfg.117.1576569658634; 
 Tue, 17 Dec 2019 00:00:58 -0800 (PST)
MIME-Version: 1.0
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 17 Dec 2019 09:00:47 +0100
Message-ID: <CACRpkdYfqJ=VXkP3Qm5Lw63AuR=1ChxbUW+Y-nhw5gCX6sYfDw@mail.gmail.com>
Subject: [GIT PULL] Ux500 DTS changes for v5.6 take one
To: arm-soc <arm@kernel.org>, soc@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_000105_241737_59AE93F4 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Stephan Gerhold <stephan@gerhold.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi SoC folks,

here is the first set of DTS changes for Ux500 for the v5.6 kernel
cycle, we might be sending more later, but this is a good base.

You will notice that PostmarketOS champion Stephan has
written more changes than me, which is especially nice to see,
we have a bit of traction going on with this platform.

The details are in the signed tag as usual!

Please pull it in for the DTS update branch.

Yours,
Linus Walleij

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-stericsson.git
tags/ux500-armsoc-v5.6-1

for you to fetch changes up to 42a1e9450c27de15067d1d25f6a608e2bfeb72b2:

  ARM: dts: ux500: Add devicetree for HREF520 (2019-12-09 14:45:02 +0100)

----------------------------------------------------------------
First set of Ux500 DTS changes for the v5.6 kernel:

- Add the GPADC IIO channels
- Factor out generic pin configuration
- Add the gpio_in_nopull configuration
- Tighten up I2C and SPI buses
- Clean up some compatibles
- Extract a generic DB8500 DTSI
- Add HREF520 DTS and the associated DB8520 DTSI
- Split TVK R2 and R3 to separate DTSI files

----------------------------------------------------------------
Linus Walleij (5):
      ARM: dts: ux500: declare GPADC IIO ADC channels
      ARM: dts: ux500: Drop pulls on I2C buses
      ARM: dts: ux500: Break out DB8500 DTSI
      ARM: dts: ux500: Split TVK DTSI files in two
      ARM: dts: ux500: Add devicetree for HREF520

Stephan Gerhold (13):
      ARM: dts: ux500: snowball: Remove unused PRCMU cpufreq node
      dt-bindings: arm: Document compatibles for Ux500 boards
      ARM: dts: ux500: Move generic pin configs out of
ste-href-family-pinctrl.dtsi
      ARM: dts: ux500: Rename generic pin configs according to pin group
      ARM: dts: ux500: Add alternative SDI pin configs
      ARM: dts: ux500: Add pin configs for UART1 CTS/RTS pins
      ARM: dts: ux500: nomadik-pinctrl: Add &gpio_in_nopull
      ARM: dts: ux500: Disable I2C/SPI buses by default
      ARM: dts: ux500: Add aliases for I2C and SPI buses
      ARM: dts: ux500: Move serial aliases to ste-dbx5x0.dtsi
      ARM: dts: ux500: Remove ux500_ prefix from ux500_serial* labels
      ARM: dts: ux500: Add "simple-bus" compatible to soc node
      ARM: dts: ux500: Use "arm,pl031" compatible for PL031

 Documentation/devicetree/bindings/arm/ux500.yaml |  31 ++
 MAINTAINERS                                      |   1 +
 arch/arm/boot/dts/Makefile                       |   3 +-
 arch/arm/boot/dts/ste-ab8500.dtsi                | 102 +++-
 arch/arm/boot/dts/ste-db8500.dtsi                |  15 +
 arch/arm/boot/dts/ste-db8520.dtsi                |  15 +
 arch/arm/boot/dts/ste-dbx5x0-pinctrl.dtsi        | 632 +++++++++++++++++++++++
 arch/arm/boot/dts/ste-dbx5x0.dtsi                |  75 ++-
 arch/arm/boot/dts/ste-href-family-pinctrl.dtsi   | 532 +------------------
 arch/arm/boot/dts/ste-href-tvk1281618-r2.dtsi    |  79 +++
 arch/arm/boot/dts/ste-href-tvk1281618-r3.dtsi    |  58 +++
 arch/arm/boot/dts/ste-href-tvk1281618.dtsi       |  71 +--
 arch/arm/boot/dts/ste-href.dtsi                  |  67 ++-
 arch/arm/boot/dts/ste-href520-tvk.dts            |  22 +
 arch/arm/boot/dts/ste-hrefprev60-stuib.dts       |  10 +-
 arch/arm/boot/dts/ste-hrefprev60-tvk.dts         |  10 +-
 arch/arm/boot/dts/ste-hrefprev60.dtsi            |   2 +-
 arch/arm/boot/dts/ste-hrefv60plus-stuib.dts      |  10 +-
 arch/arm/boot/dts/ste-hrefv60plus-tvk.dts        |  10 +-
 arch/arm/boot/dts/ste-hrefv60plus.dtsi           |   1 -
 arch/arm/boot/dts/ste-nomadik-pinctrl.dtsi       |   5 +
 arch/arm/boot/dts/ste-snowball.dts               |  70 ++-
 22 files changed, 1096 insertions(+), 725 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/arm/ux500.yaml
 create mode 100644 arch/arm/boot/dts/ste-db8500.dtsi
 create mode 100644 arch/arm/boot/dts/ste-db8520.dtsi
 create mode 100644 arch/arm/boot/dts/ste-dbx5x0-pinctrl.dtsi
 create mode 100644 arch/arm/boot/dts/ste-href-tvk1281618-r2.dtsi
 create mode 100644 arch/arm/boot/dts/ste-href-tvk1281618-r3.dtsi
 create mode 100644 arch/arm/boot/dts/ste-href520-tvk.dts

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
