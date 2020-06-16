Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E462D1FB3FD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:17:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ZHmIh9fqoOO5AezRtA4uCsmvfkqDMtYCVCrzFEf4UI=; b=qJ+4toauBszmxQ
	wOayrXd3LXi8z3I9UofhXTsXfDpOsI6ElPQBB5gEKxHzrg0FDXRvj+yFC4pY/RzfWuAEBBBnm3Bwo
	PDia0M7ikFJJA9xlp7IDqrKowTsmFRVI80jz971A97jkRtVWVr2ZupXJO/TgEHt7Yd2bK41KcnXQM
	XTiJ7f0IOh/8bbirE/B2nln183p1vubMkejRgwBpXM8QF9fm4LmxczvEgVyyzQXgsZ4OIGDIKRSgM
	rVXbyYam6+T/7aS2OZbn1LhsJIihPdHO14cqh/LhgCuE/fhAwg933bRXBtKIs3iryoVjBh7A0y53E
	mYFBPmjxaNFb5LakqMTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCP1-0005cr-61; Tue, 16 Jun 2020 14:17:27 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC3j-000581-PF
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:55:40 +0000
Received: by mail-wr1-f67.google.com with SMTP id l11so20890571wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:55:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=H88x6vjpuSpzZHQlZkQcpEZG1CuEYDHzgnWI54VWfdI=;
 b=UIL/3uQu1mOuZeZy1jk8Xr/dmIFVxbxNQvcZvHrcocJxrXVigTf3Il9pyRRsNxi8D8
 Ps/yCXagsypaZ+ocjewOKtpfJkaFaveZO+DgBbDKcsJXw40T35WYtgFmgs0iCos3jMg0
 NL0cqyiJWUhthFeOJl36rS0z+a6/ONze71FUYDTeNoKJTOLQX3GDOB2+2IKRnhyukesQ
 dEd4YoBJdODLgN0mulnCUKOODwmIX8Cvs9VjelDfHiNxtlUUBD9+DBQnwuEcD4/a2Agk
 sv7DH/vKFQORQorpKZ5XGjNHu6HVoW/iZFaK+LcKZPCImeTplDr+48WoMjMqtQVJdg1h
 IeqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=H88x6vjpuSpzZHQlZkQcpEZG1CuEYDHzgnWI54VWfdI=;
 b=cgO37RcB1+uqkobkggeshrtThCRZCCn2WcqeO94Ex3ekHiCE0oVEWEcy7TyX5rEj5K
 JoGdp8ZmPJ1FwvgKgAfAU1gfIwbcw+D5mcpnlPyyxjn1/buPwXt8ys/WdgBepHNLstRd
 +nGKFvlfTFna1Rr9a0VNlnkEoJS1VnQ9s6gXaV+EJlQPpx47TZlKUUIu2L7FIr05fUaQ
 HjP9c1BJ8IKLbKT2ivJa5NoZQAZOYw5WuVksyCiM9Sd7EQ6inTRPjQcQy5x2LQSI3HDv
 WO3HJhpOfNJXDJ1uH8V8sIuHDg5FFwy61j/IgmQoUVm7AdDvSUS2JcXPYOHcpOMjG8NZ
 67SA==
X-Gm-Message-State: AOAM533Af6zg4KaXVcVkQEcDGMYIxylPh20WRnYm6mL9xrI378nVpX/D
 jEJEdR1Wj6qC6ngLGuBSckMV2QuR
X-Google-Smtp-Source: ABdhPJxtfNSOEILiVqh/qFM/nf/bExgvAibeoQa8jEe42UWA0sSe2bg3ikALt84AYI+GGaRuEInUvg==
X-Received: by 2002:a5d:628c:: with SMTP id k12mr3184108wru.211.1592315724035; 
 Tue, 16 Jun 2020 06:55:24 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id 185sm4084382wmz.22.2020.06.16.06.55.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:55:22 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 66/73] arm64: tegra: Use standard names for SRAM nodes
Date: Tue, 16 Jun 2020 15:52:31 +0200
Message-Id: <20200616135238.3001888-67-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065527_865485_B242D769 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
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

SRAM nodes should be named sram@<unit-address> to match the bindings.

While at it, also remove the unneeded, custom compatible string for
SRAM partition nodes.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra186.dtsi | 8 +++-----
 arch/arm64/boot/dts/nvidia/tegra194.dtsi | 8 +++-----
 2 files changed, 6 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra186.dtsi b/arch/arm64/boot/dts/nvidia/tegra186.dtsi
index 3a41203deba2..d92eea1ddac7 100644
--- a/arch/arm64/boot/dts/nvidia/tegra186.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra186.dtsi
@@ -1262,22 +1262,20 @@ gpu@17000000 {
 		interconnect-names = "dma-mem", "write-0", "read-1", "write-1";
 	};
 
-	sysram@30000000 {
+	sram@30000000 {
 		compatible = "nvidia,tegra186-sysram", "mmio-sram";
 		reg = <0x0 0x30000000 0x0 0x50000>;
 		#address-cells = <1>;
 		#size-cells = <1>;
 		ranges = <0x0 0x0 0x30000000 0x50000>;
 
-		cpu_bpmp_tx: shmem@4e000 {
-			compatible = "nvidia,tegra186-bpmp-shmem";
+		cpu_bpmp_tx: sram@4e000 {
 			reg = <0x4e000 0x1000>;
 			label = "cpu-bpmp-tx";
 			pool;
 		};
 
-		cpu_bpmp_rx: shmem@4f000 {
-			compatible = "nvidia,tegra186-bpmp-shmem";
+		cpu_bpmp_rx: sram@4f000 {
 			reg = <0x4f000 0x1000>;
 			label = "cpu-bpmp-rx";
 			pool;
diff --git a/arch/arm64/boot/dts/nvidia/tegra194.dtsi b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
index 3089ebecfbef..2ecb80e1b09d 100644
--- a/arch/arm64/boot/dts/nvidia/tegra194.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
@@ -1803,22 +1803,20 @@ pcie_ep@141a0000 {
 		nvidia,aspm-l0s-entrance-latency-us = <3>;
 	};
 
-	sysram@40000000 {
+	sram@40000000 {
 		compatible = "nvidia,tegra194-sysram", "mmio-sram";
 		reg = <0x0 0x40000000 0x0 0x50000>;
 		#address-cells = <1>;
 		#size-cells = <1>;
 		ranges = <0x0 0x0 0x40000000 0x50000>;
 
-		cpu_bpmp_tx: shmem@4e000 {
-			compatible = "nvidia,tegra194-bpmp-shmem";
+		cpu_bpmp_tx: sram@4e000 {
 			reg = <0x4e000 0x1000>;
 			label = "cpu-bpmp-tx";
 			pool;
 		};
 
-		cpu_bpmp_rx: shmem@4f000 {
-			compatible = "nvidia,tegra194-bpmp-shmem";
+		cpu_bpmp_rx: sram@4f000 {
 			reg = <0x4f000 0x1000>;
 			label = "cpu-bpmp-rx";
 			pool;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
