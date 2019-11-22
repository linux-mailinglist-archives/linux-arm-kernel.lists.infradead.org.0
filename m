Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CE37105FFA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 06:30:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pWPI8sSXZW/g61JpKto/BbAvpvpg01tMqVGGBwnEtzg=; b=tzdzz+dkyDUrws
	eJEn/sttzVlcXLZHRrUQ16p9iLZKzBsszOII4gCur/nFOrelwD3DRtT5kmDy64qW1VgyOH9nEpZuS
	SXKOG5rKnnUTLT5nfhNTmUKinYvSXXzc9LOQncSwpsx4vOCZKk6BoDU6DEcUywsk69XSZgAgY+x88
	a+WN0odTTqSboDf/HQdo/NMgzhD/FBO9cMLavhUcoB0dpCG6uc2bWBTeTQjDBx8cAZWrCbw3wMkmy
	xCduF0eWeYV/ismhvm/ErvcicpTXE5fWXUIsZkRZrYdulOJRLkywxTZcz5dzP6hAZikOCl2r1xgoD
	X5Ab7O+rrVyNLEFWctpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY1WW-00084D-RO; Fri, 22 Nov 2019 05:30:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY1W8-0007d7-Ee
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 05:30:05 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1FA1B20707;
 Fri, 22 Nov 2019 05:30:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574400604;
 bh=K8/nosl4hE+hkkP23VwLxak+ntPZZn18CaUsFIU+arU=;
 h=From:To:Cc:Subject:Date:From;
 b=cO8HNhb0I4+RIYxQaTtyvH45VDd/VZ7P3wF7jA1KTYrHKPYLs6sNEnXWbG6Qzl0Sc
 +6H2mU3ebeESkkbpIyQ3xokvUe8qIu0+2+oVQFoMOjWOzDVh88yvzBkmA9abneFt1j
 LLWDyOl7QTmKMMIyjHkzSXbN76GaVCQsWnymJVqM=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 008/219] ARM: dts: imx51: Fix memory node
 duplication
Date: Fri, 22 Nov 2019 00:26:30 -0500
Message-Id: <20191122053001.752-1-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_213004_538660_CE924029 
X-CRM114-Status: GOOD (  11.57  )
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

[ Upstream commit 6a9681168b83c62abfa457c709f2f4b126bd6b92 ]

Boards based on imx51 have duplicate memory nodes:

- One coming from the board dts file: memory@

- One coming from the imx51.dtsi file.

Fix the duplication by removing the memory node from the dtsi file
and by adding 'device_type = "memory";' in the board dts.

Reported-by: Rob Herring <robh@kernel.org>
Signed-off-by: Fabio Estevam <festevam@gmail.com>
Signed-off-by: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/imx51-apf51.dts                 | 1 +
 arch/arm/boot/dts/imx51-babbage.dts               | 1 +
 arch/arm/boot/dts/imx51-digi-connectcore-som.dtsi | 1 +
 arch/arm/boot/dts/imx51-eukrea-cpuimx51.dtsi      | 1 +
 arch/arm/boot/dts/imx51-ts4800.dts                | 1 +
 arch/arm/boot/dts/imx51-zii-rdu1.dts              | 1 +
 arch/arm/boot/dts/imx51-zii-scu2-mezz.dts         | 1 +
 arch/arm/boot/dts/imx51-zii-scu3-esb.dts          | 1 +
 arch/arm/boot/dts/imx51.dtsi                      | 2 --
 9 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx51-apf51.dts b/arch/arm/boot/dts/imx51-apf51.dts
index 79d80036f74de..1eddf2908b3f2 100644
--- a/arch/arm/boot/dts/imx51-apf51.dts
+++ b/arch/arm/boot/dts/imx51-apf51.dts
@@ -22,6 +22,7 @@
 	compatible = "armadeus,imx51-apf51", "fsl,imx51";
 
 	memory@90000000 {
+		device_type = "memory";
 		reg = <0x90000000 0x20000000>;
 	};
 
diff --git a/arch/arm/boot/dts/imx51-babbage.dts b/arch/arm/boot/dts/imx51-babbage.dts
index ba60b0cb3cc13..99191466a8085 100644
--- a/arch/arm/boot/dts/imx51-babbage.dts
+++ b/arch/arm/boot/dts/imx51-babbage.dts
@@ -15,6 +15,7 @@
 	};
 
 	memory@90000000 {
+		device_type = "memory";
 		reg = <0x90000000 0x20000000>;
 	};
 
diff --git a/arch/arm/boot/dts/imx51-digi-connectcore-som.dtsi b/arch/arm/boot/dts/imx51-digi-connectcore-som.dtsi
index 5761a66e8a0d3..82d8df097ef1f 100644
--- a/arch/arm/boot/dts/imx51-digi-connectcore-som.dtsi
+++ b/arch/arm/boot/dts/imx51-digi-connectcore-som.dtsi
@@ -17,6 +17,7 @@
 	compatible = "digi,connectcore-ccxmx51-som", "fsl,imx51";
 
 	memory@90000000 {
+		device_type = "memory";
 		reg = <0x90000000 0x08000000>;
 	};
 };
diff --git a/arch/arm/boot/dts/imx51-eukrea-cpuimx51.dtsi b/arch/arm/boot/dts/imx51-eukrea-cpuimx51.dtsi
index f8902a338e49a..2e3125391bc49 100644
--- a/arch/arm/boot/dts/imx51-eukrea-cpuimx51.dtsi
+++ b/arch/arm/boot/dts/imx51-eukrea-cpuimx51.dtsi
@@ -23,6 +23,7 @@
 	compatible = "eukrea,cpuimx51", "fsl,imx51";
 
 	memory@90000000 {
+		device_type = "memory";
 		reg = <0x90000000 0x10000000>; /* 256M */
 	};
 };
diff --git a/arch/arm/boot/dts/imx51-ts4800.dts b/arch/arm/boot/dts/imx51-ts4800.dts
index 39eb067904c3d..4344632f79400 100644
--- a/arch/arm/boot/dts/imx51-ts4800.dts
+++ b/arch/arm/boot/dts/imx51-ts4800.dts
@@ -18,6 +18,7 @@
 	};
 
 	memory@90000000 {
+		device_type = "memory";
 		reg = <0x90000000 0x10000000>;
 	};
 
diff --git a/arch/arm/boot/dts/imx51-zii-rdu1.dts b/arch/arm/boot/dts/imx51-zii-rdu1.dts
index 6e80254c4562a..d0e0eb9c9adfa 100644
--- a/arch/arm/boot/dts/imx51-zii-rdu1.dts
+++ b/arch/arm/boot/dts/imx51-zii-rdu1.dts
@@ -53,6 +53,7 @@
 
 	/* Will be filled by the bootloader */
 	memory@90000000 {
+		device_type = "memory";
 		reg = <0x90000000 0>;
 	};
 
diff --git a/arch/arm/boot/dts/imx51-zii-scu2-mezz.dts b/arch/arm/boot/dts/imx51-zii-scu2-mezz.dts
index 26cf08549df40..f5b2d768fe47f 100644
--- a/arch/arm/boot/dts/imx51-zii-scu2-mezz.dts
+++ b/arch/arm/boot/dts/imx51-zii-scu2-mezz.dts
@@ -18,6 +18,7 @@
 
 	/* Will be filled by the bootloader */
 	memory@90000000 {
+		device_type = "memory";
 		reg = <0x90000000 0>;
 	};
 
diff --git a/arch/arm/boot/dts/imx51-zii-scu3-esb.dts b/arch/arm/boot/dts/imx51-zii-scu3-esb.dts
index e6ebac8f43e4f..ad90d66ccca6c 100644
--- a/arch/arm/boot/dts/imx51-zii-scu3-esb.dts
+++ b/arch/arm/boot/dts/imx51-zii-scu3-esb.dts
@@ -18,6 +18,7 @@
 
 	/* Will be filled by the bootloader */
 	memory@90000000 {
+		device_type = "memory";
 		reg = <0x90000000 0>;
 	};
 
diff --git a/arch/arm/boot/dts/imx51.dtsi b/arch/arm/boot/dts/imx51.dtsi
index ef2abc0978439..81f60c96a2e41 100644
--- a/arch/arm/boot/dts/imx51.dtsi
+++ b/arch/arm/boot/dts/imx51.dtsi
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
