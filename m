Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7450713A031
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 05:03:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=a8YD2T9AJBx7ZRSkSCHBSxP6Qmx0+x5wnisuLG+2OgU=; b=TCtfhKeTYT3BCTfoKs5FsFGQsv
	HMCMBgGKE2x6GhotHLOHIOCB7OS9P4lCy8dJygCmketpWdePkDaTMPT3bOUfvWPhAtJuS5YH99cWy
	5G4BRjalTLphK8gMFJznjMvxKquinUbzkF8aSg6UVDVn6UnsTfrdDIS6Rzl6sfncxBikAgJQbRdi1
	21gt832QRiJCzHmVWxU+nZsUba680tsFmWZa123cVPL+6G68x6WJ5J7QQNnYpySBHK069Z/jpacmJ
	Wcks31Ut2tYSZvHSocF7F90fFZvmko33rlbIIJMPaJeQtOM9iKwwUm6I3uCnwgIrmxfFCgQSSrl6T
	iOSNEZWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irDQf-0006xn-Q0; Tue, 14 Jan 2020 04:03:45 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irDQN-0006re-J6
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 04:03:29 +0000
Received: by mail-pg1-x542.google.com with SMTP id l24so5755756pgk.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 20:03:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Y6Dgg0LHIAz3laO+y1ntUkl0I7eVRTHEz+QlpqCcJzM=;
 b=tCG2akEDJ6JUnnxIWJd+Lzlnyj9ETzxMZgpQ9mzR8vWLTaEAX4fuHh7CTD6H2NBSh+
 cBEibUj2j4jys/G7n/hOQsy11WTmbzrUDmdBmtUDfDw5BhmaoIO7bOHpuLs4QoHuYnEe
 iZqpoXnUgpxWPlkxWsfayXa609ww2WG3RbFurr+VG7z/paoen6kcg+/lChYX0vxQG8OC
 1F1k9Hn+R2BbRwLXkYoJ91VPDGIYck3xHcmlJsYcubOKcjFIMHsp7AVQOcP81zrEHot4
 f1QFtGIzfNXFBn5Fr93uUCiKija0CmAzvpku3dj74JMJ2RpGYapCdHw3nLyicJoCb9ZN
 1uVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Y6Dgg0LHIAz3laO+y1ntUkl0I7eVRTHEz+QlpqCcJzM=;
 b=Hk1RhvE36raD+ak+VzLO5OPXlPkirLwkeTvsr6n7dhr6rsvY2yMLpmnw+0m16MkqSx
 CzVr4QQT3YGYc3ovdo4TJO49qjPUu1g12ILsXS+Lww0wzsaa0wD2pkZIaUmPap8ZqxVt
 aNKQaG2JhQM5iZNFZuAVHx2McQi8ebS9X4Wu3QWOj5xbgpZ/Mt5cl21bWYrmQ8+YDPxM
 rqnAMgS8cMvPcVkV7o2jHaOc9IsQ++bpGuyDVUkUyX73S35d5XL3N2kpgBl2rLDiIZAf
 nVI9rRMzUtbAu9iRDi0iYvX98SkL6GyR9V0bvXZwhf9xwzsGsesFMSs6Ai/K0MDAKA3l
 Shkw==
X-Gm-Message-State: APjAAAXLnnC0qmCMvLcdX70XrDY/p7hISVZqYZouSJK4jINN+/SmxSLu
 ccEurLbVI1lxEQ2BdBi4YMiFdwXckw==
X-Google-Smtp-Source: APXvYqykeM9sr4icXjk9kJPgtTtyVjWGDRPWbkd+53qH0vkjz8uVHOyq4tBEujnEXMCsWI36wJXJwA==
X-Received: by 2002:a63:b64a:: with SMTP id v10mr25260436pgt.145.1578974606948; 
 Mon, 13 Jan 2020 20:03:26 -0800 (PST)
Received: from localhost.localdomain
 ([2409:4072:618a:cee9:38fe:8c63:d2a2:7397])
 by smtp.gmail.com with ESMTPSA id h3sm11222025pjs.0.2020.01.13.20.03.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 20:03:26 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: soc@kernel.org
Subject: [PATCH 1/2] arm64: dts: bitmain: Add clock controller support for
 BM1880 SoC
Date: Tue, 14 Jan 2020 09:33:10 +0530
Message-Id: <20200114040311.6599-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200114040311.6599-1-manivannan.sadhasivam@linaro.org>
References: <20200114040311.6599-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_200327_625803_C23481A3 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: sboyd@kernel.org, linux-arm-kernel@lists.infradead.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add clock controller support for Bitmain BM1880 SoC.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/bitmain/bm1880.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/bitmain/bm1880.dtsi b/arch/arm64/boot/dts/bitmain/bm1880.dtsi
index d65453f99a99..8471662413da 100644
--- a/arch/arm64/boot/dts/bitmain/bm1880.dtsi
+++ b/arch/arm64/boot/dts/bitmain/bm1880.dtsi
@@ -4,6 +4,7 @@
  * Author: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
  */
 
+#include <dt-bindings/clock/bm1880-clock.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/reset/bitmain,bm1880-reset.h>
 
@@ -66,6 +67,12 @@
 			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>;
 	};
 
+	osc: osc {
+		compatible = "fixed-clock";
+		clock-frequency = <25000000>;
+		#clock-cells = <0>;
+	};
+
 	soc {
 		compatible = "simple-bus";
 		#address-cells = <2>;
@@ -94,6 +101,15 @@
 				reg = <0x400 0x120>;
 			};
 
+			clk: clock-controller@e8 {
+				compatible = "bitmain,bm1880-clk";
+				reg = <0xe8 0x0c>, <0x800 0xb0>;
+				reg-names = "pll", "sys";
+				clocks = <&osc>;
+				clock-names = "osc";
+				#clock-cells = <1>;
+			};
+
 			rst: reset-controller@c00 {
 				compatible = "bitmain,bm1880-reset";
 				reg = <0xc00 0x8>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
