Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AEC65D049
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 15:12:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=RmH2ej9O6ezJDyNmhQqib2v8KPg6/CrUIkth6PzoyIU=; b=B50
	/iRpx3k90FfFyEUWiro+Y3aBGRkapB+t+yEd0f/MaeLXnWtqlaNGEo+5DwTf3guuEht1oM0LpzRl+
	wdpp5hUdwrQk5gma2DNxc326Ic6Zi1lB0/A2uRJj2RiVUMf46pEU3kknCgL3WAJWGO+9VK9992An3
	Mj6qJgfU7Sbq/6Aoina5m9vnuGHoGZC46acdXFZ6UVk8xwZTsNJoA/MHQHlaL7UkhfW2QnUxXGP1l
	9mG62i1TrUwdk57s6RndJYRTJFjp/J9x+DJSno6SveGYEM+GUGn2sipIdob4s4RP3AfHC4t8/AHO4
	kjlnIorod31ZyP+CvPfgC31jq62sZEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiIa5-0008PB-PC; Tue, 02 Jul 2019 13:12:21 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiIZs-0008O9-Ph
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 13:12:10 +0000
Received: by mail-wm1-x344.google.com with SMTP id s15so970293wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 06:12:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=xY8o03GKg7yE0EDv+JzNdYmGsRVySZFoyWELDtBrxsQ=;
 b=L+3dGzZqpQ2QrZyjS0R0EMbctTzpWn30VI9Gk0ULoS0BK1YNpPvtNid+iqGcxesqyS
 l+OmcE+IikAlMXWGoXhzozhJ4mfxUAVRr6SGz6J5LwK+4rV48vIJDv4UvhaF/fU4y91N
 vV2juYYeDO2hecTi/Ibtpsf7tl43LAHeIKYjczOSbVny40/yBznTMon/2cpej///nlK7
 0kgvQLsfAVG2onOknvNSu1Z+JklA9HHTWyjtWqAciQxCAaThKC2E0k/zZGKh90s5Tc+E
 /LA2sPJJOg4e9XdEd2aXYOrBOgsmxJRIhNF8ZtvugT3UnYvQ2QWWnCuqGnEAkId4+iyK
 nauA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=xY8o03GKg7yE0EDv+JzNdYmGsRVySZFoyWELDtBrxsQ=;
 b=hywE1sImUd2KD00ucUq6pIjLE6Pro/NObT34zA8Nxk5gnvUe6dhvEnsvirKvrzQIOL
 WzK7GPj2IioNZxyoUdItADXGAdRegA8p0UV8NFRuvoa6w7cz9q4CSp77tXLfWn94xdnZ
 cxVuDn/u4OZpWPgOv8aInCxI8104ZJwZalxVcoKDddh/QoaUBUJpNBWqlgUX4JeaBwGr
 vWcJbCd9EPhefWADFJkj+0+yGM4Eb3ZXU4nfp3iOqVuDI/EqOpEcqoC/W++fAf+BKjOz
 IKVrTHBh/lwx+n5KK+xyJx78AcXXmkzRzALpV1szQ0Iuzjk6nZYwZ6xo24YPegrH9y9B
 gdeQ==
X-Gm-Message-State: APjAAAWDY7At62NG3KUlIbEvaTOBZIRzyTv0l0VGJ36j1yX2ki7DndwR
 SG6NHACQSrRxeHaXc/gNZ00=
X-Google-Smtp-Source: APXvYqwN2JTq7fEYVbdkNym5m6nNOaDhPP5LMVErx0F9CCrxHaY3Laf/tTPkWgVzxni8MfZZNBFocw==
X-Received: by 2002:a7b:cf27:: with SMTP id m7mr3529000wmg.7.1562073123716;
 Tue, 02 Jul 2019 06:12:03 -0700 (PDT)
Received: from localhost.localdomain ([212.146.100.6])
 by smtp.gmail.com with ESMTPSA id h8sm2526416wmf.12.2019.07.02.06.12.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jul 2019 06:12:03 -0700 (PDT)
From: Andra Danciu <andradanciu1997@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH v2] arm64: dts: imx8mq: Add sai3 and sai6 nodes
Date: Tue,  2 Jul 2019 16:11:55 +0300
Message-Id: <20190702131155.18170-1-andradanciu1997@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_061208_833763_CC976C91 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andradanciu1997[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (andradanciu1997[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, abel.vesa@nxp.com,
 Anson.Huang@nxp.com, ccaione@baylibre.com, andrew.smirnov@gmail.com,
 s.hauer@pengutronix.de, angus@akkea.ca, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, agx@sigxcpu.org, linux-arm-kernel@lists.infradead.org,
 l.stach@pengutronix.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SAI3 and SAI6 nodes are used to connect to an external codec.
They have 1 Tx and 1 Rx dataline.

Cc: Daniel Baluta <daniel.baluta@nxp.com>
Signed-off-by: Andra Danciu <andradanciu1997@gmail.com>
---
Changes since v1:
	- Added sai3 node because we need it to enable audio on pico-pi-8m
	- Added commit description

 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index d09b808eff87..2d489c5cdc26 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -278,6 +278,20 @@
 			#size-cells = <1>;
 			ranges = <0x30000000 0x30000000 0x400000>;
 
+			sai6: sai@30030000 {
+				compatible = "fsl,imx8mq-sai",
+					"fsl,imx6sx-sai";
+				reg = <0x30030000 0x10000>;
+				interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MQ_CLK_SAI6_IPG>,
+					<&clk IMX8MQ_CLK_SAI6_ROOT>,
+					<&clk IMX8MQ_CLK_DUMMY>, <&clk IMX8MQ_CLK_DUMMY>;
+				clock-names = "bus", "mclk1", "mclk2", "mclk3";
+				dmas = <&sdma2 4 24 0>, <&sdma2 5 24 0>;
+				dma-names = "rx", "tx";
+				status = "disabled";
+			};
+
 			gpio1: gpio@30200000 {
 				compatible = "fsl,imx8mq-gpio", "fsl,imx35-gpio";
 				reg = <0x30200000 0x10000>;
@@ -728,6 +742,22 @@
 				status = "disabled";
 			};
 
+			sai3: sai@308c0000 {
+				compatible = "fsl,imx8mq-sai",
+					     "fsl,imx6sx-sai";
+				reg = <0x308c0000 0x10000>;
+				interrupts = <GIC_SPI 50 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MQ_CLK_SAI3_IPG>,
+					<&clk IMX8MQ_CLK_DUMMY>,
+					<&clk IMX8MQ_CLK_SAI3_ROOT>,
+					<&clk IMX8MQ_CLK_DUMMY>, <&clk IMX8MQ_CLK_DUMMY>;
+				clock-names = "bus", "mclk1", "mclk2", "mclk3";
+				dmas = <&sdma1 12 24 0>, <&sdma1 13 24 0>;
+				dma-names = "rx", "tx";
+				status = "disabled";
+			};
+
+
 			i2c1: i2c@30a20000 {
 				compatible = "fsl,imx8mq-i2c", "fsl,imx21-i2c";
 				reg = <0x30a20000 0x10000>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
