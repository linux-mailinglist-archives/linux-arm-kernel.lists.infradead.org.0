Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DF47C1210
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Sep 2019 22:02:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ckO1XlUSTtBfirBOtpfEWb8aMKpNntHGK0FRjTdin6s=; b=auwQ+FDvtBq0L9
	zcITi1EiS6L4SAjSRtV0D6kWlrhEcv428qTeSjwHalxkujMjU1ZNwohkgo+Klfbg9ArYIky61fWsm
	2Dh+c6L1qqK7f3bbN/tZh3QQaolW1T0U6WEJ5bCAxske6H8jej1VwAJ7WsPF3yni/VpKt7hXMDrLd
	yGGBjl24faVrkQv6d4xaAhTk4st/h0irUD4vkDdwqEd/nxT0vzzlE4Ej2w3XZzr76hfxhh2TxFqlw
	rA0YwgawwcMVWbtiHVxjRznCUFFv/VyPAdq41ge3aJzXYfl/wg3TzbD/cuuOXK+Woz8++ajBEEE7P
	CnHnXvLTrVU6MF9pEj+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEIuw-0002oX-G6; Sat, 28 Sep 2019 20:02:10 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEIun-0002o1-3r
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Sep 2019 20:02:02 +0000
Received: by mail-pf1-x442.google.com with SMTP id y5so3367700pfo.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 28 Sep 2019 13:01:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Uoyd17HGXJnqUD3GmfDxE8jq+ajCAKVSglLjOBv6h28=;
 b=nPpD6QciQbg2xeaDSUWcH0GESFPRMy+k9vthdYholnly97tWJvuYqeEvEiZrIQKMP+
 ggo99PwKcTfcoYyWmi26JrxJGZr3X6Lk7nsTzJ+/2HAmbbzrfkumpYlZkGtyZP+tf7p9
 gcKxU7gxevLV4Ux/3vW7krTtomVWYGCHZSUv1yDQecDhjmVVmfT0+b1+XEln0+vVkb1v
 tPO91IDBLnUNyK79qmSYOyLsujwOMSFSG3G4dYOVXPtqFEbhoYZUBF3YWkg28xu3iJY3
 EOrrkBGgeNE25LtoT6tsvhnRsIpGrEqt+lJD+RA8SUspJw1IgipSPBmmiHNV5RMeS4+/
 gE6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Uoyd17HGXJnqUD3GmfDxE8jq+ajCAKVSglLjOBv6h28=;
 b=KL4Yha1BGLU5Sl+/e4DNKH+UXg9E93mGnm9RMh7Y4jRD+utMj3r2CilwB1udL96kRV
 1/bZVv2pJrS/0SDK0XF+DhMhgyIJ9RbwDhHQJyRELtovGqsiig4sswfL1vtru/i2OXTd
 i4ljaPLo2krwbedzs2kY80hrG4tHPFIAL2Ft0EVavXYjNZLvT/htpRcdypV8D/qXIraL
 UP3pabpjnagvm+LJPhP7+rFYBb+HwvWfd3ZJNcyIhihIkYDqCoGHa/NK8QM2MJRNkgxU
 MZGMw2dMQfLLk6gshB2Ap+DTe0Td0kUPPWfTUgsxs1X0bUItXSPlhlxsROTSQtKprN8Q
 7x7g==
X-Gm-Message-State: APjAAAVBdwpGm8umNJXisPi173pZHs72cC0C2rcmThMh8XJ3ORo6Y+h0
 abCC/aUuJQx8zQ2da5z9sNw=
X-Google-Smtp-Source: APXvYqwkx/SuzCtG1d5T90LeCjorOGzzewIUddle4mHhUxjPMVjyGW/l+ER/GPPOvJsaSoNlIk+6hA==
X-Received: by 2002:a17:90a:7f95:: with SMTP id
 m21mr18278564pjl.73.1569700917546; 
 Sat, 28 Sep 2019 13:01:57 -0700 (PDT)
Received: from [10.230.28.130] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id s3sm9060710pjq.32.2019.09.28.13.01.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 28 Sep 2019 13:01:56 -0700 (PDT)
Subject: Re: [PATCH V3 0/8] ARM: Add minimal Raspberry Pi 4 support
To: Stefan Wahren <wahrenst@gmx.net>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Eric Anholt <eric@anholt.net>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
References: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <a9368cbc-a62d-0fed-9e8e-3d65111de1dd@gmail.com>
Date: Sat, 28 Sep 2019 13:01:55 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190928_130201_158516_E27F27AB 
X-CRM114-Status: GOOD (  26.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, devicetree@vger.kernel.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 9/28/2019 5:07 AM, Stefan Wahren wrote:
> This series adds minimal support for the new Raspberry Pi 4, so we are able
> to login via debug UART.
> 
> Patch 1-2:   Fix some DT schema warnings
> Patch 3-4:   Prepare DTS for the new SoC BMC2711
> Patch 5-7:   Add Raspberry Pi 4 DTS support
> Patch 8:     Update MAINTAINERS
> 
> Unfortunately the Raspberry Pi Foundation didn't released a
> peripheral documentation for the new SoC yet. So we only have a preliminary
> datasheet [1] and reduced schematics [2].

Overall this looks good to me, just a few comments in specific patches,
if you can re-spin those patches we should try to get that in 5.5?

> 
> Known issues:
> Since Linux 5.3-rc1 DMA doesn't work properly on that platform.
> Nicolas Saenz Julienne investigates on that issue. As a temporary workaround
> i reverted the following patch to test this series:
> 
> 79a98672 "dma-mapping: remove dma_max_pfn"
> 7559d612 "mmc: core: let the dma map ops handle bouncing"
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
> Stefan Wahren (8):
>   ARM: dts: bcm283x: Remove simple-bus from fixed clocks
>   ARM: dts: bcm283x: Remove brcm,bcm2835-pl011 compatible
>   ARM: dts: bcm283x: Move BCM2835/6/7 specific to bcm2835-common.dtsi
>   dt-bindings: arm: Convert BCM2835 board/soc bindings to json-schema
>   dt-bindings: arm: bcm2835: Add Raspberry Pi 4 to DT schema
>   ARM: bcm: Add support for BCM2711 SoC
>   ARM: dts: Add minimal Raspberry Pi 4 support
>   MAINTAINERS: Add BCM2711 to BCM2835 ARCH
> 
>  .../devicetree/bindings/arm/bcm/bcm2835.yaml       |  54 ++
>  .../devicetree/bindings/arm/bcm/brcm,bcm2835.txt   |  67 --
>  MAINTAINERS                                        |   3 +-
>  arch/arm/boot/dts/Makefile                         |   1 +
>  arch/arm/boot/dts/bcm2711-rpi-4-b.dts              | 121 +++
>  arch/arm/boot/dts/bcm2711.dtsi                     | 838 +++++++++++++++++++++
>  arch/arm/boot/dts/bcm2835-common.dtsi              | 194 +++++
>  arch/arm/boot/dts/bcm2835-rpi.dtsi                 |   4 -
>  arch/arm/boot/dts/bcm2835.dtsi                     |   1 +
>  arch/arm/boot/dts/bcm2836.dtsi                     |   1 +
>  arch/arm/boot/dts/bcm2837.dtsi                     |   1 +
>  arch/arm/boot/dts/bcm283x-rpi-usb-peripheral.dtsi  |   7 +
>  arch/arm/boot/dts/bcm283x.dtsi                     | 190 +----
>  arch/arm/mach-bcm/Kconfig                          |   3 +-
>  arch/arm/mach-bcm/Makefile                         |   3 +-
>  arch/arm/mach-bcm/bcm2711.c                        |  24 +
>  arch/arm64/Kconfig.platforms                       |   5 +-
>  17 files changed, 1257 insertions(+), 260 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
>  delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm2835.txt
>  create mode 100644 arch/arm/boot/dts/bcm2711-rpi-4-b.dts
>  create mode 100644 arch/arm/boot/dts/bcm2711.dtsi
>  create mode 100644 arch/arm/boot/dts/bcm2835-common.dtsi
>  create mode 100644 arch/arm/boot/dts/bcm283x-rpi-usb-peripheral.dtsi
>  create mode 100644 arch/arm/mach-bcm/bcm2711.c
> 
> --
> 2.7.4
> 

-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
