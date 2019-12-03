Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4CE410FE58
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 14:05:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mfwLMbChEWYjcDMlw++HVMddQXu1kIgS5Q3CjJtpHAw=; b=jfj
	XMCS/zFQXdZM7bYzsO3MCBgqT3SDoNBJ0em6DGnoWW3qE5P8J48/6ugWL8aFUWm84gyx9LzC69wqK
	pEnTXr+MUjnvsmLfLKLo6cwYVwfc7U84EF/Ck/Jo6UCqwI3XcyZnGlrvzLcHGXvQa9QU7RCuGekva
	xg1Ow+9E8xLIlZlgRfdSBN4C7m5z/qQs0v+GSmfHscaE3fsH80G8BkKHQnf9AyNcgYhdFlDatjKkL
	taX8ADGuYPxsKwGkazgNLwOP1nF7x8cFKYSl8a5yY/6tjvqiXK1KduPb3a58uAndGODIIGe0V6Hvm
	zRfH2i9ADSzZN4pqJIzHHmLnv4ZAoiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic7rK-00074r-Ar; Tue, 03 Dec 2019 13:04:54 +0000
Received: from comms.puri.sm ([159.203.221.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic7rB-00073w-AA
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 13:04:49 +0000
Received: from localhost (localhost [127.0.0.1])
 by comms.puri.sm (Postfix) with ESMTP id 6C488E0301;
 Tue,  3 Dec 2019 05:04:07 -0800 (PST)
Received: from comms.puri.sm ([127.0.0.1])
 by localhost (comms.puri.sm [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PfiCBJBd9cA1; Tue,  3 Dec 2019 05:04:06 -0800 (PST)
From: Martin Kepplinger <martin.kepplinger@puri.sm>
To: robh@kernel.org, mark.rutland@arm.com
Subject: [PATCH] arm64: dts: imx8mq-librem5-devkit: add accelerometer and gyro
 sensor
Date: Tue,  3 Dec 2019 14:03:36 +0100
Message-Id: <20191203130336.18763-1-martin.kepplinger@puri.sm>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_050445_353426_F4B54DB9 
X-CRM114-Status: UNSURE (   7.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [159.203.221.185 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, kernel@puri.sm,
 Martin Kepplinger <martin.kepplinger@puri.sm>, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that there is driver support, describe the accel and gyro sensor parts
of the LSM9DS1 IMU.

Signed-off-by: Martin Kepplinger <martin.kepplinger@puri.sm>
---
 arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
index 683a11035643..7a92704c53ec 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
@@ -415,6 +415,13 @@
 	pinctrl-0 = <&pinctrl_i2c3>;
 	status = "okay";
 
+	accel_gyro@6a {
+		compatible = "st,lsm9ds1-imu";
+		reg = <0x6a>;
+		vdd-supply = <&reg_3v3_p>;
+		vddio-supply = <&reg_3v3_p>;
+	};
+
 	magnetometer@1e	{
 		compatible = "st,lsm9ds1-magn";
 		reg = <0x1e>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
