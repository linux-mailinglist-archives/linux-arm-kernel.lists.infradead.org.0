Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C32C10603F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 06:32:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ibyKHGSt13HnaVN97BvGkYAD2yLjkWftJozYlDW7Y2A=; b=jSRbn0c7BRqdB2
	P6Gar1gHQRvJ8nSXKZZy8+SB/PsZ0GdcNP34AcJCK7bjhDEOsTfo3gdyqA5cUlFfxfVLdhuyaKSAa
	p6hl/eaajEyc2LdknItQQ2qxtMrtoLHbQyQTuawls+i3VSZaNrTCNroSwa1FPr33jZSvbPjvE7k9p
	xfkqG6Dc9zyF+hux3YU+b7wOzKN0jM5E1of/VylT7GpS2ROcdTnL2ego6zTfpY526xbNJDimnGFkc
	d9I5764vG9Kn5mBCEqNHWOMKcLKMzax6s1giVLrOlbsbjhx+IK7b+N97Bsn1VZJT94oroHoKUympL
	a9PBSZgKjmY+VQz4aDRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY1Yt-0002Ks-As; Fri, 22 Nov 2019 05:32:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY1WL-0000Ea-KV
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 05:30:19 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 09CBE20707;
 Fri, 22 Nov 2019 05:30:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574400617;
 bh=HwrdliP4e2KnHoiiMFsQZ6eO7u3d7tT5XWKqlt9m2F4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=tzyaqecjlMYhZ35X5nZz/M/SBwQZqNlrP1hvsxhPF6YhqQwdN3uUVJ9wXYREZnbqZ
 9PyiJ3+dloxISMolhQUURVeYa3HeT70nTnQlUYlXHV0kxHJXfAFqm8iYQPVOIWONEv
 w+08QScxbnvkukSDIAud/EoRp8yiX/+Te6i3q7f8=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 017/219] ARM: dts: imx23: Fix memory node
 duplication
Date: Fri, 22 Nov 2019 00:26:39 -0500
Message-Id: <20191122053001.752-10-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191122053001.752-1-sashal@kernel.org>
References: <20191122053001.752-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_213017_744832_1C8ECC6F 
X-CRM114-Status: GOOD (  11.84  )
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
 Fabio Estevam <festevam@gmail.com>, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Fabio Estevam <festevam@gmail.com>

[ Upstream commit b629e83520fafe6f4c2f3e8c88c78a496fc4987c ]

Boards based on imx23 have duplicate memory nodes:

- One coming from the board dts file: memory@

- One coming from the imx23.dtsi file.

Fix the duplication by removing the memory node from the dtsi file
and by adding 'device_type = "memory";' in the board dts.

Reported-by: Rob Herring <robh@kernel.org>
Signed-off-by: Fabio Estevam <festevam@gmail.com>
Signed-off-by: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/imx23-evk.dts           | 1 +
 arch/arm/boot/dts/imx23-olinuxino.dts     | 1 +
 arch/arm/boot/dts/imx23-sansa.dts         | 1 +
 arch/arm/boot/dts/imx23-stmp378x_devb.dts | 1 +
 arch/arm/boot/dts/imx23-xfi3.dts          | 1 +
 arch/arm/boot/dts/imx23.dtsi              | 2 --
 6 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx23-evk.dts b/arch/arm/boot/dts/imx23-evk.dts
index ad2ae25b7b4db..aca27aa2d44bd 100644
--- a/arch/arm/boot/dts/imx23-evk.dts
+++ b/arch/arm/boot/dts/imx23-evk.dts
@@ -10,6 +10,7 @@
 	compatible = "fsl,imx23-evk", "fsl,imx23";
 
 	memory@40000000 {
+		device_type = "memory";
 		reg = <0x40000000 0x08000000>;
 	};
 
diff --git a/arch/arm/boot/dts/imx23-olinuxino.dts b/arch/arm/boot/dts/imx23-olinuxino.dts
index e9351774c6199..109f51603d45e 100644
--- a/arch/arm/boot/dts/imx23-olinuxino.dts
+++ b/arch/arm/boot/dts/imx23-olinuxino.dts
@@ -20,6 +20,7 @@
 	compatible = "olimex,imx23-olinuxino", "fsl,imx23";
 
 	memory@40000000 {
+		device_type = "memory";
 		reg = <0x40000000 0x04000000>;
 	};
 
diff --git a/arch/arm/boot/dts/imx23-sansa.dts b/arch/arm/boot/dts/imx23-sansa.dts
index 67de7863ad795..fa22fd9b24129 100644
--- a/arch/arm/boot/dts/imx23-sansa.dts
+++ b/arch/arm/boot/dts/imx23-sansa.dts
@@ -50,6 +50,7 @@
 	compatible = "sandisk,sansa_fuze_plus", "fsl,imx23";
 
 	memory@40000000 {
+		device_type = "memory";
 		reg = <0x40000000 0x04000000>;
 	};
 
diff --git a/arch/arm/boot/dts/imx23-stmp378x_devb.dts b/arch/arm/boot/dts/imx23-stmp378x_devb.dts
index 95c7b918f6d60..aab029349420d 100644
--- a/arch/arm/boot/dts/imx23-stmp378x_devb.dts
+++ b/arch/arm/boot/dts/imx23-stmp378x_devb.dts
@@ -17,6 +17,7 @@
 	compatible = "fsl,stmp378x-devb", "fsl,imx23";
 
 	memory@40000000 {
+		device_type = "memory";
 		reg = <0x40000000 0x04000000>;
 	};
 
diff --git a/arch/arm/boot/dts/imx23-xfi3.dts b/arch/arm/boot/dts/imx23-xfi3.dts
index 9616e500b9961..2b5df8dfd3ff3 100644
--- a/arch/arm/boot/dts/imx23-xfi3.dts
+++ b/arch/arm/boot/dts/imx23-xfi3.dts
@@ -49,6 +49,7 @@
 	compatible = "creative,x-fi3", "fsl,imx23";
 
 	memory@40000000 {
+		device_type = "memory";
 		reg = <0x40000000 0x04000000>;
 	};
 
diff --git a/arch/arm/boot/dts/imx23.dtsi b/arch/arm/boot/dts/imx23.dtsi
index 71bfd2b15609a..aaaa987d8eff9 100644
--- a/arch/arm/boot/dts/imx23.dtsi
+++ b/arch/arm/boot/dts/imx23.dtsi
@@ -13,10 +13,8 @@
 	 * The decompressor and also some bootloaders rely on a
 	 * pre-existing /chosen node to be available to insert the
 	 * command line and merge other ATAGS info.
-	 * Also for U-Boot there must be a pre-existing /memory node.
 	 */
 	chosen {};
-	memory { device_type = "memory"; };
 
 	aliases {
 		gpio0 = &gpio0;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
