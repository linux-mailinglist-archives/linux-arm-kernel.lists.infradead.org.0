Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B271427E1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 11:09:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ShyM5rcO5jHJlACmxwjR/fQBg0gR93zJ+481wtN28RE=; b=JNo
	pcUXMYWILXRXH25yNiKl4UMnEGpasdiAmWFlM/5ETO8EnbGNUs35fxBLDbX/mkYkSVNsVZduu204q
	IcFdfvK7BNXfzC3YDx9wYAyvNw2YodZ7JoLEWCTw9Bv7eS+KCL0k+MSPxoCZCx5GFJMQLlR203oC1
	ZulOh8+UE8ZiZkJTkTRQmoCcsO1aU0QENgQxfQP2iXO74IZEGO7L2aqBpi9lGLemvFmhnpk4JdSex
	PDzfyGDP2ztUW/JOO1omESqj+Ec2tVQyu6hKCrg159AGCIAYztCAKxUa4COOJVt4bYIAwfV+r4q90
	YrwXr5Ppi422TnRLPmYjISqRU3jmQ6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itTzP-0006rZ-2r; Mon, 20 Jan 2020 10:08:59 +0000
Received: from comms.puri.sm ([159.203.221.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itTzC-0006qr-6D
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 10:08:50 +0000
Received: from localhost (localhost [127.0.0.1])
 by comms.puri.sm (Postfix) with ESMTP id 70A74DF2AA;
 Mon, 20 Jan 2020 02:08:00 -0800 (PST)
Received: from comms.puri.sm ([127.0.0.1])
 by localhost (comms.puri.sm [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7fE69IKM7W_p; Mon, 20 Jan 2020 02:07:59 -0800 (PST)
From: Martin Kepplinger <martin.kepplinger@puri.sm>
To: robh@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org
Subject: [PATCH] arm64: dts: librem5-devkit: add lsm9ds1 mount matrix
Date: Mon, 20 Jan 2020 11:07:22 +0100
Message-Id: <20200120100722.30359-1-martin.kepplinger@puri.sm>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_020846_235297_4AACC60F 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Martin Kepplinger <martin.kepplinger@puri.sm>,
 linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The IMU chip on the librem5-devkit is not mounted at the "natural" place
that would match normal phone orientation (see the documentation for the
details about what that is).

Since the lsm9ds1 driver supports providing a mount matrix, we can describe
the orientation on the board in the dts:

Create a right-handed coordinate system (x * -1; see the datasheet for the
axis) and rotate 180 degrees around the y axis because the device sits on
the back side from the display.

Signed-off-by: Martin Kepplinger <martin.kepplinger@puri.sm>
---

tested on the librem5-devkit of course, finally fixing the orientation problem
for the accelerometer :)

thanks,

                            martin


 arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
index 703254282b96..6c8ab009081b 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
@@ -457,6 +457,9 @@
 		reg = <0x6a>;
 		vdd-supply = <&reg_3v3_p>;
 		vddio-supply = <&reg_3v3_p>;
+		mount-matrix =  "1",  "0",  "0",
+				"0",  "1",  "0",
+				"0",  "0", "-1";
 	};
 };
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
