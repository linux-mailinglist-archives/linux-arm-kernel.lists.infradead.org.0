Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8584C1563FA
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Feb 2020 12:21:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CXWyNr+xfJwtXPER2uqKfUx/oPmjrmYjjLlCzLbaaXk=; b=fwvqDXV2HQFDP0
	NDUAI1xKMKdRaoyFXSG2+KlhdXZt7baLiUd6F6JL464ffaK7g7fj+chp8Q7oDa+JcpiIh+cMjMiV+
	uS4H//sGW4HrF34MVTXfDYv/3jlNt/H6FWKozO/DHublUEBi4cqJj3mIxFBDgnCYflIeOxXE3lCZG
	4hoLM2caRhzp3N9OSdpJNu0rmEivZaTQSp1zPXgq6TG/pfetuiVNXkjlLW9lZc998Ey9DsYfN83Bh
	OXA/pWI4oTGgRYySbvyIbcmkzEzGEOwspQlfSdhRHNp+ncrBp0r3E2COoZorjUhxnyzPiIuyEJLPW
	E+tTnJsi6zdFWOcH9y2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0OAl-0001uD-4M; Sat, 08 Feb 2020 11:21:15 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0OAA-0001IP-9m
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Feb 2020 11:20:40 +0000
Received: by mail-pg1-x543.google.com with SMTP id b9so1189482pgk.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 08 Feb 2020 03:20:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cMFbgcmbUqdQyIw1ejvMCost8AXkmggO/zCBoWfvSxE=;
 b=i3hd97LXx24Px0ZGFjjU7uJ73FH7e9RW3FRGWXIv+XGckgRMO0ijMvltyNq55Rm9AH
 n8PTDvC13k/+nAEbd+fWKk+hX4kmZn5+uvdrqsHxHFmaWxKD6WHsLMQp71SriTytULOU
 jG9Pqi7zz/b5bpLqRnZvJQNbGUvzJvQHoBfkd2Ti/E1ERYiC8cWvPpO+julcy6qLxDb5
 2zj621274YmNDrsaCY56F1lvVP8wKrVArOBv/gVjq+s2liwghEde0xlLZoxVtP3ENNp4
 v6uQIRFbP/Ouzdg/B9u4/OrVrbnN7Pf1ivzYUu67wQIDtDKDRxjwfUj9f0JXiar7jA8E
 ea7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cMFbgcmbUqdQyIw1ejvMCost8AXkmggO/zCBoWfvSxE=;
 b=HADnPUB4TllUQDLVNBL/T7kGFi8B8mUktye7lzH8mVMv/1KsxqEKkeZwT178las8lg
 lyh2aaWpbvwM1vUq46ZtLOguhfQxNjcQW1tdDOOY0xhm73YDekYkkDyyzeOKcu9hXKki
 E3zuFsz8I6taxhz/mgHSum7s/yh2f3EXWSr4eg8mGawFluiehfBvmI8tpM6/CS8NF95W
 vk8uVWH8RVxibbjemZ6hEEW4hXP/NsiD+o3mcHEj9ky1C2GByXEF4afeSa03LQm7BieA
 t4t3HEuT7tn7ddCzBThFnlMPHj1bmq837t0C8Bq5dT/GFoRXRm8xiAPtF/OKfN2Cw8uZ
 6B7Q==
X-Gm-Message-State: APjAAAVZkEtbRISNVYmpIuVxKaNebyrfazxtfQpjdQ60HlD4ZOUaLwd0
 oIn0tZccP03ncw9shf9Et0bMJg==
X-Google-Smtp-Source: APXvYqwoaKHrcHXpwupKOYooh26scasFONqNkZ3DX99n3tUo/uMW5sozppYK49KlIvzdqiJ5/Nw/yg==
X-Received: by 2002:aa7:9829:: with SMTP id q9mr3892562pfl.31.1581160835640;
 Sat, 08 Feb 2020 03:20:35 -0800 (PST)
Received: from localhost.localdomain
 (99-152-116-91.lightspeed.sntcca.sbcglobal.net. [99.152.116.91])
 by smtp.gmail.com with ESMTPSA id a19sm5707281pju.11.2020.02.08.03.20.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 08 Feb 2020 03:20:34 -0800 (PST)
From: Olof Johansson <olof@lixom.net>
To: torvalds@linux-foundation.org
Subject: [GIT PULL 2/5] ARM: Device-tree updates
Date: Sat,  8 Feb 2020 03:20:15 -0800
Message-Id: <20200208112018.29819-3-olof@lixom.net>
X-Mailer: git-send-email 2.22.GIT
In-Reply-To: <20200208112018.29819-1-olof@lixom.net>
References: <20200208112018.29819-1-olof@lixom.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200208_032038_349148_86EF7CE4 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
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

New SoCs:

- Atmel/Microchip SAM9X60 (ARM926 SoC)

- OMAP 37xx gets split into AM3703/AM3715/DM3725, who are all variants
of it with different GPU/media IP configurations.

- ST stm32mp15 SoCs (1-2 Cortex-A7, CAN, GPU depending on SKU)

- ST Ericsson ab8505 (variant of ab8500) and db8520 (variant of db8500)

- Unisoc SC9863A SoC (8x Cortex-A55 mobile chipset w/ GPU, modem)

- Qualcomm SC7180 (8-core 64bit SoC, unnamed CPU class)

New boards:

- Allwinner
+ Emlid Neutis SoM (H3 variant)
+ Libre Computer ALL-H3-IT
+ PineH64 Model B

- Amlogic
+ Libretech Amlogic GX PC (s905d and s912-based variants)

- Atmel/Microchip:
+ Kizboxmini, sam9x60 EK, sama5d27 Wireless SOM (wlsom1)

- Marvell:
+ Armada 385-based SolidRun Clearfog GTR

- NXP:
+ Gateworks GW59xx boards based on i.MX6/6Q/6QDL
+ Tolino Shine 3 eBook reader (i.MX6sl)
+ Embedded Artists COM (i.MX7ULP)
+ SolidRun CLearfog CX/ITX and HoneyComb (LX2160A-based systems)
+ Google Coral Edge TPU (i.MX8MQ)

- Rockchip
+ Radxa Dalang Carrier (supports rk3288 and rk3399 SOMs)
+ Radxa Rock Pi N10 (RK3399Pro-based)
+ VMARC RK3399Pro SOM

- ST
+ Reference boards for stm32mp15

- ST Ericsson
+ Samsung Galaxy S III mini (GT-I8190)
+ HREF520 reference board for DB8520

- TI OMAP
+ Gen1 Amazon Echo (OMAP3630-based)

- Qualcomm
+ Inforce 6640 Single Board Computer (msm8996-based)
+ SC7180 IDP (SC7180-based)

----------------------------------------------------------------

The following changes since commit a1a0cfaf7fb7c1a90201e6b0937f742c8c212d8e:

  Merge tag 'armsoc-defconfig' into HEAD

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-dt

for you to fetch changes up to d030a0dd01306d45569c6a4449dee603f994744a:

  Merge tag 'ti-k3-soc-for-v5.6-part2' of git://git.kernel.org/pub/scm/linux/kernel/git/kristo/linux into arm/dt

----------------------------------------------------------------


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
