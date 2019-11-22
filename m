Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 034CA106041
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 06:33:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jKwEG3ghcNnRHhYpW9ZypwhxbjTMI4/vCoYBSvwmD20=; b=RpJhnJmQX26+f1
	up9BZ1QHEEN1BAZphUr4i3wr3B49WnsY8qowUE+dJCssiEAE5UUt2ot5kZinyaPuXUMYCIvu3lzNU
	6DBLQlr3smqO8RRGMW8TN2ie3gLTDhwjeXZy/6XclXYe6Vc2osK67t6FQywD33YoGfBK522JrsCpA
	UMPRL2Koi7THEXZiam4ZxSn2uVSR/FYpdK/fNhNx2ClKXElde42MPCHlRosfBW8S7SEPqFImpsztm
	+l1ofdLtynEKRbC/C6EjhBBdVByDwMNfw2vRAsT9ty3cBA9nKo1c+qxHwGNfR6TPYPAyGIg8+Hc+R
	xrCixE2t/fDwKRRagkSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY1ZR-0002mZ-6P; Fri, 22 Nov 2019 05:33:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY1WO-0000Hn-9e
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 05:30:21 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D33CA2070B;
 Fri, 22 Nov 2019 05:30:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574400619;
 bh=//48Y0e+TnSjcWbypK13uBxiX7dydB+93cLmWpdG+a8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=IkJskqzNH4LWKISp06n70WO5DgV9ykaOis3Hbxc4NG/EcNXRBNTj+1LWXPcc/NYRa
 19LQ0gHu9RAyFzAnx6Wp66AYMpazpOv0BUjf6eouP2ZPIFgBbpdZ+V8wGayuw/4Wk9
 0PkczSuLS9YXbygF0+vkX+5MwJ9Wzu303ljW41RM=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 019/219] ARM: dts: imx27: Fix memory node
 duplication
Date: Fri, 22 Nov 2019 00:26:41 -0500
Message-Id: <20191122053001.752-12-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191122053001.752-1-sashal@kernel.org>
References: <20191122053001.752-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_213020_508496_A37168E3 
X-CRM114-Status: GOOD (  11.67  )
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

[ Upstream commit 38715dcd49b4430ac5b6bc1293278d91a4d32bd5 ]

Boards based on imx27 have duplicate memory nodes:

- One coming from the board dts file: memory@

- One coming from the imx27.dtsi file.

Fix the duplication by removing the memory node from the dtsi file
and by adding 'device_type = "memory";' in the board dts.

Reported-by: Rob Herring <robh@kernel.org>
Signed-off-by: Fabio Estevam <festevam@gmail.com>
Signed-off-by: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/imx27-apf27.dts                 | 1 +
 arch/arm/boot/dts/imx27-eukrea-cpuimx27.dtsi      | 1 +
 arch/arm/boot/dts/imx27-pdk.dts                   | 1 +
 arch/arm/boot/dts/imx27-phytec-phycard-s-som.dtsi | 1 +
 arch/arm/boot/dts/imx27-phytec-phycore-som.dtsi   | 1 +
 arch/arm/boot/dts/imx27.dtsi                      | 2 --
 6 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx27-apf27.dts b/arch/arm/boot/dts/imx27-apf27.dts
index 3eddd805a793a..f635d5c5029c4 100644
--- a/arch/arm/boot/dts/imx27-apf27.dts
+++ b/arch/arm/boot/dts/imx27-apf27.dts
@@ -20,6 +20,7 @@
 	compatible = "armadeus,imx27-apf27", "fsl,imx27";
 
 	memory@a0000000 {
+		device_type = "memory";
 		reg = <0xa0000000 0x04000000>;
 	};
 };
diff --git a/arch/arm/boot/dts/imx27-eukrea-cpuimx27.dtsi b/arch/arm/boot/dts/imx27-eukrea-cpuimx27.dtsi
index 9c455dcbe6ebf..c85f9d01768a1 100644
--- a/arch/arm/boot/dts/imx27-eukrea-cpuimx27.dtsi
+++ b/arch/arm/boot/dts/imx27-eukrea-cpuimx27.dtsi
@@ -17,6 +17,7 @@
 	compatible = "eukrea,cpuimx27", "fsl,imx27";
 
 	memory@a0000000 {
+		device_type = "memory";
 		reg = <0xa0000000 0x04000000>;
 	};
 
diff --git a/arch/arm/boot/dts/imx27-pdk.dts b/arch/arm/boot/dts/imx27-pdk.dts
index f9a882d991329..35123b7cb6b3e 100644
--- a/arch/arm/boot/dts/imx27-pdk.dts
+++ b/arch/arm/boot/dts/imx27-pdk.dts
@@ -10,6 +10,7 @@
 	compatible = "fsl,imx27-pdk", "fsl,imx27";
 
 	memory@a0000000 {
+		device_type = "memory";
 		reg = <0xa0000000 0x08000000>;
 	};
 
diff --git a/arch/arm/boot/dts/imx27-phytec-phycard-s-som.dtsi b/arch/arm/boot/dts/imx27-phytec-phycard-s-som.dtsi
index cbad7c88c58cc..b0b4f7c00246d 100644
--- a/arch/arm/boot/dts/imx27-phytec-phycard-s-som.dtsi
+++ b/arch/arm/boot/dts/imx27-phytec-phycard-s-som.dtsi
@@ -18,6 +18,7 @@
 	compatible = "phytec,imx27-pca100", "fsl,imx27";
 
 	memory@a0000000 {
+		device_type = "memory";
 		reg = <0xa0000000 0x08000000>; /* 128MB */
 	};
 };
diff --git a/arch/arm/boot/dts/imx27-phytec-phycore-som.dtsi b/arch/arm/boot/dts/imx27-phytec-phycore-som.dtsi
index ec466b4bfd410..0935e1400e5d2 100644
--- a/arch/arm/boot/dts/imx27-phytec-phycore-som.dtsi
+++ b/arch/arm/boot/dts/imx27-phytec-phycore-som.dtsi
@@ -17,6 +17,7 @@
 	compatible = "phytec,imx27-pcm038", "fsl,imx27";
 
 	memory@a0000000 {
+		device_type = "memory";
 		reg = <0xa0000000 0x08000000>;
 	};
 
diff --git a/arch/arm/boot/dts/imx27.dtsi b/arch/arm/boot/dts/imx27.dtsi
index 753d88df16274..39e75b997bdc8 100644
--- a/arch/arm/boot/dts/imx27.dtsi
+++ b/arch/arm/boot/dts/imx27.dtsi
@@ -16,10 +16,8 @@
 	 * The decompressor and also some bootloaders rely on a
 	 * pre-existing /chosen node to be available to insert the
 	 * command line and merge other ATAGS info.
-	 * Also for U-Boot there must be a pre-existing /memory node.
 	 */
 	chosen {};
-	memory { device_type = "memory"; };
 
 	aliases {
 		ethernet0 = &fec;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
