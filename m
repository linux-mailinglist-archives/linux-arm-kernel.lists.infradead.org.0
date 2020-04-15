Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 626831AAE7F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 18:50:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=L8emUm9KmfXbL1NeyECeiYaVxTfa+0165eP5uimzMcE=; b=UYkAxkVwjc8Reh
	3SWku/ExKZA0VokQTGrZ0l7as0D6LCoXLKjDdzq3Xzyuvt5DubYqUVtUCZvuiB+48NtT/5QQtpeAY
	+91/iidjSusRTd22zckYnbj7OCWXYBVIC+9NiUz4JG02yDD2GMcbnnZ3iJtI1BYT9akIeIujEZjqk
	2Q/2oZIJztf9S3Pf09AIpUsUXgujfC2nM6t3dy8LzrJ50y0y4OO1pcAr9vNPCVeJ8QXe0rzvy78Tn
	YEXOq6bBVdrrrlI3tWKNJPJiFQjPAImNAOOe9kmoX/f/6wVTMMeu+X3f1XWKpPH4FrC5x4uXe3r+p
	KH/BKDzJm0IWqRizdEQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOlEa-0004w6-D6; Wed, 15 Apr 2020 16:49:56 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOlET-0004vG-7j
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 16:49:50 +0000
Received: by mail-qv1-xf41.google.com with SMTP id s18so407716qvn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 09:49:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WTBWT1P0a2Si94UCDXGUOPYWctXvmO5z5+Oc2JOMSj0=;
 b=KT9hs807G9QWIAQ5rkVVKJui4x51HJZ1uYjjceSV1conl1tettn+jj9dxaKNM4Bi8b
 7kbuD9iMwJDge4Z8TDOlWCHJ2OeiZZ931kQ1EjFQOwX6od9JG7X3temnaD6+QS6cdrQP
 S/TuIxZsd9S0LrfUhNmy5QUjRkcNyIsKDe0Vk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WTBWT1P0a2Si94UCDXGUOPYWctXvmO5z5+Oc2JOMSj0=;
 b=QPDMaZE7zZ8gmjqMNxMm+Rzsa2VwbFSR5iX2TqjnvC5c2XuKLljl456K/v+mjPbFAA
 pW7uDiUDpLImc0vZlwIe96mPZJMvSNQOoQ9AqrdGsghaxP3GQ9wIq/xnptXV/KAmevaq
 DtXvTNUvUYDijxZ/BsKkIskA01j6hX+YI0bqthESOxgHLRkscdxL1tJn4KKYNeFW+pin
 DP1zigRj5bC7ClYL0aImSwsxd8ol+c/V0nRQm54ShhKFRJqyVzlSV8vJqHaxLGIDmK79
 +MkEh/2l9ETzlcRhQBhjXl+pTAChtUxydNi3gMw9YQnU9SNblC971659AHxV8SHMc7nD
 LRAg==
X-Gm-Message-State: AGi0PuZg7NteV4RVsb7UNtQQ06dkmmuTExIueTD4zm2LfuZRbnBjxQsZ
 /w/6p+YlgOX+lwxjfw2VM7aJTA==
X-Google-Smtp-Source: APiQypJNfazUZkOBvj3kluwIVm2ER5FSDI24URISuCCNDbMM62tJdouf9L/qrxGJsi728QXBby+X4A==
X-Received: by 2002:a0c:e941:: with SMTP id n1mr6054445qvo.144.1586969387153; 
 Wed, 15 Apr 2020 09:49:47 -0700 (PDT)
Received: from bacon.ohporter.com ([2605:a000:1234:47c6:a553:c33f:1562:b0b1])
 by smtp.gmail.com with ESMTPSA id
 q6sm13623146qte.72.2020.04.15.09.49.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 09:49:46 -0700 (PDT)
From: Matt Porter <mporter@konsulko.com>
To: Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH][RESEND] arm64: dts: imx8mm: fix dma peripheral type for SAI
 nodes
Date: Wed, 15 Apr 2020 12:49:40 -0400
Message-Id: <20200415164940.1949-1-mporter@konsulko.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_094949_278012_47D9E24C 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Anson Huang <Anson.Huang@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Leonard Crestez <leonard.crestez@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 Linux ARM Kernel List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The peripheral type specified in the dma phandle for each SAI node
is incorrect. Change it to specify the SAI peripheral.

Signed-off-by: Matt Porter <mporter@konsulko.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index cc7152ecedd9..a8c678db651b 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -277,7 +277,7 @@
 					 <&clk IMX8MM_CLK_SAI1_ROOT>,
 					 <&clk IMX8MM_CLK_DUMMY>, <&clk IMX8MM_CLK_DUMMY>;
 				clock-names = "bus", "mclk1", "mclk2", "mclk3";
-				dmas = <&sdma2 0 2 0>, <&sdma2 1 2 0>;
+				dmas = <&sdma2 0 24 0>, <&sdma2 1 24 0>;
 				dma-names = "rx", "tx";
 				status = "disabled";
 			};
@@ -290,7 +290,7 @@
 					<&clk IMX8MM_CLK_SAI2_ROOT>,
 					<&clk IMX8MM_CLK_DUMMY>, <&clk IMX8MM_CLK_DUMMY>;
 				clock-names = "bus", "mclk1", "mclk2", "mclk3";
-				dmas = <&sdma2 2 2 0>, <&sdma2 3 2 0>;
+				dmas = <&sdma2 2 24 0>, <&sdma2 3 24 0>;
 				dma-names = "rx", "tx";
 				status = "disabled";
 			};
@@ -304,7 +304,7 @@
 					 <&clk IMX8MM_CLK_SAI3_ROOT>,
 					 <&clk IMX8MM_CLK_DUMMY>, <&clk IMX8MM_CLK_DUMMY>;
 				clock-names = "bus", "mclk1", "mclk2", "mclk3";
-				dmas = <&sdma2 4 2 0>, <&sdma2 5 2 0>;
+				dmas = <&sdma2 4 24 0>, <&sdma2 5 24 0>;
 				dma-names = "rx", "tx";
 				status = "disabled";
 			};
@@ -317,7 +317,7 @@
 					 <&clk IMX8MM_CLK_SAI5_ROOT>,
 					 <&clk IMX8MM_CLK_DUMMY>, <&clk IMX8MM_CLK_DUMMY>;
 				clock-names = "bus", "mclk1", "mclk2", "mclk3";
-				dmas = <&sdma2 8 2 0>, <&sdma2 9 2 0>;
+				dmas = <&sdma2 8 24 0>, <&sdma2 9 24 0>;
 				dma-names = "rx", "tx";
 				status = "disabled";
 			};
@@ -330,7 +330,7 @@
 					 <&clk IMX8MM_CLK_SAI6_ROOT>,
 					 <&clk IMX8MM_CLK_DUMMY>, <&clk IMX8MM_CLK_DUMMY>;
 				clock-names = "bus", "mclk1", "mclk2", "mclk3";
-				dmas = <&sdma2 10 2 0>, <&sdma2 11 2 0>;
+				dmas = <&sdma2 10 24 0>, <&sdma2 11 24 0>;
 				dma-names = "rx", "tx";
 				status = "disabled";
 			};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
