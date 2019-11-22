Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DA08106044
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 06:34:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bI3emsS8qF1wXjV8+rBW+OSoHeftIURfHhG2uO32aq4=; b=MJs6IQ2Ua1Bl2Y
	N9J4nxKX9Rf5+LZqMptZBR3gJgzHNT7ztG8fn+u74kfEL+bHcm1Y6hUr7vs1bKfR31wEbno2Jzt0+
	YsyiPCALOlTGqUqFBaJevSRr0KlgfGQvKdJ/2a9Ds/rYUXRzLntPvYr74nk2hxRoNGAYC3Nc7PsWr
	Kc2pTYPEcyH6ozZlUwQ14u7J/23gtGEWpZM9/jGT6e4I4gkHE95aTG+JqX8QvFvK7UnwLP6H+ICKk
	ersvOX27UIrG9YodJ2CW7NPwxa70a8XuFGGSvex1UUoIsDrTRdetCgmNMzOjd7w9/Biwhz50ybzXj
	mfw2q9UFQuNOCfjqo6NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY1Zz-0003GY-NJ; Fri, 22 Nov 2019 05:34:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY1WP-0000Is-LZ
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 05:30:23 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 32E3F2070E;
 Fri, 22 Nov 2019 05:30:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574400621;
 bh=qQ7ADBan6Cki+gjs7P4HZzdhbGN9+BaZSrq2OioHsOM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=NR04yJcYIPy9vuLIH+rIWqCA703JtD6fwcp+Rog6FpnPmW76RnYKE2W2LHXe1l+b+
 wCpNI/Wd3U9w0dviEv8/9OtjpqC/YlYa+2dkspPPwrd8m8A2MTaUepep+7qp4yKi6H
 bt4z1Itc3XfrnZ9JOXOLojj2V9GpAfNrnMP1AD/c=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 020/219] ARM: dts: imx25: Fix memory node
 duplication
Date: Fri, 22 Nov 2019 00:26:42 -0500
Message-Id: <20191122053001.752-13-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191122053001.752-1-sashal@kernel.org>
References: <20191122053001.752-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_213021_779159_2CF7F3A5 
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
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Fabio Estevam <festevam@gmail.com>

[ Upstream commit 59d8bb363f563e4a147a291037bf979cb8ff9a59 ]

Boards based on imx25 have duplicate memory nodes:

- One coming from the board dts file: memory@

- One coming from the imx25.dtsi file.

Fix the duplication by removing the memory node from the dtsi file
and by adding 'device_type = "memory";' in the board dts.

Reported-by: Rob Herring <robh@kernel.org>
Signed-off-by: Fabio Estevam <festevam@gmail.com>
Signed-off-by: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/imx25-eukrea-cpuimx25.dtsi | 1 +
 arch/arm/boot/dts/imx25-karo-tx25.dts        | 1 +
 arch/arm/boot/dts/imx25-pdk.dts              | 1 +
 arch/arm/boot/dts/imx25.dtsi                 | 2 --
 4 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx25-eukrea-cpuimx25.dtsi b/arch/arm/boot/dts/imx25-eukrea-cpuimx25.dtsi
index e316fe08837a3..e4d7da267532d 100644
--- a/arch/arm/boot/dts/imx25-eukrea-cpuimx25.dtsi
+++ b/arch/arm/boot/dts/imx25-eukrea-cpuimx25.dtsi
@@ -18,6 +18,7 @@
 	compatible = "eukrea,cpuimx25", "fsl,imx25";
 
 	memory@80000000 {
+		device_type = "memory";
 		reg = <0x80000000 0x4000000>; /* 64M */
 	};
 };
diff --git a/arch/arm/boot/dts/imx25-karo-tx25.dts b/arch/arm/boot/dts/imx25-karo-tx25.dts
index 5cb6967866c0a..f37e9a75a3ca7 100644
--- a/arch/arm/boot/dts/imx25-karo-tx25.dts
+++ b/arch/arm/boot/dts/imx25-karo-tx25.dts
@@ -37,6 +37,7 @@
 	};
 
 	memory@80000000 {
+		device_type = "memory";
 		reg = <0x80000000 0x02000000 0x90000000 0x02000000>;
 	};
 };
diff --git a/arch/arm/boot/dts/imx25-pdk.dts b/arch/arm/boot/dts/imx25-pdk.dts
index a5626b46ac4e1..f8544a9e46330 100644
--- a/arch/arm/boot/dts/imx25-pdk.dts
+++ b/arch/arm/boot/dts/imx25-pdk.dts
@@ -12,6 +12,7 @@
 	compatible = "fsl,imx25-pdk", "fsl,imx25";
 
 	memory@80000000 {
+		device_type = "memory";
 		reg = <0x80000000 0x4000000>;
 	};
 
diff --git a/arch/arm/boot/dts/imx25.dtsi b/arch/arm/boot/dts/imx25.dtsi
index 85c15ee632727..8c8ad80de4614 100644
--- a/arch/arm/boot/dts/imx25.dtsi
+++ b/arch/arm/boot/dts/imx25.dtsi
@@ -12,10 +12,8 @@
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
