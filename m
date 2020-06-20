Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E99202506
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 18:02:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dyhrEzT04fSky0mMSn7G3kHYjCFd61b78P5gam5jjZY=; b=YNLRv2lyLHqCIU
	Gxyt8Q8ASExn0xu9ZWqSTQbYrn2u8Pe+IlPaGBBRPUB5fiyy3t5zZPdBDCb6NXyf+L5+xGe2Ao0LF
	DyX+AdqMy8g34LypdFp9q1uqA17s9vgrnyv8OeA+57PCCj5Q1O42lNAGoOtzRdTEhlokMs1G0Wqsp
	6Z7BOdXIHH83agjDD7pjufDJ9fVk1ODDs6oBxXGWBBbuKwXi74NjPHkdJBLM8yz1FNeoEUN+6Jd0u
	IMY0JYTXPV3MMzwhPTRNOtWT81hKYexu+Pnohhf+mkxeieqjmhdvpY2z2uDWafZSJsgdAdnGo4kw3
	V7Vi13i4k1RP4Z21LqwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmfwN-000205-Oh; Sat, 20 Jun 2020 16:01:59 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmfwC-0001y6-2C; Sat, 20 Jun 2020 16:01:49 +0000
Received: by mail-ed1-x544.google.com with SMTP id s28so10116619edw.11;
 Sat, 20 Jun 2020 09:01:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FaacUivmwkyk1cQqE2hDul+alcpzdjWqLMV4Yng5czA=;
 b=F0v1zkAYWFxD7fO/Z3yiOsm9bgbIfvJscZvGRcsG2T99d0vBJ7bN6KBQfWddETeLbq
 gN+YjHd4Lkrt4onWB7gva+uxV8jBAqhhlft0hyMCiO5qhq2avIU2RUjwV1jiYtuCdu6o
 +L3DM8c2PSwzDOFJWZfn1pwGS5U65F4S/lJ4zaM2Ab9OqGgaS8m40RmQGUgA/KZK1qhw
 AhmHNdG1nqO6ji4fEkfbXtgT/9Axl2tvxJs2fmtlJeoZviqJF6MHkFE7uOgqAi80rj85
 aBJSEF2C35YGwvEA3nER/f/5xzDxEr7slR2UbA0Wnzayv0ShJF0390icPmd2bsJcfKgR
 zJYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FaacUivmwkyk1cQqE2hDul+alcpzdjWqLMV4Yng5czA=;
 b=Q8fnkjm58WL5adCvpx353BGlPRyCMcoW5aXbURkeeCZ0wL5KwA+m8dm3YZDrCe3mk+
 78+P+sPZ/NGlzVdrz/l1NUg6NIOMy2bCG9A0kOJ8mlJy16yZZsjVIeOwiudlJ+LDUPIS
 RjB0xDVxQhPzO+Hrq5FPZZc12HP+oBaAIHLF5PNHlRJAampgr9ptTmFtxzICtwHxGh6o
 XTbv/kAdl524EaStDiY5Upd9RwzKf/kbsS37tqXOLq5kdJQOf4fhxoEqolniYb/9CLZz
 ysDr392CfYN2pn+A9DFCpchMb7CNUFMuWPxnWPmMZvPYb1q+y8XQ++53ZaB89dHotdvW
 +BZQ==
X-Gm-Message-State: AOAM533fVudhVcWYy/Tbm/16VXTxiVAvQo3QA/tTHqihMTtpL6U8eOiz
 +GDmirnHZmm4WVqXStS0Eq4=
X-Google-Smtp-Source: ABdhPJy7Nb/QqHmM2mHXqpKgXM/nYSBMHOREpkTWhmthhkI7ncEyLySQ7ZApmLmYTEIH+wupc0n/qA==
X-Received: by 2002:aa7:d693:: with SMTP id d19mr4278829edr.297.1592668903789; 
 Sat, 20 Jun 2020 09:01:43 -0700 (PDT)
Received: from localhost.localdomain
 (p200300f1371df700428d5cfffeb99db8.dip0.t-ipconnect.de.
 [2003:f1:371d:f700:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id sd15sm238163ejb.66.2020.06.20.09.01.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 20 Jun 2020 09:01:43 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: khilman@baylibre.com,
	linux-amlogic@lists.infradead.org
Subject: [PATCH] arm64: dts: amlogic: Add the Ethernet "timing-adjustment"
 clock
Date: Sat, 20 Jun 2020 18:01:36 +0200
Message-Id: <20200620160136.21584-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200620_090148_106865_EFD5397A 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the "timing-adjusment" clock now that we now that this is connected
to the PRG_ETHERNET registers. It is used internally to generate the
RGMII RX delay no the MAC side (if needed).

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm64/boot/dts/amlogic/meson-axg.dtsi        | 6 ++++--
 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 6 ++++--
 arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi       | 5 +++--
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi        | 5 +++--
 4 files changed, 14 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
index 8e6281c685fa..b9efc8469265 100644
--- a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
@@ -181,8 +181,10 @@ ethmac: ethernet@ff3f0000 {
 			interrupt-names = "macirq";
 			clocks = <&clkc CLKID_ETH>,
 				 <&clkc CLKID_FCLK_DIV2>,
-				 <&clkc CLKID_MPLL2>;
-			clock-names = "stmmaceth", "clkin0", "clkin1";
+				 <&clkc CLKID_MPLL2>,
+				 <&clkc CLKID_FCLK_DIV2>;
+			clock-names = "stmmaceth", "clkin0", "clkin1",
+				      "timing-adjustment";
 			rx-fifo-depth = <4096>;
 			tx-fifo-depth = <2048>;
 			status = "disabled";
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index 593a006f4b7b..41805f2ed8fc 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -185,8 +185,10 @@ ethmac: ethernet@ff3f0000 {
 			interrupt-names = "macirq";
 			clocks = <&clkc CLKID_ETH>,
 				 <&clkc CLKID_FCLK_DIV2>,
-				 <&clkc CLKID_MPLL2>;
-			clock-names = "stmmaceth", "clkin0", "clkin1";
+				 <&clkc CLKID_MPLL2>,
+				 <&clkc CLKID_FCLK_DIV2>;
+			clock-names = "stmmaceth", "clkin0", "clkin1",
+				      "timing-adjustment";
 			rx-fifo-depth = <4096>;
 			tx-fifo-depth = <2048>;
 			status = "disabled";
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
index 234490d3ee68..03c25b9facff 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
@@ -333,8 +333,9 @@ &efuse {
 &ethmac {
 	clocks = <&clkc CLKID_ETH>,
 		 <&clkc CLKID_FCLK_DIV2>,
-		 <&clkc CLKID_MPLL2>;
-	clock-names = "stmmaceth", "clkin0", "clkin1";
+		 <&clkc CLKID_MPLL2>,
+		 <&clkc CLKID_FCLK_DIV2>;
+	clock-names = "stmmaceth", "clkin0", "clkin1", "timing-adjustment";
 };
 
 &gpio_intc {
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
index fc59c8534c0f..60484bbc7272 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
@@ -131,8 +131,9 @@ &efuse {
 &ethmac {
 	clocks = <&clkc CLKID_ETH>,
 		 <&clkc CLKID_FCLK_DIV2>,
-		 <&clkc CLKID_MPLL2>;
-	clock-names = "stmmaceth", "clkin0", "clkin1";
+		 <&clkc CLKID_MPLL2>,
+		 <&clkc CLKID_FCLK_DIV2>;
+	clock-names = "stmmaceth", "clkin0", "clkin1", "timing-adjustment";
 
 	mdio0: mdio {
 		#address-cells = <1>;
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
