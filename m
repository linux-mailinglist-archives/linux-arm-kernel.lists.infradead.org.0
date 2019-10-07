Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EDD1CDEC0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 12:08:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x6nFjqWdM+JLozn361k9O9FKP6Xb2AMIqaRtOFD/YtA=; b=lsMCVhNMO3FTuU
	YM5SAY2mlou3oMOpkX6PJGSk4GNyaBAySGzB/ac58BkU6p09aNf/WhYoXFTFoJbGTZ07wMMYDsri7
	GnsxWtkwCZ5V/tbajkHUEXnzmjZTSXaGSb8740ZZbMi+zUfSw2s6yeb2E5npO8OBa1Ap6xHL/tqhx
	X/SwpXZuvq24u5oK9nPXY8cmi48vg9s+QJm4OZCwAcDh/gWdelyoArtqm4huA4euJK4GpsHvfhTkk
	BBETcMhG3DLT7l5AXIXqp0RATdSKjQg0k3o+OT5lu8FLagJ0nFUG6ea0Sl05iupxLDrCVkd82MgZO
	sagCx3EWmdFSHKIXFJNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHPw3-0006lZ-NN; Mon, 07 Oct 2019 10:08:11 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHPvs-0006l1-MT
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 10:08:02 +0000
Received: by mail-ed1-x541.google.com with SMTP id y91so11791374ede.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 07 Oct 2019 03:07:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Dn9u+AQKVD5vEeR5O+ZMbgafJ8myFQvunYd7F14BjUc=;
 b=tZQ13ROs/x70DbNqEI/FjmJoV1nMwJQmdxKd20Erg9hO06T/BCXd1yb2JpVwNWtYir
 ei4t43xOj29kj35hefm+zMFbtsSfHrSlSTt2sb5pjeHiiUuc7vKYIGWOC+7UC2X5Wb2K
 0o4fyXxxRKQtZFJj80q6J2+deGfTQFbjQ1x1SrPxRfmSdE8nCak9eSispdRXbyrEdavV
 SUfminpAhmLnOBItMWFDY9E7VCTSV3j74gQU44OV/1zZZWD4EvTd1BF5Ebkg1J55rwQR
 eF5RTGqf16LAxTrktdoavwQC0OeDVsX/50V2a6MXMhT1qCj8cGvuB732S94oa8cfAoIC
 RZoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=Dn9u+AQKVD5vEeR5O+ZMbgafJ8myFQvunYd7F14BjUc=;
 b=n9yzgcn/P2DOw8I8mQCv88B9jdrkp4JR0vtRU9E0GLi7J7xpiNYH+E7DvWBMRjqpEB
 MP4V64iE/LFRvHQuXo4dvBj3NQ+0q+zwxvkB/V7EY6du+shHkc/Eu+7zEOAlI+vN3xBE
 SXPI2xnb8Zj0ijtn9EVdXw1/8csLvl19DgDi/FoG1v7yKQzuvuE+zLpej/iiiuGpbFfi
 XQbjOINTEf4qvXVNyoUn4TaVXpPcypjZfdJOq3FA+BmxsGO93FqE9Mmx0t04jZMAd1kf
 UON5Z+kbcqrD8oNTxtNFvmAp1/tiiF2IXCOQn+iNx5LFPg+CGGMbXOyTT4bvY1qM/9XA
 lTDQ==
X-Gm-Message-State: APjAAAWv7zyXpwmjs3rRZQmdNKxcknvQlXNynoPUrO+N8LLLiSYtfqVZ
 2wrXHSLBaipa/wvm6f08Q9EM4TCHYV8=
X-Google-Smtp-Source: APXvYqxd3RPv7VVa3gnsqkSTt5rIlFKbSDaX2ZGZ2Tr4Yxvx1eqpjxYnWugNAfXvvHrr3tA/u3JUdA==
X-Received: by 2002:a05:6402:2022:: with SMTP id
 ay2mr28181500edb.109.1570442878236; 
 Mon, 07 Oct 2019 03:07:58 -0700 (PDT)
Received: from ziggy.stardust ([37.223.136.165])
 by smtp.gmail.com with ESMTPSA id r16sm3173394eds.72.2019.10.07.03.07.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 07 Oct 2019 03:07:57 -0700 (PDT)
Subject: Re: [PATCH V4 00/10] ARM: Add minimal Raspberry Pi 4 support
To: Stefan Wahren <wahrenst@gmx.net>, Marcel Holtmann <marcel@holtmann.org>,
 Johan Hedberg <johan.hedberg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Eric Anholt <eric@anholt.net>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
References: <1570375708-26965-1-git-send-email-wahrenst@gmx.net>
From: Matthias Brugger <matthias.bgg@gmail.com>
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
 r2JwH1CJjrHWeQEI2ucSKsNa8FllDmG/fQ==
Message-ID: <fd251f79-0fd8-5e5b-c3de-e87bdeb8299a@gmail.com>
Date: Mon, 7 Oct 2019 12:07:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <1570375708-26965-1-git-send-email-wahrenst@gmx.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_030800_763177_79D25256 
X-CRM114-Status: GOOD (  29.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (matthias.bgg[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 06/10/2019 17:28, Stefan Wahren wrote:
> This series adds minimal support for the new Raspberry Pi 4, so we are able
> to login via debug UART.
> 
> Patch 1:     Bluetooth driver fix
> Patch 2-3:   Fix some DT schema warnings
> Patch 4-5:   Prepare DTS for the new SoC BMC2711
> Patch 6-9:   Add Raspberry Pi 4 DTS support
> Patch 10:    Update MAINTAINERS
> 
> Unfortunately the Raspberry Pi Foundation didn't released a
> peripheral documentation for the new SoC yet. So we only have a preliminary
> datasheet [1] and reduced schematics [2].
> 
> Known issues:
> Since Linux 5.3-rc1 DMA doesn't work properly on that platform.
> Nicolas Saenz Julienne investigates on that issue. As a temporary workaround
> i reverted the following patch to test this series:
> 
> 79a98672 "dma-mapping: remove dma_max_pfn"
> 7559d612 "mmc: core: let the dma map ops handle bouncing"
> 

Just for reference, the patches from Nicolas are queued for v5.5 inclusion, so
it is a better basis to test using his series:
https://patchwork.kernel.org/cover/11141719/

Regards,
Matthias

> Changes in V4:
> - add Rob's Reviewed-by
> - enable ZONE_DMA for ARCH_BCM2835
> - fix spi reference in bcm2711.dtsi
> - fix bluetooth section in RPi 4 dts
> - drop "always-on" for armv8-timer
> - add necessary Bluetooth driver fix
> - add arm64 dts link
> - additional comments to the dts files as requested by Florian
> 
> Changes in V3:
> - rebased series
> - add Reviewed-by
> - enable ARM_GIC for ARCH_BCM2835 on arm64 too
> - configure i2c pull-up in bcm2711.dtsi
> - move i2c2 to bcm2835-common.dtsi
> - add missing compatibles to DT schema as suggested by Rob
> - fix DT schema warnings in dtsi files
> - replace brcm pintrl with generic pinctrl as suggested by Linus
> - make dma_zone_size depend on CONFIG_ZONE_DMA as suggested by Matthias
> 
> Changes in V2:
> - use separate board file for BCM2711
> - enable ARM_GIC for ARCH_BCM2835
> - add Acked-by and Reviewed-by
> - fix arm-pmu and timer nodes for BCM2711 reported by Marc Zyngier
> - enable HDMI at board level
> - move HDMI and pixelvalve into bcm2835-common.dtsi as suggested by Eric Anholt
> - fix DWC2 probing warning by setting USB role to peripheral
> - fix order of node references in bcm2711.dtsi
> - disable I2C clock stretching quirk for BCM2711
> - mark PLLD_PER as critical clock
> - make PLLH clock unavailable on BCM2711
> - fix compile warning in clk-bcm2835 for arm64
> 
> Changes since RFC:
> - change BCM2838 -> BCM2711 as discussed in RFC
> - update MAINTAINERS accordingly
> - drop "spi: bcm2835: enable shared interrupt support" from series
> - squash all pinctrl-bcm2835 changes into one patch
> - introduce SoC specific clock registration as suggested by Florian
> - fix watchdog probing for Raspberry Pi 4
> - convert brcm,bcm2835.txt to json-schema
> - move VC4 node to bcm2835-common.dtsi
> - fallback to legacy pull config for Raspberry Pi 4
> - revert unintended change of mailbox in bcm283x.dtsi
> - add reference for arm64
> 
> [1] - https://www.raspberrypi.org/documentation/hardware/raspberrypi/bcm2711/rpi_DATA_2711_1p0_preliminary.pdf
> [2] - https://www.raspberrypi.org/documentation/hardware/raspberrypi/schematics/rpi_SCH_4b_4p0_reduced.pdf
> 
> Stefan Wahren (10):
>   bluetooth: hci_bcm: Fix RTS handling during startup
>   ARM: dts: bcm283x: Remove simple-bus from fixed clocks
>   ARM: dts: bcm283x: Remove brcm,bcm2835-pl011 compatible
>   ARM: dts: bcm283x: Move BCM2835/6/7 specific to bcm2835-common.dtsi
>   dt-bindings: arm: Convert BCM2835 board/soc bindings to json-schema
>   dt-bindings: arm: bcm2835: Add Raspberry Pi 4 to DT schema
>   ARM: bcm: Add support for BCM2711 SoC
>   ARM: dts: Add minimal Raspberry Pi 4 support
>   arm64: dts: broadcom: Add reference to RPi 4 B
>   MAINTAINERS: Add BCM2711 to BCM2835 ARCH
> 
>  .../devicetree/bindings/arm/bcm/bcm2835.yaml       |  54 ++
>  .../devicetree/bindings/arm/bcm/brcm,bcm2835.txt   |  67 --
>  MAINTAINERS                                        |   3 +-
>  arch/arm/boot/dts/Makefile                         |   1 +
>  arch/arm/boot/dts/bcm2711-rpi-4-b.dts              | 123 +++
>  arch/arm/boot/dts/bcm2711.dtsi                     | 844 +++++++++++++++++++++
>  arch/arm/boot/dts/bcm2835-common.dtsi              | 194 +++++
>  arch/arm/boot/dts/bcm2835-rpi.dtsi                 |   4 -
>  arch/arm/boot/dts/bcm2835.dtsi                     |   1 +
>  arch/arm/boot/dts/bcm2836.dtsi                     |   1 +
>  arch/arm/boot/dts/bcm2837.dtsi                     |   1 +
>  arch/arm/boot/dts/bcm283x-rpi-usb-peripheral.dtsi  |   7 +
>  arch/arm/boot/dts/bcm283x.dtsi                     | 190 +----
>  arch/arm/mach-bcm/Kconfig                          |   4 +-
>  arch/arm/mach-bcm/Makefile                         |   3 +-
>  arch/arm/mach-bcm/bcm2711.c                        |  24 +
>  arch/arm64/Kconfig.platforms                       |   5 +-
>  arch/arm64/boot/dts/broadcom/Makefile              |   3 +-
>  arch/arm64/boot/dts/broadcom/bcm2711-rpi-4-b.dts   |   2 +
>  drivers/bluetooth/hci_bcm.c                        |   2 +
>  20 files changed, 1272 insertions(+), 261 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
>  delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm2835.txt
>  create mode 100644 arch/arm/boot/dts/bcm2711-rpi-4-b.dts
>  create mode 100644 arch/arm/boot/dts/bcm2711.dtsi
>  create mode 100644 arch/arm/boot/dts/bcm2835-common.dtsi
>  create mode 100644 arch/arm/boot/dts/bcm283x-rpi-usb-peripheral.dtsi
>  create mode 100644 arch/arm/mach-bcm/bcm2711.c
>  create mode 100644 arch/arm64/boot/dts/broadcom/bcm2711-rpi-4-b.dts
> 
> --
> 2.7.4
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
