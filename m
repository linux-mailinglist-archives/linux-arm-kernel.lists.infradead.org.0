Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AE0AEFC1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 06:46:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=diOHdssX+HkPkIA4ZVWY8cil6z4si8fYVJFCDBhgLM0=; b=hhXLKTvxd+IQjgCRXNRWSW7b/r
	mX56vCWX3w/t/ce8LmZ7JMqT/yygA7FxTHDU99opJ1xaGFYlBOTTTq0X7s2HlHnTIsVdxSQz5K2dq
	Y0v7cCRzPPvAKgu3JzlG2VMTQM3rAJeGRJeDtXMHfrAFnP3/Fo7zIdH16AG+oore01x+K1PnBbyyq
	MbdjtuljDVEhAuUr9jEwFTFP05r9MZmPFzq3+ikGPQPsOhhbQ48k1vLLQHgik22R3vQB+f7NkDzoT
	IGv8ufWMsxeXTrr/V5lkL3aEawtR/vu7BLzbcBUxX/pxA4VpgQqOvknvchmpGbADdP0a7qjCx1Q0i
	Q1r3D29Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLKel-0007rs-OG; Tue, 30 Apr 2019 04:46:15 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLKeN-0007ck-PG
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 04:45:53 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 886691A00DF;
 Tue, 30 Apr 2019 06:45:50 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 2C5E71A0014;
 Tue, 30 Apr 2019 06:45:42 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id B9C7E4030F;
 Tue, 30 Apr 2019 12:45:31 +0800 (SGT)
From: Chuanhua Han <chuanhua.han@nxp.com>
To: shawnguo@kernel.org, s.hauer@pengutronix.de, leoyang.li@nxp.com,
 robh+dt@kernel.org, mark.rutland@arm.com
Subject: [PATCH 2/2] arm64: dts: fsl: ls1046a: Add the guts node in dts
Date: Tue, 30 Apr 2019 12:47:19 +0800
Message-Id: <20190430044719.30720-2-chuanhua.han@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190430044719.30720-1-chuanhua.han@nxp.com>
References: <20190430044719.30720-1-chuanhua.han@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_214551_954461_FD9A12AA 
X-CRM114-Status: UNSURE (   7.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, sumit.batra@nxp.com, eha@deif.com,
 Chuanhua Han <chuanhua.han@nxp.com>, linux-kernel@vger.kernel.org,
 linux@rempel-privat.de, wsa+renesas@sang-engineering.com, linux-imx@nxp.com,
 u.kleine-koenig@pengutronix.de, l.stach@pengutronix.de, festevam@gmail.com,
 peda@axentia.se, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For NXP ls1046a SoC, the i2c clock needs to be configured with the
appropriate bit of RCW, so we add the guts node (GUTS/DCFG global
utilities block) for the driver to read.

Signed-off-by: Sumit Batra <sumit.batra@nxp.com>
Signed-off-by: Chuanhua Han <chuanhua.han@nxp.com>
---
 arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
index 373310e4c0ea..f88599df18bb 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
@@ -205,6 +205,11 @@
 			status = "disabled";
 		};
 
+		guts: global-utilities@1ee0000 {
+			compatible = "fsl,qoriq-device-config";
+			reg = <0x0 0x1ee0000 0x0 0x1000>;
+		};
+
 		qspi: spi@1550000 {
 			compatible = "fsl,ls1021a-qspi";
 			#address-cells = <1>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
