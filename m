Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B959DCD2E0
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 17:30:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+LJFZBLT8mlVbm/XOihWYP97m88IvGTHjRqgl/MGBHs=; b=cHe
	+s5WsDVHuMNdV+O5npRIoIL3nL6xdczIZn/HKNjFkaSbQZuidoYiqtsc0+/7DGXpSmSjUZHG0V/qB
	kDpAYgi4JYG33v0GWCPuS4AgUl9zNyRbHhVG+oQqsnrKUh6BZZmMP3UULJQ3yFt6OYyhbWiM1Ezhg
	lQUbHHk2woic2BB3OSjY0iVavUhl+ZobFj8na6cNWjTgILy+xKNVktugQHNYHYsldEmLqDhj+iK0w
	OmLpBlqwTMo3uo+iaj9OepdujcHAjZK0FLsicwdaKFsH1FBA8RWKzj15cvmjipce4JnpNTthf9JAR
	55Sy/0Rd+3Rv/npASaFl+JhzIigGPxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH8UC-0008WP-UU; Sun, 06 Oct 2019 15:30:16 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH8T6-0007qy-0r
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 15:29:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1570375736;
 bh=D9EXbZWdNzUEMKJgC9st3p2SqLaVHrzEQ2VeUp/pJgc=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=Dy2wdAZcfCOjc9DKMO4G6S4p4rKkFX/zkBUy45mXLjW6ZS0yLM5X/YdGuXVaMclyW
 RBmCk53r7AE6AVKEk600rS7Uf60NUZUixgWcopLQZpPcBIa+8I567INoZIWo1TqJXK
 LPa+A12hI/SJmYfNI/K0ijcetmTn0no0OLFj9EFA=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.116]) by mail.gmx.com
 (mrgmx104 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1M72sJ-1iBNQt0eQp-008bhB; Sun, 06 Oct 2019 17:28:56 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Marcel Holtmann <marcel@holtmann.org>,
 Johan Hedberg <johan.hedberg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Eric Anholt <eric@anholt.net>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Subject: [PATCH V4 00/10] ARM: Add minimal Raspberry Pi 4 support
Date: Sun,  6 Oct 2019 17:28:18 +0200
Message-Id: <1570375708-26965-1-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:oaevrIPGssMFFjgefH6bCBqGETYjbu6kvokh66JCjc8pzkbzgCn
 DduSlK/gv0//R/+upcRK6CZgVQqBmFkw9pmMBi2uIyuJ4imOQqV2WvfkVH173bLaQJbG8No
 9K0JvL5w4KwixDtDju0KS4b5plDqf2Z+lRf0xCOueFWmpmDxAQvUfUxr8GKIORHmaNH9JMO
 Fc2JPAe8NHraHgjucEynQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:3lhL9fo9LXc=:aAW2l6Zdjh2q+QoFDgPCVI
 zqnMD5T8oL0CRty6U22ldNDK993Z2iM/oHnP8AThn3AiAwJU1V11o3gEBl1gN8bomN8p+sSY8
 XZVc2qM7DiYJaniqQOun6C4daDlszk6g3+HrKdgOG2ftzhBA1s5cXUw0dTUVZjGkSnjawtA/C
 rGFIy1OdxwfvcvcH6+wQGd4Xw+Gt+FKI9UVYpgD231O3C59GsMUbuXH8/nORZy7jmCkcvSc5l
 s08VbWPfxkPVBwOMyhaN+z+Jzp0J+YVDdnNlkAYl/ARV5XOzYQcbZuOzAUqxw77ChRI91geEQ
 aOtP9RtvDSTPybo450zyhOohsggqlTS1qYd4c+NS61yWuRAzNwzIXZRsc/I9Telt8YLp0j4RB
 a77vq7i7QMszjEZXQ3HoEjO+4LzQ7/0v4leFWZ15GZU5Rytm+v1NxHKOwKVZjvNGRfRIvj7qU
 rSY2qcKex2ZdTjNJd9nqPfbpsdUpnTx0L5O6C1EWeVVpeho/U2ialyswX/yMjHO9iCSP5esYh
 t+IyXIDTb7ykz6ILDdOBijMf76zaUPFgWKRGlemwRm/1zLKkPA5fAs9HjmrhVIwvsuxdnf9ct
 0rWVwnLNzMJzsBIpTIixd0u1R/HQBxzqci8eetzd7uFPIk9LCoPOUtAwpKvTBjye3UNpdGqr2
 SZNwwozAl5yaXkh35242bTY0My86jN4zK4M0loLDjujLNhnqHqWyamkg54GLNYMKSNkhuPYWK
 JdqNNbuBBAX1uvzQcS4QOMgHJhL+XInCCPcOKBu4NVspmxADm/A8RhfHfhnZiXZLsv96FgEmQ
 Y+wYWtg75d3mzLrKqjFb3Jh81pgugFwsG9lCWqRTqe5ea9NQJ6kav6rEyztWfScmW8d4bRCBM
 m6Ae39MtREFhm/mk4RkpXBIzfXEonkriPRVg6CL5W9DbnEbUUWr1ne70oq0MiYdxo2s6HeX4p
 hDyIaawD7sMGwS2DW1Nc6b/Fx+AlYQTg6TfRKhN9d1S0TncS08kivghH1rdQDX+EmOJvFjN63
 Sj3fynHJ2HGa53yT6TB13nORnxk10maexznek/NykFclnHZAhMgZwtwtj9aNyW8ibp3aWPU04
 1/tDWZHmlU34sK15s7yJgLuvXofOMW+UMXVEuDXktTC/8OEPtTNj8I1jBI5gbzqegz/0pqs2b
 QP7xJnpCgCRD5jjzi9qktVGN2rzQCoTkS0tEN7SmbnwzTvNJLJ4WEz1FvoykQlMmGoxeh4DGK
 YQGt7Douc7BJjTJm9WFO5LPiPo3UGvYbx3ccp4Q==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_082908_394676_EE61F4ED 
X-CRM114-Status: GOOD (  19.74  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.21 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 linux-bluetooth@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <wahrenst@gmx.net>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds minimal support for the new Raspberry Pi 4, so we are able
to login via debug UART.

Patch 1:     Bluetooth driver fix
Patch 2-3:   Fix some DT schema warnings
Patch 4-5:   Prepare DTS for the new SoC BMC2711
Patch 6-9:   Add Raspberry Pi 4 DTS support
Patch 10:    Update MAINTAINERS

Unfortunately the Raspberry Pi Foundation didn't released a
peripheral documentation for the new SoC yet. So we only have a preliminary
datasheet [1] and reduced schematics [2].

Known issues:
Since Linux 5.3-rc1 DMA doesn't work properly on that platform.
Nicolas Saenz Julienne investigates on that issue. As a temporary workaround
i reverted the following patch to test this series:

79a98672 "dma-mapping: remove dma_max_pfn"
7559d612 "mmc: core: let the dma map ops handle bouncing"

Changes in V4:
- add Rob's Reviewed-by
- enable ZONE_DMA for ARCH_BCM2835
- fix spi reference in bcm2711.dtsi
- fix bluetooth section in RPi 4 dts
- drop "always-on" for armv8-timer
- add necessary Bluetooth driver fix
- add arm64 dts link
- additional comments to the dts files as requested by Florian

Changes in V3:
- rebased series
- add Reviewed-by
- enable ARM_GIC for ARCH_BCM2835 on arm64 too
- configure i2c pull-up in bcm2711.dtsi
- move i2c2 to bcm2835-common.dtsi
- add missing compatibles to DT schema as suggested by Rob
- fix DT schema warnings in dtsi files
- replace brcm pintrl with generic pinctrl as suggested by Linus
- make dma_zone_size depend on CONFIG_ZONE_DMA as suggested by Matthias

Changes in V2:
- use separate board file for BCM2711
- enable ARM_GIC for ARCH_BCM2835
- add Acked-by and Reviewed-by
- fix arm-pmu and timer nodes for BCM2711 reported by Marc Zyngier
- enable HDMI at board level
- move HDMI and pixelvalve into bcm2835-common.dtsi as suggested by Eric Anholt
- fix DWC2 probing warning by setting USB role to peripheral
- fix order of node references in bcm2711.dtsi
- disable I2C clock stretching quirk for BCM2711
- mark PLLD_PER as critical clock
- make PLLH clock unavailable on BCM2711
- fix compile warning in clk-bcm2835 for arm64

Changes since RFC:
- change BCM2838 -> BCM2711 as discussed in RFC
- update MAINTAINERS accordingly
- drop "spi: bcm2835: enable shared interrupt support" from series
- squash all pinctrl-bcm2835 changes into one patch
- introduce SoC specific clock registration as suggested by Florian
- fix watchdog probing for Raspberry Pi 4
- convert brcm,bcm2835.txt to json-schema
- move VC4 node to bcm2835-common.dtsi
- fallback to legacy pull config for Raspberry Pi 4
- revert unintended change of mailbox in bcm283x.dtsi
- add reference for arm64

[1] - https://www.raspberrypi.org/documentation/hardware/raspberrypi/bcm2711/rpi_DATA_2711_1p0_preliminary.pdf
[2] - https://www.raspberrypi.org/documentation/hardware/raspberrypi/schematics/rpi_SCH_4b_4p0_reduced.pdf

Stefan Wahren (10):
  bluetooth: hci_bcm: Fix RTS handling during startup
  ARM: dts: bcm283x: Remove simple-bus from fixed clocks
  ARM: dts: bcm283x: Remove brcm,bcm2835-pl011 compatible
  ARM: dts: bcm283x: Move BCM2835/6/7 specific to bcm2835-common.dtsi
  dt-bindings: arm: Convert BCM2835 board/soc bindings to json-schema
  dt-bindings: arm: bcm2835: Add Raspberry Pi 4 to DT schema
  ARM: bcm: Add support for BCM2711 SoC
  ARM: dts: Add minimal Raspberry Pi 4 support
  arm64: dts: broadcom: Add reference to RPi 4 B
  MAINTAINERS: Add BCM2711 to BCM2835 ARCH

 .../devicetree/bindings/arm/bcm/bcm2835.yaml       |  54 ++
 .../devicetree/bindings/arm/bcm/brcm,bcm2835.txt   |  67 --
 MAINTAINERS                                        |   3 +-
 arch/arm/boot/dts/Makefile                         |   1 +
 arch/arm/boot/dts/bcm2711-rpi-4-b.dts              | 123 +++
 arch/arm/boot/dts/bcm2711.dtsi                     | 844 +++++++++++++++++++++
 arch/arm/boot/dts/bcm2835-common.dtsi              | 194 +++++
 arch/arm/boot/dts/bcm2835-rpi.dtsi                 |   4 -
 arch/arm/boot/dts/bcm2835.dtsi                     |   1 +
 arch/arm/boot/dts/bcm2836.dtsi                     |   1 +
 arch/arm/boot/dts/bcm2837.dtsi                     |   1 +
 arch/arm/boot/dts/bcm283x-rpi-usb-peripheral.dtsi  |   7 +
 arch/arm/boot/dts/bcm283x.dtsi                     | 190 +----
 arch/arm/mach-bcm/Kconfig                          |   4 +-
 arch/arm/mach-bcm/Makefile                         |   3 +-
 arch/arm/mach-bcm/bcm2711.c                        |  24 +
 arch/arm64/Kconfig.platforms                       |   5 +-
 arch/arm64/boot/dts/broadcom/Makefile              |   3 +-
 arch/arm64/boot/dts/broadcom/bcm2711-rpi-4-b.dts   |   2 +
 drivers/bluetooth/hci_bcm.c                        |   2 +
 20 files changed, 1272 insertions(+), 261 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm2835.txt
 create mode 100644 arch/arm/boot/dts/bcm2711-rpi-4-b.dts
 create mode 100644 arch/arm/boot/dts/bcm2711.dtsi
 create mode 100644 arch/arm/boot/dts/bcm2835-common.dtsi
 create mode 100644 arch/arm/boot/dts/bcm283x-rpi-usb-peripheral.dtsi
 create mode 100644 arch/arm/mach-bcm/bcm2711.c
 create mode 100644 arch/arm64/boot/dts/broadcom/bcm2711-rpi-4-b.dts

--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
