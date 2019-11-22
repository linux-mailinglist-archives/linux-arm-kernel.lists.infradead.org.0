Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA8951060BE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 06:51:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2cKsPWHTpm4c05W4ppiaCRMYu2KrvULG0gAj3GtVg3Q=; b=AHWbc23txZaHx/
	5ggX6psj6Z053LHVDbeWoVszspTXdMYR0A2SJQNJTJjPQTH80/1mfNdmlZPyWHhaBMTKIXUZoY5Rh
	l0YFfyJ6srfF6ib5a+WejU2B4rPX98OGZEbTb3m73ix9DECLQF80NDBrPw1ZrxN4zLvcB/vP9iyBA
	C7zwMo0Bbz5D3pIlLLrslKfPavvLytAYVTlVFP46gp+R8Ynsj18xwweAMCqXxTqZjI9kiH7B7VImh
	Im8ALZyBQEDqfeNvQ3JVEOlYMTn8xeVtDsx/U7lbCGpLnKYbxXMjznV3XsChqlxaMl48DW3ym/0n6
	qm6D2tjq4UPbCJDiJYDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY1r8-00034A-NP; Fri, 22 Nov 2019 05:51:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY1om-00007k-Tu
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 05:49:22 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BAFE92070A;
 Fri, 22 Nov 2019 05:49:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574401760;
 bh=x4QYvNgnGAT1UIUmEnssqiLP8KCWRUy/qX7wjuA54Zw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DK//fqz00RVTPaqMaV3Cv+GUhlXTebB13ZKPTu1kOJBzwQNNpfNiuhqjVOe/F1yr+
 XiX4l7oTnxw9cr9H+Dcuxn+a2sJ6Oz7rQgFgT4yM7lOL0TSWY6OEH9jW+QKnix7+eO
 Np8by5P4E0v4F9Tr6I632TKbi9N29O32zZghxlwA=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 013/219] ARM: dts: imx6ul: Fix memory node
 duplication
Date: Fri, 22 Nov 2019 00:45:45 -0500
Message-Id: <20191122054911.1750-6-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191122054911.1750-1-sashal@kernel.org>
References: <20191122054911.1750-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_214921_044992_1DFD5662 
X-CRM114-Status: GOOD (  12.36  )
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

[ Upstream commit 750d8df6e7b269b828f66631a1d39ea027afc92a ]

Boards based on imx6ul have duplicate memory nodes:

- One coming from the board dts file: memory@

- One coming from the imx6ul.dtsi file.

Fix the duplication by removing the memory node from the dtsi file
and by adding 'device_type = "memory";' in the board dts.

Reported-by: Rob Herring <robh@kernel.org>
Signed-off-by: Fabio Estevam <festevam@gmail.com>
Signed-off-by: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/imx6ul-14x14-evk.dtsi        | 1 +
 arch/arm/boot/dts/imx6ul-geam.dts              | 1 +
 arch/arm/boot/dts/imx6ul-isiot.dtsi            | 1 +
 arch/arm/boot/dts/imx6ul-litesom.dtsi          | 1 +
 arch/arm/boot/dts/imx6ul-opos6ul.dtsi          | 1 +
 arch/arm/boot/dts/imx6ul-pico-hobbit.dts       | 1 +
 arch/arm/boot/dts/imx6ul-tx6ul.dtsi            | 1 +
 arch/arm/boot/dts/imx6ul.dtsi                  | 2 --
 arch/arm/boot/dts/imx6ull-colibri-nonwifi.dtsi | 1 +
 arch/arm/boot/dts/imx6ull-colibri-wifi.dtsi    | 1 +
 10 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi b/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
index 32a07232c0345..8180211265592 100644
--- a/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
+++ b/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
@@ -12,6 +12,7 @@
 	};
 
 	memory@80000000 {
+		device_type = "memory";
 		reg = <0x80000000 0x20000000>;
 	};
 
diff --git a/arch/arm/boot/dts/imx6ul-geam.dts b/arch/arm/boot/dts/imx6ul-geam.dts
index d81d20f8fc8dd..85cfad080f15c 100644
--- a/arch/arm/boot/dts/imx6ul-geam.dts
+++ b/arch/arm/boot/dts/imx6ul-geam.dts
@@ -51,6 +51,7 @@
 	compatible = "engicam,imx6ul-geam", "fsl,imx6ul";
 
 	memory@80000000 {
+		device_type = "memory";
 		reg = <0x80000000 0x08000000>;
 	};
 
diff --git a/arch/arm/boot/dts/imx6ul-isiot.dtsi b/arch/arm/boot/dts/imx6ul-isiot.dtsi
index cd99285511544..1cb52744f58ad 100644
--- a/arch/arm/boot/dts/imx6ul-isiot.dtsi
+++ b/arch/arm/boot/dts/imx6ul-isiot.dtsi
@@ -46,6 +46,7 @@
 
 / {
 	memory@80000000 {
+		device_type = "memory";
 		reg = <0x80000000 0x20000000>;
 	};
 
diff --git a/arch/arm/boot/dts/imx6ul-litesom.dtsi b/arch/arm/boot/dts/imx6ul-litesom.dtsi
index 8f775f6974d1c..8d6893210842b 100644
--- a/arch/arm/boot/dts/imx6ul-litesom.dtsi
+++ b/arch/arm/boot/dts/imx6ul-litesom.dtsi
@@ -48,6 +48,7 @@
 	compatible = "grinn,imx6ul-litesom", "fsl,imx6ul";
 
 	memory@80000000 {
+		device_type = "memory";
 		reg = <0x80000000 0x20000000>;
 	};
 };
diff --git a/arch/arm/boot/dts/imx6ul-opos6ul.dtsi b/arch/arm/boot/dts/imx6ul-opos6ul.dtsi
index a031bee311df4..cf7faf4b9c47e 100644
--- a/arch/arm/boot/dts/imx6ul-opos6ul.dtsi
+++ b/arch/arm/boot/dts/imx6ul-opos6ul.dtsi
@@ -49,6 +49,7 @@
 
 / {
 	memory@80000000 {
+		device_type = "memory";
 		reg = <0x80000000 0>; /* will be filled by U-Boot */
 	};
 
diff --git a/arch/arm/boot/dts/imx6ul-pico-hobbit.dts b/arch/arm/boot/dts/imx6ul-pico-hobbit.dts
index 0c09420f99512..797262d2f27fd 100644
--- a/arch/arm/boot/dts/imx6ul-pico-hobbit.dts
+++ b/arch/arm/boot/dts/imx6ul-pico-hobbit.dts
@@ -53,6 +53,7 @@
 
 	/* Will be filled by the bootloader */
 	memory@80000000 {
+		device_type = "memory";
 		reg = <0x80000000 0>;
 	};
 
diff --git a/arch/arm/boot/dts/imx6ul-tx6ul.dtsi b/arch/arm/boot/dts/imx6ul-tx6ul.dtsi
index 02b5ba42cd591..bb6dbfd5546b4 100644
--- a/arch/arm/boot/dts/imx6ul-tx6ul.dtsi
+++ b/arch/arm/boot/dts/imx6ul-tx6ul.dtsi
@@ -71,6 +71,7 @@
 	};
 
 	memory@80000000 {
+		device_type = "memory";
 		reg = <0x80000000 0>; /* will be filled by U-Boot */
 	};
 
diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
index 336cdead3da54..50834a43e5fb2 100644
--- a/arch/arm/boot/dts/imx6ul.dtsi
+++ b/arch/arm/boot/dts/imx6ul.dtsi
@@ -15,10 +15,8 @@
 	 * The decompressor and also some bootloaders rely on a
 	 * pre-existing /chosen node to be available to insert the
 	 * command line and merge other ATAGS info.
-	 * Also for U-Boot there must be a pre-existing /memory node.
 	 */
 	chosen {};
-	memory { device_type = "memory"; };
 
 	aliases {
 		ethernet0 = &fec1;
diff --git a/arch/arm/boot/dts/imx6ull-colibri-nonwifi.dtsi b/arch/arm/boot/dts/imx6ull-colibri-nonwifi.dtsi
index 10ab4697950f5..fb213bec46543 100644
--- a/arch/arm/boot/dts/imx6ull-colibri-nonwifi.dtsi
+++ b/arch/arm/boot/dts/imx6ull-colibri-nonwifi.dtsi
@@ -7,6 +7,7 @@
 
 / {
 	memory@80000000 {
+		device_type = "memory";
 		reg = <0x80000000 0x10000000>;
 	};
 };
diff --git a/arch/arm/boot/dts/imx6ull-colibri-wifi.dtsi b/arch/arm/boot/dts/imx6ull-colibri-wifi.dtsi
index 183193e8580dd..038d8c90f6dfe 100644
--- a/arch/arm/boot/dts/imx6ull-colibri-wifi.dtsi
+++ b/arch/arm/boot/dts/imx6ull-colibri-wifi.dtsi
@@ -7,6 +7,7 @@
 
 / {
 	memory@80000000 {
+		device_type = "memory";
 		reg = <0x80000000 0x20000000>;
 	};
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
