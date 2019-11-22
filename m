Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D03F91060BD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 06:51:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uk263jW+VKB5LRK4Dx2NglbvXkHpCIWL7gfofYTnMvg=; b=U29wRN1vXdzK+B
	gV9oBsp1op9z2SJ/KVH/lU6fN/IlpJQrnoypYrp1u6qUDdjGyws6ELc7qUGmT2a21qeNu/UWgngN8
	h2kYBoZhvsWdspSqnXD8A+WHEfoJv/q7SMbeZeLLc/crQriIAQjMb82Sro0bHhpHgPUS6TPQ1wxuP
	+YeKTGDaS83KCEJhaC04NbOJb+dLUyGYNwwBfUifBrz2zAsU/tPR4b2WFp865VMgDaTJrQL9mMhJB
	QEP3ZRHR4NAflzvuQaYCI2Ud/7zaZMyEIZIwhTh/2pt82VNsB2BlgWxgHfxniwdq59ppyw2erqJA9
	5NKYdzu87rVltGsCJtQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY1qy-0002oq-QR; Fri, 22 Nov 2019 05:51:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY1oq-0000B1-Fi
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 05:49:26 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 977632068F;
 Fri, 22 Nov 2019 05:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574401763;
 bh=mSHihSWPIz7bjaQpm4r+c0kwC0caDuKYcbZxaq51kQo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=dt5+r2izl3yW+FR5a1fouFZEly2IJweGR+l5dxrpesm1TOVl2sMQiAn5vXItOohmp
 dRShAoxepsL3DVW+cuZe1MAXaeKQsETm3odB+AzTe10tSQUScHVuhUXVr7T1Mq3LTs
 e/jcXYIt6hl889FzHs10XC0jlj4MgdifS4SGCtYs=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 015/219] ARM: dts: imx6sl: Fix memory node
 duplication
Date: Fri, 22 Nov 2019 00:45:47 -0500
Message-Id: <20191122054911.1750-8-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191122054911.1750-1-sashal@kernel.org>
References: <20191122054911.1750-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_214924_767568_DA332CEA 
X-CRM114-Status: GOOD (  11.81  )
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

[ Upstream commit 7fa8ab65ee15e386558ac5e971004712da91e2dd ]

Boards based on imx6sl have duplicate memory nodes:

- One coming from the board dts file: memory@

- One coming from the imx6sl.dtsi file.

Fix the duplication by removing the memory node from the dtsi file
and by adding 'device_type = "memory";' in the board dts.

Reported-by: Rob Herring <robh@kernel.org>
Signed-off-by: Fabio Estevam <festevam@gmail.com>
Signed-off-by: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/imx6sl-evk.dts  | 1 +
 arch/arm/boot/dts/imx6sl-warp.dts | 1 +
 arch/arm/boot/dts/imx6sl.dtsi     | 2 --
 arch/arm/boot/dts/imx6sll-evk.dts | 1 +
 4 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx6sl-evk.dts b/arch/arm/boot/dts/imx6sl-evk.dts
index 679b4482ab13a..f7a48e4622e1b 100644
--- a/arch/arm/boot/dts/imx6sl-evk.dts
+++ b/arch/arm/boot/dts/imx6sl-evk.dts
@@ -17,6 +17,7 @@
 	};
 
 	memory@80000000 {
+		device_type = "memory";
 		reg = <0x80000000 0x40000000>;
 	};
 
diff --git a/arch/arm/boot/dts/imx6sl-warp.dts b/arch/arm/boot/dts/imx6sl-warp.dts
index 404e602e67813..408da704c459b 100644
--- a/arch/arm/boot/dts/imx6sl-warp.dts
+++ b/arch/arm/boot/dts/imx6sl-warp.dts
@@ -55,6 +55,7 @@
 	compatible = "warp,imx6sl-warp", "fsl,imx6sl";
 
 	memory@80000000 {
+		device_type = "memory";
 		reg = <0x80000000 0x20000000>;
 	};
 
diff --git a/arch/arm/boot/dts/imx6sl.dtsi b/arch/arm/boot/dts/imx6sl.dtsi
index 2fa88c6f18820..55d1872aa81a8 100644
--- a/arch/arm/boot/dts/imx6sl.dtsi
+++ b/arch/arm/boot/dts/imx6sl.dtsi
@@ -13,10 +13,8 @@
 	 * The decompressor and also some bootloaders rely on a
 	 * pre-existing /chosen node to be available to insert the
 	 * command line and merge other ATAGS info.
-	 * Also for U-Boot there must be a pre-existing /memory node.
 	 */
 	chosen {};
-	memory { device_type = "memory"; };
 
 	aliases {
 		ethernet0 = &fec;
diff --git a/arch/arm/boot/dts/imx6sll-evk.dts b/arch/arm/boot/dts/imx6sll-evk.dts
index c8e115564ba2c..0c2406ac8a638 100644
--- a/arch/arm/boot/dts/imx6sll-evk.dts
+++ b/arch/arm/boot/dts/imx6sll-evk.dts
@@ -20,6 +20,7 @@
 	};
 
 	memory@80000000 {
+		device_type = "memory";
 		reg = <0x80000000 0x80000000>;
 	};
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
