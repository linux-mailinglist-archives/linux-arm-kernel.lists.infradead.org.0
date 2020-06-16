Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 313201FB302
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 15:57:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ntW6PaQ4yJfqdmDlW6VNKxDXBEILQ3Z97sRjuNt64G4=; b=oQ4Yg/IYPGmW4O
	8NWtJYpj+PBimoPDqnzBwshLyEHFeUl2nrEy6Kd74K/Pxfe3ZUkNFQaimAwlXGYZtdoFoVELmQk+a
	YKbUO4aj71m5KyoQPYwzX7gDACued1PcX61XMy0i6dZh8oGiFCFr6MKr/LwHc5YlMCelFypJjV++4
	i1m6UfQnDPBNq1JDs1qBENLnkRIdCbhmMa2BKXhKEkz7QtWwdUJ9J0IgWEpb9Vfp3RCHnZP3PrPsp
	bWAirHKTQV7e4bbvwjhVXK/dRv/vXgmlqUwSevjoGeF8hHd9DLNPAsaeINbiNSXIYhlmGrU6uSkgC
	YagF5s7vIaeag2COr9cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlC5V-0005zj-W3; Tue, 16 Jun 2020 13:57:18 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC1U-0001IM-9e
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:53:09 +0000
Received: by mail-wr1-x443.google.com with SMTP id l11so20882243wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:53:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kyl1JYScKTQ9NP2SAvtMlSq/xfYWMpq9fQvWFYMRQFM=;
 b=kFMFSo3m95KKvAi+EpgRTs2HoQ5aIOn+Ee7ywpxk8Ybt1X90Z91m50f7jlIL4FovYW
 y4DLrqjxIg9tlpITlyNIMUHX5vV4jGyDCabW6kjhQ9EztXcMwQoBh7oLQPuo3qCetvOf
 66/fIX+BkYiUiywA6lCKqVZh10yPXBRONRwuAZqxjvM99O0/gzVL38j5h4T2G8xUv7Tm
 hg2lp5tZ2zERMO0W/SLbpXVdQhI1iYzqZkwdtUwP8+qLKkJds+jVaBIsHsT8n+2xkQCK
 //s062vWoHOSw44PV/ezxA1f+eMzCYpQ4mBULAkz4Zw0jHxTM/1O+JdCLvCecOn/W+SQ
 y4ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kyl1JYScKTQ9NP2SAvtMlSq/xfYWMpq9fQvWFYMRQFM=;
 b=VMPea71abl3eBbUofR2CrweGC8iWm0qIc5iALuzb50UTxa6ugi35Mtnwvw5gTnkFrV
 Q1gNo0ljChy6cUPGpJxRh0zs2bcetXdVd1SbdahBJ1rbYyHC1ggUzN5JZjxD6n8N5DDk
 vzvUswhPDCzwSWMoeOau7OIvkwUL+YSTIob6TNTYFtl3cu6wgydk374eP2YYhmtCt6O8
 mUnA5OUBdu7uhbBooDIzrb/ag97l3JIsKF53aHS39sA1BaNfPL1HvAKDVc/9D8xXJ6Bb
 TSUgxJHx7sp2ba9Gj8/QIAn4YZgRUWioq8er+UK+IuD+UwVoA7YO76SEk4y7xNVUnaqr
 uyGw==
X-Gm-Message-State: AOAM533C2iwl20m3qm2dyeW6MWnIrN+Wy6AsYnD2VDmYfmbo8fjtirlU
 2IBDdDdGLcE0/xTi22KcXpQ=
X-Google-Smtp-Source: ABdhPJzbWc3iSf4FDeWU8SptC5l0R0pYNgxv+AM9SFxGZhy/uHjp01VcoIIAzeNSS19+l4bwUXCT6g==
X-Received: by 2002:a5d:66c3:: with SMTP id k3mr3157851wrw.401.1592315586643; 
 Tue, 16 Jun 2020 06:53:06 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id 138sm4353784wma.23.2020.06.16.06.53.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:53:05 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 08/73] ARM: tegra: Add missing host1x properties
Date: Tue, 16 Jun 2020 15:51:33 +0200
Message-Id: <20200616135238.3001888-9-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065308_386538_8478AFA2 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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

The host1x device tree bindings require the clock- and interrupt-names
properties to be present, so add them where missing.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm/boot/dts/tegra114.dtsi | 2 ++
 arch/arm/boot/dts/tegra124.dtsi | 2 ++
 arch/arm/boot/dts/tegra20.dtsi  | 2 ++
 arch/arm/boot/dts/tegra30.dtsi  | 2 ++
 4 files changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/tegra114.dtsi b/arch/arm/boot/dts/tegra114.dtsi
index be048aa553ee..a0ac9ea9ec9d 100644
--- a/arch/arm/boot/dts/tegra114.dtsi
+++ b/arch/arm/boot/dts/tegra114.dtsi
@@ -22,7 +22,9 @@ host1x@50000000 {
 		reg = <0x50000000 0x00028000>;
 		interrupts = <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>, /* syncpt */
 			     <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>; /* general */
+		interrupt-names = "syncpt", "host1x";
 		clocks = <&tegra_car TEGRA114_CLK_HOST1X>;
+		clock-names = "host1x";
 		resets = <&tegra_car 28>;
 		reset-names = "host1x";
 		iommus = <&mc TEGRA_SWGROUP_HC>;
diff --git a/arch/arm/boot/dts/tegra124.dtsi b/arch/arm/boot/dts/tegra124.dtsi
index fc124343658e..1afed8496c95 100644
--- a/arch/arm/boot/dts/tegra124.dtsi
+++ b/arch/arm/boot/dts/tegra124.dtsi
@@ -89,7 +89,9 @@ host1x@50000000 {
 		reg = <0x0 0x50000000 0x0 0x00034000>;
 		interrupts = <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>, /* syncpt */
 			     <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>; /* general */
+		interrupt-names = "syncpt", "host1x";
 		clocks = <&tegra_car TEGRA124_CLK_HOST1X>;
+		clock-names = "host1x";
 		resets = <&tegra_car 28>;
 		reset-names = "host1x";
 		iommus = <&mc TEGRA_SWGROUP_HC>;
diff --git a/arch/arm/boot/dts/tegra20.dtsi b/arch/arm/boot/dts/tegra20.dtsi
index 7319df2fcd3e..f0a172c61b26 100644
--- a/arch/arm/boot/dts/tegra20.dtsi
+++ b/arch/arm/boot/dts/tegra20.dtsi
@@ -35,7 +35,9 @@ host1x@50000000 {
 		reg = <0x50000000 0x00024000>;
 		interrupts = <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>, /* syncpt */
 			     <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>; /* general */
+		interrupt-names = "syncpt", "host1x";
 		clocks = <&tegra_car TEGRA20_CLK_HOST1X>;
+		clock-names = "host1x";
 		resets = <&tegra_car 28>;
 		reset-names = "host1x";
 
diff --git a/arch/arm/boot/dts/tegra30.dtsi b/arch/arm/boot/dts/tegra30.dtsi
index 0b58863e570e..27000f0ba35b 100644
--- a/arch/arm/boot/dts/tegra30.dtsi
+++ b/arch/arm/boot/dts/tegra30.dtsi
@@ -115,7 +115,9 @@ host1x@50000000 {
 		reg = <0x50000000 0x00024000>;
 		interrupts = <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>, /* syncpt */
 			     <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>; /* general */
+		interrupt-names = "syncpt", "host1x";
 		clocks = <&tegra_car TEGRA30_CLK_HOST1X>;
+		clock-names = "host1x";
 		resets = <&tegra_car 28>;
 		reset-names = "host1x";
 		iommus = <&mc TEGRA_SWGROUP_HC>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
