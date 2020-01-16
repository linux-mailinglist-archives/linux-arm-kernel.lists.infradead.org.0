Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B593513ED4C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:02:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=anK9AExFhstrTLAmTOQy8b2dA0O8gh5kXn+p7SHh/3Q=; b=RVs+gXyMkfitXA
	JR0sSq8LJqPxrw5+7cm4WqnRu+5NiioRgICENYQLqwXWuMHdRUQG9AI+bLBzu2+W51gA2YpkileRg
	l6NLa3rB6CGD+CHNONwlwThuQaV+bnWPRkFBUyj7tKn+WtS/3q55qH2ps2KVXkfiVTV9gE9uE1Qee
	ZGo8HkNvJiC3TDqRdZ9l6E4f9L3G2Tqv/V6wXQ9SGZXjC4+T6LR595Qnxz7z9Q2SSsZc+1c1zsVq5
	x8n0j4LSJtYDZM9Pk82vXeUP5C2MCw2bHHcGVW/mCj/+JgaxeDC5te2kfaE6SHuc2HZO/2v9vkIhF
	m2+SX1RnupGUmn/Y3aSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is9Sx-0006zb-DT; Thu, 16 Jan 2020 18:01:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8ub-0004BO-0Q
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:26:45 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 34FDC246CD;
 Thu, 16 Jan 2020 17:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579195588;
 bh=0FKWZpV9F/7n4Ytt8eDke0QPjCHQ1w9exMsGFljJeqY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DPrC15sbEyvas9cHc5yyiUPJpcih69yijeWp9OGM4Tp/5ffZ/lGu2hxZa6OUwkp7Q
 73KPIFCJKV8AmxeRI8vxVNgtjyMcBFVo5qPevl77czCDn5oTyg3XtE1365rh0xJvkz
 wFKqVs645ur/yegvgQzkzlMGBeoRFqyWDIQO5/3s=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 167/371] ARM: dts: ls1021: Fix SGMII PCS link
 remaining down after PHY disconnect
Date: Thu, 16 Jan 2020 12:20:39 -0500
Message-Id: <20200116172403.18149-110-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116172403.18149-1-sashal@kernel.org>
References: <20200116172403.18149-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_092629_486615_213161A7 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 Vladimir Oltean <olteanv@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Vladimir Oltean <olteanv@gmail.com>

[ Upstream commit c7861adbe37f576931650ad8ef805e0c47564b9a ]

Each eTSEC MAC has its own TBI (SGMII) PCS and private MDIO bus.
But due to a DTS oversight, both SGMII-compatible MACs of the LS1021 SoC
are pointing towards the same internal PCS. Therefore nobody is
controlling the internal PCS of eTSEC0.

Upon initial ndo_open, the SGMII link is ok by virtue of U-boot
initialization. But upon an ifdown/ifup sequence, the code path from
ndo_open -> init_phy -> gfar_configure_serdes does not get executed for
the PCS of eTSEC0 (and is executed twice for MAC eTSEC1). So the SGMII
link remains down for eTSEC0. On the LS1021A-TWR board, to signal this
failure condition, the PHY driver keeps printing
'803x_aneg_done: SGMII link is not ok'.

Also, it changes compatible of mdio0 to "fsl,etsec2-mdio" to match
mdio1 device.

Fixes: 055223d4d22d ("ARM: dts: ls1021a: Enable the eTSEC ports on QDS and TWR")
Signed-off-by: Vladimir Oltean <olteanv@gmail.com>
Reviewed-by: Claudiu Manoil <claudiu.manoil@nxp.com>
Acked-by: Li Yang <leoyang.li@nxp.com>
Signed-off-by: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/ls1021a-twr.dts |  9 ++++++++-
 arch/arm/boot/dts/ls1021a.dtsi    | 11 ++++++++++-
 2 files changed, 18 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/ls1021a-twr.dts b/arch/arm/boot/dts/ls1021a-twr.dts
index 44715c8ef756..72a3fc63d0ec 100644
--- a/arch/arm/boot/dts/ls1021a-twr.dts
+++ b/arch/arm/boot/dts/ls1021a-twr.dts
@@ -143,7 +143,7 @@
 };
 
 &enet0 {
-	tbi-handle = <&tbi1>;
+	tbi-handle = <&tbi0>;
 	phy-handle = <&sgmii_phy2>;
 	phy-connection-type = "sgmii";
 	status = "okay";
@@ -222,6 +222,13 @@
 	sgmii_phy2: ethernet-phy@2 {
 		reg = <0x2>;
 	};
+	tbi0: tbi-phy@1f {
+		reg = <0x1f>;
+		device_type = "tbi-phy";
+	};
+};
+
+&mdio1 {
 	tbi1: tbi-phy@1f {
 		reg = <0x1f>;
 		device_type = "tbi-phy";
diff --git a/arch/arm/boot/dts/ls1021a.dtsi b/arch/arm/boot/dts/ls1021a.dtsi
index 2d20f60947b9..1343c86988c5 100644
--- a/arch/arm/boot/dts/ls1021a.dtsi
+++ b/arch/arm/boot/dts/ls1021a.dtsi
@@ -562,13 +562,22 @@
 		};
 
 		mdio0: mdio@2d24000 {
-			compatible = "gianfar";
+			compatible = "fsl,etsec2-mdio";
 			device_type = "mdio";
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <0x0 0x2d24000 0x0 0x4000>;
 		};
 
+		mdio1: mdio@2d64000 {
+			compatible = "fsl,etsec2-mdio";
+			device_type = "mdio";
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0x0 0x2d64000 0x0 0x4000>,
+			      <0x0 0x2d50030 0x0 0x4>;
+		};
+
 		ptp_clock@2d10e00 {
 			compatible = "fsl,etsec-ptp";
 			reg = <0x0 0x2d10e00 0x0 0xb0>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
