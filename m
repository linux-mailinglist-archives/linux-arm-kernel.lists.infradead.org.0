Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67B0A5D08D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 15:24:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=yKcfaPWALvipAa9TRwamCRQ+s/cC2SIgACp4Cqa3LTQ=; b=JJU
	QJWCPlnYCAXVifL51fWYV/cJ7TF/PedjhwCxol+h29PsXvkfSwxeLY9h6XV1iMgccoYX0wdLgrj8r
	O5u6IIxPB8r5qUGZ9w7uH5NxB1G4z9ZCVi1Pk3PEZ8cQLs3bXcGvpIxq9vt6/CtrWrCz22aLhsEiT
	PsWSx+oJglytcLTddnl1DsIDwkJiX5fZOJ1ypXESvf+5ct9Ay0QDNZggO4BkTL12iciEoNWz92wii
	LRfkDWfMHX3a2y/UywZSU3EKtpUEbzv8dtgcZVehHGs8bAwt96b8LfNHBG00FkXFsRuGlhxrba2YS
	aYAJjkp/yl1v8Yt8Hp8X2LgUY6j3eeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiIlt-0005AS-N4; Tue, 02 Jul 2019 13:24:33 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiIlP-00056H-Q1
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 13:24:05 +0000
Received: by mail-wm1-x341.google.com with SMTP id a15so841566wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 06:24:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=cC1gx2tGeUkm0jddtz1+JKDjr/jThd+nsoub/6VA7i8=;
 b=sHUiT+FQAH9m6cP8gSfh1KbMHY16yW9IZ4GimxwQMpNch9RqCRBXufuyNXe3uqH+Ph
 rRjgsu3OruUslUAxE5kIZfo/sT5T1nbIjyzxlgLU5BnMNDT40UErxB/zVk69Kr8XZ8of
 cjo12l0SM/ULDgSRyGCc7ec3Pkw+6k7hKC/rHDoOjoIr6BQJLjqTbHdJP3gHAm1NZw2H
 mLCJcY7nYFiUCA3ClguI6xyXRJB8/CFfCdBMz5WSvvJwjQKrXXt1irdj7ii+0h/v2RSa
 AfwJI2k4WR5r8Tkbg8uSRZ3c+uxI9FPvaFolIxG28Sjnv37w09bx/Uj1aiCqrNHfhBMn
 QAjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=cC1gx2tGeUkm0jddtz1+JKDjr/jThd+nsoub/6VA7i8=;
 b=pJyUS6jXldXhlM52cRFYjf2g4tgknEOYA69n5Wz06o9n70fqqN9tVm+ZLxBVokA+gY
 BLLHvJJBdozdT0QXmQsj3gF+9l1b7tLlvpUdwvRKOoXgPOvakjGGJJbKdEQRXOMnAdic
 sV3PMHHWqvPRGNOQTiOZ4ronMJJ5DUX8fryC0edxS/4v/beXrNgn7xnFjMBrolAIlAvr
 BBaeoTBVv4hVjT3Ss8EpCaH9bjJg7iNhvWTJmFDVezAfuFxHZ7J2co2BLIwhO+igiCKw
 R0A6fJOfoCPV+ujmGQICkJMAOjoikYxBhXmOVsFEZKnsGZShZqpwFS80AAiwKB6Wsem3
 CXvg==
X-Gm-Message-State: APjAAAXliOcp9+iJ5rluVNGc/fPR337z59pxPQM63KTAj+vG4lESvWzi
 9cEMCkKZ8S4ZbJVuypSYbEA=
X-Google-Smtp-Source: APXvYqwmc1vBbsQXhJM0UrDmXVFAZ7NBp8WbbjJE8tJhJBuzNxeFxyG3ILAlShVphxpcBPLS5w1y/Q==
X-Received: by 2002:a1c:f018:: with SMTP id a24mr3391735wmb.66.1562073842154; 
 Tue, 02 Jul 2019 06:24:02 -0700 (PDT)
Received: from localhost.localdomain ([212.146.100.6])
 by smtp.gmail.com with ESMTPSA id g5sm14545741wrp.29.2019.07.02.06.23.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jul 2019 06:24:01 -0700 (PDT)
From: Andra Danciu <andradanciu1997@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH v3] arm64: dts: imx8mq: Add sai3 and sai6 nodes
Date: Tue,  2 Jul 2019 16:23:53 +0300
Message-Id: <20190702132353.18632-1-andradanciu1997@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_062403_936953_1CB0310C 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Changes since v2:
	- removed multiple new lines

Changes since v1:
	- Added sai3 node because we need it to enable audio on pico-pi-8m
	- Added commit description

 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index d09b808eff87..736cf81b695e 100644
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
@@ -728,6 +742,21 @@
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
 			i2c1: i2c@30a20000 {
 				compatible = "fsl,imx8mq-i2c", "fsl,imx21-i2c";
 				reg = <0x30a20000 0x10000>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
