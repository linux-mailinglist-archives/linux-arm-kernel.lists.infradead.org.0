Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C48106097
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 06:50:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mCw6Kn3pol8MmvbZFKUoBNZb4EYPP6NAeUnqOvdmP2U=; b=mQwYeg2LicV8iH
	nDgn6J45Nqx4HLHNHSDNty31NOb9SJWl/O1xwE6eZ/Ez75cgQzYXgCbQRFHOUd3pGFw0UC2baccj5
	XpJw5aE8ZlUsasvw/mtuGEN/QGRFrYs6+qEUtr5vcpOPBlirhzN7qOGrYSf+N9jL+IyGtYE2h/xUy
	NF762AL6Grf395dcPFQlKrKxWuSE3lF28NyDiuB3RePnS8jYHBV35j7J33WyWR9jima3NL/HQMBQ3
	EV3eVVywSSyfdH05nsYii/21AlhQ95aWFcNuNwmAKQWMysSFE56rNsiR8YhIX2AQhK6pU/jQEviY+
	BkBxWRjCJQln+F8ENbnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY1qC-000271-HF; Fri, 22 Nov 2019 05:50:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY1oj-0008W8-Rz
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 05:49:19 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A96552068F;
 Fri, 22 Nov 2019 05:49:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574401757;
 bh=J41T5dDACX6mMdDwcHJ66tJM39TIQDMBCyI3Q1j6VLM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=S6VKzuh92DaiKDQtcRkJu2X2FbGEkX6pjGyjfcmTCB6QtkG1W60JkRhbvEclNGPF+
 B1uvZmtRML+Lu6V2Xirv2POMkhx6Wt45s69DTh116+13AFvdU8IfcWLpbzvEs5C5yL
 S+TSoHAWVHpv9x5iqHsMKmrdGUB5ChPlbq3uCM1Y=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 011/219] ARM: dts: imx35: Fix memory node
 duplication
Date: Fri, 22 Nov 2019 00:45:43 -0500
Message-Id: <20191122054911.1750-4-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191122054911.1750-1-sashal@kernel.org>
References: <20191122054911.1750-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_214917_950752_7AB2A1C4 
X-CRM114-Status: GOOD (  12.26  )
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

[ Upstream commit 8721610a6c2b8c42fc57819d8c3bfbb9166f95a3 ]

Boards based on imx35 have duplicate memory nodes:

- One coming from the board dts file: memory@

- One coming from the imx35.dtsi file.

Fix the duplication by removing the memory node from the dtsi file
and by adding 'device_type = "memory";' in the board dts.

Reported-by: Rob Herring <robh@kernel.org>
Signed-off-by: Fabio Estevam <festevam@gmail.com>
Signed-off-by: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/imx35-eukrea-cpuimx35.dtsi | 1 +
 arch/arm/boot/dts/imx35-pdk.dts              | 1 +
 arch/arm/boot/dts/imx35.dtsi                 | 2 --
 3 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx35-eukrea-cpuimx35.dtsi b/arch/arm/boot/dts/imx35-eukrea-cpuimx35.dtsi
index ba39d938f2891..5f8a47a9fcd40 100644
--- a/arch/arm/boot/dts/imx35-eukrea-cpuimx35.dtsi
+++ b/arch/arm/boot/dts/imx35-eukrea-cpuimx35.dtsi
@@ -18,6 +18,7 @@
 	compatible = "eukrea,cpuimx35", "fsl,imx35";
 
 	memory@80000000 {
+		device_type = "memory";
 		reg = <0x80000000 0x8000000>; /* 128M */
 	};
 };
diff --git a/arch/arm/boot/dts/imx35-pdk.dts b/arch/arm/boot/dts/imx35-pdk.dts
index df613e88fd2c1..ddce0a844758b 100644
--- a/arch/arm/boot/dts/imx35-pdk.dts
+++ b/arch/arm/boot/dts/imx35-pdk.dts
@@ -11,6 +11,7 @@
 	compatible = "fsl,imx35-pdk", "fsl,imx35";
 
 	memory@80000000 {
+		device_type = "memory";
 		reg = <0x80000000 0x8000000>,
 		      <0x90000000 0x8000000>;
 	};
diff --git a/arch/arm/boot/dts/imx35.dtsi b/arch/arm/boot/dts/imx35.dtsi
index 1c50b785cad47..b36b97b655dda 100644
--- a/arch/arm/boot/dts/imx35.dtsi
+++ b/arch/arm/boot/dts/imx35.dtsi
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
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
