Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 686C2E2546
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 23:28:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=NO/MG95nWBq5c9NV35mTpY1fRh1+bJ6Imhc1CNBiOW4=; b=UTV
	f6uPWte3AuhnxrjJb6+sdDIn4r9ceneTENGELU0S17bvwBsreKehkefPAadbVNpzSFlJpQkykJQtf
	O7AwOkYXHFAs53fLC0iDGicqMZtpc2rW/EZqC2Tf2LR2R9zwstX+06Qqif4z+VhGq2qUTyDOe+oJm
	nbScJiW3PGXZfuTfpRKE7valXiXOWxlWcxiOq6MnfnjiTP05pjoi24mKa4rQQLYtAj5FH+dGAqiN4
	blqSsHeARsAftEVeUBMht7NzUUq0H/7V34+CATx7x0w+LJOP59njbuk3O+fhEXmzkOhdvnie7OY+7
	gK3ropmifZ/aUZa1eyQHgnI2lbrZ5+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNOBG-00043X-QL; Wed, 23 Oct 2019 21:28:34 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNOB4-00042x-CT
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 21:28:23 +0000
Received: by mail-wm1-x329.google.com with SMTP id v3so564850wmh.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 14:28:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=RqGzO4Io0pZP77N3w77rYpfNCJp5XV1/xuHHKNsM8lI=;
 b=SoA8aRsPzhEPQYng3psc2htCQ5u9/g+3Qvo8hXaYbuoM0+bdtev53h634FGb6XOoC0
 ZxU/V+x0Pj7ZIVKRJ7Ne24maxJnvVyYPDhUuMz5O3d3tO3unFBV1rXTFHLU+mzn5ToI2
 aoMowa2HeDqlZrYmZMNpTWD5QGcC7mMMW2yU+pry5LXGQwI06us1FoIZRBNcTtmyqGRi
 KuRynYmmDtMH88u5ls6oxVLh1zEVSL/zEs44oj70+Hd8M4gKfHqKOxR0+lpMwlTKsGwT
 CHveWQb7HwHnyxdF2UETDuPSpTth72rTnmv7+HGhTEjmHE1ZsHlsovIxfpijmr5eaJ6C
 NI4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=RqGzO4Io0pZP77N3w77rYpfNCJp5XV1/xuHHKNsM8lI=;
 b=IMJTps2IspywJoe/XsCrx1e2gXFXzQyhwhrN5e6/BMBqE/y7H9is4yGBjW7+M3PlGN
 BCHB5OeUh4fWmSQT39DNg94MUd0rkAq/inWsvzPS5aP80gOGw8tr2/uWQhn4rPIf8kFz
 7auEPJbgUvzaPdd4QHmHP9cbtIK3C8OipDaD6UBZeT9IVAMbrfkhVbaFp1HNxhrjjvXG
 kg+uHBWs64HBF9Mgkmh9W7R8RQn0FzaYkTD6KDsWxZDgK3w90HsBdljtWIM48UwtUsYp
 snYE0cBqEBFuZJZSs8Nze7h77RfyX7MZItDMG4GTATIvNBM60zcm5Xi/xOkWhgzThq7C
 RYUw==
X-Gm-Message-State: APjAAAWl3NoKZP8MaSyKrYk0A+R5+H6AV5jHNh3iobbS6tWWEXAtKz6f
 qML9gGA+2300qq+0Mvvqr2o=
X-Google-Smtp-Source: APXvYqyjXvFSPLC/syqz+i4B7J96I6VPlIGhBiGXB499/2QtulrB13FxVuNy30KUHgSt9iv0csMIAA==
X-Received: by 2002:a1c:1d53:: with SMTP id d80mr1869948wmd.14.1571866100478; 
 Wed, 23 Oct 2019 14:28:20 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id l8sm6493609wru.22.2019.10.23.14.28.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 14:28:19 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: soc@kernel.org
Subject: [GIT PULL 1/4] Broadcom devicetree changes for 5.5
Date: Wed, 23 Oct 2019 14:28:10 -0700
Message-Id: <20191023212814.30622-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_142822_443934_BEAECAD8 
X-CRM114-Status: GOOD (  15.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:329 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rob Herring <robh@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 arnd@arndb.de, khilman@kernel.org, Eric Anholt <eric@anholt.net>,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 bcm-kernel-feedback-list@broadcom.com, Dan Haab <dan.haab@legrand.com>,
 olof@lixom.net, linux-arm-kernel@lists.infradead.org,
 Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.5/devicetree

for you to fetch changes up to 4c365e231bd1d3bbe2bdbc2a0c4e413ffb365b20:

  ARM: dts: bcm: HR2: add label to sp805 watchdog (2019-10-23 10:42:23 -0700)

----------------------------------------------------------------
This pull request contains Broadcom ARM-based SoCs Device Tree updates
for 5.5, please pull the following:

- Stefan paves the way for supporting the Raspberry Pi 4 and gets rid of
  a bunch of dtc checker warnings by removing incorrect
  nodes/properties, moving BCM2835/6/7 specific nodes into the
  appropriate DTS, converts Raspberry Pi boards to JSON schema, and
  finally adds minimal Raspberry Pi 4 model B support

- Dan adds support for the Luxul XWC-2000 router based on the BCM47094 SoC

- Chris adds a proper label to the Hurricane 2 watchdog controller node

----------------------------------------------------------------
Chris Packham (1):
      ARM: dts: bcm: HR2: add label to sp805 watchdog

Dan Haab (1):
      ARM: dts: BCM5301X: Add DT for Luxul XWC-2000

Florian Fainelli (1):
      Merge tag 'tags/bcm2835-dt-next-2019-10-15' into devicetree/next

Stefan Wahren (7):
      ARM: dts: bcm283x: Remove simple-bus from fixed clocks
      ARM: dts: bcm283x: Remove brcm,bcm2835-pl011 compatible
      ARM: dts: bcm283x: Move BCM2835/6/7 specific to bcm2835-common.dtsi
      dt-bindings: arm: Convert BCM2835 board/soc bindings to json-schema
      dt-bindings: arm: bcm2835: Add Raspberry Pi 4 to DT schema
      ARM: dts: Add minimal Raspberry Pi 4 support
      arm64: dts: broadcom: Add reference to RPi 4 B

 .../devicetree/bindings/arm/bcm/bcm2835.yaml       |  54 ++
 .../devicetree/bindings/arm/bcm/brcm,bcm2835.txt   |  67 --
 arch/arm/boot/dts/Makefile                         |   2 +
 arch/arm/boot/dts/bcm-hr2.dtsi                     |   2 +-
 arch/arm/boot/dts/bcm2711-rpi-4-b.dts              | 123 +++
 arch/arm/boot/dts/bcm2711.dtsi                     | 844 +++++++++++++++++++++
 arch/arm/boot/dts/bcm2835-common.dtsi              | 194 +++++
 arch/arm/boot/dts/bcm2835-rpi.dtsi                 |   4 -
 arch/arm/boot/dts/bcm2835.dtsi                     |   1 +
 arch/arm/boot/dts/bcm2836.dtsi                     |   1 +
 arch/arm/boot/dts/bcm2837.dtsi                     |   1 +
 arch/arm/boot/dts/bcm283x-rpi-usb-peripheral.dtsi  |   7 +
 arch/arm/boot/dts/bcm283x.dtsi                     | 190 +----
 arch/arm/boot/dts/bcm47094-luxul-xwc-2000.dts      |  53 ++
 arch/arm64/boot/dts/broadcom/Makefile              |   3 +-
 arch/arm64/boot/dts/broadcom/bcm2711-rpi-4-b.dts   |   2 +
 16 files changed, 1291 insertions(+), 257 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm2835.txt
 create mode 100644 arch/arm/boot/dts/bcm2711-rpi-4-b.dts
 create mode 100644 arch/arm/boot/dts/bcm2711.dtsi
 create mode 100644 arch/arm/boot/dts/bcm2835-common.dtsi
 create mode 100644 arch/arm/boot/dts/bcm283x-rpi-usb-peripheral.dtsi
 create mode 100644 arch/arm/boot/dts/bcm47094-luxul-xwc-2000.dts
 create mode 100644 arch/arm64/boot/dts/broadcom/bcm2711-rpi-4-b.dts

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
