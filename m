Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CC34118319
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 10:10:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=I3RtP5jB/NShcPZjI1ez6f5FjCldvwm7KxU0xZe7KXA=; b=IL+XiK+CXAwNGZ4jEy3Zhfl2+D
	h/Lcr0qyDwC86xRN+a0HomxnU1AOXnbpypkPp4vj389rYFXZtQtwUWPEOArDbA2Ok9tcgDggYiL2e
	jEVCSvJn4ocWEddfW58biJQEhmSAouU8gsjuH/4+TSWyZH0d710bDEgEjsQIed2FaoKVdI0WPY9Cy
	rXHdd6Z58F/f8NI5DbHseDnlqhPD65W47HAxsvzZKETJxbyx9Wba/SKtRoB/NEVMFogryCIGKfKA/
	Oj2kyylYlu9NI7D/4aS1PaOJUG2KGD5ij1vyisZIW7H0sDT6cnMZ5Std14KYuOhl75enb5JGi7U8J
	OHW2LQWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iebWp-0003SH-IS; Tue, 10 Dec 2019 09:09:59 +0000
Received: from comms.puri.sm ([159.203.221.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iebWc-0003Ps-GG
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 09:09:49 +0000
Received: from localhost (localhost [127.0.0.1])
 by comms.puri.sm (Postfix) with ESMTP id 16C30E10EC;
 Tue, 10 Dec 2019 01:09:37 -0800 (PST)
Received: from comms.puri.sm ([127.0.0.1])
 by localhost (comms.puri.sm [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s3CwpN2XUNh5; Tue, 10 Dec 2019 01:09:36 -0800 (PST)
From: Martin Kepplinger <martin.kepplinger@puri.sm>
To: robh@kernel.org,
	mark.rutland@arm.com
Subject: [PATCH] arm64: dts: imx8mq-librem5-devkit: use correct interrupt for
 the magnetometer
Date: Tue, 10 Dec 2019 10:08:57 +0100
Message-Id: <20191210090857.10663-1-martin.kepplinger@puri.sm>
In-Reply-To: <20191203130336.18763-1-martin.kepplinger@puri.sm>
References: <20191203130336.18763-1-martin.kepplinger@puri.sm>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_010946_562210_88FFDC8A 
X-CRM114-Status: UNSURE (   9.86  )
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
 Martin Kepplinger <martin.kepplinger@puri.sm>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Angus Ainslie (Purism)" <angus@akkea.ca>

The LSM9DS1 uses a high level interrupt.

Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>
Signed-off-by: Martin Kepplinger <martin.kepplinger@puri.sm>
---

Any objections or questions about the previously sent accelerometer DT
description? It and this follow-up bugfix is what we're running for
quite some time now.

thanks,

                             martin



 arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
index 2834d273bfdf..8de24a2d5234 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
@@ -429,7 +429,7 @@
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_imu>;
 		interrupt-parent = <&gpio3>;
-		interrupts = <19 IRQ_TYPE_LEVEL_LOW>;
+		interrupts = <19 IRQ_TYPE_LEVEL_HIGH>;
 		vdd-supply = <&reg_3v3_p>;
 		vddio-supply = <&reg_3v3_p>;
 	};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
