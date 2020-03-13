Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF8A9184C2D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 17:17:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=tgEsY/0mPSehmHaQwkwgb3CmpdaizoUVbY8PrJWoTC0=; b=qFt
	nqdM28dVH/6gP70YanNjnB17TNfk6MMvDdcDK3g7auUQ/D8LYmRvehNzx2MdjpItMS50JVeWV2o1P
	/H/FcXmRrgihAtBL4HzpF0gvXIqyfggL52cwqvr8vAiTuV9ykvInFhubxwxCN84Np8QZh9ZbfkAXI
	yUjIc9/3+Dx50ZoUmkC39cFdPfcr/Z1caZR2JKUrnEkwinowR7zAbgPqrv2S00CzwFbnhpjsTBM2Y
	c7JTu82DkY0aJyQ4k++tPTov3eCbMcxxgSIbrhLzG/krkzyo52/V4KntvHPH+CKhCgP1n2Q5eS7gV
	b0s3+L1mKPoatu5PADOW8XZ12GLG+Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCn07-0008G7-Na; Fri, 13 Mar 2020 16:17:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCmzt-0008FS-IA
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 16:17:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E75EC31B;
 Fri, 13 Mar 2020 09:17:16 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6B2433F6CF;
 Fri, 13 Mar 2020 09:17:16 -0700 (PDT)
Date: Fri, 13 Mar 2020 16:17:15 +0000
From: Mark Brown <broonie@kernel.org>
To: Kevin Li <kevin-ke.li@broadcom.com>
Subject: Applied "ASoC: brcm: DSL/PON SoC device tree bindings of audio
 driver" to the asoc tree
In-Reply-To: <20200312223242.2843-1-kevin-ke.li@broadcom.com>
Message-Id: <applied-20200312223242.2843-1-kevin-ke.li@broadcom.com>
X-Patchwork-Hint: ignore
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_091717_689776_4B3553D3 
X-CRM114-Status: GOOD (  15.77  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: alsa-devel@alsa-project.org, Scott Branden <sbranden@broadcom.com>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Ray Jui <rjui@broadcom.com>, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 Stephen Boyd <swboyd@chromium.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   ASoC: brcm: DSL/PON SoC device tree bindings of audio driver

has been applied to the asoc tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git 

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From 2834a736371eab06182fcdfb0c32d23d34068764 Mon Sep 17 00:00:00 2001
From: Kevin Li <kevin-ke.li@broadcom.com>
Date: Thu, 12 Mar 2020 15:32:40 -0700
Subject: [PATCH] ASoC: brcm: DSL/PON SoC device tree bindings of audio driver

Signed-off-by: Kevin Li <kevin-ke.li@broadcom.com>
Link: https://lore.kernel.org/r/20200312223242.2843-1-kevin-ke.li@broadcom.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 .../bindings/sound/brcm,bcm63xx-audio.txt     | 29 +++++++++++++++++++
 1 file changed, 29 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/brcm,bcm63xx-audio.txt

diff --git a/Documentation/devicetree/bindings/sound/brcm,bcm63xx-audio.txt b/Documentation/devicetree/bindings/sound/brcm,bcm63xx-audio.txt
new file mode 100644
index 000000000000..007f524b4d15
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/brcm,bcm63xx-audio.txt
@@ -0,0 +1,29 @@
+Broadcom DSL/PON BCM63xx Audio I2S controller
+
+Required properties:
+- compatible:     Should be "brcm,bcm63xx-i2s".
+- #address-cells: 32bit valued, 1 cell.
+- #size-cells:    32bit valued, 0 cell.
+- reg:            Should contain audio registers location and length
+- interrupts:     Should contain the interrupt for the controller.
+- clocks:         Must contain an entry for each entry in clock-names.
+                  Please refer to clock-bindings.txt.
+- clock-names:    One of each entry matching the clocks phandles list:
+                  - "i2sclk" (generated clock) Required.
+                  - "i2sosc" (fixed 200MHz clock) Required.
+
+(1) : The generated clock is required only when any of TX and RX
+      works on Master Mode.
+(2) : The fixed 200MHz clock is from internal chip and always on
+
+Example:
+
+		i2s: bcm63xx-i2s {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			compatible = "brcm,bcm63xx-i2s";
+			reg = <0xFF802080 0xFF>;
+			interrupts = <GIC_SPI 84 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&i2sclk>, <&osc>;
+			clock-names = "i2sclk","i2sosc";
+		};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
