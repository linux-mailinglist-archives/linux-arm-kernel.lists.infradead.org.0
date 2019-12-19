Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE78126EB4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 21:22:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+CzLnBQA/TCFEN6h5Vr7vnBnMoQHHgFEdSctx7NEU3Q=; b=GVx1QvoUOCCGC5
	dN3QY+th7FL0PKlB24Kma2kv+uvS2T4mv0D33c3Iyq/ukhfl6aLXNj3K2FyP6IzxTWDxZqf3nuT2Q
	vq46a6WOzVZP/LBR7BtXC+VC+eXmE1Yu3VjfsjTaA5ABF8iUZxIDWFPPmHO7xbW/VQYe2rbwVbdH/
	HnaCqMsOS221QGbaWHbS0kMMvd1ToZpcxmHRYY30qp0DTvEP0/aHtJ1heA9ukpy1dW023KmzDuMIn
	R6/5G7NEr99spF9KBtsu7He7JKc9Qjrw7v5gUUvSlh23IMMY0/B269r9/fYk8OCcHHZZ6YF4O4RR0
	IFUoU3nVOExWZSpxrA5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii2JC-0007zI-HA; Thu, 19 Dec 2019 20:22:06 +0000
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii2Iv-0007un-EA
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 20:21:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1576786905;
 s=strato-dkim-0002; d=gerhold.net;
 h=Message-Id:Date:Subject:Cc:To:From:X-RZG-CLASS-ID:X-RZG-AUTH:From:
 Subject:Sender;
 bh=uGv1v4RMpZCWpTzrH/Tb+ANnm7EcldYwO4ikQvEyIyE=;
 b=NlmBm+3WB8tquqzrB4o3VxXXQDv53gSV3vkmPmSVjrI6As/ViMn62zlfhyz4JyqGiW
 WR5n3zfgl+MtcB7iD4y8/xwHLUub98EooYDEZJQf05Yq+C3B5Cnoo71DN4hKsCec6VVT
 d1tnHJ31DWBI7MwIZxToSTlSvH0mNp5sNRz9ZYv+9BMfSRDq47tpD/HuS+xCg+vl0hK0
 HvHdhSFThs2ysOuCTB8R75ZQnla/yTLrDl2j4UoHr5eO1ezFEfcsNdbUi4DmqjX5Mr1t
 xP7Hod5na0TLfacrUFyqrfDzkXftgoho2+KkxiQVhIxgVLChQZltSficcxjB7R+pfChZ
 s8Gw==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVORvLd4SsytBXQrEOHTIXtszvsxM1"
X-RZG-CLASS-ID: mo00
Received: from localhost.localdomain by smtp.strato.de (RZmta 46.1.1 AUTH)
 with ESMTPSA id f021e2vBJKLb3Z7
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Thu, 19 Dec 2019 21:21:37 +0100 (CET)
From: Stephan Gerhold <stephan@gerhold.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 0/9] Add device tree for Samsung Galaxy S III mini (GT-I8190)
Date: Thu, 19 Dec 2019 21:20:43 +0100
Message-Id: <20191219202052.19039-1-stephan@gerhold.net>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_122149_620315_050449A8 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5300:0:0:6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephan Gerhold <stephan@gerhold.net>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series adds initial support for booting mainline on
the Samsung Galaxy S III mini (GT-I8190), codename: "samsung-golden".
samsung-golden uses the Ux500 SoC, which has great support in mainline.

This is a project I have been working on for about an half year
in collaboration with Linus Walleij, who answered a sheer countless
amount of my questions. Thanks! :)

Stephan Gerhold (9):
  ARM: dts: ux500: Remove unused ste-href-ab8505.dtsi
  ARM: dts: ux500: Add device tree include for AB8505
  dt-bindings: arm: ux500: Document samsung,golden compatible
  ARM: dts: ux500: Add device tree for Samsung Galaxy S III mini
    (GT-I8190)
  ARM: dts: ux500: samsung-golden: Add IMU (accelerometer + gyroscope)
  ARM: dts: ux500: samsung-golden: Add touch screen
  ARM: dts: ux500: samsung-golden: Add WiFi
  ARM: dts: ux500: samsung-golden: Add Bluetooth
  ARM: defconfig: u8500: Enable new drivers for samsung-golden

 .../devicetree/bindings/arm/ux500.yaml        |   5 +
 arch/arm/boot/dts/Makefile                    |   3 +-
 arch/arm/boot/dts/ste-ab8505.dtsi             | 275 +++++++++++
 arch/arm/boot/dts/ste-href-ab8505.dtsi        | 234 ---------
 .../arm/boot/dts/ste-ux500-samsung-golden.dts | 455 ++++++++++++++++++
 arch/arm/configs/u8500_defconfig              |   9 +
 6 files changed, 746 insertions(+), 235 deletions(-)
 create mode 100644 arch/arm/boot/dts/ste-ab8505.dtsi
 delete mode 100644 arch/arm/boot/dts/ste-href-ab8505.dtsi
 create mode 100644 arch/arm/boot/dts/ste-ux500-samsung-golden.dts

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
