Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAD6B138A6C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 05:50:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nQAUvCun4O3EfKMI8YSpxoyhW//neSG04skTGEQMlmA=; b=rQJmiXpABB4LXT
	fQsZ+EBSL9lp8A04d10aTeYw3BuVYaKppwnItnsRnX4VRJuErUWFGdbppbNa0bsfWRbBoeJXzsmQW
	AIZOHNMOUIHiQnLIeW6Q2mP4+wUj7UUHGljnLzSgu+075TzvyoJNjTi/yFIPNZaKe5GlPcDOF32QP
	d26tiCHPU7iTn731mOonfEaEm8004bD0SjgVTonIJce6DbP9OiwBPzFjMCDItF6NGTN+cAfrDzg4e
	r/zE2vzHxgvhUQrunXivMf0FPt+Y6okORrlQYWVdChmLRdkcjOpBYLeV2ziot1QiKbNs2zMy07sTT
	niibHd/IEkIYEQbK8V7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqrgK-0000NR-Ds; Mon, 13 Jan 2020 04:50:28 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqrff-0000AN-Qt
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 04:49:49 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id E80BC59D4;
 Sun, 12 Jan 2020 23:49:38 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Sun, 12 Jan 2020 23:49:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm1; bh=ZAn6MQce4uKUtndJ1m5HH2EX6l
 yQdEDWgaq9zd0WUx0=; b=gMmDoSwsIYM77p+0EbyAAz6SG2SUNcLVrVw3c16GHR
 YJz7O6gAinTcNH1jvDg98t8PllfQYUZXYcdNAyqaRi0NbCIbBBFxHWHxLSp1nxM1
 TGXJge9UsbU6HCIANucRR5v9FPDUU87pZ0RyDjTvuQWG0stQzfkpJAMwQKwFqylC
 Z+hgSA3d9Gk9V87uo/vdpQELE2FQYqwO7ngQW6QXlMdeSL+Uh+whlvgQiUnGigo8
 PGlfwE0yvePlQhDAA5qfZa+ccEhQd1WXxkrQazco/+51u2fnd2PSnBPF4GHwsZwK
 FBjFt+/5pC+R2myDYo3QR/AcPE77acKD7L6vMjRsvtPw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=ZAn6MQce4uKUtndJ1
 m5HH2EX6lyQdEDWgaq9zd0WUx0=; b=UWSSGxQSQXrgWKVsUdwIDvZMY2UTv8Wfw
 a2zAHrAlQv8dZySqyTiMDRCBD5TRjRgdFz0SZ30370Cl/uKln2u83YcJUsn/DnCM
 PBdW9RFueSOKF1K1WqK25130MuBSA73Ly+bosuA125GFMeMhncIHcorBgSoO8VEh
 ZgXguMQZPiu0hLi29QhCW77Al9MVKcatg864JJ1FEL4dSXgghzX/eAvJfKefBTsU
 laPueHhQpNSdva+qHeDaKX384EvV9UfblxmsuUT/fzx6WsRp1xSl16rxK7BoyXQO
 vWnmgX2LB17VV9DMkFD5r8UKCyOK+5ILyN20D1xLAnExhzXx04vwA==
X-ME-Sender: <xms:4fYbXvsG6eilVQSrcF_nVlxn2liWYoYsxtTGgbo6Y3xnlu3os34Vcg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvdeiledgjeekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffoggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgvlhcu
 jfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucfkphepje
 dtrddufeehrddugeekrdduhedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehsrghmuhgv
 lhesshhhohhllhgrnhgurdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:4fYbXnPLpCPYWsBhAziX4L_zFxIOSRi0s000chrUYk3BUSmF6kH-cw>
 <xmx:4fYbXkjSq7boBMFPQPxpoXdH9vkj6JH7QasRLaWH8adjzj6hFvHaWQ>
 <xmx:4fYbXp4Nk_ecgCLSCwj9n2EATJLNYwHrHqk6G2pkbL-hANW7z2citA>
 <xmx:4vYbXgAhuDMP2CSy_ebnszctpqTLwHiIrm_a002Q9ND3x2eikfiCdw>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id E8F2930607B0;
 Sun, 12 Jan 2020 23:49:36 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH 0/9] sunxi: Support IRQ wakeup from deep sleep
Date: Sun, 12 Jan 2020 22:49:27 -0600
Message-Id: <20200113044936.26038-1-samuel@sholland.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_204948_037116_3CAC6015 
X-CRM114-Status: GOOD (  17.09  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Samuel Holland <samuel@sholland.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allwinner sun8i/sun50i SoCs (A31 and newer) have two interrupt
controllers: GIC and R_INTC. GIC does not support wakeup, and is
inaccessible from the ARISC (power management coprocessor). R_INTC
controls the NMI pin, and provides 16-32 IRQs to the ARISC. The first 16
of these correspond 1:1 to a block of GIC IRQs starting with the NMI.

This series replaces the existing chained irqchip driver used only to
control the NMI, with a stacked irqchip driver that also provides wakeup
capability for those 16 IRQs. The idea is that we preconfigure the
ARISC's IRQ controller, and then it knows to wake up as soon as it
receives an IRQ.

I went back and forth about updating the existing driver versus writing
a new one. The NMI-only control on sun7i (A20) and sun9i (A80) is
missing MASK_REG, so it would need a different irq_chip definition. And
the only benefit it would get is the chained->stacked conversion, since
there's no separate coprocessor to see the IRQs during suspend. So
ultimately I went with a new driver. It may be useful to separately do
the chained->stacked conversion on the sunxi-nmi driver as well.

Patch 1 adds the new driver.
Patch 2 adds wakeup capability.
Remaining patches update the DT+bindings to use R_INTC where beneficial

With appropriate firmware, this series allows waking from RTC and NMI
(power button, plugging in USB, etc.). Wake from Port L GPIO interrupts
(gpio-keys, wifi, etc.) requires some patches to the pinctrl driver.

Samuel Holland (9):
  irqchip/sun6i-r: Switch to a stacked irqchip driver
  irqchip/sun6i-r: Add wakeup support
  dt-bindings: irq: Add a compatible for the H3 R_INTC
  ARM: dts: sunxi: h3/h5: Add r_intc node
  ARM: dts: sunxi: h3/h5: Move wakeup-capable IRQs to r_intc
  ARM: dts: sunxi: a83t: Move wakeup-capable IRQs to r_intc
  arm64: dts: allwinner: a64: Move wakeup-capable IRQs to r_intc
  arm64: dts: allwinner: h6: Fix indentation of IR node
  arm64: dts: allwinner: Move wakeup-capable IRQs to r_intc

 .../allwinner,sun7i-a20-sc-nmi.yaml           |   3 +
 arch/arm/boot/dts/sun8i-a83t.dtsi             |   9 +-
 arch/arm/boot/dts/sunxi-h3-h5.dtsi            |  20 +-
 arch/arm/mach-sunxi/Kconfig                   |   1 +
 arch/arm64/Kconfig.platforms                  |   1 +
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi |  11 +-
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi  |  33 ++-
 drivers/irqchip/Makefile                      |   1 +
 drivers/irqchip/irq-sun6i-r.c                 | 273 ++++++++++++++++++
 drivers/irqchip/irq-sunxi-nmi.c               |  26 +-
 10 files changed, 329 insertions(+), 49 deletions(-)
 create mode 100644 drivers/irqchip/irq-sun6i-r.c

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
