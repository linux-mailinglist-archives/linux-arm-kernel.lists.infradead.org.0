Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BBFE1D0C55
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 11:33:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OwKbhq+kawPWCXqWyVttKCJYLfCverrBvDLUq1BK0ZE=; b=APhNkOsAQ9bKWN
	tssNV4XRRzvNOATmv1ajDdyoEpFz8udb2aVL+1DqAkRMBgykNF8+yKj8FR90+qCjXS7orNcgdt0gE
	+EawSEowJzBKpD4BTxpcz2bmFoC5WyWJ4f37Yd+8YSCEKplJLyV2v4hjIxMHOWv+RPFECcBj2tVAE
	HcQ6UTl1HO8fCFL2LRzwM4LJ4cnb9fXUFMGW8QE/ZtA4oEHfOXeyG6aJOx4Uvio+/cpwrMgVoSNkR
	EmlFUjXiZANXxYhMh05uL2o6AqGv4BVmqXhxLMpSNeKtBsOtUE/o4UmEjwxi6lBokmu/8Z0/rG4XH
	5ky8xGmH3j6HCRXkWhqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYnlu-00079O-WB; Wed, 13 May 2020 09:33:51 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYnlc-00071F-8x
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 09:33:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:Reply-To:Content-ID
 :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pAMSSTYNXNQC8UANMcnt7gQ29pn9OURWqic2mz9/ThI=; b=MTpofKCaFbw5JOOumgbrC6eO0+
 zn6JGwG8zZqRKGcaebXU4J5NgeHrc1XqsWY0pXO0GCcgLQGOQss8M0AbdEOfuQ0tAMGyBfZTYYmJc
 Tg+JqDN3USmdLfUqkV7BTbZkDLusO3AaLwHt0nS28XQKQ8Dzfb/8MEeHFZkZ0hUynvGaUZqGA9o+r
 OExPa6XL7Ff27YCt1WM/v5YdFevuwmMCpFEb01Qt+ZskCnJj8Sen2tPOlwKTjDY3A4Ok4GTfk0UZN
 xFBawVttu3l0knpKerlJIyNPQvtTyfdj9ynaGFhWuFqDnSAk3XSEPMhpjKhcjKo/5+l/VNHYAjEMN
 1h7FTACw==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2001:4d48:ad52:3201:222:68ff:fe15:37dd]:37520 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1jYnlO-00042C-BM; Wed, 13 May 2020 10:33:18 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1jYnlN-0002O5-CM; Wed, 13 May 2020 10:33:17 +0100
From: Russell King <rmk+kernel@armlinux.org.uk>
To: linux-i2c@vger.kernel.org
Subject: [PATCH] arm64: dts: add uDPU i2c bus recovery
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1jYnlN-0002O5-CM@rmk-PC.armlinux.org.uk>
Date: Wed, 13 May 2020 10:33:17 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_023332_353770_82FD0439 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 devicetree@vger.kernel.org, Gregory Clement <gregory.clement@bootlin.com>,
 Vladimir Vid <vladimir.vid@sartura.hr>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for bus recovery for the Armada 3720 based uDPU.

Reviewed-by: Andrew Lunn <andrew@lunn.ch>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 .../boot/dts/marvell/armada-3720-uDPU.dts     | 22 +++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
index 7eb6c1796cef..95d46e8d081c 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
+++ b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
@@ -117,18 +117,36 @@
 	};
 };
 
+&pinctrl_nb {
+	i2c1_recovery_pins: i2c1-recovery-pins {
+		groups = "i2c1";
+		function = "gpio";
+	};
+
+	i2c2_recovery_pins: i2c2-recovery-pins {
+		groups = "i2c2";
+		function = "gpio";
+	};
+};
+
 &i2c0 {
 	status = "okay";
-	pinctrl-names = "default";
+	pinctrl-names = "default", "recovery";
 	pinctrl-0 = <&i2c1_pins>;
+	pinctrl-1 = <&i2c1_recovery_pins>;
 	/delete-property/mrvl,i2c-fast-mode;
+	scl-gpios = <&gpionb 0 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	sda-gpios = <&gpionb 1 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 };
 
 &i2c1 {
 	status = "okay";
-	pinctrl-names = "default";
+	pinctrl-names = "default", "recovery";
 	pinctrl-0 = <&i2c2_pins>;
+	pinctrl-1 = <&i2c2_recovery_pins>;
 	/delete-property/mrvl,i2c-fast-mode;
+	scl-gpios = <&gpionb 2 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	sda-gpios = <&gpionb 3 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 
 	lm75@48 {
 		status = "okay";
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
