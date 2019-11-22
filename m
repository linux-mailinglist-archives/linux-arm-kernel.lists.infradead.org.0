Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2506B1060A7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 06:51:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZYMLhhpr2E2T3iBksXHja4JQTSVGw1RwRW/6wVeR1QA=; b=onpXFHnFYcWMQJ
	NTUop6iva+4hdYKvvRaSrSZ9NbzFH57fYQ+B58FlsxjnZdXSyc5sykqpP0XeU2oq8Vkz7EcxCIl8V
	QJ6yjbLlAh764ZhwHiEebiixHAzSIPoEj0YI0Q5mZJohQ5i3eVuablqXZ+4dFuWizripX1l+uhUdi
	RTEZTp8V5djCWZzuDWml7TLF2422uuOCPyIsbZM2urwVs+nDv78DKhio0dvpuyUnGStzsdoGeQBm4
	7mNq2rXYZPmyUxc9BLSUy/SBaB5urtiCpp1loCDpXgREB6oEpy3KPut4CrTwaxUFHrHIBvrvTOAWv
	h5dRvHyVVPehD0sBQhcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY1qX-0002RS-Vg; Fri, 22 Nov 2019 05:51:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY1ol-00006G-Ff
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 05:49:21 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 374312071B;
 Fri, 22 Nov 2019 05:49:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574401759;
 bh=g/LS6jI+ABLx2gf5i8mdPXUrd5s/zvOXFa8u8m4VnH8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=q5YhSJ8Ssg5LtK/sWPStnV7qHsXaCs3KjFLIzrcOrMa+zLY/D91ordZwvWnoPHemr
 OF5ejrvOg/rpb4k9REZDJ1QKlEhal8Mm4XMjzhNGX7jPAitrKBML1Y2kfXkS693sap
 7+HGwuEhH5X56FSpeSP/G6Nflki4uWLdzjK68NTA=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 012/219] ARM: dts: imx7: Fix memory node
 duplication
Date: Fri, 22 Nov 2019 00:45:44 -0500
Message-Id: <20191122054911.1750-5-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191122054911.1750-1-sashal@kernel.org>
References: <20191122054911.1750-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_214919_594430_1497FD57 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Rob Herring <robh@kernel.org>,
 devicetree@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Fabio Estevam <festevam@gmail.com>

[ Upstream commit 29988e867cb17de7119e971f9acfad2c3fccdb47 ]

Boards based on imx7 have duplicate memory nodes:

- One coming from the board dts file: memory@

- One coming from the imx7s.dtsi file.

Fix the duplication by removing the memory node from the dtsi file
and by adding 'device_type = "memory";' in the board dts.

Reported-by: Rob Herring <robh@kernel.org>
Signed-off-by: Fabio Estevam <festevam@gmail.com>
Signed-off-by: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/imx7d-cl-som-imx7.dts   | 3 ++-
 arch/arm/boot/dts/imx7d-colibri-emmc.dtsi | 1 +
 arch/arm/boot/dts/imx7d-colibri.dtsi      | 1 +
 arch/arm/boot/dts/imx7d-nitrogen7.dts     | 1 +
 arch/arm/boot/dts/imx7d-pico.dtsi         | 1 +
 arch/arm/boot/dts/imx7d-sdb.dts           | 1 +
 arch/arm/boot/dts/imx7s-colibri.dtsi      | 1 +
 arch/arm/boot/dts/imx7s-warp.dts          | 1 +
 arch/arm/boot/dts/imx7s.dtsi              | 2 --
 9 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/imx7d-cl-som-imx7.dts b/arch/arm/boot/dts/imx7d-cl-som-imx7.dts
index 584418f517a88..62d5e9a4a7818 100644
--- a/arch/arm/boot/dts/imx7d-cl-som-imx7.dts
+++ b/arch/arm/boot/dts/imx7d-cl-som-imx7.dts
@@ -19,6 +19,7 @@
 	compatible = "compulab,cl-som-imx7", "fsl,imx7d";
 
 	memory@80000000 {
+		device_type = "memory";
 		reg = <0x80000000 0x10000000>; /* 256 MB - minimal configuration */
 	};
 
@@ -284,4 +285,4 @@
 			MX7D_PAD_LPSR_GPIO1_IO05__GPIO1_IO5	0x14 /* OTG PWREN */
 		>;
 	};
-};
\ No newline at end of file
+};
diff --git a/arch/arm/boot/dts/imx7d-colibri-emmc.dtsi b/arch/arm/boot/dts/imx7d-colibri-emmc.dtsi
index 04d24ee17b142..898f4b8d7421f 100644
--- a/arch/arm/boot/dts/imx7d-colibri-emmc.dtsi
+++ b/arch/arm/boot/dts/imx7d-colibri-emmc.dtsi
@@ -8,6 +8,7 @@
 
 / {
 	memory@80000000 {
+		device_type = "memory";
 		reg = <0x80000000 0x40000000>;
 	};
 };
diff --git a/arch/arm/boot/dts/imx7d-colibri.dtsi b/arch/arm/boot/dts/imx7d-colibri.dtsi
index d9f8fb69511b6..e2e327f437e35 100644
--- a/arch/arm/boot/dts/imx7d-colibri.dtsi
+++ b/arch/arm/boot/dts/imx7d-colibri.dtsi
@@ -45,6 +45,7 @@
 
 / {
 	memory@80000000 {
+		device_type = "memory";
 		reg = <0x80000000 0x20000000>;
 	};
 };
diff --git a/arch/arm/boot/dts/imx7d-nitrogen7.dts b/arch/arm/boot/dts/imx7d-nitrogen7.dts
index 177d21fdeb288..6b4acea1ef795 100644
--- a/arch/arm/boot/dts/imx7d-nitrogen7.dts
+++ b/arch/arm/boot/dts/imx7d-nitrogen7.dts
@@ -12,6 +12,7 @@
 	compatible = "boundary,imx7d-nitrogen7", "fsl,imx7d";
 
 	memory@80000000 {
+		device_type = "memory";
 		reg = <0x80000000 0x40000000>;
 	};
 
diff --git a/arch/arm/boot/dts/imx7d-pico.dtsi b/arch/arm/boot/dts/imx7d-pico.dtsi
index f27b3849d3ff3..934a019f341e4 100644
--- a/arch/arm/boot/dts/imx7d-pico.dtsi
+++ b/arch/arm/boot/dts/imx7d-pico.dtsi
@@ -49,6 +49,7 @@
 	compatible = "technexion,imx7d-pico", "fsl,imx7d";
 
 	memory@80000000 {
+		device_type = "memory";
 		reg = <0x80000000 0x80000000>;
 	};
 
diff --git a/arch/arm/boot/dts/imx7d-sdb.dts b/arch/arm/boot/dts/imx7d-sdb.dts
index c9b3c60b0eb22..317f1bcc56e2a 100644
--- a/arch/arm/boot/dts/imx7d-sdb.dts
+++ b/arch/arm/boot/dts/imx7d-sdb.dts
@@ -15,6 +15,7 @@
 	};
 
 	memory@80000000 {
+		device_type = "memory";
 		reg = <0x80000000 0x80000000>;
 	};
 
diff --git a/arch/arm/boot/dts/imx7s-colibri.dtsi b/arch/arm/boot/dts/imx7s-colibri.dtsi
index fe8344cee8641..1fb1ec5d3d707 100644
--- a/arch/arm/boot/dts/imx7s-colibri.dtsi
+++ b/arch/arm/boot/dts/imx7s-colibri.dtsi
@@ -45,6 +45,7 @@
 
 / {
 	memory@80000000 {
+		device_type = "memory";
 		reg = <0x80000000 0x10000000>;
 	};
 };
diff --git a/arch/arm/boot/dts/imx7s-warp.dts b/arch/arm/boot/dts/imx7s-warp.dts
index fa390da636de7..97d5c711eb0ca 100644
--- a/arch/arm/boot/dts/imx7s-warp.dts
+++ b/arch/arm/boot/dts/imx7s-warp.dts
@@ -51,6 +51,7 @@
 	compatible = "warp,imx7s-warp", "fsl,imx7s";
 
 	memory@80000000 {
+		device_type = "memory";
 		reg = <0x80000000 0x20000000>;
 	};
 
diff --git a/arch/arm/boot/dts/imx7s.dtsi b/arch/arm/boot/dts/imx7s.dtsi
index 90f5bdfa9b3ce..7eaf96b425bed 100644
--- a/arch/arm/boot/dts/imx7s.dtsi
+++ b/arch/arm/boot/dts/imx7s.dtsi
@@ -17,10 +17,8 @@
 	 * The decompressor and also some bootloaders rely on a
 	 * pre-existing /chosen node to be available to insert the
 	 * command line and merge other ATAGS info.
-	 * Also for U-Boot there must be a pre-existing /memory node.
 	 */
 	chosen {};
-	memory { device_type = "memory"; };
 
 	aliases {
 		gpio0 = &gpio1;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
