Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E00110603B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 06:32:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9M5YyCRdMqV/B2Qu70Ls8BqgjGV/ZNBI1VeC2lwU+Fw=; b=DuUR6mhM+NvunX
	z5If4jgfUKrGd4izciINA0ihVA7NoKNbo8jeTvCwgIubXsEL3pdbp//s0WGeX07NBW86gypq0f+Vj
	LwY7NIniTEQlKTAW1W5mvgUkevodixQmkxIN5mfMoQWtCPgoVRavDUxnb74emGhBO91CIg8vvHlap
	Qf8ttoHXgyY7TPOxel4l/OopezflteS6c1EfqKWl/khQ2GeexUdeZLBrdYaFtPN9jgLIuOSY87olD
	jOQay4/ov9l4Dz1PNbD41j5t8qPAjjmYRQO8VrKHE73dLx2A9IpzGHum4rrr4gu+jOpI3Xzge1ql3
	UqEyGrCxS5WoA/sqxkJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY1Y7-0001cU-AK; Fri, 22 Nov 2019 05:32:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY1WH-0000BF-AT
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 05:30:15 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 035B620707;
 Fri, 22 Nov 2019 05:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574400612;
 bh=PdKlgkUbmjtGXd4lr35779+IJqQhfvMEQr7fvNa42pU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=vt7EGcXAT3R4Ctr1C6ojPA0BHWA55tOSgZr6DJxjQzt9Apb7j7aQEAqY7ieXWIA3+
 y0d63NXPdrYoi/oDWQk03RfXkBoD4aAxOLwmpBC3WOfJmRCBF7xLo1sDjsknf0gpGe
 rWQ37IBib4+17+b2cUBBctwMSpD0lGUewkPsPjLI=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 014/219] ARM: dts: imx6sx: Fix memory node
 duplication
Date: Fri, 22 Nov 2019 00:26:36 -0500
Message-Id: <20191122053001.752-7-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191122053001.752-1-sashal@kernel.org>
References: <20191122053001.752-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_213013_452695_F499F32D 
X-CRM114-Status: GOOD (  11.95  )
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

[ Upstream commit 216f35fedd8688c8b654ebfbad18c6e64713fad7 ]

Boards based on imx6sx have duplicate memory nodes:

- One coming from the board dts file: memory@

- One coming from the imx6sx.dtsi file.

Fix the duplication by removing the memory node from the dtsi file
and by adding 'device_type = "memory";' in the board dts.

Reported-by: Rob Herring <robh@kernel.org>
Signed-off-by: Fabio Estevam <festevam@gmail.com>
Signed-off-by: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/imx6sx-nitrogen6sx.dts         | 1 +
 arch/arm/boot/dts/imx6sx-sabreauto.dts           | 1 +
 arch/arm/boot/dts/imx6sx-sdb.dtsi                | 1 +
 arch/arm/boot/dts/imx6sx-softing-vining-2000.dts | 1 +
 arch/arm/boot/dts/imx6sx-udoo-neo-basic.dts      | 1 +
 arch/arm/boot/dts/imx6sx-udoo-neo-extended.dts   | 1 +
 arch/arm/boot/dts/imx6sx-udoo-neo-full.dts       | 1 +
 arch/arm/boot/dts/imx6sx.dtsi                    | 2 --
 8 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx6sx-nitrogen6sx.dts b/arch/arm/boot/dts/imx6sx-nitrogen6sx.dts
index adb5cc7d8ce2f..832b5c5d7441a 100644
--- a/arch/arm/boot/dts/imx6sx-nitrogen6sx.dts
+++ b/arch/arm/boot/dts/imx6sx-nitrogen6sx.dts
@@ -12,6 +12,7 @@
 	compatible = "boundary,imx6sx-nitrogen6sx", "fsl,imx6sx";
 
 	memory@80000000 {
+		device_type = "memory";
 		reg = <0x80000000 0x40000000>;
 	};
 
diff --git a/arch/arm/boot/dts/imx6sx-sabreauto.dts b/arch/arm/boot/dts/imx6sx-sabreauto.dts
index 841a27f3198ff..48aede543612b 100644
--- a/arch/arm/boot/dts/imx6sx-sabreauto.dts
+++ b/arch/arm/boot/dts/imx6sx-sabreauto.dts
@@ -11,6 +11,7 @@
 	compatible = "fsl,imx6sx-sabreauto", "fsl,imx6sx";
 
 	memory@80000000 {
+		device_type = "memory";
 		reg = <0x80000000 0x80000000>;
 	};
 
diff --git a/arch/arm/boot/dts/imx6sx-sdb.dtsi b/arch/arm/boot/dts/imx6sx-sdb.dtsi
index f8f31872fa144..7f5ede5ca4c30 100644
--- a/arch/arm/boot/dts/imx6sx-sdb.dtsi
+++ b/arch/arm/boot/dts/imx6sx-sdb.dtsi
@@ -21,6 +21,7 @@
 	};
 
 	memory@80000000 {
+		device_type = "memory";
 		reg = <0x80000000 0x40000000>;
 	};
 
diff --git a/arch/arm/boot/dts/imx6sx-softing-vining-2000.dts b/arch/arm/boot/dts/imx6sx-softing-vining-2000.dts
index 252175b592475..2bc51623a8060 100644
--- a/arch/arm/boot/dts/imx6sx-softing-vining-2000.dts
+++ b/arch/arm/boot/dts/imx6sx-softing-vining-2000.dts
@@ -21,6 +21,7 @@
 	};
 
 	memory@80000000 {
+		device_type = "memory";
 		reg = <0x80000000 0x40000000>;
 	};
 
diff --git a/arch/arm/boot/dts/imx6sx-udoo-neo-basic.dts b/arch/arm/boot/dts/imx6sx-udoo-neo-basic.dts
index 40ccdf43dffc5..db0feb9b9f5d7 100644
--- a/arch/arm/boot/dts/imx6sx-udoo-neo-basic.dts
+++ b/arch/arm/boot/dts/imx6sx-udoo-neo-basic.dts
@@ -49,6 +49,7 @@
 	compatible = "udoo,neobasic", "fsl,imx6sx";
 
 	memory@80000000 {
+		device_type = "memory";
 		reg = <0x80000000 0x20000000>;
 	};
 };
diff --git a/arch/arm/boot/dts/imx6sx-udoo-neo-extended.dts b/arch/arm/boot/dts/imx6sx-udoo-neo-extended.dts
index 42bfc8f8f7f6b..5c7a2bb9141cb 100644
--- a/arch/arm/boot/dts/imx6sx-udoo-neo-extended.dts
+++ b/arch/arm/boot/dts/imx6sx-udoo-neo-extended.dts
@@ -49,6 +49,7 @@
 	compatible = "udoo,neoextended", "fsl,imx6sx";
 
 	memory@80000000 {
+		device_type = "memory";
 		reg = <0x80000000 0x40000000>;
 	};
 };
diff --git a/arch/arm/boot/dts/imx6sx-udoo-neo-full.dts b/arch/arm/boot/dts/imx6sx-udoo-neo-full.dts
index c84c877f09d49..13dfe2afaba56 100644
--- a/arch/arm/boot/dts/imx6sx-udoo-neo-full.dts
+++ b/arch/arm/boot/dts/imx6sx-udoo-neo-full.dts
@@ -49,6 +49,7 @@
 	compatible = "udoo,neofull", "fsl,imx6sx";
 
 	memory@80000000 {
+		device_type = "memory";
 		reg = <0x80000000 0x40000000>;
 	};
 };
diff --git a/arch/arm/boot/dts/imx6sx.dtsi b/arch/arm/boot/dts/imx6sx.dtsi
index 7b62e6fb47ebe..ae0728df542e9 100644
--- a/arch/arm/boot/dts/imx6sx.dtsi
+++ b/arch/arm/boot/dts/imx6sx.dtsi
@@ -15,10 +15,8 @@
 	 * The decompressor and also some bootloaders rely on a
 	 * pre-existing /chosen node to be available to insert the
 	 * command line and merge other ATAGS info.
-	 * Also for U-Boot there must be a pre-existing /memory node.
 	 */
 	chosen {};
-	memory { device_type = "memory"; };
 
 	aliases {
 		can0 = &flexcan1;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
