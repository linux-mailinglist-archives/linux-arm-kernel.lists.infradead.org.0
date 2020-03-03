Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33F32176F95
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 07:39:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=vSVYpA+SP0eN7ROwSAqofBy/fdRLhzX5E/IJC7AHxvI=; b=ppV
	EQN+kNinA0Sm1HBNYmqW6zvrjZAL9Zq9cU0r97DFUuz0tZa9++iJ+p7ZN8EStU0S0w4ThQavcVV44
	r9pbjoZov3hVXabj2O+zpJ4ejU+I+ZfPyWBsUuHLT+Wg+kxErgNNRmDFMD0j+6IIUJVhu+CEAn8o9
	3PgyEAtUMVWZ0s/47zHnzQcdJ+/bVPRr4fjxluNzUUeX9IeOk/aXMDdTdvT63HPdtNH4E/zUdHQRq
	UWK8AyJ9LzIaD0Mn/6bgKRn4fbLqolXturgUceWl2WAGvhntBMsYn7ZWyEL67iTrJ5o/bD1LbtxiU
	wU6/U1bKQFuJP2nlxQfX9ICnlx6tJgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j91DM-0000DR-5V; Tue, 03 Mar 2020 06:39:36 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j91Cw-00005p-ES
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 06:39:11 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 7FE231A13D4;
 Tue,  3 Mar 2020 07:39:06 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 3B5F21A13EA;
 Tue,  3 Mar 2020 07:39:02 +0100 (CET)
Received: from lsv03124.swis.in-blr01.nxp.com (lsv03124.swis.in-blr01.nxp.com
 [92.120.146.121])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id D0C6E40370;
 Tue,  3 Mar 2020 14:38:40 +0800 (SGT)
From: Kuldeep Singh <kuldeep.singh@nxp.com>
To: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH 1/2] arm64: dts: lx2160ardb: Update FSPI node properties
Date: Tue,  3 Mar 2020 12:08:31 +0530
Message-Id: <1583217512-27994-1-git-send-email-kuldeep.singh@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_223910_618702_E69994BF 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kuldeep Singh <kuldeep.singh@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Li Yang <leoyang.li@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update fspi node compatibles of LX2160A-RDB to "jedec,spi-nor" for
automatic detection of flash.

This also helps in fixing below warning:
spi-nor spi0.0: found mt35xu512aba, expected m25p80
spi-nor spi0.1: found mt35xu512aba, expected m25p80

Signed-off-by: Kuldeep Singh <kuldeep.singh@nxp.com>
---
 arch/arm64/boot/dts/freescale/fsl-lx2160a-rdb.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-lx2160a-rdb.dts
index 51615de..22d0308 100644
--- a/arch/arm64/boot/dts/freescale/fsl-lx2160a-rdb.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a-rdb.dts
@@ -84,7 +84,7 @@
 	mt35xu512aba0: flash@0 {
 		#address-cells = <1>;
 		#size-cells = <1>;
-		compatible = "spansion,m25p80";
+		compatible = "jedec,spi-nor";
 		m25p,fast-read;
 		spi-max-frequency = <50000000>;
 		reg = <0>;
@@ -95,7 +95,7 @@
 	mt35xu512aba1: flash@1 {
 		#address-cells = <1>;
 		#size-cells = <1>;
-		compatible = "spansion,m25p80";
+		compatible = "jedec,spi-nor";
 		m25p,fast-read;
 		spi-max-frequency = <50000000>;
 		reg = <1>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
