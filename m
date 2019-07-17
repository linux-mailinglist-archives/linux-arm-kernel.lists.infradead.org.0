Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E64946C1EE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 22:12:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5srlZvqQ0McmQUFMVEAeE2BMB/89vVn3KLmEbQn1uRk=; b=ohENXuBKkwBFFx
	DvASsIM9VDt7Oq62LLHLeJyyUBDnitGEIAZCCXJLIOuv6yk9O9mFvclW+FPluLISJL8oM43v+lDLt
	9Xr/aANVup6yO+OT8mHgpz3mXsDvQ0VKnP+wrkbnf3cbh79uRJc/FLw33F2FymyWz1o0nEReFlfOd
	ttkXvP34OfcjKmFAyKkEJBUbK0v6TZGUoph33lDoJCPs++KRE8cOggs+K35yBchhcuVSoRiR9anf8
	J1Jp8UFcT2ASVQMKuDTqc3tjMc1e6SnObNvW0vPwGrUCrJ2bsR3OwiaZe+P0lA/Md9eqIo5Fxfe4N
	J6i/OLDpIJffMoyZIU1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnqHo-0004FK-R8; Wed, 17 Jul 2019 20:12:24 +0000
Received: from atlmailgw2.ami.com ([63.147.10.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnqHc-0004EA-N1
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 20:12:14 +0000
X-AuditID: ac10606f-d11ff70000003324-a1-5d2f811a4366
Received: from atlms1.us.megatrends.com (atlms1.us.megatrends.com
 [172.16.96.144])
 (using TLS with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by atlmailgw2.ami.com (Symantec Messaging Gateway) with SMTP id
 D3.B5.13092.A118F2D5; Wed, 17 Jul 2019 16:12:10 -0400 (EDT)
Received: from hongweiz-Ubuntu-AMI.us.megatrends.com (172.16.98.93) by
 atlms1.us.megatrends.com (172.16.96.144) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Wed, 17 Jul 2019 16:12:09 -0400
From: Hongwei Zhang <hongweiz@ami.com>
To: Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>, Linus
 Walleij <linus.walleij@linaro.org>, <devicetree@vger.kernel.org>
Subject: [PATCH 2/3 v4] dt-bindings: gpio: aspeed: Add SGPIO support
Date: Wed, 17 Jul 2019 16:12:05 -0400
Message-ID: <1563394325-15941-1-git-send-email-hongweiz@ami.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [172.16.98.93]
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrHLMWRmVeSWpSXmKPExsWyRiBhgq5Uo36swcx1aha7LnNYfJl7isVi
 /pFzrBa/z/9ltpjyZzmTxabH11gtmlefY7bYPP8Po8XlXXPYLJZev8hk0br3CLsDt8fV9l3s
 HmvmrWH0eH+jld3j4sdjzB6bVnWyedy5tofNY/OSeo/zMxYyenzeJBfAGcVlk5Kak1mWWqRv
 l8CVsX7LcpaCuSIVX2YaNDDuF+hi5OSQEDCRuHHnOFMXIxeHkMAuJonNa/awQDiHGSUWX9jA
 DFLFJqAmsXfzHLAqEYFeRomFXxeDOcwCq5kk2jccZwepEhZwkVhxux3MZhFQleh/tZ8RxOYV
 cJC4sAKkG2SfnMTNc53MEHFBiZMzn7CA2MwCEhIHX7wAiwsJyErcOvQYql5B4nnfY5YJjHyz
 kLTMQtKygJFpFaNQYklObmJmTnq5kV5ibqZecn7uJkZImOfvYPz40fwQIxMH4yFGCQ5mJRFe
 26/asUK8KYmVValF+fFFpTmpxYcYpTlYlMR5V635FiMkkJ5YkpqdmlqQWgSTZeLglGpgNHx4
 p+L9a5nanOj3n0K4mmcyfF00T5F5wvG9EhOW2/M921nz07xVsnBSBmP4mUOhio8Dnp1dyrD3
 lc9Spv5Mrhmu3JGiXqJ2G568dXktv/f8lCSGaT2XHnPKfuP6tZ5flunhJOG0ecnP2r7JJc1K
 nHn+dDj/17O5K+axaSXpd7dsXyJ4hGkvvxJLcUaioRZzUXEiANmQldVhAgAA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_131212_818972_5B0814E0 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [63.147.10.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-aspeed@lists.ozlabs.org,
 linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Hongwei Zhang <hongweiz@ami.com>,
 linux-arm-kernel@lists.infradead.org
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
index 0000000..2d6305e
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
+- nr-gpios		: number of GPIO pins to serialise. 
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
+		nr-gpios = <8>;
+		bus-frequency = <12000000>;
+	};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
