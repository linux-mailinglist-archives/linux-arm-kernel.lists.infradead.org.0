Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFC35169E7E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 07:32:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3hoAz5bXa6tztQJdTXRiAfJb8bZGs/v6LWUA6Hr3QZo=; b=g7QlbD+9Gk4w/Ab35KoMVP93eP
	oiqKYbEdkHlFUDztjsLQOd+MWtSe4B9wF1+KUOv1qbhWsQJMOF4zYs1p06cOOwvpHoGeidXyISgid
	tLdbo4NY9lLTdS3Zz6juvMt+n612cyn31c1lTPAilDkLTmThzOSHakdNitSEEvgvHB7m1W4kJNevF
	DCZmX/bEgk7FFkwLKcffMGCMUk/MfV6NNpWJUaf83gqax8EFT9P8bF3ECxFKu4xlR0i2fMpEuRsIy
	iKVgu0/9GZXlLhtQmT3yKJAsUDkB0qCppiS4P02mkUGPftKVEFb4wxc9NcTnra/UHOJ/AWiWxM5Th
	NSbA4WkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j67IE-0006Zu-NA; Mon, 24 Feb 2020 06:32:38 +0000
Received: from comms.puri.sm ([159.203.221.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j67H9-0005Ze-8U
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 06:31:34 +0000
Received: from localhost (localhost [127.0.0.1])
 by comms.puri.sm (Postfix) with ESMTP id 5AEA9E031B;
 Sun, 23 Feb 2020 22:30:59 -0800 (PST)
Received: from comms.puri.sm ([127.0.0.1])
 by localhost (comms.puri.sm [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AnUqeA9WwopK; Sun, 23 Feb 2020 22:30:58 -0800 (PST)
From: Martin Kepplinger <martin.kepplinger@puri.sm>
To: robh@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de
Subject: [PATCH v3 3/8] arm64: dts: librem5-devkit: allow modem to wake the
 system from suspend
Date: Mon, 24 Feb 2020 07:29:12 +0100
Message-Id: <20200224062917.4895-4-martin.kepplinger@puri.sm>
In-Reply-To: <20200224062917.4895-1-martin.kepplinger@puri.sm>
References: <20200224062917.4895-1-martin.kepplinger@puri.sm>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_223131_427294_507E63BC 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [159.203.221.185 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, kernel@puri.sm, Anson.Huang@nxp.com,
 Martin Kepplinger <martin.kepplinger@puri.sm>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Angus Ainslie (Purism)" <angus@akkea.ca>

Connect the WoWWAN signal to a gpio key to wake up the system from suspend.

Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>
Signed-off-by: Martin Kepplinger <martin.kepplinger@puri.sm>
---
 .../arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
index ed4a10255bad..66d6b7c6dca7 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
@@ -55,6 +55,15 @@
 			wakeup-source;
 			linux,code = <KEY_HP>;
 		};
+
+		wwan-wake {
+			label = "WWAN_WAKE";
+			gpios = <&gpio3 8 GPIO_ACTIVE_LOW>;
+			interrupt-parent = <&gpio3>;
+			interrupts = <8 GPIO_ACTIVE_LOW>;
+			wakeup-source;
+			linux,code = <KEY_PHONE>;
+		};
 	};
 
 	leds {
@@ -576,6 +585,7 @@
 			MX8MQ_IOMUXC_SAI2_RXFS_GPIO4_IO21	0x16
 			MX8MQ_IOMUXC_SAI2_RXC_GPIO4_IO22	0x16
 			MX8MQ_IOMUXC_SAI5_RXC_GPIO3_IO20	0x180  /* HP_DET */
+			MX8MQ_IOMUXC_NAND_DATA02_GPIO3_IO8	0x80   /* nWoWWAN */
 		>;
 	};
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
