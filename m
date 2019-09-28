Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE290C10BE
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Sep 2019 14:08:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=8Fy27Pegu9oChTY34P4VE6wP4VdaddcECdxINMgll14=; b=ma1
	zoKzkIHQDRAqIqwXlznlxnd3ZmcUiwwxqCVGc1OL8SIfJc0SqEJ5Te4zN7SECXpsEj96xA7gLdmVV
	1gX6EcgLc87QUdKWFkjT/4FV74AmPV8iAFmc3SBYhdqfWkbSFqHMQHXEF6YcTSEBVRqnz7u3MmSYR
	AvhiWWSWafoWpaWcv2YguyGQV8YIW+1KG352DZTamJMFAPPLeQAY1DOtH9ZLMxUJ1iK37toEPaaES
	IpsLeaYBsDnG12oqk2Q1dtNlFXXdbUXyh7UIUN/wjcYj7PSU8FtH3vvMPINb5X50ZvqIQpMMPMkbS
	lnijZEpj4aKllUlWXaQj2WuzbTNYtSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEBW6-0006ZJ-4b; Sat, 28 Sep 2019 12:08:02 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEBVp-0006Yp-PD
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Sep 2019 12:07:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1569672456;
 bh=kA9LT+J1mkFgK6OJuKagBFzmadC3HLjtk+uf794I/HY=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=CCIXmLvop6eEFi6oidzX8s8e33Af+Jo2pPUR/dZEOa85Ooy8i912lH+gqL+iMDIww
 qHEgPC8XrqTFTed2t1WIqQwPLxvnmmYzlqgwRbVaZVmpz5RbH//O6lI3eXawjeEbB/
 oThk9nDjS4sfm2R+VbdmCgAGRqqmFd626S15iehQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.130]) by mail.gmx.com
 (mrgmx005 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1N4zAs-1i4Nvv3ssG-010vgv; Sat, 28 Sep 2019 14:07:36 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>
Subject: [PATCH V3 0/8] ARM: Add minimal Raspberry Pi 4 support
Date: Sat, 28 Sep 2019 14:07:06 +0200
Message-Id: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:Sn7IIjrYMv1jLpKXguD1s2VzxnorVdX6UuwdX/R+KSbZUxqp8v2
 avfTC9WC0vqzK2UeLsUeuQ6HP2VuKtxBzEFm58n0G4E+XQeKBg7uko5hknlZfQhg36oX4l5
 6vk2qUvk/7pQBEpoTGffCpxMugffopy35/A/zSdYnhmLJ0i/TVlxu4HRllIVPjc8uNmZ+Ls
 MXQuqtjC/LaLA8u+ojX3w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:cR43x9UxEMM=:cn6yIG95F4WXtBgBSSAqG+
 Nb0sTe5DvnUk0a025tzp00JqtypzPgF+2nM4EVu3sDSBtSkDo4mgIG/THUZg8VIq00cjsol5X
 Y9V+PxFfTyTw91BPA/CO7PwlwnfNDYswB2YrH5YLDWgZvq+WbG8qIpxeqqyw8reKJBJnY5a4G
 dcZXuunhduFjMIuUdy+sxDzY6gU1ju8IaD/i77PPAZKc2aWDXkby+Yx7LNs7tZ8rqHeyl9/QU
 HvZgbQun4Of+jOpU+jEglVzGEKTW5gMUu679FfBXq3jRV1PRO9MdtnjmtORf0SzccUgPgNnro
 YaWlLw3IPlp3c4D/b7RJtPdb7Dm3/8ssnbNOgnu/UtuCqZhtwwVoyOXC6bGKfVDvAkiq9MhVF
 ggQWFs/j6hxRQmgCs6K3qcd24IR5IWMYSU/YkouEt4JCX7dawHNQQsrJ0b3HXeZjIIcl1CXDp
 mGo1JfBi5VMTr+g2ttwpCRmA3s1YQhcAoJmExkeY8ACyswqUslLuNFILCzQO6PqV/n+fH1q6Q
 Lb5wZDyNEbKOBA7vm3OmA7taU9s155neNf02PMQ1OPD+NXkb2aqETOEJ5fNWsnlkpsIjS7hTY
 Vbx55c2Qg9uULyPHkkOBfwPPJsyuC1LVdOhqkblqWLhqm2bOgH7dqo7bYQkQVyEIzIEIBQhVG
 HGyVHAl6mI3DkclspappiNjO4eScJDa/GapTazycuJrigaMQ3VHKhFouad+yvbzyts+W6p2fO
 GAWfqPhsKhdtl3Iei+O4SZzRRdhrLyIEtuNk4/ehzGPYTaf/JfQUxl78yx4YB5dhIkE3YRp8n
 WvfqnTjTI0S/kwidQaqt2BuRK78RSoOyGhf3sKKKT0W7QUyeBcZOK7eJipfV/ilGgs23EWTDw
 dyjwiWhNW8fFQHqvrUqJgzWfys+V6vem1uSIrNXDkipQuFUgQvK15ur/D2fpqO7URFfFpzQIH
 OhzQjgu0qJQu5Rulw9BqQtnlmlN8wnNi9u5ZcD+Gje1KzsTrjSZ3pkBFXUx07tM8AHhWrmNF0
 XowGdB3XDtMZv0UWqE4/cBm9+jgOpS9N376hS+AYaw6V+Z0I75xXdeRjKqziwwJsSpaMOh1Pg
 EeRlXBnoiZFnZqfSq4LitcUnwEERlzixKVJ3R4fjDqCOA0Am3LlHfiJIIL+9jznGy7UsdFXdJ
 lH4mI9b82w9PkoC5lGbL4ehpuDy9XR818hVPBxKtI9n6UwHbJMj/Gwr3cGEgx+YMU03J6KEbA
 Ohd8dc9qWAlbKgrD7mg9HPsvecQCj3iuwIsNd3w==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190928_050746_152830_F3D7416C 
X-CRM114-Status: GOOD (  19.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds minimal support for the new Raspberry Pi 4, so we are able
to login via debug UART.

Patch 1-2:   Fix some DT schema warnings
Patch 3-4:   Prepare DTS for the new SoC BMC2711
Patch 5-7:   Add Raspberry Pi 4 DTS support
Patch 8:     Update MAINTAINERS

Unfortunately the Raspberry Pi Foundation didn't released a
peripheral documentation for the new SoC yet. So we only have a preliminary
datasheet [1] and reduced schematics [2].

Known issues:
Since Linux 5.3-rc1 DMA doesn't work properly on that platform.
Nicolas Saenz Julienne investigates on that issue. As a temporary workaround
i reverted the following patch to test this series:

79a98672 "dma-mapping: remove dma_max_pfn"
7559d612 "mmc: core: let the dma map ops handle bouncing"

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

Stefan Wahren (8):
  ARM: dts: bcm283x: Remove simple-bus from fixed clocks
  ARM: dts: bcm283x: Remove brcm,bcm2835-pl011 compatible
  ARM: dts: bcm283x: Move BCM2835/6/7 specific to bcm2835-common.dtsi
  dt-bindings: arm: Convert BCM2835 board/soc bindings to json-schema
  dt-bindings: arm: bcm2835: Add Raspberry Pi 4 to DT schema
  ARM: bcm: Add support for BCM2711 SoC
  ARM: dts: Add minimal Raspberry Pi 4 support
  MAINTAINERS: Add BCM2711 to BCM2835 ARCH

 .../devicetree/bindings/arm/bcm/bcm2835.yaml       |  54 ++
 .../devicetree/bindings/arm/bcm/brcm,bcm2835.txt   |  67 --
 MAINTAINERS                                        |   3 +-
 arch/arm/boot/dts/Makefile                         |   1 +
 arch/arm/boot/dts/bcm2711-rpi-4-b.dts              | 121 +++
 arch/arm/boot/dts/bcm2711.dtsi                     | 838 +++++++++++++++++++++
 arch/arm/boot/dts/bcm2835-common.dtsi              | 194 +++++
 arch/arm/boot/dts/bcm2835-rpi.dtsi                 |   4 -
 arch/arm/boot/dts/bcm2835.dtsi                     |   1 +
 arch/arm/boot/dts/bcm2836.dtsi                     |   1 +
 arch/arm/boot/dts/bcm2837.dtsi                     |   1 +
 arch/arm/boot/dts/bcm283x-rpi-usb-peripheral.dtsi  |   7 +
 arch/arm/boot/dts/bcm283x.dtsi                     | 190 +----
 arch/arm/mach-bcm/Kconfig                          |   3 +-
 arch/arm/mach-bcm/Makefile                         |   3 +-
 arch/arm/mach-bcm/bcm2711.c                        |  24 +
 arch/arm64/Kconfig.platforms                       |   5 +-
 17 files changed, 1257 insertions(+), 260 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm2835.txt
 create mode 100644 arch/arm/boot/dts/bcm2711-rpi-4-b.dts
 create mode 100644 arch/arm/boot/dts/bcm2711.dtsi
 create mode 100644 arch/arm/boot/dts/bcm2835-common.dtsi
 create mode 100644 arch/arm/boot/dts/bcm283x-rpi-usb-peripheral.dtsi
 create mode 100644 arch/arm/mach-bcm/bcm2711.c

--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
