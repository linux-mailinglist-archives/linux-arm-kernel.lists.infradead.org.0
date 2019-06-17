Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47F7C47F30
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 12:05:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DJNRLL3s+eofBMkHI1wJmhM2mxW1T2HuXSlSsyb7ckk=; b=eCayUTkr19ze4D
	K0fxKoPXDNRNwyMPCCIgiWtavx4zFRWjBmUH7vcy5U8GBMErRMMIP1Waw7MSOYYWAg43bd6WIjLi5
	pDz40RqD46r3HqCY/sM+3QP4CxkffGhuXBWpFIlWmernYdc7BKO3A6BtmcNTcNpIPjkvDEGS3smtC
	9+MMZrM6RIKtsvIiqx8Bdk0GqQ+VgzEIg25wnfgfbIaM0FHvfap/VpkQtBoty/FzsZXPWGNGN1dEk
	diUlZwIxSIMYTw/jLIz2Q/aloJqGb4On01Xf0JzUcR3VfllwVg1X83BJ7Uk9oD6rMFKGBGy1vWixs
	360S261iui10nwdxHRXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcoVp-0003p4-Ik; Mon, 17 Jun 2019 10:05:17 +0000
Received: from gate2.alliedtelesis.co.nz ([2001:df5:b000:5::4])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcoVS-0003lg-Js
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 10:04:56 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 6B20F886BF;
 Mon, 17 Jun 2019 22:04:44 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1560765884;
 bh=IAPqVHabBMb5/DtR9xVgn2/+tGPF2BDb7ymrW7GJ1PQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Zf0eI6XhHXF01SdWGzbiWeu0Vt50mp42wIpdnxIs7FNytv92yKaDbPPlm58vEIo9R
 978L79QKmAvi/B5aHbsRz7/1d07KpFQLl94rLL+9gQqwDzL8+WCrENOTcXiiWjGtFJ
 9nd4sIt+LCBucySrQPv2/QVwdYAeRk+WB+NjjRJ/4+xc0TcUGsWdWUmt256sLWSFoG
 42MW5ePxfn2YKgN0YdTrAOiXGCnGvBE5g+uVmA0snOuUfwCwyqUg5jqE3PciGNJk3j
 Cs5clFns0DEUX9+QUUidvT76m2Fkd0hnHPzpD096qoKvHt+x3CfMueW0kOi9OXruCN
 yu11Hn3qwbtYg==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5d0765bc0001>; Mon, 17 Jun 2019 22:04:44 +1200
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
 by smtp (Postfix) with ESMTP id 6014313EED3;
 Mon, 17 Jun 2019 22:04:45 +1200 (NZST)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id 372341E04F0; Mon, 17 Jun 2019 22:04:44 +1200 (NZST)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, linus.walleij@linaro.org, jason@lakedaemon.net,
 andrew@lunn.ch, gregory.clement@bootlin.com,
 sebastian.hesselbarth@gmail.com, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/4] dt-bindings: pinctrl: mvebu: Document bindings for
 98DX1135
Date: Mon, 17 Jun 2019 22:04:29 +1200
Message-Id: <20190617100432.13037-2-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190617100432.13037-1-chris.packham@alliedtelesis.co.nz>
References: <20190617100432.13037-1-chris.packham@alliedtelesis.co.nz>
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_030455_035656_FAB187EB 
X-CRM114-Status: UNSURE (   8.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org,
 Chris Packham <chris.packham@alliedtelesis.co.nz>, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The 98DX1135 is similar to the 98DX4122 except the MPP options differ.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---
 .../pinctrl/marvell,kirkwood-pinctrl.txt      | 44 ++++++++++++++++++-
 1 file changed, 42 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/marvell,kirkwood-pinctrl.txt b/Documentation/devicetree/bindings/pinctrl/marvell,kirkwood-pinctrl.txt
index 6c0ea155b708..2932f171ee85 100644
--- a/Documentation/devicetree/bindings/pinctrl/marvell,kirkwood-pinctrl.txt
+++ b/Documentation/devicetree/bindings/pinctrl/marvell,kirkwood-pinctrl.txt
@@ -6,8 +6,8 @@ part and usage.
 Required properties:
 - compatible: "marvell,88f6180-pinctrl",
               "marvell,88f6190-pinctrl", "marvell,88f6192-pinctrl",
-              "marvell,88f6281-pinctrl", "marvell,88f6282-pinctrl"
-              "marvell,98dx4122-pinctrl"
+              "marvell,88f6281-pinctrl", "marvell,88f6282-pinctrl",
+              "marvell,98dx4122-pinctrl", "marvell,98dx1135-pinctrl"
 - reg: register specifier of MPP registers
 
 This driver supports all kirkwood variants, i.e. 88f6180, 88f619x, and 88f628x.
@@ -317,3 +317,43 @@ mpp44         44       gpio
 mpp45         45       gpio
 mpp49         49       gpio
 
+* Marvell Poncat2 98dx1135
+
+name          pins     functions
+================================================================================
+
+mpp0          0        gpio, nand(io2), spi(cs)
+mpp1          1        gpo, nand(io3), spi(mosi)
+mpp2          2        gpo, nand(io4), spi(sck)
+mpp3          3        gpo, nand(io5), spi(miso)
+mpp4          4        gpio, nand(io6), uart0(rxd)
+mpp5          5        gpo, nand(io7), uart0(txd)
+mpp6          6        sysrst(out)
+mpp7          7        gpo, spi(cs)
+mpp8          8        gpio, twsi0(sda), uart1(rts)
+mpp9          9        gpio, twsi(sck), uart1(cts)
+mpp10         10       gpo, uart0(txd)
+mpp11         11       gpio, uart0(rxd)
+mpp13         13       gpio, uart1(txd)
+mpp14         14       gpio, uart1(rxd)
+mpp15         15       gpio, uart0(rts)
+mpp16         16       gpio, uart0(cts)
+mpp17         17       gpio, nand(cle)
+mpp18         18       gpo, nand(io0)
+mpp19         19       gpo, nand(io1)
+mpp20         20       gpio
+mpp21         21       gpio
+mpp22         22       gpio
+mpp23         23       gpio
+mpp24         24       gpio
+mpp25         25       gpio
+mpp26         26       gpio
+mpp27         27       gpio
+mpp28         28       gpio, nand(ren)
+mpp29         29       gpio, nand(wen)
+mpp30         30       gpio
+mpp31         31       gpio
+mpp32         32       gpio
+mpp33         33       gpio
+mpp34         34       gpio, nand(ale)
+mpp35         35       gpio, nand(cen)
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
