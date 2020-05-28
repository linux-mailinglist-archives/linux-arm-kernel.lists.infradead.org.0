Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A6BB1E54A0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 05:24:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=V91jdNiM4t3hJcY2FYG6oFITEyxqNtAWl5FdqeSVdIE=; b=JR7yTbX0QzrN/y3K6crpxZCpGO
	IfEyLKAUF7smf1voxoVG9YuOj1bFZzCUn66Im6cc3fyU1q7Ng9zT6ogNFVEhyIEpvbi65n7yq2krt
	kwo5xe+91VcfmGKBbhNnwrMzeMF05kadWlh4TFYdMuSIO248Gcqn/Zd9t0/uYLtdAZ+TbwArpD18d
	vBzVTd5LOWShuw9oCfa6/GgKoIsGO3X4k1pIrvjv21aH+Fj1lnpc6hlccU00lSUK9CVyzGfGLMDQk
	pW2xz+XSTC5HGNOVv9HbJgBZjGr62VItAiDOXg6CtD9jMl9mP7B7OfirVkwleWKti4ZZoah7XOrTY
	W/1J7HYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je99c-0006Kr-BV; Thu, 28 May 2020 03:24:24 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je98b-0005hd-1i
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 03:23:22 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 696E6200960;
 Thu, 28 May 2020 05:23:14 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 5039F200961;
 Thu, 28 May 2020 05:23:06 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 1B720402DF;
 Thu, 28 May 2020 11:22:56 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, daniel.baluta@nxp.com,
 leonard.crestez@nxp.com, peng.fan@nxp.com, aford173@gmail.com,
 jun.li@nxp.com, shengjiu.wang@nxp.com, horia.geanta@nxp.com,
 aisheng.dong@nxp.com, fugang.duan@nxp.com, agx@sigxcpu.org,
 l.stach@pengutronix.de, andrew.smirnov@gmail.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 3/4] ARM: dts: imx: change ocotp node name on MXS SoCs
Date: Thu, 28 May 2020 11:12:49 +0800
Message-Id: <1590635570-8541-4-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590635570-8541-1-git-send-email-Anson.Huang@nxp.com>
References: <1590635570-8541-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_202321_235473_2AB67C48 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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

Change OCOTP node name from ocotp to efuse to be compliant
with yaml schema, it requires the nodename to be one of
"eeprom|efuse|nvram".

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm/boot/dts/imx23.dtsi | 2 +-
 arch/arm/boot/dts/imx28.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx23.dtsi b/arch/arm/boot/dts/imx23.dtsi
index c5edff3..18289f6 100644
--- a/arch/arm/boot/dts/imx23.dtsi
+++ b/arch/arm/boot/dts/imx23.dtsi
@@ -442,7 +442,7 @@
 				status = "disabled";
 			};
 
-			ocotp@8002c000 {
+			efuse@8002c000 {
 				compatible = "fsl,imx23-ocotp", "fsl,ocotp";
 				#address-cells = <1>;
 				#size-cells = <1>;
diff --git a/arch/arm/boot/dts/imx28.dtsi b/arch/arm/boot/dts/imx28.dtsi
index a1cbbeb..a2b799c 100644
--- a/arch/arm/boot/dts/imx28.dtsi
+++ b/arch/arm/boot/dts/imx28.dtsi
@@ -1011,7 +1011,7 @@
 				status = "disabled";
 			};
 
-			ocotp: ocotp@8002c000 {
+			ocotp: efuse@8002c000 {
 				compatible = "fsl,imx28-ocotp", "fsl,ocotp";
 				#address-cells = <1>;
 				#size-cells = <1>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
