Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2B5DCB30A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 03:26:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fyVVWbZYXmOp75w3Ia4I2LiK5SdOvJu4r0haC503Lqs=; b=lQSzj6AaeplcGn
	yM2du+ScTohB30Bd5S/ThRiWnGiinCziic64nMvn9Syrp7IbtohNWtcZcCHM4GFR9TA1C90tbVnTT
	m05sVpnBuF9nFh25MHFGBEBeI1FNN56i6I0bSv570P8wDO/Zs5RkYxAPmR/FSTPHEINIOFBC6Ld4k
	hmmrp9OMjJAUbVoLCi7uPUS9rhhPloVGxowPaxgAVmEr312GbBLOPvRpyUz7DE7l/7sUotRnXdxsU
	4VH0EY7Xb1W+K5sSiqPkWNbZuKXHBrQrO1lqYIV6bOUbrHjGwT/wLeBbNYgTecxnY0VGdcYtlXl9x
	GG0Q7aw3fSYNvlnYBr8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGCMT-0004EP-Qq; Fri, 04 Oct 2019 01:26:25 +0000
Received: from gate2.alliedtelesis.co.nz ([202.36.163.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGCLl-0003jX-VJ
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 01:25:44 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id AED28886BF;
 Fri,  4 Oct 2019 14:25:35 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1570152335;
 bh=DcGlMPetDsQUVAT/6MwUM8wLFetKjGpiYszyiFj30tw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=k4yEUwI28XQKYH0bmvRPuUnvMJ2uwC1OblIShpqMy/HQmXIBJRLzb6fK5NK8DuiKJ
 IfMW8nBjdDO7l3PAlpcpO3sTCDYrYsKN0+aqwYXdaz9oHTlWQam2KKV85ZzA5yCz5x
 MhPB8SYzqQEhiNWwKQ4mfx8h49QA4u2v17EeHrgV0vQCn68ev9LHqfzm1Ujx13xlFs
 7LaRk9W4ANUli9BJdOnFrwckSOxwhMY6VBDTA1JDFNHWmu4Z+yUzDH5/dqWbj5Ab1m
 7n0kEVc5xLZTbrLUQv2502fffqhgk9sQ2pPNFxp8kn42FZAOVwCNVVER9oiJlTDuwM
 hY1JPVts9WH0Q==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5d969f8b0001>; Fri, 04 Oct 2019 14:25:36 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.20])
 by smtp (Postfix) with ESMTP id 615E813EEF0;
 Fri,  4 Oct 2019 14:25:34 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id 81B3828003E; Fri,  4 Oct 2019 14:25:30 +1300 (NZDT)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com, robh+dt@kernel.org,
 mark.rutland@arm.com, rjui@broadcom.com, sbranden@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com, f.fainelli@gmail.com,
 richard.laing@alliedtelesis.co.nz
Subject: [PATCH 1/2] dt-bindings: gpio: brcm: Add bindings for xgs-iproc
Date: Fri,  4 Oct 2019 14:25:24 +1300
Message-Id: <20191004012525.26647-2-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191004012525.26647-1-chris.packham@alliedtelesis.co.nz>
References: <20191004012525.26647-1-chris.packham@alliedtelesis.co.nz>
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_182542_388591_2389816D 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.36.163.20 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-gpio@vger.kernel.org,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This GPIO controller is present on a number of Broadcom switch ASICs
with integrated SoCs. It is similar to the nsp-gpio and iproc-gpio
blocks but different enough to require a separate driver.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---
 .../bindings/gpio/brcm,xgs-iproc.txt          | 41 +++++++++++++++++++
 1 file changed, 41 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/gpio/brcm,xgs-iproc.txt

diff --git a/Documentation/devicetree/bindings/gpio/brcm,xgs-iproc.txt b/Documentation/devicetree/bindings/gpio/brcm,xgs-iproc.txt
new file mode 100644
index 000000000000..328b844c82dc
--- /dev/null
+++ b/Documentation/devicetree/bindings/gpio/brcm,xgs-iproc.txt
@@ -0,0 +1,41 @@
+Broadcom XGS iProc GPIO controller
+
+This controller is the Chip Common A GPIO present on a number of Broadcom
+switch ASICs with integrated SoCs.
+
+Required properties:
+- compatible:
+    Must be "brcm,iproc-gpio-cca"
+
+- reg:
+    The first region defines the base I/O address containing
+    the GPIO controller registers. The second region defines
+    the I/O address containing the Chip Common A interrupt
+    registers.
+
+Optional properties:
+
+- interrupts:
+    The interrupt shared by all GPIO lines for this controller.
+
+- #interrupt-cells:
+    Should be <2>.  The first cell is the GPIO number, the second should specify
+    flags.
+
+    See also Documentation/devicetree/bindings/interrupt-controller/interrupts.txt
+
+- interrupt-controller:
+    Marks the device node as an interrupt controller
+
+Example:
+	gpioa: gpio@18000060 {
+		compatible = "brcm,iproc-gpio-cca";
+		#gpio-cells = <2>;
+		reg = <0x18000060 0x50>,
+		      <0x18000000 0x50>;
+		ngpios = <12>;
+		gpio-controller;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+		interrupts = <GIC_SPI 91 IRQ_TYPE_LEVEL_HIGH>;
+	};
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
