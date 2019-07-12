Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AB26675BC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 22:14:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0KvziOQjFwYNSiimcbYtKZOOklRXIP8LtXullnK2I94=; b=Xc3bVYgodxeZ6s
	Ee6TQt+jBGBIoB3MoM1/3txBK3/0R0JS1UgIk1tz7HWT7umHxXCLXuLtENJJiBjavniPQm7cep7jG
	ijxJHMY+DRTzEMncN10Kd7uYY2YblX7BOz5u6n63TV8cCRPTRrcNOMBkTVXBnFKQP/258LhUPidl8
	k8UJKtzvg+dJ1MFONitlThSwg3VQIw++9ZOxayBjUJvSTjbCWbpoACYl5WOsSXxWCmdmah3Q7kMt6
	xs1qpcYT8aMgCus1sx4RnSWXJmGhLhT8DJMjS3jBe65gGxnEJaDYCcefFrqmWISeqQZSV9QPPC5zk
	08ySxd+CeYLiOcWiLF7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hm1vv-00056K-Nj; Fri, 12 Jul 2019 20:14:19 +0000
Received: from atlmailgw1.ami.com ([63.147.10.40])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hm1vj-00055a-K1
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 20:14:09 +0000
X-AuditID: ac1060b2-3fdff70000003a7d-24-5d28ea136749
Received: from atlms1.us.megatrends.com (atlms1.us.megatrends.com
 [172.16.96.144])
 (using TLS with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by atlmailgw1.ami.com (Symantec Messaging Gateway) with SMTP id
 F5.C9.14973.31AE82D5; Fri, 12 Jul 2019 16:14:11 -0400 (EDT)
Received: from hongweiz-Ubuntu-AMI.us.megatrends.com (172.16.98.93) by
 atlms1.us.megatrends.com (172.16.96.144) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Fri, 12 Jul 2019 16:14:03 -0400
From: Hongwei Zhang <hongweiz@ami.com>
To: Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>, Linus
 Walleij <linus.walleij@linaro.org>, <devicetree@vger.kernel.org>
Subject: [PATCH 2/3 v2] dt-bindings: gpio: aspeed: Add SGPIO support
Date: Fri, 12 Jul 2019 16:14:00 -0400
Message-ID: <1562962440-15908-1-git-send-email-hongweiz@ami.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [172.16.98.93]
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrHLMWRmVeSWpSXmKPExsWyRiBhgq7wK41Yg6nnFSx2Xeaw+DL3FIvF
 /CPnWC1+n//LbDHlz3Imi02Pr7FaNK8+x2yxef4fRovLu+awWSy9fpHJonXvEXYHbo+r7bvY
 PdbMW8Po8f5GK7vHxY/HmD02repk87hzbQ+bx+Yl9R7nZyxk9Pi8SS6AM4rLJiU1J7MstUjf
 LoErY9+ehUwF0wUqTn3eydzAOJu3i5GDQ0LARKJ9V0oXIxeHkMAuJonbr+6yQDiHGSWuv//O
 3sXIycEmoCaxd/McJpCEiEAvo8TCr4vBHGaB1UwS7RuOg1UJC7hIrDjbywZiswioSnSduscC
 YvMKOEj8/vcMrEZCQE7i5rlOZoi4oMTJmU/AapgFJCQOvngBFhcSkJW4degxE0S9gsTzvscs
 Exj5ZiFpmYWkZQEj0ypGocSSnNzEzJz0ckO9xNxMveT83E2MkDDftIOx5aL5IUYmDsZDjBIc
 zEoivKv+q8cK8aYkVlalFuXHF5XmpBYfYpTmYFES51255luMkEB6YklqdmpqQWoRTJaJg1Oq
 gXHrH3H5dyUOYndeT792gKF/9TWfu/JlgYeeynnI3Y85Usbu+/belScZh3c/qHo/3/7V0+Yz
 j6JvzazNPCyYoJQt2nG577PPld4XzYuFhApW35PqC5m+ib00fXuDtfr82ODzTw+W9XvZvf/v
 /iLwx+r2r8VfFdf+bDk1c7K8xk7eexIfAoXeX7JUYinOSDTUYi4qTgQADUXdmGECAAA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_131407_726938_8087DEF8 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.147.10.40 listed in list.dnswl.org]
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
 .../devicetree/bindings/gpio/sgpio-aspeed.txt      | 43 ++++++++++++++++++++++
 1 file changed, 43 insertions(+)
 create mode 100755 Documentation/devicetree/bindings/gpio/sgpio-aspeed.txt

diff --git a/Documentation/devicetree/bindings/gpio/sgpio-aspeed.txt b/Documentation/devicetree/bindings/gpio/sgpio-aspeed.txt
new file mode 100755
index 0000000..3ae2b79
--- /dev/null
+++ b/Documentation/devicetree/bindings/gpio/sgpio-aspeed.txt
@@ -0,0 +1,43 @@
+Aspeed SGPIO controller Device Tree Bindings
+-------------------------------------------
+
+Required properties:
+- compatible		: Either "aspeed,ast2400-sgpio" or "aspeed,ast2500-sgpio"
+
+- #gpio-cells 		: Should be two
+			  - First cell is the GPIO line number
+			  - Second cell is used to specify optional
+			    parameters (unused)
+
+- reg			: Address and length of the register set for the device
+- gpio-controller	: Marks the device node as a GPIO controller.
+- interrupts		: Interrupt specifier (see interrupt bindings for
+			  details)
+
+- interrupt-controller	: Mark the GPIO controller as an interrupt-controller
+
+- nr-gpios		: number of GPIO pins to serialise. (should be multiple of 8, up to 80 pins)
+			  if not specified, defaults to 80.
+
+- clocks               : A phandle to the APB clock for SGPM clock division
+
+- bus-frequency	: SGPM CLK frequency, if not specified defaults to 1 MHz
+
+
+The sgpio and interrupt properties are further described in their respective bindings documentation:
+
+- Documentation/devicetree/bindings/sgpio/gpio.txt
+- Documentation/devicetree/bindings/interrupt-controller/interrupts.txt
+
+  Example:
+	sgpio@1e780200 {
+		#gpio-cells = <2>;
+		compatible = "aspeed,ast2500-sgpio";
+		gpio-controller;
+		interrupts = <40>;
+		reg = <0x1e780200 0x0100>;
+		clocks = <&syscon ASPEED_CLK_APB>;
+		interrupt-controller;
+		nr-gpios = <80>;
+		bus-frequency = <1000000>;
+	};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
