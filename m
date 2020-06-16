Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4323E1FB38E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:08:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IzjbIaI0soa9md6ufeDcN9t3HikklbECZary1jBbSgo=; b=R9gec5vR8pGapg
	rdWkwqUH4uUN0nh0vIj4zUS3kqoKC8JszbH4NzGwfa1hnYRe1s9RDNNydQk3gD+LS/W9OJgu3JSzJ
	cSkCxDxcc+l4AswGwNkqGTQIlP0poIqLIodwe6/gj08i3vzvxgR6sV4R9YwkXUFcOhoodTvBUTLrE
	tl2U11MaNWuxFRzkeXvBPo0eRPMwTxRMQbi+QrBPB6ZCSxGdRBE6Y6HqF3jM2CKCwXNnd2UvsbHsn
	q+ET+xNhQePqK2y9jlCOqkR4s0NGU0JUX39zS1eVEn+YX1dLEyoo/4syDNSWwEE9AHOWctG6/VysV
	llBtmrF1K1HayXzvM4sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCGH-0002Eu-PH; Tue, 16 Jun 2020 14:08:25 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC2l-0002AT-O7
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:54:30 +0000
Received: by mail-wm1-x341.google.com with SMTP id u26so2326171wmn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:54:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XC8gu6MUt6zWRMhzY2/0XhcHGyfRevUXTL89flX6beE=;
 b=O9LtF6HdHx1EDTtLBe+5kdtSnBwuAd4ddqtu5IPeAU/COAmLwFdwkIgc47uKEu76wC
 zTEugU/ATrCS47nE8m4SbsohpWD5Jc9vf39a3qVw9/kDRP83YjvH8GKy0Lba8voaz+gS
 yXTqXbuwAqbq6mJAlMnZn03FtFi+EjZsdffQ3TfLSuaMFhyHAMeXWAWqpCwdBb7oCgyN
 BoVHKjVaxQ2dfaVNcSXDM/TBkUPZogLgclUMpMM33m/ywBqvw7dtrLQ4+C87x3N01+H+
 y6K/wIU+wn01Rqk8uwVinX2Nf5ijJ4f5aUG1AZRAFSIFfUVBCzZnJ07JRKC74yIIIjy9
 DGvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XC8gu6MUt6zWRMhzY2/0XhcHGyfRevUXTL89flX6beE=;
 b=RKfwHzFZlr7PAxy4tH1pEhlc/mwxxNWivEhoq6vx2q7V/X17/NN2k3bzFn6/o7sbp/
 uSslWaKN99nCFmv12dN8qjghWPgAY3gVpXyegW6sfokqEkZ8NFDt6/xvP+a7W6WsjqLk
 XNrXu5yJkY5peWUujcJP0vPqjZzE2z+b/BKaoU5mkH8tUGxjWk2mvk+LsaHHM/wcfoGu
 VRUxmLDD6zeZQz/Mj9mduuCCIStcdOp8tzgPnnZAcHNDWua5EFTOdwv6Ug5ytWHjzDlb
 uZmVTlIEFPX+yOslGI6Pdnipz9mAbDfzP0nV0NS1caSIfgmKlMZBgntrNDfCmjDZq9uD
 S6Jg==
X-Gm-Message-State: AOAM533ARh/xELymxFCEzUbqvd/AV0xXrTGmCq16TvoFcW18+joagev8
 2v7k4eCoydt7kgzhpysnQEY=
X-Google-Smtp-Source: ABdhPJyWPYonq75pR1HSqUUoE6DrwrW1nCA0FtK6irvG2rc4uDX9sIA2lSQT44WMNMaBVDNyU4XcFA==
X-Received: by 2002:a1c:f00a:: with SMTP id a10mr3468960wmb.61.1592315666556; 
 Tue, 16 Jun 2020 06:54:26 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id f13sm3971363wmb.33.2020.06.16.06.54.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:54:25 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 40/73] arm64: tegra: Remove extra compatible for Tegra210 SDHCI
Date: Tue, 16 Jun 2020 15:52:05 +0200
Message-Id: <20200616135238.3001888-41-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065427_898672_1525AFE2 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

The SDHCI on Tegra210 is in fact not compatible with the one found on
Tegra124. Remove the extra compatible string to reflect that.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra210.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra210.dtsi b/arch/arm64/boot/dts/nvidia/tegra210.dtsi
index 08655081f72d..cbf0d30a2f8b 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra210.dtsi
@@ -1177,7 +1177,7 @@ usb3-3 {
 	};
 
 	sdhci@700b0000 {
-		compatible = "nvidia,tegra210-sdhci", "nvidia,tegra124-sdhci";
+		compatible = "nvidia,tegra210-sdhci";
 		reg = <0x0 0x700b0000 0x0 0x200>;
 		interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&tegra_car TEGRA210_CLK_SDMMC1>;
@@ -1205,7 +1205,7 @@ sdhci@700b0000 {
 	};
 
 	sdhci@700b0200 {
-		compatible = "nvidia,tegra210-sdhci", "nvidia,tegra124-sdhci";
+		compatible = "nvidia,tegra210-sdhci";
 		reg = <0x0 0x700b0200 0x0 0x200>;
 		interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&tegra_car TEGRA210_CLK_SDMMC2>;
@@ -1222,7 +1222,7 @@ sdhci@700b0200 {
 	};
 
 	sdhci@700b0400 {
-		compatible = "nvidia,tegra210-sdhci", "nvidia,tegra124-sdhci";
+		compatible = "nvidia,tegra210-sdhci";
 		reg = <0x0 0x700b0400 0x0 0x200>;
 		interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&tegra_car TEGRA210_CLK_SDMMC3>;
@@ -1245,7 +1245,7 @@ sdhci@700b0400 {
 	};
 
 	sdhci@700b0600 {
-		compatible = "nvidia,tegra210-sdhci", "nvidia,tegra124-sdhci";
+		compatible = "nvidia,tegra210-sdhci";
 		reg = <0x0 0x700b0600 0x0 0x200>;
 		interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&tegra_car TEGRA210_CLK_SDMMC4>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
