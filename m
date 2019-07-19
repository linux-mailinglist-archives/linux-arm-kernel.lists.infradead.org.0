Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7875B6EB0B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 21:25:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tQv01k2lZKtdjtp3adi0pDMT8YdjXJHxAtsC2grCDGw=; b=ERtOG+dzfgW+/2
	469bLhMj3yG2leqpzNOxKNhY1Xu+LooqppyolTh/7nUC0KO9EcVE3kbr7H8I/AAyNagBiXMEB1Ej9
	YrLDJo7gJMv71VPS2lBrnkelHiqjEOfGAt6jrzheQ9V9AY+EwkRXbeyNDETmk0sfxsO51Ry7dpIzh
	Cvr4E1TtwzcA6CjmyC/1ZPsnTIg0BqFPHgsAhAeOpVSFTmSOBVkOMZ2l9z48WWYuTu30a/PJHhKiP
	3Sp9jBGiGCY95nw2n0+KBmmPdIBxeglWdBxyLhHkH3TW24sJwT7DhBZbLNSYjgVxLharg2cpd7PWY
	ZByK10sGD1dTJT+mt12w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoYVr-00017J-0E; Fri, 19 Jul 2019 19:25:51 +0000
Received: from atlmailgw2.ami.com ([63.147.10.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoYV7-0008Ok-T1
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 19:25:08 +0000
X-AuditID: ac10606f-d27ff70000003324-49-5d3219109378
Received: from atlms1.us.megatrends.com (atlms1.us.megatrends.com
 [172.16.96.144])
 (using TLS with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by atlmailgw2.ami.com (Symantec Messaging Gateway) with SMTP id
 7D.6D.13092.019123D5; Fri, 19 Jul 2019 15:25:04 -0400 (EDT)
Received: from hongweiz-Ubuntu-AMI.us.megatrends.com (172.16.98.93) by
 atlms1.us.megatrends.com (172.16.96.144) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Fri, 19 Jul 2019 15:25:03 -0400
From: Hongwei Zhang <hongweiz@ami.com>
To: Andrew Jeffery <andrew@aj.id.au>, Linus Walleij
 <linus.walleij@linaro.org>, <linux-gpio@vger.kernel.org>
Subject: [v5 1/2] dt-bindings: gpio: aspeed: Add SGPIO support
Date: Fri, 19 Jul 2019 15:24:50 -0400
Message-ID: <1563564291-9692-2-git-send-email-hongweiz@ami.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563564291-9692-1-git-send-email-hongweiz@ami.com>
References: <1563564291-9692-1-git-send-email-hongweiz@ami.com>
MIME-Version: 1.0
X-Originating-IP: [172.16.98.93]
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrKLMWRmVeSWpSXmKPExsWyRiBhgq6ApFGsweoGJYtdlzksvsw9xWIx
 /8g5Vovf5/8yW0z5s5zJYtPja6wWzavPMVtsnv+H0eLyrjlsFkuvX2SyaN17hN2B2+Nq+y52
 jzXz1jB6vL/Ryu5x8eMxZo9NqzrZPO5c28PmsXlJvcf5GQsZPT5vkgvgjOKySUnNySxLLdK3
 S+DK+DX9PEvBTJGKVRdPszYw7hboYuTkkBAwkfi19ytbFyMXh5DALiaJCf9Ws4IkhAQOM0oc
 XFsFYrMJqEns3TyHCcQWEciTOLz+LStIA7PAKSaJGfs6wRqEBewk1s8+xgxiswioSlze1MsC
 YvMK2Essn9rECrFNTuLmuU6wGk4BB4mvT1tYIJbZS5zdf4QRol5Q4uTMJ2BxZgEJiYMvXjBD
 1MhK3Dr0mAlijoLE877HLBMYBWYhaZmFpGUBI9MqRqHEkpzcxMyc9HIjvcTcTL3k/NxNjJCo
 yN/B+PGj+SFGJg7GQ4wSHMxKIry3X+rHCvGmJFZWpRblxxeV5qQWH2KU5mBREuddteZbjJBA
 emJJanZqakFqEUyWiYNTqoGR9/bxrQlKCWcstX8ueCk0taq/0622b+WVo+v+hVh6BN+d0NaS
 deGQJLvjDM830rdnrDSQEiuofX3/CquZ/y+r5fHBnLPPvH7lrJy0Usho1QTRysgDLP+SK/I3
 Fiws+1p3rqhX5Uq3+bPLt+b/+Rp/WuyidFase3pi49Sb5+7/P1XKuPh71iZpJZbijERDLeai
 4kQAfuefe3gCAAA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_122506_487301_07296FDA 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [63.147.10.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Hongwei Zhang <hongweiz@ami.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add bindings to support SGPIO on AST2400 or AST2500.

Signed-off-by: Hongwei Zhang <hongweiz@ami.com>
---
 .../devicetree/bindings/gpio/sgpio-aspeed.txt      | 55 ++++++++++++++++++++++
 1 file changed, 55 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/gpio/sgpio-aspeed.txt

diff --git a/Documentation/devicetree/bindings/gpio/sgpio-aspeed.txt b/Documentation/devicetree/bindings/gpio/sgpio-aspeed.txt
new file mode 100644
index 0000000..f9ed438
--- /dev/null
+++ b/Documentation/devicetree/bindings/gpio/sgpio-aspeed.txt
@@ -0,0 +1,55 @@
+Aspeed SGPIO controller Device Tree Bindings
+-------------------------------------------
+
+This SGPIO controller is for ASPEED AST2500 SoC, it supports up to 80 full 
+featured Serial GPIOs. Each of the Serial GPIO pins can be programmed to 
+support the following options:
+- Support interrupt option for each input port and various interrupt 
+  sensitivity option (level-high, level-low, edge-high, edge-low)
+- Support reset tolerance option for each output port
+- Directly connected to APB bus and its shift clock is from APB bus clock
+  divided by a programmable value.
+- Co-work with external signal-chained TTL components (74LV165/74LV595)
+
+
+Required properties:
+
+- compatible		: Either "aspeed,ast2400-sgpio" or "aspeed,ast2500-sgpio"
+
+- #gpio-cells 		: Should be two
+			  - First cell is the GPIO line number
+			  - Second cell is used to specify optional
+			    parameters (unused)
+
+- reg			: Address and length of the register set for the device
+- gpio-controller	: Marks the device node as a GPIO controller
+- interrupts		: Interrupt specifier (see interrupt bindings for
+			  details)
+
+- interrupt-controller	: Mark the GPIO controller as an interrupt-controller
+
+- ngpios		: number of GPIO pins to serialise. 
+			  (should be multiple of 8, up to 80 pins)
+
+- clocks                : A phandle to the APB clock for SGPM clock division
+
+- bus-frequency		: SGPM CLK frequency
+
+
+The sgpio and interrupt properties are further described in their respective bindings documentation:
+
+- Documentation/devicetree/bindings/sgpio/gpio.txt
+- Documentation/devicetree/bindings/interrupt-controller/interrupts.txt
+
+  Example:
+	sgpio: sgpio@1e780200 {
+		#gpio-cells = <2>;
+		compatible = "aspeed,ast2500-sgpio";
+		gpio-controller;
+		interrupts = <40>;
+		reg = <0x1e780200 0x0100>;
+		clocks = <&syscon ASPEED_CLK_APB>;
+		interrupt-controller;
+		ngpios = <8>;
+		bus-frequency = <12000000>;
+	};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
