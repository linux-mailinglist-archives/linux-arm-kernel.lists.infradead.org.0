Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B6871622BE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 09:51:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=L6P2Os+gXW7TmXxVcl9tXjmKnH8otoLB/afnFHN1sN8=; b=lrbMNvp14j9+n4dG3wM7myRzLc
	IPvWnwqFqlgMpyRz7iJ4PxW91AVjGLB/Yn70bznzTmzZVdmz1d0c3FYxcIqKe4kF2MlVCGxq+kZBb
	o7UBJNxyEJ5kaAlmpqMQifYu/KaGv735yOHa5NVx9a1QWf5Xnx8OA4NAkOUllqw2OPQwRjQ1S3zG2
	0xR7p2iYt3GDUzW41FtXN/HhJU/4Z/Dqg06BROQBj3XOR5dPKgTx3idkhZ7DuSpzxYlVL8kZ/XvZK
	S0EN8KUB6Ynx7qZatoDNlo5XZ/wlImjTRpjuhyZ2VVhij1KbKRSmWfmPGusMBbGMXle390LDc2cqy
	/SAgB2YQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3ybU-0002nf-4x; Tue, 18 Feb 2020 08:51:40 +0000
Received: from comms.puri.sm ([159.203.221.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3yah-0002JO-4K
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 08:50:53 +0000
Received: from localhost (localhost [127.0.0.1])
 by comms.puri.sm (Postfix) with ESMTP id 89387E1132;
 Tue, 18 Feb 2020 00:50:40 -0800 (PST)
Received: from comms.puri.sm ([127.0.0.1])
 by localhost (comms.puri.sm [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EwxoEjvKN8rU; Tue, 18 Feb 2020 00:50:39 -0800 (PST)
From: Martin Kepplinger <martin.kepplinger@puri.sm>
To: robh@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de
Subject: [PATCH v2 1/9] arm64: dts: librem5-devkit: add sai2 and sai6 pinctrl
 definitions
Date: Tue, 18 Feb 2020 09:49:34 +0100
Message-Id: <20200218084942.4884-2-martin.kepplinger@puri.sm>
In-Reply-To: <20200218084942.4884-1-martin.kepplinger@puri.sm>
References: <20200218084942.4884-1-martin.kepplinger@puri.sm>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_005051_190474_7010B986 
X-CRM114-Status: UNSURE (   7.06  )
X-CRM114-Notice: Please train this message.
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

Add missing sai2 and sai6 audio interface pinctrl definitions for the
Librem 5 devkit.

Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>
Signed-off-by: Martin Kepplinger <martin.kepplinger@puri.sm>
---
 .../dts/freescale/imx8mq-librem5-devkit.dts   | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
index 007c14eec676..1e9fa80be647 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
@@ -567,6 +567,25 @@
 		>;
 	};
 
+	pinctrl_sai2: sai2grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_SAI2_TXFS_SAI2_TX_SYNC	0xd6
+			MX8MQ_IOMUXC_SAI2_TXC_SAI2_TX_BCLK	0xd6
+			MX8MQ_IOMUXC_SAI2_TXD0_SAI2_TX_DATA0	0xd6
+			MX8MQ_IOMUXC_SAI2_RXD0_SAI2_RX_DATA0	0xd6
+			MX8MQ_IOMUXC_SAI2_MCLK_SAI2_MCLK	0xd6
+		>;
+	};
+
+	pinctrl_sai6: sai6grp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_SAI1_RXD5_SAI6_RX_DATA0	0xd6
+			MX8MQ_IOMUXC_SAI1_RXD6_SAI6_RX_SYNC	0xd6
+			MX8MQ_IOMUXC_SAI1_TXD4_SAI6_RX_BCLK     0xd6
+			MX8MQ_IOMUXC_SAI1_TXD5_SAI6_TX_DATA0	0xd6
+		>;
+	};
+
 	pinctrl_typec: typecgrp {
 		fsl,pins = <
 			MX8MQ_IOMUXC_NAND_DATA06_GPIO3_IO12		0x16
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
