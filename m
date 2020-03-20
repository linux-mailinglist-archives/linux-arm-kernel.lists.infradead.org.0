Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF65A18D77C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 19:41:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nTLmFVMfbG+cLBst+K+TxMpQRb6PRN225RBfuWjZpf0=; b=J8wc8tehS9pZBi
	u7vlZrj4WC4EIng+oeCtD8ZHzju6fhk7OHmMogxfHSQ04iyRSODDQGvvqgG9NMVb+vfrxJ6PXOgHP
	+3wQK/ZR7dlE0Z+a5fWHpMLrfNDjXBVPkeHj/t5TT2wk520LGiXtZgf4jvIuTG40QY2geKmZ8Encw
	IBuYejjaRbnl6lbIKgkPIUQL3VUZmxc6bNq7WNa97OtBrL4HWNa4F2w7XOFDuIOTmfg0ch971+M/z
	gsdbioL6SLBkj61wXdPzixrgi9Rrn9d1aFYN41mas3e0b9ioRS1DYcQ9HN15DXhr6U8RBN6LmorwB
	9YF1Q1MZJCLxqGy/cqhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFMaG-0001B4-T7; Fri, 20 Mar 2020 18:41:28 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFMZs-00010k-Jb
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 18:41:07 +0000
Received: by mail-lf1-x131.google.com with SMTP id v4so1677089lfo.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Mar 2020 11:41:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HNOepU1ErX9HVjO2hwWXh/XJeIEFeY9yaba+EWdpfok=;
 b=g3XyB46on+zDYAqdN5ObwA1mVTCj9MvhAho0Ucfn368IauuhJ5xOzAgc2NTOyO4auw
 cFzpNcMbvGw8fkgCwKTXU0fP4cF1Wqo9oAt+KUb6OkvPEdhSiiBzEcaFKOuinltla0f7
 qIhZ+JH93B/im3y/XhHHAHBoKUQtT798D34hdwgG9Gu1BeTzQx6xZY5H9zG9CLXyIIul
 +H+oG3LSv0N14ffZV5df0NAt1nShXjb6UVwuidYf9A/k3tJptomYoj3eCHqN379V9D3B
 M9Eps1f2GX5vv4VKGW/+wZlk9pRDMQGvYgIdiT1kSpBXUYrfEqRc6aM9K3iqw0Nu9DgP
 MXsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HNOepU1ErX9HVjO2hwWXh/XJeIEFeY9yaba+EWdpfok=;
 b=NOXhjJJk8mdehSdiz3gTw5yj99PE1vuLNRiNk16wMJkSnFOd4Mn2XWg6e5xxEp3SbR
 CYefq2O/hd2SHFuf6n6cbbPDJ7Sy5bGV1sQIA3Li2GPMuHia0ppmHSIuGMZjdx1Bynr7
 T9bLwIyWww+1DaeN/jriVlm+ax3EvirEl/j73k3ZCM3bB/GKGeetp8t4a25sQURtfqNd
 +vy0OHuoQkazzrvhk2rCn0TBpb6IT01zA94W4BsxAvUTK159ySl02EEkySzh+fVLAnU2
 aSdbQBdoiAHidoGUrekxLq1QzgrrO6a/J2VBGAlpJ9NSuJd1UbrC1J5MYLvDnLHaEkM3
 MDkw==
X-Gm-Message-State: ANhLgQ0SVh77zt8qMzNPorgxKkst/rV23gJK2zBRyGjEg3Xd0VpcUE+W
 zwh05z63HOhGbush7nAzyH5cPYX3Q6xe2Q==
X-Google-Smtp-Source: ADFU+vvykXxY3FBGsN1kj6by6QOetl2CHpGk/tL/Z7sC20AOI+YcWGHGIXPbA0MJZoUhi3jIOrmwCw==
X-Received: by 2002:ac2:4c33:: with SMTP id u19mr6098601lfq.195.1584729660474; 
 Fri, 20 Mar 2020 11:41:00 -0700 (PDT)
Received: from localhost.bredbandsbolaget
 (c-5ac9225c.014-348-6c756e10.bbcust.telenor.se. [92.34.201.90])
 by smtp.gmail.com with ESMTPSA id g3sm3873563ljl.44.2020.03.20.11.40.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Mar 2020 11:40:59 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] ARM: dts: gemini: Rename IDE nodes
Date: Fri, 20 Mar 2020 19:40:53 +0100
Message-Id: <20200320184054.5408-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_114105_206383_4C01520A 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:131 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

By renaming the ATA drive nodes to "ide@" we activate the
semantic checks to the DT schema for the controller and use
the correct notation for PATA drives.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/gemini-dlink-dir-685.dts | 2 +-
 arch/arm/boot/dts/gemini-dlink-dns-313.dts | 2 +-
 arch/arm/boot/dts/gemini-nas4220b.dts      | 4 ++--
 arch/arm/boot/dts/gemini-sl93512r.dts      | 4 ++--
 arch/arm/boot/dts/gemini-sq201.dts         | 2 +-
 arch/arm/boot/dts/gemini.dtsi              | 8 ++++++--
 6 files changed, 13 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boot/dts/gemini-dlink-dir-685.dts b/arch/arm/boot/dts/gemini-dlink-dir-685.dts
index e2030ba16512..055b03440bdb 100644
--- a/arch/arm/boot/dts/gemini-dlink-dir-685.dts
+++ b/arch/arm/boot/dts/gemini-dlink-dir-685.dts
@@ -443,7 +443,7 @@
 			};
 		};
 
-		ata@63000000 {
+		ide@63000000 {
 			status = "okay";
 		};
 
diff --git a/arch/arm/boot/dts/gemini-dlink-dns-313.dts b/arch/arm/boot/dts/gemini-dlink-dns-313.dts
index 360642a02a48..c6f3d90e3e90 100644
--- a/arch/arm/boot/dts/gemini-dlink-dns-313.dts
+++ b/arch/arm/boot/dts/gemini-dlink-dns-313.dts
@@ -297,7 +297,7 @@
 			};
 		};
 
-		ata@63000000 {
+		ide@63000000 {
 			status = "okay";
 		};
 	};
diff --git a/arch/arm/boot/dts/gemini-nas4220b.dts b/arch/arm/boot/dts/gemini-nas4220b.dts
index 521714f38eed..43c45f7e1e0a 100644
--- a/arch/arm/boot/dts/gemini-nas4220b.dts
+++ b/arch/arm/boot/dts/gemini-nas4220b.dts
@@ -170,11 +170,11 @@
 			};
 		};
 
-		ata@63000000 {
+		ide@63000000 {
 			status = "okay";
 		};
 
-		ata@63400000 {
+		ide@63400000 {
 			status = "okay";
 		};
 
diff --git a/arch/arm/boot/dts/gemini-sl93512r.dts b/arch/arm/boot/dts/gemini-sl93512r.dts
index a98af0351906..a0916d3c1059 100644
--- a/arch/arm/boot/dts/gemini-sl93512r.dts
+++ b/arch/arm/boot/dts/gemini-sl93512r.dts
@@ -293,11 +293,11 @@
 			};
 		};
 
-		ata@63000000 {
+		ide@63000000 {
 			status = "okay";
 		};
 
-		ata@63400000 {
+		ide@63400000 {
 			status = "okay";
 		};
 
diff --git a/arch/arm/boot/dts/gemini-sq201.dts b/arch/arm/boot/dts/gemini-sq201.dts
index 239dfacaae4d..0c6e6d35bfaa 100644
--- a/arch/arm/boot/dts/gemini-sq201.dts
+++ b/arch/arm/boot/dts/gemini-sq201.dts
@@ -289,7 +289,7 @@
 			};
 		};
 
-		ata@63000000 {
+		ide@63000000 {
 			status = "okay";
 		};
 
diff --git a/arch/arm/boot/dts/gemini.dtsi b/arch/arm/boot/dts/gemini.dtsi
index 8cf67b11751f..065ed10a79fa 100644
--- a/arch/arm/boot/dts/gemini.dtsi
+++ b/arch/arm/boot/dts/gemini.dtsi
@@ -356,7 +356,7 @@
 			};
 		};
 
-		ata@63000000 {
+		ide@63000000 {
 			compatible = "cortina,gemini-pata", "faraday,ftide010";
 			reg = <0x63000000 0x1000>;
 			interrupts = <4 IRQ_TYPE_EDGE_RISING>;
@@ -365,9 +365,11 @@
 			clock-names = "PCLK";
 			sata = <&sata>;
 			status = "disabled";
+			#address-cells = <1>;
+			#size-cells = <0>;
 		};
 
-		ata@63400000 {
+		ide@63400000 {
 			compatible = "cortina,gemini-pata", "faraday,ftide010";
 			reg = <0x63400000 0x1000>;
 			interrupts = <5 IRQ_TYPE_EDGE_RISING>;
@@ -376,6 +378,8 @@
 			clock-names = "PCLK";
 			sata = <&sata>;
 			status = "disabled";
+			#address-cells = <1>;
+			#size-cells = <0>;
 		};
 
 		dma-controller@67000000 {
-- 
2.21.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
