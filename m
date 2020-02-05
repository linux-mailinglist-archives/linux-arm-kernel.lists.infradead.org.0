Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47DA615330A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 15:32:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hoEeFCSB+kNgNiM5UXFXqplnPTY8HNDuDn1ebfpxGo0=; b=eSEwPbXLcGMR4b7zVydJTGvdQh
	10TiEVGPprNlK2DLAmKNsA7hXrheI+rzcfw42lahqRF12eVirbbd1ub+AKuqvR2dDToQ2SQryvlRv
	oJ797cAX/uz29C63ZYOTkz1Mz1QnIj9J8QxttPvXI7AShk+gBr2mVAVyo+qqW5bPwVvKufQBnN+LJ
	SlKq23HEOlfqr3IL9MvELjLi+/48Mhkw5XiJ1BSFWlf48aWGEWvYBNdwmyAas9F4LYYwyLy5vQxpJ
	tWl6/Z8n6sbQDefSgCJHko7ysYwLQ/BxFFr3AhNKbLjnBsD77WB5QIbYjxU2xnMeQwHOpg/E1cLOm
	TpknWmFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izLj4-0000aZ-Nx; Wed, 05 Feb 2020 14:32:22 +0000
Received: from comms.puri.sm ([159.203.221.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izLi6-0008E7-IG
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 14:31:24 +0000
Received: from localhost (localhost [127.0.0.1])
 by comms.puri.sm (Postfix) with ESMTP id BAF15E0E8A;
 Wed,  5 Feb 2020 06:31:21 -0800 (PST)
Received: from comms.puri.sm ([127.0.0.1])
 by localhost (comms.puri.sm [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T2ynE6JqBJDL; Wed,  5 Feb 2020 06:31:21 -0800 (PST)
From: Martin Kepplinger <martin.kepplinger@puri.sm>
To: robh@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com
Subject: [PATCH v1 10/12] arm64: dts: librem5-devkit: configure VSELECT
Date: Wed,  5 Feb 2020 15:30:01 +0100
Message-Id: <20200205143003.28408-11-martin.kepplinger@puri.sm>
In-Reply-To: <20200205143003.28408-1-martin.kepplinger@puri.sm>
References: <20200205143003.28408-1-martin.kepplinger@puri.sm>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_063122_906984_E2D2697F 
X-CRM114-Status: UNSURE (   6.11  )
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
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Angus Ainslie (Purism)" <angus@akkea.ca>

use vselect to set the io voltage to 1.8V

Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>
---
 arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
index fbc7062c4633..8f920c554ebd 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
@@ -789,6 +789,7 @@
 			MX8MQ_IOMUXC_SD2_DATA1_USDHC2_DATA1	0xc3
 			MX8MQ_IOMUXC_SD2_DATA2_USDHC2_DATA2	0xc3
 			MX8MQ_IOMUXC_SD2_DATA3_USDHC2_DATA3	0xc3
+			MX8MQ_IOMUXC_GPIO1_IO04_GPIO1_IO4	0xc1
 		>;
 	};
 
@@ -800,6 +801,7 @@
 			MX8MQ_IOMUXC_SD2_DATA1_USDHC2_DATA1	0xcd
 			MX8MQ_IOMUXC_SD2_DATA2_USDHC2_DATA2	0xcd
 			MX8MQ_IOMUXC_SD2_DATA3_USDHC2_DATA3	0xcd
+			MX8MQ_IOMUXC_GPIO1_IO04_GPIO1_IO4	0xc1
 		>;
 	};
 
@@ -811,6 +813,7 @@
 			MX8MQ_IOMUXC_SD2_DATA1_USDHC2_DATA1	0xcf
 			MX8MQ_IOMUXC_SD2_DATA2_USDHC2_DATA2	0xcf
 			MX8MQ_IOMUXC_SD2_DATA3_USDHC2_DATA3	0xcf
+			MX8MQ_IOMUXC_GPIO1_IO04_GPIO1_IO4	0xc1
 		>;
 	};
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
