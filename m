Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E21C71060C2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 06:52:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dIv+efqQQOE0LqTCkoZi4HT/rtzvR/fwJXIeI3bcUPE=; b=F5BdCd3O/21DD8
	5DLAhJ40qUrl18NJttQ9h5YGfv6TLw8G2xOtQqzIF4Q3isYCmbfF/jZcDoZAYBUE5URDzjDxx8ftB
	gMUVMZVSSFvhHe3/7BwW3GsGlZTepo5E1DdfVSGZfuKSmps8V2FuGGWh0UuES1kh67GpzeorcWjSx
	3E6Enfhez1cPL1wGdriAKZJ5n3MZWGJSR4WksSsdrdD+nr6yjCU+6hIOeRTRkNdBGam1dy7xu4y+9
	XcdrUdDn2J/sw9mYjVWtgPARr6odr/Wm44pZg0BvNmdxwJpIAypVG9WgSlolJXtTcTHo7frqx33d8
	K+M+aNqqEUCTiVSf1L/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY1rm-0003ad-7Z; Fri, 22 Nov 2019 05:52:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY1os-0000Bu-3s
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 05:49:28 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D6EA42070B;
 Fri, 22 Nov 2019 05:49:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574401764;
 bh=32RnjBQhpMMpcnJsfK6ZgNHLIRuZH059M6OSVlzGlZk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Jfbo4vuLqcBOeNpy488Q6UNO4jtp5efo1z1DKL5f3i23HvZdjFU0KCW5b22l0Ctiv
 vZHb55Ja2flbXGeOccpt9tbIQXpV+4OnfjatnjcxTrmrh5HB/4iIuH/osQribx/xHE
 0bgs4VJk3I/TnSbCQqL/T7GbubHRvMXaiN+7jvTE=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 016/219] ARM: dts: imx50: Fix memory node
 duplication
Date: Fri, 22 Nov 2019 00:45:48 -0500
Message-Id: <20191122054911.1750-9-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191122054911.1750-1-sashal@kernel.org>
References: <20191122054911.1750-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_214926_283346_D8017144 
X-CRM114-Status: GOOD (  11.78  )
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

[ Upstream commit aab5e3ea95b958cf22a24e756a84e635bdb081c1 ]

imx50-evk has duplicate memory nodes:

- One coming from the board dts file: memory@

- One coming from the imx50.dtsi file.

Fix the duplication by removing the memory node from the dtsi file
and by adding 'device_type = "memory";' in the board dts.

Reported-by: Rob Herring <robh@kernel.org>
Signed-off-by: Fabio Estevam <festevam@gmail.com>
Signed-off-by: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/imx50-evk.dts | 1 +
 arch/arm/boot/dts/imx50.dtsi    | 2 --
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx50-evk.dts b/arch/arm/boot/dts/imx50-evk.dts
index 682a99783ee69..a25da415cb02e 100644
--- a/arch/arm/boot/dts/imx50-evk.dts
+++ b/arch/arm/boot/dts/imx50-evk.dts
@@ -12,6 +12,7 @@
 	compatible = "fsl,imx50-evk", "fsl,imx50";
 
 	memory@70000000 {
+		device_type = "memory";
 		reg = <0x70000000 0x80000000>;
 	};
 };
diff --git a/arch/arm/boot/dts/imx50.dtsi b/arch/arm/boot/dts/imx50.dtsi
index ab522c2da6df6..9e9e92acceb27 100644
--- a/arch/arm/boot/dts/imx50.dtsi
+++ b/arch/arm/boot/dts/imx50.dtsi
@@ -22,10 +22,8 @@
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
