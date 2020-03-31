Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D84199FFF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 22:36:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BAd9zb74VM4eY7VG3t/3hHlg+b/LtcMMo61pR00leUM=; b=O0UhZ7pkbdhEXK
	myirO36wDGOAdjw1FK2M5E79YTCW7OJIiGWHu9iU1/yKPXdWBl2AJNvlsv3KWSjULceD2KBNEYiUY
	3jxVF6bm9zZwxUMMlLnwCiSAhq6Muw8lz54CRK+TP1ydzq365VvLVM7c3FV3WTI/SEqo+z8wFmR98
	M2HcP/77mcRKqmKCGhLhJIt6z/kTm5Qp/P7Z59BtRPID+tyc7z/qU8FnpWEIclykbvmMrVJjPdmbv
	d9aHeAfxeyYGb3Vae0/xAOFOtKVyxo7N9HcqwLyrPWeoaH+sspNPN9orscIB8hid0Yub8pRxOHP2H
	COUf7HLLbW0r1me7JBNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJNcI-0000gT-IT; Tue, 31 Mar 2020 20:36:10 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJNc7-0000fq-6t
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 20:36:00 +0000
Received: by mail-qk1-x742.google.com with SMTP id c145so24589912qke.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 13:35:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pWtGUXK2zzrPXg+mdinua6CvQBln6b8yVtBovLhZQBM=;
 b=UHKH84LZwqr0bTdSwOk8VIsZ6AYBEPPO9nInCQAu3ZSyBdpWRCbIrt21I54J3efqMH
 CRcRLuraIHpJJr+2PxYTCHgAKLK/nrHYseyTVaXpZ8W75RGfZ4wESFS1GHlVOnD4rr2x
 Kh/x0msbStYMQNWZDhu8YQSyALwBDH9TsChu8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pWtGUXK2zzrPXg+mdinua6CvQBln6b8yVtBovLhZQBM=;
 b=d9Zo1aweWcOr8RGiagc6FEJWN5Eqti970deCjZUKo2ZHL4+FYzuNSQELiLBQohZY74
 91YwtloSHMsvCJXqAH31/xL8yTkjooOs2RvHkHr/95CaIW5VGJFF2KKutmZT9x4buQhc
 x3HnWnoLAAI2Nq9ZRcLw0/axt5uEwCz7bI6iRZGP26PLeOpsbvbbTESaN6dku1A49dRo
 /oe3AI1ovZzx5iZEYkJECxXI78Yeiab49ucRmJ4yLlsnsi76Iwo+IXR67POkTpDO6B40
 hcujT8+df58EzzvO9q83zJ164m8/bJAKYgMjS1X6hrjT2qpZUxwstOawWcrH8Nr5PUMB
 L1dg==
X-Gm-Message-State: ANhLgQ3Z1gzzeqG4B+qxri/lxRXSayXU2zVrXT7E6ts5oj2ueGUaxf8v
 t6EmFiAI2sWYTvRIR/jVeU1Qig==
X-Google-Smtp-Source: ADFU+vtvRN6McKV5WGRyQGrJqQFKIHQwBHa5/AK61/BtydHPYOQvzA5pNrN2Yuj49YvxZmk9U7GEOQ==
X-Received: by 2002:a37:30f:: with SMTP id 15mr6246456qkd.44.1585686957509;
 Tue, 31 Mar 2020 13:35:57 -0700 (PDT)
Received: from bacon.ohporter.com ([2605:a000:1234:6170:a2c3:e83:a1a:a4b])
 by smtp.gmail.com with ESMTPSA id i20sm16566qkl.135.2020.03.31.13.35.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2020 13:35:56 -0700 (PDT)
From: Matt Porter <mporter@konsulko.com>
To: Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH] arm64: dts: imx8mm: fix dma peripheral type for SAI nodes
Date: Tue, 31 Mar 2020 16:35:51 -0400
Message-Id: <20200331203551.20914-1-mporter@konsulko.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_133559_268369_948BFAF1 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
index 1e5e11592f7b..ddc93fc4817a 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -240,7 +240,7 @@
 					 <&clk IMX8MM_CLK_SAI1_ROOT>,
 					 <&clk IMX8MM_CLK_DUMMY>, <&clk IMX8MM_CLK_DUMMY>;
 				clock-names = "bus", "mclk1", "mclk2", "mclk3";
-				dmas = <&sdma2 0 2 0>, <&sdma2 1 2 0>;
+				dmas = <&sdma2 0 24 0>, <&sdma2 1 24 0>;
 				dma-names = "rx", "tx";
 				status = "disabled";
 			};
@@ -253,7 +253,7 @@
 					<&clk IMX8MM_CLK_SAI2_ROOT>,
 					<&clk IMX8MM_CLK_DUMMY>, <&clk IMX8MM_CLK_DUMMY>;
 				clock-names = "bus", "mclk1", "mclk2", "mclk3";
-				dmas = <&sdma2 2 2 0>, <&sdma2 3 2 0>;
+				dmas = <&sdma2 2 24 0>, <&sdma2 3 24 0>;
 				dma-names = "rx", "tx";
 				status = "disabled";
 			};
@@ -267,7 +267,7 @@
 					 <&clk IMX8MM_CLK_SAI3_ROOT>,
 					 <&clk IMX8MM_CLK_DUMMY>, <&clk IMX8MM_CLK_DUMMY>;
 				clock-names = "bus", "mclk1", "mclk2", "mclk3";
-				dmas = <&sdma2 4 2 0>, <&sdma2 5 2 0>;
+				dmas = <&sdma2 4 24 0>, <&sdma2 5 24 0>;
 				dma-names = "rx", "tx";
 				status = "disabled";
 			};
@@ -280,7 +280,7 @@
 					 <&clk IMX8MM_CLK_SAI5_ROOT>,
 					 <&clk IMX8MM_CLK_DUMMY>, <&clk IMX8MM_CLK_DUMMY>;
 				clock-names = "bus", "mclk1", "mclk2", "mclk3";
-				dmas = <&sdma2 8 2 0>, <&sdma2 9 2 0>;
+				dmas = <&sdma2 8 24 0>, <&sdma2 9 24 0>;
 				dma-names = "rx", "tx";
 				status = "disabled";
 			};
@@ -293,7 +293,7 @@
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
