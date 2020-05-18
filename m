Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24DF11D793D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 15:04:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=se3UcBCzJZL28PjR6WUn32xJ9+uzQ29/1Qb0rBRMuOQ=; b=ob6xooOMj+BXsRCyiEwUWtXjUj
	yfmDnOgF7gdvg4Yalr0Lu/dKIMuOqSZAuZXnaIN9Um1VJ/Vc28vYYabTf8fdyHBbJShchglHZR/9Z
	r2VHnp6csNfnnuQUznPqIP3Txxkt6F8vU+8DrUgnIofo24TxEP2xUpeTbBnC+QgF3L0Rlx71LIlMA
	Jbc0A9Uor9yF8vIaCoU5T50XSyIKmkjFY/o67vTaXVHS6xp1lJpHsvrch+VVyym4s2ai9VSMWslmX
	FJ8KJECrb+sqMDYgSvyl9qZE+IgzIeZwj00QrfgyixSdP8M9sYl9fREf82XXKQBZJHx1WMyXyu0Sj
	2rjwd/aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jafRc-0002Vn-3S; Mon, 18 May 2020 13:04:36 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jafR6-0002Do-IL
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 13:04:08 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 23C541A0B0B;
 Mon, 18 May 2020 15:04:03 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 4F7A31A0B00;
 Mon, 18 May 2020 15:03:59 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 4BF1B402AF;
 Mon, 18 May 2020 21:03:54 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] ARM: dts: imx5: make src node name generic
Date: Mon, 18 May 2020 20:54:20 +0800
Message-Id: <1589806460-19592-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589806460-19592-1-git-send-email-Anson.Huang@nxp.com>
References: <1589806460-19592-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_060404_765780_BDB9FC04 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Node name should be generic, use "reset-controller" instead of "src" for
i.MX5 SoCs src nodes.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
	- If failed to apply this patch series, try them to be based on
	  https://patchwork.kernel.org/patch/11541935/ series, I should have
	  sent them in same series, sorry for that.
---
 arch/arm/boot/dts/imx50.dtsi | 2 +-
 arch/arm/boot/dts/imx51.dtsi | 2 +-
 arch/arm/boot/dts/imx53.dtsi | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/imx50.dtsi b/arch/arm/boot/dts/imx50.dtsi
index 567dcc5..30726bf 100644
--- a/arch/arm/boot/dts/imx50.dtsi
+++ b/arch/arm/boot/dts/imx50.dtsi
@@ -333,7 +333,7 @@
 				status = "disabled";
 			};
 
-			src: src@53fd0000 {
+			src: reset-controller@53fd0000 {
 				compatible = "fsl,imx50-src", "fsl,imx51-src";
 				reg = <0x53fd0000 0x4000>;
 				interrupts = <75>;
diff --git a/arch/arm/boot/dts/imx51.dtsi b/arch/arm/boot/dts/imx51.dtsi
index 3f1e913..d3583aa 100644
--- a/arch/arm/boot/dts/imx51.dtsi
+++ b/arch/arm/boot/dts/imx51.dtsi
@@ -439,7 +439,7 @@
 				status = "disabled";
 			};
 
-			src: src@73fd0000 {
+			src: reset-controller@73fd0000 {
 				compatible = "fsl,imx51-src";
 				reg = <0x73fd0000 0x4000>;
 				interrupts = <75>;
diff --git a/arch/arm/boot/dts/imx53.dtsi b/arch/arm/boot/dts/imx53.dtsi
index 0d06dbd..afa57bf 100644
--- a/arch/arm/boot/dts/imx53.dtsi
+++ b/arch/arm/boot/dts/imx53.dtsi
@@ -588,7 +588,7 @@
 				status = "disabled";
 			};
 
-			src: src@53fd0000 {
+			src: reset-controller@53fd0000 {
 				compatible = "fsl,imx53-src", "fsl,imx51-src";
 				reg = <0x53fd0000 0x4000>;
 				interrupts = <75>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
