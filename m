Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58ECB64779
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 15:48:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8HkMp6QRzbbzncT0+Iv90+QBLkANxil3gT/mnfjb1Mo=; b=tg2JwXWJ3HDlOE
	Jg7sW/K0SDdYml1Rjo4Z1kwDkWCUejaQ+lwfod8TRZG6umWEXo3P4eVsy3jFZmj1Ieg1l/gamS7zc
	4w3/S8kNyKR9mefSm42wPKSfXzp/6hk/jf54mqh77VLSBt5C0vEccm4aKUmobnh4QRTueIGPrvMjd
	ffKVdRNz+4m95eaCeOQf7U1pUTA5E9vhTE5ddWI+D592UBJGfOya6PMGEAQkeGlafy77zVGwxb6i7
	mfF2eRvxHFWIqSyk8SRQhIV8frIGGjC7T9yv0AQrfzfaM7ws3507xWDuHiCD4b74AXyx4vBhR84zO
	HZfApcF2IbrTkeK/sUjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlCx0-0004io-UA; Wed, 10 Jul 2019 13:48:03 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlCu2-0002JA-5f
 for linux-arm-kernel@bombadil.infradead.org; Wed, 10 Jul 2019 13:44:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iCRO+Ccb6/e5K8vBKuimaU4NfVfwHl8O27fk2aAV3qo=; b=BRqYF/oag1jtONwHHZJPg/1LtV
 fuaNO6/WdvtIFPC1yccRdM4LVa+sV4RlSSOJkGIrDQ65GGW9oqoBQawKQBKR9YuUSZiDoxpBDjFKn
 OeW3UYCSi/xAmQJn9Ituq91qOwPnN6nI+9caJlLrzTjlnneOr26y+1xvP5xpPTJQZO/XEwdLQxLqX
 kKPZQY0+PfstAQJ3NdgQGoHW6uk9jKpoWjABJm6Ae8BMKqURcKhn4/9G7UDoHEfeHLeYk9mNdwJfY
 m4susdrn81vUdbNoNU0PulZc/u+MTLU5h4PMkuv8htLXSX4y5t9VW4JEabhr3kv7DxT/kSNjpYp1q
 feCgVviA==;
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlCu5-0008Ad-Qr
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 13:45:03 +0000
Received: from localhost (alyon-656-1-672-152.w92-137.abo.wanadoo.fr
 [92.137.69.152]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 6B1B9200017;
 Wed, 10 Jul 2019 13:44:11 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Stephen Boyd <sboyd@kernel.org>, Mike Turquette <mturquette@baylibre.com>,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v7 1/6] dt-bindings: ap806: add the cluster clock node in the
 syscon file
Date: Wed, 10 Jul 2019 15:43:41 +0200
Message-Id: <20190710134346.30239-2-gregory.clement@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190710134346.30239-1-gregory.clement@bootlin.com>
References: <20190710134346.30239-1-gregory.clement@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_144501_910242_715DFA05 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Jason Cooper <jason@lakedaemon.net>,
 Andrew Lunn <andrew@lunn.ch>, Antoine Tenart <antoine.tenart@bootlin.com>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 =?UTF-8?q?Miqu=C3=A8l=20Raynal?= <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Document the device tree binding for the cluster clock controllers found
in the Armada 7K/8K SoCs.

Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
---
 .../arm/marvell/ap806-system-controller.txt   | 31 +++++++++++++++++--
 1 file changed, 29 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/marvell/ap806-system-controller.txt b/Documentation/devicetree/bindings/arm/marvell/ap806-system-controller.txt
index 7b8b8eb0191f..4f21c1024073 100644
--- a/Documentation/devicetree/bindings/arm/marvell/ap806-system-controller.txt
+++ b/Documentation/devicetree/bindings/arm/marvell/ap806-system-controller.txt
@@ -21,8 +21,8 @@ Clocks:
 The Device Tree node representing the AP806 system controller provides
 a number of clocks:
 
- - 0: clock of CPU cluster 0
- - 1: clock of CPU cluster 1
+ - 0: reference clock of CPU cluster 0
+ - 1: reference clock of CPU cluster 1
  - 2: fixed PLL at 1200 Mhz
  - 3: MSS clock, derived from the fixed PLL
 
@@ -143,3 +143,30 @@ ap_syscon1: system-controller@6f8000 {
 		#thermal-sensor-cells = <1>;
 	};
 };
+
+Cluster clocks:
+---------------
+
+Device Tree Clock bindings for cluster clock of AP806 Marvell. Each
+cluster contain up to 2 CPUs running at the same frequency.
+
+Required properties:
+- compatible: must be  "marvell,ap806-cpu-clock";
+- #clock-cells : should be set to 1.
+
+- clocks : shall be the input parent clock(s) phandle for the clock
+           (one per cluster)
+
+- reg: register range associated with the cluster clocks
+
+ap_syscon1: system-controller@6f8000 {
+	compatible = "marvell,armada-ap806-syscon1", "syscon", "simple-mfd";
+	reg = <0x6f8000 0x1000>;
+
+	cpu_clk: clock-cpu@278 {
+		compatible = "marvell,ap806-cpu-clock";
+		clocks = <&ap_clk 0>, <&ap_clk 1>;
+		#clock-cells = <1>;
+		reg = <0x278 0xa30>;
+	};
+};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
