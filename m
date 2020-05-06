Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F61E1C6D4F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 11:41:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g1HrZcjr724l74SafEZLBgnGsnhW6Pm5HdSKRE7yGUQ=; b=rLz/AlozvLfz2A
	KZFIXqQrkbO/mK+xkVdFHGryDDaVTEth/vPYjrHtHzu+Uu0kU7bCC5VI29XbbKG/L6rS8UP6YZ1rK
	an+WxvDB5m5MAbckWYxj3965BuQDIvpotsu6QyKMbJ6Ca3LnpohLuD/ip11fdSkGdiWr9HkHtZf8e
	NNahDCurseFsIBzAfThkZ+u97lIbkXe44XNQhPRKe8OA2848apJLZ96g2bI6KQvbqCp/APK/qIcdQ
	vvHzVtNOQWGSWMxO+M/ny41M2nmm5WMkxV87Xcb/y1pb6wsPE0ANpbwM5ruXgF1ykOiU6OvEtrwYA
	OY+p0Y1KUq4UcDV1MClQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWGYP-0004Pe-Hc; Wed, 06 May 2020 09:41:25 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWGXy-000491-9F
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 09:41:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
 In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BHzECdjXNTGQ+6R23H6wGDuKyoN1dwontLqIMvNDJLg=; b=IdW/ItxyB4IY1/3TnLUE7KnCe4
 5BrQYNEHzCPSZIK/rwXwxs68L+fPFI/noOMIF8kR5KvMQIdjMUzE9nLwnF3HcZR1hWvQGXPQrRrHl
 frurqJNYtQpfQ8v3MvpbEiThn8fjrfgaKqwnlNHqfmvaGrc1heBE1S1ezepWxewWYPiTvocKyOKsP
 IxSPGytb6/iwxOQKODXZ5eb1FDbn3vxUPFgZtqLrXDqawljHnTzFSh7wZzVYAsRIdmIj5LseWipGd
 YuRrbJL6ZguvqEdbv5RBQl54bQlamKF5TWUHbXFwDwfZbK6VgWJj64XrnzbbZP1Xkh0AEmN7Dhmxq
 CydZZVMw==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2002:4e20:1eda:1:222:68ff:fe15:37dd]:40820 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1jWGXe-0007pr-Dc; Wed, 06 May 2020 10:40:38 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1jWGXd-0000Z7-1n; Wed, 06 May 2020 10:40:37 +0100
In-Reply-To: <20200506094001.GP1551@shell.armlinux.org.uk>
References: <20200506094001.GP1551@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: linux-i2c@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: add uDPU i2c bus recovery
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1jWGXd-0000Z7-1n@rmk-PC.armlinux.org.uk>
Date: Wed, 06 May 2020 10:40:37 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_024058_809132_030AB502 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 devicetree@vger.kernel.org, Gregory Clement <gregory.clement@bootlin.com>,
 Vladimir Vid <vladimir.vid@sartura.hr>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

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
