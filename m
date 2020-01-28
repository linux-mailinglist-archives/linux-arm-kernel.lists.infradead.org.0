Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84BED14C2B9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 23:15:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=PlcsLAXOZevIE2433QUTUgYOqxhEX30aCf77T3m10Bo=; b=cZX
	j3CVloFDljKlAYKdaRDGBV5Ak/htVAer+8M+BKSjF3s+li7QuZ+nqw1lMJxWvxSxwx81Yxx6Qz9kE
	uRH4lBUfhPXgdQJ266eeh0zmduPPYKJyH356yXeH0i8O7llVRWrs+LDBxdsOXXiFFWuAOtxSJkAg1
	rkZUEAAtBF8A8xEquxGhqATYVNbRJOUh6XYpOjQ4hNHrUz1v6JPVnZk+zprbj7MrFFpHp4kTQAqFH
	cJByX4PT/qv3GQUMoBk0qLLqz2z24bV/NQX7x2jJTaUEF/mNk4goXRqZvkteQAP9O1LVa8xx6DOgS
	zpcf6kJfUpWcmMiA254GRMzzKghdIIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwZ8N-0001HX-Ky; Tue, 28 Jan 2020 22:14:59 +0000
Received: from lists.gateworks.com ([108.161.130.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwZ8F-0001Gn-22
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 22:14:52 +0000
Received: from 68-189-91-139.static.snlo.ca.charter.com ([68.189.91.139]
 helo=rjones.pdc.gateworks.com)
 by lists.gateworks.com with esmtp (Exim 4.82)
 (envelope-from <rjones@gateworks.com>)
 id 1iwZ8K-0005im-Ns; Tue, 28 Jan 2020 22:14:56 +0000
From: Robert Jones <rjones@gateworks.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH] ARM: dts: imx: ventana: add fxos8700 on gateworks boards
Date: Tue, 28 Jan 2020 14:14:24 -0800
Message-Id: <20200128221424.11481-1-rjones@gateworks.com>
X-Mailer: git-send-email 2.9.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_141451_133851_36E58EB6 
X-CRM114-Status: UNSURE (   7.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, Robert Jones <rjones@gateworks.com>,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add fxos8700 iio imu entries for Gateworks ventana SBCs.

Signed-off-by: Robert Jones <rjones@gateworks.com>
---
 arch/arm/boot/dts/imx6qdl-gw52xx.dtsi | 5 +++++
 arch/arm/boot/dts/imx6qdl-gw53xx.dtsi | 5 +++++
 arch/arm/boot/dts/imx6qdl-gw54xx.dtsi | 5 +++++
 3 files changed, 15 insertions(+)

diff --git a/arch/arm/boot/dts/imx6qdl-gw52xx.dtsi b/arch/arm/boot/dts/imx6qdl-gw52xx.dtsi
index 1a9a9d9..2d7d01e 100644
--- a/arch/arm/boot/dts/imx6qdl-gw52xx.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-gw52xx.dtsi
@@ -313,6 +313,11 @@
 		interrupts = <12 2>;
 		wakeup-gpios = <&gpio7 12 GPIO_ACTIVE_LOW>;
 	};
+
+	fxos8700@1e {
+		compatible = "nxp,fxos8700";
+		reg = <0x1e>;
+	};
 };
 
 &ldb {
diff --git a/arch/arm/boot/dts/imx6qdl-gw53xx.dtsi b/arch/arm/boot/dts/imx6qdl-gw53xx.dtsi
index 54b2bea..bf1a2c6 100644
--- a/arch/arm/boot/dts/imx6qdl-gw53xx.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-gw53xx.dtsi
@@ -304,6 +304,11 @@
 		interrupts = <11 2>;
 		wakeup-gpios = <&gpio1 11 GPIO_ACTIVE_LOW>;
 	};
+
+	fxos8700@1e {
+		compatible = "nxp,fxos8700";
+		reg = <0x1e>;
+	};
 };
 
 &ldb {
diff --git a/arch/arm/boot/dts/imx6qdl-gw54xx.dtsi b/arch/arm/boot/dts/imx6qdl-gw54xx.dtsi
index 1b6c133..d9e09a9 100644
--- a/arch/arm/boot/dts/imx6qdl-gw54xx.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-gw54xx.dtsi
@@ -361,6 +361,11 @@
 		interrupts = <12 2>;
 		wakeup-gpios = <&gpio7 12 GPIO_ACTIVE_LOW>;
 	};
+
+	fxos8700@1e {
+		compatible = "nxp,fxos8700";
+		reg = <0x1e>;
+	};
 };
 
 &ldb {
-- 
2.9.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
