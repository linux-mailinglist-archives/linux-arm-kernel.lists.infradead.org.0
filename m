Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 555E13077D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 05:58:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hr7Dwgnd05kWbzEurvvcR209XouspurgAaCxL8USXRU=; b=faofaE2dCx5FON
	kROFJoHOglKkqqnpDQITL7jXhPUvlFUawqlPSTvbmS2FB98R1NpwdKRRg00LDqY4itVmpKyzaYFhq
	+uCFsqhUm8kVFLc4bz1eYqF8pcXQyYDXSXy/wfdakB4xOPibB/CWPsjGyqEo2SdYgVd3ZVdbfPf53
	eQiM9W6/ObxEu+ApADqXEmVqYOIT4JhKi9T+DSehB65dtVFfiGYhB+7zCQ11lLr/0o+aIsZwaLaQF
	L0Igondy/d6ICqkWwH8Ymy+a1cVUBkQ7FDx3bEmyrX50CSxGckWM2ybO78fqvftkyYj7Xg/lMqVZb
	eYkSPtPvctpNcYduyapg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWYgI-0007be-6K; Fri, 31 May 2019 03:58:14 +0000
Received: from mail-it1-x12a.google.com ([2607:f8b0:4864:20::12a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWYcT-0002tA-Rn
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 03:54:30 +0000
Received: by mail-it1-x12a.google.com with SMTP id t184so13549264itf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 20:54:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kagssQd3QuWugHezIJ6doapoPYga+HnLQRv+8NMyX9g=;
 b=aVaU2Uk/PSvFOR2ZTUEkpLv50UR082xEm5HsKlrw7QgZckzEHtXA7yO/Wn/WOBbJvJ
 Dc+RwCg9LLpK+kEt8JnxklzRSCovp7PitZw296lYP8Jd1UwgpjL6wVVrUTMb+9Bc9n+N
 t3Maw5oZUPapO1nFVOsnDqMKzA6i4fmK+kL1wanbzG8ogV628MK9QBHGEZKqK77sc8Wg
 gEHiQzbr0xcVtCqK6elbQQ1PkYtX5ZPymVlQtCfCogAJWOQT7ZhIg+V/xQd8Q9pgDbYZ
 zifSkJyuzPAChGKjgwm6JomDh11WZ8yM0/5ykVmjJzQLsMFc391cvHSKIpBnUCPJl/x6
 CBFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kagssQd3QuWugHezIJ6doapoPYga+HnLQRv+8NMyX9g=;
 b=leyyYmPWnPBI0gQ9gbrqxNKI7icKc98252psgiKY+Pk2ILVDRCRArDrBXrsMYLklX5
 DSyfv+If2rN6UG4v8tT9CZZdQqomv+qBwqOlBqz5D0B3UrKfeQk6lylZ6h+jzGh5Vz8+
 Ajio5qKWrdbsNDLAAIBxKajZutDVmq7PwLQOr2JxuhOn5uaQYyuKsPpjaZjnb06/HFRH
 IdD59SkB1kLW21qQ7a1Hp5NKd8C52VHdI+TFV53W4mnCNO5xF9ciUNXYb9QhukD8GeMh
 qhINF1Z2aLIRuGfCwxskCTT3uau8nVxidZN77AV+sz681C6oNQuizW72fugwh3ICymjy
 SlCw==
X-Gm-Message-State: APjAAAVMKOdL1LW+OkxNoSER/siu4Ckbhg/PLOaLstDyMYAgQBpn0MRT
 z0wDf4wIc/7Usj6Orol9au5Jag==
X-Google-Smtp-Source: APXvYqwU/ZRoDGo6axXL+D8tg1NufQkmrF7bSAtLkJC7p296STpfjSogYdgLZwKpdUbt2XAzDoRcpA==
X-Received: by 2002:a24:5095:: with SMTP id m143mr5427071itb.68.1559274856806; 
 Thu, 30 May 2019 20:54:16 -0700 (PDT)
Received: from localhost.localdomain (c-71-195-29-92.hsd1.mn.comcast.net.
 [71.195.29.92])
 by smtp.gmail.com with ESMTPSA id q15sm1626947ioi.15.2019.05.30.20.54.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 May 2019 20:54:16 -0700 (PDT)
From: Alex Elder <elder@linaro.org>
To: davem@davemloft.net, arnd@arndb.de, bjorn.andersson@linaro.org,
 ilias.apalodimas@linaro.org
Subject: [PATCH v2 16/17] arm64: dts: sdm845: add IPA information
Date: Thu, 30 May 2019 22:53:47 -0500
Message-Id: <20190531035348.7194-17-elder@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190531035348.7194-1-elder@linaro.org>
References: <20190531035348.7194-1-elder@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_205418_018274_5382B24A 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:12a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, syadagir@codeaurora.org, ejcaruso@google.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, evgreen@chromium.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 subashab@codeaurora.org, linux-soc@vger.kernel.org, abhishek.esse@gmail.com,
 cpratapa@codeaurora.org, benchan@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add IPA-related nodes and definitions to "sdm845.dtsi".

Signed-off-by: Alex Elder <elder@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 51 ++++++++++++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index fcb93300ca62..985479925af8 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -20,6 +20,7 @@
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
 #include <dt-bindings/clock/qcom,gcc-sdm845.h>
 #include <dt-bindings/thermal/thermal.h>
+#include <dt-bindings/interconnect/qcom,sdm845.h>
 
 / {
 	interrupt-parent = <&intc>;
@@ -517,6 +518,17 @@
 			interrupt-controller;
 			#interrupt-cells = <2>;
 		};
+
+		ipa_smp2p_out: ipa-ap-to-modem {
+			qcom,entry-name = "ipa";
+			#qcom,smem-state-cells = <1>;
+		};
+
+		ipa_smp2p_in: ipa-modem-to-ap {
+			qcom,entry-name = "ipa";
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
 	};
 
 	smp2p-slpi {
@@ -1268,6 +1280,45 @@
 			};
 		};
 
+		ipa@1e40000 {
+			compatible = "qcom,sdm845-ipa";
+
+			modem-init;
+
+			reg = <0 0x1e40000 0 0x7000>,
+			      <0 0x1e47000 0 0x2000>,
+			      <0 0x1e04000 0 0x2c000>;
+			reg-names = "ipa-reg",
+				    "ipa-shared",
+				    "gsi";
+
+			interrupts-extended =
+					<&intc 0 311 IRQ_TYPE_EDGE_RISING>,
+					<&intc 0 432 IRQ_TYPE_LEVEL_HIGH>,
+					<&ipa_smp2p_in 0 IRQ_TYPE_EDGE_RISING>,
+					<&ipa_smp2p_in 1 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "ipa",
+					  "gsi",
+					  "ipa-clock-query",
+					  "ipa-setup-ready";
+
+			clocks = <&rpmhcc RPMH_IPA_CLK>;
+			clock-names = "core";
+
+			interconnects =
+				<&rsc_hlos MASTER_IPA &rsc_hlos SLAVE_EBI1>,
+				<&rsc_hlos MASTER_IPA &rsc_hlos SLAVE_IMEM>,
+				<&rsc_hlos MASTER_APPSS_PROC &rsc_hlos SLAVE_IPA_CFG>;
+			interconnect-names = "memory",
+					     "imem",
+					     "config";
+
+			qcom,smem-states = <&ipa_smp2p_out 0>,
+					   <&ipa_smp2p_out 1>;
+			qcom,smem-state-names = "ipa-clock-enabled-valid",
+						"ipa-clock-enabled";
+		};
+
 		tcsr_mutex_regs: syscon@1f40000 {
 			compatible = "syscon";
 			reg = <0 0x01f40000 0 0x40000>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
