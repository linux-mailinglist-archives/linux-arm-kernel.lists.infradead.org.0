Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E30C823121
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 12:14:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zOHGLUdjf/hHYnEw1llVl9gfeZCnNayp0QXGKz5hqoI=; b=GLGspCEV97joxpFhJUDiK/WQJQ
	rhyigKi5DDXO6V8PnG1w1pxNHVOHGve2QpKzq303whdEMobfNL4HqP2e9DZK4vsaTT19Qk4hzLYTR
	7Cg4B4U7hexOS/eNeYfOyfz2/pihy6d6L2MmmBwKmGxEc6EZfUEdXEC/JKLsAKzLgL7ZzLv7+Wa/C
	uIPISfjcFzUquw6metRmPwCGmxKkNo0fNdlgd7SeDpBFVx85KifB8u1HGti67lH7TDboKH09ZWKic
	Td3UYA23RZYk7bNUCVjNg0I37xMs7L27x4p/Ww2WXcH3qvXGX9pqLUHTQelkLa3oLWxhni1caFYXf
	kLEwSvCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSfJO-0005ys-B8; Mon, 20 May 2019 10:14:30 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSfHy-0004W6-Q3
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 10:13:07 +0000
Received: by mail-pl1-x642.google.com with SMTP id g9so6499521plm.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 03:13:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=ap6Go4OzNxJ532m09L3XvGYt1ETDxtVIslcDJHxqhh8=;
 b=dg9voSlkL9Tcl87q88SNV55S8GA0JmQ0duHA+37dyzDY6OcpNFosrqe5mS3YzRmQOK
 KPzF/tT9V0EzWBhy2zsLMNsoshKCx2xZyxd4iwz9E9Z+2nn92gIHu5ZHF9a2rvSKpInj
 ca0v4q6NwLwD/s3f1bL/W4RAqzlQCYCkHWlRExJXrGi1L4hv02Om0lUPuSKo3CmzH1mz
 d34F0kjxLbephXWC09QvmFZSnEu6Ekd6KSVve5DHXWh8KKISDCiIzD1Vjtqw0xlrah4s
 Fmbp7jB3XlkVoe7T9o5bHTcpAiwbDpZHyq8FlWAt8RUnDgGdDJmKqnmM8+kdwtqJT8jL
 8bLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=ap6Go4OzNxJ532m09L3XvGYt1ETDxtVIslcDJHxqhh8=;
 b=kODi7iuBw+r5akwrxDbJBRtYg22MhpBnppPOb8Z/7nPiQe4rq3Qkd2tODLSaJad0vd
 cWLmrYFPwSkPJKcNVuRfSLO85uz5iXI8Y7ZBe7uuOsQLaQxl7SKUQjxeheuJf/N0lRIk
 kUxYTBBC6H1+i8bTkEp/Tb4npGjSfm3jXSicarVYisAneB6IWO/PySMlbv+rgAnYWUl4
 loaHgF5iUtRcM3eiNGMHsE8DREjVlepqKdKp+KXfiVNk9orlHFPo9w50mLRZykxIlxiq
 WN5tp+GmASVVtHzrk6uyzpL2gXRiXd6xgGJ1xnmVssuCrHCJUMknh8OjO+CMwaAU8VV7
 24aA==
X-Gm-Message-State: APjAAAVobVxHxGOIqDbA2XmPnLX8g6WWyhapBwnQV0XQC+Tky+yA4fn4
 vlXsDZEYgxqBBvFto05zvLAz0Q==
X-Google-Smtp-Source: APXvYqz/VZ5IYWao7ZtNYoD6jisYi4sIXfq0npMXqR3qxjBzeqk+s2PVbN80bOiH+xksI9cdfVZ8gQ==
X-Received: by 2002:a17:902:bb06:: with SMTP id
 l6mr16803820pls.78.1558347182324; 
 Mon, 20 May 2019 03:13:02 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.102])
 by smtp.gmail.com with ESMTPSA id b3sm30098127pfr.146.2019.05.20.03.12.58
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 03:13:01 -0700 (PDT)
From: Baolin Wang <baolin.wang@linaro.org>
To: adrian.hunter@intel.com, ulf.hansson@linaro.org, zhang.lyra@gmail.com,
 orsonzhai@gmail.com, robh+dt@kernel.org, mark.rutland@arm.com,
 arnd@arndb.de, olof@lixom.net
Subject: [PATCH 9/9] arm64: dts: sprd: Add Spreadtrum SD host controller
 support
Date: Mon, 20 May 2019 18:12:02 +0800
Message-Id: <7fc6cd63966bda900b07ac9b2156e313a6f2ac17.1558346019.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1558346019.git.baolin.wang@linaro.org>
References: <cover.1558346019.git.baolin.wang@linaro.org>
In-Reply-To: <cover.1558346019.git.baolin.wang@linaro.org>
References: <cover.1558346019.git.baolin.wang@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_031303_082241_C8C3D8AC 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, vincent.guittot@linaro.org,
 baolin.wang@linaro.org, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add one Spreadtrum SD host controller to support eMMC card for Spreadtrum
SC9860 platform.

Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
---
 arch/arm64/boot/dts/sprd/whale2.dtsi |   35 ++++++++++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/arch/arm64/boot/dts/sprd/whale2.dtsi b/arch/arm64/boot/dts/sprd/whale2.dtsi
index b5c5dce..86ec2b0 100644
--- a/arch/arm64/boot/dts/sprd/whale2.dtsi
+++ b/arch/arm64/boot/dts/sprd/whale2.dtsi
@@ -168,6 +168,34 @@
 				vdd-supply = <&vddusb33>;
 				sprd,vdd-voltage = <3300000>;
 			};
+
+			sdio3: sdio@50430000 {
+				compatible  = "sprd,sdhci-r11";
+				reg = <0 0x50430000 0 0x1000>;
+				interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
+
+				clock-names = "sdio", "enable", "2x_enable";
+				clocks = <&aon_prediv CLK_EMMC_2X>,
+				       <&apahb_gate CLK_EMMC_EB>,
+				       <&aon_gate CLK_EMMC_2X_EN>;
+				assigned-clocks = <&aon_prediv CLK_EMMC_2X>;
+				assigned-clock-parents = <&clk_l0_409m6>;
+
+				sprd,phy-delay-mmc-hs400 = <0x44 0x7f 0x2e 0x2e>;
+				sprd,phy-delay-mmc-hs200 = <0x0 0x8c 0x8c 0x8c>;
+				sprd,phy-delay-mmc-ddr52 = <0x3f 0x75 0x14 0x14>;
+				sprd,phy-delay-mmc-hs400es = <0x3f 0x3f 0x2e 0x2e>;
+				vmmc-supply = <&vddemmccore>;
+				bus-width = <8>;
+				non-removable;
+				no-sdio;
+				no-sd;
+				cap-mmc-hw-reset;
+				mmc-hs400-enhanced-strobe;
+				mmc-hs400-1_8v;
+				mmc-hs200-1_8v;
+				mmc-ddr-1_8v;
+			};
 		};
 
 		aon {
@@ -310,4 +338,11 @@
 		clock-frequency = <100000000>;
 		clock-output-names = "ext-rco-100m";
 	};
+
+	clk_l0_409m6: clk_l0_409m6 {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <409600000>;
+		clock-output-names = "ext-409m6";
+	};
 };
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
