Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 519DE1FB3C1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:11:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ps5c0F9S7wCWwRkq98okmXPoYs686IPEJ4YWkHqlJtM=; b=O0SbpOD4gj4flL
	aQ10vsnxdHdQtH/qqDzr3g83ZnSywlEZFUqavEiAStmogKQScXjQ6Fy9LIV0zJnv2idzlMlFJjN3X
	vSw9lmcDHsXQx6srkf0hDvTaXQR3h24wQCZeDiaymaioZkTNt6VxbPEQoq9D0R1wLYjvD+SF1TYHX
	YInEwXg8JgTfBh5LqJVMHFIvg92rXVN59gX+1NRkTVgJmI8xJu1uNlkeFEcLTjcGgI3kAPNSHT3qV
	msmS7u4agdvP/CLLgQIlljxbUSRu7DZ9fXCqrh2jwdeFgrrZmoMe6jpnRMKTiPlMOkBFdSgKhr0os
	Dstp+f60F+miGJ0ASNfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCIp-0006ir-MW; Tue, 16 Jun 2020 14:11:03 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC30-0002Kv-2u
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:54:44 +0000
Received: by mail-wr1-x442.google.com with SMTP id r7so20898475wro.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:54:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ScVLo3OLCSIkKXjokM31Qg9uqsCe/mNFJUR5ZIozpdg=;
 b=ix86ceYkDxBmJt95mC8J68J2pveSEwzb7Dm7fwmXnrTYhRWHHdia0OUYGqcAfWnM5Z
 pMfpH1pzwWRNdsPlHtFwnLIV8nA4TzowU8EmRpOutvKhV2ZE4Vq9amzHOVXr+6e2doqv
 w9SmGF7p8/eRawm/7J3S6izosparCrchqxCgKhFE9pel2gWUjemRl3FqMEMLnvaLVMcM
 YQFzwnBHrz1Ff5ylR+8akC9pd4TAGnECF60cIbGFUqVlK5Y1YHrX+vecMCSm/NCDiq2d
 ETZqwejIbeiJiccvr7c7qJytuUdRaB3DCLOHpkKmFmcS72yw5w69Ekdp7j6+QZkwN03j
 e6Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ScVLo3OLCSIkKXjokM31Qg9uqsCe/mNFJUR5ZIozpdg=;
 b=g+m2xN/3xrn9EL7RkdpG1Zio9jSm2/QiDeQg2EK66myAtb+HU15Z382SSBeZ5Im0B+
 8PsWEkfgHPW07R3/SXlRX2AuOWgorIYyBL37azapbQjSXX7LvVbnk+oimxodX2U8ke6p
 4GShvcg5ZBO9GRDnb8CC3si9EX2KqbMNf1PNOtkq5/0GQWwxlIqU1TWTp+qcueMNpFzq
 kmdAv0mggoKDF9gmvOzG871IxsCAkMkGWmFVLm1wrIKlVCUkqRkxC2Q5AMO1Tzl/ZGxp
 17U20LIiCFYk6J9sV/GoBD1l9CVSWdxqfRfHFnShk4HeEBQQcdCuwC8uYAFMF9fBsyu3
 x+Ew==
X-Gm-Message-State: AOAM5328DZ7ioqnL6DV88ZgECIpTD8TV2mLeYO1LZTWzGcV9pgdLypLu
 sRvPXQIU2dUdvxBiF1G/RwE=
X-Google-Smtp-Source: ABdhPJwYTX9uuPIKRe2/ufnmT13//0CJbLCYwlI7nSFk88b4h8KI69VRknfffeDOgIcUdRrxli5GgA==
X-Received: by 2002:a5d:4e45:: with SMTP id r5mr2238083wrt.92.1592315680297;
 Tue, 16 Jun 2020 06:54:40 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id x8sm30190568wrs.43.2020.06.16.06.54.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:54:39 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 46/73] arm64: tegra: Remove parent clock from display
 controllers
Date: Tue, 16 Jun 2020 15:52:11 +0200
Message-Id: <20200616135238.3001888-47-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065442_286400_F8302FDE 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

The display controller's parent clock depends on the output that's
consuming data from the display controller, so it needs to be specified
as the parent of the corresponding output. The device tree bindings do
specify this, so just correct the existing device trees that get this
wrong.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra132.dtsi | 10 ++++------
 arch/arm64/boot/dts/nvidia/tegra210.dtsi | 10 ++++------
 2 files changed, 8 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra132.dtsi b/arch/arm64/boot/dts/nvidia/tegra132.dtsi
index 76e1a6451e83..4fc34c5ec2dc 100644
--- a/arch/arm64/boot/dts/nvidia/tegra132.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra132.dtsi
@@ -104,9 +104,8 @@ dc@54200000 {
 			compatible = "nvidia,tegra124-dc";
 			reg = <0x0 0x54200000 0x0 0x00040000>;
 			interrupts = <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&tegra_car TEGRA124_CLK_DISP1>,
-				 <&tegra_car TEGRA124_CLK_PLL_P>;
-			clock-names = "dc", "parent";
+			clocks = <&tegra_car TEGRA124_CLK_DISP1>;
+			clock-names = "dc";
 			resets = <&tegra_car 27>;
 			reset-names = "dc";
 
@@ -119,9 +118,8 @@ dc@54240000 {
 			compatible = "nvidia,tegra124-dc";
 			reg = <0x0 0x54240000 0x0 0x00040000>;
 			interrupts = <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&tegra_car TEGRA124_CLK_DISP2>,
-				 <&tegra_car TEGRA124_CLK_PLL_P>;
-			clock-names = "dc", "parent";
+			clocks = <&tegra_car TEGRA124_CLK_DISP2>;
+			clock-names = "dc";
 			resets = <&tegra_car 26>;
 			reset-names = "dc";
 
diff --git a/arch/arm64/boot/dts/nvidia/tegra210.dtsi b/arch/arm64/boot/dts/nvidia/tegra210.dtsi
index 0586722df64b..41ffa0531cd8 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra210.dtsi
@@ -187,9 +187,8 @@ dc@54200000 {
 			compatible = "nvidia,tegra210-dc";
 			reg = <0x0 0x54200000 0x0 0x00040000>;
 			interrupts = <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&tegra_car TEGRA210_CLK_DISP1>,
-				 <&tegra_car TEGRA210_CLK_PLL_P>;
-			clock-names = "dc", "parent";
+			clocks = <&tegra_car TEGRA210_CLK_DISP1>;
+			clock-names = "dc";
 			resets = <&tegra_car 27>;
 			reset-names = "dc";
 
@@ -202,9 +201,8 @@ dc@54240000 {
 			compatible = "nvidia,tegra210-dc";
 			reg = <0x0 0x54240000 0x0 0x00040000>;
 			interrupts = <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&tegra_car TEGRA210_CLK_DISP2>,
-				 <&tegra_car TEGRA210_CLK_PLL_P>;
-			clock-names = "dc", "parent";
+			clocks = <&tegra_car TEGRA210_CLK_DISP2>;
+			clock-names = "dc";
 			resets = <&tegra_car 26>;
 			reset-names = "dc";
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
